struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
    d: vec3<f32>,
}

struct Struct_4 {
    a: f32,
    b: vec3<i32>,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 27>;

var<private> global1: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(Struct_1(59731u, -838f, true, false, i32(-2147483648)), Struct_2(vec2<i32>(975i, -22011i)), 56009u, vec3<f32>(1000f, -1051f, -846f)), Struct_3(Struct_1(4294967295u, 591f, false, true, -2833i), Struct_2(vec2<i32>(2147483647i, 0i)), 78552u, vec3<f32>(631f, 312f, 549f)), Struct_3(Struct_1(4294967295u, 613f, true, true, -4591i), Struct_2(vec2<i32>(1i, -13822i)), 18330u, vec3<f32>(567f, 649f, 824f)), Struct_3(Struct_1(1u, -263f, true, true, 1i), Struct_2(vec2<i32>(-4487i, -1i)), 50584u, vec3<f32>(-1082f, 496f, -775f)), Struct_3(Struct_1(0u, 433f, true, true, 1i), Struct_2(vec2<i32>(2147483647i, 2147483647i)), 0u, vec3<f32>(1128f, 240f, 375f)), Struct_3(Struct_1(0u, 107f, true, true, -1i), Struct_2(vec2<i32>(97270i, 1i)), 1u, vec3<f32>(-951f, -558f, 1000f)), Struct_3(Struct_1(4294967295u, 2146f, true, false, 2147483647i), Struct_2(vec2<i32>(i32(-2147483648), 10486i)), 0u, vec3<f32>(163f, -1524f, -954f)), Struct_3(Struct_1(38608u, -1000f, false, false, -7582i), Struct_2(vec2<i32>(2147483647i, 0i)), 52921u, vec3<f32>(1999f, -1739f, 596f)), Struct_3(Struct_1(0u, 617f, true, true, 2147483647i), Struct_2(vec2<i32>(-44027i, -20246i)), 10767u, vec3<f32>(-590f, -1366f, 461f)), Struct_3(Struct_1(10334u, 1470f, true, false, -1i), Struct_2(vec2<i32>(0i, -58196i)), 72026u, vec3<f32>(1000f, 1243f, -1033f)), Struct_3(Struct_1(28089u, 992f, false, false, -64679i), Struct_2(vec2<i32>(-9221i, 1i)), 12447u, vec3<f32>(208f, 327f, -411f)), Struct_3(Struct_1(18667u, 1056f, true, false, 50411i), Struct_2(vec2<i32>(1i, 43970i)), 4294967295u, vec3<f32>(453f, -825f, -483f)), Struct_3(Struct_1(33785u, 1335f, false, false, 2147483647i), Struct_2(vec2<i32>(1i, 16842i)), 1u, vec3<f32>(873f, -872f, 1750f)), Struct_3(Struct_1(44647u, -1000f, true, false, i32(-2147483648)), Struct_2(vec2<i32>(6293i, 12725i)), 21107u, vec3<f32>(-414f, 706f, -432f)), Struct_3(Struct_1(638u, -146f, false, false, 0i), Struct_2(vec2<i32>(-1i, i32(-2147483648))), 0u, vec3<f32>(-1004f, -150f, 571f)), Struct_3(Struct_1(10043u, -1674f, false, false, -1i), Struct_2(vec2<i32>(1204i, -1i)), 63067u, vec3<f32>(-735f, 109f, -342f)));

var<private> global2: array<vec2<bool>, 7> = array<vec2<bool>, 7>(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: u32, arg_3: Struct_2) -> bool {
    global2 = array<vec2<bool>, 7>();
    var var_0 = global0[_wgslsmith_index_u32(~reverseBits(1u), 27u)];
    var var_1 = global1[_wgslsmith_index_u32(var_0.c, 16u)];
    return !(!(!(!any(vec4<bool>(var_1.a.c, false, var_1.a.c, true)))));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_2) -> Struct_3 {
    var var_0 = Struct_5(vec4<f32>(-871f, 1958f, -112f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -547f) * _wgslsmith_f_op_f32(-798f + -1412f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1117f, -329f)), _wgslsmith_f_op_f32(943f + -942f)))));
    let var_1 = countOneBits(vec3<i32>(arg_2.a.x, firstLeadingBit(1i >> (arg_0.x % 32u)) << (36638u % 32u), -_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a.x, -1i, -102834i, 1099i), ~vec4<i32>(arg_2.a.x, arg_1.a.x, -2147483647i, 0i))));
    let var_2 = Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.a + var_0.a)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.a.x, -360f, var_0.a.x, var_0.a.x), var_0.a)))));
    let var_3 = select(!select(vec2<bool>(func_3(var_2.a.x, false, arg_0.x, arg_2), u_input.a.x < 0u), !global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, arg_0.x), 7u)], global2[_wgslsmith_index_u32(u_input.a.x, 7u)]), !select(vec2<bool>(true, true), vec2<bool>(true, true), global2[_wgslsmith_index_u32(1u, 7u)]), global2[_wgslsmith_index_u32(0u, 7u)]);
    let var_4 = arg_2;
    return Struct_3(Struct_1(select(_wgslsmith_div_u32(70279u, arg_0.x << (4294967295u % 32u)), u_input.a.x, false), 507f, !(!var_3.x), var_3.x | (all(vec2<bool>(var_3.x, var_3.x)) & true), countOneBits(~1i)), Struct_2(-vec2<i32>(i32(-1i) * -34976i, ~var_4.a.x)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(5579u, u_input.a.x, 0u, 0u), vec4<u32>(4294967295u, 1u, 47604u, 53303u))), _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 16485u, 1u, 0u), vec4<u32>(48873u, u_input.a.x, 4294967295u, arg_0.x)), vec4<u32>(1u, 3443u, 1u, 4294967295u), vec4<u32>(arg_0.x, u_input.a.x, 20689u, 4294967295u))), ~(firstLeadingBit(1u) | _wgslsmith_mod_u32(arg_0.x, 0u)), ~50298u), var_0.a.xzw);
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: i32, arg_3: bool) -> bool {
    global1 = array<Struct_3, 16>();
    let var_0 = vec3<u32>(0u, 129795u, abs(firstTrailingBit(_wgslsmith_sub_u32(min(arg_0.a.a, 60228u), 0u))));
    let var_1 = Struct_4(-334f, ~(vec3<i32>(arg_2 >> (4294967295u % 32u), 2147483647i | arg_2, arg_0.a.e ^ arg_0.a.e) >> (abs(~vec3<u32>(1u, arg_1, arg_1)) % vec3<u32>(32u))), func_2(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(~var_0, _wgslsmith_div_vec3_u32(var_0, u_input.a)), vec3<u32>(_wgslsmith_mod_u32(4816u, arg_0.a.a), 0u, _wgslsmith_sub_u32(arg_1, 16813u))), arg_0.b, func_2(~vec3<u32>(0u, 17925u, u_input.a.x), arg_0.b, func_2(~var_0, arg_0.b, Struct_2(arg_0.b.a)).b).b).a, arg_0.d);
    var var_2 = _wgslsmith_mod_vec3_u32(vec3<u32>(0u, _wgslsmith_add_u32(arg_0.a.a, _wgslsmith_sub_u32(var_1.c.a, ~103011u)), ~(~arg_0.a.a >> (arg_1 % 32u))), u_input.a);
    var var_3 = vec4<u32>(var_0.x, _wgslsmith_dot_vec3_u32(select(firstLeadingBit(reverseBits(u_input.a)), countOneBits(vec3<u32>(u_input.a.x, var_1.c.a, arg_0.c) >> (u_input.a % vec3<u32>(32u))), true), vec3<u32>(var_0.x, arg_0.a.a, arg_1)), 29521u, arg_0.a.a);
    return _wgslsmith_dot_vec2_u32(~vec2<u32>(~1u, var_1.c.a), ~select(vec2<u32>(var_3.x, var_0.x), ~var_0.zy, !vec2<bool>(var_1.c.d, var_1.c.c))) > func_2(max(~var_3.www | firstLeadingBit(var_0), max(_wgslsmith_add_vec3_u32(vec3<u32>(33932u, 1158u, 4294967295u), vec3<u32>(4294967295u, var_0.x, 0u)), ~vec3<u32>(var_2.x, 3877u, 58775u))), Struct_2(vec2<i32>(arg_2, 21717i) << (var_0.zx % vec2<u32>(32u))), Struct_2(-arg_0.b.a)).c;
}

fn func_5(arg_0: vec3<bool>) -> Struct_4 {
    global2 = array<vec2<bool>, 7>();
    global1 = array<Struct_3, 16>();
    global2 = array<vec2<bool>, 7>();
    var var_0 = Struct_4(-547f, -select(firstLeadingBit(~vec3<i32>(45559i, -23559i, -8410i)), min(vec3<i32>(0i, 2147483647i, 1i), ~vec3<i32>(-1i, -2147483647i, -1i)), arg_0), Struct_1(max(_wgslsmith_sub_u32(0u, ~4294967295u), u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1321f + 1575f) * 1f), !all(vec2<bool>(arg_0.x, true)), func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2232f))), true, max(1u, _wgslsmith_div_u32(9220u, u_input.a.x)), func_2(select(u_input.a, u_input.a, vec3<bool>(arg_0.x, true, false)), Struct_2(vec2<i32>(2147483647i, -31113i)), Struct_2(vec2<i32>(-2147483647i, -80973i))).b), 2147483647i), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(2433f, -571f, false)))), -1626f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))));
    var var_1 = Struct_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1169f, -713f, var_0.a, 1215f), vec4<f32>(130f, var_0.c.b, var_0.c.b, 126f)))), vec4<f32>(-496f, var_0.c.b, _wgslsmith_f_op_f32(select(var_0.d.x, -2227f, arg_0.x)), _wgslsmith_f_op_f32(min(1000f, var_0.c.b)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_0.c.b, var_0.a, var_0.a)))))));
    return Struct_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.a.x, var_1.a.x), var_0.a))), _wgslsmith_div_vec3_i32(~_wgslsmith_mod_vec3_i32(var_0.b, _wgslsmith_add_vec3_i32(vec3<i32>(var_0.c.e, 15250i, -1i), var_0.b)), vec3<i32>(_wgslsmith_add_i32(~var_0.c.e, 16619i), _wgslsmith_mod_i32(~var_0.b.x, 19921i), var_0.b.x)), func_2(vec3<u32>(var_0.c.a, ~firstLeadingBit(38219u), 4294967295u), Struct_2(vec2<i32>(-33002i, var_0.c.e) << (reverseBits(u_input.a.yz) % vec2<u32>(32u))), Struct_2(~(~var_0.b.xy))).a, var_1.a.yzz);
}

fn func_1() -> u32 {
    let var_0 = func_5(vec3<bool>(true, true, select(true, all(vec3<bool>(true, true, true)), func_4(func_2(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), Struct_2(vec2<i32>(0i, 20733i)), Struct_2(vec2<i32>(-1983i, -74656i))), abs(u_input.a.x), select(1i, 77062i, true), true))));
    var var_1 = func_5(select(vec3<bool>(any(select(vec4<bool>(true, var_0.c.d, false, var_0.c.c), vec4<bool>(var_0.c.d, var_0.c.c, var_0.c.c, true), vec4<bool>(var_0.c.d, var_0.c.c, false, var_0.c.d))), var_0.c.c, !any(vec4<bool>(true, var_0.c.d, var_0.c.d, var_0.c.d))), vec3<bool>(true, true, true), func_5(!(!vec3<bool>(var_0.c.c, var_0.c.c, var_0.c.d))).c.c));
    let var_2 = vec3<bool>(false, !any(select(!vec4<bool>(var_0.c.c, var_0.c.d, false, var_0.c.d), !vec4<bool>(var_1.c.c, var_0.c.d, true, true), !vec4<bool>(false, var_0.c.c, true, false))), any(select(!(!global2[_wgslsmith_index_u32(0u, 7u)]), global2[_wgslsmith_index_u32(~1u, 7u)], !global2[_wgslsmith_index_u32(firstLeadingBit(var_0.c.a), 7u)])));
    let var_3 = Struct_5(vec4<f32>(var_1.c.b, _wgslsmith_f_op_f32(-var_1.d.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(var_1.d.x, var_0.d.x)), _wgslsmith_f_op_f32(1830f - _wgslsmith_f_op_f32(abs(var_0.d.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)))));
    var var_4 = var_1.b;
    return var_1.c.a;
}

fn func_6(arg_0: vec4<u32>, arg_1: Struct_2) -> f32 {
    var var_0 = any(select(select(vec3<bool>(all(vec4<bool>(false, true, false, true)), true, all(vec4<bool>(false, true, true, false))), !select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), !vec3<bool>(true, 21309u < arg_0.x, true), true));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(338f - 1244f)) - -828f), 240f, _wgslsmith_f_op_f32(f32(-1f) * -144f), -243f) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -394f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1493f))), _wgslsmith_f_op_f32(f32(-1f) * -1678f), -1062f));
    var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-280f)))));
    var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -146f), var_1.x, func_2(vec3<u32>(2105u, u_input.a.x, 25736u), arg_1, func_2(vec3<u32>(4294967295u, u_input.a.x, 6157u), Struct_2(vec2<i32>(arg_1.a.x, arg_1.a.x)), Struct_2(arg_1.a)).b).d.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-387f, -102f, _wgslsmith_f_op_f32(var_1.x * 116f), _wgslsmith_f_op_f32(var_1.x + 1570f)) * vec4<f32>(-1240f, var_1.x, -1040f, _wgslsmith_f_op_f32(f32(-1f) * -130f))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(ceil(var_1.x)), -664f, _wgslsmith_f_op_f32(trunc(var_1.x)), _wgslsmith_f_op_f32(-var_1.x)))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false))))));
    global2 = array<vec2<bool>, 7>();
    return var_1.x;
}

fn func_7(arg_0: u32, arg_1: vec2<f32>) -> Struct_5 {
    let var_0 = _wgslsmith_sub_u32(~(~0u), _wgslsmith_add_u32(~firstTrailingBit(4294967295u), 1u) | u_input.a.x);
    global0 = array<Struct_3, 27>();
    global1 = array<Struct_3, 16>();
    var var_1 = func_2(~_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0, 145427u, var_0) ^ vec3<u32>(arg_0, arg_0, 0u), u_input.a), vec3<u32>(1u, ~4294967295u, _wgslsmith_add_u32(30310u, 31777u))), Struct_2(firstLeadingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(0i, -18461i)))), func_2(~(~vec3<u32>(u_input.a.x, arg_0, u_input.a.x)), Struct_2(_wgslsmith_add_vec2_i32(func_5(vec3<bool>(false, true, true)).b.zz, vec2<i32>(1i, 1i))), Struct_2(-func_2(vec3<u32>(arg_0, arg_0, 64805u), Struct_2(vec2<i32>(0i, 4704i)), Struct_2(vec2<i32>(3327i, 0i))).b.a)).b).a;
    global0 = array<Struct_3, 27>();
    return Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-303f, -1727f, -1465f, -1000f), vec4<f32>(arg_1.x, -1097f, 423f, -840f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<bool>, 7>();
    global1 = array<Struct_3, 16>();
    global0 = array<Struct_3, 27>();
    let var_0 = func_7(~(~(~min(28278u, u_input.a.x))), vec2<f32>(1f, _wgslsmith_f_op_f32(func_6(vec4<u32>(func_1(), 23651u, u_input.a.x >> (4294967295u % 32u), 52424u), func_2(u_input.a, Struct_2(vec2<i32>(8506i, 0i)), func_2(vec3<u32>(u_input.a.x, 1u, u_input.a.x), Struct_2(vec2<i32>(64927i, 5052i)), Struct_2(vec2<i32>(-1i, 0i))).b).b))));
    let var_1 = firstTrailingBit(select(-16011i, -reverseBits(1i), func_2(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 64358u, u_input.a.x), u_input.a), func_2(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x) & u_input.a, func_2(vec3<u32>(u_input.a.x, 1u, 1u), Struct_2(vec2<i32>(-2147483647i, 12109i)), Struct_2(vec2<i32>(2147483647i, -9377i))).b, func_2(u_input.a, Struct_2(vec2<i32>(0i, -1i)), Struct_2(vec2<i32>(-2147483647i, -2147483647i))).b).b, Struct_2(_wgslsmith_mod_vec2_i32(vec2<i32>(-16737i, -2147483647i), vec2<i32>(2147483647i, 40182i)))).a.d));
    var var_2 = func_2(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, ~u_input.a.x, ~u_input.a.x), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), select(u_input.a, u_input.a, vec3<bool>(true, false, false)))) | ~u_input.a, func_2(~min(_wgslsmith_sub_vec3_u32(u_input.a, u_input.a), ~vec3<u32>(4294967295u, 0u, u_input.a.x)), Struct_2(func_2(~u_input.a, func_2(u_input.a, Struct_2(vec2<i32>(-2147483647i, var_1)), Struct_2(vec2<i32>(83649i, 525i))).b, func_2(u_input.a, Struct_2(vec2<i32>(var_1, var_1)), Struct_2(vec2<i32>(10165i, var_1))).b).b.a), Struct_2(-max(vec2<i32>(var_1, var_1), vec2<i32>(var_1, var_1)))).b, func_2(u_input.a, func_2(firstTrailingBit(~vec3<u32>(u_input.a.x, 26785u, u_input.a.x)), Struct_2(_wgslsmith_mult_vec2_i32(vec2<i32>(var_1, var_1), vec2<i32>(var_1, 1i))), func_2(vec3<u32>(u_input.a.x, 25516u, u_input.a.x) ^ vec3<u32>(u_input.a.x, u_input.a.x, 1u), Struct_2(vec2<i32>(0i, var_1)), func_2(vec3<u32>(4294967295u, 0u, u_input.a.x), Struct_2(vec2<i32>(1i, var_1)), Struct_2(vec2<i32>(-2147483647i, 0i))).b).b).b, func_2(vec3<u32>(func_5(vec3<bool>(true, true, false)).c.a, 1u, u_input.a.x), func_2(_wgslsmith_sub_vec3_u32(u_input.a, u_input.a), Struct_2(vec2<i32>(var_1, -1i)), Struct_2(vec2<i32>(var_1, 1i))).b, func_2(vec3<u32>(44634u, u_input.a.x, u_input.a.x), Struct_2(vec2<i32>(-6829i, -18840i)), Struct_2(vec2<i32>(var_1, 1i))).b).b).b).a.a;
    let var_3 = vec4<bool>(func_5(vec3<bool>(true, true, true)).c.d, true, u_input.a.x > (_wgslsmith_mod_u32(max(87447u, u_input.a.x), ~1u) << (~(~u_input.a.x) % 32u)), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(-var_1, var_1));
}

