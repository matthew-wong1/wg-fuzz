struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec3<i32>, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = arg_2;
    let var_1 = 10795u;
    var_0 = arg_2;
    let var_2 = !(_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.x)))) != _wgslsmith_f_op_f32(arg_1.x - arg_1.x));
    var_0 = vec3<i32>(var_0.x, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(-1i) * -arg_2.yz), arg_0.a), var_0.x);
    return Struct_1(firstTrailingBit(arg_0.a));
}

fn func_3(arg_0: bool, arg_1: vec2<bool>, arg_2: f32, arg_3: Struct_1) -> i32 {
    return 41505i;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec4<i32>) -> i32 {
    let var_0 = -514f;
    return _wgslsmith_clamp_i32(reverseBits(-arg_0.a.x), func_3(true, vec2<bool>(true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1592f)), func_2(arg_0, vec3<f32>(var_0, -678f, 1004f), vec3<i32>(-1i, u_input.b, 0i), vec3<bool>(false, false, false))), _wgslsmith_clamp_i32(1i, arg_2.x >> (arg_1.x % 32u), 0i | arg_0.a.x) ^ func_3(true, select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), -1000f, func_2(arg_0, vec3<f32>(var_0, 578f, var_0), vec3<i32>(arg_0.a.x, arg_0.a.x, 0i), vec3<bool>(true, false, true)))) | 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec4_u32(vec4<u32>(~4294967295u, ~(u_input.c.x | _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 4294967295u, 5423u, 0u), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x))), ~(u_input.c.x & 4294967295u) ^ _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, u_input.c.x), vec3<u32>(1u, 0u, 87719u)), 1u), _wgslsmith_div_u32(~u_input.c.x, firstLeadingBit(u_input.c.x))), ~countOneBits(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.c.x, 54741u, 43678u, 0u), ~vec4<u32>(u_input.c.x, 29013u, u_input.c.x, 20u))));
    let var_1 = max(vec2<u32>(6429u, ~(~u_input.c.x)), ~u_input.c.zy);
    var_0 = vec4<u32>(_wgslsmith_add_u32(var_0.x, 1u), _wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.c.x, ~var_0.x), 29213u), ~4294967295u, ~5768u) ^ vec4<u32>(var_0.x, u_input.c.x, _wgslsmith_mod_u32(~min(4294967295u, u_input.c.x), ~(~var_1.x)), u_input.c.x);
    var_0 = _wgslsmith_add_vec4_u32(~vec4<u32>(~(~u_input.c.x), 1u, _wgslsmith_add_u32(~141847u, u_input.c.x & u_input.c.x), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(var_1.x, 1u, 0u), _wgslsmith_sub_u32(var_1.x, u_input.c.x), var_0.x)), _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.c.x, 1u, 9945u, 0u), max(vec4<u32>(u_input.c.x, u_input.c.x, 45570u, 0u), firstLeadingBit(vec4<u32>(4294967295u, 4294967295u, 21732u, 0u)))) ^ vec4<u32>(0u ^ _wgslsmith_mult_u32(var_0.x, var_0.x), u_input.c.x, var_0.x, _wgslsmith_mult_u32(var_1.x, var_1.x) << (~2610u % 32u)));
    let var_2 = Struct_1(~vec2<i32>(u_input.a, _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a, -1i, -1i, u_input.a), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, -2147483647i, 2147483647i, 36497i), vec4<i32>(2147483647i, 14065i, 10694i, u_input.a)))));
    var var_3 = max(firstLeadingBit(1i) | firstLeadingBit(-func_1(Struct_1(var_2.a), vec3<u32>(19232u, var_1.x, u_input.c.x), vec4<i32>(u_input.a, -1i, var_2.a.x, var_2.a.x))), -(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, var_2.a.x, var_2.a.x), vec3<i32>(0i, u_input.b, u_input.a) & vec3<i32>(26132i, -2147483647i, var_2.a.x)) >> (var_1.x % 32u)));
    var var_4 = var_2;
    var var_5 = 346f;
    let var_6 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec2<u32>(abs(0u << (u_input.c.x % 32u)), 81385u)), _wgslsmith_sub_i32(30240i, -select(var_4.a.x, var_2.a.x, all(vec3<bool>(false, false, false)))), ~(~2147483647i));
}

