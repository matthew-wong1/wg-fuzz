struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 17> = array<bool, 17>(true, false, false, true, true, false, false, false, false, false, false, false, false, false, false, true, false);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: Struct_2, arg_3: i32) -> u32 {
    global0 = array<bool, 17>();
    global0 = array<bool, 17>();
    let var_0 = arg_2.a;
    global0 = array<bool, 17>();
    return arg_1;
}

fn func_2() -> u32 {
    var var_0 = vec2<u32>(1u, 4294967295u);
    var_0 = vec2<u32>(func_3(~14273i, abs(57218u), Struct_2(Struct_1(vec4<u32>(10270u, var_0.x, var_0.x, 4294967295u)), var_0.x, Struct_1(vec4<u32>(1u, 1u, var_0.x, 1u)), 0i, var_0.x), 1i) >> (6432u % 32u), ~(~(~var_0.x))) | (vec2<u32>(_wgslsmith_mult_u32(u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.e.x, 25525u, 37297u), vec4<u32>(u_input.a, var_0.x, 1u, u_input.c))), 1u) | vec2<u32>(4294967295u, _wgslsmith_add_u32(u_input.b.x, 1u)));
    var var_1 = ~(-54926i);
    var_1 = -1i;
    var var_2 = u_input.b;
    return ~_wgslsmith_div_u32(max(0u, var_2.x) << (var_2.x % 32u), ~var_2.x) & _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(30699u, 12172u)) | _wgslsmith_div_vec2_u32(countOneBits(u_input.b), ~vec2<u32>(var_0.x, 4294967295u)), vec2<u32>(1u, var_0.x));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>) -> StorageBuffer {
    global0 = array<bool, 17>();
    var var_0 = -1488f;
    global0 = array<bool, 17>();
    var var_1 = Struct_2(arg_0.c, min(~arg_0.a.a.x ^ min(arg_0.c.a.x, _wgslsmith_div_u32(0u, arg_1.x)), arg_0.b), arg_0.a, -2147483647i, ~_wgslsmith_clamp_u32(~arg_1.x >> (arg_1.x % 32u), countOneBits(~u_input.e.x), 16021u));
    var_1 = Struct_2(Struct_1(arg_0.a.a), reverseBits(abs(28782u)), Struct_1(var_1.a.a), reverseBits(u_input.d.x), ~_wgslsmith_dot_vec3_u32(arg_1 & var_1.a.a.zyz, _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(arg_1, vec3<u32>(arg_0.b, 25335u, var_1.b)), arg_0.c.a.xzx, vec3<u32>(12616u, 4294967295u, arg_1.x))));
    return StorageBuffer(vec2<f32>(-1000f, -598f), 0i);
}

fn func_1(arg_0: Struct_1) -> StorageBuffer {
    global0 = array<bool, 17>();
    global0 = array<bool, 17>();
    var var_0 = 0u;
    var_0 = 1u;
    global0 = array<bool, 17>();
    return func_4(Struct_2(arg_0, u_input.e.x >> (reverseBits(select(59961u, arg_0.a.x, false)) % 32u), Struct_1(~arg_0.a), u_input.d.x, func_2()), vec3<u32>(1u, ~_wgslsmith_add_u32(arg_0.a.x, _wgslsmith_dot_vec2_u32(arg_0.a.wy, vec2<u32>(arg_0.a.x, arg_0.a.x))), 21642u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1777f;
    let x = u_input.a;
    s_output = func_1(Struct_1(abs(vec4<u32>(22702u, 1u, _wgslsmith_div_u32(u_input.a, u_input.b.x), 1u))));
}

