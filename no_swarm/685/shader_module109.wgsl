struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec2<bool>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: f32,
    d: vec3<f32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 1>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> u32 {
    return firstLeadingBit(firstTrailingBit(countOneBits(_wgslsmith_mult_u32(_wgslsmith_div_u32(4294967295u, 37027u), ~u_input.b))));
}

fn func_2(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_2, arg_3: Struct_1) -> vec3<u32> {
    global0 = array<vec4<u32>, 1>();
    let var_0 = arg_3.a;
    global0 = array<vec4<u32>, 1>();
    var var_1 = vec4<u32>(u_input.b, reverseBits(arg_3.b.x), func_3(), 34785u);
    var_1 = global0[_wgslsmith_index_u32(~(~(60251u << (select(0u ^ u_input.a.x, max(0u, 17639u), !arg_0.x) % 32u))), 1u)];
    return ~reverseBits(arg_3.b);
}

fn func_4(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_2) -> Struct_1 {
    global0 = array<vec4<u32>, 1>();
    global0 = array<vec4<u32>, 1>();
    let var_0 = abs(select(countOneBits(vec4<u32>(arg_2.b.x, arg_2.b.x, 4294967295u, 57380u)), u_input.a, !all(vec3<bool>(false, arg_3.a.c.x, false))) ^ reverseBits(~u_input.a ^ ~u_input.a));
    global0 = array<vec4<u32>, 1>();
    var var_1 = all(!arg_2.c);
    return arg_3.a;
}

fn func_1() -> Struct_1 {
    global0 = array<vec4<u32>, 1>();
    var var_0 = Struct_2(func_4(vec2<i32>(1i, 1i), ~u_input.a.x | u_input.b, Struct_1(vec4<f32>(_wgslsmith_div_f32(364f, 1010f), -181f, _wgslsmith_f_op_f32(f32(-1f) * -429f), _wgslsmith_f_op_f32(f32(-1f) * -847f)), func_2(vec4<bool>(true, true, true, true), -25733i, Struct_2(Struct_1(vec4<f32>(-2034f, -640f, -258f, -988f), u_input.a.wzw, vec2<bool>(false, true), 1u), vec3<f32>(936f, -530f, 615f), -233f, vec3<f32>(-564f, 1451f, 190f), vec3<i32>(-34127i, 2147483647i, -80896i)), Struct_1(vec4<f32>(-291f, 496f, -180f, -588f), vec3<u32>(0u, u_input.a.x, 4294967295u), vec2<bool>(false, true), 0u)), !select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), 0u), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-342f, 302f, 895f, -1255f))), vec3<u32>(18094u, u_input.b, 16019u), vec2<bool>(true, true), select(27268u, u_input.a.x, false)), vec3<f32>(1f, 1f, 1f), 1324f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-990f, 1514f, -1710f)), _wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(-2147483647i, -2147483647i, -7245i)), vec3<i32>(1i, 1i, 1i), vec3<i32>(2147483647i, 0i, 58255i)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(482f, -564f, 621f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(706f, 722f, -822f))), any(vec3<bool>(true, true, false)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1008f, -198f, -398f) - vec3<f32>(870f, 494f, -1000f)), vec3<f32>(-767f, 133f, -610f)))) + vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -166f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(111f + 367f) + _wgslsmith_div_f32(-241f, 2225f)), _wgslsmith_f_op_f32(ceil(-1528f)))), 1f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1f, 1f, 1f))), func_4(~vec2<i32>(7205i, -2147483647i), max(4294967295u, 1u), Struct_1(vec4<f32>(-1679f, 1000f, -724f, -232f), vec3<u32>(1u, u_input.b, 36886u), vec2<bool>(false, false), 1u), Struct_2(Struct_1(vec4<f32>(1559f, 1220f, 542f, 929f), vec3<u32>(41180u, 905u, u_input.b), vec2<bool>(false, true), 5798u), vec3<f32>(-203f, -1171f, -862f), 866f, vec3<f32>(669f, -1492f, 556f), vec3<i32>(2147483647i, -2147483647i, -2147483647i))).a.xzz)), ~vec3<i32>(1i, 1i, 1i));
    global0 = array<vec4<u32>, 1>();
    let var_1 = _wgslsmith_f_op_f32(step(-694f, _wgslsmith_f_op_f32(ceil(-1338f))));
    let var_2 = abs(vec4<i32>(var_0.e.x, _wgslsmith_mod_i32(max(var_0.e.x, var_0.e.x) ^ abs(-2147483647i), select(var_0.e.x, 1i, true) << (var_0.a.b.x % 32u)), reverseBits(var_0.e.x), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_0.e.x, 0i, -11471i), reverseBits(vec4<i32>(var_0.e.x, var_0.e.x, var_0.e.x, var_0.e.x))) | firstLeadingBit(-1i)));
    return Struct_1(var_0.a.a, ~reverseBits(var_0.a.b), vec2<bool>(any(!vec4<bool>(true, var_0.a.c.x, var_0.a.c.x, var_0.a.c.x)), !(!var_0.a.c.x)), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~(vec2<u32>(var_0.a.d, u_input.a.x) | vec2<u32>(var_0.a.b.x, u_input.a.x)), func_4(-var_0.e.yy, _wgslsmith_dot_vec3_u32(var_0.a.b, var_0.a.b), func_4(var_0.e.yy, 105686u, var_0.a, Struct_2(var_0.a, var_0.d, -736f, vec3<f32>(1636f, -622f, var_0.d.x), vec3<i32>(-1i, -1i, var_2.x))), Struct_2(var_0.a, var_0.a.a.xzw, 1000f, var_0.a.a.zxw, var_0.e)).b.zx), ~var_0.a.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!select(true, true, true), 39077u <= ~u_input.a.x, any(select(vec2<bool>(true, true), vec2<bool>(false, true), true)) || (abs(~u_input.b) >= 2216u));
    let var_1 = _wgslsmith_sub_vec3_u32(u_input.a.xyy, vec3<u32>(0u, 1u, min(~46941u, 33974u)));
    global0 = array<vec4<u32>, 1>();
    let var_2 = func_1();
    var var_3 = _wgslsmith_f_op_f32(round(-1000f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(_wgslsmith_mult_u32(select(~var_2.d, ~var_2.b.x, true), u_input.a.x), 14953u), countOneBits(vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1().a.x + _wgslsmith_f_op_f32(var_2.a.x * -1377f))))), reverseBits(firstLeadingBit(firstTrailingBit(vec4<u32>(u_input.b, var_2.d, 6672u, var_2.b.x)))));
}

