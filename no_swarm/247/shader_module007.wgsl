struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
    c: i32,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: f32, arg_1: Struct_5) -> vec2<u32> {
    var var_0 = Struct_3(Struct_2(arg_1.a.a));
    let var_1 = ~8818u >> (0u % 32u);
    var_0 = Struct_3(Struct_2(Struct_1(firstTrailingBit(u_input.a.x) & countOneBits(arg_1.a.a.a))));
    var var_2 = var_0.a;
    var var_3 = Struct_3(var_0.a);
    return u_input.a;
}

fn func_2(arg_0: vec4<i32>, arg_1: i32, arg_2: vec4<bool>) -> f32 {
    var var_0 = u_input.a;
    let var_1 = Struct_2(Struct_1(_wgslsmith_dot_vec2_u32(func_3(-1023f, Struct_5(Struct_2(Struct_1(1u)), arg_1)), firstLeadingBit(~vec2<u32>(u_input.a.x, 39654u)))));
    var_0 = _wgslsmith_div_vec2_u32(vec2<u32>(countOneBits(0u), firstLeadingBit(var_0.x)), max(~(~vec2<u32>(111070u, u_input.a.x)), abs((vec2<u32>(1u, 4294967295u) ^ u_input.a) ^ ~u_input.a)));
    var_0 = u_input.a;
    var_0 = ~u_input.a;
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -594f))) + -907f)));
}

fn func_1() -> Struct_4 {
    let var_0 = Struct_1(~(~(~0u)));
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-743f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-662f)))), _wgslsmith_f_op_f32(func_2(vec4<i32>(1i, -1i, 1i, -2147483647i) << (vec4<u32>(0u, var_0.a, var_0.a, 12056u) % vec4<u32>(32u)), 2147483647i, vec4<bool>(true, false, false, true))))), _wgslsmith_f_op_f32(floor(-116f))));
    var_1 = _wgslsmith_f_op_f32(-378f * _wgslsmith_f_op_f32(f32(-1f) * -996f));
    let var_2 = countOneBits(_wgslsmith_sub_u32(1u, 0u));
    let var_3 = vec2<u32>(9865u, _wgslsmith_div_u32(var_0.a, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a), u_input.b)));
    return Struct_4(~countOneBits(vec3<i32>(1i, 1i, 1i)), Struct_2(Struct_1(39789u)), _wgslsmith_dot_vec3_i32(abs(-vec3<i32>(-3606i, -1i, 2147483647i) >> (_wgslsmith_div_vec3_u32(vec3<u32>(var_3.x, var_3.x, 15799u), vec3<u32>(1u, var_3.x, u_input.a.x)) % vec3<u32>(32u))), -(vec3<i32>(-1i) * -vec3<i32>(-28545i, -26614i, -31569i))), Struct_3(Struct_2(var_0)));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2, arg_2: f32, arg_3: u32) -> u32 {
    var var_0 = true;
    var var_1 = Struct_5(Struct_2(Struct_1(arg_0.d.a.a.a)), min(-28191i, min(reverseBits(0i), _wgslsmith_add_i32(arg_0.a.x, arg_0.a.x) << (u_input.a.x % 32u))));
    var_0 = any(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true)), !vec4<bool>(true, var_1.b != -27972i, true, true), true));
    let var_2 = arg_0.d;
    var var_3 = arg_0;
    return 1u >> ((func_3(_wgslsmith_f_op_f32(918f + 1056f), Struct_5(Struct_2(var_3.d.a.a), min(-2147483647i, -16815i))).x | ~_wgslsmith_div_u32(var_2.a.a.a, 0u)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u;
    var_0 = u_input.a.x;
    let var_1 = _wgslsmith_mod_i32(0i, 26881i);
    var_0 = ~_wgslsmith_add_u32(u_input.b, ~u_input.b);
    var_0 = _wgslsmith_mult_u32(u_input.b, func_4(func_1(), func_1().b, _wgslsmith_f_op_f32(f32(-1f) * -2899f), u_input.b) ^ (28002u >> (~u_input.a.x % 32u))) & firstTrailingBit(~(~u_input.b << (u_input.b % 32u)));
    let var_2 = countOneBits(u_input.a.x);
    var var_3 = func_1().d;
    var var_4 = vec4<i32>(-func_1().c, -2147483647i ^ -(~(~var_1)), _wgslsmith_dot_vec2_i32(-vec2<i32>(var_1 & 2147483647i, 33473i), vec2<i32>(_wgslsmith_clamp_i32(-26573i, -38734i, ~(-21546i)), -15603i)), firstLeadingBit(_wgslsmith_clamp_i32(~12108i, abs(_wgslsmith_mod_i32(-1i, var_1)), var_1)));
    let var_5 = ~_wgslsmith_sub_vec4_u32(vec4<u32>(var_3.a.a.a, ~(~u_input.a.x), 118900u, ~(~var_3.a.a.a)), _wgslsmith_sub_vec4_u32(~(vec4<u32>(u_input.b, var_2, u_input.a.x, u_input.a.x) & vec4<u32>(50973u, 0u, 24397u, 1u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(var_3.a.a.a, 23047u, 1u, 4294967295u), vec4<u32>(u_input.b, u_input.b, 1u, u_input.b))));
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(-(~(-2147483647i)), -_wgslsmith_mod_i32(3064i, var_1)));
}

