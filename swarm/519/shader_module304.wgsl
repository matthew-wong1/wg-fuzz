struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec3<bool>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: i32;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> bool {
    let var_0 = Struct_1(u_input.a.zzy, u_input.d.x, vec3<bool>((0u <= global0.x) || false, false, true), true);
    var var_1 = 1u;
    let var_2 = Struct_1(var_0.a, firstTrailingBit(_wgslsmith_mod_i32(u_input.d.x ^ var_0.b, _wgslsmith_mod_i32(var_0.b, -54931i)) | 2147483647i), !(!vec3<bool>(any(var_0.c), var_0.c.x, !var_0.c.x)), true);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -727f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -794f) - 1f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1878f))), -2096f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 287f)), 115f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-352f * -587f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))))));
    let var_4 = true;
    return select(var_2.c.x, true, !var_4) | var_0.c.x;
}

fn func_2(arg_0: bool) -> i32 {
    let var_0 = false;
    var var_1 = !var_0;
    let var_2 = Struct_1(max(~_wgslsmith_mod_vec3_u32(u_input.a.zxx | u_input.a.yzz, u_input.a.wyx), ~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global0.x, 89884u), u_input.a.wwz), 36626u, ~26999u)), ~_wgslsmith_div_i32(u_input.d.x, u_input.c.x), !(!vec3<bool>(var_0, func_3(), !arg_0)), u_input.d.x < u_input.c.x);
    var var_3 = Struct_1(var_2.a, min(var_2.b, ~(~1i)), vec3<bool>(!any(select(var_2.c, vec3<bool>(arg_0, var_0, var_0), var_2.c)), any(vec2<bool>(true, true)), arg_0), _wgslsmith_sub_u32(1u, 1u) < abs(~(51107u << (global0.x % 32u))));
    var var_4 = _wgslsmith_div_i32(2147483647i, var_2.b);
    return 0i;
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_add_u32(global0.x, _wgslsmith_div_u32(54243u, _wgslsmith_sub_u32(global0.x & u_input.a.x, global0.x) << (38454u % 32u)));
    let var_2 = !any(!select(vec4<bool>(true, arg_1.x, true, false), !vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x), all(vec3<bool>(arg_1.x, arg_1.x, arg_1.x))));
    var var_3 = var_0.x;
    let var_4 = _wgslsmith_add_i32(max(2147483647i, 32883i), i32(-1i) * -_wgslsmith_clamp_i32(-var_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(6724i, u_input.d.x, -33464i, arg_0.x), vec4<i32>(arg_0.x, -13600i, var_0.x, 29890i)), arg_0.x));
    return Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(19702u, 18158u, ~0u), u_input.a.zwy, min(u_input.a.zyw, vec3<u32>(27454u, global0.x, 0u))) & u_input.a.xyy, arg_0.x, !(!vec3<bool>(false, true, all(vec4<bool>(false, arg_1.x, true, arg_1.x)))), true);
}

fn func_1() -> Struct_1 {
    global1 = _wgslsmith_clamp_i32(~(-44593i), min((~u_input.c.x << (firstLeadingBit(0u) % 32u)) | u_input.c.x, reverseBits(u_input.c.x)), 0i);
    let var_0 = u_input.d.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-679f, -903f, 266f, -1034f), vec4<f32>(126f, -178f, 1278f, 595f))) + vec4<f32>(1514f, 492f, 191f, -1072f))))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(519f, var_1.x, var_1.x, var_1.x) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-421f, var_1.x, var_1.x, 1162f)))) - _wgslsmith_div_vec4_f32(vec4<f32>(-1428f, var_1.x, var_1.x, 782f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1159f, 412f, 256f, -792f))))));
    let var_2 = func_4(vec2<i32>(func_2(!all(vec3<bool>(true, false, false))), 1i), vec2<bool>(!all(vec2<bool>(true, true)), true));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = var_0.c.x || !(!(_wgslsmith_sub_u32(var_0.a.x, var_0.a.x) <= global0.x));
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1369f + 222f) - _wgslsmith_div_f32(287f, -686f)))), -163f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(844f * -1949f) * _wgslsmith_f_op_f32(round(1004f))), -803f, func_4(_wgslsmith_sub_vec2_i32(u_input.d.yx, vec2<i32>(-1i, 0i)), !var_0.c.xx).c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(803f * -367f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1934f, -2493f))), _wgslsmith_f_op_f32(-356f + 1290f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-988f, _wgslsmith_div_f32(933f, 1013f)) + 200f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -247f) * _wgslsmith_f_op_f32(f32(-1f) * -603f)), 1149f, var_1))));
    let var_3 = var_0;
    let var_4 = _wgslsmith_div_vec4_i32(~_wgslsmith_add_vec4_i32(countOneBits(firstTrailingBit(vec4<i32>(-2147483647i, var_0.b, -40141i, 0i))), vec4<i32>(var_0.b, -2147483647i, u_input.c.x | var_3.b, ~(-30224i))), -u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(select(vec3<i32>(1i, 0i, var_4.x) | ~u_input.d.wxy, u_input.d.zyz << (vec3<u32>(global0.x, 1u, 15252u) % vec3<u32>(32u)), !func_4(vec2<i32>(-2147483647i, var_4.x), vec2<bool>(true, false)).c)), var_0.b, var_4.wy, abs(u_input.e), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1167f, -112f, -1888f, var_2.x)))) - vec4<f32>(1032f, _wgslsmith_f_op_f32(-var_2.x), 2425f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - _wgslsmith_f_op_f32(min(var_2.x, -1705f))))));
}

