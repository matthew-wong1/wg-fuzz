struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct Struct_5 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<f32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: f32 = 480f;

var<private> global2: array<vec4<f32>, 30> = array<vec4<f32>, 30>(vec4<f32>(155f, 1412f, -1724f, 869f), vec4<f32>(793f, 188f, -554f, 534f), vec4<f32>(-1000f, 1834f, 1671f, 1000f), vec4<f32>(989f, -1835f, -794f, -761f), vec4<f32>(-292f, 1105f, -728f, 489f), vec4<f32>(1408f, 516f, 617f, 731f), vec4<f32>(888f, -1002f, -1189f, -416f), vec4<f32>(-232f, 523f, -1940f, -2236f), vec4<f32>(-656f, 1178f, -1005f, -1841f), vec4<f32>(671f, 1261f, 1000f, -412f), vec4<f32>(1000f, 364f, -434f, 1000f), vec4<f32>(453f, -1000f, -499f, 723f), vec4<f32>(-1797f, 537f, -1266f, 331f), vec4<f32>(1493f, -848f, 485f, 1750f), vec4<f32>(-1170f, 586f, -899f, -1000f), vec4<f32>(1034f, 243f, -1116f, 112f), vec4<f32>(472f, -167f, -543f, 1908f), vec4<f32>(-1105f, -2689f, -1000f, 409f), vec4<f32>(-623f, 1811f, 310f, -1363f), vec4<f32>(-1685f, -442f, -2594f, -794f), vec4<f32>(-863f, 1023f, -694f, 510f), vec4<f32>(-642f, 1353f, -1806f, -1089f), vec4<f32>(353f, 718f, -1136f, -1064f), vec4<f32>(1176f, 1389f, -676f, 325f), vec4<f32>(1235f, 580f, -166f, 861f), vec4<f32>(964f, 404f, -757f, -733f), vec4<f32>(619f, 2362f, -821f, 661f), vec4<f32>(1534f, -1760f, -192f, 204f), vec4<f32>(368f, -1240f, 1000f, 295f), vec4<f32>(-260f, -170f, -266f, 1072f));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: vec4<i32>) -> Struct_5 {
    var var_0 = any(!vec3<bool>(global0.b, true, any(select(vec4<bool>(global0.b, true, global0.a, global0.a), vec4<bool>(true, global0.b, true, global0.a), global0.b))));
    let var_1 = ~abs(~vec2<u32>(min(13378u, 62202u), _wgslsmith_mod_u32(u_input.c.x, u_input.e)));
    let var_2 = arg_0;
    var_0 = global0.a | false;
    let var_3 = var_1.x;
    return Struct_5(!(!global0.a), global0.a);
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(116f - arg_1.d.b.x) * arg_1.d.a.x);
    var var_1 = arg_1.d.a.x;
    var var_2 = u_input.c.yzz << (arg_1.c.xzx % vec3<u32>(32u));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.e.a.x, 437f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2425f, -781f) * vec2<f32>(-1357f, arg_1.e.a.x)) * arg_1.e.b))), arg_1.e.b);
    global1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.e.b.x) * 108f)))));
    return u_input.c.x << (u_input.c.x % 32u);
}

fn func_2() -> Struct_2 {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2728f) - _wgslsmith_f_op_f32(1065f + 2029f))))));
    let var_0 = Struct_4(Struct_2(u_input.a.x, -vec3<i32>(_wgslsmith_mod_i32(33832i, u_input.d), -2147483647i, u_input.d), ~vec4<u32>(func_3(vec4<bool>(global0.b, global0.a, false, global0.a), Struct_2(u_input.a.x, vec3<i32>(u_input.d, -2147483647i, -25619i), u_input.c, Struct_1(vec2<f32>(169f, -1486f), vec2<f32>(-268f, -1064f)), Struct_1(vec2<f32>(753f, 759f), vec2<f32>(-1402f, -910f)))), 40298u, ~u_input.a.x, u_input.b.x & u_input.b.x), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-896f, -957f), vec2<f32>(-1000f, -1024f), global0.a))), vec2<f32>(1303f, -1402f)), Struct_1(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1116f, -559f))), _wgslsmith_div_vec2_f32(vec2<f32>(1430f, 593f), vec2<f32>(947f, -656f)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(1064f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(492f, -826f))))))), -abs(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, u_input.d, 46898i, 50212i), vec4<i32>(-1i, -29446i, 8354i, -69592i))) << (u_input.c % vec4<u32>(32u)), -(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.d, u_input.d, -68944i, u_input.d), vec4<i32>(0i, 1i, u_input.d, u_input.d)), _wgslsmith_div_vec4_i32(vec4<i32>(-55851i, u_input.d, u_input.d, u_input.d), vec4<i32>(0i, -2147483647i, 12187i, u_input.d))) | vec4<i32>(~(-35688i), ~u_input.d, u_input.d, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.d), vec4<i32>(-2147483647i, 22941i, 3989i, 1i)))));
    let var_1 = global0.b;
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(209f, var_0.a.e.b.x, var_0.b) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(684f, 751f, var_0.a.e.b.x) + vec3<f32>(var_0.b, 971f, -736f)) * _wgslsmith_div_vec3_f32(vec3<f32>(var_0.a.d.a.x, var_0.a.e.a.x, 971f), vec3<f32>(-626f, var_0.a.e.b.x, 1448f)))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1477f, 168f, -1260f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 127f, var_0.a.e.b.x) - vec3<f32>(-1313f, -502f, var_0.a.e.b.x)), select(vec3<bool>(global0.b, global0.b, false), vec3<bool>(global0.b, true, false), vec3<bool>(global0.b, true, false)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(622f, 1464f, -1080f)))))));
    var var_3 = vec3<u32>(countOneBits(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_0.a.a), var_0.a.c.wz) << (_wgslsmith_clamp_u32(u_input.b.x, u_input.c.x, 15951u) % 32u))), 1u, 54733u);
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(-vec4<i32>(min(29752i, u_input.d) >> (u_input.a.x % 32u), min(_wgslsmith_mod_i32(-2147483647i, u_input.d), 0i), u_input.d << (~u_input.b.x % 32u), countOneBits(u_input.d >> (u_input.b.x % 32u))));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-705f - -862f)))) - 1f);
    var var_1 = func_2();
    let var_2 = all(select(!vec3<bool>(!var_0.b, true, var_1.d.b.x > -756f), !select(vec3<bool>(global0.a, true, false), vec3<bool>(true, false, false), global0.a), select(true, false, !(!var_0.a))));
    let var_3 = var_1.d.a;
    var var_4 = _wgslsmith_dot_vec4_u32(min(firstTrailingBit(vec4<u32>(firstTrailingBit(u_input.b.x), var_1.a, ~12448u, u_input.b.x)), max(u_input.c, ~vec4<u32>(4294967295u, var_1.c.x, 0u, 9233u))), func_2().c);
    let x = u_input.a;
    s_output = StorageBuffer(select(~u_input.c.xxx, reverseBits(~vec3<u32>(0u, 53779u, var_1.c.x)), var_0.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -503f)), _wgslsmith_f_op_f32(ceil(618f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d.b.x, var_1.e.a.x, var_1.e.b.x, var_1.d.a.x) - vec4<f32>(var_3.x, 664f, var_1.e.b.x, 506f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-884f, var_1.e.b.x, -593f, 753f))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(global2[_wgslsmith_index_u32(0u, 30u)])))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-203f + _wgslsmith_f_op_f32(629f * 261f)) - var_3.x)), u_input.c);
}

