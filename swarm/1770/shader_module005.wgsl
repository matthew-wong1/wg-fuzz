struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec3<i32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 28>;

var<private> global1: array<vec3<bool>, 17> = array<vec3<bool>, 17>(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true));

var<private> global2: array<vec2<f32>, 30> = array<vec2<f32>, 30>(vec2<f32>(-973f, 457f), vec2<f32>(-622f, -804f), vec2<f32>(-1277f, -1171f), vec2<f32>(-202f, -141f), vec2<f32>(-1029f, -266f), vec2<f32>(118f, 1000f), vec2<f32>(-497f, 2391f), vec2<f32>(541f, -419f), vec2<f32>(-326f, 483f), vec2<f32>(112f, -1528f), vec2<f32>(1000f, 661f), vec2<f32>(710f, -257f), vec2<f32>(1539f, -180f), vec2<f32>(-2153f, -760f), vec2<f32>(-514f, -1082f), vec2<f32>(823f, 652f), vec2<f32>(-628f, 1364f), vec2<f32>(-225f, 834f), vec2<f32>(-1410f, 650f), vec2<f32>(365f, -521f), vec2<f32>(-1154f, -696f), vec2<f32>(319f, -336f), vec2<f32>(-918f, 371f), vec2<f32>(181f, 1672f), vec2<f32>(-428f, 730f), vec2<f32>(-1122f, -1407f), vec2<f32>(-292f, 919f), vec2<f32>(-1000f, -676f), vec2<f32>(-551f, -1000f), vec2<f32>(-433f, -733f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> u32 {
    global1 = array<vec3<bool>, 17>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1714f))), _wgslsmith_f_op_f32(min(-1140f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(298f - -419f), _wgslsmith_f_op_f32(-879f * -1114f))))))) * _wgslsmith_f_op_f32(min(-405f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -189f))) * _wgslsmith_f_op_f32(sign(-690f))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1580f))) - -326f)));
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1))), _wgslsmith_f_op_f32(-1236f * _wgslsmith_div_f32(var_1, var_1)))), vec2<bool>(57718u == ~(~u_input.e), any(vec2<bool>(var_1 < var_1, all(global0[_wgslsmith_index_u32(29158u, 28u)])))));
    let var_3 = ~(~vec2<u32>(1u, _wgslsmith_add_u32(117u, ~u_input.d)));
    return u_input.d;
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: u32, arg_3: bool) -> f32 {
    var var_0 = func_3();
    global0 = array<vec3<bool>, 28>();
    let var_1 = 470f;
    global1 = array<vec3<bool>, 17>();
    var var_2 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(-var_1)), arg_0)), -516f), vec2<bool>(!arg_3, arg_3));
    return _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -269f))), var_2.a.x), _wgslsmith_f_op_f32(f32(-1f) * -587f)));
}

fn func_1() -> vec2<u32> {
    global1 = array<vec3<bool>, 17>();
    global0 = array<vec3<bool>, 28>();
    global0 = array<vec3<bool>, 28>();
    global2 = array<vec2<f32>, 30>();
    let var_0 = Struct_1(~vec2<u32>(~(~54787u), u_input.d), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1496f, 939f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(2430f, -735f) + -381f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-610f * 328f), 1i, _wgslsmith_dot_vec2_u32(vec2<u32>(111203u, 0u), u_input.b.yx), u_input.d <= 4294967295u))), _wgslsmith_f_op_f32(810f + 979f)));
    return vec2<u32>(u_input.b.x, 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(global2[_wgslsmith_index_u32(~u_input.d, 30u)], _wgslsmith_f_op_vec2_f32(global2[_wgslsmith_index_u32(u_input.b.x, 30u)] - vec2<f32>(-1115f, 1673f)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-959f, -1000f))))));
    let var_1 = -1i;
    let var_2 = Struct_1(max(abs(func_1()), ~u_input.b.wz), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x + var_0.x))), -392f, 559f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -1282f, var_0.x) + vec3<f32>(var_0.x, var_0.x, var_0.x)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -578f, var_0.x)))));
    global2 = array<vec2<f32>, 30>();
    var var_3 = _wgslsmith_sub_i32(0i, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.b.yxw | u_input.b.zxz));
}

