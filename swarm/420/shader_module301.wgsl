struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<bool>,
    d: vec2<bool>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: bool,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-61459i, 25476i, 17961i);

var<private> global1: array<Struct_4, 22> = array<Struct_4, 22>(Struct_4(Struct_2(4294967295u, Struct_1(vec4<u32>(26260u, 38942u, 4294967295u, 107798u), vec3<i32>(-33182i, -20205i, 12096i)), vec4<bool>(true, false, true, false), vec2<bool>(true, true), vec2<i32>(78148i, i32(-2147483648))), Struct_3(72407u, 0i, false, Struct_2(0u, Struct_1(vec4<u32>(41647u, 33591u, 0u, 1u), vec3<i32>(i32(-2147483648), -12523i, -1i)), vec4<bool>(true, true, true, false), vec2<bool>(true, false), vec2<i32>(0i, -70255i)), Struct_1(vec4<u32>(1u, 17880u, 48899u, 0u), vec3<i32>(0i, i32(-2147483648), 20791i)))), Struct_4(Struct_2(0u, Struct_1(vec4<u32>(4294967295u, 60965u, 56307u, 31485u), vec3<i32>(-1i, 2147483647i, -1i)), vec4<bool>(true, true, true, true), vec2<bool>(false, false), vec2<i32>(-1i, 51009i)), Struct_3(0u, 2147483647i, false, Struct_2(0u, Struct_1(vec4<u32>(1u, 33667u, 0u, 16145u), vec3<i32>(-36514i, 38514i, 0i)), vec4<bool>(false, false, true, false), vec2<bool>(true, true), vec2<i32>(38424i, -53279i)), Struct_1(vec4<u32>(1u, 1u, 22336u, 102932u), vec3<i32>(0i, -1i, 2147483647i)))), Struct_4(Struct_2(12260u, Struct_1(vec4<u32>(9000u, 31498u, 1u, 41703u), vec3<i32>(-38421i, 1i, -1i)), vec4<bool>(false, false, false, false), vec2<bool>(true, true), vec2<i32>(-46515i, i32(-2147483648))), Struct_3(0u, 2147483647i, true, Struct_2(0u, Struct_1(vec4<u32>(1u, 45914u, 42254u, 52127u), vec3<i32>(52899i, -1i, 57856i)), vec4<bool>(true, false, true, false), vec2<bool>(true, true), vec2<i32>(0i, 0i)), Struct_1(vec4<u32>(0u, 8552u, 4294967295u, 36310u), vec3<i32>(1i, 2147483647i, -1i)))), Struct_4(Struct_2(0u, Struct_1(vec4<u32>(0u, 21527u, 0u, 2691u), vec3<i32>(1i, 31752i, 2147483647i)), vec4<bool>(true, true, true, false), vec2<bool>(false, true), vec2<i32>(-1i, -1i)), Struct_3(1u, 15501i, false, Struct_2(1u, Struct_1(vec4<u32>(0u, 0u, 6810u, 4294967295u), vec3<i32>(4325i, i32(-2147483648), i32(-2147483648))), vec4<bool>(true, false, false, false), vec2<bool>(false, false), vec2<i32>(-5404i, -54992i)), Struct_1(vec4<u32>(0u, 0u, 0u, 0u), vec3<i32>(-11984i, 2147483647i, 2147483647i)))), Struct_4(Struct_2(0u, Struct_1(vec4<u32>(34005u, 4294967295u, 7468u, 55453u), vec3<i32>(-17440i, 21787i, i32(-2147483648))), vec4<bool>(true, false, false, true), vec2<bool>(true, false), vec2<i32>(31745i, i32(-2147483648))), Struct_3(46376u, -35857i, true, Struct_2(0u, Struct_1(vec4<u32>(4294967295u, 0u, 0u, 2997u), vec3<i32>(2147483647i, 36470i, 77742i)), vec4<bool>(false, false, false, false), vec2<bool>(true, true), vec2<i32>(16039i, -43107i)), Struct_1(vec4<u32>(4294967295u, 1u, 0u, 73728u), vec3<i32>(-1i, -67496i, -1i)))), Struct_4(Struct_2(4294967295u, Struct_1(vec4<u32>(4294967295u, 124194u, 27302u, 0u), vec3<i32>(-12194i, 0i, i32(-2147483648))), vec4<bool>(false, true, false, true), vec2<bool>(true, true), vec2<i32>(-38641i, 44865i)), Struct_3(80518u, -6723i, false, Struct_2(20700u, Struct_1(vec4<u32>(85444u, 4294967295u, 1u, 57413u), vec3<i32>(-1i, i32(-2147483648), -527i)), vec4<bool>(false, false, false, false), vec2<bool>(true, false), vec2<i32>(i32(-2147483648), 1i)), Struct_1(vec4<u32>(4294967295u, 0u, 0u, 26196u), vec3<i32>(80459i, -32050i, 0i)))), Struct_4(Struct_2(56548u, Struct_1(vec4<u32>(4294967295u, 38694u, 31040u, 59558u), vec3<i32>(i32(-2147483648), 49465i, 0i)), vec4<bool>(true, false, false, false), vec2<bool>(false, true), vec2<i32>(2147483647i, -43884i)), Struct_3(11654u, i32(-2147483648), false, Struct_2(4294967295u, Struct_1(vec4<u32>(106466u, 0u, 17802u, 1386u), vec3<i32>(0i, 560i, 22861i)), vec4<bool>(true, false, false, false), vec2<bool>(true, true), vec2<i32>(27726i, i32(-2147483648))), Struct_1(vec4<u32>(1u, 4294967295u, 1u, 4294967295u), vec3<i32>(35402i, -1i, 25291i)))), Struct_4(Struct_2(16517u, Struct_1(vec4<u32>(4294967295u, 4294967295u, 7453u, 4294967295u), vec3<i32>(i32(-2147483648), 63728i, -1i)), vec4<bool>(true, true, true, false), vec2<bool>(true, true), vec2<i32>(-40745i, 10094i)), Struct_3(4294967295u, -26596i, true, Struct_2(26674u, Struct_1(vec4<u32>(92091u, 36264u, 20534u, 4294967295u), vec3<i32>(-37200i, -38972i, -1358i)), vec4<bool>(true, true, false, true), vec2<bool>(true, false), vec2<i32>(1i, -1i)), Struct_1(vec4<u32>(32187u, 4294967295u, 0u, 0u), vec3<i32>(10233i, 2147483647i, -18380i)))), Struct_4(Struct_2(86345u, Struct_1(vec4<u32>(13318u, 33513u, 1u, 11133u), vec3<i32>(3044i, i32(-2147483648), 0i)), vec4<bool>(true, false, false, true), vec2<bool>(true, false), vec2<i32>(53093i, -33842i)), Struct_3(0u, -3699i, true, Struct_2(47419u, Struct_1(vec4<u32>(0u, 9479u, 27224u, 41648u), vec3<i32>(-1369i, 27429i, 33466i)), vec4<bool>(false, true, false, true), vec2<bool>(true, true), vec2<i32>(32190i, -22548i)), Struct_1(vec4<u32>(4294967295u, 19295u, 70488u, 1u), vec3<i32>(1i, -54519i, 1i)))), Struct_4(Struct_2(19486u, Struct_1(vec4<u32>(74174u, 1u, 114023u, 1u), vec3<i32>(-83906i, -50337i, -20852i)), vec4<bool>(true, true, false, true), vec2<bool>(false, true), vec2<i32>(-255i, 43424i)), Struct_3(1318u, -1i, false, Struct_2(1u, Struct_1(vec4<u32>(1u, 4294967295u, 0u, 34911u), vec3<i32>(1i, 0i, 2147483647i)), vec4<bool>(false, false, true, false), vec2<bool>(true, true), vec2<i32>(-32096i, 1i)), Struct_1(vec4<u32>(1u, 0u, 1u, 4294967295u), vec3<i32>(-23969i, 14234i, 2147483647i)))), Struct_4(Struct_2(0u, Struct_1(vec4<u32>(56532u, 0u, 1u, 10125u), vec3<i32>(0i, 42688i, 0i)), vec4<bool>(false, false, true, false), vec2<bool>(true, false), vec2<i32>(-1i, 9823i)), Struct_3(15429u, -1i, false, Struct_2(9888u, Struct_1(vec4<u32>(0u, 1u, 32055u, 22348u), vec3<i32>(25248i, 1i, i32(-2147483648))), vec4<bool>(false, true, true, true), vec2<bool>(false, true), vec2<i32>(2147483647i, 14851i)), Struct_1(vec4<u32>(0u, 7179u, 1u, 0u), vec3<i32>(i32(-2147483648), 1i, 54667i)))), Struct_4(Struct_2(4294967295u, Struct_1(vec4<u32>(23020u, 4294967295u, 1u, 18252u), vec3<i32>(4172i, -14504i, 0i)), vec4<bool>(false, false, true, false), vec2<bool>(true, true), vec2<i32>(-1i, 1i)), Struct_3(18601u, 0i, true, Struct_2(9189u, Struct_1(vec4<u32>(1u, 39964u, 1u, 52637u), vec3<i32>(7877i, -16917i, -24554i)), vec4<bool>(false, true, false, true), vec2<bool>(false, false), vec2<i32>(i32(-2147483648), -38920i)), Struct_1(vec4<u32>(0u, 1u, 4294967295u, 33347u), vec3<i32>(i32(-2147483648), -55121i, -32592i)))), Struct_4(Struct_2(0u, Struct_1(vec4<u32>(0u, 52911u, 1u, 1u), vec3<i32>(1i, 7661i, i32(-2147483648))), vec4<bool>(true, false, true, true), vec2<bool>(true, false), vec2<i32>(i32(-2147483648), -1i)), Struct_3(0u, 13906i, false, Struct_2(1u, Struct_1(vec4<u32>(1u, 27406u, 0u, 4294967295u), vec3<i32>(0i, -69409i, -36957i)), vec4<bool>(false, true, true, false), vec2<bool>(true, false), vec2<i32>(2147483647i, i32(-2147483648))), Struct_1(vec4<u32>(0u, 1u, 54768u, 7126u), vec3<i32>(9229i, 0i, 2147483647i)))), Struct_4(Struct_2(22926u, Struct_1(vec4<u32>(12279u, 21664u, 0u, 37288u), vec3<i32>(i32(-2147483648), 0i, i32(-2147483648))), vec4<bool>(true, false, false, false), vec2<bool>(false, false), vec2<i32>(2147483647i, -32466i)), Struct_3(1u, -14139i, false, Struct_2(0u, Struct_1(vec4<u32>(22977u, 4294967295u, 4294967295u, 23490u), vec3<i32>(2147483647i, 22520i, 2147483647i)), vec4<bool>(true, true, false, false), vec2<bool>(false, false), vec2<i32>(0i, -17384i)), Struct_1(vec4<u32>(36082u, 20863u, 64127u, 31651u), vec3<i32>(44385i, 90003i, 6341i)))), Struct_4(Struct_2(61612u, Struct_1(vec4<u32>(880u, 4294967295u, 4294967295u, 0u), vec3<i32>(30235i, -61930i, 0i)), vec4<bool>(true, true, false, true), vec2<bool>(false, false), vec2<i32>(-7824i, -25803i)), Struct_3(0u, 1i, false, Struct_2(4294967295u, Struct_1(vec4<u32>(14342u, 1u, 1u, 4294967295u), vec3<i32>(1i, 2147483647i, -4185i)), vec4<bool>(true, false, true, false), vec2<bool>(false, false), vec2<i32>(-1i, -2476i)), Struct_1(vec4<u32>(21256u, 18319u, 0u, 1u), vec3<i32>(0i, 1i, 1i)))), Struct_4(Struct_2(1u, Struct_1(vec4<u32>(22701u, 4294967295u, 0u, 4294967295u), vec3<i32>(i32(-2147483648), 1i, 8329i)), vec4<bool>(false, false, false, false), vec2<bool>(false, true), vec2<i32>(4137i, -261i)), Struct_3(68104u, 41127i, false, Struct_2(4294967295u, Struct_1(vec4<u32>(1u, 1u, 1u, 1u), vec3<i32>(-1i, i32(-2147483648), 2147483647i)), vec4<bool>(true, true, true, true), vec2<bool>(true, false), vec2<i32>(18503i, 57182i)), Struct_1(vec4<u32>(148001u, 0u, 1u, 1u), vec3<i32>(2266i, -1680i, 1i)))), Struct_4(Struct_2(0u, Struct_1(vec4<u32>(4294967295u, 4294967295u, 0u, 53071u), vec3<i32>(0i, 27976i, 2147483647i)), vec4<bool>(false, true, false, true), vec2<bool>(false, false), vec2<i32>(-7093i, -69633i)), Struct_3(0u, 2147483647i, false, Struct_2(30654u, Struct_1(vec4<u32>(8503u, 4740u, 84546u, 10756u), vec3<i32>(-14779i, -35520i, -50309i)), vec4<bool>(true, false, true, true), vec2<bool>(false, false), vec2<i32>(2582i, 2147483647i)), Struct_1(vec4<u32>(1u, 1u, 4294967295u, 1u), vec3<i32>(-22794i, -7951i, 21849i)))), Struct_4(Struct_2(1u, Struct_1(vec4<u32>(4294967295u, 0u, 0u, 29812u), vec3<i32>(11452i, i32(-2147483648), 19892i)), vec4<bool>(true, false, true, true), vec2<bool>(true, true), vec2<i32>(-1i, 2147483647i)), Struct_3(4294967295u, 0i, false, Struct_2(1u, Struct_1(vec4<u32>(4294967295u, 18749u, 0u, 1u), vec3<i32>(18905i, -1i, 13608i)), vec4<bool>(true, false, true, true), vec2<bool>(false, false), vec2<i32>(-6783i, 2171i)), Struct_1(vec4<u32>(4294967295u, 24619u, 1u, 54163u), vec3<i32>(2147483647i, -34841i, 72621i)))), Struct_4(Struct_2(36601u, Struct_1(vec4<u32>(1u, 1u, 37275u, 99834u), vec3<i32>(-16683i, i32(-2147483648), -1i)), vec4<bool>(false, false, false, false), vec2<bool>(false, false), vec2<i32>(1i, -1i)), Struct_3(24936u, 1i, true, Struct_2(32959u, Struct_1(vec4<u32>(0u, 9791u, 0u, 1u), vec3<i32>(-1i, -1i, -1i)), vec4<bool>(false, false, false, true), vec2<bool>(true, false), vec2<i32>(30059i, -1i)), Struct_1(vec4<u32>(1u, 4294967295u, 1u, 0u), vec3<i32>(34295i, -72338i, -49943i)))), Struct_4(Struct_2(0u, Struct_1(vec4<u32>(9337u, 4294967295u, 1u, 17778u), vec3<i32>(1i, 2147483647i, 37994i)), vec4<bool>(true, true, true, true), vec2<bool>(true, false), vec2<i32>(-1i, 1i)), Struct_3(1u, 60222i, false, Struct_2(4294967295u, Struct_1(vec4<u32>(36953u, 62676u, 0u, 0u), vec3<i32>(2147483647i, -14410i, 0i)), vec4<bool>(false, false, true, true), vec2<bool>(false, true), vec2<i32>(10504i, -57461i)), Struct_1(vec4<u32>(1u, 4294967295u, 10537u, 0u), vec3<i32>(1i, 20290i, -1i)))), Struct_4(Struct_2(50953u, Struct_1(vec4<u32>(50950u, 1u, 4294967295u, 1886u), vec3<i32>(-1i, 1i, 13119i)), vec4<bool>(true, false, true, true), vec2<bool>(false, false), vec2<i32>(-3912i, -12360i)), Struct_3(0u, 39i, false, Struct_2(4466u, Struct_1(vec4<u32>(0u, 0u, 0u, 32648u), vec3<i32>(1i, -1i, 9789i)), vec4<bool>(false, false, false, false), vec2<bool>(true, false), vec2<i32>(-5646i, -1i)), Struct_1(vec4<u32>(69542u, 0u, 12020u, 27099u), vec3<i32>(16644i, -9810i, 18509i)))), Struct_4(Struct_2(16837u, Struct_1(vec4<u32>(86835u, 34248u, 0u, 1u), vec3<i32>(1i, -1022i, i32(-2147483648))), vec4<bool>(true, true, true, true), vec2<bool>(true, false), vec2<i32>(1i, 1i)), Struct_3(9832u, 52685i, true, Struct_2(1u, Struct_1(vec4<u32>(5894u, 1u, 13486u, 4294967295u), vec3<i32>(-1i, 36919i, 20819i)), vec4<bool>(false, true, true, true), vec2<bool>(true, false), vec2<i32>(-17427i, 39651i)), Struct_1(vec4<u32>(4294967295u, 68462u, 0u, 21118u), vec3<i32>(i32(-2147483648), 0i, 0i)))));

var<private> global2: array<vec4<i32>, 28>;

var<private> global3: u32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: bool, arg_3: vec4<i32>) -> u32 {
    global3 = 1u;
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) * vec2<f32>(936f, 870f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0, arg_0), vec2<f32>(384f, arg_0), arg_1.d.d)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, arg_0), vec2<f32>(1000f, arg_0)) - _wgslsmith_div_vec2_f32(vec2<f32>(arg_0, -1358f), vec2<f32>(-976f, -113f)))))));
    global1 = array<Struct_4, 22>();
    global2 = array<vec4<i32>, 28>();
    global3 = u_input.b;
    return _wgslsmith_div_u32(~arg_1.d.b.a.x ^ ~19627u, u_input.b);
}

fn func_3(arg_0: f32) -> vec4<bool> {
    var var_0 = _wgslsmith_mod_vec3_u32(select(~(~vec3<u32>(u_input.b, 4294967295u, 4294967295u)) ^ ~abs(vec3<u32>(12723u, u_input.b, 74970u)), _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 0u, 16745u), vec3<u32>(u_input.b, 73155u, 58639u), vec3<u32>(4294967295u, u_input.b, u_input.b)) >> ((vec3<u32>(u_input.b, u_input.b, u_input.b) << (vec3<u32>(1u, 0u, 45099u) % vec3<u32>(32u))) % vec3<u32>(32u)), abs(vec3<u32>(u_input.b, u_input.b, 9244u) >> (vec3<u32>(8011u, 0u, u_input.b) % vec3<u32>(32u)))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true))), max(~abs(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.b, u_input.b), vec3<u32>(68747u, u_input.b, u_input.b))), select(abs(select(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(71121u, 1u, u_input.b), true)), vec3<u32>(~0u, u_input.b, 0u), any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), true)))));
    let var_1 = select(vec2<bool>(true, true), vec2<bool>(true, select(all(vec4<bool>(true, true, true, true)), !all(vec3<bool>(false, false, false)), true)), !vec2<bool>(any(vec4<bool>(true, true, false, true)) | (111656u < u_input.b), all(vec4<bool>(true, true, true, true))));
    let var_2 = vec2<bool>(firstTrailingBit(1u) <= abs(reverseBits(var_0.x) & ~var_0.x), !var_1.x);
    global3 = _wgslsmith_mod_u32(firstTrailingBit(83157u), 0u);
    global2 = array<vec4<i32>, 28>();
    return !select(!vec4<bool>(true, all(vec3<bool>(true, true, var_1.x)), true, false), vec4<bool>(false, all(!vec2<bool>(var_2.x, var_1.x)), var_2.x, all(vec3<bool>(true, true, true))), !select(!vec4<bool>(var_1.x, var_2.x, var_1.x, true), select(vec4<bool>(var_1.x, var_2.x, var_2.x, var_1.x), vec4<bool>(true, false, false, var_2.x), vec4<bool>(var_2.x, false, var_1.x, false)), true));
}

fn func_2(arg_0: vec2<bool>, arg_1: i32, arg_2: vec3<bool>) -> u32 {
    let var_0 = Struct_3(~_wgslsmith_add_u32(u_input.b, 22683u), u_input.a.x, arg_2.x, Struct_2(1u, Struct_1(_wgslsmith_mult_vec4_u32(~vec4<u32>(0u, u_input.b, 4294967295u, u_input.b), _wgslsmith_sub_vec4_u32(vec4<u32>(56739u, 44859u, 0u, u_input.b), vec4<u32>(0u, 23470u, u_input.b, 0u))), vec3<i32>(-7101i, global0.x | u_input.a.x, u_input.a.x)), func_3(_wgslsmith_f_op_f32(f32(-1f) * -2229f)), arg_2.xx, (~u_input.a ^ ~u_input.a) ^ firstLeadingBit(min(u_input.a, vec2<i32>(arg_1, u_input.a.x)))), Struct_1(~(~(~vec4<u32>(u_input.b, 20720u, 4294967295u, u_input.b))), countOneBits(~vec3<i32>(arg_1, u_input.a.x, arg_1) << (min(vec3<u32>(0u, 79266u, 4294967295u), vec3<u32>(u_input.b, u_input.b, u_input.b)) % vec3<u32>(32u)))));
    let var_1 = true;
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(223f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1648f - 421f) + -491f))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(177f, _wgslsmith_f_op_f32(682f * _wgslsmith_f_op_f32(sign(-856f)))))));
    global3 = _wgslsmith_mult_u32(countOneBits(~firstLeadingBit(~0u)), 0u);
    let var_3 = var_0.d.b.a.xzz;
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_sub_vec4_u32(select(vec4<u32>(func_1(-831f, Struct_3(4294967295u, u_input.a.x, false, Struct_2(u_input.b, Struct_1(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec3<i32>(-2147483647i, 7241i, global0.x)), vec4<bool>(false, false, false, false), vec2<bool>(false, false), vec2<i32>(-11414i, u_input.a.x)), Struct_1(vec4<u32>(u_input.b, u_input.b, u_input.b, 98909u), vec3<i32>(46011i, 35787i, u_input.a.x))), false, global2[_wgslsmith_index_u32(u_input.b, 28u)]), u_input.b, _wgslsmith_add_u32(31520u, 12871u), 65926u), ~(~vec4<u32>(u_input.b, 1u, u_input.b, 4294967295u)), vec4<bool>(true, true, true, true)), vec4<u32>(func_2(vec2<bool>(true, false), global0.x, vec3<bool>(false, true, false)) ^ countOneBits(u_input.b), 4294967295u, reverseBits(29471u), 4294967295u)), -_wgslsmith_div_vec3_i32(select(vec3<i32>(0i, -12165i, 19605i), vec3<i32>(-8313i, u_input.a.x, -25696i), false) & firstTrailingBit(vec3<i32>(global0.x, u_input.a.x, global0.x)), select(vec3<i32>(-1i, global0.x, global0.x) & vec3<i32>(1i, global0.x, 2147483647i), vec3<i32>(u_input.a.x, u_input.a.x, global0.x), vec3<bool>(true, false, false))));
    var var_1 = _wgslsmith_clamp_u32(_wgslsmith_add_u32(65509u, ~var_0.a.x), ~max(~var_0.a.x, 1u), 46899u);
    var_1 = ~(~_wgslsmith_mod_u32(_wgslsmith_add_u32(34754u, 0u) << (~u_input.b % 32u), var_0.a.x));
    global1 = array<Struct_4, 22>();
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(2582f, 738f), 1f, -1795f)))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1490f, 2398f, -404f), vec3<f32>(919f, 203f, 907f), true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(155f, -1000f, 667f)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(-105f, 1018f, 1369f), vec3<f32>(211f, 981f, -403f)))), false)))));
    let var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2.x, var_2.x, 541f, var_2.x))), _wgslsmith_div_vec4_f32(vec4<f32>(-2024f, -287f, var_2.x, var_2.x), vec4<f32>(-599f, -315f, 1072f, 2351f)))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1130f, -146f, var_2.x, -873f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, var_2.x, var_2.x, 665f))) * vec4<f32>(-263f, 626f, 809f, var_2.x)))));
}

