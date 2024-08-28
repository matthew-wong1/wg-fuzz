struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
    c: Struct_2,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: f32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: i32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    global0 = -898f;
    global1 = u_input.b.x;
    let var_0 = true;
    global1 = abs(u_input.b.x) | ~u_input.b.x;
    global0 = -3182f;
    return Struct_1(916u, u_input.a << (~vec4<u32>(u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, u_input.a.x), 1u, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a)) % vec4<u32>(32u)), vec2<u32>(65088u, _wgslsmith_div_u32(39300u >> (u_input.a.x % 32u), ~u_input.a.x)) ^ u_input.a.xz, (~(u_input.a.x | 24554u) ^ (~u_input.a.x | 1u)) >> (44148u % 32u), 0i);
}

fn func_3() -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 584f, -1605f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-388f, -376f, -620f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-904f, -1192f, 1349f))))), true));
    var var_1 = Struct_2(vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(21193u, u_input.a.x, u_input.a.x, 4294967295u), ~vec4<u32>(19880u, 1u, 58728u, 4294967295u)), vec4<u32>(9420u, 1u, 3651u, 1u)), ~4294967295u, 1u, u_input.a.x), Struct_1(1u << (max(select(u_input.a.x, 0u, true), ~u_input.a.x) % 32u), ~select(vec4<u32>(28054u, 4294967295u, u_input.a.x, 2056u), u_input.a, vec4<bool>(true, true, false, false)) >> (_wgslsmith_div_vec4_u32(u_input.a ^ u_input.a, abs(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 48329u))) % vec4<u32>(32u)), ~abs(u_input.a.wy), 4294967295u, _wgslsmith_dot_vec4_i32(vec4<i32>(-u_input.b.x, -1i, _wgslsmith_clamp_i32(u_input.c, 2147483647i, -24786i), ~u_input.d.x), vec4<i32>(32651i, 64544i, _wgslsmith_mult_i32(u_input.d.x, u_input.b.x), firstTrailingBit(u_input.b.x)))), Struct_1(12052u, _wgslsmith_mult_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x), vec4<u32>(50194u, u_input.a.x, u_input.a.x, u_input.a.x)), ~(vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x) ^ u_input.a)), vec2<u32>(u_input.a.x, ~29067u), ~u_input.a.x, -62935i), vec4<u32>(abs(u_input.a.x), u_input.a.x, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.a.x, 43221u, 1u)), vec3<u32>(_wgslsmith_mult_u32(4294967295u, u_input.a.x), abs(u_input.a.x), u_input.a.x)), ~u_input.a.x), func_1(vec2<bool>(true, all(vec3<bool>(false, false, true)))));
    global1 = 1i;
    let var_2 = u_input.d.x;
    var var_3 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1044f, var_0.x, var_0.x), vec3<f32>(-872f, var_0.x, 571f), true))))))));
    return _wgslsmith_div_vec4_u32(~(u_input.a | ~max(vec4<u32>(20051u, 67126u, 1u, var_1.b.b.x), var_1.d)), ~vec4<u32>(0u, u_input.a.x >> (var_1.b.d % 32u), ~0u, ~reverseBits(u_input.a.x)));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_3, arg_3: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(471f, arg_3, _wgslsmith_f_op_f32(max(arg_3, _wgslsmith_f_op_f32(floor(arg_3)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3))) - vec4<f32>(arg_3, -1398f, _wgslsmith_f_op_f32(1339f - _wgslsmith_f_op_f32(max(arg_3, 2531f))), _wgslsmith_f_op_f32(arg_3 + _wgslsmith_f_op_f32(round(arg_2.d.x))))));
    return Struct_2(func_3(), arg_2.e, Struct_1(38648u, ~arg_0, ~(vec2<u32>(18054u, 1u) >> (arg_0.xw % vec2<u32>(32u))), firstLeadingBit(arg_1.b.d) << (_wgslsmith_clamp_u32(arg_1.d.x, _wgslsmith_add_u32(76887u, u_input.a.x), ~arg_0.x) % 32u), -1i), _wgslsmith_div_vec4_u32(~func_1(select(vec2<bool>(true, true), vec2<bool>(false, true), false)).b, func_1(select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, true))).b), arg_1.e);
}

fn func_4(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: Struct_1) -> Struct_3 {
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_3(u_input.c, vec4<i32>(_wgslsmith_mod_i32(u_input.d.x, u_input.b.x), _wgslsmith_sub_i32(u_input.b.x, 2147483647i), i32(-1i) * -2147483647i, -(-1633i ^ u_input.d.x)), func_2(~countOneBits(vec4<u32>(u_input.a.x, 24166u, u_input.a.x, 0u)), Struct_2(min(u_input.a, u_input.a), Struct_1(u_input.a.x, vec4<u32>(1u, 1u, 12651u, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x), 52411u, 2147483647i), func_1(vec2<bool>(true, true)), u_input.a, Struct_1(4294967295u, u_input.a, vec2<u32>(u_input.a.x, u_input.a.x), 4294967295u, u_input.b.x)), Struct_3(-1i, vec4<i32>(u_input.c, -2147483647i, -2147483647i, -1i) >> (vec4<u32>(9604u, 4294967295u, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), Struct_2(u_input.a, Struct_1(51943u, u_input.a, u_input.a.zx, 1u, u_input.b.x), Struct_1(u_input.a.x, u_input.a, u_input.a.yw, u_input.a.x, 48096i), u_input.a, Struct_1(u_input.a.x, u_input.a, vec2<u32>(u_input.a.x, u_input.a.x), 6189u, u_input.d.x)), vec2<f32>(964f, -753f), func_1(vec2<bool>(true, false))), 899f), vec2<f32>(_wgslsmith_f_op_f32(min(-331f, _wgslsmith_f_op_f32(step(-1303f, -572f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-908f - 177f))), Struct_1(_wgslsmith_mod_u32(~6429u, u_input.a.x), ~vec4<u32>(u_input.a.x, 3519u, u_input.a.x, u_input.a.x), ~(vec2<u32>(u_input.a.x, 42501u) | vec2<u32>(u_input.a.x, 4294967295u)), ~(~63778u), -(~u_input.c))), vec3<u32>(~_wgslsmith_clamp_u32(~0u, u_input.a.x, u_input.a.x & 4294967295u), func_3().x, u_input.a.x), func_1(select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(false, false), any(vec2<bool>(true, false))), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(false, false), false)))));
    var var_1 = _wgslsmith_dot_vec3_i32((u_input.b >> (vec3<u32>(~u_input.a.x, _wgslsmith_sub_u32(4294967295u, 4976u), var_0.e.b.x) % vec3<u32>(32u))) >> (func_2(u_input.a, Struct_2(vec4<u32>(35555u, 107053u, var_0.c.d.x, 1u), var_0.c.e, Struct_1(u_input.a.x, u_input.a, vec2<u32>(u_input.a.x, u_input.a.x), var_0.e.c.x, var_0.a), countOneBits(u_input.a), Struct_1(u_input.a.x, vec4<u32>(21417u, var_0.e.d, 1u, 4294967295u), vec2<u32>(u_input.a.x, u_input.a.x), 39437u, -1i)), Struct_3(firstTrailingBit(u_input.c), var_0.b, var_0.c, var_0.d, Struct_1(var_0.c.c.c.x, var_0.c.a, var_0.c.c.b.zz, var_0.e.b.x, u_input.b.x)), var_0.d.x).d.yxy % vec3<u32>(32u)), -_wgslsmith_sub_vec3_i32(firstTrailingBit(u_input.b), u_input.b));
    let var_2 = vec4<bool>(!(all(vec2<bool>(true, true)) || (-25026i >= (-4704i >> (var_0.c.d.x % 32u)))), !(_wgslsmith_dot_vec3_u32(u_input.a.yzz, u_input.a.xzx) <= 14592u) && true, any(vec2<bool>(_wgslsmith_f_op_f32(min(-711f, 1337f)) > var_0.d.x, !any(vec2<bool>(true, false)))), false);
    var var_3 = Struct_4(func_2(vec4<u32>(1u, func_3().x, ~u_input.a.x, _wgslsmith_add_u32(var_0.c.b.d, 1u)) >> (u_input.a % vec4<u32>(32u)), var_0.c, func_4(Struct_3(~var_0.b.x, var_0.b, var_0.c, _wgslsmith_f_op_vec2_f32(-var_0.d), var_0.c.c), var_0.e.b.zxz, func_4(Struct_3(4894i, var_0.b, Struct_2(u_input.a, var_0.e, var_0.c.e, vec4<u32>(4294967295u, u_input.a.x, var_0.c.b.a, 1u), Struct_1(u_input.a.x, vec4<u32>(var_0.e.a, 1u, var_0.c.e.d, 9741u), var_0.c.d.zy, u_input.a.x, -44417i)), var_0.d, var_0.c.b), ~vec3<u32>(var_0.e.b.x, 20773u, u_input.a.x), Struct_1(52351u, u_input.a, u_input.a.xx, u_input.a.x, 0i)).c.c), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x))))), _wgslsmith_sub_u32(func_1(vec2<bool>(var_2.x, true)).a, ~func_4(func_4(Struct_3(-24615i, vec4<i32>(-2147483647i, var_0.a, -1i, u_input.d.x), var_0.c, vec2<f32>(var_0.d.x, var_0.d.x), Struct_1(var_0.c.a.x, u_input.a, vec2<u32>(4294967295u, 78075u), u_input.a.x, 2147483647i)), u_input.a.yyz, Struct_1(1u, vec4<u32>(var_0.c.e.d, 1u, 0u, u_input.a.x), vec2<u32>(u_input.a.x, 16687u), u_input.a.x, var_0.b.x)), ~u_input.a.yzz, func_2(vec4<u32>(u_input.a.x, var_0.c.a.x, u_input.a.x, var_0.c.d.x), Struct_2(vec4<u32>(var_0.c.d.x, var_0.c.c.d, u_input.a.x, 2058u), var_0.e, var_0.c.e, var_0.c.e.b, var_0.c.e), Struct_3(1i, var_0.b, Struct_2(vec4<u32>(1u, 2997u, 0u, 1u), var_0.e, var_0.c.c, vec4<u32>(var_0.c.b.b.x, u_input.a.x, var_0.c.d.x, var_0.e.c.x), var_0.e), var_0.d, var_0.e), var_0.d.x).b).c.c.c.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.d.x, var_0.d.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, -774i, min(func_1(var_2.xy).e, u_input.d.x & -20337i), _wgslsmith_div_i32(-40508i, ~1i)), select(var_0.b, var_0.b, !select(vec4<bool>(var_2.x, var_2.x, true, var_2.x), vec4<bool>(var_2.x, true, false, false), var_2))));
    var var_4 = func_4(Struct_3(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(u_input.b.x, -2147483647i, -2147483647i)), vec3<i32>(var_3.d.x, 60855i, u_input.b.x)) & _wgslsmith_div_i32(u_input.b.x, u_input.c >> (var_0.e.c.x % 32u)), ~vec4<i32>(_wgslsmith_clamp_i32(-21572i, u_input.b.x, var_3.d.x), _wgslsmith_sub_i32(var_0.e.e, -2147483647i), _wgslsmith_add_i32(33412i, -2147483647i), _wgslsmith_sub_i32(-1i, -11827i)), var_0.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1940f, var_3.c)), vec2<f32>(var_0.d.x, -177f)))), Struct_1(0u, var_0.c.d, ~(~vec2<u32>(var_3.b, 0u)), _wgslsmith_dot_vec3_u32(vec3<u32>(8459u, 4294967295u, var_3.b), firstTrailingBit(vec3<u32>(var_0.e.c.x, var_0.e.d, 41804u))), -2147483647i)), vec3<u32>(0u >> (var_3.a.b.b.x % 32u), var_3.a.c.c.x, 1u), Struct_1(1u, vec4<u32>(0u, ~(~93147u), 64988u, abs(1u)), var_0.e.b.yx, min(func_2(vec4<u32>(var_0.e.b.x, u_input.a.x, u_input.a.x, var_3.a.e.d), Struct_2(u_input.a, Struct_1(4294967295u, vec4<u32>(var_0.e.d, 75185u, 4294967295u, u_input.a.x), vec2<u32>(var_3.b, var_0.c.e.b.x), u_input.a.x, 15847i), Struct_1(var_3.b, u_input.a, vec2<u32>(var_3.b, 4294967295u), u_input.a.x, var_3.d.x), vec4<u32>(38790u, var_0.c.c.a, 0u, var_0.e.c.x), var_0.c.c), Struct_3(u_input.c, var_3.d, Struct_2(u_input.a, var_0.e, var_3.a.c, var_0.e.b, Struct_1(u_input.a.x, var_0.c.a, vec2<u32>(61920u, 1u), 1u, u_input.d.x)), var_0.d, Struct_1(var_0.c.c.a, var_3.a.b.b, vec2<u32>(63199u, 0u), 4294967295u, -14636i)), var_3.c).b.d, max(u_input.a.x, 4294967295u)) & _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, 104602u, u_input.a.x), func_4(Struct_3(1i, var_0.b, var_0.c, vec2<f32>(var_0.d.x, -1174f), var_3.a.e), vec3<u32>(var_0.c.c.d, u_input.a.x, var_0.c.b.d), Struct_1(1u, var_3.a.a, var_3.a.d.xw, u_input.a.x, -1i)).c.c.b.xxz), ~reverseBits(38613i)));
    var var_5 = func_4(func_4(func_4(Struct_3(firstTrailingBit(-30865i), _wgslsmith_div_vec4_i32(vec4<i32>(var_0.c.c.e, var_3.a.b.e, var_3.d.x, 2147483647i), vec4<i32>(var_3.d.x, 261i, 2147483647i, var_4.b.x)), var_4.c, _wgslsmith_f_op_vec2_f32(trunc(var_0.d)), var_0.c.c), u_input.a.zww, func_2(u_input.a, var_3.a, func_4(Struct_3(u_input.b.x, var_4.b, var_0.c, var_0.d, var_0.c.c), vec3<u32>(var_0.c.a.x, 1u, u_input.a.x), Struct_1(14968u, var_0.e.b, vec2<u32>(var_3.a.e.b.x, 0u), 51109u, 27624i)), _wgslsmith_f_op_f32(-var_0.d.x)).c), vec3<u32>(~(4294967295u >> (var_4.e.b.x % 32u)), _wgslsmith_sub_u32(u_input.a.x >> (u_input.a.x % 32u), ~u_input.a.x), var_4.e.a), var_4.e), ~(~_wgslsmith_mod_vec3_u32(var_3.a.a.wyy, u_input.a.xzz) ^ var_3.a.d.xxw), var_3.a.e);
    let var_6 = var_0.c.c.c.x;
    let var_7 = ~var_0.c.b.b;
    var_5 = func_4(func_4(func_4(Struct_3(_wgslsmith_dot_vec2_i32(var_4.b.yy, vec2<i32>(var_3.a.e.e, var_3.d.x)), _wgslsmith_add_vec4_i32(var_0.b, var_0.b), Struct_2(vec4<u32>(var_3.a.d.x, var_0.c.d.x, var_3.b, 0u), var_4.c.b, var_0.c.b, vec4<u32>(1u, var_5.c.d.x, u_input.a.x, var_3.a.d.x), Struct_1(var_4.e.d, var_3.a.c.b, vec2<u32>(var_3.b, var_5.e.a), u_input.a.x, var_0.c.c.e)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_5.d.x, 797f)), var_3.a.e), var_5.e.b.zxx, func_2(var_3.a.b.b, func_4(Struct_3(var_0.c.b.e, vec4<i32>(-2147483647i, var_4.b.x, -1i, var_4.c.b.e), Struct_2(var_0.e.b, var_3.a.b, var_3.a.b, u_input.a, var_0.e), vec2<f32>(var_0.d.x, 153f), var_4.c.b), var_4.e.b.wyz, var_3.a.b).c, Struct_3(var_4.c.c.e, var_4.b, var_4.c, var_5.d, Struct_1(50858u, vec4<u32>(var_5.e.b.x, 4294967295u, var_7.x, 58917u), vec2<u32>(var_4.c.e.c.x, u_input.a.x), 18974u, 28533i)), var_3.c).e), vec3<u32>(~_wgslsmith_mult_u32(0u, var_3.b), _wgslsmith_mod_u32(abs(4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_5.e.b.x, var_4.e.c.x, var_3.a.e.c.x), var_4.e.b.ywy)), ~var_3.a.b.a), Struct_1(4294967295u, vec4<u32>(36337u, ~var_7.x, ~var_4.e.a, abs(var_5.c.c.c.x)), select(var_3.a.e.b.wy, var_5.e.c, vec2<bool>(false, var_2.x)) | ~vec2<u32>(4294967295u, 4294967295u), 1u, -var_4.e.e)), var_7.zyz, Struct_1(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(func_3(), var_3.a.e.b >> (vec4<u32>(var_5.c.c.c.x, u_input.a.x, var_0.e.c.x, 52420u) % vec4<u32>(32u))), _wgslsmith_sub_u32(~var_0.e.b.x, ~42641u)), reverseBits(func_1(select(vec2<bool>(false, var_2.x), vec2<bool>(var_2.x, var_2.x), var_2.xz)).b), ~_wgslsmith_add_vec2_u32(func_3().yw, max(vec2<u32>(var_5.e.c.x, u_input.a.x), var_3.a.c.c)), ~var_5.c.c.a & 43006u, -48765i));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.e.a, -1314f, ~_wgslsmith_sub_vec3_u32(select(~vec3<u32>(var_5.e.a, var_4.c.e.b.x, 9539u), ~var_5.e.b.zzy, !var_2.xzy), var_0.e.b.yxx));
}

