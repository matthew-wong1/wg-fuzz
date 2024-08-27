struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec2<i32>(47814i, 17887i), vec3<i32>(-20975i, 20118i, -1i), vec2<f32>(-1832f, 1000f), vec2<i32>(2494i, 41551i)));

var<private> global1: u32;

var<private> global2: Struct_1;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> u32 {
    var var_0 = vec3<f32>(-647f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(339f * global2.c.x)), global2.c.x, select(true, true, true)))), global2.c.x);
    var var_1 = u_input.c;
    let var_2 = -global2.a.x;
    var var_3 = 254f;
    var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -263f), _wgslsmith_f_op_f32(var_0.x * 1570f), _wgslsmith_f_op_f32(-global2.c.x)))))));
    return reverseBits(_wgslsmith_add_u32(~abs(~0u), ~4294967295u));
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_add_i32(~arg_1.a.x ^ (-(~2147483647i) | u_input.a), select(-9036i, u_input.a, all(vec4<bool>(true, true, true, true)) & false));
    var var_1 = arg_1;
    global1 = func_3();
    global0 = array<Struct_1, 1>();
    let var_2 = abs(30550u) >> (u_input.b % 32u);
    return global0[_wgslsmith_index_u32(var_2, 1u)];
}

fn func_1() -> Struct_1 {
    let var_0 = func_2(~(~1u), global0[_wgslsmith_index_u32(1u, 1u)]);
    global0 = array<Struct_1, 1>();
    var var_1 = 13501u;
    global1 = 4294967295u;
    let var_2 = ~firstLeadingBit(4294967295u);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global0[_wgslsmith_index_u32(~(~u_input.b), 1u)];
    global2 = func_1();
    let var_0 = abs(vec2<u32>(~_wgslsmith_add_u32(58599u, 628u), _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, u_input.b), vec2<u32>(u_input.b, 51306u)))) | vec2<u32>(1u, u_input.b);
    global2 = func_1();
    let var_1 = 0u;
    global2 = global0[_wgslsmith_index_u32(u_input.b, 1u)];
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_sub_vec3_u32(~(~vec3<u32>(u_input.c, var_0.x, 0u)), max(~vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(var_0.x, var_0.x, u_input.c)))), u_input.a);
}

