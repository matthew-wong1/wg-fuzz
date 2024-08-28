struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27>;

var<private> global1: array<i32, 7>;

var<private> global2: array<Struct_1, 21>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: vec3<u32>) -> vec4<u32> {
    let var_0 = global0[_wgslsmith_index_u32(arg_2.x, 27u)];
    let var_1 = firstTrailingBit(u_input.c.yy);
    global1 = array<i32, 7>();
    var var_2 = global0[_wgslsmith_index_u32(5688u, 27u)];
    var var_3 = any(vec3<bool>(!var_2.b.b, var_2.b.b, !all(vec4<bool>(arg_0.b.b, false, false, false))));
    return var_0.a;
}

fn func_2(arg_0: bool) -> Struct_2 {
    let var_0 = u_input.d.yz;
    return global0[_wgslsmith_index_u32(~(~var_0.x), 27u)];
}

fn func_3(arg_0: u32, arg_1: vec2<bool>, arg_2: vec3<bool>, arg_3: Struct_2) -> bool {
    let var_0 = 93924u;
    var var_1 = select(~vec2<u32>(select(0u, ~var_0, any(vec3<bool>(arg_1.x, true, arg_3.b.b))), min(1u, 4294967295u) & _wgslsmith_add_u32(var_0, 31720u)), arg_3.b.a.zy, select(arg_1, arg_1, all(!(!arg_2))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-184f, 806f, -156f, -1083f)))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-2618f, -214f, -624f, -842f)))))) + vec4<f32>(1f, 1f, 1f, 1f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(778f, 1177f, 740f, -1440f)))))));
    let var_3 = 1326f;
    let var_4 = arg_1.x;
    return !arg_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.b, 129843u, u_input.d.x, u_input.d.x)), select(~u_input.d | vec4<u32>(1u, u_input.b, 23689u, u_input.d.x), ~func_1(Struct_3(vec3<f32>(-815f, -1623f, 905f), global2[_wgslsmith_index_u32(u_input.b, 21u)], global2[_wgslsmith_index_u32(44522u, 21u)]), vec2<f32>(-1625f, -555f), vec3<u32>(5917u, u_input.b, 938u)), true));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -596f);
    let var_2 = true;
    var var_3 = func_3(u_input.b, select(vec2<bool>(var_2, false & var_2), !vec2<bool>(select(false, var_2, var_2), var_2), select(!(!vec2<bool>(var_2, var_2)), vec2<bool>(!var_2, true), !(!vec2<bool>(var_2, var_2)))), !(!(!vec3<bool>(var_2, false, var_2))), func_2(var_2));
    var var_4 = vec2<bool>(select(true, var_2, any(select(select(vec2<bool>(false, false), vec2<bool>(var_2, var_2), true), !vec2<bool>(true, var_2), func_2(true).b.b))), global1[_wgslsmith_index_u32(0u, 7u)] >= -_wgslsmith_mult_i32(1i, 1i));
    let var_5 = Struct_1(u_input.d.xxx | select(u_input.d.yzw, ~vec3<u32>(u_input.b, 58768u, u_input.b), vec3<bool>(u_input.c.x <= u_input.a, var_2, true)), !all(!select(vec4<bool>(false, var_4.x, var_4.x, var_4.x), vec4<bool>(var_2, false, var_4.x, true), var_2)), ~(vec2<i32>(-1i) * -(vec2<i32>(38083i, u_input.c.x) << (u_input.d.zy % vec2<u32>(32u)))));
    var var_6 = _wgslsmith_div_u32(~u_input.d.x, var_5.a.x);
    let var_7 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(abs(1f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1291f * 887f), _wgslsmith_f_op_f32(769f * -114f), true)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-1353f)), 2098f))), func_2(true).b, global2[_wgslsmith_index_u32(u_input.d.x, 21u)]);
    var var_8 = global2[_wgslsmith_index_u32(u_input.b, 21u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_7.a.x, -vec4<i32>(-1i, global1[_wgslsmith_index_u32(~1u, 7u)], -19613i, ~(-47121i) | _wgslsmith_div_i32(global1[_wgslsmith_index_u32(53826u, 7u)], -32813i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(986f)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(1866f, 1390f))))))));
}

