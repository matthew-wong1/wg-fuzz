struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: vec2<u32>) -> vec2<bool> {
    let var_0 = 2385u;
    global0 = -1699f;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1008f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1392f, _wgslsmith_div_f32(1000f, -1000f)) - _wgslsmith_f_op_f32(ceil(456f)))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -912f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1148f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-614f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-403f - _wgslsmith_f_op_f32(select(-1948f, 1165f, true))) * 260f)));
    var var_2 = ~(~u_input.a.x);
    return vec2<bool>(true, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, var_1.x)))) == -1403f);
}

fn func_2(arg_0: i32, arg_1: i32) -> vec4<u32> {
    let var_0 = 422f;
    global0 = -985f;
    global0 = var_0;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1589f, var_0)))) + -342f);
    global0 = var_0;
    return _wgslsmith_div_vec4_u32(select(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x), ~vec4<u32>(u_input.a.x, 1u, 13435u, 37418u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 41159u, _wgslsmith_div_u32(u_input.a.x, 23847u), _wgslsmith_mult_u32(0u, u_input.a.x)), ~(vec4<u32>(68603u, u_input.a.x, 59795u, u_input.a.x) >> (vec4<u32>(u_input.a.x, 0u, 12920u, u_input.a.x) % vec4<u32>(32u)))), !select(vec4<bool>(false, false, false, false), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true)), vec4<bool>(false, true, true, true))), select(vec4<u32>(_wgslsmith_sub_u32(41528u & u_input.a.x, 37303u), 1u, u_input.a.x, ~u_input.a.x), vec4<u32>(4294967295u, 21351u, 50331u, 13717u), !(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true)))));
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    global0 = 1000f;
    var var_0 = arg_0;
    let var_1 = arg_0;
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1245f), _wgslsmith_f_op_f32(1f * _wgslsmith_div_f32(1578f, 414f))) - -277f)));
    let var_2 = (~(-(u_input.b.x << (4294967295u % 32u))) >> (~reverseBits(var_1.c.x) % 32u)) | _wgslsmith_mult_i32(firstLeadingBit(1i | u_input.b.x), u_input.b.x >> (_wgslsmith_mult_u32(~var_0.c.x, _wgslsmith_add_u32(arg_0.c.x, 27192u)) % 32u));
    return ~vec4<u32>(67866u, ~_wgslsmith_add_u32(u_input.a.x, u_input.a.x) << (~(~0u) % 32u), _wgslsmith_mult_u32(~u_input.a.x, abs(arg_0.c.x) << (func_2(-21786i, -1i).x % 32u)), ~_wgslsmith_clamp_u32(~57413u, reverseBits(var_0.c.x), var_1.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec2<bool>(true, any(select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true), false)));
    var_0 = vec2<bool>(true, var_0.x);
    let var_1 = false;
    var_0 = select(vec2<bool>(true, true), func_1(u_input.a), false);
    var var_2 = vec3<bool>(var_1, var_1, 16095u <= ~u_input.a.x);
    global0 = -335f;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_mod_i32(u_input.b.x, u_input.b.x)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 4294967295u) | min(u_input.a, u_input.a), abs(u_input.a)), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) >> (vec3<u32>(u_input.a.x, u_input.a.x, 0u) % vec3<u32>(32u)), ~vec3<u32>(u_input.a.x, 60833u, 0u)), ~vec3<u32>(26988u, 0u, u_input.a.x) | vec3<u32>(11493u, 16805u, u_input.a.x)), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(func_2(-2147483647i, -37884i), func_3(Struct_1(vec4<bool>(var_1, true, false, var_1), -1000f, vec4<u32>(12069u, u_input.a.x, 1u, u_input.a.x)))), abs(min(vec4<u32>(u_input.a.x, 0u, u_input.a.x, 55919u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))))), vec3<i32>(-2147483647i, _wgslsmith_mod_i32(1i, -3887i), u_input.b.x));
}

