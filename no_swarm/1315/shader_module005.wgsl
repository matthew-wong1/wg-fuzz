struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: bool,
    c: bool,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec4<i32> {
    let var_0 = u_input.d;
    global0 = u_input.b.x;
    global0 = 3326u;
    global0 = _wgslsmith_mult_u32(_wgslsmith_mod_u32(~var_0, var_0), ~var_0);
    var var_1 = select(vec4<bool>(true, true, !select(true, any(vec2<bool>(true, false)), false), all(vec2<bool>(true, true))), !select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), false), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), true), select(!vec4<bool>(true, true, true, any(vec2<bool>(false, false))), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(firstLeadingBit(u_input.a) < u_input.a, ~u_input.d != ~u_input.d, !(u_input.c.x == 4294967295u), any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), false)))));
    return min(select(firstLeadingBit(select(vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a), abs(vec4<i32>(-2147483647i, 2147483647i, 6195i, 16714i)), vec4<bool>(var_1.x, true, false, var_1.x))), vec4<i32>(countOneBits(51970i) >> (firstTrailingBit(u_input.b.x) % 32u), select(-10771i, 17644i, all(vec2<bool>(var_1.x, false))), _wgslsmith_div_i32(i32(-1i) * -66286i, u_input.a), u_input.a), select(select(vec4<bool>(false, var_1.x, true, var_1.x), select(vec4<bool>(false, var_1.x, var_1.x, true), vec4<bool>(var_1.x, false, var_1.x, false), true), select(vec4<bool>(false, false, false, false), vec4<bool>(var_1.x, false, true, var_1.x), false)), !(!vec4<bool>(var_1.x, true, var_1.x, true)), true)), _wgslsmith_clamp_vec4_i32(min(vec4<i32>(u_input.a, 40656i, 34936i, 24042i), ~vec4<i32>(u_input.a, u_input.a, u_input.a, -2147483647i)) ^ -firstLeadingBit(vec4<i32>(2147483647i, -2147483647i, u_input.a, u_input.a)), -vec4<i32>(u_input.a << (39990u % 32u), _wgslsmith_sub_i32(-2147483647i, -2147483647i), -u_input.a, u_input.a >> (1u % 32u)), firstTrailingBit(-reverseBits(vec4<i32>(u_input.a, 10393i, u_input.a, u_input.a)))));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_5, arg_2: i32) -> Struct_2 {
    let var_0 = !(!any(vec2<bool>(true, any(vec2<bool>(false, true)))));
    let var_1 = 818f;
    let var_2 = reverseBits(func_3());
    let var_3 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(381f)), _wgslsmith_f_op_f32(abs(-821f))), _wgslsmith_f_op_f32(min(-1879f, 174f))), -491f), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.b.d), _wgslsmith_f_op_f32(max(-547f, arg_1.b.d)))), _wgslsmith_f_op_f32(var_1 - -627f), var_1) - vec3<f32>(arg_1.b.d, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2735f, -167f)), var_1))));
    let var_4 = var_0;
    return Struct_2(countOneBits(arg_2));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_5) -> f32 {
    let var_0 = Struct_1(arg_2.a.zy, firstLeadingBit(_wgslsmith_mult_i32(arg_1.a, _wgslsmith_mod_i32(-27255i, arg_1.a ^ u_input.a))), reverseBits(arg_2.b.c), 1853f, _wgslsmith_mod_u32(~_wgslsmith_div_u32(1u, ~1u), ~arg_2.b.e));
    let var_1 = vec3<f32>(-883f, arg_2.b.d, -205f);
    let var_2 = all(vec3<bool>(true, true, true & any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false)))));
    global0 = reverseBits(_wgslsmith_clamp_u32(max(6731u, ~1u), arg_2.b.e, _wgslsmith_mod_u32(var_0.e, u_input.d)));
    let var_3 = arg_2;
    return 422f;
}

fn func_1(arg_0: i32) -> vec2<bool> {
    global0 = ~30528u;
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(u_input.a >> (1u % 32u), func_2(u_input.c.xx, Struct_5(vec3<i32>(22671i, u_input.a, u_input.a), Struct_1(vec2<i32>(14905i, -48260i), u_input.a, vec4<i32>(-1i, arg_0, 2147483647i, arg_0), -1000f, 1u)), u_input.a), Struct_5(vec3<i32>(arg_0, arg_0, u_input.a) & vec3<i32>(arg_0, -1i, -27949i), Struct_1(vec2<i32>(arg_0, arg_0), arg_0, vec4<i32>(2147483647i, -2147483647i, -55153i, -5332i), -412f, u_input.c.x)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(639f + -801f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(625f))))));
    let var_1 = Struct_2(1i);
    let var_2 = Struct_1(-vec2<i32>(u_input.a, ~(-1i)), i32(-1i) * -45483i, reverseBits(~countOneBits(-vec4<i32>(arg_0, -1i, -45091i, u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1855f, 1449f, true))) * _wgslsmith_f_op_f32(select(-549f, _wgslsmith_div_f32(1323f, 1000f), true)))), 1u << (_wgslsmith_clamp_u32(~u_input.b.x, 53580u, abs(u_input.d)) % 32u));
    return !(!select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, true), all(vec2<bool>(false, false))), true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(~(~_wgslsmith_div_u32(u_input.c.x, u_input.c.x))) & ~1u;
    let var_0 = func_1(~u_input.a);
    let var_1 = _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(firstTrailingBit(~vec4<u32>(u_input.d, u_input.c.x, 4294967295u, 0u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, u_input.d, 21909u, u_input.b.x), vec4<u32>(u_input.c.x, 0u, 59293u, u_input.c.x))), _wgslsmith_clamp_vec4_u32(select(~vec4<u32>(1u, 88735u, u_input.c.x, u_input.b.x), vec4<u32>(0u, u_input.c.x, 4294967295u, u_input.c.x), vec4<bool>(false, var_0.x, var_0.x, var_0.x)), ~vec4<u32>(u_input.d, 4294967295u, u_input.d, 5058u), firstLeadingBit(select(vec4<u32>(0u, u_input.d, u_input.d, 1u), vec4<u32>(u_input.b.x, 2654u, 39246u, u_input.d), vec4<bool>(var_0.x, var_0.x, true, var_0.x)))), ~vec4<u32>(40652u, 0u, u_input.b.x, u_input.b.x) | _wgslsmith_clamp_vec4_u32(vec4<u32>(63422u, 1u, 20649u, u_input.b.x), ~vec4<u32>(13741u, 1u, 146939u, 6887u), max(vec4<u32>(u_input.b.x, u_input.c.x, u_input.d, u_input.b.x), vec4<u32>(u_input.b.x, 39089u, u_input.d, u_input.d)))), ~vec4<u32>(~u_input.d, u_input.d, ~52943u, _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(u_input.d, u_input.b.x, u_input.d))) | vec4<u32>(u_input.c.x, 0u, 6304u, u_input.b.x));
    var var_2 = vec3<i32>(-2147483647i, u_input.a, u_input.a | (firstTrailingBit(u_input.a) << (~max(u_input.b.x, 0u) % 32u)));
    var var_3 = Struct_2(func_3().x);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1260f)) + _wgslsmith_f_op_f32(round(880f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-835f - _wgslsmith_f_op_f32(f32(-1f) * -146f)))), 4294967295u);
}

