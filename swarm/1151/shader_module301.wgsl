struct Struct_1 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_5 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: vec3<f32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 18> = array<Struct_3, 18>(Struct_3(Struct_1(vec3<u32>(5728u, 0u, 52276u), vec2<f32>(876f, 1000f), vec4<i32>(19504i, -14309i, 30124i, i32(-2147483648)), vec2<i32>(2147483647i, 0i)), Struct_1(vec3<u32>(25828u, 0u, 80401u), vec2<f32>(-1000f, 522f), vec4<i32>(44636i, -27061i, 44763i, 22259i), vec2<i32>(-6069i, -83146i))), Struct_3(Struct_1(vec3<u32>(1u, 0u, 17310u), vec2<f32>(-2138f, 315f), vec4<i32>(0i, 50261i, -19992i, i32(-2147483648)), vec2<i32>(0i, 2147483647i)), Struct_1(vec3<u32>(0u, 23752u, 1u), vec2<f32>(809f, -1019f), vec4<i32>(1i, i32(-2147483648), -28818i, -65764i), vec2<i32>(37400i, 2147483647i))), Struct_3(Struct_1(vec3<u32>(36098u, 1u, 19528u), vec2<f32>(1471f, 2270f), vec4<i32>(7445i, -4411i, 63346i, i32(-2147483648)), vec2<i32>(24508i, 5223i)), Struct_1(vec3<u32>(1u, 0u, 32142u), vec2<f32>(1000f, 464f), vec4<i32>(0i, 27120i, 24680i, -43204i), vec2<i32>(i32(-2147483648), 1i))), Struct_3(Struct_1(vec3<u32>(1u, 25321u, 0u), vec2<f32>(-247f, -429f), vec4<i32>(1i, 46901i, 16192i, -542i), vec2<i32>(i32(-2147483648), 2147483647i)), Struct_1(vec3<u32>(34189u, 0u, 78890u), vec2<f32>(1200f, 1000f), vec4<i32>(64488i, 18745i, i32(-2147483648), i32(-2147483648)), vec2<i32>(1i, 1i))), Struct_3(Struct_1(vec3<u32>(1u, 51968u, 22862u), vec2<f32>(-1588f, -808f), vec4<i32>(33578i, 34355i, 0i, i32(-2147483648)), vec2<i32>(2147483647i, 9762i)), Struct_1(vec3<u32>(39559u, 4294967295u, 16475u), vec2<f32>(-872f, 926f), vec4<i32>(0i, 31197i, -27444i, -23687i), vec2<i32>(1i, -1i))), Struct_3(Struct_1(vec3<u32>(0u, 7516u, 868u), vec2<f32>(2830f, 1000f), vec4<i32>(i32(-2147483648), -30651i, 2147483647i, i32(-2147483648)), vec2<i32>(2147483647i, 2147483647i)), Struct_1(vec3<u32>(36531u, 48037u, 50536u), vec2<f32>(2261f, -1249f), vec4<i32>(-42538i, -12813i, -24749i, 92342i), vec2<i32>(36205i, 1i))), Struct_3(Struct_1(vec3<u32>(36500u, 0u, 0u), vec2<f32>(-1830f, -1412f), vec4<i32>(-6058i, 1i, i32(-2147483648), 3984i), vec2<i32>(1i, -1i)), Struct_1(vec3<u32>(1u, 56472u, 4294967295u), vec2<f32>(-1388f, 937f), vec4<i32>(i32(-2147483648), 11374i, -4621i, -1i), vec2<i32>(72962i, i32(-2147483648)))), Struct_3(Struct_1(vec3<u32>(15644u, 1u, 73108u), vec2<f32>(236f, -110f), vec4<i32>(0i, 33182i, -21177i, 11299i), vec2<i32>(1609i, 23622i)), Struct_1(vec3<u32>(149620u, 4294967295u, 32624u), vec2<f32>(1000f, 1581f), vec4<i32>(1i, 2147483647i, 0i, 2147483647i), vec2<i32>(-11255i, 20558i))), Struct_3(Struct_1(vec3<u32>(50548u, 4294967295u, 57588u), vec2<f32>(-1202f, 142f), vec4<i32>(1i, 2147483647i, 18452i, 1i), vec2<i32>(1i, i32(-2147483648))), Struct_1(vec3<u32>(82174u, 0u, 0u), vec2<f32>(1475f, 944f), vec4<i32>(i32(-2147483648), -26477i, -30299i, -1i), vec2<i32>(-1i, -16379i))), Struct_3(Struct_1(vec3<u32>(38734u, 9534u, 1u), vec2<f32>(1000f, 1244f), vec4<i32>(i32(-2147483648), -1i, 1i, -1i), vec2<i32>(i32(-2147483648), 2147483647i)), Struct_1(vec3<u32>(22323u, 4294967295u, 93290u), vec2<f32>(-1405f, 1417f), vec4<i32>(8181i, -48438i, 52669i, -30740i), vec2<i32>(23590i, i32(-2147483648)))), Struct_3(Struct_1(vec3<u32>(49671u, 95985u, 0u), vec2<f32>(-1195f, -718f), vec4<i32>(-22630i, 62831i, -48754i, -20793i), vec2<i32>(1i, 42763i)), Struct_1(vec3<u32>(35555u, 1u, 4442u), vec2<f32>(-630f, 1638f), vec4<i32>(-1i, -50779i, 2147483647i, -1i), vec2<i32>(-14207i, -1i))), Struct_3(Struct_1(vec3<u32>(0u, 1u, 0u), vec2<f32>(-1228f, 2220f), vec4<i32>(1i, -48560i, 30771i, -1i), vec2<i32>(32499i, 24250i)), Struct_1(vec3<u32>(14561u, 78861u, 8283u), vec2<f32>(-1302f, 725f), vec4<i32>(22400i, 10592i, -575i, -44864i), vec2<i32>(11331i, 38210i))), Struct_3(Struct_1(vec3<u32>(27083u, 12820u, 1u), vec2<f32>(-518f, -1740f), vec4<i32>(8510i, i32(-2147483648), i32(-2147483648), 0i), vec2<i32>(-1i, i32(-2147483648))), Struct_1(vec3<u32>(1u, 4294967295u, 821u), vec2<f32>(-816f, 837f), vec4<i32>(8299i, -7095i, -39814i, 1i), vec2<i32>(1i, 1i))), Struct_3(Struct_1(vec3<u32>(1u, 0u, 7423u), vec2<f32>(279f, -346f), vec4<i32>(-66604i, -1i, -24871i, -1666i), vec2<i32>(51341i, -1i)), Struct_1(vec3<u32>(0u, 4294967295u, 32716u), vec2<f32>(-1000f, -1000f), vec4<i32>(2147483647i, 2147483647i, 17424i, 27268i), vec2<i32>(-1i, 27042i))), Struct_3(Struct_1(vec3<u32>(75756u, 0u, 9670u), vec2<f32>(-547f, 920f), vec4<i32>(1i, 2147483647i, 0i, 42943i), vec2<i32>(-1i, 12402i)), Struct_1(vec3<u32>(77362u, 703u, 1u), vec2<f32>(1471f, 216f), vec4<i32>(15483i, i32(-2147483648), 2147483647i, 0i), vec2<i32>(-1i, 0i))), Struct_3(Struct_1(vec3<u32>(29364u, 4294967295u, 1u), vec2<f32>(-582f, -451f), vec4<i32>(35897i, 18434i, -1i, 4418i), vec2<i32>(39490i, 24277i)), Struct_1(vec3<u32>(1515u, 24767u, 10903u), vec2<f32>(-1280f, 483f), vec4<i32>(-1i, -1i, -41020i, 7578i), vec2<i32>(-1i, 34799i))), Struct_3(Struct_1(vec3<u32>(21091u, 45665u, 54724u), vec2<f32>(297f, 148f), vec4<i32>(i32(-2147483648), 2147483647i, -56653i, 0i), vec2<i32>(-40722i, i32(-2147483648))), Struct_1(vec3<u32>(85410u, 0u, 0u), vec2<f32>(-835f, -1000f), vec4<i32>(42550i, 0i, 0i, 2147483647i), vec2<i32>(i32(-2147483648), i32(-2147483648)))), Struct_3(Struct_1(vec3<u32>(0u, 54936u, 85404u), vec2<f32>(1000f, 1504f), vec4<i32>(0i, i32(-2147483648), 162i, -28622i), vec2<i32>(-8635i, i32(-2147483648))), Struct_1(vec3<u32>(0u, 32509u, 52116u), vec2<f32>(-1919f, -1113f), vec4<i32>(33619i, 31845i, 1i, -1i), vec2<i32>(0i, 922i))));

var<private> global1: array<vec3<i32>, 22>;

var<private> global2: i32;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: f32) -> i32 {
    global1 = array<vec3<i32>, 22>();
    let var_0 = _wgslsmith_f_op_f32(-arg_0.b.x);
    var var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_2, -1262f, arg_0.b.x), vec3<f32>(var_0, 491f, -479f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.x, -1583f, -324f))))), -186f);
    global0 = array<Struct_3, 18>();
    let var_2 = arg_0;
    return arg_0.d.x;
}

fn func_4(arg_0: vec4<i32>) -> vec2<i32> {
    global1 = array<vec3<i32>, 22>();
    var var_0 = Struct_5(4294967295u, _wgslsmith_sub_i32(-_wgslsmith_mult_i32(arg_0.x, -43496i), 1i), Struct_1(max(~vec3<u32>(u_input.a, u_input.a, u_input.a), ~vec3<u32>(u_input.a, u_input.a, u_input.a)) >> (_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(16344u, 1u, u_input.a), vec3<u32>(u_input.a, 0u, u_input.a)), vec3<u32>(1u, 1u, 1u), vec3<u32>(43830u, 1u, u_input.a) | vec3<u32>(4294967295u, u_input.a, 1u)) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(764f, -379f), vec2<f32>(1004f, -518f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-764f, 222f))))), _wgslsmith_add_vec4_i32(arg_0, -arg_0) & select(_wgslsmith_mod_vec4_i32(arg_0, vec4<i32>(arg_0.x, 13953i, arg_0.x, 2147483647i)), ~vec4<i32>(arg_0.x, arg_0.x, -27296i, arg_0.x), vec4<bool>(true, true, true, false)), ~_wgslsmith_sub_vec2_i32(arg_0.xz << (vec2<u32>(0u, u_input.a) % vec2<u32>(32u)), ~arg_0.zz)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1227f, -875f, -129f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1744f, 444f, -401f), vec3<f32>(-1359f, 818f, 127f), true)))))), -vec2<i32>(reverseBits(~arg_0.x), countOneBits(func_3(Struct_1(vec3<u32>(u_input.a, u_input.a, 46883u), vec2<f32>(666f, 321f), arg_0, arg_0.wz), true, -2020f))));
    let var_1 = _wgslsmith_f_op_f32(ceil(-781f));
    var_0 = Struct_5(u_input.a, -select(_wgslsmith_clamp_i32(1i, 2147483647i, var_0.b), -(i32(-1i) * -61173i), true), var_0.c, vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.c.b.x - -1969f), -750f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - var_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-483f - var_0.c.b.x))), 360f), arg_0.zz);
    var var_2 = Struct_3(Struct_1(vec3<u32>(_wgslsmith_mod_u32(abs(var_0.a), var_0.a), u_input.a, u_input.a | ~31683u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(1020f)), _wgslsmith_f_op_f32(-var_0.d.x))), ~firstTrailingBit(reverseBits(vec4<i32>(27671i, -2147483647i, 2147483647i, 2147483647i))), arg_0.wx), Struct_1(_wgslsmith_div_vec3_u32(~vec3<u32>(var_0.a, var_0.c.a.x, u_input.a), ~_wgslsmith_add_vec3_u32(var_0.c.a, var_0.c.a)), _wgslsmith_f_op_vec2_f32(var_0.c.b - var_0.c.b), vec4<i32>(reverseBits(var_0.c.d.x) | (var_0.e.x ^ arg_0.x), -1i, 49318i, ~var_0.c.c.x << (select(4294967295u, 9085u, false) % 32u)), vec2<i32>(~18095i ^ _wgslsmith_mult_i32(var_0.e.x, -19892i), ~2147483647i)));
    return ~max(vec2<i32>(var_0.b, -12310i) & vec2<i32>(2147483647i, ~1i), -max(~vec2<i32>(-25329i, var_0.b), var_2.a.d));
}

fn func_2(arg_0: Struct_1) -> bool {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -762f), arg_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.b.x + -284f), _wgslsmith_f_op_f32(1921f - 1074f), true)))) + 889f));
    var var_1 = -2147483647i;
    let var_2 = Struct_5(4294967295u, 2147483647i, Struct_1(min(arg_0.a, vec3<u32>(4294967295u, ~arg_0.a.x, arg_0.a.x & u_input.a)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -521f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1501f) - _wgslsmith_f_op_f32(floor(var_0.x)))), vec4<i32>(-arg_0.d.x, ~arg_0.c.x, arg_0.d.x, arg_0.c.x) | firstTrailingBit(arg_0.c), func_4(vec4<i32>(arg_0.d.x, func_3(arg_0, true, arg_0.b.x), _wgslsmith_dot_vec2_i32(arg_0.c.yy, vec2<i32>(2147483647i, arg_0.c.x)), arg_0.c.x))), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -424f)))), var_0.x, arg_0.b.x), vec2<i32>(arg_0.d.x, _wgslsmith_dot_vec2_i32(firstTrailingBit(arg_0.c.zw) | min(arg_0.c.zw, vec2<i32>(arg_0.c.x, 47497i)), ~vec2<i32>(arg_0.c.x, arg_0.c.x))));
    var_1 = -(~var_2.c.d.x >> (u_input.a % 32u));
    global1 = array<vec3<i32>, 22>();
    return any(vec3<bool>(true, false, any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false)) || true));
}

fn func_1() -> Struct_3 {
    global2 = ~min(countOneBits(1i), countOneBits(28461i));
    let var_0 = Struct_5(u_input.a, 7859i << (~_wgslsmith_mod_u32(~891u, _wgslsmith_sub_u32(u_input.a, 0u)) % 32u), Struct_1(~(~_wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(4294967295u, 15822u, u_input.a))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -290f), -1112f)), vec4<i32>(-1i, ~_wgslsmith_sub_i32(-2147483647i, -12591i), firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 3899i, 3074i, 0i), vec4<i32>(1i, -2147483647i, -2147483647i, -2147483647i))), _wgslsmith_dot_vec4_i32(-vec4<i32>(11252i, 2147483647i, 2147483647i, 0i), abs(vec4<i32>(-5972i, -42334i, 245i, -37454i)))), ~(-(~vec2<i32>(27760i, 2147483647i)))), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-1227f, _wgslsmith_f_op_f32(f32(-1f) * -685f), true)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1398f + 230f), _wgslsmith_div_f32(-724f, -836f), true)))), -2098f), _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(0i, _wgslsmith_mod_i32(-10657i, -1i)), 1i << (firstLeadingBit(u_input.a) % 32u)), vec2<i32>(-34487i, min(1i, 1i)), -select(vec2<i32>(2147483647i, -1i), ~vec2<i32>(-1i, -1i), all(vec3<bool>(true, false, true)))));
    let var_1 = select(vec4<i32>(var_0.b, var_0.c.c.x, ~var_0.c.d.x, var_0.c.c.x), _wgslsmith_add_vec4_i32(vec4<i32>(-11735i, var_0.e.x ^ (var_0.b >> (54053u % 32u)), _wgslsmith_mult_i32(0i, var_0.b), var_0.c.c.x), vec4<i32>(-15639i, var_0.e.x, _wgslsmith_sub_i32(0i >> (u_input.a % 32u), firstTrailingBit(var_0.e.x)), reverseBits(var_0.c.d.x))), select(func_2(Struct_1(_wgslsmith_sub_vec3_u32(var_0.c.a, var_0.c.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-401f, var_0.c.b.x)), -var_0.c.c, vec2<i32>(var_0.b, var_0.e.x))), !all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false))), true));
    let var_2 = vec2<u32>(~(_wgslsmith_mod_u32(~var_0.a, u_input.a) >> (abs(11255u) % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, u_input.a), var_0.c.a.xy), var_0.c.a.x, ~15451u) ^ _wgslsmith_mult_vec3_u32(~vec3<u32>(1u, 85414u, 0u), vec3<u32>(u_input.a, 1u, 24967u)), abs(~vec3<u32>(var_0.c.a.x, 4294967295u, var_0.c.a.x))));
    global0 = array<Struct_3, 18>();
    return global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(1u, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, var_2.x), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, var_0.c.a.x), vec2<u32>(var_0.a, var_2.x))), ~_wgslsmith_dot_vec2_u32(vec2<u32>(13195u, var_2.x), var_2))), 18u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    var var_1 = func_1();
    let var_2 = !(!(true && (func_1().b.a.x > firstLeadingBit(0u))));
    global0 = array<Struct_3, 18>();
    var var_3 = Struct_2(var_1.a, func_1().b, vec3<u32>(0u, 4294967295u, _wgslsmith_mod_u32(var_1.b.a.x, ~1u)), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1874f - var_1.b.b.x)) <= _wgslsmith_f_op_f32(-439f - 1303f)));
    global0 = array<Struct_3, 18>();
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(var_1.a.b.x))))));
    let var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.b.b.x * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-279f - 100f) * var_3.b.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b.b.x * -534f))))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.a.b.x * var_3.a.b.x) + _wgslsmith_f_op_f32(-var_3.b.b.x)), 400f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1138f * var_1.b.b.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1315f, -684f))))));
    let x = u_input.a;
    s_output = StorageBuffer(18635u, 1239f);
}

