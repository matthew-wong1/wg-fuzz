struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-1i, -16026i, 0i, 0i);

var<private> global1: Struct_3;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool) -> u32 {
    var var_0 = global1.a;
    var_0 = !select(global1.a, vec2<bool>(true, true), all(!(!vec3<bool>(true, var_0.x, true))));
    var_0 = global1.a;
    var var_1 = u_input.b.x;
    let var_2 = u_input.a.x;
    return ~u_input.a.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: f32) -> i32 {
    let var_0 = 689f;
    let var_1 = true;
    let var_2 = _wgslsmith_mod_u32(_wgslsmith_div_u32(func_3(global1.a.x), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.a.x, u_input.b.x), ~27031u, ~u_input.b.x), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, 1u), vec2<u32>(u_input.a.x, 2581u) ^ u_input.a.xz))), u_input.a.x);
    let var_3 = false;
    let var_4 = Struct_2(abs(-(~(arg_0.x << (var_2 % 32u)))), Struct_1(var_2, _wgslsmith_add_i32(_wgslsmith_add_i32(global0.x, global0.x) ^ -global0.x, ~select(-2490i, 170i, var_1)), global0.xzz, var_1));
    return -_wgslsmith_mult_i32(-1i, _wgslsmith_add_i32(-5336i, firstTrailingBit(~(-1i))));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: vec2<i32>) -> StorageBuffer {
    global0 = vec4<i32>(-_wgslsmith_add_i32(arg_2.b.c.x, -global0.x), arg_3.x, global0.x, -1i);
    global0 = vec4<i32>(~(~func_2(arg_0, _wgslsmith_f_op_f32(min(1639f, -1514f)))), ~(~arg_2.a << (min(abs(10607u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 57218u, arg_1.x), arg_1)) % 32u)), _wgslsmith_div_i32(arg_2.a, -(~abs(1i))), -30955i);
    return StorageBuffer(_wgslsmith_add_u32(30426u, arg_1.x), 1294f, -(~(~vec4<i32>(0i, 0i, arg_0.x, arg_0.x))) >> (vec4<u32>(abs(~1u), _wgslsmith_add_u32(min(arg_1.x, arg_1.x), 4294967295u), ~abs(0u), 0u) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 47399u;
    let x = u_input.a;
    s_output = func_1(reverseBits(vec3<i32>(i32(-1i) * -1i, global0.x, global0.x)), _wgslsmith_mod_vec4_u32(~(~vec4<u32>(16271u, u_input.b.x, 98851u, var_0)), abs(vec4<u32>(u_input.a.x, 7781u, 1u, var_0))) & ~vec4<u32>(4294967295u & var_0, 1u, ~0u, ~var_0), Struct_2(_wgslsmith_mod_i32(1i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(-6972i, global0.x, global0.x, 1i), vec4<i32>(global0.x, global0.x, global0.x, 4740i))), Struct_1(var_0, -11326i, vec3<i32>(global0.x >> (var_0 % 32u), 0i, -45901i << (var_0 % 32u)), true)), global0.zz);
}

