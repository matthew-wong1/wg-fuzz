struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: bool,
    d: vec4<f32>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec2<bool>) -> vec4<u32> {
    return vec4<u32>(_wgslsmith_sub_u32(~_wgslsmith_add_u32(abs(u_input.c), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.c, 39124u), vec4<u32>(u_input.c, u_input.c, u_input.a.x, u_input.a.x))), _wgslsmith_dot_vec2_u32(abs(u_input.a ^ vec2<u32>(u_input.c, 4294967295u)), _wgslsmith_mod_vec2_u32(u_input.a << (u_input.a % vec2<u32>(32u)), u_input.a << (vec2<u32>(4294967295u, 19568u) % vec2<u32>(32u))))), firstTrailingBit(u_input.a.x), u_input.c, ~u_input.a.x);
}

fn func_2() -> Struct_5 {
    global1 = vec2<bool>(false, false);
    var var_0 = ~_wgslsmith_mod_vec4_u32(~vec4<u32>(7468u, 38343u, u_input.c, 1590u) << (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.c, u_input.c), vec4<u32>(u_input.a.x, 23156u, 46954u, 14035u)) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(abs(vec4<u32>(4294967295u, u_input.c, 1u, u_input.c)), ~vec4<u32>(4294967295u, u_input.c, 61008u, 10585u))) >> (func_3(!global0.wy) % vec4<u32>(32u));
    var_0 = ~vec4<u32>(~u_input.c, var_0.x, min(~(u_input.c >> (u_input.a.x % 32u)), abs(_wgslsmith_mod_u32(var_0.x, 0u))), ~1u);
    var var_1 = -abs(u_input.b.x);
    global1 = vec2<bool>(global0.x | !global0.x, true);
    return Struct_5(select(select(select(!vec4<bool>(global1.x, true, true, false), !vec4<bool>(global1.x, global0.x, true, false), true), vec4<bool>(true, global0.x || true, false, global1.x & false), select(select(vec4<bool>(false, global1.x, true, global0.x), vec4<bool>(global0.x, global0.x, global1.x, global1.x), global1.x), vec4<bool>(true, global0.x, false, true), !global1.x)), !(!vec4<bool>(true, global0.x, false, global1.x)), global0.x));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: i32) -> vec4<bool> {
    var var_0 = ~u_input.c;
    let var_1 = func_2();
    let var_2 = _wgslsmith_mod_vec4_u32(~(~vec4<u32>(~55973u, u_input.a.x, u_input.c, u_input.c)), vec4<u32>(_wgslsmith_add_u32(0u, 4294967295u), 43250u >> (u_input.c % 32u), ~u_input.a.x, 1u));
    global0 = vec4<bool>(all(!func_2().a), any(func_2().a), false, select(false, global1.x & (global0.x == global1.x), !var_1.a.x));
    var_0 = ~_wgslsmith_mod_u32(0u ^ u_input.c, abs(29355u));
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global0.yw;
    global0 = !vec4<bool>(global0.x, any(func_1(vec3<f32>(-469f, -231f, -757f), Struct_2(vec4<bool>(false, false, false, false), Struct_1(19623i, vec3<bool>(false, true, global1.x)), global1.x, vec4<f32>(1437f, 1287f, 1000f, -703f), u_input.b), -7098i)), true, !(!all(vec4<bool>(true, global1.x, global1.x, true))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-1137f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1684f * 1000f) + -1119f) - _wgslsmith_f_op_f32(step(-649f, _wgslsmith_f_op_f32(max(132f, -181f))))), -358f), vec3<u32>(44362u, u_input.c, ~countOneBits(79780u)), _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(abs(reverseBits(vec4<i32>(u_input.b.x, -1i, -80i, -1i))), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, 13811i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, -1i, 12048i, u_input.b.x), vec4<i32>(0i, -32893i, 38931i, u_input.b.x)), vec4<i32>(u_input.b.x, u_input.b.x, 52971i, u_input.b.x) ^ vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, 0i))), vec4<i32>(u_input.b.x >> (1u % 32u), -u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, 2125i) & vec3<i32>(u_input.b.x, -2049i, u_input.b.x), select(vec3<i32>(u_input.b.x, 83i, u_input.b.x), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), global1.x)), u_input.b.x)));
}

