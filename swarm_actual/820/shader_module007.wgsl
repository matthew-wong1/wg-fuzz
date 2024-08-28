struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30> = array<bool, 30>(true, false, false, true, false, false, true, false, true, false, true, false, true, true, true, false, false, false, false, false, false, false, true, true, false, false, true, false, false, true);

var<private> global1: Struct_4;

var<private> global2: f32;

var<private> global3: vec3<f32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_3, arg_3: f32) -> vec3<f32> {
    global1 = Struct_4(-2737f);
    global1 = Struct_4(-111f);
    let var_0 = countOneBits(1u);
    global3 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-233f)))), arg_2.a, arg_3)));
    var var_1 = ~arg_2.c.x;
    return vec3<f32>(_wgslsmith_f_op_f32(step(arg_0.a, _wgslsmith_div_f32(_wgslsmith_div_f32(214f, _wgslsmith_f_op_f32(floor(arg_2.a))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(1307f))))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-619f * global3.x)))), global1.a)), global1.a);
}

fn func_3() -> f32 {
    global0 = array<bool, 30>();
    let var_0 = global0[_wgslsmith_index_u32(1u << (_wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.b.x, u_input.a), ~(u_input.b.x & ~1u), _wgslsmith_div_u32(~(6746u >> (0u % 32u)), max(~2894u, _wgslsmith_mult_u32(u_input.b.x, u_input.a)))) % 32u), 30u)];
    var var_1 = all(select(select(vec3<bool>(any(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 30u)], true, global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(u_input.a, 30u)])), true, 26153u != u_input.d), select(vec3<bool>(global0[_wgslsmith_index_u32(82344u, 30u)], global0[_wgslsmith_index_u32(u_input.d, 30u)], false), select(vec3<bool>(global0[_wgslsmith_index_u32(9061u, 30u)], global0[_wgslsmith_index_u32(39019u, 30u)], false), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.d, 30u)], global0[_wgslsmith_index_u32(u_input.b.x, 30u)]), global0[_wgslsmith_index_u32(4294967295u, 30u)]), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(107562u, u_input.b.x, 26200u, u_input.a), u_input.b), 30u)]), !vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 30u)], global0[_wgslsmith_index_u32(27574u, 30u)], global0[_wgslsmith_index_u32(1u, 30u)])), select(!select(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.d, 30u)], global0[_wgslsmith_index_u32(0u, 30u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 30u)], false), global0[_wgslsmith_index_u32(902u, 30u)]), select(!vec3<bool>(global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(63966u, 30u)], global0[_wgslsmith_index_u32(u_input.a, 30u)]), select(vec3<bool>(true, global0[_wgslsmith_index_u32(14750u, 30u)], global0[_wgslsmith_index_u32(u_input.b.x, 30u)]), vec3<bool>(false, true, false), false), u_input.b.x < u_input.d), !(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.d, 30u)], false, false))), true));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(324f + -636f) * 717f)))) * _wgslsmith_f_op_f32(-global1.a));
    let var_3 = Struct_1(!(!(false != any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 30u)], global0[_wgslsmith_index_u32(8140u, 30u)], false)))));
    return _wgslsmith_f_op_f32(-361f - -1821f);
}

fn func_2() -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1698f)) - _wgslsmith_f_op_f32(f32(-1f) * -245f)))) * _wgslsmith_div_f32(global1.a, _wgslsmith_f_op_f32(func_3())));
    var var_1 = Struct_1(true && any(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 30u)], true, global0[_wgslsmith_index_u32(u_input.a, 30u)] || true)));
    let var_2 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_vec3_f32(func_1(Struct_4(var_0), Struct_1(false), Struct_3(158f, Struct_1(true), vec2<u32>(2340u, u_input.d)), global3.x)).x) >= -515f), vec2<bool>(!var_1.a, true), Struct_1(any(select(!vec4<bool>(var_1.a, true, var_1.a, var_1.a), select(vec4<bool>(true, var_1.a, true, var_1.a), vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(0u, 30u)]), global0[_wgslsmith_index_u32(u_input.b.x, 30u)]), u_input.d <= 4294967295u))), Struct_1(all(!vec3<bool>(var_1.a, global0[_wgslsmith_index_u32(0u, 30u)], var_1.a)) | select(false, select(var_1.a, global0[_wgslsmith_index_u32(76442u, 30u)], true), var_1.a)));
    global3 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(global1.a, var_0, false)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(309f, _wgslsmith_f_op_f32(sign(global3.x))))), _wgslsmith_f_op_f32(trunc(global1.a))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(837f, var_0, -1039f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -2239f, global1.a)))))), _wgslsmith_f_op_vec3_f32(func_1(Struct_4(426f), Struct_1(var_1.a), Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1498f), var_2.d, ~vec2<u32>(u_input.d, u_input.b.x)), _wgslsmith_f_op_f32(floor(global3.x)))))));
    global3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a - global3.x))) * var_0), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0)) * _wgslsmith_f_op_f32(-global1.a))), global1.a);
    return _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(280f - global1.a)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.a), global3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f * -189f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(267f, _wgslsmith_f_op_f32(ceil(-521f)), global1.a) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(Struct_4(global1.a), Struct_1(false), Struct_3(global1.a, Struct_1(true), vec2<u32>(0u, u_input.d)), global3.x)) + vec3<f32>(_wgslsmith_f_op_f32(-1753f + -1567f), _wgslsmith_f_op_f32(-global3.x), -1000f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2()))));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(289f, _wgslsmith_f_op_f32(abs(global3.x))))) - -494f));
    let var_0 = Struct_4(_wgslsmith_f_op_f32(634f - _wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(220f)) * _wgslsmith_f_op_f32(-global1.a)))));
    let var_1 = min(-_wgslsmith_dot_vec2_i32(vec2<i32>(-u_input.c.x, firstLeadingBit(1i)), u_input.c.zx), max(u_input.c.x, ~(~1i)));
    let var_2 = -14184i;
    var var_3 = Struct_4(var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, ~_wgslsmith_sub_vec3_u32(abs(u_input.b.zww), ~vec3<u32>(u_input.a, u_input.d, 0u)));
}

