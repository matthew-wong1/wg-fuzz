struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct Struct_5 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<bool> {
    global0 = -2320f;
    let var_0 = 1u;
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-668f, _wgslsmith_f_op_f32(sign(-1689f))))))))));
    global0 = 587f;
    let var_1 = ~u_input.a.x;
    return vec4<bool>(true, true, true, true);
}

fn func_2(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_4) -> f32 {
    var var_0 = vec3<u32>(arg_2.d.x, arg_1.x, ~(~_wgslsmith_clamp_u32(1u, arg_2.d.x, 53597u))) >> (_wgslsmith_sub_vec3_u32(arg_2.d.wwx, _wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(arg_2.d.x, 31405u, 12389u) | vec3<u32>(arg_1.x, arg_2.d.x, arg_2.d.x)), arg_2.d.yxz)) % vec3<u32>(32u));
    let var_1 = ~arg_1.x;
    var var_2 = arg_2;
    var var_3 = !func_3();
    var var_4 = vec2<i32>(50581i, abs(u_input.a.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.a.b.x, -1226f));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_5, arg_2: Struct_3) -> Struct_5 {
    global0 = _wgslsmith_f_op_f32(-arg_1.b.b);
    var var_0 = Struct_2(Struct_1(arg_1.b.a, arg_0.x, _wgslsmith_mod_i32(~u_input.a.x, arg_1.b.c)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_div_f32(arg_0.x, 735f), _wgslsmith_f_op_f32(arg_0.x * 916f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(arg_0.yyw - vec3<f32>(arg_0.x, arg_1.b.b, -422f)))))), Struct_1(!(!arg_2.a) || true, arg_1.b.b, -2147483647i), ~arg_1.a < (arg_1.a << (~1u % 32u)));
    var_0 = Struct_2(var_0.a, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-249f, _wgslsmith_f_op_f32(arg_0.x + 1690f))), var_0.b.x, _wgslsmith_f_op_f32(floor(-861f))), var_0.c, true);
    let var_1 = Struct_3(true && any(select(!vec2<bool>(arg_2.a, arg_1.b.a), vec2<bool>(arg_2.a, arg_2.a), vec2<bool>(arg_1.b.a, arg_2.a))));
    let var_2 = vec3<bool>(!var_1.a & all(!select(vec3<bool>(var_1.a, var_1.a, true), vec3<bool>(arg_1.b.a, arg_1.b.a, false), vec3<bool>(arg_2.a, var_1.a, true))), any(vec4<bool>(var_0.d, arg_1.a <= 4294967295u, true, arg_1.b.a)) || (!arg_1.b.a && all(vec4<bool>(arg_2.a, var_0.d, true, arg_2.a))), select((firstLeadingBit(arg_1.b.c) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(-45213i, var_0.c.c), u_input.a)) > -35260i, arg_2.a, false));
    return Struct_5(34029u, var_0.a);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: Struct_1) -> Struct_5 {
    global0 = 1835f;
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b) + _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(824f, 556f), arg_2.b, arg_2.a))) + 129f)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.b, -2090f))))));
    var var_0 = func_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(~(-2147483647i), ~vec2<u32>(1u, 1u), Struct_4(Struct_2(Struct_1(arg_2.a, -697f, u_input.a.x), vec3<f32>(arg_2.b, arg_2.b, arg_2.b), Struct_1(arg_2.a, 125f, u_input.a.x), false), Struct_3(false), arg_0.yx, vec4<u32>(arg_1.x, 4294967295u, 4294967295u, arg_1.x))))), _wgslsmith_f_op_f32(min(arg_2.b, arg_2.b)), arg_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1991f * -1000f)))), Struct_5(12816u, arg_2), Struct_3(false));
    global0 = _wgslsmith_div_f32(var_0.b.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b - -2205f) - func_4(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.b.b, 665f, var_0.b.b, arg_2.b), vec4<f32>(arg_2.b, 2039f, arg_2.b, -854f)), func_4(vec4<f32>(arg_2.b, 1610f, 146f, -1134f), Struct_5(arg_1.x, Struct_1(var_0.b.a, arg_2.b, u_input.a.x)), Struct_3(var_0.b.a)), Struct_3(var_0.b.a)).b.b))));
    return Struct_5(_wgslsmith_clamp_u32(0u, ~(~var_0.a), var_0.a), Struct_1(!(!(!var_0.b.a)), var_0.b.b, -abs(_wgslsmith_div_i32(arg_0.x, -1i))));
}

fn func_5(arg_0: Struct_5, arg_1: Struct_5, arg_2: bool) -> f32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_1.b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.b - arg_0.b.b) - _wgslsmith_f_op_f32(-arg_0.b.b))))), _wgslsmith_f_op_f32(-1000f * -1258f));
    let var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a, 5855u, _wgslsmith_mod_u32(arg_1.a, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 21337u) << (vec2<u32>(arg_0.a, 8421u) % vec2<u32>(32u)), reverseBits(vec2<u32>(1u, 0u)))), ~select(~arg_0.a, arg_1.a & 7676u, arg_0.a <= 4294967295u)), vec4<u32>(_wgslsmith_dot_vec3_u32(reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, arg_1.a, 0u), vec3<u32>(arg_0.a, arg_1.a, arg_1.a))), _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 72435u, 31887u), vec3<u32>(32467u, arg_0.a, 23099u)), vec3<u32>(arg_0.a, arg_0.a, arg_1.a))), _wgslsmith_add_u32(arg_1.a, ~1u), (arg_1.a << (arg_1.a % 32u)) >> (min(_wgslsmith_add_u32(40320u, arg_0.a), _wgslsmith_mult_u32(arg_1.a, arg_1.a)) % 32u), 42386u));
    var var_2 = Struct_2(arg_0.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-426f, arg_0.b.b, arg_0.b.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1387f, -751f, 160f))))))), func_4(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.b, 216f, -825f, arg_0.b.b) - vec4<f32>(-432f, 397f, arg_0.b.b, arg_0.b.b)))), arg_0, Struct_3(true)).b, func_1(-vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b.c, arg_0.b.c, -1i, -55903i), vec4<i32>(u_input.a.x, -1i, 28966i, 1i)), abs(u_input.a.x), ~(-38036i)), vec3<u32>(max(21186u, 0u), _wgslsmith_dot_vec2_u32(~vec2<u32>(42580u, 48411u), vec2<u32>(var_1, var_1) ^ vec2<u32>(var_1, 4294967295u)), arg_1.a), arg_1.b).b.a);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(350f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2.c.b - arg_0.b.b))), arg_0.b.a)), _wgslsmith_f_op_f32(abs(arg_0.b.b))) + 1897f);
    var_0 = var_3;
    return _wgslsmith_f_op_f32(-arg_1.b.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -141f)) - _wgslsmith_f_op_f32(func_5(func_1(~vec3<i32>(u_input.a.x, -9862i, 0i), select(vec3<u32>(34341u, 1u, 1u), vec3<u32>(0u, 4294967295u, 4294967295u), false), Struct_1(true, 691f, u_input.a.x)), func_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(19798i, u_input.a.x, 2147483647i), vec3<i32>(-44014i, -1i, u_input.a.x), vec3<i32>(u_input.a.x, 1i, 1i)), vec3<u32>(1u, 1u, 1u), Struct_1(true, -961f, 0i)), !all(vec3<bool>(false, true, true))))), 1f, true));
    var var_0 = func_3().zzw;
    var var_1 = Struct_2(Struct_1(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1398f + -773f) - 445f) + _wgslsmith_f_op_f32(max(320f, -1038f))), -9839i ^ (u_input.a.x << (~4294967295u % 32u))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(298f, -141f, 886f), vec3<f32>(-1292f, 939f, -1669f))), vec3<f32>(_wgslsmith_f_op_f32(-1676f * _wgslsmith_div_f32(382f, -189f)), _wgslsmith_f_op_f32(exp2(func_4(vec4<f32>(500f, 384f, -1607f, -125f), Struct_5(4294967295u, Struct_1(false, 262f, u_input.a.x)), Struct_3(var_0.x)).b.b)), _wgslsmith_f_op_f32(-392f - _wgslsmith_f_op_f32(f32(-1f) * -333f)))), Struct_1(!(!(var_0.x | false)), 1000f, abs(~1i)), true);
    var var_2 = Struct_4(Struct_2(Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-257f, var_1.c.b)) * _wgslsmith_f_op_f32(round(var_1.a.b))), select(u_input.a.x, abs(u_input.a.x), var_0.x)), var_1.b, func_1(vec3<i32>(_wgslsmith_mod_i32(-9057i, var_1.c.c), u_input.a.x, max(1465i, u_input.a.x)), firstTrailingBit(abs(vec3<u32>(5452u, 31874u, 37086u))), func_1(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, 8514i, -18340i), vec3<i32>(u_input.a.x, -3895i, var_1.a.c)), abs(vec3<u32>(0u, 14556u, 39928u)), var_1.c).b).b, func_3().x), Struct_3(select((false || var_0.x) | !var_0.x, !var_1.d, !(-618f > var_1.c.b))), u_input.a, firstLeadingBit(_wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(6953u, 24547u, 0u, 0u)), vec4<u32>(0u, 0u, firstLeadingBit(18235u), reverseBits(16530u)), vec4<u32>(1u, 1u, 1u, 1u))));
    let var_3 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(var_1.c.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.a.b) + var_1.b) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(var_1.b, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-462f, 282f, 611f))))))));
}

