struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: vec3<u32>,
    e: vec3<bool>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: f32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 20>;

var<private> global1: array<vec2<bool>, 15>;

var<private> global2: array<Struct_4, 8> = array<Struct_4, 8>(Struct_4(false), Struct_4(true), Struct_4(false), Struct_4(true), Struct_4(false), Struct_4(false), Struct_4(true), Struct_4(true));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32) -> vec3<i32> {
    let var_0 = -1581f > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1823f - _wgslsmith_f_op_f32(-535f + -940f)) * 1f)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1291f, -400f) * -388f) * _wgslsmith_f_op_f32(f32(-1f) * -750f))));
    let var_2 = -174f;
    var var_3 = Struct_2(u_input.a, Struct_1(var_2, -vec3<i32>(abs(arg_0), arg_0 << (18462u % 32u), _wgslsmith_add_i32(arg_0, arg_0)), var_0, _wgslsmith_mod_i32(~arg_0, -51911i)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2)))), -_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0, 2147483647i, 12583i) & vec3<i32>(2147483647i, arg_0, -2147483647i), _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, arg_0, 2147483647i), vec3<i32>(-17207i, arg_0, arg_0))), (39339u >= u_input.a) || ((var_0 | false) || var_0), arg_0), vec4<u32>(u_input.a, ~firstTrailingBit(48254u), u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u & u_input.a, _wgslsmith_div_u32(u_input.a, 55254u), u_input.a), firstLeadingBit(vec3<u32>(4294967295u, u_input.a, u_input.a) & vec3<u32>(u_input.a, 4294967295u, u_input.a)))), ~(~vec3<u32>(~u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, u_input.a)), ~u_input.a)));
    global2 = array<Struct_4, 8>();
    return vec3<i32>(44703i, 0i, _wgslsmith_sub_i32(var_3.c.b.x, firstLeadingBit(1i))) | _wgslsmith_add_vec3_i32(-_wgslsmith_mod_vec3_i32(var_3.b.b, select(var_3.b.b, var_3.c.b, false)), ~vec3<i32>(arg_0 ^ -22026i, var_3.b.d, ~var_3.b.d));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec2<f32>) -> i32 {
    let var_0 = 131084u != arg_0.x;
    global1 = array<vec2<bool>, 15>();
    global2 = array<Struct_4, 8>();
    global1 = array<vec2<bool>, 15>();
    let var_1 = vec4<i32>(-20561i << (_wgslsmith_dot_vec4_u32(~arg_1.d, vec4<u32>(u_input.a, 0u, arg_0.x, arg_1.a) | arg_1.d) % 32u), -arg_1.b.d, ~_wgslsmith_clamp_i32(25157i, arg_1.c.d | arg_1.c.b.x, arg_1.b.d >> (arg_1.a % 32u)), _wgslsmith_sub_i32((-1i & arg_1.b.d) & firstTrailingBit(arg_1.b.b.x), ~(-arg_1.b.d))) | global0[_wgslsmith_index_u32(arg_1.a, 20u)];
    return reverseBits(_wgslsmith_clamp_i32(2147483647i, ~_wgslsmith_sub_i32(1i, 1i), var_1.x));
}

fn func_2(arg_0: u32) -> vec2<i32> {
    var var_0 = func_4(vec3<u32>(~_wgslsmith_sub_u32(4294967295u, 0u), u_input.a, (u_input.a ^ 26225u) & (arg_0 | arg_0)) >> ((~vec3<u32>(arg_0, 49204u, u_input.a) << (~(~vec3<u32>(4294967295u, 0u, 1u)) % vec3<u32>(32u))) % vec3<u32>(32u)), Struct_2(reverseBits(_wgslsmith_div_u32(4294967295u, 1u)), Struct_1(-157f, select(vec3<i32>(1i, 1i, 1i), func_3(0i), any(vec3<bool>(false, true, true))), false, 1i | _wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(u_input.a, 20u)], global0[_wgslsmith_index_u32(0u, 20u)])), Struct_1(-1108f, abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(-10411i, 2147483647i, -36856i), vec3<i32>(24864i, -2147483647i, -12648i), vec3<i32>(-55677i, 3479i, -39741i))), false, 53352i), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 1u, u_input.a) << (vec4<u32>(11218u, u_input.a, 1u, u_input.a) % vec4<u32>(32u)), vec4<u32>(arg_0, arg_0, 65470u, arg_0) | vec4<u32>(4294967295u, arg_0, 31279u, u_input.a)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 9978u, 4294967295u), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 0u, arg_0) | vec3<u32>(u_input.a, u_input.a, 46922u), vec3<u32>(u_input.a, 0u, 17320u)))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(440f)) * _wgslsmith_f_op_f32(floor(374f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1000f, 996f)), 1020f)))));
    var var_1 = Struct_4(!any(vec3<bool>(arg_0 < 1u, true, true)));
    var_0 = ~(-1i) << (_wgslsmith_mult_u32(1u, u_input.a) % 32u);
    var var_2 = firstTrailingBit(1u & u_input.a);
    global2 = array<Struct_4, 8>();
    return vec2<i32>(0i, func_4(abs(vec3<u32>(arg_0, 0u, u_input.a ^ arg_0)), Struct_2(_wgslsmith_mod_u32(arg_0, u_input.a), Struct_1(-1000f, vec3<i32>(1i, 1i, 1i), false, firstLeadingBit(-65827i)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -588f), ~vec3<i32>(11315i, 2147483647i, 0i), true, 2147483647i), ~vec4<u32>(4294967295u, u_input.a, 0u, 25487u), vec3<u32>(_wgslsmith_div_u32(1u, arg_0), u_input.a >> (u_input.a % 32u), 0u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-679f, -599f))))))));
}

fn func_1(arg_0: bool) -> Struct_4 {
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(745f, 2564f) - _wgslsmith_f_op_f32(109f + 1000f))), vec3<i32>(-max(-29447i, 16252i), 20357i, countOneBits(-14806i)), !arg_0, _wgslsmith_dot_vec2_i32(~vec2<i32>(11560i, 2147483647i) & func_2(u_input.a), ~(-vec2<i32>(-42407i, -46691i)))), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -861f)), ~vec3<u32>(75458u, u_input.a, u_input.a & 4294967295u), vec3<bool>(!(!arg_0), false, arg_0));
    let var_1 = firstLeadingBit(countOneBits(0i));
    let var_2 = var_1;
    global2 = array<Struct_4, 8>();
    global1 = array<vec2<bool>, 15>();
    return Struct_4(all(!vec4<bool>(0i == var_1, true, var_0.e.x, arg_0)));
}

fn func_5(arg_0: Struct_4) -> vec2<u32> {
    var var_0 = max(vec3<u32>(max(_wgslsmith_add_u32(1u, u_input.a), u_input.a), 4944u, 1u), vec3<u32>(u_input.a, _wgslsmith_mod_u32(u_input.a, 22817u), _wgslsmith_dot_vec3_u32(vec3<u32>(44396u, u_input.a, u_input.a), _wgslsmith_mult_vec3_u32(vec3<u32>(77054u, u_input.a, 3653u), vec3<u32>(u_input.a, 8269u, u_input.a)) & countOneBits(vec3<u32>(u_input.a, 4612u, 4294967295u)))));
    var var_1 = countOneBits(reverseBits(countOneBits(firstLeadingBit(vec2<i32>(-1i, 1i))) ^ (vec2<i32>(20434i, 0i) >> (vec2<u32>(39845u, u_input.a) % vec2<u32>(32u)))));
    global1 = array<vec2<bool>, 15>();
    var var_2 = 2975i;
    global1 = array<vec2<bool>, 15>();
    return _wgslsmith_sub_vec2_u32(~vec2<u32>(var_0.x, _wgslsmith_dot_vec2_u32(min(var_0.xy, var_0.zz), firstTrailingBit(var_0.zx))), _wgslsmith_add_vec2_u32(var_0.zy, vec2<u32>(~u_input.a, u_input.a)));
}

fn func_6(arg_0: vec2<u32>, arg_1: f32) -> Struct_1 {
    let var_0 = Struct_2(arg_0.x, Struct_1(arg_1, vec3<i32>(~1001i, max(2147483647i, func_4(vec3<u32>(5636u, 0u, arg_0.x), Struct_2(0u, Struct_1(arg_1, vec3<i32>(60381i, 8544i, -2147483647i), true, 14451i), Struct_1(-1000f, vec3<i32>(-2147483647i, 2147483647i, 1i), true, -1i), vec4<u32>(arg_0.x, u_input.a, arg_0.x, 1u), vec3<u32>(arg_0.x, arg_0.x, u_input.a)), vec2<f32>(arg_1, arg_1))), -(-3528i >> (arg_0.x % 32u))), all(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false))), _wgslsmith_mult_i32(firstLeadingBit(_wgslsmith_mod_i32(-2147483647i, 45708i)), ~_wgslsmith_clamp_i32(2147483647i, 1i, 1i))), Struct_1(-651f, -firstTrailingBit(vec3<i32>(2147483647i, 35125i, 4435i)) << (((vec3<u32>(0u, 0u, 1u) ^ vec3<u32>(14645u, arg_0.x, u_input.a)) | vec3<u32>(38095u, 1u, 0u)) % vec3<u32>(32u)), true, reverseBits(-2147483647i)), ~vec4<u32>(~u_input.a, 15995u, select(~57121u, arg_0.x, true), ~71383u), abs(vec3<u32>(u_input.a, ~114079u, u_input.a)) & vec3<u32>(abs(~u_input.a), abs(~arg_0.x), _wgslsmith_mult_u32(_wgslsmith_add_u32(0u, arg_0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 99809u, 4294967295u, u_input.a), vec4<u32>(25801u, u_input.a, 30703u, 30369u)))));
    let var_1 = any(!select(global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(arg_0.x, var_0.d.x), 15u)], !vec2<bool>(var_0.c.c, var_0.b.c), vec2<bool>(true, true)));
    var var_2 = all(!vec3<bool>(var_0.c.c, func_1(var_1).a, any(vec3<bool>(false, var_1, var_1)))) || var_0.b.c;
    let var_3 = !select(select(!select(vec4<bool>(true, true, var_0.b.c, var_1), vec4<bool>(true, var_1, var_0.c.c, var_0.b.c), var_0.b.c), !(!vec4<bool>(var_0.c.c, var_0.c.c, var_0.b.c, true)), vec4<bool>(false, var_1, arg_0.x >= arg_0.x, !var_0.b.c)), vec4<bool>(true, true, true, true), !select(select(vec4<bool>(var_1, false, var_1, false), vec4<bool>(var_1, var_0.c.c, false, false), vec4<bool>(true, var_1, false, true)), select(vec4<bool>(var_1, var_1, true, var_0.c.c), vec4<bool>(false, var_0.c.c, var_1, var_1), var_0.c.c), vec4<bool>(var_0.b.c, var_1, false, var_0.c.c)));
    var_2 = var_0.c.c || false;
    return Struct_1(_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(sign(-1000f))), vec3<i32>(-1i, ~0i, -2147483647i), all(var_3.yyz) | true, var_0.c.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 20>();
    global0 = array<vec4<i32>, 20>();
    var var_0 = Struct_3(func_6(func_5(func_1(true)), 386f), false, _wgslsmith_f_op_f32(-1f), _wgslsmith_mod_vec3_u32((_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 14752u, u_input.a), vec3<u32>(u_input.a, 0u, u_input.a)) | ~vec3<u32>(1u, u_input.a, u_input.a)) | (~vec3<u32>(87373u, 57434u, 16346u) | vec3<u32>(42066u, u_input.a, u_input.a)), ~vec3<u32>(u_input.a, u_input.a, u_input.a)), vec3<bool>(true == !any(vec4<bool>(true, true, true, false)), false, true));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a.a))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1951f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1)) - 2239f) - _wgslsmith_f_op_f32(var_1 * var_0.a.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(select(-19596i, _wgslsmith_dot_vec3_i32(var_0.a.b, vec3<i32>(-27271i, 0i, var_0.a.b.x)), any(vec2<bool>(true, false))) >> (var_0.d.x % 32u), var_0.a.d << (~firstTrailingBit(var_0.d.x) % 32u), ~(-2147483647i)), firstLeadingBit(firstTrailingBit(~(vec3<i32>(-1i, 2147483647i, 1i) ^ var_0.a.b))), 270f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(var_0.a.a)), _wgslsmith_div_f32(-303f, -124f), false))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_6(var_0.d.yx, -1372f).a - _wgslsmith_f_op_f32(select(var_1, 750f, true))) * var_0.c)), _wgslsmith_dot_vec3_i32(firstTrailingBit(-vec3<i32>(1i, 41787i, var_0.a.d)), min(var_0.a.b, _wgslsmith_div_vec3_i32(vec3<i32>(27469i, var_0.a.d, var_0.a.b.x), var_0.a.b))) >> (firstTrailingBit(57613u & ~var_0.d.x) % 32u));
}

