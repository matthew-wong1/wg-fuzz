struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> i32 {
    let var_0 = Struct_2(reverseBits(vec3<u32>(~(~11380u), 1u, ~1u)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-820f, -606f, -1361f, 215f)))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-386f)) - _wgslsmith_f_op_f32(min(1506f, -732f))), 301f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-608f, 495f, false)), -795f)), 981f))), Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(540f)), _wgslsmith_f_op_f32(f32(-1f) * -735f), _wgslsmith_f_op_f32(sign(-1153f)), -1260f), vec4<f32>(_wgslsmith_div_f32(1000f, 599f), 1f, _wgslsmith_div_f32(-1371f, -1057f), _wgslsmith_f_op_f32(418f + 1149f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1461f, 2120f, 252f, 1549f)))), Struct_1(vec4<f32>(1104f, _wgslsmith_f_op_f32(sign(-870f)), _wgslsmith_f_op_f32(ceil(451f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1468f) * _wgslsmith_f_op_f32(step(-203f, 603f)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(-1334f, -383f, 462f, 630f), vec4<f32>(1365f, 327f, -567f, 1354f))))));
    let var_1 = _wgslsmith_div_i32(2147483647i, u_input.b);
    var var_2 = ~(~max(var_0.a.x, 52036u));
    var var_3 = ~(~var_0.a.x);
    let var_4 = var_0;
    return -abs(arg_0);
}

fn func_2() -> f32 {
    let var_0 = min(vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.c, 5789i)) << (1u % 32u), -26921i), 4162i), vec2<i32>(26027i, func_3(u_input.c)));
    var var_1 = vec3<u32>(~abs(reverseBits(abs(0u))), ~(~_wgslsmith_div_u32(114523u, ~25146u)), 70459u);
    let var_2 = Struct_2(vec3<u32>(reverseBits(~4392u), ~(~0u), 68931u) >> (vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_1.x, 0u), vec2<u32>(21724u, 0u) << (var_1.zz % vec2<u32>(32u))), _wgslsmith_dot_vec3_u32(~vec3<u32>(49153u, var_1.x, var_1.x), reverseBits(vec3<u32>(16858u, 78483u, var_1.x))), _wgslsmith_sub_u32(_wgslsmith_mult_u32(5139u, 13915u), var_1.x | var_1.x)) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-995f, 371f, -229f, -1000f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1988f, 947f, 116f, 424f)))), Struct_1(vec4<f32>(1000f, -228f, 1277f, 796f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-747f, 1197f, 2334f, -197f), vec4<f32>(-451f, 1457f, -691f, -131f), vec4<bool>(false, false, true, false)))))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-311f, 1846f, 1033f, 325f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-351f, 148f, 715f, 1931f)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1735f, 940f, 998f, -1049f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(578f, 760f, 1241f, -1000f))), vec4<f32>(-1231f, -677f, 972f, 369f)))))));
    var var_3 = var_2.d;
    let var_4 = var_2.a.zx;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.b.x), var_3.a.x);
}

fn func_1() -> vec4<bool> {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-131f)))));
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -641f), 653f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-1973f)))))), -841f, any(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))));
    var var_0 = ~4294967295u;
    var var_1 = min(max(firstTrailingBit(0i), firstTrailingBit(u_input.c)), -55687i) >> (~52887u % 32u);
    return select(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(select(false, false, true), true, u_input.a == 1i, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), false)), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false))), all(vec4<bool>(true, true, true, true)) != all(vec2<bool>(true, true))), vec4<bool>(true, !(!any(vec2<bool>(false, false))), true, all(select(vec3<bool>(true, false, false), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true)))), vec4<bool>(true, true, true, true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -115f);
    var var_0 = func_1();
    var_0 = !vec4<bool>(54732u == _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(1u, 0u, 42399u), select(55333u, 424u, true), ~46603u), any(func_1().wyy), false, !var_0.x);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-865f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -454f))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1998f))) - _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(957f, _wgslsmith_f_op_f32(func_2())))));
    var var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-733f * 1000f)), -314f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1030f)), _wgslsmith_f_op_f32(f32(-1f) * -506f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -895f) + _wgslsmith_f_op_f32(trunc(-386f)))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1225f * -1463f)), _wgslsmith_f_op_f32(sign(-357f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1459f, -2288f) - 1295f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(433f, -241f)), _wgslsmith_f_op_f32(-1000f + -697f), true))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(4294967295u, firstLeadingBit(1u)));
}

