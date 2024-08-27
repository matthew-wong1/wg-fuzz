struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: f32,
    d: vec4<bool>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: Struct_2,
    d: vec4<bool>,
}

struct Struct_5 {
    a: f32,
    b: Struct_2,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 9> = array<vec2<u32>, 9>(vec2<u32>(2899u, 87182u), vec2<u32>(4294967295u, 1u), vec2<u32>(83208u, 1u), vec2<u32>(709u, 17043u), vec2<u32>(0u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(2985u, 44427u), vec2<u32>(0u, 4294967295u), vec2<u32>(3717u, 24921u));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> f32 {
    global0 = array<vec2<u32>, 9>();
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1990f - -423f) * -476f), _wgslsmith_f_op_f32(1f * -2517f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -180f) + _wgslsmith_f_op_f32(-1088f - 1177f)))))));
    global0 = array<vec2<u32>, 9>();
    let var_1 = -1i << (~_wgslsmith_dot_vec3_u32(vec3<u32>(29893u << (1u % 32u), ~4294967295u, 59688u), firstTrailingBit(vec3<u32>(8871u, 62179u, 1u))) % 32u);
    let var_2 = Struct_3(Struct_1(firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u)), 1f, _wgslsmith_f_op_f32(select(-147f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x))), _wgslsmith_clamp_u32(4294967295u, 1u, 21074u) != 9995u)), !vec4<bool>(true, false, true, any(vec3<bool>(true, false, false))), _wgslsmith_div_u32(~(~22831u), 1u)), Struct_1(firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(9747u, 1u, 43701u, 0u))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2358f), 550f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-1925f, 843f)), _wgslsmith_f_op_f32(min(var_0.x, 1f)))), vec4<bool>(any(vec4<bool>(false, true, true, false)) && true, all(vec3<bool>(true, true, true)), all(vec3<bool>(true, true, true)), !any(vec2<bool>(false, true))), _wgslsmith_sub_u32(14161u, 1u) | _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 32817u, 17560u), vec3<u32>(0u, 4294967295u, 0u))), _wgslsmith_f_op_f32(-118f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-869f * _wgslsmith_f_op_f32(max(1000f, var_0.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) * _wgslsmith_f_op_f32(-1000f + 614f)))));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -554f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(var_2.b.b, var_0.x, var_2.a.d.x))))))));
}

fn func_2() -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-512f * _wgslsmith_f_op_f32(trunc(-1494f))), -1000f, -811f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(ceil(1136f))))))));
    var var_1 = vec2<i32>(-6151i, -1i);
    global0 = array<vec2<u32>, 9>();
    global0 = array<vec2<u32>, 9>();
    global0 = array<vec2<u32>, 9>();
    return Struct_4(Struct_3(Struct_1(max(select(vec4<u32>(4294967295u, 16161u, 46270u, 4294967295u), vec4<u32>(1u, 1u, 36500u, 41144u), false), vec4<u32>(1u, 1u, 1u, 1u)), var_0.x, var_0.x, vec4<bool>(false, true, true, select(true, false, true)), abs(1u)), Struct_1(~vec4<u32>(1u, 1u, 1u, 1u), -1481f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + -1211f), vec4<bool>(true, true, true, true), ~_wgslsmith_clamp_u32(53671u, 4294967295u, 94163u)), _wgslsmith_f_op_f32(sign(-168f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.x * 1000f))))))), Struct_2(Struct_1(abs(vec4<u32>(1u, 1u, 1u, 1u)), -551f, _wgslsmith_f_op_f32(func_3()), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), false), _wgslsmith_div_u32(11458u, 33114u))), vec4<bool>(true, true, true & select(true, true, true), any(vec3<bool>(true, true, true)) | true));
}

fn func_1() -> vec3<u32> {
    let var_0 = u_input.a;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-276f, _wgslsmith_f_op_f32(-565f + 1274f), -999f, -704f) * vec4<f32>(_wgslsmith_f_op_f32(trunc(-866f)), _wgslsmith_f_op_f32(f32(-1f) * -374f), -1390f, _wgslsmith_f_op_f32(floor(-133f))))));
    var var_2 = 0u;
    let var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(var_1.x))));
    var var_4 = func_2();
    return var_4.c.a.a.xzw;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(~_wgslsmith_dot_vec3_u32(~reverseBits(vec3<u32>(0u, 4294967295u, 0u)), select(func_1(), vec3<u32>(1u, 1u, 1u), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)))), 4294967295u, ~4294967295u);
    let var_1 = ~(~_wgslsmith_clamp_u32(abs(4294967295u), 4294967295u, min(var_0.x, 4294967295u))) | abs(4003u);
    global0 = array<vec2<u32>, 9>();
    let var_2 = _wgslsmith_mult_vec4_u32(vec4<u32>(1u, ~36462u >> (0u % 32u), var_0.x, ~(49751u >> (1u % 32u))) & _wgslsmith_add_vec4_u32(select(vec4<u32>(var_0.x, var_0.x, 1u, var_0.x), vec4<u32>(4294967295u, 0u, 45983u, var_1), vec4<bool>(false, true, false, false)) >> (abs(vec4<u32>(var_1, var_1, var_1, 66001u)) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(vec4<u32>(29543u, 45735u, var_0.x, 0u), vec4<u32>(var_1, 1u, 37459u, var_1)) & vec4<u32>(4294967295u, 68848u, 48816u, 40323u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(43725u, var_0.x, var_0.x, var_1), vec4<u32>(var_0.x, var_1, var_0.x, 1u), vec4<u32>(4294967295u, 8022u, var_1, var_0.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x) << (vec4<u32>(69829u, 0u, var_0.x, 15923u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(77657u, 0u, 42991u, var_1), vec4<u32>(var_1, 1u, 0u, 0u))), firstLeadingBit(vec4<u32>(var_1, var_0.x, var_0.x, 95550u))), _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(var_1, var_0.x, var_0.x, 70302u)), func_2().a.a.a), vec4<u32>(abs(4294967295u), _wgslsmith_mult_u32(var_1, var_1), ~var_1, 4294967295u | var_0.x)), _wgslsmith_mod_vec4_u32(~max(vec4<u32>(15980u, var_1, var_1, 1u), vec4<u32>(var_0.x, 5167u, 58863u, 52172u)), vec4<u32>(4294967295u, _wgslsmith_clamp_u32(36000u, 4294967295u, 18987u), ~41273u, var_1))));
    global0 = array<vec2<u32>, 9>();
    var var_3 = select(vec4<u32>(0u, abs(firstTrailingBit(var_0.x)), 1u, 0u), var_2, _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(step(595f, _wgslsmith_div_f32(903f, 207f)))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -291f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -44921i, firstTrailingBit(-41755i)) << (var_2 % vec4<u32>(32u)), min(-(u_input.a >> (var_2 % vec4<u32>(32u))), reverseBits(vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, u_input.a.x)) >> (select(vec4<u32>(4294967295u, 0u, 47141u, 8701u), vec4<u32>(var_2.x, var_1, var_0.x, 75305u), false) % vec4<u32>(32u)))), min(var_1, 4294967295u) >> (4752u % 32u));
}

