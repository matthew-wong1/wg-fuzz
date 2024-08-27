struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<u32, 21>;

var<private> global2: vec2<bool> = vec2<bool>(false, false);

var<private> global3: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec2<bool>(true, false), vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false), vec2<bool>(true, false)));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = Struct_2(!vec2<bool>(select(any(global0.b), true, true), all(vec2<bool>(true, true))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(276f, -1760f, 1100f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(559f, 1518f, 171f)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1498f), -1132f, -615f), false)))));
    let var_1 = global3[_wgslsmith_index_u32(max(u_input.b.x, ~abs(~arg_0.x)), 2u)];
    let var_2 = global3[_wgslsmith_index_u32(arg_0.x, 2u)];
    global3 = array<Struct_1, 2>();
    global1 = array<u32, 21>();
    return Struct_1(vec2<bool>(true, true), vec2<bool>(global0.a.x, true));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec4<f32> {
    global1 = array<u32, 21>();
    var var_0 = _wgslsmith_f_op_f32(705f + 1f);
    global1 = array<u32, 21>();
    let var_1 = Struct_1(vec2<bool>(false, true), select(arg_1.b, !vec2<bool>(global2.x, global0.a.x), firstLeadingBit(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a)) == ~_wgslsmith_add_u32(global1[_wgslsmith_index_u32(1u, 21u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(33787u, 21u)], 21u)], 21u)], 21u)])));
    return vec4<f32>(-266f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1369f, 217f), 1223f, all(vec3<bool>(false, global2.x, arg_1.a.x))))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -196f), _wgslsmith_f_op_f32(334f + 1460f))), -596f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -648f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(647f + -751f), _wgslsmith_f_op_f32(abs(-830f)), true))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-235f * -245f))))), -505f);
}

fn func_1() -> vec4<f32> {
    let var_0 = global2.x;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1552f - 1734f)))), -493f, _wgslsmith_f_op_f32(max(1000f, 198f)));
    let var_2 = _wgslsmith_add_i32(_wgslsmith_sub_i32(1i, -14719i) << (_wgslsmith_sub_u32(1u, 1u) % 32u), firstLeadingBit(51430i));
    global0 = func_2(~vec2<u32>(~_wgslsmith_sub_u32(1u, 1u), (21453u | u_input.b.x) << (global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, u_input.b.x), 21u)] % 32u)));
    global1 = array<u32, 21>();
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(func_2(vec2<u32>(0u, 35970u)), Struct_1(global0.a, global0.a)))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.x, 125f, var_1.x, var_1.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(466f, 376f, var_1.x, var_1.x))))))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)) * _wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec2<bool>(false, false), global0.b), func_2(u_input.b)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.a.x;
    global2 = select(!vec2<bool>(any(vec2<bool>(global2.x, false)), true), !global0.b, true);
    global1 = array<u32, 21>();
    let var_1 = true;
    var var_2 = _wgslsmith_f_op_vec4_f32(func_1());
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x)))))), vec2<f32>(_wgslsmith_f_op_f32(var_2.x + -1289f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(388f - var_2.x))) - var_2.x)));
}

