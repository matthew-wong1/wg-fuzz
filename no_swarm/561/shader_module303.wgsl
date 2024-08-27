struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(501f));

var<private> global2: array<vec3<f32>, 26>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
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

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-625f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1137f * arg_1.a))))));
    var var_1 = _wgslsmith_dot_vec2_i32(u_input.d, u_input.d);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var var_3 = ~firstTrailingBit(vec4<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, 1u), arg_0.xz) & ~7640u, 33222u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, u_input.a), vec2<u32>(79120u, 7839u))));
    var var_4 = _wgslsmith_f_op_f32(var_2.a + _wgslsmith_f_op_f32(-var_2.a));
    return vec2<bool>(false, true);
}

fn func_2() -> u32 {
    global0 = all(select(!select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec3<bool>(false | all(vec3<bool>(true, true, false)), all(func_3(u_input.b, global1[_wgslsmith_index_u32(0u, 1u)])), true), true));
    var var_0 = u_input.b.x;
    global0 = any(select(vec2<bool>(true, true), vec2<bool>(false, true != func_3(u_input.b, global1[_wgslsmith_index_u32(540u, 1u)]).x), all(vec4<bool>(true, true, 30509u < u_input.b.x, false))));
    let var_1 = global1[_wgslsmith_index_u32(~u_input.b.x, 1u)];
    let var_2 = Struct_1(-833f);
    return u_input.b.x;
}

fn func_4(arg_0: f32) -> vec2<u32> {
    global0 = any(vec2<bool>(-2147483647i == min(-u_input.d.x, u_input.c), false));
    var var_0 = Struct_1(1f);
    let var_1 = 50311i;
    let var_2 = global1[_wgslsmith_index_u32(~(~(~u_input.b.x)), 1u)];
    return _wgslsmith_mult_vec2_u32(max(vec2<u32>(7025u, ~(~13258u)), ~vec2<u32>(~u_input.a, u_input.a)), vec2<u32>(u_input.a, u_input.b.x) ^ u_input.b.xz);
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-904f - 1496f) * 364f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(868f + 1011f)), ~u_input.b.x >= func_2())), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -538f), -977f)))));
    global1 = array<Struct_1, 1>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(590f))) + _wgslsmith_f_op_f32(f32(-1f) * -687f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1019f + -1142f) + _wgslsmith_f_op_f32(floor(-1169f)))));
    var_1 = Struct_1(var_1.a);
    let var_2 = u_input.b.zz;
    return Struct_1(-1000f);
}

fn func_5(arg_0: vec4<u32>, arg_1: bool, arg_2: vec4<i32>, arg_3: Struct_1) -> u32 {
    global1 = array<Struct_1, 1>();
    global2 = array<vec3<f32>, 26>();
    global0 = all(!(!select(select(vec4<bool>(false, arg_1, arg_1, arg_1), vec4<bool>(false, true, arg_1, false), vec4<bool>(false, arg_1, arg_1, false)), select(vec4<bool>(arg_1, true, true, false), vec4<bool>(true, true, arg_1, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, arg_1, arg_1, arg_1))));
    global1 = array<Struct_1, 1>();
    let var_0 = func_1();
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(u_input.a, 1u)];
    global2 = array<vec3<f32>, 26>();
    let var_1 = 16312u;
    let var_2 = firstLeadingBit(~vec3<u32>(u_input.a, firstLeadingBit(18108u), 1768u));
    global2 = array<vec3<f32>, 26>();
    global2 = array<vec3<f32>, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(func_5(min(~vec4<u32>(0u, 4294967295u, 29224u, var_2.x), max(~vec4<u32>(0u, 34427u, 22393u, 4294967295u), ~vec4<u32>(u_input.b.x, var_2.x, var_1, var_2.x))), all(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true))), -vec4<i32>(-u_input.c, countOneBits(-1i), firstTrailingBit(u_input.c), abs(u_input.d.x)), func_1()), u_input.b.yx);
}

