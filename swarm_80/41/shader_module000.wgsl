struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(58787u, 0u, 4294967295u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: u32) -> f32 {
    let var_0 = arg_1;
    var var_1 = true;
    var_1 = false;
    var var_2 = ~_wgslsmith_div_vec3_u32(vec3<u32>(79234u, _wgslsmith_mult_u32(1u, 1u), select(_wgslsmith_dot_vec3_u32(vec3<u32>(66318u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, arg_2, global0.x)), arg_2, select(arg_1.a.x, false, arg_1.a.x))), arg_1.b);
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -315f) + -620f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(708f))), 1292f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2924f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1431f)) + 537f)));
}

fn func_3() -> vec3<u32> {
    return vec3<u32>(u_input.a.x, 0u, ~global0.x);
}

fn func_2() -> vec4<u32> {
    global0 = u_input.a | _wgslsmith_sub_vec3_u32(func_3(), _wgslsmith_add_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, reverseBits(4294967295u), _wgslsmith_mult_u32(0u, u_input.b))));
    let var_0 = Struct_1(select(!select(select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(true, true), true), vec2<bool>(true, true), true), ~(~(~vec3<u32>(1u, 4294967295u, global0.x))) >> (vec3<u32>(max(55631u, u_input.b), ~6403u, min(u_input.a.x, _wgslsmith_add_u32(u_input.a.x, global0.x))) % vec3<u32>(32u)));
    global0 = var_0.b;
    var var_1 = var_0;
    let var_2 = ~vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -u_input.c), -vec2<i32>(10262i, u_input.c)), 31490i, ~u_input.c);
    return vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(60099u, var_1.b.x), var_1.b.zz), 1u, var_1.b.x, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.a << (~(vec3<u32>(~u_input.b, firstTrailingBit(36173u), _wgslsmith_add_u32(u_input.b, u_input.a.x)) >> (vec3<u32>(52154u, 23909u, u_input.b) % vec3<u32>(32u))) % vec3<u32>(32u));
    global0 = vec3<u32>(_wgslsmith_mult_u32(max(firstTrailingBit(_wgslsmith_dot_vec2_u32(u_input.a.yx, vec2<u32>(4294967295u, global0.x))), reverseBits(global0.x)), 38005u), global0.x, u_input.a.x);
    let var_0 = vec2<i32>(u_input.c, u_input.c);
    var var_1 = true;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(900f + -1233f))), -203f, all(vec3<bool>(false, false, true)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-574f, _wgslsmith_f_op_f32(func_1(vec4<bool>(true, true, true, false), Struct_1(vec2<bool>(true, false), u_input.a), u_input.a.x))))) - _wgslsmith_f_op_f32(-1052f + _wgslsmith_f_op_f32(floor(-1167f)))), 413f);
    var var_3 = ~_wgslsmith_dot_vec4_u32(~func_2(), vec4<u32>(global0.x, ~1u, countOneBits(103337u & global0.x), select(_wgslsmith_mod_u32(32867u, 8076u), global0.x << (0u % 32u), select(false, true, true))));
    let var_4 = global0.yx;
    global0 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(max(firstLeadingBit(u_input.c), -2147483647i), u_input.c, min(abs(vec4<u32>(global0.x, 1u, 269u, u_input.b) ^ ~vec4<u32>(u_input.b, var_4.x, u_input.a.x, global0.x)), max(vec4<u32>(~u_input.a.x, ~var_4.x, 1u, 0u), max(vec4<u32>(global0.x, global0.x, global0.x, global0.x) << (vec4<u32>(0u, u_input.b, 0u, 1u) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_4.x, var_4.x, 788u, 4294967295u), vec4<u32>(1u, u_input.a.x, 1u, global0.x), vec4<u32>(u_input.b, 644u, 11453u, var_4.x))))), _wgslsmith_mod_i32(-6604i, _wgslsmith_div_i32(2147483647i, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c, -19235i, 2147483647i, var_0.x), abs(vec4<i32>(u_input.c, 0i, 26214i, u_input.c))))), var_2);
}

