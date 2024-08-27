struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
    c: Struct_2,
    d: vec4<bool>,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: vec3<i32> = vec3<i32>(7446i, 1i, 105211i);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> bool {
    let var_0 = 1u;
    var var_1 = -firstTrailingBit(u_input.b.xyw);
    var_1 = vec3<i32>(firstLeadingBit(firstLeadingBit(u_input.a)), -_wgslsmith_add_i32(_wgslsmith_sub_i32(2147483647i, u_input.a), 1698i) >> (var_0 % 32u), -52389i);
    return true;
}

fn func_2(arg_0: vec2<f32>) -> i32 {
    let var_0 = _wgslsmith_div_vec2_i32(firstTrailingBit(vec2<i32>(u_input.b.x, 11874i)), _wgslsmith_sub_vec2_i32(global1.zz, vec2<i32>(select(8089i, u_input.a, global0.x), u_input.a)));
    global0 = vec2<bool>(global0.x, ((func_3(Struct_1(79961u, arg_0.x), global0.x) && true) && true) || (false && func_3(Struct_1(9228u, 1000f), all(vec2<bool>(true, false)))));
    return _wgslsmith_dot_vec4_i32(~(u_input.b << (min(vec4<u32>(51363u, 26933u, 54963u, 83819u), abs(vec4<u32>(4294967295u, 32201u, 57288u, 0u))) % vec4<u32>(32u))), vec4<i32>(global1.x, _wgslsmith_dot_vec3_i32(firstTrailingBit(u_input.b.wyx & vec3<i32>(-5004i, var_0.x, 2147483647i)), -vec3<i32>(global1.x, global1.x, 1i)), min(i32(-1i) * -63908i, _wgslsmith_dot_vec2_i32(max(global1.yx, vec2<i32>(-46017i, u_input.a)), firstLeadingBit(vec2<i32>(-18107i, 1i)))), _wgslsmith_dot_vec4_i32(u_input.b, max(u_input.b >> (vec4<u32>(4294967295u, 1u, 46152u, 1448u) % vec4<u32>(32u)), firstLeadingBit(vec4<i32>(u_input.a, 51358i, 0i, global1.x))))));
}

fn func_1() -> vec3<bool> {
    global1 = u_input.b.xzw;
    global1 = vec3<i32>(_wgslsmith_clamp_i32(abs(min(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 45653i, 26748i, u_input.a), u_input.b))), _wgslsmith_sub_i32(1i >> (1u % 32u), 0i), ~_wgslsmith_mod_i32(global1.x ^ global1.x, select(global1.x, u_input.b.x, global0.x))), global1.x, func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-201f, -785f) + vec2<f32>(-171f, 194f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-899f, -794f))))));
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -632f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-171f * 999f), -232f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(368f, 2144f) - -1533f)) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-622f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -779f))), _wgslsmith_f_op_f32(1414f * _wgslsmith_f_op_f32(f32(-1f) * -563f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-178f, -1000f, 1961f))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-977f, 1000f, -120f), vec3<f32>(283f, 185f, 619f)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))));
    var var_1 = -2217f;
    return select(vec3<bool>(false, false && !(-1i > global1.x), select(all(vec4<bool>(false, global0.x, global0.x, global0.x)), any(vec4<bool>(global0.x, false, true, false)) && all(vec4<bool>(global0.x, true, true, global0.x)), (global0.x | false) | true)), select(!(!select(vec3<bool>(global0.x, false, true), vec3<bool>(global0.x, true, true), global0.x)), select(vec3<bool>(true, true, true), select(!vec3<bool>(true, global0.x, true), vec3<bool>(true, global0.x, global0.x), true), global0.x), vec3<bool>(true, global0.x, true)), !vec3<bool>(any(vec3<bool>(true, global0.x, true)), true, all(select(vec2<bool>(true, global0.x), vec2<bool>(global0.x, global0.x), vec2<bool>(false, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<i32>(u_input.b.x, -14574i << (1u % 32u), global1.x) << (~vec3<u32>(0u, 4294967295u, ~13886u) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(~(-2147483647i), _wgslsmith_mod_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(4294967295u), 1u), ~vec2<u32>(1u, 64729u))), select(vec3<u32>(0u, 20302u, _wgslsmith_sub_u32(18165u, _wgslsmith_mult_u32(0u, 1u))), select(vec3<u32>(1u, 1u, 1u), vec3<u32>(_wgslsmith_add_u32(0u, 64927u), firstTrailingBit(5425u), 4294967295u), select(select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(global0.x, true, true), vec3<bool>(false, false, false)), func_1(), global0.x)), select(vec3<bool>(global0.x, true, !global0.x), select(!vec3<bool>(global0.x, global0.x, false), vec3<bool>(false, false, global0.x), func_1()), !(!vec3<bool>(true, global0.x, true)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1770f, 794f, -1023f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-808f, 124f, 190f) + vec3<f32>(-1000f, 740f, 902f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1703f, -178f, 1200f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1544f, 212f, -1446f))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2406f, -513f, -728f)))))));
}

