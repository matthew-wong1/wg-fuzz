struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: vec2<i32>,
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(~(~vec2<u32>(_wgslsmith_sub_u32(u_input.c, u_input.c), select(36275u, 1u, false))));
    return Struct_1(vec2<u32>(~_wgslsmith_add_u32(~30556u, reverseBits(var_0.a.x)), u_input.c));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: bool) -> u32 {
    var var_0 = func_2();
    var var_1 = func_2();
    var_1 = Struct_1(vec2<u32>(~61636u, _wgslsmith_add_u32(arg_0, 95194u)) & (vec2<u32>(25423u, var_0.a.x) & vec2<u32>(u_input.c, ~arg_0)));
    var_0 = Struct_1(~(~firstTrailingBit(~var_1.a)));
    var var_2 = ~firstTrailingBit(vec3<u32>(u_input.c, max(u_input.c, _wgslsmith_sub_u32(arg_0, arg_0)), 94406u));
    return ~(~_wgslsmith_sub_u32(~u_input.c, 1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u;
    var_0 = firstLeadingBit(1u);
    var_0 = 0u;
    var_0 = abs(4294967295u);
    var var_1 = true;
    let var_2 = func_1(~(~(~34265u & u_input.c)), 0i & countOneBits(u_input.e.x), (u_input.c > _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 40368u), select(vec2<u32>(37457u, u_input.c), vec2<u32>(u_input.c, 1u), false))) | all(vec2<bool>(any(vec2<bool>(false, true)), true)));
    var_1 = false;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(~u_input.a.xwy, ~vec3<i32>(u_input.a.x, 0i, u_input.e.x)), -u_input.a.x));
}

