struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: bool,
    d: vec4<u32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec2<u32>(64087u, 4246u), vec3<u32>(34009u, 0u, 6376u), false, vec4<u32>(128u, 11123u, 12643u, 1u), 1u), Struct_1(vec2<u32>(0u, 26795u), vec3<u32>(1u, 4294967295u, 37431u), true, vec4<u32>(34749u, 1u, 6911u, 4294967295u), 35015u), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec3<u32>(17578u, 1u, 8952u), true, vec4<u32>(0u, 4294967295u, 6255u, 1u), 61225u), Struct_1(vec2<u32>(10341u, 108619u), vec3<u32>(0u, 49070u, 7567u), false, vec4<u32>(29011u, 4294967295u, 48062u, 0u), 1u), Struct_1(vec2<u32>(13480u, 4294967295u), vec3<u32>(4294967295u, 58565u, 54461u), false, vec4<u32>(59107u, 1u, 91440u, 106625u), 4294967295u), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec3<u32>(11173u, 4294967295u, 36348u), true, vec4<u32>(4294967295u, 1u, 0u, 15866u), 5159u), Struct_1(vec2<u32>(44966u, 804u), vec3<u32>(0u, 0u, 119683u), true, vec4<u32>(28120u, 29788u, 4294967295u, 100689u), 40444u), Struct_1(vec2<u32>(14285u, 13705u), vec3<u32>(0u, 4294967295u, 0u), false, vec4<u32>(15530u, 51141u, 31309u, 111838u), 25703u), Struct_1(vec2<u32>(1u, 21377u), vec3<u32>(67170u, 4294967295u, 61881u), true, vec4<u32>(8014u, 1u, 0u, 65261u), 1u), Struct_1(vec2<u32>(63540u, 4294967295u), vec3<u32>(4294967295u, 5853u, 4294967295u), false, vec4<u32>(1u, 87819u, 46276u, 0u), 0u), Struct_1(vec2<u32>(68024u, 30263u), vec3<u32>(1u, 4294967295u, 13415u), false, vec4<u32>(54586u, 43739u, 27129u, 4294967295u), 1u), Struct_1(vec2<u32>(18960u, 47671u), vec3<u32>(109930u, 76714u, 4294967295u), false, vec4<u32>(1u, 44357u, 47614u, 0u), 34558u), Struct_1(vec2<u32>(1u, 51007u), vec3<u32>(49519u, 23294u, 0u), true, vec4<u32>(82334u, 4294967295u, 75149u, 1u), 15336u), Struct_1(vec2<u32>(1u, 0u), vec3<u32>(0u, 50607u, 4294967295u), true, vec4<u32>(1u, 1u, 0u, 41441u), 47052u), Struct_1(vec2<u32>(53728u, 0u), vec3<u32>(0u, 47390u, 36386u), true, vec4<u32>(4294967295u, 1u, 18193u, 107357u), 42954u), Struct_1(vec2<u32>(44226u, 0u), vec3<u32>(0u, 1u, 7316u), false, vec4<u32>(7015u, 0u, 54190u, 4294967295u), 58481u), Struct_1(vec2<u32>(46404u, 48677u), vec3<u32>(4294967295u, 13935u, 4294967295u), true, vec4<u32>(0u, 4010u, 71304u, 1u), 6084u), Struct_1(vec2<u32>(1u, 98658u), vec3<u32>(11887u, 0u, 82557u), false, vec4<u32>(0u, 26224u, 38700u, 25154u), 45951u), Struct_1(vec2<u32>(0u, 2597u), vec3<u32>(24075u, 67890u, 74471u), true, vec4<u32>(78817u, 20295u, 4294967295u, 1u), 0u), Struct_1(vec2<u32>(26493u, 4294967295u), vec3<u32>(0u, 17358u, 3765u), true, vec4<u32>(72819u, 28618u, 5784u, 37767u), 120367u), Struct_1(vec2<u32>(5782u, 0u), vec3<u32>(20442u, 1u, 66887u), true, vec4<u32>(0u, 71331u, 65943u, 36829u), 1u), Struct_1(vec2<u32>(2735u, 1u), vec3<u32>(1u, 1u, 0u), false, vec4<u32>(55567u, 26754u, 4294967295u, 4294967295u), 1u), Struct_1(vec2<u32>(3055u, 4294967295u), vec3<u32>(4294967295u, 1u, 33837u), true, vec4<u32>(34909u, 0u, 1u, 0u), 25797u), Struct_1(vec2<u32>(16779u, 1u), vec3<u32>(0u, 0u, 22674u), true, vec4<u32>(1u, 4294967295u, 40296u, 4294967295u), 1u), Struct_1(vec2<u32>(0u, 38843u), vec3<u32>(4294967295u, 22126u, 100789u), false, vec4<u32>(95700u, 1u, 27792u, 32201u), 0u), Struct_1(vec2<u32>(0u, 1u), vec3<u32>(0u, 1u, 30476u), false, vec4<u32>(60579u, 62430u, 55933u, 1u), 45060u), Struct_1(vec2<u32>(25013u, 64222u), vec3<u32>(23078u, 1u, 4294967295u), true, vec4<u32>(0u, 12320u, 17817u, 4294967295u), 1u), Struct_1(vec2<u32>(4294967295u, 29714u), vec3<u32>(1u, 0u, 4294967295u), true, vec4<u32>(30998u, 59856u, 1u, 0u), 1u), Struct_1(vec2<u32>(4294967295u, 2867u), vec3<u32>(1u, 1u, 0u), false, vec4<u32>(54731u, 4294967295u, 12046u, 1u), 38432u), Struct_1(vec2<u32>(46389u, 24546u), vec3<u32>(25014u, 16951u, 58019u), false, vec4<u32>(64763u, 1u, 0u, 4294967295u), 4294967295u));

var<private> global2: vec4<bool>;

var<private> global3: array<vec4<bool>, 13>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> u32 {
    var var_0 = !arg_2.c;
    var_0 = false;
    return 4294967295u;
}

fn func_2(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: i32) -> u32 {
    var var_0 = arg_2;
    var var_1 = global3[_wgslsmith_index_u32(~min(~func_3(Struct_1(arg_1.zy, arg_1.xzx, var_0.c, var_0.d, 4294967295u), 112706u, Struct_1(arg_1.zw, var_0.b, global2.x, vec4<u32>(73660u, 1538u, arg_2.e, 23891u), u_input.a)), arg_2.e), 13u)];
    let var_2 = vec4<u32>(countOneBits(arg_2.e), ~firstTrailingBit(19034u), 1u, arg_2.d.x);
    let var_3 = Struct_1(_wgslsmith_clamp_vec2_u32(abs(max(var_0.b.xz, vec2<u32>(54008u, arg_1.x))), ~_wgslsmith_add_vec2_u32(~arg_2.d.ww, _wgslsmith_mult_vec2_u32(vec2<u32>(var_0.d.x, 75255u), vec2<u32>(4294967295u, var_2.x))), abs(_wgslsmith_mod_vec2_u32(vec2<u32>(17342u, var_2.x), _wgslsmith_sub_vec2_u32(arg_2.d.wx, vec2<u32>(8241u, arg_2.d.x))))), vec3<u32>(var_0.a.x, 4294967295u, _wgslsmith_mod_u32(func_3(Struct_1(var_2.yy, vec3<u32>(var_0.d.x, 1u, 1u), true, arg_2.d, 30818u), var_2.x, global1[_wgslsmith_index_u32(20102u, 30u)]), u_input.a)), true, ~(vec4<u32>(~var_2.x, reverseBits(32747u), abs(0u), func_3(Struct_1(arg_1.zz, arg_2.d.zxz, false, vec4<u32>(2880u, arg_1.x, 71234u, 1u), arg_1.x), u_input.a, Struct_1(var_0.a, vec3<u32>(var_2.x, 82019u, 1u), true, vec4<u32>(4294967295u, arg_2.e, u_input.a, u_input.a), 0u))) ^ abs(~arg_2.d)), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(29204u, 49016u, 1u), firstLeadingBit(arg_1.zxx) >> (~vec3<u32>(1u, 0u, var_2.x) % vec3<u32>(32u))), _wgslsmith_mult_u32(select(var_2.x, u_input.a ^ var_2.x, true), 0u)));
    let var_4 = Struct_1(~_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(firstLeadingBit(var_3.d.zx), abs(var_3.d.zx)), vec2<u32>(~1u, max(119703u, arg_2.a.x))), vec3<u32>(_wgslsmith_div_u32(select(1u, min(var_3.e, arg_1.x), all(global3[_wgslsmith_index_u32(arg_1.x, 13u)])), ~1u), _wgslsmith_add_u32(arg_2.d.x, ~32167u) << (_wgslsmith_dot_vec3_u32(vec3<u32>(var_3.a.x, 76527u, arg_2.d.x), arg_2.d.xxw) % 32u), var_3.e | _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, arg_2.e, var_3.a.x, 4294967295u), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.d.x, var_0.e, arg_1.x, 0u), vec4<u32>(u_input.a, 8064u, var_3.d.x, var_0.e), var_0.d))), !(!var_1.x), vec4<u32>(_wgslsmith_div_u32(var_2.x, countOneBits(~var_0.d.x)), 1u, ~(~var_2.x), _wgslsmith_mult_u32(1u, var_2.x)), _wgslsmith_add_u32(reverseBits(_wgslsmith_add_u32(~var_2.x, _wgslsmith_dot_vec2_u32(vec2<u32>(37443u, 2687u), vec2<u32>(var_2.x, arg_2.e)))), ~26571u));
    return (_wgslsmith_add_u32(~_wgslsmith_mult_u32(4294967295u, var_2.x), firstLeadingBit(var_4.d.x) & _wgslsmith_mod_u32(u_input.a, 68997u)) & 0u) & 1u;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(exp2(arg_0));
    global2 = select(global3[_wgslsmith_index_u32(~((4294967295u << (func_2(global2.x, arg_1.d, global1[_wgslsmith_index_u32(11833u, 30u)], -2815i) % 32u)) & ~(~arg_1.d.x)), 13u)], select(!select(select(vec4<bool>(arg_1.c, arg_1.c, global2.x, arg_1.c), global3[_wgslsmith_index_u32(u_input.a, 13u)], false), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(46346u, 46950u), 13u)], any(global2.wx)), vec4<bool>(false, all(select(global2.wzz, global2.wyx, global2.x)), true, true), select(select(!global3[_wgslsmith_index_u32(0u, 13u)], vec4<bool>(arg_1.c, arg_1.c, true, global2.x), global3[_wgslsmith_index_u32(~arg_1.e, 13u)]), !select(global3[_wgslsmith_index_u32(u_input.a, 13u)], global3[_wgslsmith_index_u32(42469u, 13u)], vec4<bool>(false, global2.x, global2.x, global2.x)), global3[_wgslsmith_index_u32(~max(4294967295u, 4294967295u), 13u)])), vec4<bool>(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(f32(-1f) * -1130f)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) + -1560f), true, arg_1.c, ~(~1u) >= min(_wgslsmith_div_u32(arg_1.b.x, arg_1.d.x), ~1u)));
    let var_1 = u_input.a;
    let var_2 = vec2<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + arg_0.x)) * var_0.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2147f - var_0.x) - -271f)));
    return firstLeadingBit(arg_1.a);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: f32, arg_3: vec3<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_2)), _wgslsmith_f_op_f32(f32(-1f) * -1295f), 514f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, arg_2, _wgslsmith_f_op_f32(-1448f - arg_2)))) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_2, 1474f, _wgslsmith_f_op_f32(-809f + _wgslsmith_f_op_f32(min(arg_2, 239f)))))));
    global1 = array<Struct_1, 30>();
    global3 = array<vec4<bool>, 13>();
    let var_1 = _wgslsmith_f_op_vec2_f32(var_0.yz * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.xx) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(589f, -1880f), var_0.yz)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.zz, vec2<f32>(-300f, var_0.x)))))));
    var var_2 = var_0.x;
    return global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, 611f, var_0.x, 109f), vec4<f32>(-619f, var_0.x, 499f, arg_2), global3[_wgslsmith_index_u32(arg_0.a.x, 13u)]))), global1[_wgslsmith_index_u32(func_2(arg_0.c, vec4<u32>(21858u, 28516u, 79016u, 0u) | arg_0.d, global1[_wgslsmith_index_u32(~arg_0.a.x, 30u)], -17450i), 30u)]), vec2<u32>(1u, 42031u) | vec2<u32>(_wgslsmith_div_u32(_wgslsmith_clamp_u32(38477u, 4294967295u, 4294967295u), arg_3.x), _wgslsmith_div_u32(18701u, 42561u ^ arg_3.x))), 30u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(floor(-590f));
    global3 = array<vec4<bool>, 13>();
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1029f), _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(1152f - 134f)));
    var var_2 = func_1(Struct_1(abs(vec2<u32>(4294967295u, u_input.a)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 1u, 14583u), ~vec3<u32>(116u, u_input.a, 4864u)), global2.x, min(vec4<u32>(u_input.a, 1453u, 49211u, u_input.a), vec4<u32>(u_input.a, u_input.a, 17324u, u_input.a)) >> (~(~vec4<u32>(u_input.a, 92882u, u_input.a, u_input.a)) % vec4<u32>(32u)), 42068u), vec4<bool>(true, true, false, _wgslsmith_mult_u32(1u, firstLeadingBit(u_input.a)) <= u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), vec3<u32>(u_input.a, 21209u, ~firstTrailingBit(~u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.b.x, u_input.a) >> (_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.a, 11521u), vec2<u32>(48746u, 0u)) % vec2<u32>(32u)), var_2.a), ~_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(u_input.a, 70404u, 4294967295u, 1u)), reverseBits(var_2.d), vec4<u32>(26612u, u_input.a & u_input.a, 18998u, u_input.a)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-603f)))), _wgslsmith_f_op_f32(-731f * _wgslsmith_f_op_f32(var_0 - 1000f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(659f, 760f, false)), _wgslsmith_div_f32(var_0, var_1.x)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-812f, 253f, _wgslsmith_f_op_f32(abs(var_1.x))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-406f, var_0, var_0) * vec3<f32>(var_1.x, 715f, 1556f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_1.x, -162f) - vec3<f32>(var_1.x, 851f, var_1.x)))))));
}

