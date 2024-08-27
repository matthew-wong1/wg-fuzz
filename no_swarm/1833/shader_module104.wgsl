struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: vec4<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-736f);

var<private> global1: i32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: bool, arg_1: vec4<i32>, arg_2: i32, arg_3: bool) -> vec2<u32> {
    let var_0 = vec4<f32>(1000f, -486f, _wgslsmith_f_op_f32(-global0.a), -1476f);
    var var_1 = arg_0;
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(854f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, 1424f))) - var_0.x));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(floor(global0.a)));
    var_1 = arg_3;
    return ~select(~(~vec2<u32>(4294967295u, 1u)), vec2<u32>(1u, 1u), vec2<bool>(arg_3, !(!arg_0)));
}

fn func_3() -> vec4<u32> {
    global1 = ~u_input.a;
    global1 = abs(~(-16688i));
    let var_0 = ~u_input.b;
    global0 = Struct_1(_wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(f32(-1f) * -531f)));
    let var_1 = Struct_3(global0.a, ~select(1u, ~1u, all(vec4<bool>(true, true, true, true))), vec4<u32>(reverseBits(_wgslsmith_clamp_u32(1u, ~0u, min(57485u, 0u))), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~(~vec4<u32>(3935u, 34419u, 27755u, 1u))), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 1u, 4294967295u), vec4<u32>(1u, 1u, 1u, 1u)) << (~69048u % 32u), ~(~countOneBits(28291u))), Struct_2(global0.a, vec4<u32>(22936u, 1u, 1u, ~53949u >> (1u % 32u))));
    return vec4<u32>(~(~abs(firstTrailingBit(7537u))), 1u, abs(~(4294967295u ^ var_1.c.x)), _wgslsmith_dot_vec4_u32(~var_1.c, firstLeadingBit(~vec4<u32>(50462u, 4294967295u, 1u, 0u)) & ~select(vec4<u32>(26430u, var_1.d.b.x, var_1.d.b.x, 4294967295u), vec4<u32>(4294967295u, 4298u, 18620u, var_1.d.b.x), vec4<bool>(false, true, false, true))));
}

fn func_1(arg_0: i32) -> vec4<bool> {
    global1 = arg_0;
    let var_0 = ~vec2<u32>(reverseBits(~1u), 1u);
    let var_1 = ~var_0 << (func_2(false, firstTrailingBit(vec4<i32>(-arg_0, -32919i, -2147483647i, ~u_input.a)), min(~u_input.c, 34403i), (-arg_0 < 17589i) | true) % vec2<u32>(32u));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(-global0.a), var_0.x, ~(~_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, var_0.x, 82700u, 0u), vec4<u32>(33u, var_0.x, var_1.x, var_1.x)), func_3())), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f), vec4<u32>(var_1.x, _wgslsmith_clamp_u32(~var_1.x, 1u, 7379u), 4294967295u, ~4294967295u)));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(998f, -787f))), _wgslsmith_f_op_f32(abs(global0.a)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(550f - -1677f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2.a * -899f)))))));
    return !(!vec4<bool>(true, true, all(vec2<bool>(false, false)) | true, (var_0.x >> (var_0.x % 32u)) != ~var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~(-20560i);
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1654f, _wgslsmith_f_op_f32(exp2(global0.a)))), vec4<u32>(~reverseBits(_wgslsmith_mod_u32(17653u, 4294967295u)), ~0u, _wgslsmith_mult_u32(1u, 1u), _wgslsmith_mult_u32(~0u, countOneBits(1u))));
    let var_1 = !select(vec2<bool>(true, true), vec2<bool>(true, true), !select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(true, true)));
    let var_2 = func_1(~select(u_input.a, firstTrailingBit(abs(u_input.c)), !var_1.x));
    global0 = Struct_1(-757f);
    let x = u_input.a;
    s_output = StorageBuffer(~0u, _wgslsmith_clamp_vec4_i32(firstTrailingBit(~vec4<i32>(u_input.c, 1521i, 2147483647i, u_input.b.x)), min(~vec4<i32>(u_input.a, u_input.b.x, u_input.a, 0i) ^ (vec4<i32>(u_input.a, u_input.c, -30000i, -2147483647i) | vec4<i32>(-13759i, u_input.c, -1i, u_input.c)), max(vec4<i32>(5165i, u_input.b.x, 0i, u_input.b.x), vec4<i32>(0i, -6829i, -18085i, u_input.c))), abs(firstLeadingBit(-vec4<i32>(u_input.a, u_input.b.x, -17295i, 0i)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -544f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(144f, -722f))))) * vec2<f32>(global0.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(666f + global0.a))))), _wgslsmith_div_u32(var_0.b.x ^ ~(~28510u), 1576u), -_wgslsmith_dot_vec2_i32(firstTrailingBit(u_input.b.xz), vec2<i32>(1i, -2147483647i) ^ (u_input.b.xy | vec2<i32>(-5611i, u_input.b.x))));
}

