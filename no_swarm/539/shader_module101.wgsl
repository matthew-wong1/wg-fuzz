struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: i32,
    d: vec2<bool>,
    e: i32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec4<i32>,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: vec3<i32>;

var<private> global2: u32 = 13807u;

var<private> global3: array<f32, 29> = array<f32, 29>(-1522f, -198f, 864f, 1000f, 1788f, 349f, -1132f, 263f, 1067f, 782f, 1697f, 527f, -536f, -982f, -864f, -1000f, -194f, 218f, -483f, -812f, -1288f, -800f, -1455f, -1549f, -982f, 127f, 2001f, 626f, -158f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<i32>) -> bool {
    let var_0 = ~(-(i32(-1i) * -2147483647i));
    let var_1 = Struct_2(global3[_wgslsmith_index_u32(~abs(u_input.d.x), 29u)], select(0u, 1u, all(vec3<bool>(global3[_wgslsmith_index_u32(u_input.d.x, 29u)] > global3[_wgslsmith_index_u32(global0.x, 29u)], false, false))), u_input.e.x, vec2<bool>(false, (_wgslsmith_add_u32(4294967295u, u_input.b.x) >> (~0u % 32u)) > (global0.x & u_input.b.x)), -u_input.e.x);
    global2 = 14419u;
    global3 = array<f32, 29>();
    let var_2 = Struct_2(1000f, var_1.b, -_wgslsmith_sub_i32(var_1.c, ~(-48664i | arg_0.x)), !(!var_1.d), global1.x);
    return true;
}

fn func_2(arg_0: bool, arg_1: i32) -> bool {
    let var_0 = !(!select(!select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, true)), select(select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, false), vec2<bool>(arg_0, false)), vec2<bool>(true, true), func_3(vec4<i32>(arg_1, arg_1, 48971i, arg_1))), arg_0));
    var var_1 = Struct_3(1648f, Struct_1(vec4<i32>(1i, 1i, 1i, 1i) >> (_wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(u_input.b.x, global0.x, 0u, 12017u)), select(u_input.d, u_input.d, vec4<bool>(arg_0, arg_0, var_0.x, false)), vec4<u32>(5082u, global0.x, 77909u, 18934u)) % vec4<u32>(32u)), select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(var_0.x, arg_0, var_0.x)), select(vec3<bool>(arg_0, var_0.x, var_0.x), vec3<bool>(var_0.x, true, var_0.x), true), true), select(select(vec3<bool>(false, true, false), vec3<bool>(true, arg_0, true), var_0.x), vec3<bool>(false, true, arg_0), select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, arg_0, var_0.x), vec3<bool>(var_0.x, false, true))), !select(vec3<bool>(true, true, false), vec3<bool>(false, var_0.x, arg_0), true))), true, Struct_2(-627f, global0.x, _wgslsmith_mod_i32(-1799i, u_input.c), select(select(var_0, !vec2<bool>(true, var_0.x), var_0), select(var_0, var_0, true), select(vec2<bool>(false, arg_0), select(var_0, vec2<bool>(false, var_0.x), var_0), !vec2<bool>(true, var_0.x))), ~reverseBits(u_input.e.x)));
    let var_2 = Struct_2(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(49415u, _wgslsmith_div_u32(11628u, u_input.b.x)), 29u)], abs(var_1.d.b), 0i, !var_1.b.b.yy, var_1.d.e);
    var var_3 = -_wgslsmith_dot_vec4_i32(-vec4<i32>(-var_1.d.c, 1i, _wgslsmith_mult_i32(u_input.e.x, var_2.c), -1i), vec4<i32>(u_input.e.x, var_2.e, var_1.b.a.x, 14355i));
    return any(var_1.b.b);
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: vec2<i32>) -> u32 {
    var var_0 = !(!(!vec2<bool>(arg_1, func_2(false, global1.x))));
    global3 = array<f32, 29>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 29u)], -660f), vec2<f32>(502f, -475f)), _wgslsmith_div_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(global0.x, 29u)], arg_0), vec2<f32>(global3[_wgslsmith_index_u32(12024u, 29u)], 2045f)), vec2<bool>(var_0.x, var_0.x))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global3[_wgslsmith_index_u32(u_input.d.x, 29u)], arg_0))))))));
    let var_2 = _wgslsmith_add_vec2_i32(global1.yz, vec2<i32>(20050i, max(-arg_2.x >> (_wgslsmith_sub_u32(17806u, global0.x) % 32u), -21039i)));
    let var_3 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(400f, 372f, 350f, arg_0) * vec4<f32>(arg_0, -232f, -1271f, 831f))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-428f, 229f, -1776f, -289f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, 605f, -525f, -904f), vec4<f32>(-1260f, -509f, -375f, -322f), vec4<bool>(false, false, false, false))), vec4<bool>(arg_1, var_0.x, arg_1, var_0.x))))))));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(func_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-619f * global3[_wgslsmith_index_u32(u_input.a, 29u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global0.x, 29u)]) * global3[_wgslsmith_index_u32(max(1u, 73230u), 29u)]))), true, ~(~min(vec2<i32>(1i, u_input.e.x), u_input.e.wx))), _wgslsmith_mult_u32(0u, _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 102887u, global0.x), ~vec3<u32>(u_input.d.x, u_input.b.x, 51925u)) | (u_input.b.x >> ((u_input.a >> (u_input.b.x % 32u)) % 32u))), ~(~(~24293u & select(51508u, 1u, true))), _wgslsmith_div_u32(global0.x, select(_wgslsmith_mod_u32(u_input.a, 53404u), reverseBits(25407u), global3[_wgslsmith_index_u32(0u, 29u)] >= global3[_wgslsmith_index_u32(76319u, 29u)]) & ~_wgslsmith_mod_u32(global0.x, global0.x)));
    var var_1 = _wgslsmith_mult_vec4_i32(u_input.e, ((vec4<i32>(-1i) * -u_input.e) | u_input.e) >> (_wgslsmith_mod_vec4_u32(var_0, abs(_wgslsmith_clamp_vec4_u32(u_input.d, vec4<u32>(u_input.b.x, u_input.b.x, global0.x, 57978u), vec4<u32>(1u, 31651u, var_0.x, 118043u)))) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(reverseBits(firstLeadingBit(var_0.wy)), _wgslsmith_clamp_vec2_u32(min(u_input.d.wy, u_input.b), var_0.xz, vec2<u32>(u_input.a, 7162u) ^ u_input.d.wz) >> (abs(select(var_0.wy, var_0.zy, vec2<bool>(true, false))) % vec2<u32>(32u))), _wgslsmith_div_f32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(1u, var_0.x)), ~var_0.xy), 29u)], -1501f), u_input.e, ~u_input.b.x, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -901f))), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(abs(var_0.x), 29u)])), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global3[_wgslsmith_index_u32(global0.x, 29u)], 571f))))))));
}

