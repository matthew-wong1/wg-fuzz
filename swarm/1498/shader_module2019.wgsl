struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_1,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(8345i, Struct_1(vec2<i32>(2147483647i, 1i)), vec3<u32>(4294967295u, 1u, 1309u), vec2<i32>(9886i, -8974i)), Struct_2(i32(-2147483648), Struct_1(vec2<i32>(-45472i, 2147483647i)), vec3<u32>(51417u, 100668u, 0u), vec2<i32>(4643i, 30194i)), Struct_2(-10863i, Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648))), vec3<u32>(60233u, 1u, 0u), vec2<i32>(-1i, 2147483647i)), Struct_2(59163i, Struct_1(vec2<i32>(31762i, 1i)), vec3<u32>(0u, 6607u, 0u), vec2<i32>(1i, 2147483647i)), Struct_2(26781i, Struct_1(vec2<i32>(1i, 41214i)), vec3<u32>(35265u, 0u, 48755u), vec2<i32>(42806i, 1i)), Struct_2(-6303i, Struct_1(vec2<i32>(2147483647i, -1424i)), vec3<u32>(1u, 88367u, 24058u), vec2<i32>(-17364i, -733i)), Struct_2(1i, Struct_1(vec2<i32>(0i, 0i)), vec3<u32>(0u, 0u, 1u), vec2<i32>(2147483647i, 47732i)), Struct_2(13216i, Struct_1(vec2<i32>(2147483647i, i32(-2147483648))), vec3<u32>(78972u, 1u, 0u), vec2<i32>(2147483647i, 10135i)), Struct_2(-1349i, Struct_1(vec2<i32>(2147483647i, 0i)), vec3<u32>(0u, 4294967295u, 4294967295u), vec2<i32>(-34764i, 0i)), Struct_2(1514i, Struct_1(vec2<i32>(-21288i, -19528i)), vec3<u32>(0u, 1u, 17592u), vec2<i32>(0i, 69890i)), Struct_2(39933i, Struct_1(vec2<i32>(-9646i, 2147483647i)), vec3<u32>(0u, 4294967295u, 4294967295u), vec2<i32>(-1i, -41918i)), Struct_2(1951i, Struct_1(vec2<i32>(25163i, i32(-2147483648))), vec3<u32>(0u, 40208u, 8712u), vec2<i32>(1i, 2147483647i)), Struct_2(43774i, Struct_1(vec2<i32>(2147483647i, -1i)), vec3<u32>(1u, 37793u, 1u), vec2<i32>(0i, -45567i)), Struct_2(i32(-2147483648), Struct_1(vec2<i32>(1i, -5204i)), vec3<u32>(62190u, 19594u, 69092u), vec2<i32>(7922i, 1i)), Struct_2(-25980i, Struct_1(vec2<i32>(9968i, 1i)), vec3<u32>(2937u, 31265u, 65313u), vec2<i32>(0i, 1i)), Struct_2(0i, Struct_1(vec2<i32>(0i, 1i)), vec3<u32>(4294967295u, 1u, 4294967295u), vec2<i32>(2147483647i, -1447i)), Struct_2(57203i, Struct_1(vec2<i32>(0i, -8594i)), vec3<u32>(0u, 0u, 0u), vec2<i32>(-2457i, 3293i)), Struct_2(-1i, Struct_1(vec2<i32>(2147483647i, 47371i)), vec3<u32>(61190u, 1u, 4294967295u), vec2<i32>(11756i, -11427i)), Struct_2(26382i, Struct_1(vec2<i32>(-6136i, 28189i)), vec3<u32>(0u, 4294967295u, 1u), vec2<i32>(15400i, 0i)), Struct_2(1i, Struct_1(vec2<i32>(-13865i, 1i)), vec3<u32>(65169u, 57920u, 50507u), vec2<i32>(-44988i, 39252i)), Struct_2(2147483647i, Struct_1(vec2<i32>(-23504i, -41468i)), vec3<u32>(0u, 4294967295u, 13905u), vec2<i32>(17857i, 0i)), Struct_2(18784i, Struct_1(vec2<i32>(-16750i, -15449i)), vec3<u32>(9174u, 13314u, 45774u), vec2<i32>(1i, 2147483647i)), Struct_2(i32(-2147483648), Struct_1(vec2<i32>(35519i, i32(-2147483648))), vec3<u32>(32839u, 49789u, 0u), vec2<i32>(-15311i, 763i)), Struct_2(2147483647i, Struct_1(vec2<i32>(-31625i, 0i)), vec3<u32>(1u, 67505u, 0u), vec2<i32>(-1i, 2147483647i)), Struct_2(-30198i, Struct_1(vec2<i32>(i32(-2147483648), -1i)), vec3<u32>(12351u, 37581u, 72698u), vec2<i32>(1i, i32(-2147483648))), Struct_2(70478i, Struct_1(vec2<i32>(9536i, 17384i)), vec3<u32>(0u, 0u, 16303u), vec2<i32>(28882i, 46604i)), Struct_2(i32(-2147483648), Struct_1(vec2<i32>(-11256i, 0i)), vec3<u32>(0u, 1u, 0u), vec2<i32>(2147483647i, 1i)), Struct_2(5391i, Struct_1(vec2<i32>(1i, -16163i)), vec3<u32>(4294967295u, 4294967295u, 1u), vec2<i32>(1i, 1855i)), Struct_2(i32(-2147483648), Struct_1(vec2<i32>(4497i, 2147483647i)), vec3<u32>(20426u, 0u, 2686u), vec2<i32>(2147483647i, 18037i)), Struct_2(18450i, Struct_1(vec2<i32>(9080i, 26702i)), vec3<u32>(4294967295u, 0u, 19131u), vec2<i32>(i32(-2147483648), 2147483647i)), Struct_2(2725i, Struct_1(vec2<i32>(-18109i, 42522i)), vec3<u32>(55038u, 1u, 4294967295u), vec2<i32>(26901i, -1i)), Struct_2(-1i, Struct_1(vec2<i32>(-55212i, 1i)), vec3<u32>(4294967295u, 4294967295u, 19890u), vec2<i32>(i32(-2147483648), -1i)));

var<private> global1: array<vec2<i32>, 13> = array<vec2<i32>, 13>(vec2<i32>(-60451i, 2147483647i), vec2<i32>(4406i, 34054i), vec2<i32>(-1i, 10628i), vec2<i32>(21274i, -10869i), vec2<i32>(0i, -1i), vec2<i32>(21580i, 0i), vec2<i32>(-1i, -32573i), vec2<i32>(-14706i, 31330i), vec2<i32>(56565i, 38441i), vec2<i32>(12369i, -24372i), vec2<i32>(0i, -33042i), vec2<i32>(4403i, -14501i), vec2<i32>(32494i, -10427i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec4<u32>) -> vec4<u32> {
    let var_0 = Struct_4(Struct_1(select(abs(vec2<i32>(u_input.a, -30993i)), _wgslsmith_div_vec2_i32(arg_0.a, arg_0.a), false) << (vec2<u32>(arg_2.x, ~arg_2.x) % vec2<u32>(32u))), Struct_3(arg_1.a), arg_0);
    var var_1 = 1u;
    let var_2 = Struct_3(arg_1.a);
    var var_3 = Struct_2(-56928i >> (arg_2.x % 32u), arg_0, arg_2.wxw, vec2<i32>(var_0.c.a.x, -arg_0.a.x) ^ arg_0.a);
    global0 = array<Struct_2, 32>();
    return select(min(~(~(~arg_2)), abs(vec4<u32>(4294967295u, var_3.c.x >> (arg_2.x % 32u), 1u, firstTrailingBit(0u)))), vec4<u32>(arg_2.x, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(abs(vec4<u32>(var_3.c.x, var_3.c.x, 0u, 5408u)), ~vec4<u32>(0u, 4294967295u, 22794u, arg_2.x)), vec4<u32>(4294967295u ^ var_3.c.x, var_3.c.x, ~1u, reverseBits(1u))), 21989u, ~(~(~var_3.c.x))), select(vec4<bool>(true, !var_0.b.a.x, all(var_0.b.a.yx), arg_0.a.x >= var_0.c.a.x), !(!vec4<bool>(true, false, false, arg_1.a.x)), any(select(select(vec3<bool>(var_2.a.x, var_0.b.a.x, arg_1.a.x), vec3<bool>(arg_1.a.x, var_0.b.a.x, true), vec3<bool>(false, var_0.b.a.x, false)), select(vec3<bool>(arg_1.a.x, var_2.a.x, arg_1.a.x), vec3<bool>(true, true, false), var_0.b.a), any(var_2.a.zy)))));
}

fn func_2() -> u32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(198f + 1208f), _wgslsmith_f_op_f32(-778f + 1f), true)), 371f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-229f * _wgslsmith_f_op_f32(step(1183f, -589f))) + 315f)));
    global1 = array<vec2<i32>, 13>();
    global0 = array<Struct_2, 32>();
    global1 = array<vec2<i32>, 13>();
    var var_1 = global0[_wgslsmith_index_u32(4294967295u >> (select(_wgslsmith_dot_vec4_u32(vec4<u32>(~48059u, ~0u, 1u, ~31164u), func_3(Struct_1(vec2<i32>(u_input.a, u_input.a)), Struct_3(vec3<bool>(false, false, true)), vec4<u32>(1u, 1u, 1u, 1u))), ~(~1u), select(true, true, !all(vec4<bool>(false, false, true, true)))) % 32u), 32u)];
    return _wgslsmith_div_u32(var_1.c.x, ~(~var_1.c.x));
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: i32) -> Struct_4 {
    global1 = array<vec2<i32>, 13>();
    global0 = array<Struct_2, 32>();
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-778f, _wgslsmith_f_op_f32(sign(-2535f)), any(select(vec4<bool>(true, arg_1.b.a.x, arg_1.b.a.x, false), !vec4<bool>(arg_1.b.a.x, arg_1.b.a.x, arg_1.b.a.x, false), select(vec4<bool>(true, true, arg_1.b.a.x, arg_1.b.a.x), vec4<bool>(true, false, false, arg_1.b.a.x), arg_1.b.a.x))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1349f))) - _wgslsmith_div_f32(-664f, _wgslsmith_f_op_f32(f32(-1f) * -1525f)))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1421f, 2061f, 1543f, -1000f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(949f, -770f, -2186f, 1242f), vec4<f32>(-371f, -1061f, 1533f, -823f), arg_1.b.a.x)) + _wgslsmith_div_vec4_f32(vec4<f32>(692f, 711f, 616f, -1059f), vec4<f32>(-474f, 1485f, 629f, -1958f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-398f, 444f, -916f, -1000f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(247f, -507f, -1708f, -2148f), vec4<f32>(1458f, -981f, 1221f, -707f), true))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-954f, -700f, 1404f, 275f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1173f, -939f, -1191f)))))) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-114f * 718f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1021f))), 1f, _wgslsmith_f_op_f32(1508f + 1343f)))));
    global1 = array<vec2<i32>, 13>();
    return Struct_4(arg_1.a, Struct_3(arg_1.b.a), Struct_1(abs(~_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, -2147483647i), vec2<i32>(arg_0, 2147483647i)))));
}

fn func_1(arg_0: f32, arg_1: vec4<bool>) -> i32 {
    var var_0 = -14131i;
    var_0 = (u_input.a | _wgslsmith_mod_i32(9208i, _wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(4404u, 13u)], _wgslsmith_add_vec2_i32(vec2<i32>(-59579i, -1i), global1[_wgslsmith_index_u32(4294967295u, 13u)])))) | -_wgslsmith_dot_vec3_i32(~(vec3<i32>(u_input.a, -76517i, 2147483647i) & vec3<i32>(u_input.a, u_input.a, u_input.a)), -vec3<i32>(u_input.a, u_input.a, u_input.a));
    var var_1 = func_4(u_input.a, Struct_4(Struct_1(global1[_wgslsmith_index_u32(func_2(), 13u)] >> (reverseBits(vec2<u32>(1u, 2079u)) % vec2<u32>(32u))), Struct_3(arg_1.wwy), Struct_1(-abs(vec2<i32>(u_input.a, u_input.a)))), -2147483647i);
    global1 = array<vec2<i32>, 13>();
    var var_2 = Struct_5(_wgslsmith_f_op_f32(select(arg_0, arg_0, !arg_1.x)));
    return _wgslsmith_clamp_i32(56964i, ~var_1.c.a.x, countOneBits(-7156i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<i32>, 13>();
    let var_0 = _wgslsmith_mod_vec4_i32(firstTrailingBit(countOneBits(vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.a))), vec4<i32>(~(u_input.a >> (15350u % 32u)), func_1(_wgslsmith_div_f32(1000f, -213f), vec4<bool>(true, false, false, true)), -u_input.a, abs(1i))) << (~(~vec4<u32>(_wgslsmith_sub_u32(4294967295u, 0u), min(11186u, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(44811u, 1u, 1u), vec3<u32>(0u, 1u, 2311u)), ~19406u)) % vec4<u32>(32u));
    global0 = array<Struct_2, 32>();
    var var_1 = vec2<i32>(var_0.x, -18585i);
    let var_2 = Struct_5(769f);
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1613f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(916f + var_2.a))), 1216f, -382f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)), _wgslsmith_f_op_f32(min(-470f, _wgslsmith_div_f32(721f, 1000f))), 1767f, var_2.a))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-846f, var_2.a, _wgslsmith_div_f32(var_2.a, -863f), _wgslsmith_f_op_f32(var_2.a * var_2.a))), _wgslsmith_div_vec4_f32(vec4<f32>(-811f, var_2.a, _wgslsmith_f_op_f32(step(var_2.a, -458f)), -232f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1191f, 508f, 697f, -1764f)), _wgslsmith_div_vec4_f32(vec4<f32>(var_2.a, -414f, var_2.a, var_2.a), vec4<f32>(760f, var_2.a, -552f, var_2.a))))));
    var var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_3.x, 810f, var_4.a, var_4.a))) * _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_4.a, -478f, 695f, var_2.a), vec4<f32>(-360f, 368f, -289f, var_4.a)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, var_3.x, -771f, -913f), vec4<f32>(var_4.a, var_4.a, -1178f, var_2.a))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-135f, 1638f, 1000f, var_2.a)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.a, -117f, var_3.x, var_2.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-621f, var_3.x, -1151f, 970f)) * vec4<f32>(961f, 817f, var_2.a, var_2.a))))), var_2.a);
}

