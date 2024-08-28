struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<bool>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<u32>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
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

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(32963u, false, vec2<bool>(true, false), 579f, true), Struct_1(38718u, true, vec2<bool>(true, false), 896f, true), Struct_1(25315u, true, vec2<bool>(true, true), -111f, true), Struct_1(23181u, true, vec2<bool>(false, false), -1769f, false));

var<private> global1: vec4<i32> = vec4<i32>(33789i, 17192i, 23269i, 0i);

var<private> global2: array<vec4<i32>, 31>;

var<private> global3: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(4294967295u, false, vec2<bool>(false, true), 433f, false), Struct_1(0u, true, vec2<bool>(true, true), -1205f, true), Struct_1(38758u, false, vec2<bool>(true, false), -612f, true), Struct_1(93954u, false, vec2<bool>(false, false), -618f, true), Struct_1(1u, true, vec2<bool>(true, true), 447f, false), Struct_1(4294967295u, true, vec2<bool>(true, false), 971f, true), Struct_1(1u, false, vec2<bool>(true, true), -546f, true), Struct_1(4294967295u, false, vec2<bool>(true, true), 395f, false), Struct_1(1u, true, vec2<bool>(true, true), 1000f, false), Struct_1(1u, false, vec2<bool>(false, false), 128f, false), Struct_1(1u, true, vec2<bool>(true, false), -1905f, false), Struct_1(4294967295u, false, vec2<bool>(false, true), 135f, false), Struct_1(4294967295u, true, vec2<bool>(false, true), -935f, true), Struct_1(18423u, true, vec2<bool>(true, false), -454f, false), Struct_1(53675u, false, vec2<bool>(true, false), -199f, true), Struct_1(4294967295u, false, vec2<bool>(true, true), 770f, true), Struct_1(29433u, true, vec2<bool>(false, true), 926f, true), Struct_1(28663u, false, vec2<bool>(true, false), -624f, true), Struct_1(63532u, true, vec2<bool>(false, false), 1935f, false), Struct_1(0u, true, vec2<bool>(true, true), -812f, true));

var<private> global4: array<Struct_1, 29>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: bool) -> bool {
    var var_0 = reverseBits(-(~min(global1.x, global1.x) << (4294967295u % 32u)));
    let var_1 = Struct_1(~_wgslsmith_sub_u32(~73725u, select(arg_1.x, arg_1.x, arg_2)), false, vec2<bool>(any(!select(vec2<bool>(false, false), vec2<bool>(arg_2, true), true)), all(vec2<bool>(all(vec2<bool>(false, true)), arg_2))), _wgslsmith_f_op_f32(arg_0.x * arg_0.x), all(vec4<bool>(true || select(false, arg_2, true), true, any(vec2<bool>(true, true)), !(arg_2 & true))));
    global2 = array<vec4<i32>, 31>();
    let var_2 = Struct_1(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-var_1.d))) < 1194f, vec2<bool>(!arg_2, !(global1.x > 25563i)), _wgslsmith_f_op_f32(arg_0.x * 1999f), !(~_wgslsmith_clamp_u32(arg_1.x, 13339u, var_1.a) > 1u));
    let var_3 = u_input.a.wx;
    return any(select(vec2<bool>(all(vec4<bool>(false, var_2.c.x, var_1.b, false)), true), var_1.c, vec2<bool>(var_1.b, true))) & true;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_2) -> bool {
    global4 = array<Struct_1, 29>();
    let var_0 = Struct_2(all(vec4<bool>(any(select(vec4<bool>(false, arg_1.b.e, arg_2.c.x, false), vec4<bool>(arg_0.b.e, false, true, true), vec4<bool>(arg_3.a, arg_2.c.x, arg_1.a, arg_3.a))), any(vec3<bool>(true, true, true)), any(select(vec4<bool>(arg_1.b.e, arg_2.e, false, false), vec4<bool>(false, false, true, arg_0.a), arg_1.a)), all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(arg_0.b.e, true, arg_2.c.x))))), Struct_1(_wgslsmith_mod_u32(min(_wgslsmith_sub_u32(arg_3.b.a, 46582u), firstTrailingBit(arg_0.c.x)), 0u), false, arg_3.b.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-262f * _wgslsmith_f_op_f32(-665f * arg_2.d)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1284f * arg_0.b.d))), arg_3.a), vec2<u32>(~4294967295u, ~1u), _wgslsmith_div_f32(-469f, _wgslsmith_f_op_f32(arg_0.d * -1000f)));
    let var_1 = Struct_2(!arg_1.a, arg_1.b, vec2<u32>(arg_0.b.a >> (select(max(arg_2.a, arg_2.a), _wgslsmith_div_u32(arg_1.b.a, arg_1.b.a), any(vec3<bool>(true, arg_1.a, true))) % 32u), arg_0.b.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-289f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-278f * arg_3.d) - arg_0.d) + _wgslsmith_f_op_f32(-1255f - _wgslsmith_f_op_f32(round(arg_2.d))))));
    var var_2 = arg_3.b.a;
    var_2 = 88104u;
    return any(vec2<bool>(arg_0.b.c.x, true));
}

fn func_2() -> vec3<bool> {
    let var_0 = vec3<bool>(!(u_input.a.x >= _wgslsmith_mod_i32(-u_input.b, 0i ^ global1.x)), !func_4(Struct_2(func_3(vec3<f32>(646f, -1448f, 367f), vec3<u32>(0u, 0u, 13856u), false), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(45784u, 1u, 15136u), vec3<u32>(4294967295u, 1u, 21581u)), 4u)], reverseBits(vec2<u32>(50640u, 33765u)), _wgslsmith_f_op_f32(trunc(2386f))), Struct_2(true, global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, 0u), 20u)], ~vec2<u32>(4294967295u, 1u), -261f), Struct_1(0u >> (1u % 32u), true, vec2<bool>(true, true), _wgslsmith_f_op_f32(-630f - 364f), global1.x == u_input.c.x), Struct_2(false, global3[_wgslsmith_index_u32(0u, 20u)], select(vec2<u32>(59960u, 93247u), vec2<u32>(1u, 50673u), vec2<bool>(false, false)), _wgslsmith_f_op_f32(floor(-1135f)))), true);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(-510f)), -495f, _wgslsmith_f_op_f32(f32(-1f) * -2539f), _wgslsmith_f_op_f32(1000f + 1633f)) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -943f, 1161f, -125f) - vec4<f32>(-1694f, -334f, -504f, 331f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(2630f, 1023f, -425f, 842f), vec4<f32>(-547f, -1000f, 1000f, 2212f))))))));
    let var_2 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~abs(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(32843u, 1u))), ~(~vec2<u32>(90606u, 5300u))), firstTrailingBit(max(vec2<u32>(countOneBits(58852u), ~4294967295u), ~(~vec2<u32>(1004u, 4294967295u))))), 29u)];
    var var_3 = global4[_wgslsmith_index_u32(var_2.a, 29u)];
    let var_4 = Struct_2(~16644u < ~var_2.a, global3[_wgslsmith_index_u32(58399u, 20u)], _wgslsmith_clamp_vec2_u32(abs(firstLeadingBit(max(vec2<u32>(var_3.a, var_3.a), vec2<u32>(1u, var_2.a)))), ~(~vec2<u32>(var_3.a, var_2.a) ^ firstLeadingBit(vec2<u32>(0u, 41644u))), ~firstLeadingBit(vec2<u32>(19160u, 43395u))), _wgslsmith_f_op_f32(floor(var_1.x)));
    return !(!var_0);
}

fn func_1() -> Struct_1 {
    let var_0 = select(abs(u_input.a.xyx) ^ vec3<i32>(max(u_input.a.x, firstTrailingBit(1i)), -1i, -_wgslsmith_add_i32(-2147483647i, global1.x)), ~vec3<i32>(_wgslsmith_clamp_i32(1i, global1.x, firstLeadingBit(u_input.b)), -global1.x, 1i), !func_2());
    let var_1 = vec4<bool>(true, true, true, true);
    global0 = array<Struct_1, 4>();
    var var_2 = Struct_2(true, Struct_1(3398u, func_4(Struct_2(true || var_1.x, global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(1u, 60451u)), 29u)], select(vec2<u32>(1u, 1u), vec2<u32>(30692u, 1u), var_1.yw), -335f), Struct_2(!var_1.x, Struct_1(1u, var_1.x, var_1.zx, 117f, false), vec2<u32>(1u, 20272u), 1093f), Struct_1(1u, true, vec2<bool>(true, true), _wgslsmith_f_op_f32(trunc(-1000f)), all(vec4<bool>(true, true, var_1.x, true))), Struct_2(true, Struct_1(4294967295u, true, vec2<bool>(var_1.x, false), -417f, var_1.x), vec2<u32>(36895u, 1u), _wgslsmith_f_op_f32(trunc(1457f)))), select(vec2<bool>(true, true), select(select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(false, true), var_1.x), select(var_1.xy, vec2<bool>(false, false), vec2<bool>(var_1.x, var_1.x)), func_4(Struct_2(true, Struct_1(2268u, var_1.x, var_1.zw, -337f, var_1.x), vec2<u32>(37563u, 30954u), -270f), Struct_2(true, Struct_1(81368u, var_1.x, vec2<bool>(true, var_1.x), -1091f, false), vec2<u32>(4294967295u, 52165u), -541f), Struct_1(4294967295u, var_1.x, vec2<bool>(var_1.x, true), 303f, var_1.x), Struct_2(var_1.x, global0[_wgslsmith_index_u32(14539u, 4u)], vec2<u32>(1u, 36168u), 239f))), true), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -671f), -865f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(191f + -1242f)))), func_3(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(713f, 627f, -162f))), vec3<u32>(1u, 1u, 1u), false)), vec2<u32>(24118u, ~_wgslsmith_mod_u32(~18200u, 1u)), _wgslsmith_f_op_f32(max(2024f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-707f + 396f), -867f)))))));
    let var_3 = Struct_2(!(!(!var_1.x)), Struct_1(var_2.c.x, func_4(Struct_2(var_2.b.b, global0[_wgslsmith_index_u32(var_2.c.x << (1u % 32u), 4u)], var_2.c ^ vec2<u32>(62761u, 5079u), var_2.b.d), Struct_2(func_4(Struct_2(var_1.x, Struct_1(1u, var_1.x, vec2<bool>(var_2.b.c.x, var_2.a), var_2.d, var_1.x), vec2<u32>(1u, var_2.b.a), 221f), Struct_2(true, Struct_1(35748u, var_2.a, vec2<bool>(true, false), -243f, var_1.x), var_2.c, -517f), global0[_wgslsmith_index_u32(var_2.c.x, 4u)], Struct_2(false, Struct_1(var_2.b.a, false, vec2<bool>(true, var_1.x), -1097f, true), vec2<u32>(6743u, var_2.b.a), var_2.b.d)), var_2.b, ~vec2<u32>(35704u, 22699u), _wgslsmith_f_op_f32(-498f * var_2.d)), Struct_1(8439u, !var_2.a, var_1.zy, _wgslsmith_f_op_f32(round(var_2.b.d)), any(vec2<bool>(var_1.x, var_2.a))), Struct_2(var_2.b.e, Struct_1(9094u, var_2.a, var_2.b.c, 1407f, false), vec2<u32>(20785u, var_2.b.a), _wgslsmith_f_op_f32(-var_2.b.d))), var_2.b.c, -255f, true), vec2<u32>(42053u, _wgslsmith_mult_u32(~var_2.c.x, 22u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(417f, -847f)) + -579f), 449f, all(!var_1.yzx))), _wgslsmith_f_op_f32(f32(-1f) * -348f)));
    return Struct_1(1u, false | var_1.x, select(select(!var_3.b.c, var_2.b.c, true), var_2.b.c, !(var_0.x <= var_0.x)), 746f, _wgslsmith_f_op_f32(var_2.d - 896f) > _wgslsmith_f_op_f32(var_3.d + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-812f, -1322f)) + _wgslsmith_div_f32(863f, 558f))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_1, 29>();
    let var_0 = -660f;
    global3 = array<Struct_1, 20>();
    let var_1 = !(any(vec4<bool>(true, true, true, true)) == !all(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), false)));
    let var_2 = func_1();
    var var_3 = vec4<u32>(firstLeadingBit(17599u), _wgslsmith_div_u32(firstLeadingBit(firstTrailingBit(var_2.a << (var_2.a % 32u))), _wgslsmith_add_u32(var_2.a, ~firstTrailingBit(4294967295u))), abs(_wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a, 4294967295u, 32939u, 74856u), vec4<u32>(63442u, 1u, 1u, var_2.a)), var_2.a)), var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(1i);
}

