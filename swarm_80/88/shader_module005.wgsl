struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: i32,
    d: vec2<i32>,
    e: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
    c: Struct_1,
    d: vec4<u32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: i32,
    b: vec4<bool>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 31>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: Struct_1) -> f32 {
    let var_0 = 0u;
    let var_1 = 1u;
    global0 = array<vec3<f32>, 31>();
    let var_2 = vec2<u32>(~4294967295u, 0u);
    var var_3 = 1i;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2108f + arg_0.b.x));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: vec2<i32>, arg_3: bool) -> u32 {
    var var_0 = arg_0;
    var_0 = vec3<u32>(firstLeadingBit(105974u), min(~((26933u ^ arg_1.x) & reverseBits(78513u)), var_0.x), arg_1.x << (~select(1u, 7674u, all(vec2<bool>(arg_3, arg_3))) % 32u));
    return 77325u;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec4<bool>, arg_3: bool) -> bool {
    global0 = array<vec3<f32>, 31>();
    global0 = array<vec3<f32>, 31>();
    let var_0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(arg_0))), _wgslsmith_f_op_f32(arg_0.a.x + arg_0.a.x)), ~(-_wgslsmith_mod_i32(64300i, 21295i)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_0.a, vec4<f32>(arg_0.b.x, arg_0.a.x, 604f, 1000f), true)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x * -533f) - _wgslsmith_f_op_f32(f32(-1f) * -784f)), _wgslsmith_f_op_f32(-arg_0.a.x)), abs(u_input.a.x), _wgslsmith_div_vec2_i32(vec2<i32>(-u_input.a.x, 0i & arg_0.c), ~_wgslsmith_sub_vec2_i32(arg_0.d, u_input.a.zw)), arg_0.e), ~vec4<u32>(4294967295u >> (func_3(vec3<u32>(6763u, 0u, 4294967295u), vec3<u32>(4294967295u, 20854u, 6395u), u_input.a.zx, arg_2.x) % 32u), _wgslsmith_mod_u32(2352u, ~29283u), 1u, 0u), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.a.x, 548f, -1062f))))));
    var var_1 = Struct_3(var_0.d, Struct_1(_wgslsmith_f_op_vec4_f32(ceil(arg_0.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.e.x, var_0.e.x), _wgslsmith_f_op_vec2_f32(-arg_0.a.xz))), -(~0i >> (_wgslsmith_dot_vec2_u32(vec2<u32>(3287u, var_0.d.x), var_0.d.yz) % 32u)), var_0.c.d, arg_2.x), -18631i);
    let var_2 = max(countOneBits(0u), firstLeadingBit(~12781u));
    return arg_3;
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: bool) -> Struct_1 {
    let var_0 = vec4<bool>(arg_2, true, any(select(vec2<bool>(arg_0 < arg_0, arg_2), vec2<bool>(!arg_2, arg_2 & arg_1.b.x), !arg_1.b.xy)), true);
    global0 = array<vec3<f32>, 31>();
    let var_1 = !(!arg_1.b.ywx);
    global0 = array<vec3<f32>, 31>();
    global0 = array<vec3<f32>, 31>();
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-140f, -188f, -1000f, -1914f)))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(573f, 260f, 1576f, -720f), vec4<f32>(-288f, -633f, 192f, -1000f), var_1.x)))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-688f, -174f))) + _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1507f, -1000f), vec2<f32>(-271f, 1322f)), _wgslsmith_div_vec2_f32(vec2<f32>(1610f, -401f), vec2<f32>(-102f, -1090f)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(302f, -289f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(131f, -784f)), all(vec3<bool>(true, arg_1.c, var_0.x)))))), var_1.xz)), -u_input.c, u_input.a.zy, any(select(arg_1.b.zy, vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(arg_2, arg_2)), var_1.x))));
}

fn func_5(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_3) -> Struct_2 {
    global0 = array<vec3<f32>, 31>();
    global0 = array<vec3<f32>, 31>();
    let var_0 = arg_2;
    return Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-arg_2.b.a), vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.b.x), _wgslsmith_f_op_f32(f32(-1f) * -272f), arg_2.b.a.x, 196f))) * vec4<f32>(1025f, arg_2.b.b.x, _wgslsmith_f_op_f32(var_0.b.b.x + 240f), 346f)), 12704i, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(613f, var_0.b.a.x, -2163f, 737f) + arg_2.b.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b.a.x, _wgslsmith_f_op_f32(arg_2.b.a.x - 239f))), (u_input.b | u_input.b) | -(i32(-1i) * -25604i), arg_2.b.d, _wgslsmith_mult_u32(func_3(arg_2.a.xyx, vec3<u32>(41496u, 34588u, var_0.a.x), vec2<i32>(u_input.c, arg_1.x), false), 1u) >= (_wgslsmith_mult_u32(var_0.a.x, arg_2.a.x) & firstTrailingBit(1u))), ~(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_2.a.x, arg_2.a.x, var_0.a.x, 0u), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 1u, 59987u, 50868u), var_0.a), var_0.a) << (vec4<u32>(36732u, arg_0, 39421u, var_0.a.x) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(arg_2.b.a.xxx + var_0.b.a.zyz), _wgslsmith_f_op_vec3_f32(round(arg_2.b.a.zwz))))) * vec3<f32>(arg_2.b.a.x, 1237f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-462f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(abs(1u), u_input.a.wx, Struct_3(~countOneBits(vec4<u32>(1u, 1u, 1u, 1u)), func_4(~(~14481u), Struct_4(26814i, select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), false), all(vec4<bool>(false, true, false, true))), true && func_1(Struct_1(vec4<f32>(761f, -1365f, 927f, -243f), vec2<f32>(1004f, -365f), 2147483647i, u_input.a.xw, true), Struct_4(-1i, vec4<bool>(false, true, true, true), false), vec4<bool>(false, false, false, true), true)), i32(-1i) * -1i));
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, -982f, -1514f, var_0.a.x) + vec4<f32>(-688f, var_0.a.x, 1081f, var_0.c.a.x))), vec4<f32>(_wgslsmith_f_op_f32(step(-463f, -2130f)), _wgslsmith_f_op_f32(var_0.e.x - 1000f), _wgslsmith_f_op_f32(var_0.a.x + 1000f), 695f)) - var_0.c.a), -1i, func_4(var_0.d.x, Struct_4(i32(-1i) * -u_input.b, select(vec4<bool>(true, var_0.c.e, var_0.c.e, false), !vec4<bool>(var_0.c.e, true, var_0.c.e, var_0.c.e), select(var_0.c.e, var_0.c.e, var_0.c.e)), var_0.c.e), var_0.c.e), abs(~(var_0.d & var_0.d)) | abs(vec4<u32>(_wgslsmith_div_u32(var_0.d.x, var_0.d.x), firstTrailingBit(876u), 6928u, firstLeadingBit(var_0.d.x))), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1984f - _wgslsmith_f_op_f32(-946f + -378f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(var_0.e.x, var_0.c.a.x)))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(2733f - -247f), _wgslsmith_f_op_f32(round(-402f)))), -1000f));
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(830f, var_0.a.x, var_0.e.x, var_0.c.a.x))))), u_input.c, func_5(23516u, _wgslsmith_div_vec2_i32(firstLeadingBit(vec2<i32>(var_0.c.c, u_input.c) >> (var_0.d.wy % vec2<u32>(32u))), vec2<i32>(_wgslsmith_mult_i32(u_input.b, var_0.c.c), var_0.b)), Struct_3(_wgslsmith_clamp_vec4_u32(~var_0.d, ~vec4<u32>(1u, var_0.d.x, 25398u, var_0.d.x), abs(var_0.d)), func_5(_wgslsmith_mod_u32(1u, var_0.d.x), select(u_input.a.wx, vec2<i32>(var_0.c.d.x, 2147483647i), vec2<bool>(false, true)), Struct_3(var_0.d, Struct_1(var_0.a, var_0.c.a.wz, var_0.c.c, vec2<i32>(2147483647i, 19494i), var_0.c.e), u_input.c)).c, -2147483647i)).c, ~countOneBits(~abs(var_0.d)), var_0.e);
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(var_1.c.a + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, 407f, var_0.a.x, -641f)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, var_0.a.x, -1447f, 707f) * var_0.c.a), _wgslsmith_f_op_vec4_f32(-var_0.c.a)))), 6049i, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(164f, -1272f, 662f, var_1.e.x) * var_1.a) * _wgslsmith_f_op_vec4_f32(var_1.c.a * vec4<f32>(var_0.e.x, -790f, var_1.c.a.x, var_0.c.a.x))) - vec4<f32>(636f, _wgslsmith_f_op_f32(-1344f + 1003f), _wgslsmith_f_op_f32(1282f * var_1.e.x), -314f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.c.b * var_1.c.a.xy))), var_0.b ^ -2147483647i, reverseBits(vec2<i32>(-1376i, ~51112i)), !var_1.c.e), var_1.d, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-var_1.a.zyz), _wgslsmith_f_op_vec3_f32(-vec3<f32>(833f, var_1.e.x, var_1.a.x))))), vec3<f32>(-541f, _wgslsmith_f_op_f32(f32(-1f) * -617f), -279f)));
    var_1 = func_5(var_1.d.x, _wgslsmith_div_vec2_i32(firstTrailingBit(-_wgslsmith_add_vec2_i32(var_0.c.d, u_input.a.xx)), vec2<i32>(~(~2147483647i), 1i)), Struct_3(var_1.d, func_4(var_1.d.x, Struct_4(-19226i, vec4<bool>(false, false, true, var_1.c.e), true), !func_4(25950u, Struct_4(var_1.b, vec4<bool>(false, var_0.c.e, true, var_0.c.e), var_1.c.e), true).e), reverseBits(var_0.c.c)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

