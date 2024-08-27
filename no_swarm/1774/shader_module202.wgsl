struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: i32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec2<f32>,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 18> = array<vec3<i32>, 18>(vec3<i32>(1i, i32(-2147483648), 12426i), vec3<i32>(38853i, 4821i, 0i), vec3<i32>(-1i, -11765i, 1i), vec3<i32>(-34944i, 68678i, -62912i), vec3<i32>(-6533i, -1i, 2147483647i), vec3<i32>(1i, 1i, i32(-2147483648)), vec3<i32>(-9306i, 57i, 2147483647i), vec3<i32>(-1620i, -27388i, i32(-2147483648)), vec3<i32>(1i, -23976i, 2147483647i), vec3<i32>(5399i, -17021i, 2147483647i), vec3<i32>(i32(-2147483648), -27420i, 0i), vec3<i32>(33038i, 0i, -1i), vec3<i32>(-1i, 15820i, i32(-2147483648)), vec3<i32>(-1i, 17115i, -5811i), vec3<i32>(-1i, i32(-2147483648), i32(-2147483648)), vec3<i32>(22212i, 8659i, -37937i), vec3<i32>(0i, -1i, 1i), vec3<i32>(-1i, -51691i, 0i));

var<private> global1: array<Struct_1, 14>;

var<private> global2: i32;

var<private> global3: array<vec4<i32>, 19> = array<vec4<i32>, 19>(vec4<i32>(0i, -1i, -24041i, -1i), vec4<i32>(-1i, -57117i, 0i, 0i), vec4<i32>(0i, -2756i, -18083i, 12280i), vec4<i32>(3835i, 2147483647i, -1i, 2147483647i), vec4<i32>(-1i, i32(-2147483648), -6614i, 17091i), vec4<i32>(-8896i, 1i, 2614i, -32412i), vec4<i32>(i32(-2147483648), -19788i, -7652i, 88064i), vec4<i32>(-11719i, 11079i, 34043i, 1i), vec4<i32>(0i, 2147483647i, -45023i, i32(-2147483648)), vec4<i32>(3138i, -25269i, 1i, 0i), vec4<i32>(1i, 38050i, 33779i, 31734i), vec4<i32>(436i, 10751i, 2147483647i, i32(-2147483648)), vec4<i32>(-57478i, -1i, -12466i, 16806i), vec4<i32>(-1i, -14908i, -9175i, 38459i), vec4<i32>(-11822i, 0i, -45173i, -1i), vec4<i32>(24110i, 0i, 72791i, 0i), vec4<i32>(19304i, 0i, 2147483647i, 0i), vec4<i32>(0i, -1i, -59030i, i32(-2147483648)), vec4<i32>(0i, 50009i, 3204i, 1i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec3<u32> {
    let var_0 = Struct_1(0i, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(389f, -506f, 500f, 305f), vec4<f32>(-885f, -1000f, -1445f, -942f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-503f, 1073f, -2949f, -1581f) - vec4<f32>(-526f, 789f, 840f, -491f))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1128f, -274f, 881f, 343f)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -247f), _wgslsmith_f_op_f32(ceil(-270f)), _wgslsmith_f_op_f32(f32(-1f) * -235f), -163f) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1618f, -730f, -303f, -410f), vec4<f32>(-1715f, 980f, 1000f, -1724f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(808f, 2241f, 563f, 362f))), vec4<bool>(true, true, true, true))))), _wgslsmith_clamp_u32(~u_input.a, u_input.a, firstLeadingBit(~u_input.a) >> (_wgslsmith_clamp_u32(u_input.a, reverseBits(u_input.a), min(u_input.a, u_input.a)) % 32u)), u_input.a);
    global0 = array<vec3<i32>, 18>();
    global1 = array<Struct_1, 14>();
    let var_1 = var_0.b;
    global1 = array<Struct_1, 14>();
    return abs(~vec3<u32>(~u_input.a & (var_0.d ^ var_0.d), var_0.d, 79410u));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: Struct_3) -> Struct_3 {
    let var_0 = Struct_1(~1i, _wgslsmith_f_op_vec4_f32(arg_3.d.b - arg_3.d.b), ~_wgslsmith_mod_u32(_wgslsmith_add_u32(firstTrailingBit(36403u), 6484u), ~(~arg_3.d.c)), _wgslsmith_dot_vec3_u32(func_3(), min(select(_wgslsmith_add_vec3_u32(vec3<u32>(arg_3.d.c, 0u, 58215u), vec3<u32>(u_input.a, 20318u, u_input.a)), vec3<u32>(1u, 4294967295u, 64143u) ^ arg_0, true), arg_0)));
    global1 = array<Struct_1, 14>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(arg_3.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_3.b.b.x, arg_1.b.x))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.x, var_0.b.x))))));
    return arg_3;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_4) -> Struct_4 {
    global1 = array<Struct_1, 14>();
    let var_0 = Struct_4(reverseBits(-39754i));
    global0 = array<vec3<i32>, 18>();
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, max(max(4294967295u, u_input.a) & _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 65392u, u_input.a), vec3<u32>(74271u, u_input.a, u_input.a)), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, u_input.a) << (vec3<u32>(u_input.a, u_input.a, arg_1.d.d) % vec3<u32>(32u)), countOneBits(vec3<u32>(u_input.a, u_input.a, 79893u)))) >> (~_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(119670u, u_input.a)), ~vec2<u32>(u_input.a, 0u)) % 32u)), 14u)];
    var var_2 = Struct_4(~var_1.a);
    return var_0;
}

fn func_5(arg_0: Struct_4, arg_1: Struct_1, arg_2: i32, arg_3: Struct_4) -> f32 {
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1074f - arg_1.b.x), 930f);
}

fn func_1() -> i32 {
    global1 = array<Struct_1, 14>();
    var var_0 = !all(vec4<bool>(true, true, true, any(vec4<bool>(true, true, true, false)) != all(vec3<bool>(false, false, false))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(215f, 751f, -659f))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1686f, 1435f, 107f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, -384f, 1526f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(472f, 1685f, -1306f), vec3<f32>(485f, -218f, -478f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(335f, -537f, 773f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-354f, 2122f, 1000f)))) - vec3<f32>(_wgslsmith_f_op_f32(func_5(Struct_4(u_input.b.x), global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.a, u_input.a), 14u)], u_input.b.x, func_4(Struct_2(true, vec3<f32>(1000f, 2778f, -699f), u_input.b.x), func_2(vec3<u32>(14255u, 4294967295u, 1u), Struct_2(false, vec3<f32>(-1313f, 1518f, 220f), 9466i), vec4<u32>(u_input.a, 4294967295u, 4294967295u, 4294967295u), Struct_3(1809f, Struct_2(false, vec3<f32>(-1000f, 819f, -995f), 1i), vec2<f32>(416f, 341f), global1[_wgslsmith_index_u32(u_input.a, 14u)], vec2<f32>(-1369f, 1359f))), Struct_4(u_input.b.x)))), _wgslsmith_f_op_f32(step(-256f, _wgslsmith_f_op_f32(-446f + -1395f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1669f * 677f)))))));
    return _wgslsmith_dot_vec2_i32((~u_input.b.xx ^ vec2<i32>(_wgslsmith_add_i32(1i, -1i), -37353i)) | vec2<i32>(-u_input.b.x, func_4(func_2(vec3<u32>(u_input.a, 3507u, u_input.a), Struct_2(false, var_1, -1i), vec4<u32>(u_input.a, 48323u, 6460u, 80440u), Struct_3(477f, Struct_2(true, vec3<f32>(-2245f, 616f, 474f), -5125i), vec2<f32>(-220f, -1149f), Struct_1(-17918i, vec4<f32>(var_1.x, 1147f, 1000f, 1327f), 0u, u_input.a), vec2<f32>(var_1.x, var_1.x))).b, func_2(vec3<u32>(56027u, u_input.a, 1u), Struct_2(true, vec3<f32>(1391f, var_1.x, var_1.x), u_input.b.x), vec4<u32>(u_input.a, 4294967295u, u_input.a, 1u), Struct_3(-1000f, Struct_2(true, vec3<f32>(431f, -1028f, var_1.x), u_input.b.x), vec2<f32>(881f, var_1.x), Struct_1(u_input.b.x, vec4<f32>(var_1.x, 556f, 1000f, 1000f), 1u, 1u), vec2<f32>(var_1.x, var_1.x))), Struct_4(u_input.b.x)).a), -(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b.x, -20431i) ^ vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(31150i, u_input.b.x) << (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u))) << (vec2<u32>(~u_input.a, abs(42627u)) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_sub_i32(0i, 0i);
    let var_1 = vec4<i32>(_wgslsmith_sub_i32(func_1(), ~_wgslsmith_mod_i32(1i, _wgslsmith_sub_i32(-6223i, u_input.b.x))), max(-25123i, (_wgslsmith_mult_i32(u_input.b.x, u_input.b.x) & 1i) | abs(-u_input.b.x)), 0i | (u_input.b.x & u_input.b.x), -_wgslsmith_add_i32(_wgslsmith_sub_i32(1i, _wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(u_input.a, 18u)], vec3<i32>(u_input.b.x, u_input.b.x, 0i))), _wgslsmith_clamp_i32(14262i, _wgslsmith_add_i32(u_input.b.x, u_input.b.x), firstLeadingBit(-1i))));
    var var_2 = Struct_5(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(func_2(select(vec3<u32>(0u, u_input.a, 0u), vec3<u32>(0u, 72728u, 5004u), false), func_2(vec3<u32>(u_input.a, 59852u, 26697u), Struct_2(true, vec3<f32>(1257f, 1000f, 560f), u_input.b.x), vec4<u32>(u_input.a, 49680u, 5730u, u_input.a), Struct_3(1184f, Struct_2(true, vec3<f32>(-298f, -1342f, 602f), -66555i), vec2<f32>(-1635f, 945f), global1[_wgslsmith_index_u32(u_input.a, 14u)], vec2<f32>(-1361f, -1547f))).b, ~vec4<u32>(u_input.a, u_input.a, 4294967295u, 68388u), func_2(vec3<u32>(34876u, u_input.a, 13893u), Struct_2(true, vec3<f32>(-1000f, 143f, -1709f), 13017i), vec4<u32>(1u, u_input.a, 4294967295u, 0u), Struct_3(-906f, Struct_2(false, vec3<f32>(1000f, 1000f, -939f), u_input.b.x), vec2<f32>(-141f, -598f), global1[_wgslsmith_index_u32(u_input.a, 14u)], vec2<f32>(-198f, -285f)))).c.x, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-777f, 1543f), _wgslsmith_div_f32(115f, 958f))), _wgslsmith_f_op_f32(-1392f - -708f), -1282f))), vec3<i32>(u_input.b.x, var_1.x, _wgslsmith_sub_i32((i32(-1i) * -1i) << ((1u >> (u_input.a % 32u)) % 32u), _wgslsmith_dot_vec2_i32(min(var_1.xx, vec2<i32>(-1i, var_1.x)), _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, -47540i), vec2<i32>(-2147483647i, -16388i))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -116f) + vec2<f32>(1465f, -133f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-727f, -273f) + vec2<f32>(1010f, 555f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(249f, -972f), vec2<f32>(-1000f, -717f)))))), select(vec2<bool>(true, true), vec2<bool>(true, false), any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), false))))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, func_3().x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 89252u, 1u), vec3<u32>(12104u, u_input.a, u_input.a)), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, 31423u, 24465u, u_input.a), ~vec4<u32>(3591u, u_input.a, 4294967295u, 30631u))), abs(~countOneBits(vec4<u32>(1u, u_input.a, 38336u, 4294967295u)))), 14u)], _wgslsmith_div_i32(var_1.x, ~(-2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(var_2.a + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(var_2.d.b, var_2.a)) * _wgslsmith_f_op_vec4_f32(max(var_2.d.b, vec4<f32>(var_2.d.b.x, 777f, var_2.d.b.x, var_2.c.x)))), vec4<f32>(191f, -1140f, _wgslsmith_f_op_f32(f32(-1f) * -855f), -2323f)))), var_2.e, var_1.x, min(_wgslsmith_add_vec4_i32(max(abs(vec4<i32>(u_input.b.x, var_1.x, 17901i, 2147483647i)), u_input.b), global3[_wgslsmith_index_u32(54108u, 19u)]), abs(-vec4<i32>(var_2.d.a, 17797i, var_2.e, -65706i))));
}

