struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(1000f, vec2<bool>(false, false), 2404u, -18128i), Struct_1(-1011f, vec2<bool>(true, false), 1u, -4887i), Struct_1(-567f, vec2<bool>(false, false), 41536u, 1i), Struct_1(-1000f, vec2<bool>(true, true), 9377u, 0i), Struct_1(269f, vec2<bool>(false, false), 57024u, 2147483647i), Struct_1(587f, vec2<bool>(false, false), 14355u, 1i), Struct_1(1764f, vec2<bool>(false, false), 0u, -1i), Struct_1(317f, vec2<bool>(false, false), 9693u, i32(-2147483648)), Struct_1(1110f, vec2<bool>(false, false), 3903u, 22387i), Struct_1(-972f, vec2<bool>(false, true), 40312u, -1i), Struct_1(-905f, vec2<bool>(false, true), 4019u, 21633i), Struct_1(-962f, vec2<bool>(false, true), 0u, -30884i), Struct_1(468f, vec2<bool>(true, true), 4294967295u, i32(-2147483648)), Struct_1(-437f, vec2<bool>(false, true), 4710u, 8483i), Struct_1(186f, vec2<bool>(false, false), 39315u, 2147483647i), Struct_1(212f, vec2<bool>(false, false), 31377u, 0i), Struct_1(1085f, vec2<bool>(false, false), 0u, 18487i), Struct_1(115f, vec2<bool>(false, false), 56047u, 2147483647i));

var<private> global1: array<vec2<bool>, 4>;

var<private> global2: f32 = -1059f;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: vec2<u32>) -> vec2<bool> {
    global0 = array<Struct_1, 18>();
    var var_0 = vec2<u32>(_wgslsmith_sub_u32(~38016u, _wgslsmith_clamp_u32(countOneBits(_wgslsmith_sub_u32(0u, arg_1.x)), _wgslsmith_add_u32(~21332u, _wgslsmith_div_u32(u_input.a, 5610u)), ~48575u)), 0u);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(floor(371f)))), 862f)), 175f, all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), false)) || true)), !(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), global1[_wgslsmith_index_u32(arg_1.x, 4u)], false), !global1[_wgslsmith_index_u32(1u, 4u)])), ~20309u, _wgslsmith_sub_i32(2147483647i, 51017i));
    var var_2 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(abs(arg_0)), _wgslsmith_f_op_f32(var_1.a + 607f)), vec2<f32>(-1656f, -1680f)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1392f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-155f, arg_0))))));
    return var_1.b;
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = min(_wgslsmith_add_u32(4294967295u, ~u_input.b), _wgslsmith_dot_vec4_u32(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(42500u, u_input.c.x, 12671u, u_input.c.x), vec4<u32>(arg_0, 4174u, 0u, arg_0))), _wgslsmith_mult_vec4_u32(vec4<u32>(firstTrailingBit(u_input.b), 1u & arg_0, _wgslsmith_dot_vec3_u32(u_input.c, u_input.c), 1u), vec4<u32>(~45054u, max(4294967295u, 0u), 0u, 5282u | u_input.a))));
    var var_1 = Struct_1(634f, select(vec2<bool>(true, true), !select(func_3(-327f, u_input.c.xx), !global1[_wgslsmith_index_u32(4294967295u, 4u)], any(vec2<bool>(false, false))), vec2<bool>(true, true)), _wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(arg_0, 93966u)), firstLeadingBit(u_input.c.yx)), _wgslsmith_mult_u32(~1u, arg_0)), ~(-73174i));
    global2 = _wgslsmith_f_op_f32(-var_1.a);
    let var_2 = ~(~_wgslsmith_sub_vec2_u32(max(u_input.c.xx, vec2<u32>(15299u, var_1.c)), u_input.c.zx & u_input.c.yx)) | vec2<u32>(75446u, _wgslsmith_div_u32(_wgslsmith_clamp_u32(~4294967295u, _wgslsmith_div_u32(0u, 64609u), 86790u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 0u, 4294967295u, arg_0), vec4<u32>(arg_0, var_1.c, 71530u, var_1.c))));
    let var_3 = 0i;
    return Struct_1(1000f, var_1.b, select(max(u_input.c.x << (~u_input.a % 32u), ~_wgslsmith_clamp_u32(u_input.b, 4735u, u_input.a)), firstLeadingBit(countOneBits(~u_input.b)), !(func_3(var_1.a, var_2).x & all(vec2<bool>(var_1.b.x, false)))), firstLeadingBit(select(var_3, 1i, var_1.b.x)) & _wgslsmith_sub_i32(_wgslsmith_sub_i32(var_1.d, var_3) >> (1u % 32u), _wgslsmith_clamp_i32(var_3 ^ var_1.d, -52004i, var_1.d)));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: u32) -> vec2<i32> {
    return vec2<i32>(~(-(~arg_0.d)), -2147483647i);
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = !(!((arg_0.a <= _wgslsmith_f_op_f32(-arg_0.a)) && arg_0.b.x));
    let var_1 = func_4(func_2(arg_0.c), _wgslsmith_mod_u32(arg_0.c, _wgslsmith_div_u32(abs(arg_0.c), u_input.a & 4294967295u) | u_input.c.x), ~arg_0.c);
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(arg_0.a))));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(2084f, -1182f)))), _wgslsmith_f_op_f32(-arg_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1268f - var_2))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-843f))));
    return func_2(u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 18>();
    global1 = array<vec2<bool>, 4>();
    global1 = array<vec2<bool>, 4>();
    global0 = array<Struct_1, 18>();
    let var_0 = func_1(global0[_wgslsmith_index_u32(u_input.b, 18u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f)))))));
}

