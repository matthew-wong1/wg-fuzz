struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 11>;

var<private> global1: array<f32, 15>;

var<private> global2: array<vec4<u32>, 22>;

var<private> global3: vec4<bool>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: f32) -> vec3<bool> {
    global1 = array<f32, 15>();
    global2 = array<vec4<u32>, 22>();
    global0 = array<vec2<bool>, 11>();
    var var_0 = !(!(_wgslsmith_f_op_f32(f32(-1f) * -1000f) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-361f)))));
    var var_1 = arg_1;
    return arg_2.xww;
}

fn func_3() -> vec2<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(7894u, 15u)]) - global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(27941u, 31654u, 4294967295u, 1u), vec4<u32>(15251u, 10012u, 0u, 62247u)), 15u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4754u, 15u)] * -1548f), -1763f)))));
    global2 = array<vec4<u32>, 22>();
    global2 = array<vec4<u32>, 22>();
    var var_1 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1[_wgslsmith_index_u32(firstLeadingBit(1u), 15u)], -629f, global1[_wgslsmith_index_u32(4294967295u, 15u)], _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(var_0.a.x))))), vec4<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 15u)] - _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(57848u, 15u)] * 1000f)), 2719f, 1104f, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(1u, 1u)), firstLeadingBit(min(vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 76081u)))), 15u)])));
    let var_2 = -65121i;
    return vec2<u32>(1u, 1u);
}

fn func_2() -> vec3<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-568f, var_0.a.x));
    return vec3<bool>(true, !global3.x, 1u >= _wgslsmith_dot_vec2_u32(~(~vec2<u32>(34307u, 1u)), select(vec2<u32>(4294967295u, 90241u), func_3(), false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec3<bool>(true, 1u == firstTrailingBit(abs(25145u)), all(!vec3<bool>(false, global3.x, false))), select(select(!vec3<bool>(false, true, global3.x), select(!vec3<bool>(global3.x, global3.x, true), func_1(u_input.a, Struct_1(vec2<f32>(global1[_wgslsmith_index_u32(55090u, 15u)], -368f)), vec4<bool>(global3.x, global3.x, false, global3.x), -477f), vec3<bool>(global3.x, global3.x, global3.x)), vec3<bool>(!global3.x, global3.x, global3.x)), global3.ywx, true), select(func_2(), vec3<bool>(global3.x, true, !(1256f > global1[_wgslsmith_index_u32(3777u, 15u)])), global3.x));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(~reverseBits(vec2<u32>(1u, 1u))), ~_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), ~vec2<u32>(20113u, 50910u))), 15u)];
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1000f * -2493f), global1[_wgslsmith_index_u32(~0u, 15u)], _wgslsmith_f_op_f32(952f + 969f), -314f) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1[_wgslsmith_index_u32(0u, 15u)], -250f, 1098f, global1[_wgslsmith_index_u32(0u, 15u)]), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1[_wgslsmith_index_u32(3430u, 15u)], 1461f, 1000f, global1[_wgslsmith_index_u32(1u, 15u)]))), all(vec3<bool>(var_0.x, var_0.x, false))))))) - vec4<f32>(1845f, global1[_wgslsmith_index_u32(1u, 15u)], _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(min(~34098u, 4294967295u), 15u)], 810f)), _wgslsmith_f_op_f32(ceil(-348f))));
    var var_3 = Struct_1(var_2.zy);
    var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(firstLeadingBit(1u), 15u)] * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-679f, 256f) + _wgslsmith_f_op_f32(ceil(var_3.a.x)))))));
    let var_4 = -2147483647i;
    let var_5 = _wgslsmith_mod_vec4_i32(reverseBits(_wgslsmith_mod_vec4_i32(~abs(vec4<i32>(0i, 4505i, -37030i, u_input.a)), firstTrailingBit(vec4<i32>(1i, 1i, 1i, 1i)))), vec4<i32>(_wgslsmith_mult_i32(countOneBits(u_input.a), u_input.a), 2879i, abs(i32(-1i) * -21040i), -2952i));
    let var_6 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(789f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1125f)))) + vec2<f32>(-923f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(var_2.x, -367f)), _wgslsmith_f_op_f32(sign(-1356f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<i32>(var_5.x, 2147483647i >> (0u % 32u)), var_5.zw, var_0.x));
}

