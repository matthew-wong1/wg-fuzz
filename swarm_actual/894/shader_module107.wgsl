struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<u32, 30>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<u32>, arg_1: u32) -> f32 {
    global1 = array<u32, 30>();
    var var_0 = Struct_1(!select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true)), ~vec2<u32>(arg_1, 87949u));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1336f, 401f, 2061f, 2243f) * vec4<f32>(1287f, 1038f, -571f, 1300f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-107f, 611f, 1982f, -242f)))))) * vec4<f32>(451f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1312f * -1156f))), _wgslsmith_f_op_f32(298f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -652f)))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(695f, 587f))) + 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1911f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1505f - 954f) * _wgslsmith_f_op_f32(abs(-366f)))), 169f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(260f)))));
    let var_2 = _wgslsmith_f_op_f32(869f - 1000f);
    let var_3 = Struct_2(Struct_1(select(var_0.a, var_0.a, true), vec2<u32>(15849u, _wgslsmith_add_u32(reverseBits(global1[_wgslsmith_index_u32(u_input.a.x, 30u)]), _wgslsmith_mod_u32(74351u, 124178u)))), 100371u ^ _wgslsmith_clamp_u32(_wgslsmith_add_u32(reverseBits(arg_1), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, 12584u, 94053u, 2653u), arg_0)), abs(arg_0.x << (u_input.e.x % 32u)), ~(1u << (arg_0.x % 32u))), _wgslsmith_mult_u32(~_wgslsmith_add_u32(arg_1, _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(u_input.a.x, 30u)], 0u, 4294967295u)), 0u));
    return _wgslsmith_f_op_f32(-977f * var_2);
}

fn func_2(arg_0: u32, arg_1: vec3<u32>) -> f32 {
    global1 = array<u32, 30>();
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1135f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1066f))), _wgslsmith_f_op_f32(-1813f * _wgslsmith_f_op_f32(-1380f - _wgslsmith_div_f32(-1000f, -1105f))), true)));
    var var_0 = ~u_input.c.x;
    global0 = _wgslsmith_f_op_f32(func_3(~(~(~vec4<u32>(4294967295u, u_input.b, arg_1.x, u_input.b))), global1[_wgslsmith_index_u32(~(~arg_1.x), 30u)] & abs(~_wgslsmith_add_u32(arg_1.x, arg_1.x))));
    global1 = array<u32, 30>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-683f))), _wgslsmith_f_op_f32(round(-1000f))) + -441f), -169f);
}

fn func_1() -> f32 {
    global1 = array<u32, 30>();
    var var_0 = _wgslsmith_f_op_f32(func_2(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~u_input.a.yz, ~_wgslsmith_sub_vec2_u32(u_input.a.yx, vec2<u32>(u_input.b, 1u))), u_input.a.x), u_input.a));
    var var_1 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -471f) - _wgslsmith_f_op_f32(-930f + 309f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1271f, 1476f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-1308f, 1302f)), 1428f, true)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, 1630f)) * _wgslsmith_f_op_f32(ceil(-472f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-806f, 643f))) - vec2<f32>(_wgslsmith_f_op_f32(-2691f + -1323f), _wgslsmith_f_op_f32(f32(-1f) * -740f))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1497f, -137f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-769f, -415f))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1748f, -1422f)))), all(vec3<bool>(false, false, true))))), u_input.a.x <= 1u));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(867f * var_1.x))))), Struct_2(Struct_1(vec3<bool>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 30u)], 30u)] == 1u, true, true), u_input.a.yx), ~(~4294967295u), u_input.e.x));
    var var_3 = var_1.x;
    return 450f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1200f)))))));
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1072f)))), -1000f, 1f);
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(-869f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - 770f) * _wgslsmith_f_op_f32(-1509f - -1382f)))), _wgslsmith_f_op_f32(-var_0.x), var_0.x) * _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, 677f, -1090f), vec3<f32>(var_0.x, var_0.x, -791f))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(746f, var_0.x, -477f))))), vec3<f32>(_wgslsmith_f_op_f32(abs(var_0.x)), -103f, 1054f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-653f, 742f), -1460f, _wgslsmith_f_op_f32(var_0.x * var_0.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1257f, 1000f, -1477f)))));
    var var_1 = select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, any(vec3<bool>(false, true, true)), true, all(vec3<bool>(true, true, true))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true), any(vec2<bool>(false, false)))), vec4<bool>(false, true, true && !all(vec3<bool>(false, false, false)), any(vec4<bool>(any(vec2<bool>(true, true)), false, true, true))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(func_2(_wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, global1[_wgslsmith_index_u32(53628u, 30u)], global1[_wgslsmith_index_u32(u_input.e.x, 30u)], 3648u), vec4<u32>(4294967295u, u_input.d, 34854u, global1[_wgslsmith_index_u32(23510u, 30u)]), vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(0u, 30u)], global1[_wgslsmith_index_u32(4294967295u, 30u)], 45953u)), vec4<u32>(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(32911u, 30u)], 30u)], _wgslsmith_div_u32(4294967295u, u_input.e.x), _wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(36510u, 30u)], u_input.e.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.e.x, 30u)], 30u)], global1[_wgslsmith_index_u32(u_input.a.x, 30u)]), vec4<u32>(19u, global1[_wgslsmith_index_u32(u_input.b, 30u)], u_input.d, 0u)), u_input.b)), vec3<u32>(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(global1[_wgslsmith_index_u32(1u, 30u)], 1u)), vec2<u32>(u_input.d, u_input.e.x)), (10305u << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 30u)], 30u)] % 32u)) ^ global1[_wgslsmith_index_u32(~48016u, 30u)], 38508u << (global1[_wgslsmith_index_u32(~u_input.a.x, 30u)] % 32u)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -843f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-556f - var_0.x))), !var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_0.x, _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), var_0.x)))));
}

