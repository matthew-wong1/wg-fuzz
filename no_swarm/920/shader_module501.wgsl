struct Struct_1 {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: i32,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(Struct_1(43731i, 1u, 2147483647i, vec2<u32>(1u, 0u)), Struct_1(12687i, 12948u, 2261i, vec2<u32>(4294967295u, 4294967295u)), vec4<i32>(0i, 0i, 27348i, i32(-2147483648)), 443f, Struct_1(32860i, 71086u, -1i, vec2<u32>(0u, 1u))), Struct_2(Struct_1(14790i, 37692u, 47633i, vec2<u32>(27440u, 5999u)), Struct_1(10280i, 19702u, 25557i, vec2<u32>(2550u, 4294967295u)), vec4<i32>(2147483647i, i32(-2147483648), -19811i, 0i), 812f, Struct_1(-33126i, 41707u, 1i, vec2<u32>(74388u, 13587u))), Struct_2(Struct_1(-1i, 1u, 1i, vec2<u32>(26214u, 8188u)), Struct_1(29030i, 69949u, -36684i, vec2<u32>(0u, 22746u)), vec4<i32>(-1i, -8734i, 2147483647i, -20753i), -1485f, Struct_1(2147483647i, 4294967295u, -5627i, vec2<u32>(7699u, 4294967295u))), Struct_2(Struct_1(2287i, 4294967295u, i32(-2147483648), vec2<u32>(117777u, 0u)), Struct_1(-1i, 1u, 32289i, vec2<u32>(27148u, 1u)), vec4<i32>(4428i, -29668i, 80048i, 15864i), 129f, Struct_1(1i, 0u, i32(-2147483648), vec2<u32>(65650u, 32585u))), Struct_2(Struct_1(45450i, 1u, -92457i, vec2<u32>(1u, 4294967295u)), Struct_1(0i, 23797u, -1i, vec2<u32>(0u, 4294967295u)), vec4<i32>(-3455i, -1i, -3630i, 6264i), -747f, Struct_1(24940i, 4294967295u, 2147483647i, vec2<u32>(18743u, 75533u))), Struct_2(Struct_1(-78i, 32302u, -1i, vec2<u32>(0u, 86434u)), Struct_1(1i, 81012u, 1i, vec2<u32>(4294967295u, 12231u)), vec4<i32>(36417i, -65571i, 2147483647i, 30073i), 2034f, Struct_1(-67266i, 1u, 7652i, vec2<u32>(1u, 13697u))), Struct_2(Struct_1(5277i, 28187u, -1i, vec2<u32>(4294967295u, 0u)), Struct_1(1i, 23828u, -18418i, vec2<u32>(56749u, 21759u)), vec4<i32>(0i, i32(-2147483648), 0i, -32064i), -485f, Struct_1(-11472i, 2087u, 0i, vec2<u32>(28000u, 22841u))), Struct_2(Struct_1(-35851i, 0u, i32(-2147483648), vec2<u32>(4294967295u, 4294967295u)), Struct_1(0i, 16969u, 21920i, vec2<u32>(1u, 1604u)), vec4<i32>(-38070i, 2147483647i, 12239i, 21395i), 1856f, Struct_1(i32(-2147483648), 1u, 68343i, vec2<u32>(1u, 48256u))), Struct_2(Struct_1(-1i, 53188u, 1i, vec2<u32>(0u, 1u)), Struct_1(32265i, 84530u, 51048i, vec2<u32>(1u, 1061u)), vec4<i32>(38446i, 1i, 15050i, 0i), 724f, Struct_1(2147483647i, 8233u, 28226i, vec2<u32>(18720u, 4294967295u))), Struct_2(Struct_1(0i, 26451u, 0i, vec2<u32>(0u, 0u)), Struct_1(1679i, 91148u, 39230i, vec2<u32>(0u, 121535u)), vec4<i32>(39240i, 2147483647i, 0i, 2147483647i), 260f, Struct_1(671i, 62181u, -15958i, vec2<u32>(11172u, 45311u))));

var<private> global1: f32 = -718f;

var<private> global2: array<vec3<i32>, 15> = array<vec3<i32>, 15>(vec3<i32>(-173i, 37957i, i32(-2147483648)), vec3<i32>(-33082i, 2147483647i, 0i), vec3<i32>(0i, 49922i, -33360i), vec3<i32>(0i, i32(-2147483648), 1i), vec3<i32>(-12141i, 2147483647i, 31763i), vec3<i32>(-20959i, 28252i, i32(-2147483648)), vec3<i32>(1i, 1i, 2147483647i), vec3<i32>(11031i, 117360i, 74842i), vec3<i32>(-1445i, -1i, 27215i), vec3<i32>(-13650i, -27384i, 2147483647i), vec3<i32>(0i, 87304i, 2147483647i), vec3<i32>(-1i, 1i, 0i), vec3<i32>(-1i, 1i, 1i), vec3<i32>(-16334i, 0i, i32(-2147483648)), vec3<i32>(25835i, i32(-2147483648), -45269i));

var<private> global3: Struct_1;

var<private> global4: vec2<f32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: u32, arg_1: Struct_4, arg_2: f32, arg_3: Struct_4) -> vec2<u32> {
    let var_0 = 6782u;
    global1 = -1455f;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global4.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(620f - -277f))), 109f))));
    var var_2 = (vec2<u32>(firstTrailingBit(u_input.c), _wgslsmith_div_u32(global3.b & 1u, ~arg_3.b.b.x)) | u_input.b.yy) << (arg_1.b.b % vec2<u32>(32u));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_3.c, arg_2, 342f, -766f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1141f, arg_3.b.a.x, global4.x, 241f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c, 1313f, var_1.x, arg_2)))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -1073f, 783f, arg_3.a), vec4<f32>(-411f, global4.x, global4.x, global4.x)))))));
    return firstTrailingBit(global3.d);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(-4412i, ~(~(~(6400u ^ u_input.a))), -2147483647i, ~vec2<u32>(~(~global3.d.x), ~_wgslsmith_mod_u32(global3.d.x, 1u)));
    var var_1 = global0[_wgslsmith_index_u32(firstTrailingBit(20899u), 10u)];
    var var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-751f, -632f), vec2<f32>(1117f, 1544f), false)), vec2<f32>(global4.x, 1850f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global4.x))))))));
    let var_3 = ~(~(~(~vec4<u32>(global3.d.x, 0u, 0u, 21342u))));
    global0 = array<Struct_2, 10>();
    return Struct_1(_wgslsmith_sub_i32(var_0.a, var_0.a), _wgslsmith_div_u32(_wgslsmith_div_u32(var_3.x, _wgslsmith_div_u32(u_input.b.x, _wgslsmith_sub_u32(81650u, 1u))), max(abs(1u), 543u)), abs(var_0.c), reverseBits(func_3(56975u ^ select(global3.b, 21127u, false), Struct_4(_wgslsmith_f_op_f32(-161f - -2273f), Struct_3(vec2<f32>(1000f, var_2.x), var_1.e.d, global3.c), _wgslsmith_div_f32(var_2.x, -1898f)), -1827f, Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -862f), Struct_3(vec2<f32>(global4.x, var_2.x), vec2<u32>(u_input.a, 31296u), global3.c), _wgslsmith_f_op_f32(step(-496f, 637f))))));
}

fn func_4(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_1) -> vec2<u32> {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global4.x, -1067f)))) * vec2<f32>(193f, _wgslsmith_f_op_f32(ceil(350f))))), vec2<u32>(~reverseBits(u_input.b.x ^ global3.b), global3.b), _wgslsmith_mod_i32(-15802i, ~(~global3.a) << (17284u % 32u)));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(ceil(-847f)), var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1123f + global4.x)));
    global3 = func_2();
    var var_2 = arg_2;
    var var_3 = countOneBits(vec2<u32>(55540u, 60116u));
    return u_input.b.zy;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<f32>) -> Struct_4 {
    let var_0 = vec2<f32>(468f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(330f + -929f)));
    let var_1 = global0[_wgslsmith_index_u32(20427u, 10u)];
    let var_2 = Struct_2(Struct_1(select(2147483647i, ~(~global3.c), !(!arg_0.x)), ~_wgslsmith_dot_vec3_u32(abs(u_input.b), u_input.b), 0i, func_4(~(global3.d.x & var_1.b.b), select(!arg_0, !arg_0, select(arg_0, vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), arg_0)), func_2())), func_2(), -(~_wgslsmith_div_vec4_i32(-var_1.c, var_1.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(623f * var_0.x)), Struct_1(-1i, firstLeadingBit(max(39916u, select(4469u, 0u, true))), 1i, ~var_1.b.d));
    return Struct_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1145f + var_0.x))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.d))), -1888f)), Struct_3(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(global4.x)), -2863f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.d, var_2.d))), func_2().d, var_2.e.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1051f, _wgslsmith_f_op_f32(-var_2.d)))));
}

fn func_5(arg_0: f32, arg_1: i32, arg_2: Struct_4, arg_3: f32) -> u32 {
    let var_0 = false;
    var var_1 = 34235i;
    var var_2 = -_wgslsmith_clamp_i32(~36245i, i32(-1i) * -4689i, -2147483647i);
    let var_3 = ~2147483647i;
    let var_4 = all(vec4<bool>(any(select(!vec3<bool>(false, false, var_0), !vec3<bool>(var_0, var_0, false), vec3<bool>(true, var_0, true))), !var_0, !(arg_2.b.b.x < ~u_input.b.x), any(!select(vec4<bool>(true, var_0, var_0, var_0), vec4<bool>(var_0, var_0, true, var_0), var_0))));
    return arg_2.b.b.x & ~0u;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(625f, -574f)))))));
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(global4.x, 431f), _wgslsmith_f_op_f32(-1333f * 383f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-909f, -1305f)))), vec2<bool>(true, true))))), (abs(~vec2<u32>(27086u, global3.b)) << (vec2<u32>(_wgslsmith_sub_u32(u_input.c, global3.d.x), abs(4294967295u)) % vec2<u32>(32u))) << (u_input.b.xz % vec2<u32>(32u)), 9928i >> (u_input.b.x % 32u));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(656f, 1844f)) + global4.x)), -579f));
    let var_2 = _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, 1u, 4294967295u)) | u_input.b, u_input.b) << (~u_input.b % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(~1u, 0u ^ u_input.a, 3589u) ^ firstTrailingBit(~u_input.b), u_input.b));
    let var_3 = !(!select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), _wgslsmith_f_op_f32(-global4.x) < _wgslsmith_f_op_f32(select(712f, 556f, false))));
    global3 = Struct_1(-global3.c, ~func_5(-2394f, 2147483647i, func_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1550f, 634f, -1486f, var_0.a.x)))), var_0.a.x), ~global3.c, abs(max(~_wgslsmith_div_vec2_u32(vec2<u32>(var_2, 29919u), vec2<u32>(25462u, var_2)), vec2<u32>(var_0.b.x, ~0u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(step(-910f, 957f)), var_0.a.x, _wgslsmith_f_op_f32(-var_0.a.x)))), _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.c, _wgslsmith_mult_i32(7776i, global3.a)), -reverseBits(vec2<i32>(6508i, global3.a))), abs(-vec2<i32>(-7753i, global3.c)) | ~vec2<i32>(-13444i, global3.a)), ~(~(~global3.a | 7799i)));
}

