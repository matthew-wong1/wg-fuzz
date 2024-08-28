struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: i32,
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

var<private> global0: array<vec2<i32>, 2>;

var<private> global1: Struct_2 = Struct_2(false, -1000f);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool) -> f32 {
    let var_0 = vec4<f32>(1843f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.b)) * _wgslsmith_f_op_f32(step(global1.b, 1716f)))))), -1422f, 795f);
    let var_1 = Struct_2(global1.a, var_0.x);
    var var_2 = Struct_2(arg_0, -576f);
    var var_3 = any(select(!(!vec4<bool>(var_1.a, false, false, true)), select(vec4<bool>(var_1.a | var_1.a, arg_0 | false, var_2.a, any(vec2<bool>(global1.a, false))), select(!vec4<bool>(var_2.a, true, true, arg_0), !vec4<bool>(global1.a, var_2.a, arg_0, false), all(vec2<bool>(false, global1.a))), true), !select(select(vec4<bool>(var_2.a, false, true, true), vec4<bool>(global1.a, var_1.a, arg_0, false), false), vec4<bool>(true, true, arg_0, true), select(vec4<bool>(global1.a, true, var_2.a, false), vec4<bool>(arg_0, true, true, false), global1.a))));
    global0 = array<vec2<i32>, 2>();
    return 172f;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: i32) -> u32 {
    var var_0 = vec2<u32>(u_input.c.x, 1u | (u_input.a & ~_wgslsmith_add_u32(u_input.a, u_input.a)));
    let var_1 = 1000f > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(!global1.a))));
    let var_2 = Struct_1(_wgslsmith_mult_u32(~_wgslsmith_add_u32(var_0.x << (u_input.c.x % 32u), 4294967295u), 6180u));
    global0 = array<vec2<i32>, 2>();
    let var_3 = var_1;
    return countOneBits(_wgslsmith_add_u32(var_2.a, min(countOneBits(var_0.x), _wgslsmith_clamp_u32(~1u, 37566u, select(u_input.b, 43552u, false)))));
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    global1 = Struct_2(false, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(560f * _wgslsmith_f_op_f32(step(global1.b, 898f))))))));
    return Struct_2(all(vec2<bool>(any(select(vec4<bool>(global1.a, true, true, false), vec4<bool>(global1.a, false, true, global1.a), global1.a)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(773f - -371f))) - _wgslsmith_f_op_f32(global1.b - global1.b)));
}

fn func_1(arg_0: vec4<i32>) -> Struct_2 {
    global0 = array<vec2<i32>, 2>();
    var var_0 = -2147483647i & arg_0.x;
    global0 = array<vec2<i32>, 2>();
    let var_1 = max(~arg_0.x, select(_wgslsmith_dot_vec3_i32(max(vec3<i32>(-829i, -2147483647i, -2147483647i), arg_0.wwx), vec3<i32>(2147483647i, u_input.d, 1i)), -2147483647i, true) << (_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(u_input.c, vec4<u32>(u_input.b, u_input.a, 4294967295u, 4294967295u)), vec4<u32>(57369u, u_input.a, 1u, 4294967295u), abs(u_input.c)), abs(vec4<u32>(u_input.b, 0u, u_input.c.x, u_input.c.x))) % 32u));
    global1 = Struct_2(global1.a, 422f);
    return func_4(Struct_1(func_2(abs(vec2<i32>(u_input.d, 2147483647i)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, global1.a)), 1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    global1 = Struct_2(false, global1.b);
    let var_1 = func_1(firstLeadingBit(vec4<i32>(2147483647i, -_wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(var_0.x, 2u)], vec2<i32>(-9408i, 25372i)), countOneBits(reverseBits(2147483647i)), 1i)));
    global1 = Struct_2(global1.a, 2376f);
    global0 = array<vec2<i32>, 2>();
    var var_2 = select(vec4<bool>(!global1.a, global1.a, false, global1.a), select(vec4<bool>(true, all(select(vec3<bool>(true, global1.a, var_1.a), vec3<bool>(var_1.a, false, var_1.a), true)), !(-2147483647i < u_input.d), global1.a), select(!vec4<bool>(true, false, global1.a, var_1.a), !select(vec4<bool>(global1.a, var_1.a, var_1.a, true), vec4<bool>(global1.a, true, global1.a, var_1.a), global1.a), true), func_4(Struct_1(~u_input.c.x)).a), true);
    var var_3 = 0u;
    var_2 = vec4<bool>(var_1.a, any(vec4<bool>(func_4(Struct_1(u_input.a)).a, select(false, func_1(vec4<i32>(1i, 1i, 30174i, u_input.d)).a, true), var_2.x, false)), true, 244f < var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1415f, 1685f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b, global1.b) - vec2<f32>(400f, -1142f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(296f, -889f)), select(vec2<bool>(false, true), var_2.wz, vec2<bool>(var_1.a, var_1.a)))))));
}

