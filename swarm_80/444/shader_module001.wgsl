struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: Struct_2 = Struct_2(vec3<u32>(75311u, 54845u, 1u), Struct_1(vec4<u32>(0u, 29787u, 1u, 23595u), -1i, 2147483647i, vec3<u32>(21579u, 2526u, 0u)), false, Struct_1(vec4<u32>(1u, 0u, 15400u, 24255u), 2147483647i, -46471i, vec3<u32>(0u, 13759u, 1u)));

var<private> global1: array<vec3<f32>, 11> = array<vec3<f32>, 11>(vec3<f32>(154f, 585f, 127f), vec3<f32>(-737f, -107f, -150f), vec3<f32>(241f, -610f, -442f), vec3<f32>(1233f, 1034f, -2264f), vec3<f32>(-311f, 2490f, -559f), vec3<f32>(-948f, 656f, -2102f), vec3<f32>(898f, -479f, -1688f), vec3<f32>(704f, 1787f, 1165f), vec3<f32>(-682f, -1422f, 1557f), vec3<f32>(1629f, 672f, -694f), vec3<f32>(361f, -1473f, 1000f));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_1() -> Struct_1 {
    return global0.d;
}

fn func_3() -> Struct_1 {
    let var_0 = global0.c;
    let var_1 = vec3<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(global0.d.a.x, ~global0.d.a.x), 0u), min(~52410u, _wgslsmith_clamp_u32(firstTrailingBit(global0.a.x), 74104u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, global0.a.x)))), u_input.a) ^ ~(~_wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(u_input.a, 35671u, 34244u)), _wgslsmith_mod_vec3_u32(vec3<u32>(67067u, 83931u, u_input.a), global0.b.a.wzx)));
    global1 = array<vec3<f32>, 11>();
    let var_2 = 4294967295u <= _wgslsmith_sub_u32(u_input.a, min(firstTrailingBit(u_input.a), ~var_1.x));
    global0 = Struct_2(~(~firstTrailingBit(~var_1)), func_1(), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1752f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(593f + -118f))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-304f * -1362f)), func_1());
    return func_1();
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3) -> f32 {
    global0 = Struct_2(vec3<u32>(~(~(~global0.b.a.x)), u_input.a, arg_0.d.x), func_1(), global0.c, arg_0);
    global0 = Struct_2(vec3<u32>(73827u, _wgslsmith_mult_u32(1u << (_wgslsmith_mod_u32(35718u, global0.d.a.x) % 32u), u_input.a), global0.d.d.x), func_3(), global0.c, arg_0);
    let var_0 = -1160f;
    let var_1 = ~global0.d.b;
    let var_2 = reverseBits(~(~select(vec4<i32>(var_1, global0.d.c, -9605i, arg_0.b) & vec4<i32>(var_1, arg_0.b, arg_0.c, -4920i), vec4<i32>(global0.d.c, global0.d.c, arg_0.c, global0.d.c) | vec4<i32>(19426i, -1i, -1i, -10090i), select(vec4<bool>(global0.c, global0.c, false, false), vec4<bool>(global0.c, true, global0.c, false), true))));
    return -404f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(-382f);
    let var_1 = vec2<i32>(global0.b.c, 1092i);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(func_2(func_1(), var_0)), -1000f);
    let var_3 = Struct_2(~vec3<u32>(_wgslsmith_div_u32(max(global0.d.d.x, global0.b.d.x), 1u), max(4294967295u << (global0.a.x % 32u), ~global0.b.d.x), abs(0u)), Struct_1(max(global0.d.a, _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(global0.d.a, vec4<u32>(u_input.a, 11077u, u_input.a, global0.a.x), global0.d.a), vec4<u32>(17679u, 72375u, u_input.a, global0.a.x))), 15622i, i32(-1i) * -4807i, _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 68663u, func_1().d.x), _wgslsmith_add_vec3_u32(abs(vec3<u32>(59548u, 88095u, u_input.a)), vec3<u32>(u_input.a, u_input.a, u_input.a)))), global0.c, global0.b);
    let var_4 = -(i32(-1i) * -33896i);
    var var_5 = 5696u;
    let var_6 = _wgslsmith_dot_vec4_u32(global0.d.a, ~(~vec4<u32>(4294967295u, global0.a.x, u_input.a, global0.d.a.x)) << (min(vec4<u32>(global0.b.d.x, 1u >> (u_input.a % 32u), 1u, reverseBits(var_3.b.a.x)), vec4<u32>(4294967295u, ~51103u, func_3().a.x, var_3.b.a.x)) % vec4<u32>(32u)));
    global0 = Struct_2(vec3<u32>(var_6, u_input.a, 4294967295u), func_3(), global0.c, Struct_1(~global0.b.a, ~32352i | _wgslsmith_dot_vec4_i32(-vec4<i32>(var_3.d.b, 0i, -2147483647i, 83657i), vec4<i32>(global0.b.c, -2147483647i, var_4, 20910i) ^ vec4<i32>(var_4, 1i, global0.b.c, -45838i)), 15370i << (firstLeadingBit(1u & global0.a.x) % 32u), vec3<u32>(4294967295u, 4294967295u, var_3.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-46531i);
}

