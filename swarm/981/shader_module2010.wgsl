struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: u32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: Struct_2 = Struct_2(vec2<f32>(844f, -519f), 54111u, Struct_1(vec4<i32>(1i, 0i, -9104i, 2147483647i), vec2<f32>(585f, -218f), 93078u, vec2<i32>(-14246i, -1i)), Struct_1(vec4<i32>(-612i, 0i, 2828i, i32(-2147483648)), vec2<f32>(-1012f, -2046f), 1u, vec2<i32>(38707i, 40535i)), vec3<u32>(34106u, 55049u, 24811u));

var<private> global2: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec4<i32>(24047i, 1i, 21694i, -1i), vec2<f32>(381f, 2722f), 0u, vec2<i32>(1i, -33956i)), Struct_1(vec4<i32>(-4166i, 40673i, -6608i, 2147483647i), vec2<f32>(389f, 1160f), 29764u, vec2<i32>(2098i, -16411i)), Struct_1(vec4<i32>(0i, 1i, 3844i, 46987i), vec2<f32>(-1053f, 2205f), 0u, vec2<i32>(-21690i, 2147483647i)), Struct_1(vec4<i32>(0i, 2147483647i, 0i, 0i), vec2<f32>(217f, 227f), 0u, vec2<i32>(i32(-2147483648), 2147483647i)), Struct_1(vec4<i32>(75525i, -39622i, 7777i, 1i), vec2<f32>(926f, -1332f), 17261u, vec2<i32>(12820i, 60489i)), Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, 102760i, 0i), vec2<f32>(1387f, 1906f), 1u, vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_1(vec4<i32>(i32(-2147483648), 0i, -16665i, 0i), vec2<f32>(-685f, -1049f), 64359u, vec2<i32>(-16866i, 13370i)), Struct_1(vec4<i32>(-20275i, 1i, -14951i, -1i), vec2<f32>(1041f, 2005f), 1u, vec2<i32>(-4815i, -698i)), Struct_1(vec4<i32>(0i, 26463i, 2147483647i, -1i), vec2<f32>(-1141f, 648f), 4294967295u, vec2<i32>(0i, -21523i)), Struct_1(vec4<i32>(-1i, i32(-2147483648), -1i, 1i), vec2<f32>(-677f, 230f), 4294967295u, vec2<i32>(-16616i, -8010i)), Struct_1(vec4<i32>(-1i, 0i, -36852i, -1i), vec2<f32>(-866f, 337f), 66937u, vec2<i32>(-1i, 16629i)), Struct_1(vec4<i32>(i32(-2147483648), -14177i, 25310i, -1i), vec2<f32>(398f, 666f), 51454u, vec2<i32>(-12378i, 17672i)), Struct_1(vec4<i32>(67836i, 0i, 14843i, i32(-2147483648)), vec2<f32>(988f, 953f), 0u, vec2<i32>(-1i, 2147483647i)), Struct_1(vec4<i32>(2147483647i, -46861i, -1i, i32(-2147483648)), vec2<f32>(-988f, 1274f), 71877u, vec2<i32>(1i, 2147483647i)), Struct_1(vec4<i32>(23610i, 0i, -1i, -61227i), vec2<f32>(1655f, 1000f), 0u, vec2<i32>(57802i, 2147483647i)), Struct_1(vec4<i32>(i32(-2147483648), -14455i, -65451i, -1i), vec2<f32>(483f, 156f), 312u, vec2<i32>(0i, 2147483647i)), Struct_1(vec4<i32>(-31957i, -37742i, -1i, 2147483647i), vec2<f32>(257f, 509f), 1u, vec2<i32>(-19849i, -1i)), Struct_1(vec4<i32>(2147483647i, 13402i, i32(-2147483648), 2147483647i), vec2<f32>(1277f, -168f), 1u, vec2<i32>(54825i, 2147483647i)), Struct_1(vec4<i32>(-40323i, 16516i, 42084i, 7014i), vec2<f32>(-1319f, -927f), 47979u, vec2<i32>(0i, -1i)), Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, i32(-2147483648)), vec2<f32>(189f, -568f), 1u, vec2<i32>(2147483647i, 1i)), Struct_1(vec4<i32>(1i, 2147483647i, -29680i, 1i), vec2<f32>(1820f, -2492f), 1u, vec2<i32>(0i, -33973i)), Struct_1(vec4<i32>(-36003i, -71162i, -59021i, 0i), vec2<f32>(760f, -876f), 19139u, vec2<i32>(34008i, i32(-2147483648))), Struct_1(vec4<i32>(15273i, 12767i, 1i, 65423i), vec2<f32>(-1087f, -480f), 4294967295u, vec2<i32>(-63617i, i32(-2147483648))), Struct_1(vec4<i32>(-1i, 0i, 0i, 1i), vec2<f32>(-976f, 561f), 4294967295u, vec2<i32>(31369i, 12236i)), Struct_1(vec4<i32>(-1i, 2147483647i, -1i, 2147483647i), vec2<f32>(312f, 974f), 4294967295u, vec2<i32>(70645i, -1i)), Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648), 2147483647i), vec2<f32>(-214f, 1994f), 4294967295u, vec2<i32>(1i, 2147483647i)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<f32>, arg_1: u32, arg_2: i32) -> vec2<i32> {
    let var_0 = Struct_3(reverseBits(~firstLeadingBit(global1.c.c)), global1.e << (global1.e % vec3<u32>(32u)), arg_1, firstTrailingBit(global1.c.a.zyz) & firstLeadingBit(select(-global1.c.a.zyw, min(global1.c.a.zwz, global1.d.a.yzx), vec3<bool>(true, true, true))), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.x, global1.c.b.x) + global1.d.b)), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(0u, 1u)), _wgslsmith_mult_vec2_u32(min(u_input.a.xx, vec2<u32>(u_input.a.x, arg_1)), vec2<u32>(3352u, 26906u))), global1.d, Struct_1(firstLeadingBit(global1.c.a), arg_0, global1.d.c, vec2<i32>(-2147483647i, -2147483647i)), _wgslsmith_add_vec3_u32(u_input.a.zxw, vec3<u32>(1u, 1u, ~u_input.a.x))));
    global0 = any(vec4<bool>(true, !all(vec4<bool>(true, true, true, true)), true, all(vec3<bool>(true, true, true))));
    var var_1 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - -1951f), _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(floor(global1.d.b.x))))), _wgslsmith_f_op_f32(-1781f + -864f), _wgslsmith_f_op_f32(global1.a.x + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.x - arg_0.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.d.b.x, _wgslsmith_f_op_f32(f32(-1f) * -230f), -647f, var_0.e.a.x)) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.a.x, arg_0.x, true)) * _wgslsmith_f_op_f32(-517f + 556f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), 126f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.d.b.x))), arg_0.x))));
    var var_2 = var_0.e;
    global1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(153f, 387f))))) - vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(-var_2.a.x)))), 19730u, var_2.d, global1.d, u_input.a.ywy);
    return firstLeadingBit(~var_0.e.d.d);
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: u32, arg_3: i32) -> vec2<i32> {
    let var_0 = Struct_1(select(~vec4<i32>(1i, _wgslsmith_mod_i32(arg_3, global1.c.d.x), 0i, -2147483647i), abs(~(~global1.d.a)), arg_0), vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-435f - -1026f) + _wgslsmith_f_op_f32(round(1000f)))))), 66782u, firstTrailingBit(_wgslsmith_div_vec2_i32(abs(func_3(arg_1.yx, 1u, arg_3)), ~(~global1.d.a.xw))));
    var var_1 = Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(-36434i, _wgslsmith_mult_i32(85171i, var_0.a.x), abs(68181i), _wgslsmith_div_i32(-58274i, -3954i)), vec4<i32>(_wgslsmith_mod_i32(8311i, -arg_3), firstTrailingBit(countOneBits(-2147483647i)), arg_3, _wgslsmith_sub_i32(12418i, -1i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.xy) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.xw))), 35908u, max(global1.d.d, _wgslsmith_mult_vec2_i32(func_3(vec2<f32>(var_0.b.x, arg_1.x), global1.e.x, global1.d.d.x), countOneBits(-var_0.d))));
    var var_2 = -849f;
    var_2 = _wgslsmith_f_op_f32(step(451f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -1573f) * _wgslsmith_f_op_f32(trunc(global1.a.x))))));
    global2 = array<Struct_1, 26>();
    return global1.d.d;
}

fn func_1(arg_0: bool) -> Struct_3 {
    var var_0 = global1.d.b.x;
    var var_1 = Struct_2(vec2<f32>(1584f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2191f, 1566f, arg_0))) - _wgslsmith_f_op_f32(max(-2597f, global1.a.x)))), global1.c.c, Struct_1(vec4<i32>(global1.c.a.x, global1.c.d.x, _wgslsmith_mod_i32(global1.d.d.x, -global1.c.d.x), ~(-2147483647i)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.d.b.x, global1.d.b.x), vec2<f32>(373f, global1.d.b.x), arg_0)) + _wgslsmith_f_op_vec2_f32(-global1.c.b)))), ~select(global1.b, ~u_input.a.x, arg_0), _wgslsmith_mod_vec2_i32(-func_2(vec4<bool>(true, arg_0, true, arg_0), vec4<f32>(global1.a.x, global1.d.b.x, global1.a.x, 954f), global1.b, -11463i), vec2<i32>(-1i) * -vec2<i32>(global1.c.a.x, 36027i))), Struct_1(global1.c.a, global1.d.b, abs(select(_wgslsmith_mod_u32(u_input.a.x, 4294967295u), global1.b & u_input.a.x, true | arg_0)), -(vec2<i32>(-19529i, global1.c.d.x) & global1.d.d) << (_wgslsmith_mult_vec2_u32(abs(vec2<u32>(u_input.a.x, u_input.a.x)), _wgslsmith_add_vec2_u32(u_input.a.wy, vec2<u32>(u_input.a.x, 67937u))) % vec2<u32>(32u))), _wgslsmith_sub_vec3_u32(min(vec3<u32>(global1.e.x, global1.e.x, 52530u), vec3<u32>(u_input.a.x, global1.b, 53002u)), global1.e) << (u_input.a.yzy % vec3<u32>(32u)));
    var_1 = Struct_2(global1.d.b, global1.c.c, var_1.d, Struct_1(~var_1.c.a, vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.d.b.x - global1.a.x), _wgslsmith_f_op_f32(global1.c.b.x - -607f))), 2076f), 30239u, ~vec2<i32>(-global1.c.a.x, var_1.d.a.x)), vec3<u32>(_wgslsmith_dot_vec3_u32(global1.e, countOneBits(vec3<u32>(u_input.a.x, 4294967295u, var_1.c.c))), _wgslsmith_mod_u32(var_1.d.c, ~0u) | u_input.a.x, 4294967295u));
    let var_2 = true | arg_0;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.c.b.x, var_1.c.b.x, 466f), vec3<f32>(var_1.d.b.x, -462f, global1.d.b.x))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(-456f, 1655f, false)), -374f, 470f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.a.x, var_1.a.x, 195f))) * vec3<f32>(var_1.d.b.x, global1.a.x, -425f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -2161f, var_1.d.b.x))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) + _wgslsmith_f_op_f32(802f - 262f)), -727f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.d.b.x))))));
    return Struct_3(_wgslsmith_mult_u32(max(~_wgslsmith_mult_u32(global1.d.c, var_1.c.c), _wgslsmith_mult_u32(~var_1.b, u_input.a.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(abs(4294967295u), firstTrailingBit(26401u)), var_1.e.yx)), ~vec3<u32>(62404u, ~u_input.a.x, _wgslsmith_mult_u32(global1.c.c, ~76088u)), 4794u, ~firstLeadingBit(~(vec3<i32>(-26738i, global1.d.d.x, -6801i) | var_1.c.a.zxx)), Struct_2(_wgslsmith_f_op_vec2_f32(-global1.c.b), 4294967295u >> (0u % 32u), var_1.c, global2[_wgslsmith_index_u32(global1.c.c, 26u)], _wgslsmith_clamp_vec3_u32(~min(u_input.a.wxz, u_input.a.zyw), abs(var_1.e) ^ (var_1.e | var_1.e), global1.e | _wgslsmith_sub_vec3_u32(vec3<u32>(3436u, 1u, u_input.a.x), global1.e))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: bool) -> i32 {
    global0 = arg_2;
    global0 = arg_2;
    global1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-1000f, -309f), -1978f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global1.a, global1.a) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_1.b.x, -1180f))))) * arg_1.b), u_input.a.x, func_1(!((0i != arg_1.d.x) || (arg_0.d.x >= arg_1.d.x))).e.d, func_1(true).e.c, countOneBits(vec3<u32>(~arg_1.c, ~(1u ^ arg_0.c), ~abs(arg_1.c))));
    global0 = arg_2;
    var var_0 = vec2<u32>(global1.d.c, _wgslsmith_add_u32(global1.e.x, global1.c.c) & 4294967295u) << (min(min(vec2<u32>(_wgslsmith_div_u32(arg_0.e.c.c, global1.e.x), _wgslsmith_mod_u32(49844u, u_input.a.x)), ~_wgslsmith_sub_vec2_u32(global1.e.xz, u_input.a.wz)), vec2<u32>(~4294967295u, _wgslsmith_div_u32(max(u_input.a.x, 4294967295u), global1.e.x))) % vec2<u32>(32u));
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_add_i32(-_wgslsmith_dot_vec3_i32(global1.c.a.yxy, vec3<i32>(global1.d.a.x, -3151i, global1.d.d.x)), ~46078i);
    var var_1 = global1.d.b.x;
    let var_2 = _wgslsmith_dot_vec2_i32(max(vec2<i32>(_wgslsmith_dot_vec2_i32(global1.d.a.ww, vec2<i32>(global1.d.d.x, -2147483647i)), -global1.c.d.x), vec2<i32>(~0i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, global1.d.d.x, global1.d.d.x), global1.d.a.yyy))) << (_wgslsmith_clamp_vec2_u32(~(~global1.e.yx), ~_wgslsmith_add_vec2_u32(vec2<u32>(52760u, 1u), vec2<u32>(u_input.a.x, 1u)), u_input.a.xx) % vec2<u32>(32u)), global1.d.d);
    var var_3 = vec4<bool>(select(true, true, false), 62801i >= func_4(func_1(var_2 >= global1.d.a.x), func_1(select(true, true, true)).e.d, true), !any(vec4<bool>(true, true, false, true)), !(!any(vec4<bool>(true, false, true, true))));
    var var_4 = func_1(!(all(var_3.yzz) | all(!vec4<bool>(var_3.x, var_3.x, true, var_3.x))));
    var var_5 = Struct_3(_wgslsmith_add_u32(17972u, select(countOneBits(countOneBits(4294967295u)), _wgslsmith_dot_vec3_u32(vec3<u32>(global1.d.c, 5521u, 33194u), ~vec3<u32>(1u, 7466u, global1.b)), select(false, all(vec4<bool>(false, var_3.x, false, var_3.x)), !var_3.x))), select(min(var_4.e.e, ~(~vec3<u32>(u_input.a.x, global1.b, var_4.c))), u_input.a.wwx, !(true | select(true, var_3.x, var_3.x))), global1.d.c, max(reverseBits(-vec3<i32>(1i, global1.d.d.x, 19324i)), _wgslsmith_add_vec3_i32(var_4.e.d.a.wxz, vec3<i32>(38268i, global1.c.d.x, var_4.d.x) | _wgslsmith_mod_vec3_i32(vec3<i32>(39022i, -5388i, var_2), global1.c.a.yzw))), Struct_2(global1.a, ~_wgslsmith_div_u32(~u_input.a.x, u_input.a.x << (74412u % 32u)), Struct_1(~(-global1.d.a), vec2<f32>(671f, _wgslsmith_f_op_f32(min(2211f, var_4.e.c.b.x))), _wgslsmith_clamp_u32(72758u, 88072u, ~global1.d.c), vec2<i32>(-66512i, 1i)), Struct_1(-(vec4<i32>(-1i, var_4.d.x, var_2, -11516i) & vec4<i32>(global1.d.d.x, -2147483647i, -1471i, var_2)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -331f), -396f), ~(1u & global1.c.c), global1.d.a.yy), select(vec3<u32>(u_input.a.x, 1u, var_4.c), select(u_input.a.yww, vec3<u32>(0u, 0u, global1.e.x), false), false) << (func_1(2147483647i != var_4.d.x).e.e % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(1116f, u_input.a.x, var_4.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_5.e.c.b + vec2<f32>(577f, _wgslsmith_f_op_f32(-814f + 1635f)))));
}

