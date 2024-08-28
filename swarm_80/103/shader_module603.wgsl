struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec4<bool>,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 17>;

var<private> global1: i32 = 1i;

var<private> global2: array<vec4<f32>, 6> = array<vec4<f32>, 6>(vec4<f32>(596f, 1095f, -332f, 200f), vec4<f32>(-784f, -1000f, 642f, 189f), vec4<f32>(-413f, 176f, 470f, 665f), vec4<f32>(-819f, 978f, -1082f, 492f), vec4<f32>(359f, 325f, 1231f, -1401f), vec4<f32>(1000f, -1493f, 183f, 464f));

var<private> global3: bool = true;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.b, 0u, 51582u, u_input.d), ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, 1u, 4294967295u, u_input.b), vec4<u32>(u_input.a, u_input.e, u_input.d, u_input.e)), min(abs(vec4<u32>(8058u, u_input.e, u_input.b, u_input.b)), max(vec4<u32>(0u, u_input.d, 4255u, u_input.b), vec4<u32>(u_input.a, u_input.e, 1u, u_input.a)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-264f)), -1751f)))), !(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), true)), 1978f, false);
    var var_1 = Struct_1(_wgslsmith_add_vec4_u32(max(~vec4<u32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), vec4<u32>(reverseBits(var_0.a.x), var_0.a.x, 47515u << (0u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(132647u, 6172u), var_0.a.xz))), _wgslsmith_div_vec4_u32(select(~var_0.a, vec4<u32>(9779u, var_0.a.x, u_input.a, 21117u), var_0.c), ~var_0.a >> ((vec4<u32>(u_input.b, u_input.b, 63040u, var_0.a.x) & var_0.a) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(abs(var_0.b)))), vec4<bool>(false, select(-2147483647i != max(20272i, global0[_wgslsmith_index_u32(1u, 17u)]), var_0.e | var_0.c.x, var_0.c.x), true && var_0.c.x, var_0.e), _wgslsmith_f_op_f32(-var_0.b), false);
    let var_2 = true;
    global1 = 31887i;
    return -1354f;
}

fn func_2(arg_0: vec3<i32>, arg_1: bool) -> f32 {
    global2 = array<vec4<f32>, 6>();
    global3 = arg_1;
    global0 = array<i32, 17>();
    global3 = _wgslsmith_f_op_f32(func_3()) < _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-629f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1072f, -966f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), all(select(!vec3<bool>(arg_1, true, false), vec3<bool>(arg_1, arg_1, arg_1), !arg_1))));
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -273f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3())))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0, 1365f)) - var_0);
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-509f - -1104f) - _wgslsmith_f_op_f32(select(544f, 435f, false))) + _wgslsmith_f_op_f32(1f + -188f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(879f))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(368f + -970f), 1f, true))))) + _wgslsmith_div_f32(546f, _wgslsmith_div_f32(_wgslsmith_div_f32(-219f, _wgslsmith_f_op_f32(f32(-1f) * -1341f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(u_input.c, true)))))));
    var_0 = -189f;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-1822f)))), -2922f))));
    let var_2 = _wgslsmith_div_vec2_u32(~(~(abs(vec2<u32>(u_input.a, 7030u)) << (_wgslsmith_mod_vec2_u32(vec2<u32>(45735u, 4294967295u), vec2<u32>(u_input.d, u_input.d)) % vec2<u32>(32u)))), vec2<u32>(17340u, u_input.b));
    var var_3 = min(vec3<u32>(~var_2.x, _wgslsmith_mod_u32(~(~1u), 1u), 115185u), _wgslsmith_div_vec3_u32(firstLeadingBit(firstTrailingBit(~vec3<u32>(4294967295u, 26526u, 95943u))), vec3<u32>(~0u, _wgslsmith_div_u32(~1u, ~1u), ~var_2.x)));
    return Struct_1(_wgslsmith_add_vec4_u32(select(countOneBits(vec4<u32>(var_3.x, 1u, var_2.x, u_input.d)), select(vec4<u32>(var_3.x, var_3.x, u_input.a, var_3.x), vec4<u32>(var_2.x, u_input.a, 4294967295u, var_3.x), true), all(vec2<bool>(false, true))), vec4<u32>(u_input.e, _wgslsmith_div_u32(0u, 74283u), ~24123u, var_3.x)) ^ vec4<u32>(_wgslsmith_div_u32(~53052u, _wgslsmith_dot_vec4_u32(vec4<u32>(66636u, var_3.x, var_3.x, 0u), vec4<u32>(4294967295u, var_3.x, var_2.x, var_3.x))), ~max(var_2.x, 7435u), var_3.x, _wgslsmith_clamp_u32(select(u_input.d, u_input.d, true), u_input.a, var_2.x)), _wgslsmith_div_f32(1000f, -1000f), !select(vec4<bool>(false, false, any(vec3<bool>(false, false, true)), true), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, any(vec4<bool>(true, false, false, true)), false, any(vec3<bool>(false, true, true)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.x, -362f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(477f * var_1.x) * var_1.x)))), true);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    global2 = array<vec4<f32>, 6>();
    let var_0 = func_1();
    global1 = ~(u_input.c.x & u_input.c.x);
    var var_1 = u_input.c.x;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(firstLeadingBit(vec2<i32>(-1i) * -(~vec2<i32>(45463i, global0[_wgslsmith_index_u32(u_input.a, 17u)]))), u_input.c.zy);
    let var_1 = select(vec4<bool>(all(vec4<bool>(true, true, true, true)), func_4(-890f, Struct_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.e, 30147u, u_input.e), vec4<u32>(u_input.e, u_input.a, 36657u, u_input.b), vec4<u32>(45173u, 76695u, 4294967295u, 73548u)), _wgslsmith_f_op_f32(142f + -466f), vec4<bool>(true, true, true, true), -1585f, false), func_1()), false, false), select(vec4<bool>(true, all(vec4<bool>(true, true, true, true)), func_1().c.x, all(vec2<bool>(false, true))), vec4<bool>(all(func_1().c.xxx), any(vec3<bool>(true, true, true)), any(vec4<bool>(true, false, true, false)), !(56230u != u_input.a)), true), _wgslsmith_f_op_f32(func_3()) <= 219f);
    let var_2 = -1057f;
    var var_3 = vec3<bool>(true, !var_1.x, all(select(!func_1().c.yx, vec2<bool>(true, all(var_1)), false)));
    let var_4 = func_1();
    var var_5 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(min(countOneBits(reverseBits(var_5.a.x) >> (_wgslsmith_dot_vec3_u32(var_5.a.wwz, vec3<u32>(1u, 4294967295u, var_4.a.x)) % 32u)), 23875u >> (min(1u, 0u) % 32u)), _wgslsmith_dot_vec2_u32(~firstTrailingBit(var_4.a.ww), ~(select(var_5.a.zy, vec2<u32>(58434u, var_4.a.x), vec2<bool>(false, var_5.e)) ^ ~var_5.a.yx)), ~(-firstTrailingBit(vec4<i32>(19650i, 58029i, 1i, -2147483647i))), select(32220u, 97981u, false), _wgslsmith_f_op_f32(f32(-1f) * -2528f));
}

