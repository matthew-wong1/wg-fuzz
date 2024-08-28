struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: array<vec2<u32>, 17> = array<vec2<u32>, 17>(vec2<u32>(4263u, 34u), vec2<u32>(66619u, 0u), vec2<u32>(21010u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 1u), vec2<u32>(40306u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(18463u, 4294967295u), vec2<u32>(4294967295u, 14497u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(6138u, 3834u), vec2<u32>(38508u, 1078u), vec2<u32>(0u, 33337u), vec2<u32>(1u, 20797u), vec2<u32>(1u, 66160u), vec2<u32>(24189u, 0u), vec2<u32>(0u, 19569u));

var<private> global1: vec2<bool>;

var<private> global2: array<bool, 23> = array<bool, 23>(true, true, true, true, true, true, true, false, false, true, true, true, false, false, true, true, true, false, true, false, false, true, true);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = true;
    global0 = array<vec2<u32>, 17>();
    global2 = array<bool, 23>();
    let var_1 = Struct_1(arg_0.a, arg_0.b, arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1645f)));
    global1 = vec2<bool>(!all(select(select(vec2<bool>(global2[_wgslsmith_index_u32(arg_1.x, 23u)], global1.x), vec2<bool>(var_0, arg_0.b.x), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 23u)], arg_0.b.x)), select(arg_0.b, vec2<bool>(true, false), arg_0.b.x), any(vec2<bool>(global2[_wgslsmith_index_u32(arg_1.x, 23u)], arg_0.b.x)))), false);
    return var_1;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: u32) -> vec4<u32> {
    var var_0 = func_1(func_1(arg_0, arg_1), vec2<u32>(1u, 22324u));
    var var_1 = func_1(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.d), _wgslsmith_div_f32(arg_0.c, 1000f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.a.x + arg_0.d))), 2083f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1919f), _wgslsmith_f_op_f32(f32(-1f) * -1534f)))), vec2<bool>(true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-687f * _wgslsmith_f_op_f32(trunc(-1334f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c - arg_0.d) - -618f)), arg_0.d), vec2<u32>(~u_input.a, u_input.a));
    global0 = array<vec2<u32>, 17>();
    let var_2 = arg_1.x <= 15078u;
    let var_3 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(1i, -1i), -27174i);
    return ~min(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(35833u, arg_1.x, arg_2, u_input.a), vec4<u32>(0u, 45122u, 0u, arg_1.x), vec4<u32>(arg_2, arg_1.x, arg_2, arg_1.x)), vec4<u32>(4294967295u, 5315u, 47092u, 47660u) ^ vec4<u32>(53351u, arg_2, 71310u, 61915u)), (vec4<u32>(0u, u_input.a, 1u, arg_2) & vec4<u32>(1u, 0u, arg_2, u_input.a)) & vec4<u32>(arg_1.x, 0u, 79531u, 0u)), ~vec4<u32>(_wgslsmith_add_u32(12791u, 1u), ~arg_2, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_1.x, 37839u), vec3<u32>(arg_1.x, 21977u, 36496u)), arg_2));
}

fn func_2() -> StorageBuffer {
    var var_0 = global1.x;
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1194f, -715f, _wgslsmith_div_f32(-598f, -1058f), -727f)))), func_1(Struct_1(vec4<f32>(-1503f, _wgslsmith_f_op_f32(step(1022f, -671f)), -820f, 116f), select(select(vec2<bool>(true, false), vec2<bool>(false, global1.x), vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.a, 23u)])), vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.a, 23u)]), !vec2<bool>(false, global1.x)), 121f, _wgslsmith_f_op_f32(step(-180f, -838f))), ~(~vec2<u32>(1420u, 0u))).b, _wgslsmith_f_op_f32(abs(186f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-417f * _wgslsmith_f_op_f32(-179f - 460f)))));
    let var_2 = func_1(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1000f - var_1.d), -879f, -445f, 1f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-380f, 194f, -798f, var_1.d))), vec2<bool>(false, _wgslsmith_f_op_f32(-2081f - -1428f) == _wgslsmith_f_op_f32(-var_1.c)), 281f, _wgslsmith_f_op_f32(f32(-1f) * -2695f)), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, ~u_input.a, 34306u, ~4294967295u), func_3(Struct_1(vec4<f32>(-2154f, -371f, 1000f, -357f), vec2<bool>(global1.x, true), -257f, var_1.a.x), ~vec2<u32>(u_input.a, 625u), 26862u)), func_3(Struct_1(vec4<f32>(714f, -854f, -473f, -595f), var_1.b, _wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(var_1.d + -144f)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, 7613u, u_input.a, 28374u), vec4<u32>(26129u, u_input.a, u_input.a, 1u) & vec4<u32>(u_input.a, 18610u, u_input.a, u_input.a)), 17u)], u_input.a).x), 17u)]);
    global0 = array<vec2<u32>, 17>();
    let var_3 = ~_wgslsmith_sub_u32(abs(select(~23606u, ~u_input.a, true)), firstTrailingBit(~u_input.a & ~u_input.a));
    return StorageBuffer(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(~0i, reverseBits(-63282i)), vec2<i32>(2147483647i, -1i)), ~vec2<i32>(1i, -1i)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 23>();
    global1 = vec2<bool>(select(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, max(u_input.a, 1u)), 23u)] && (abs(0u) >= _wgslsmith_sub_u32(u_input.a, u_input.a)), false, true), false);
    let var_0 = !vec4<bool>(all(!select(vec3<bool>(global2[_wgslsmith_index_u32(1u, 23u)], global2[_wgslsmith_index_u32(1u, 23u)], false), vec3<bool>(global1.x, true, true), vec3<bool>(global1.x, true, true))), true, any(!(!vec3<bool>(true, false, global1.x))), true);
    var var_1 = func_1(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -421f) - _wgslsmith_f_op_f32(f32(-1f) * -1431f)), -607f, -1079f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(555f - -1060f), -1487f)), var_0.yz, 187f, 1000f), ~vec2<u32>(~(~0u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(47102u, 1u))));
    let var_2 = !var_0.x;
    var var_3 = var_2;
    global0 = array<vec2<u32>, 17>();
    var var_4 = var_1.c;
    let x = u_input.a;
    s_output = func_2();
}

