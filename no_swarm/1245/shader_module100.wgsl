struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec2<bool>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: u32,
    d: vec2<bool>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_4) -> bool {
    let var_0 = Struct_3(!(any(!vec4<bool>(true, arg_1.b.x, false, true)) && ((u_input.d >> (arg_1.c % 32u)) == arg_1.c)), Struct_1(!arg_1.b.zwx, arg_1.c, arg_1.d, reverseBits(min(u_input.a.wyw, vec3<i32>(0i, -2147483647i, arg_1.a.x)))), Struct_1(arg_1.b.xwy, u_input.b, !select(select(arg_1.d, vec2<bool>(arg_1.b.x, arg_1.b.x), true), vec2<bool>(arg_1.d.x, arg_1.d.x), false), vec3<i32>(u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -12914i, 19380i), u_input.a.wzw), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a.x, -68215i, 2147483647i, u_input.a.x), vec4<i32>(arg_1.a.x, arg_1.a.x, 2147483647i, -36538i))) ^ ~(~u_input.c)));
    let var_1 = arg_1.d;
    var var_2 = vec3<bool>(_wgslsmith_sub_i32(arg_1.a.x, _wgslsmith_sub_i32(-25869i, -6894i)) < min(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(arg_1.a, arg_1.a), ~20581i), -10709i), var_1.x, abs(~var_0.b.b) >= select(firstLeadingBit(4294967295u), abs(u_input.d), arg_1.b.x));
    var_2 = arg_1.b.zxw;
    var_2 = select(!arg_1.b.yyy, vec3<bool>(true, arg_1.b.x, true), !select(vec3<bool>(true == var_2.x, any(var_1), false), !var_0.c.a, any(var_1)));
    return arg_1.a.x > -_wgslsmith_add_i32(-(31724i << (0u % 32u)), -63304i);
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: vec3<f32>) -> i32 {
    var var_0 = ~vec3<i32>(u_input.a.x, _wgslsmith_mult_i32(9919i, _wgslsmith_mod_i32(arg_1.a.x, 975i)) >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_1.c, arg_1.c, u_input.d), vec3<u32>(51352u, 0u, 0u)) % 32u), 1i);
    var_0 = vec3<i32>(_wgslsmith_sub_i32(u_input.c.x, _wgslsmith_mod_i32(-arg_1.a.x, select(arg_0, -35601i, false)) >> (1u % 32u)), abs(firstTrailingBit(~abs(var_0.x))), -10883i | -arg_1.a.x);
    var_0 = vec3<i32>(1i, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, arg_1.a.x, u_input.a.x), abs(u_input.a.yyx)) << (5974u % 32u)), var_0.x);
    let var_1 = Struct_4(arg_1.a, !select(!select(arg_1.b, arg_1.b, arg_1.d.x), vec4<bool>(arg_1.b.x, 1i == arg_0, select(false, arg_1.d.x, arg_1.d.x), true), all(vec3<bool>(true, arg_1.b.x, false))), 1u, select(select(arg_1.d, !vec2<bool>(false, arg_1.d.x), -2030f >= arg_1.e), !select(vec2<bool>(true, arg_1.d.x), select(vec2<bool>(arg_1.d.x, arg_1.b.x), arg_1.d, vec2<bool>(false, arg_1.d.x)), !arg_1.b.x), arg_1.d.x), 2178f);
    var_0 = min(u_input.a.xyx, ~vec3<i32>(u_input.e, 2147483647i, 12912i));
    return countOneBits(select(abs(-2147483647i), ~var_1.a.x, var_1.b.x || var_1.d.x));
}

fn func_2(arg_0: bool, arg_1: Struct_3, arg_2: vec2<f32>) -> Struct_4 {
    let var_0 = vec4<i32>(func_4(firstLeadingBit(arg_1.c.d.x), Struct_4(_wgslsmith_mult_vec2_i32(min(vec2<i32>(u_input.a.x, 9532i), vec2<i32>(arg_1.b.d.x, u_input.a.x)), arg_1.b.d.xx << (vec2<u32>(arg_1.c.b, 1u) % vec2<u32>(32u))), select(vec4<bool>(arg_0, arg_1.c.c.x, true, arg_1.a), !vec4<bool>(false, arg_1.b.a.x, arg_0, arg_1.a), func_3(vec4<u32>(16722u, arg_1.b.b, 8723u, u_input.d), Struct_4(arg_1.c.d.xx, vec4<bool>(arg_0, arg_1.c.a.x, false, arg_0), 726u, arg_1.b.a.yy, arg_2.x))), _wgslsmith_clamp_u32(arg_1.b.b, 21270u, abs(1u)), arg_1.c.a.xy, 396f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2.x, 1024f, arg_1.c.c.x))), 457f, _wgslsmith_f_op_f32(-arg_2.x))), -16521i, -_wgslsmith_div_i32(u_input.c.x, _wgslsmith_dot_vec3_i32(select(vec3<i32>(7126i, 2147483647i, -1i), vec3<i32>(arg_1.b.d.x, 3567i, u_input.a.x), arg_0), u_input.a.ywz)), 2147483647i);
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-158f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)))), 953f, arg_1.c.a.x));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(arg_2.x + arg_2.x), arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2.x)))))), -1339f);
    return Struct_4(vec2<i32>(~(~(~(-2147483647i))), i32(-1i) * -26343i), vec4<bool>(any(!vec2<bool>(false, arg_0)), true || arg_0, true, !arg_0), 51739u, arg_1.b.c, _wgslsmith_f_op_f32(-var_2.x));
}

fn func_5(arg_0: i32, arg_1: bool, arg_2: Struct_4, arg_3: vec2<i32>) -> vec3<f32> {
    let var_0 = Struct_1(arg_2.b.yzz, arg_2.c, vec2<bool>(false, !arg_1), u_input.c);
    let var_1 = any(arg_2.b);
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.e, -486f, arg_2.e));
    let var_3 = -_wgslsmith_sub_vec2_i32(-arg_3 << (select(vec2<u32>(var_0.b, 4294967295u), vec2<u32>(6909u, u_input.d), true) % vec2<u32>(32u)), select(vec2<i32>(0i, 10589i), arg_3, true)) & var_0.d.zy;
    var var_4 = Struct_3(true, var_0, var_0);
    return _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1801f, 492f, 326f), vec3<f32>(var_2.x, -274f, -325f), false)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-2070f, -745f, 1041f) - vec3<f32>(-582f, var_2.x, -279f)))) - vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2.e))), var_2.x, -308f))));
}

fn func_1(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_3, arg_3: i32) -> f32 {
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1656f + 1100f), -1147f, 447f), vec3<f32>(186f, _wgslsmith_f_op_f32(f32(-1f) * -661f), _wgslsmith_f_op_f32(min(1377f, -628f)))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_5(arg_2.c.d.x >> (1u % 32u), arg_2.b.b > 0u, func_2(arg_0.x, Struct_3(true, arg_2.b, arg_2.c), vec2<f32>(1000f, -352f)), -arg_2.c.d.zy)))))));
    var_0 = !arg_1;
    var var_2 = vec4<i32>(-1i) * -(~(~vec4<i32>(2147483647i, arg_3, 2147483647i, -1i)));
    let var_3 = var_1.x;
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-644f - -1253f), _wgslsmith_f_op_f32(func_1(select(vec2<bool>(false, false), vec2<bool>(true, true), false), true, Struct_3(any(vec4<bool>(true, false, true, false)), Struct_1(vec3<bool>(false, true, true), 4004u, vec2<bool>(true, true), vec3<i32>(u_input.a.x, -1i, -2147483647i)), Struct_1(vec3<bool>(true, false, false), 35214u, vec2<bool>(false, false), vec3<i32>(-1i, 0i, -2147483647i))), -45232i)), 197f, -631f));
    let var_1 = Struct_1(!vec3<bool>(all(vec3<bool>(true, false, true)) & all(vec2<bool>(true, true)), true, (var_0.x != 511f) && true), _wgslsmith_add_u32(1u, ~4294967295u), vec2<bool>(!(-26703i > u_input.c.x) || true, true), _wgslsmith_sub_vec3_i32(~(-vec3<i32>(u_input.a.x, u_input.a.x, u_input.e) >> (~vec3<u32>(0u, 25923u, 1u) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_div_i32(-u_input.e, u_input.a.x), ~21505i, 0i)));
    let var_2 = ~var_1.d;
    var var_3 = var_1;
    let var_4 = var_2.x > -(~u_input.e ^ _wgslsmith_mod_i32(func_4(u_input.c.x, Struct_4(vec2<i32>(-2147483647i, -1i), vec4<bool>(false, var_1.c.x, true, var_3.a.x), 0u, var_3.a.xx, 303f), var_0.yxy), 1i));
    var_3 = Struct_1(func_2(select(func_3(vec4<u32>(1u, 0u, 1u, var_3.b), func_2(true, Struct_3(var_3.a.x, Struct_1(var_3.a, 14964u, vec2<bool>(var_1.c.x, true), var_3.d), var_1), var_0.ww)), any(!vec4<bool>(true, var_3.c.x, var_3.a.x, true)), true), Struct_3(true, Struct_1(vec3<bool>(var_1.c.x, true, var_4), 4294967295u, func_2(true, Struct_3(true, var_1, Struct_1(vec3<bool>(var_3.c.x, var_1.c.x, false), var_1.b, var_1.a.zy, var_1.d)), vec2<f32>(962f, 1045f)).b.zw, var_3.d ^ vec3<i32>(-2147483647i, u_input.e, -2147483647i)), var_1), var_0.ww).b.yzy, var_3.b << (~(1u << (_wgslsmith_mod_u32(var_3.b, u_input.d) % 32u)) % 32u), func_2(var_3.a.x, Struct_3(select(true, func_2(var_3.a.x, Struct_3(false, Struct_1(var_1.a, 37423u, vec2<bool>(var_3.c.x, false), vec3<i32>(50634i, var_2.x, var_1.d.x)), Struct_1(var_1.a, 44374u, var_1.a.yz, vec3<i32>(u_input.e, var_3.d.x, u_input.e))), vec2<f32>(-1005f, var_0.x)).b.x, !var_3.a.x), Struct_1(select(var_1.a, vec3<bool>(var_1.a.x, false, var_3.c.x), false), u_input.b, vec2<bool>(false, var_4), ~var_2), var_1), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.xx), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(var_0.zw, var_0.zz, false)), var_0.ww, vec2<bool>(var_4, var_1.a.x))))).b.yz, reverseBits(-select(-vec3<i32>(u_input.e, u_input.a.x, -4321i), _wgslsmith_sub_vec3_i32(vec3<i32>(7764i, var_3.d.x, u_input.a.x), vec3<i32>(-24529i, 1i, u_input.e)), vec3<bool>(var_4, false, true))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.d.x, ~vec2<u32>(~20645u, 6715u), ~max(firstLeadingBit(vec3<u32>(11162u, var_3.b, 6368u)), vec3<u32>(var_1.b, 4294967295u, 1u)) | ~firstTrailingBit(reverseBits(vec3<u32>(40932u, u_input.b, var_3.b))));
}

