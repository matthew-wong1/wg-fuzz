struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec2<u32>,
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = 63112u;
    let var_1 = vec2<bool>(true, true);
    return Struct_1(~(vec3<u32>(abs(u_input.a), var_0 ^ 1u, firstLeadingBit(4294967295u)) << (_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 0u), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, var_0, u_input.c), vec3<u32>(var_0, u_input.a, u_input.c))) % vec3<u32>(32u))), abs(~1i & (_wgslsmith_clamp_i32(u_input.b.x, -2147483647i, -136i) << ((var_0 ^ 33271u) % 32u))), u_input.c);
}

fn func_3() -> u32 {
    return (_wgslsmith_sub_u32(~func_2(true).c, u_input.c) | _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, u_input.c, u_input.c, u_input.a) << (vec4<u32>(0u, 1u, 4294967295u, u_input.c) % vec4<u32>(32u)), vec4<u32>(0u, abs(u_input.a), 1u, max(u_input.a, u_input.a)))) ^ firstTrailingBit(~(~(~24741u)));
}

fn func_1() -> Struct_3 {
    return Struct_3(Struct_2(func_2(false), abs(_wgslsmith_mod_vec2_u32(~vec2<u32>(4294967295u, 0u), vec2<u32>(u_input.c, 1u))), Struct_1(vec3<u32>(4294967295u, func_3(), ~u_input.a), -(u_input.b.x >> (66311u % 32u)), abs(u_input.c))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(-1069f, -155f, -1184f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1854f * -437f), _wgslsmith_f_op_f32(594f - 818f))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -614f)))) * -966f));
    var var_1 = Struct_4(~max(42047u, 1u), func_1(), Struct_1(~firstLeadingBit(~vec3<u32>(23063u, 1223u, u_input.a)), firstTrailingBit(~2147483647i), _wgslsmith_clamp_u32(4294967295u, _wgslsmith_mult_u32(u_input.c, 61760u), _wgslsmith_sub_u32(73698u, u_input.a))));
    let var_2 = Struct_4(~_wgslsmith_dot_vec4_u32(~vec4<u32>(11927u, u_input.c, 0u, 1u), ~vec4<u32>(52965u, var_1.c.a.x, 135333u, u_input.c)) & var_1.c.c, var_1.b, func_2(!(max(u_input.b.x, 0i) <= -9629i)));
    var var_3 = reverseBits(~abs(min(_wgslsmith_sub_u32(4294967295u, u_input.a), func_1().a.b.x)));
    var var_4 = var_1.c.b;
    var_4 = var_1.b.a.a.b;
    var var_5 = ~u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))), var_2.c.b, vec3<u32>(func_3(), 7677u, reverseBits(max(var_2.c.a.x, u_input.a))) & var_2.c.a, vec3<u32>(1u, var_2.a, var_1.c.a.x) & (var_2.c.a & ~var_2.b.a.c.a), ~vec2<u32>((u_input.c ^ 1u) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(35969u, 4294967295u, 40816u), var_1.c.a) % 32u), var_2.a));
}

