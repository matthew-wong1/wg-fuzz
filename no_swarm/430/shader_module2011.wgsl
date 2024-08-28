struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: u32,
    d: vec4<bool>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: bool,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec4<i32>,
    d: vec3<u32>,
    e: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: vec2<u32>,
    d: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: array<Struct_5, 12> = array<Struct_5, 12>(Struct_5(Struct_1(vec3<u32>(9762u, 72222u, 1u), vec2<bool>(false, false), 38883u, vec4<bool>(false, true, true, true), vec3<f32>(-168f, -2605f, -830f)), Struct_1(vec3<u32>(8903u, 0u, 12055u), vec2<bool>(false, false), 5401u, vec4<bool>(false, false, true, true), vec3<f32>(265f, -253f, 743f)), vec2<u32>(1u, 60u), vec3<i32>(-92536i, i32(-2147483648), 2147483647i)), Struct_5(Struct_1(vec3<u32>(4294967295u, 2509u, 24197u), vec2<bool>(false, false), 39223u, vec4<bool>(false, false, true, false), vec3<f32>(179f, -536f, -1754f)), Struct_1(vec3<u32>(10234u, 26823u, 1u), vec2<bool>(false, true), 97509u, vec4<bool>(true, false, false, true), vec3<f32>(-906f, 108f, -559f)), vec2<u32>(35038u, 93258u), vec3<i32>(i32(-2147483648), i32(-2147483648), 10979i)), Struct_5(Struct_1(vec3<u32>(36359u, 4294967295u, 4294967295u), vec2<bool>(true, true), 0u, vec4<bool>(true, true, false, false), vec3<f32>(132f, -1122f, -1024f)), Struct_1(vec3<u32>(4294967295u, 14064u, 0u), vec2<bool>(false, true), 39371u, vec4<bool>(true, true, true, true), vec3<f32>(1000f, -370f, 1812f)), vec2<u32>(0u, 4294967295u), vec3<i32>(22515i, 0i, 1i)), Struct_5(Struct_1(vec3<u32>(1u, 0u, 4294967295u), vec2<bool>(false, false), 73372u, vec4<bool>(true, true, true, false), vec3<f32>(-1253f, 1391f, -372f)), Struct_1(vec3<u32>(42793u, 25816u, 850u), vec2<bool>(false, false), 47470u, vec4<bool>(true, false, true, false), vec3<f32>(779f, 1277f, -1068f)), vec2<u32>(43276u, 78931u), vec3<i32>(-15111i, 0i, 0i)), Struct_5(Struct_1(vec3<u32>(4294967295u, 1u, 1u), vec2<bool>(true, true), 28948u, vec4<bool>(true, false, false, true), vec3<f32>(572f, -451f, 1939f)), Struct_1(vec3<u32>(0u, 1u, 20544u), vec2<bool>(true, true), 6171u, vec4<bool>(false, true, true, true), vec3<f32>(698f, -1000f, -1477f)), vec2<u32>(70788u, 31454u), vec3<i32>(i32(-2147483648), 0i, 0i)), Struct_5(Struct_1(vec3<u32>(45259u, 4294967295u, 6691u), vec2<bool>(false, true), 68832u, vec4<bool>(false, false, true, true), vec3<f32>(2165f, 2472f, -705f)), Struct_1(vec3<u32>(1u, 0u, 18440u), vec2<bool>(false, false), 1u, vec4<bool>(true, true, false, false), vec3<f32>(174f, -1000f, 1153f)), vec2<u32>(37392u, 31141u), vec3<i32>(1i, 7670i, 2147483647i)), Struct_5(Struct_1(vec3<u32>(0u, 1u, 21236u), vec2<bool>(true, true), 4294967295u, vec4<bool>(true, false, false, true), vec3<f32>(718f, 322f, 189f)), Struct_1(vec3<u32>(89989u, 40798u, 1u), vec2<bool>(true, false), 1u, vec4<bool>(false, false, false, true), vec3<f32>(-1527f, 1000f, 181f)), vec2<u32>(54650u, 4294967295u), vec3<i32>(-1i, -14414i, -1947i)), Struct_5(Struct_1(vec3<u32>(46910u, 4294967295u, 0u), vec2<bool>(false, false), 15793u, vec4<bool>(true, true, false, false), vec3<f32>(237f, 1008f, 1296f)), Struct_1(vec3<u32>(87954u, 695u, 1u), vec2<bool>(false, false), 1u, vec4<bool>(true, false, false, true), vec3<f32>(-865f, -1137f, 2099f)), vec2<u32>(0u, 53338u), vec3<i32>(-724i, -20913i, -1i)), Struct_5(Struct_1(vec3<u32>(139171u, 19993u, 17110u), vec2<bool>(true, true), 19066u, vec4<bool>(true, true, false, false), vec3<f32>(763f, -1793f, 461f)), Struct_1(vec3<u32>(44797u, 27051u, 23968u), vec2<bool>(true, true), 4294967295u, vec4<bool>(true, true, true, false), vec3<f32>(886f, -160f, 160f)), vec2<u32>(4294967295u, 1u), vec3<i32>(0i, 21256i, 2147483647i)), Struct_5(Struct_1(vec3<u32>(24249u, 55189u, 20168u), vec2<bool>(false, true), 0u, vec4<bool>(false, true, false, false), vec3<f32>(-1187f, 712f, 1166f)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 67203u), vec2<bool>(true, true), 4294967295u, vec4<bool>(true, true, true, false), vec3<f32>(1822f, -210f, -107f)), vec2<u32>(1u, 1u), vec3<i32>(26111i, 0i, -29181i)), Struct_5(Struct_1(vec3<u32>(46901u, 22668u, 24126u), vec2<bool>(true, true), 1u, vec4<bool>(false, false, false, false), vec3<f32>(1000f, -506f, -1184f)), Struct_1(vec3<u32>(1u, 85196u, 0u), vec2<bool>(false, true), 92390u, vec4<bool>(true, true, true, false), vec3<f32>(273f, 764f, 1500f)), vec2<u32>(1u, 1u), vec3<i32>(32829i, 2147483647i, -18478i)), Struct_5(Struct_1(vec3<u32>(0u, 1u, 76349u), vec2<bool>(false, true), 93291u, vec4<bool>(false, true, true, true), vec3<f32>(1223f, 470f, 673f)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 1u), vec2<bool>(false, true), 53491u, vec4<bool>(false, false, true, true), vec3<f32>(-1352f, -659f, 201f)), vec2<u32>(33988u, 1u), vec3<i32>(49507i, -73433i, 0i)));

var<private> global2: array<f32, 24>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>) -> vec2<bool> {
    let var_0 = Struct_3(~4294967295u, arg_0, u_input.b, vec3<u32>(_wgslsmith_mult_u32(max(_wgslsmith_div_u32(u_input.d.x, arg_0.c), 1u), ~arg_0.c), 1u, ~u_input.c.x << (4294967295u % 32u)), vec2<bool>(true, u_input.d.x < u_input.c.x));
    let var_1 = min(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, arg_0.c), _wgslsmith_add_vec3_u32(vec3<u32>(0u, 4294967295u, u_input.d.x), u_input.c.yzz)), arg_0.a.x), u_input.d) ^ ~vec2<u32>(var_0.d.x, ~arg_0.c);
    return !(!(!select(vec2<bool>(false, var_0.b.b.x), select(var_0.b.d.yx, vec2<bool>(false, true), true), !var_0.e)));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<bool>) -> Struct_1 {
    global0 = _wgslsmith_add_u32(~(~u_input.d.x), ~11711u);
    global0 = u_input.d.x;
    global1 = array<Struct_5, 12>();
    global2 = array<f32, 24>();
    var var_0 = Struct_2(0u, u_input.b.xxz, arg_1.x, Struct_1(u_input.c.zwx, !func_3(Struct_1(vec3<u32>(u_input.d.x, 0u, u_input.d.x), arg_1, 13215u, vec4<bool>(arg_1.x, false, false, true), vec3<f32>(-957f, global2[_wgslsmith_index_u32(2777u, 24u)], global2[_wgslsmith_index_u32(9343u, 24u)])), select(vec3<bool>(arg_1.x, arg_1.x, true), vec3<bool>(false, true, arg_1.x), arg_1.x)), 4294967295u, select(!select(vec4<bool>(true, false, true, arg_1.x), vec4<bool>(arg_1.x, true, false, true), arg_1.x), !select(vec4<bool>(true, false, false, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, false, true)), arg_1.x), arg_0), _wgslsmith_div_vec2_u32(vec2<u32>(~55618u, u_input.d.x ^ u_input.d.x), min(u_input.d, vec2<u32>(52001u, 21876u))) | _wgslsmith_div_vec2_u32(~abs(vec2<u32>(u_input.d.x, 0u)), vec2<u32>(0u, 38705u) << (abs(u_input.d) % vec2<u32>(32u))));
    return var_0.d;
}

fn func_4(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_5) -> vec2<bool> {
    var var_0 = reverseBits(28482u);
    var var_1 = func_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f)))), 164f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(arg_3.b.e.x)), _wgslsmith_f_op_f32(f32(-1f) * -252f), arg_2.e.x)), !func_2(arg_3.b.e, arg_3.a.d.zy).b).d.yw).e.yx;
    var var_2 = vec4<u32>(_wgslsmith_mod_u32(~(arg_1.x << (1u % 32u)) & ~arg_3.c.x, max(_wgslsmith_sub_u32(61988u, 0u), arg_3.b.c)), ~(~_wgslsmith_clamp_u32(24325u, countOneBits(13947u), select(arg_3.c.x, 4294967295u, arg_2.b.x))), ~(~abs(49878u)), arg_1.x);
    var var_3 = arg_2.d;
    var var_4 = false;
    return vec2<bool>(arg_2.d.x, false);
}

fn func_1(arg_0: u32, arg_1: Struct_5, arg_2: Struct_3, arg_3: bool) -> Struct_3 {
    let var_0 = Struct_1(arg_2.d, !vec2<bool>(!(!arg_1.b.b.x), select(!arg_3, all(arg_1.a.d.zzz), arg_2.e.x)), ~0u, !vec4<bool>((i32(-1i) * -1i) != _wgslsmith_mult_i32(610i, arg_1.d.x), !(!arg_2.b.b.x), arg_3, true), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -783f))) + 1955f), 1702f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.d.x, 24u)]) * 2955f)));
    global0 = abs(1u);
    global0 = _wgslsmith_add_u32(4085u, firstLeadingBit(42455u));
    let var_1 = Struct_1(_wgslsmith_clamp_vec3_u32(max(var_0.a, abs(_wgslsmith_div_vec3_u32(var_0.a, arg_2.b.a))), arg_2.d << (~var_0.a % vec3<u32>(32u)), ~vec3<u32>(4294967295u, arg_0, u_input.c.x) ^ arg_1.b.a), !(!func_4(_wgslsmith_f_op_f32(-arg_1.b.e.x), countOneBits(u_input.c), func_2(vec3<f32>(-2190f, arg_1.b.e.x, global2[_wgslsmith_index_u32(4294967295u, 24u)]), arg_1.b.b), Struct_5(Struct_1(arg_2.d, vec2<bool>(false, false), 4294967295u, arg_2.b.d, arg_1.b.e), Struct_1(arg_2.b.a, vec2<bool>(true, true), u_input.d.x, vec4<bool>(arg_2.e.x, var_0.b.x, false, var_0.b.x), vec3<f32>(449f, 290f, 293f)), vec2<u32>(var_0.c, var_0.c), arg_1.d))), 5998u, arg_2.b.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(arg_2.b.e)), _wgslsmith_f_op_vec3_f32(var_0.e * vec3<f32>(global2[_wgslsmith_index_u32(arg_1.a.a.x, 24u)], global2[_wgslsmith_index_u32(arg_0, 24u)], -1000f))))));
    var var_2 = true;
    return Struct_3(75555u, Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(81540u, ~arg_1.c.x, firstLeadingBit(arg_1.c.x)), vec3<u32>(u_input.c.x & u_input.c.x, _wgslsmith_clamp_u32(arg_2.d.x, 0u, arg_2.d.x), ~12403u)), vec2<bool>((u_input.b.x >= arg_2.c.x) || true, abs(arg_2.c.x) == _wgslsmith_add_i32(-1i, 2457i)), _wgslsmith_div_u32(~var_0.c, u_input.c.x), vec4<bool>(func_2(_wgslsmith_f_op_vec3_f32(select(arg_1.a.e, vec3<f32>(arg_2.b.e.x, global2[_wgslsmith_index_u32(36129u, 24u)], arg_1.b.e.x), false)), !vec2<bool>(true, var_0.d.x)).d.x, false, true, arg_3), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1109f, arg_2.b.e.x, arg_1.a.e.x) + _wgslsmith_div_vec3_f32(vec3<f32>(522f, -180f, var_0.e.x), var_1.e)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_2.b.e.x, 268f, 130f)))))), arg_2.c, var_0.a, func_4(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(arg_0, var_0.a.x), 24u)], _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-350f - -530f), -1053f, var_1.d.x && true))), select(vec4<u32>(_wgslsmith_div_u32(arg_0, 42509u), 4294967295u, var_1.a.x, u_input.c.x), u_input.c, false), Struct_1(firstLeadingBit(var_1.a), arg_1.a.b, abs(79411u), !select(vec4<bool>(arg_1.a.b.x, arg_2.e.x, true, false), vec4<bool>(true, var_1.d.x, var_1.d.x, var_1.d.x), true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(43579u, 24u)], -539f, -1204f) + vec3<f32>(var_1.e.x, arg_1.b.e.x, 129f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(308f, -295f, -1000f) + arg_1.b.e))), Struct_5(Struct_1(~var_1.a, select(var_0.d.zx, vec2<bool>(true, arg_3), arg_2.e.x), ~arg_1.a.a.x, vec4<bool>(false, arg_2.e.x, false, arg_3), _wgslsmith_f_op_vec3_f32(round(arg_1.b.e))), var_0, arg_1.c, -arg_2.c.xzz | (arg_1.d >> (var_1.a % vec3<u32>(32u))))));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: Struct_1) -> u32 {
    global0 = ~(~func_1(select(countOneBits(86231u), 4294967295u, true), global1[_wgslsmith_index_u32(~firstTrailingBit(arg_2.x), 12u)], func_1(arg_1.b.a.x, global1[_wgslsmith_index_u32(0u, 12u)], arg_1, any(vec3<bool>(true, false, arg_0.x))), arg_1.e.x).d.x);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(arg_3.a.x, 24u)] * arg_1.b.e.x))))));
    var_0 = arg_3.e.x;
    return _wgslsmith_add_u32(arg_3.c, _wgslsmith_dot_vec2_u32(~(reverseBits(vec2<u32>(5906u, arg_1.d.x)) >> (arg_2 % vec2<u32>(32u))), ~arg_3.a.xy << (_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 509u), min(vec2<u32>(51256u, arg_2.x), vec2<u32>(77902u, u_input.c.x))) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_mod_u32(_wgslsmith_add_u32(func_5(vec4<bool>(true, true, true, true), func_1(u_input.d.x, global1[_wgslsmith_index_u32(~4294967295u, 12u)], Struct_3(28056u, Struct_1(u_input.c.wxz, vec2<bool>(true, false), u_input.d.x, vec4<bool>(false, false, false, false), vec3<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 24u)], 974f, 254f)), vec4<i32>(u_input.b.x, 28850i, 33297i, u_input.e), u_input.c.wyz, vec2<bool>(true, false)), true), ~vec2<u32>(55848u, u_input.c.x), func_1(_wgslsmith_mod_u32(u_input.d.x, 0u), Struct_5(Struct_1(u_input.c.wzw, vec2<bool>(false, false), 4294967295u, vec4<bool>(false, false, false, true), vec3<f32>(425f, global2[_wgslsmith_index_u32(u_input.d.x, 24u)], 651f)), Struct_1(vec3<u32>(u_input.d.x, u_input.d.x, 19115u), vec2<bool>(false, true), u_input.d.x, vec4<bool>(true, false, true, true), vec3<f32>(805f, global2[_wgslsmith_index_u32(19677u, 24u)], -524f)), u_input.c.ww, u_input.b.zxw), func_1(1u, Struct_5(Struct_1(u_input.c.zww, vec2<bool>(false, false), u_input.c.x, vec4<bool>(false, true, false, false), vec3<f32>(223f, -2433f, 959f)), Struct_1(u_input.c.yxy, vec2<bool>(false, true), u_input.d.x, vec4<bool>(true, false, false, true), vec3<f32>(-270f, -1000f, -1126f)), u_input.c.wz, vec3<i32>(-20088i, 1i, u_input.e)), Struct_3(u_input.d.x, Struct_1(u_input.c.yww, vec2<bool>(false, false), 6312u, vec4<bool>(true, false, false, false), vec3<f32>(-285f, global2[_wgslsmith_index_u32(1192u, 24u)], global2[_wgslsmith_index_u32(u_input.d.x, 24u)])), u_input.b, u_input.c.wzx, vec2<bool>(false, true)), false), any(vec2<bool>(true, true))).b), u_input.d.x), ~(~113891u));
    let var_0 = false;
    global2 = array<f32, 24>();
    let var_1 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-862f, -2069f, -557f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1592f, 1182f, 814f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(452f, 486f, -486f) - vec3<f32>(-504f, -155f, global2[_wgslsmith_index_u32(15716u, 24u)]))), any(!vec3<bool>(var_0, var_0, false))))), !func_4(1f, ~firstLeadingBit(vec4<u32>(u_input.c.x, 9433u, u_input.d.x, 48591u)), Struct_1(_wgslsmith_mod_vec3_u32(u_input.c.zwy, vec3<u32>(0u, 30649u, u_input.c.x)), vec2<bool>(true, true), ~u_input.d.x, func_1(48515u, Struct_5(Struct_1(vec3<u32>(u_input.c.x, u_input.d.x, u_input.c.x), vec2<bool>(true, false), 1u, vec4<bool>(true, true, var_0, var_0), vec3<f32>(global2[_wgslsmith_index_u32(1u, 24u)], 200f, global2[_wgslsmith_index_u32(94978u, 24u)])), Struct_1(vec3<u32>(u_input.c.x, 4294967295u, u_input.d.x), vec2<bool>(var_0, var_0), u_input.c.x, vec4<bool>(var_0, var_0, var_0, true), vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 24u)], -614f, global2[_wgslsmith_index_u32(u_input.c.x, 24u)])), u_input.c.yy, vec3<i32>(u_input.e, u_input.a, -2147483647i)), Struct_3(37092u, Struct_1(vec3<u32>(u_input.c.x, 19309u, u_input.c.x), vec2<bool>(var_0, var_0), 28529u, vec4<bool>(true, true, var_0, var_0), vec3<f32>(global2[_wgslsmith_index_u32(26345u, 24u)], global2[_wgslsmith_index_u32(u_input.c.x, 24u)], global2[_wgslsmith_index_u32(u_input.d.x, 24u)])), u_input.b, vec3<u32>(1014u, u_input.c.x, 23267u), vec2<bool>(var_0, false)), false).b.d, _wgslsmith_f_op_vec3_f32(vec3<f32>(-613f, global2[_wgslsmith_index_u32(u_input.d.x, 24u)], global2[_wgslsmith_index_u32(u_input.d.x, 24u)]) - vec3<f32>(global2[_wgslsmith_index_u32(0u, 24u)], -100f, global2[_wgslsmith_index_u32(4294967295u, 24u)]))), global1[_wgslsmith_index_u32(0u, 12u)]));
    let var_2 = _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(firstLeadingBit(15316u), 24u)] + _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_1.c, 24u)]));
    var var_3 = func_1(reverseBits(1u), global1[_wgslsmith_index_u32(var_1.c | ((~51488u >> (var_1.c % 32u)) ^ firstTrailingBit(57060u)), 12u)], func_1(u_input.c.x, Struct_5(func_1(func_1(68926u, global1[_wgslsmith_index_u32(1u, 12u)], Struct_3(1u, Struct_1(u_input.c.xxx, vec2<bool>(var_0, false), var_1.a.x, vec4<bool>(true, false, var_0, var_1.b.x), vec3<f32>(global2[_wgslsmith_index_u32(var_1.a.x, 24u)], var_2, -1749f)), vec4<i32>(13148i, -21981i, u_input.a, -42214i), vec3<u32>(u_input.c.x, var_1.c, var_1.a.x), vec2<bool>(var_1.b.x, true)), var_0).b.a.x, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(var_1.c, u_input.d.x), 12u)], func_1(4294967295u, Struct_5(var_1, Struct_1(vec3<u32>(1u, 16024u, var_1.a.x), var_1.d.wy, var_1.a.x, vec4<bool>(true, var_0, var_1.b.x, var_0), vec3<f32>(global2[_wgslsmith_index_u32(var_1.a.x, 24u)], var_2, -242f)), vec2<u32>(16538u, 4294967295u), u_input.b.yyw), Struct_3(u_input.c.x, var_1, u_input.b, vec3<u32>(40792u, u_input.d.x, 4294967295u), var_1.d.xz), var_1.b.x), u_input.e > 0i).b, Struct_1(~vec3<u32>(4294967295u, 26345u, 29785u), !vec2<bool>(var_1.b.x, var_1.d.x), ~4294967295u, var_1.d, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.e.x, var_2, global2[_wgslsmith_index_u32(u_input.c.x, 24u)]) + var_1.e)), vec2<u32>(u_input.d.x, var_1.c) << (~var_1.a.yx % vec2<u32>(32u)), func_1(~var_1.a.x, Struct_5(var_1, Struct_1(var_1.a, vec2<bool>(true, var_0), 60844u, var_1.d, vec3<f32>(321f, -589f, -493f)), var_1.a.zy, vec3<i32>(u_input.e, u_input.b.x, u_input.e)), func_1(var_1.c, global1[_wgslsmith_index_u32(var_1.a.x, 12u)], Struct_3(var_1.c, Struct_1(u_input.c.zxy, vec2<bool>(var_1.d.x, var_1.b.x), var_1.a.x, vec4<bool>(false, var_0, false, var_1.b.x), vec3<f32>(-135f, var_1.e.x, global2[_wgslsmith_index_u32(var_1.a.x, 24u)])), u_input.b, u_input.c.wwz, var_1.d.zz), var_0), true).c.yyy), func_1(u_input.c.x << (func_2(var_1.e, var_1.b).c % 32u), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(func_1(var_1.c, global1[_wgslsmith_index_u32(u_input.d.x, 12u)], Struct_3(12907u, Struct_1(vec3<u32>(var_1.c, 0u, var_1.a.x), var_1.d.yw, 0u, vec4<bool>(var_0, false, var_1.d.x, false), vec3<f32>(1965f, -958f, var_1.e.x)), vec4<i32>(-34167i, 1i, u_input.a, u_input.a), vec3<u32>(0u, 23267u, 4294967295u), vec2<bool>(true, var_1.b.x)), true).a, max(u_input.d.x, 29717u)), 12u)], func_1(~11674u, Struct_5(var_1, var_1, vec2<u32>(4294967295u, var_1.c), vec3<i32>(0i, -2147483647i, u_input.a)), Struct_3(4294967295u, Struct_1(vec3<u32>(var_1.c, u_input.c.x, 4294967295u), var_1.d.xx, u_input.c.x, var_1.d, var_1.e), u_input.b, var_1.a, vec2<bool>(var_1.d.x, var_1.d.x)), var_1.e.x < var_1.e.x), !var_1.b.x), any(select(var_1.d, !vec4<bool>(var_1.d.x, true, true, var_1.b.x), select(vec4<bool>(var_1.b.x, var_1.d.x, var_0, false), vec4<bool>(false, true, true, true), vec4<bool>(false, var_0, true, var_0))))), true);
    let x = u_input.a;
    s_output = StorageBuffer(-func_1(~firstTrailingBit(u_input.c.x), global1[_wgslsmith_index_u32(4294967295u, 12u)], func_1(1u, global1[_wgslsmith_index_u32(func_2(vec3<f32>(var_1.e.x, 1000f, -2589f), var_1.d.wx).c, 12u)], Struct_3(u_input.c.x, Struct_1(vec3<u32>(u_input.c.x, 1u, var_1.a.x), vec2<bool>(true, true), 72510u, var_3.b.d, var_3.b.e), vec4<i32>(-19623i, var_3.c.x, -40765i, 33530i), u_input.c.zwx, vec2<bool>(var_1.d.x, false)), true), true).c.ww, abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(func_1(0u, global1[_wgslsmith_index_u32(var_3.b.c, 12u)], Struct_3(var_1.c, Struct_1(vec3<u32>(46196u, var_1.c, 414u), var_3.b.b, 4294967295u, vec4<bool>(true, true, var_0, true), var_3.b.e), vec4<i32>(1i, u_input.b.x, u_input.a, var_3.c.x), var_1.a, vec2<bool>(var_1.b.x, var_1.d.x)), true).b.a.x, ~0u, var_3.a), ~(~vec3<u32>(var_3.a, 1u, 1u)), vec3<u32>(_wgslsmith_clamp_u32(1u, u_input.d.x, 11292u), _wgslsmith_div_u32(u_input.c.x, 78043u), var_3.d.x))), vec3<i32>(func_1(var_3.d.x, Struct_5(var_1, Struct_1(vec3<u32>(var_3.a, 53599u, 4294967295u), var_1.b, var_1.c, var_3.b.d, vec3<f32>(2381f, var_1.e.x, 1714f)), vec2<u32>(var_1.a.x, 0u), vec3<i32>(u_input.a, -2147483647i, var_3.c.x)), func_1(_wgslsmith_mod_u32(var_1.a.x, u_input.d.x), global1[_wgslsmith_index_u32(func_2(var_3.b.e, vec2<bool>(true, var_3.b.b.x)).a.x, 12u)], Struct_3(75735u, var_1, var_3.c, vec3<u32>(1u, 75520u, var_3.a), var_1.b), !var_3.e.x), var_3.b.b.x).c.x, _wgslsmith_sub_i32(func_1(firstTrailingBit(4294967295u), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.d.x, u_input.d.x), 12u)], func_1(var_3.a, global1[_wgslsmith_index_u32(4294967295u, 12u)], Struct_3(var_3.b.c, Struct_1(vec3<u32>(0u, u_input.c.x, var_3.b.a.x), var_3.e, 32535u, vec4<bool>(var_3.b.d.x, var_3.b.d.x, var_1.d.x, true), vec3<f32>(var_1.e.x, -1000f, 104f)), u_input.b, var_1.a, var_1.b), true), var_3.e.x).c.x, -41417i), -(u_input.b.x ^ _wgslsmith_mult_i32(1i, -20062i))), var_1.e.x, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-731f, -159f, 1983f, -859f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(var_3.b.a.x, 24u)], -1362f, var_2, 1652f) - vec4<f32>(var_3.b.e.x, -1149f, 585f, 1459f)))))), vec4<f32>(_wgslsmith_div_f32(var_1.e.x, _wgslsmith_f_op_f32(exp2(var_1.e.x))), -195f, _wgslsmith_f_op_f32(f32(-1f) * -774f), _wgslsmith_f_op_f32(step(func_2(vec3<f32>(986f, var_1.e.x, 1599f), vec2<bool>(var_3.e.x, true)).e.x, var_3.b.e.x))))));
}

