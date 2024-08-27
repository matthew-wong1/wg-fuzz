struct Struct_1 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(-1463f, 875f), Struct_1(1028f, 1056f), Struct_1(453f, -658f), Struct_1(-1039f, -1078f), Struct_1(-299f, 1000f), Struct_1(-1000f, 1000f), Struct_1(-1826f, -203f), Struct_1(2462f, -509f), Struct_1(-313f, -1531f), Struct_1(-1000f, 933f));

var<private> global1: array<vec3<u32>, 22>;

var<private> global2: vec3<f32> = vec3<f32>(-1471f, 587f, 1317f);

var<private> global3: vec3<i32> = vec3<i32>(-1i, -1i, -59577i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: f32, arg_3: bool) -> f32 {
    let var_0 = Struct_1(1219f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(global2.x))))) + 760f));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(567f - 1000f) * _wgslsmith_f_op_f32(-arg_0)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * -647f)));
    let var_2 = u_input.b;
    var var_3 = ~(~u_input.b);
    var_3 = firstLeadingBit(~((~var_2 ^ (u_input.b ^ var_2)) >> (13595u % 32u)));
    return arg_1.a;
}

fn func_3(arg_0: f32, arg_1: vec4<i32>) -> vec3<f32> {
    global2 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(func_2(-3125f, global0[_wgslsmith_index_u32(48155u, 10u)], _wgslsmith_f_op_f32(select(global2.x, arg_0, true)), true)), _wgslsmith_f_op_f32(-641f + _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-1283f - arg_0), Struct_1(-452f, 200f), _wgslsmith_f_op_f32(-global2.x), true))), _wgslsmith_f_op_f32(trunc(-1965f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-350f, -116f, 2019f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, 1000f, 362f))))), select(select(select(vec3<bool>(false, false, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true)), vec3<bool>(true, select(true, false, false), true), select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true), any(vec2<bool>(false, false))), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))));
    let var_0 = select(!vec3<bool>(true, all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true))), false), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)))), vec3<bool>(all(vec3<bool>(true, true, true)), !all(vec3<bool>(false, false, true)), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(0u, 8455u, 26469u)) < _wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(1u, 22u)], global1[_wgslsmith_index_u32(u_input.b, 22u)])), vec3<bool>(true, any(vec2<bool>(true, true)), all(vec4<bool>(false, false, true, false)) | true)), vec3<bool>(true, all(vec2<bool>(true, true)), !(!(arg_0 != global2.x))));
    let var_1 = ~_wgslsmith_mult_u32(_wgslsmith_sub_u32(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 66433u), global1[_wgslsmith_index_u32(60473u, 22u)])), countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), global1[_wgslsmith_index_u32(12989u, 22u)]))), 4294967295u);
    global0 = array<Struct_1, 10>();
    global1 = array<vec3<u32>, 22>();
    return _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(abs(global2.x)), global2.x, 689f)));
}

fn func_1() -> Struct_1 {
    global2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(1000f)))), 1136f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global2.x * -132f), _wgslsmith_f_op_f32(func_2(-946f, global0[_wgslsmith_index_u32(u_input.b, 10u)], global2.x, true)))), 1000f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1255f) * -237f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, _wgslsmith_f_op_f32(global2.x + 618f), _wgslsmith_f_op_f32(sign(global2.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1897f, global2.x, global2.x)))))));
    global0 = array<Struct_1, 10>();
    global1 = array<vec3<u32>, 22>();
    global2 = _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_div_f32(-555f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1956f, global2.x))) - global2.x)), vec4<i32>(-1i) * -(vec4<i32>(-363i, global3.x, -2147483647i, global3.x) ^ -vec4<i32>(-1279i, u_input.a.x, -6997i, -34817i))));
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(firstTrailingBit(1u)), ~0u), 10u)];
    return Struct_1(1212f, var_0.b);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = Struct_1(global2.x, _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_f32(sign(global2.x)), ~(~(vec4<i32>(global3.x, global3.x, 0i, -6602i) ^ vec4<i32>(global3.x, u_input.c.x, arg_2.x, arg_1))))).x);
    return Struct_1(var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-646f, _wgslsmith_f_op_f32(f32(-1f) * -1301f))) - global2.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    global0 = array<Struct_1, 10>();
    global0 = array<Struct_1, 10>();
    let var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1403f - _wgslsmith_f_op_f32(f32(-1f) * -799f)), global2.x), _wgslsmith_f_op_f32(ceil(-292f)));
    global2 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(global2.x, global2.x)), var_1.b)) - global2.x), 176f, true)), 828f, global2.x);
    var var_2 = func_4(func_1(), -max(_wgslsmith_dot_vec2_i32(vec2<i32>(global3.x, global3.x), global3.zy << (vec2<u32>(58179u, u_input.b) % vec2<u32>(32u))), -24867i), ~max(abs(vec4<i32>(-53135i, global3.x, 14534i, -2147483647i)), max(~vec4<i32>(-2147483647i, 2147483647i, -2147483647i, global3.x), abs(vec4<i32>(-36613i, global3.x, u_input.d, global3.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global2.x, -588f, -924f))))), 4475u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.a, 1205f)) + -1141f), global2.x)));
}

