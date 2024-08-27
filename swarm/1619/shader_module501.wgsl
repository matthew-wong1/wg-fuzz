struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: f32, arg_2: u32) -> vec3<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -419f)), _wgslsmith_add_i32(~_wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.a, u_input.a), i32(-1i) * -1i), _wgslsmith_dot_vec2_i32(countOneBits(u_input.b) ^ u_input.b, vec2<i32>(u_input.c, u_input.b.x) & u_input.b)), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(arg_2, arg_2, global0.x, 0u), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_2, global0.x, global0.x, 38220u), vec4<u32>(global0.x, 48066u, global0.x, 1u))), reverseBits(vec4<u32>(41086u, 4294967295u, 17452u, arg_2))) ^ ~vec4<u32>(~20511u, global0.x, 1u, 1u));
    var var_1 = any(vec2<bool>(all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false))), any(select(vec4<bool>(false, false, false, false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), false), vec4<bool>(true, false, false, true)))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -205f), ~abs(var_0.b), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(~_wgslsmith_mod_vec4_u32(var_0.c, var_0.c), var_0.c), vec4<u32>(global0.x, _wgslsmith_dot_vec4_u32(abs(var_0.c), abs(vec4<u32>(4294967295u, 4294967295u, var_0.c.x, 32947u))), _wgslsmith_clamp_u32(abs(29423u), 1295u, _wgslsmith_dot_vec4_u32(var_0.c, vec4<u32>(arg_2, var_0.c.x, arg_2, var_0.c.x))), 0u)));
    global0 = var_0.c.zy;
    var_0 = Struct_1(-378f, countOneBits(var_0.b ^ 1i) << (1u % 32u), var_0.c);
    return abs(~(~vec3<u32>(arg_2, var_0.c.x >> (global0.x % 32u), global0.x)));
}

fn func_2(arg_0: bool, arg_1: bool) -> i32 {
    var var_0 = ~(~(~(~abs(vec3<u32>(0u, global0.x, 1u)))));
    var_0 = (vec3<u32>(4294967295u, 0u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, global0.x), vec4<u32>(var_0.x, var_0.x, var_0.x, global0.x)), ~1u) | vec3<u32>(abs(global0.x), ~countOneBits(global0.x), abs(4294967295u))) ^ (_wgslsmith_add_vec3_u32(~vec3<u32>(var_0.x, 1u, 75696u), vec3<u32>(global0.x, 4294967295u, 1u) ^ reverseBits(vec3<u32>(16923u, 0u, global0.x))) >> (~firstLeadingBit(min(vec3<u32>(global0.x, 4294967295u, 61432u), vec3<u32>(var_0.x, var_0.x, global0.x))) % vec3<u32>(32u)));
    let var_1 = all(vec2<bool>(arg_1, arg_1));
    global0 = _wgslsmith_mult_vec2_u32(vec2<u32>(var_0.x, ~5736u), abs(var_0.zx));
    var_0 = func_3(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2240f, -123f, 1282f), vec3<f32>(294f, 539f, 820f), vec3<bool>(false, var_1, var_1)))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-252f + -149f)), -1687f)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-806f))))), ~(~firstTrailingBit(4294967295u)) & 80798u);
    return u_input.a;
}

fn func_1() -> u32 {
    var var_0 = vec2<bool>(any(vec4<bool>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global0.x), vec2<u32>(global0.x, global0.x)) > 1u, true, false, true)), true);
    var var_1 = -u_input.b;
    global0 = abs(reverseBits(~vec2<u32>(global0.x, abs(global0.x))));
    var_1 = -min(u_input.b << ((vec2<u32>(1u, 46254u) ^ max(vec2<u32>(global0.x, 13080u), vec2<u32>(global0.x, 30113u))) % vec2<u32>(32u)), vec2<i32>(func_2(true, var_0.x) << (~global0.x % 32u), ~7683i | u_input.c));
    var_0 = select(vec2<bool>(var_0.x, any(select(vec3<bool>(false, var_0.x, false), !vec3<bool>(true, false, var_0.x), !vec3<bool>(var_0.x, var_0.x, true)))), vec2<bool>(var_0.x, any(select(select(vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, var_0.x)), vec2<bool>(var_0.x, false), false & var_0.x))), !(var_1.x > (var_1.x ^ -var_1.x)));
    return ~global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = firstLeadingBit(firstTrailingBit(vec2<u32>(_wgslsmith_mult_u32(global0.x, global0.x), func_1())));
    global0 = vec2<u32>(firstTrailingBit(firstTrailingBit(13084u)) >> (4294967295u % 32u), ~_wgslsmith_div_u32(~(global0.x ^ global0.x), global0.x));
    global0 = ~_wgslsmith_mod_vec2_u32(select(select(_wgslsmith_clamp_vec2_u32(vec2<u32>(41100u, 2303u), vec2<u32>(global0.x, 4294967295u), vec2<u32>(global0.x, global0.x)), ~vec2<u32>(global0.x, 1u), select(vec2<bool>(true, false), vec2<bool>(true, true), true)), ~(~vec2<u32>(65191u, 4294967295u)), any(vec3<bool>(true, false, true))), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 4294967295u), vec2<u32>(global0.x, 0u)), ~global0.x) & _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(global0.x, 65478u)), vec2<u32>(global0.x, 51605u)));
    let var_0 = ~1u;
    let var_1 = 10159u;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -714f)), _wgslsmith_sub_i32(u_input.b.x, ~0i), vec4<u32>(var_0, var_1 | ~global0.x, ~(~countOneBits(global0.x)), global0.x));
    var var_3 = select(reverseBits(var_2.b), -14131i, !(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(var_2.c.xz, vec2<u32>(4294967295u, 2377u)), global0.x) >= _wgslsmith_add_u32(abs(654u), global0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(min(-u_input.c, -2147483647i), vec2<i32>(-39643i, ~(-20152i) & ~(1i ^ var_2.b)), reverseBits(vec2<u32>(49287u, var_1)), _wgslsmith_mod_vec2_u32(~(~vec2<u32>(var_2.c.x, var_2.c.x)) ^ (var_2.c.yz << (vec2<u32>(var_2.c.x, var_0) % vec2<u32>(32u))), ~max(var_2.c.yx, ~vec2<u32>(0u, var_0))));
}

