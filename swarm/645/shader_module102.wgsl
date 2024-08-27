struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: f32,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2() -> f32 {
    let var_0 = reverseBits(select(~vec4<u32>(_wgslsmith_add_u32(74237u, u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a), vec4<u32>(20282u, 87377u, u_input.a, 18286u)), ~u_input.a, _wgslsmith_mult_u32(u_input.a, 11195u)), ~max(vec4<u32>(u_input.a, 4294967295u, u_input.a, 72119u), vec4<u32>(u_input.a, u_input.a, 1u, u_input.a)), true));
    let var_1 = true;
    var var_2 = 26716i;
    var var_3 = Struct_2(firstLeadingBit(firstTrailingBit(firstLeadingBit(-vec3<i32>(u_input.b, 26138i, 37532i)))), ~(-2147483647i));
    let var_4 = max(22888i, var_3.a.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(535f, -1000f, any(vec4<bool>(false, var_1, true, var_1)))), -1128f)));
}

fn func_3() -> f32 {
    let var_0 = ~(-firstLeadingBit(-max(vec2<i32>(u_input.b, u_input.b), vec2<i32>(6919i, u_input.b))));
    var var_1 = _wgslsmith_mult_vec3_u32(reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 0u, _wgslsmith_sub_u32(4294967295u, 1u)), min(abs(vec3<u32>(4294967295u, u_input.a, 8841u)), select(vec3<u32>(u_input.a, 1u, 0u), vec3<u32>(u_input.a, u_input.a, 103256u), true)))), _wgslsmith_div_vec3_u32((vec3<u32>(u_input.a, 1u, u_input.a) << (~vec3<u32>(4294967295u, 44788u, 4294967295u) % vec3<u32>(32u))) | _wgslsmith_add_vec3_u32(vec3<u32>(80344u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a) | vec3<u32>(4294967295u, u_input.a, u_input.a)), select(firstTrailingBit(~vec3<u32>(17592u, u_input.a, 2460u)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(1u, u_input.a, 24716u)), vec3<bool>(true, true, true))));
    var var_2 = u_input.b;
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    return 1315f;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec3<i32>) -> bool {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, arg_1.c.e))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, arg_2.e)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.c.c, arg_1.c.e), vec2<f32>(-167f, arg_1.a), vec2<bool>(arg_2.a.x, false)))))), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2()))), _wgslsmith_f_op_f32(func_3())));
    global0 = arg_0.c.a.x;
    let var_1 = arg_1.c.a.x;
    global0 = !(firstTrailingBit(0u) == u_input.a);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.d - 148f) * _wgslsmith_f_op_f32(344f - var_0.x)), -501f, _wgslsmith_div_f32(_wgslsmith_div_f32(-581f, arg_1.a), _wgslsmith_f_op_f32(arg_2.d + 555f)), _wgslsmith_f_op_f32(func_2())) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_2.e, arg_0.b.d, -473f, arg_2.e))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, arg_2.c, 1354f, arg_0.c.d) + vec4<f32>(-1218f, 470f, arg_2.e, 663f))))));
    return true;
}

fn func_4(arg_0: bool) -> vec2<f32> {
    var var_0 = Struct_4(Struct_2((_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, -17819i, -42862i), vec3<i32>(u_input.b, u_input.b, -31228i)) ^ (vec3<i32>(1i, u_input.b, u_input.b) | vec3<i32>(1i, -1i, u_input.b))) | ~countOneBits(vec3<i32>(u_input.b, u_input.b, u_input.b)), ~reverseBits(u_input.b) >> (_wgslsmith_clamp_u32(countOneBits(u_input.a), u_input.a, _wgslsmith_sub_u32(u_input.a, u_input.a)) % 32u)), Struct_1(!select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(arg_0, arg_0, arg_0), true), arg_0, -684f, _wgslsmith_f_op_f32(func_2()), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-726f, -652f)), 1596f)), _wgslsmith_f_op_f32(-695f + -563f))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.b.c))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(563f, 148f)) - _wgslsmith_f_op_f32(-var_0.b.c))) + _wgslsmith_f_op_f32(ceil(var_0.b.c))));
    var_0 = Struct_4(var_0.a, var_0.b);
    var var_2 = func_1(Struct_3(-690f, Struct_1(vec3<bool>(arg_0, any(var_0.b.a.xy), true), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, var_0.b.e))), var_0.b.c, 1f), var_0.b), Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3()))), var_0.b, var_0.b), Struct_1(vec3<bool>(true, all(vec4<bool>(false, true, var_0.b.a.x, false)) != true, var_0.b.a.x), all(var_0.b.a), _wgslsmith_f_op_f32(-789f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.b.e)) + _wgslsmith_div_f32(-371f, 639f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-168f - 2101f), 955f, all(var_0.b.a))))), _wgslsmith_f_op_f32(-357f + _wgslsmith_div_f32(var_0.b.c, _wgslsmith_f_op_f32(func_3())))), firstLeadingBit(vec3<i32>(var_0.a.b << (51421u % 32u), ~var_0.a.a.x, _wgslsmith_dot_vec3_i32(var_0.a.a, vec3<i32>(u_input.b, -32656i, 2147483647i)))));
    var var_3 = 28902u;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.b.c, -1064f), vec2<f32>(var_0.b.d, var_0.b.d), var_0.b.a.xx)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -523f) - vec2<f32>(2191f, 1779f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(678f, 1458f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.b.d, var_0.b.c), vec2<f32>(-644f, -1080f)))))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.e, var_0.b.c))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(1370f, _wgslsmith_f_op_f32(max(-375f, _wgslsmith_f_op_f32(sign(-1000f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -785f), _wgslsmith_f_op_f32(-1042f - 318f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1236f, -2589f, false)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(func_1(Struct_3(1072f, Struct_1(vec3<bool>(false, true, false), true, 348f, -883f, -524f), Struct_1(vec3<bool>(true, true, false), false, -203f, -1024f, -1000f)), Struct_3(1223f, Struct_1(vec3<bool>(false, false, true), false, 770f, 218f, 199f), Struct_1(vec3<bool>(false, true, true), false, 225f, 1068f, -323f)), Struct_1(vec3<bool>(true, true, true), true, 1000f, -153f, 713f), vec3<i32>(2147483647i, 0i, 27275i)))))));
    let var_1 = ~_wgslsmith_dot_vec3_i32(abs(min(vec3<i32>(42078i, u_input.b, -1i), vec3<i32>(u_input.b, -2147483647i, 0i))), _wgslsmith_clamp_vec3_i32(vec3<i32>(-351i, u_input.b, 0i) | vec3<i32>(u_input.b, -2147483647i, 1i), vec3<i32>(6007i, 21967i, u_input.b) & vec3<i32>(u_input.b, u_input.b, -1i), vec3<i32>(8056i, -1i, -35908i))) << (_wgslsmith_mod_u32(u_input.a, ~u_input.a) % 32u);
    global0 = true;
    global0 = all(select(vec3<bool>(true, true, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.a, 4294967295u)) <= firstTrailingBit(u_input.a)), vec3<bool>(true, !all(vec3<bool>(true, false, false)), all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)))), select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true))));
    let var_2 = Struct_1(select(!(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true))), select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), vec3<bool>(false, true, true), any(vec4<bool>(true, false, true, true))), !select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false))), !(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true))), false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(var_0.x)))), var_0.x), _wgslsmith_f_op_f32(select(-934f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(123f, var_0.x))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(470f - 190f), _wgslsmith_f_op_f32(-var_0.x))), true)), 1715f);
    var var_3 = var_2;
    global0 = false;
    let var_4 = any(select(!(!var_2.a), var_3.a, var_3.a));
    var var_5 = !(!select(var_3.a, vec3<bool>(var_2.b | var_2.b, var_2.b, var_3.a.x || var_2.b), !var_3.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d)), -vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1, u_input.b), -vec2<i32>(-18380i, u_input.b)), var_1, -abs(0i), abs(countOneBits(var_1))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1006f, var_2.c, var_3.e, var_2.c)), _wgslsmith_div_vec4_f32(vec4<f32>(-1126f, 155f, 1094f, var_2.c), vec4<f32>(var_3.e, var_2.d, -894f, 533f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-521f, -785f, 1192f, var_0.x) * vec4<f32>(-1195f, var_2.e, var_3.c, var_2.e))))));
}

