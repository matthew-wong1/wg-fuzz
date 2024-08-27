struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: bool,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: i32) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(-838f * -345f);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + 1663f));
    let var_1 = Struct_2(vec2<i32>(_wgslsmith_sub_i32(-_wgslsmith_clamp_i32(u_input.b.x, 71051i, arg_2), ~_wgslsmith_clamp_i32(2147483647i, arg_0.a.x, u_input.b.x)), arg_0.a.x), arg_0.c, Struct_1(arg_1.yx, select(vec4<bool>(arg_0.c.b.x, !arg_0.b.c, any(arg_0.c.b.yyz), true), !(!vec4<bool>(arg_0.b.c, arg_0.b.b.x, false, false)), arg_0.b.b), any(!vec4<bool>(true, arg_0.b.c, true, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1608f), arg_0.b.a.x), arg_1.x));
    var_0 = _wgslsmith_f_op_f32(ceil(-395f));
    let var_2 = var_1.b;
    return ~(~(~(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, 4294967295u, 94823u, global0.x), vec4<u32>(u_input.c, u_input.c, 30464u, u_input.a)))));
}

fn func_2() -> vec3<i32> {
    global0 = _wgslsmith_mod_vec4_u32(select(select(vec4<u32>(u_input.c, 41827u, global0.x, 52844u), vec4<u32>(u_input.c, 5571u, 64022u, u_input.a), vec4<bool>(false, true, true, false)), func_3(Struct_2(vec2<i32>(1i, 1i), Struct_1(vec2<f32>(1000f, -165f), vec4<bool>(true, true, true, true), true, 522f, -579f), Struct_1(vec2<f32>(428f, 320f), vec4<bool>(false, true, true, false), true, -1461f, 1042f)), vec3<f32>(-429f, 1714f, -1168f), u_input.b.x) & vec4<u32>(17921u, u_input.c, 31989u, 15016u), true) ^ select(_wgslsmith_add_vec4_u32(vec4<u32>(3239u, u_input.c, 20818u, 31720u), min(vec4<u32>(global0.x, u_input.c, 1u, 4294967295u), vec4<u32>(0u, 22502u, u_input.a, 1u))), select(vec4<u32>(global0.x, 1u, 1u, 19155u), vec4<u32>(0u, 1u, 4294967295u, global0.x), false), 16586u >= _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, global0.x), vec2<u32>(24178u, u_input.c))), vec4<u32>(select(firstLeadingBit(_wgslsmith_mult_u32(u_input.a, 55917u)), _wgslsmith_dot_vec2_u32(global0.yz, ~global0.yx), !all(vec2<bool>(false, false))), ~_wgslsmith_div_u32(global0.x, 20482u), _wgslsmith_clamp_u32(global0.x, ~0u, abs(46008u)), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.c, 31938u), vec2<u32>(u_input.c, global0.x) | vec2<u32>(4294967295u, 4294967295u)), ~vec2<u32>(72992u, 1u))));
    var var_0 = -(~15059i);
    var var_1 = Struct_2(_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(abs(vec2<i32>(u_input.b.x, 1i)), vec2<i32>(3783i, ~u_input.b.x)), u_input.b.yx), Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(242f, -1539f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-956f, 788f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true)), true, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-305f * 777f)))), _wgslsmith_f_op_f32(f32(-1f) * -452f)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-801f, 585f) * vec2<f32>(-1000f, 1047f)))), vec4<bool>(all(vec2<bool>(true, true)), true, false, !all(vec4<bool>(true, true, false, true))), any(vec4<bool>(true, true, true, true)), 1186f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(376f, -1079f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1254f))))));
    global0 = ~reverseBits(min(abs(vec4<u32>(u_input.a, global0.x, 28164u, 1u)) | ~vec4<u32>(global0.x, 4294967295u, global0.x, global0.x), ~(~vec4<u32>(13729u, global0.x, global0.x, 0u))));
    var var_2 = var_1.b.b.x;
    return u_input.b & _wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(10916i, var_1.a.x, u_input.b.x) >> (abs(vec3<u32>(u_input.a, global0.x, global0.x)) % vec3<u32>(32u))), u_input.b);
}

fn func_4(arg_0: vec3<i32>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(1112f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f * -933f))) * 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(789f * _wgslsmith_f_op_f32(-1548f + 582f))), all(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), false))))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-1238f, -712f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-905f, 1169f, false)), _wgslsmith_div_f32(224f, -1194f))))));
    var var_1 = abs(_wgslsmith_mult_vec4_u32(~(firstLeadingBit(vec4<u32>(1u, 1u, global0.x, 62411u)) | (vec4<u32>(1u, u_input.a, 4294967295u, 36217u) >> (vec4<u32>(u_input.a, u_input.c, u_input.c, global0.x) % vec4<u32>(32u)))), select(abs(vec4<u32>(u_input.a, global0.x, u_input.c, 18343u)), vec4<u32>(4294967295u, reverseBits(global0.x), firstTrailingBit(0u), 0u), vec4<bool>(true, true, false, true))));
    let var_2 = 76213u;
    var var_3 = _wgslsmith_f_op_f32(min(1240f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -147f))), 1f))));
    return select(true, ~(-abs(60665i)) == u_input.b.x, true);
}

fn func_1(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_2) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.a.x, 1439f, 1190f, 609f)) - vec4<f32>(-1302f, -710f, arg_2.b.e, 866f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), arg_2.b.e, -1680f, 492f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(1022f, -1000f, 1456f, arg_0.x), vec4<f32>(arg_2.c.e, arg_2.b.d, arg_2.b.d, arg_2.b.e)), _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -1000f, -960f, 1172f), vec4<f32>(841f, -1076f, -1435f, arg_2.c.a.x)), vec4<bool>(arg_2.c.c, false, arg_2.b.b.x, arg_2.c.b.x))))))) - vec4<f32>(-1581f, _wgslsmith_f_op_f32(arg_2.c.a.x * arg_0.x), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(386f, -608f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1324f + 1314f))) - arg_0.x)));
    var var_1 = select(vec4<bool>(!(global0.x <= 1u), true, !all(vec4<bool>(false, true, false, false)) && (!arg_2.c.c && (2147483647i < arg_1)), all(arg_2.b.b.xww)), vec4<bool>(arg_2.b.c, true, ~22204i != arg_1, arg_2.c.b.x), func_4(func_2()));
    let var_2 = vec2<bool>(any(var_1.wy), !select(true, true, !func_4(vec3<i32>(-25215i, 2147483647i, -1861i))));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-var_0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -638f, arg_0.x, arg_0.x))))) + vec4<f32>(arg_2.b.e, _wgslsmith_f_op_f32(select(arg_2.b.d, _wgslsmith_f_op_f32(step(-1000f, arg_2.b.e)), any(!var_2))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(abs(-1188f)))), var_0.x));
    var var_4 = _wgslsmith_dot_vec2_u32(countOneBits(~vec2<u32>(u_input.c, 0u)), ~global0.yx) & 60500u;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<u32>(81303u, _wgslsmith_mult_u32(~_wgslsmith_sub_u32(global0.x, ~global0.x), select(_wgslsmith_dot_vec3_u32(global0.xyz, reverseBits(global0.zzz)), u_input.c, true)), firstLeadingBit(5297u), u_input.c ^ u_input.c);
    var var_0 = select(!select(vec4<bool>(true, true, true, true), vec4<bool>(select(true, false, false), true, func_1(vec3<f32>(-1538f, -619f, -374f), u_input.b.x, Struct_2(vec2<i32>(u_input.b.x, 1i), Struct_1(vec2<f32>(-848f, -832f), vec4<bool>(true, false, false, true), false, 1070f, -1389f), Struct_1(vec2<f32>(-319f, -1670f), vec4<bool>(true, true, false, false), true, -138f, -1398f))), false), true), vec4<bool>(true, !func_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-784f, 597f, -777f), vec3<f32>(344f, 185f, 618f))), u_input.b.x >> (3183u % 32u), Struct_2(u_input.b.xz, Struct_1(vec2<f32>(425f, -266f), vec4<bool>(true, false, false, true), true, -958f, -1000f), Struct_1(vec2<f32>(497f, -1731f), vec4<bool>(true, false, false, false), true, 1630f, -1702f))), false, true), vec4<bool>(true, true, any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false)), true));
    global0 = _wgslsmith_clamp_vec4_u32(select(max(~(~vec4<u32>(global0.x, global0.x, 27280u, 1u)), vec4<u32>(global0.x, _wgslsmith_clamp_u32(4294967295u, 15774u, 16625u), 1u, 0u)), select(vec4<u32>(global0.x, global0.x, 0u, u_input.a) >> ((vec4<u32>(1371u, 106679u, 0u, u_input.c) >> (vec4<u32>(1u, 1u, global0.x, 39463u) % vec4<u32>(32u))) % vec4<u32>(32u)), firstTrailingBit(~vec4<u32>(11926u, 4294967295u, 54366u, u_input.c)), any(vec3<bool>(true, var_0.x, var_0.x))), true), select(vec4<u32>(~u_input.a, ~u_input.c | countOneBits(global0.x), max(21100u, ~global0.x), ~global0.x), max(vec4<u32>(_wgslsmith_mult_u32(global0.x, u_input.c), 40888u ^ u_input.c, 46421u, 22654u), firstLeadingBit(~vec4<u32>(37296u, 0u, 8829u, 4294967295u))), any(!var_0.zx)), vec4<u32>(16540u, 4294967295u, func_3(Struct_2(vec2<i32>(u_input.b.x, u_input.b.x) >> (global0.yw % vec2<u32>(32u)), Struct_1(vec2<f32>(-1187f, 399f), vec4<bool>(var_0.x, var_0.x, false, var_0.x), false, 1484f, 134f), Struct_1(vec2<f32>(610f, 260f), vec4<bool>(false, true, var_0.x, false), var_0.x, -222f, -638f)), vec3<f32>(-915f, _wgslsmith_f_op_f32(floor(-1786f)), -1581f), ~(~u_input.b.x)).x, ~(~global0.x)));
    var_0 = vec4<bool>(var_0.x, func_4(vec3<i32>(u_input.b.x, u_input.b.x, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-27019i, u_input.b.x), vec2<i32>(-64306i, u_input.b.x)), u_input.b.x))), any(vec2<bool>(true, select(var_0.x, true, true))), var_0.x);
    var_0 = !select(vec4<bool>(true, func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-605f, -1457f, -216f)), ~(-38742i), Struct_2(vec2<i32>(-31011i, -2147483647i), Struct_1(vec2<f32>(-590f, -1529f), vec4<bool>(var_0.x, false, var_0.x, var_0.x), var_0.x, -255f, -546f), Struct_1(vec2<f32>(371f, -2310f), vec4<bool>(var_0.x, true, true, true), var_0.x, -1381f, -588f))), u_input.b.x >= (i32(-1i) * -2147483647i), func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2319f, 231f, -848f) + vec3<f32>(-1826f, -1970f, 652f)), 1i, Struct_2(u_input.b.xz, Struct_1(vec2<f32>(-1000f, 220f), vec4<bool>(var_0.x, false, var_0.x, var_0.x), true, 1389f, -617f), Struct_1(vec2<f32>(1549f, 680f), vec4<bool>(var_0.x, false, var_0.x, false), true, -1000f, 973f)))), vec4<bool>(true, any(vec4<bool>(var_0.x, var_0.x, var_0.x, true)), _wgslsmith_dot_vec2_i32(u_input.b.xz, vec2<i32>(-2147483647i, 1i)) != ~(-25032i), false), true);
    var var_1 = ~13531i;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

