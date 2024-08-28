struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_2;

var<private> global2: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(vec4<u32>(1u, 0u, 4294967295u, 9419u), vec2<f32>(-133f, 183f), Struct_1(vec3<i32>(1235i, 42182i, i32(-2147483648)), vec3<f32>(-1455f, 670f, 1000f), vec2<i32>(-7325i, 1816i)), true, Struct_1(vec3<i32>(1i, 1i, 8772i), vec3<f32>(243f, 1580f, 856f), vec2<i32>(0i, -17676i))), Struct_2(vec4<u32>(1u, 1773u, 10697u, 1u), vec2<f32>(-1000f, -122f), Struct_1(vec3<i32>(28311i, -17517i, 11300i), vec3<f32>(-1162f, 1060f, -272f), vec2<i32>(-45351i, 2147483647i)), true, Struct_1(vec3<i32>(-1i, 2147483647i, -3228i), vec3<f32>(-799f, 434f, -756f), vec2<i32>(-1i, -33228i))), Struct_2(vec4<u32>(4294967295u, 1u, 17159u, 16u), vec2<f32>(-1108f, -2134f), Struct_1(vec3<i32>(21264i, -3442i, 2147483647i), vec3<f32>(-729f, -1147f, -971f), vec2<i32>(-12574i, 15288i)), false, Struct_1(vec3<i32>(11900i, 24333i, 1i), vec3<f32>(1000f, 1379f, 792f), vec2<i32>(-18832i, 23270i))), Struct_2(vec4<u32>(72901u, 19690u, 1u, 51070u), vec2<f32>(-1008f, -1817f), Struct_1(vec3<i32>(1i, 14663i, 2147483647i), vec3<f32>(454f, -349f, -1807f), vec2<i32>(i32(-2147483648), 1i)), true, Struct_1(vec3<i32>(0i, 0i, 1i), vec3<f32>(-562f, -372f, -1699f), vec2<i32>(2147483647i, -40303i))), Struct_2(vec4<u32>(1u, 73466u, 0u, 0u), vec2<f32>(800f, -1325f), Struct_1(vec3<i32>(-6128i, 23288i, 16317i), vec3<f32>(1140f, 815f, 210f), vec2<i32>(1i, -1i)), true, Struct_1(vec3<i32>(15255i, i32(-2147483648), -70618i), vec3<f32>(272f, 529f, -171f), vec2<i32>(54620i, -29726i))), Struct_2(vec4<u32>(0u, 53106u, 96615u, 4294967295u), vec2<f32>(1837f, 126f), Struct_1(vec3<i32>(5657i, -17434i, -1i), vec3<f32>(-917f, -1711f, 480f), vec2<i32>(1i, 20338i)), false, Struct_1(vec3<i32>(2147483647i, -22748i, 0i), vec3<f32>(-708f, 1200f, -630f), vec2<i32>(0i, -32049i))), Struct_2(vec4<u32>(0u, 111531u, 5140u, 62171u), vec2<f32>(-796f, 1334f), Struct_1(vec3<i32>(15525i, 8335i, -1i), vec3<f32>(-1408f, -1630f, -1000f), vec2<i32>(i32(-2147483648), -1i)), false, Struct_1(vec3<i32>(0i, 9193i, 2147483647i), vec3<f32>(-1735f, 1000f, -824f), vec2<i32>(-1i, -14783i))), Struct_2(vec4<u32>(0u, 4294967295u, 36284u, 46871u), vec2<f32>(-1366f, -1184f), Struct_1(vec3<i32>(18796i, -47204i, i32(-2147483648)), vec3<f32>(-865f, 780f, 1081f), vec2<i32>(51337i, 1i)), false, Struct_1(vec3<i32>(-15060i, -662i, 2147483647i), vec3<f32>(-758f, 559f, 627f), vec2<i32>(0i, 1i))), Struct_2(vec4<u32>(65198u, 12887u, 1u, 1u), vec2<f32>(1271f, 945f), Struct_1(vec3<i32>(1i, -6384i, 2147483647i), vec3<f32>(1268f, -198f, 691f), vec2<i32>(-68879i, 0i)), false, Struct_1(vec3<i32>(-7202i, i32(-2147483648), 2147483647i), vec3<f32>(-1000f, 288f, -648f), vec2<i32>(-17159i, -22495i))), Struct_2(vec4<u32>(5985u, 1u, 4294967295u, 4294967295u), vec2<f32>(-335f, 771f), Struct_1(vec3<i32>(1i, -1i, 11767i), vec3<f32>(-534f, -777f, -1252f), vec2<i32>(-13104i, -1i)), true, Struct_1(vec3<i32>(i32(-2147483648), 0i, i32(-2147483648)), vec3<f32>(-235f, -119f, 515f), vec2<i32>(i32(-2147483648), -17313i))), Struct_2(vec4<u32>(4294967295u, 0u, 1u, 1u), vec2<f32>(790f, -500f), Struct_1(vec3<i32>(i32(-2147483648), 0i, i32(-2147483648)), vec3<f32>(990f, 839f, 894f), vec2<i32>(-3247i, 19190i)), true, Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), -1i), vec3<f32>(822f, 240f, -806f), vec2<i32>(1i, 1i))), Struct_2(vec4<u32>(53303u, 64024u, 4294967295u, 29268u), vec2<f32>(816f, -1523f), Struct_1(vec3<i32>(i32(-2147483648), 1i, 0i), vec3<f32>(-2206f, 1569f, 114f), vec2<i32>(8949i, -56741i)), false, Struct_1(vec3<i32>(1i, -1i, 2147483647i), vec3<f32>(467f, 820f, 143f), vec2<i32>(1641i, 0i))), Struct_2(vec4<u32>(4294967295u, 9438u, 15897u, 0u), vec2<f32>(-937f, 1828f), Struct_1(vec3<i32>(2147483647i, 2147483647i, 77083i), vec3<f32>(970f, 784f, 1206f), vec2<i32>(2147483647i, 1i)), false, Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), 1i), vec3<f32>(-183f, -596f, 348f), vec2<i32>(1618i, 8407i))), Struct_2(vec4<u32>(1u, 22848u, 16096u, 0u), vec2<f32>(1053f, 1057f), Struct_1(vec3<i32>(0i, i32(-2147483648), 2147483647i), vec3<f32>(1012f, -500f, -450f), vec2<i32>(50361i, -1i)), false, Struct_1(vec3<i32>(2147483647i, i32(-2147483648), -7579i), vec3<f32>(-230f, -1000f, 927f), vec2<i32>(40974i, i32(-2147483648)))), Struct_2(vec4<u32>(0u, 4294967295u, 4294967295u, 0u), vec2<f32>(-1652f, 1215f), Struct_1(vec3<i32>(-14289i, 1i, 2147483647i), vec3<f32>(1888f, -1414f, -1075f), vec2<i32>(2147483647i, -1i)), true, Struct_1(vec3<i32>(1919i, 13920i, -77246i), vec3<f32>(-1026f, -748f, 1616f), vec2<i32>(-30516i, 2147483647i))));

var<private> global3: array<f32, 3>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> vec4<bool> {
    let var_0 = Struct_2(~(~global0.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.c.b.zx)) - _wgslsmith_f_op_vec2_f32(select(global1.e.b.xx, vec2<f32>(_wgslsmith_f_op_f32(-global1.b.x), global0.b.x), _wgslsmith_f_op_f32(-global1.e.b.x) <= 2299f))), Struct_1(vec3<i32>(~reverseBits(-2147483647i), -u_input.b.x, abs(global1.e.a.x)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-439f, global3[_wgslsmith_index_u32(26403u, 3u)], 575f)), vec3<f32>(_wgslsmith_f_op_f32(abs(arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -161f), arg_0), true)), vec2<i32>(-4297i, 20423i)), true, global1.e);
    let var_1 = Struct_2(_wgslsmith_clamp_vec4_u32(~vec4<u32>(13237u, 1u, 10911u, 1u) | vec4<u32>(var_0.a.x, 45144u, 0u, var_0.a.x & var_0.a.x), ~vec4<u32>(1u, 4294967295u, 0u, ~var_0.a.x), firstTrailingBit(~_wgslsmith_mod_vec4_u32(vec4<u32>(32749u, global0.a.x, 23135u, 1u), vec4<u32>(global1.a.x, 23739u, global0.a.x, var_0.a.x)))), _wgslsmith_f_op_vec2_f32(var_0.b * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(var_0.c.b.xy)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1197f, -575f) - var_0.b))))), global0.e, false, var_0.c);
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(345f, 674f, 1005f), var_0.c.b)))) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(round(706f)), 129f, 813f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(var_0.c.b, vec3<f32>(128f, -187f, global3[_wgslsmith_index_u32(var_1.a.x, 3u)]))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global3[_wgslsmith_index_u32(0u, 3u)], var_0.e.b.x, -1053f))))))), var_0.c.b);
    let var_3 = _wgslsmith_f_op_f32(arg_0 - -261f);
    global0 = Struct_2(vec4<u32>(0u, u_input.c, ~40303u, 54662u), global0.c.b.zy, Struct_1(vec3<i32>(u_input.a.x | var_1.c.c.x, ~0i, i32(-1i) * -47622i) & var_0.c.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_0.e.b - var_2), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0, -659f, 1183f), var_2)), all(vec2<bool>(false, var_1.d))))), vec2<i32>(-2147483647i, ~(~global1.c.c.x))), all(vec3<bool>(global1.d, true, all(vec3<bool>(false, global1.d, false)) || true)), Struct_1(abs(vec3<i32>(abs(global0.e.a.x), -11781i, 17408i)), global0.c.b, u_input.b.yz));
    return select(!vec4<bool>(!var_1.d, !all(vec3<bool>(true, var_0.d, var_0.d)), !var_1.d || (global1.d && var_0.d), true), !vec4<bool>(!(var_3 <= 465f), !(var_1.e.c.x >= var_1.e.a.x), 25822u > abs(global0.a.x), all(vec2<bool>(true, true))), vec4<bool>(61838u > var_0.a.x, var_1.d, !((i32(-1i) * -17010i) > -var_0.e.c.x), var_1.d));
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -203f));
    var var_1 = Struct_1(firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(47955i, i32(-1i) * -1i, u_input.a.x), select(select(global0.e.a, u_input.a, false), countOneBits(vec3<i32>(-30886i, 0i, 2147483647i)), !vec3<bool>(false, global1.d, true)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(global0.e.b, global1.e.b)) + global0.e.b), global0.c.c);
    let var_2 = var_1.b;
    var var_3 = ~_wgslsmith_mod_vec4_u32(select(~vec4<u32>(arg_0, global1.a.x, arg_0, 80968u), _wgslsmith_clamp_vec4_u32(~global1.a, _wgslsmith_clamp_vec4_u32(global1.a, vec4<u32>(1u, 1u, 34044u, 13077u), vec4<u32>(global1.a.x, 15748u, 4294967295u, arg_0)), global0.a), func_3(var_2.x)), _wgslsmith_mult_vec4_u32(select(global0.a, countOneBits(vec4<u32>(global0.a.x, 6419u, global0.a.x, global0.a.x)), select(vec4<bool>(false, global1.d, global0.d, false), vec4<bool>(true, false, false, false), global1.d)), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(arg_0, 26842u, 66932u, 44509u)), ~global1.a)));
    var var_4 = global1.c;
    return global1.e;
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -161f), global0.c.b.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.b.x, 1000f) - _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 3u)])), global1.e.b.x))));
    let var_1 = Struct_3(func_2(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.a.x, global0.a.x), ~global0.a.zx) ^ abs(27099u)), Struct_2(~(~vec4<u32>(global1.a.x, u_input.c, global1.a.x, u_input.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(func_2(0u).b.zy, _wgslsmith_f_op_vec2_f32(-global1.e.b.zy))), global0.c, global1.d | func_3(global1.c.b.x).x, func_2(select(global0.a.x, 0u, global0.d) & ~u_input.c)), true | global0.d);
    let var_2 = global0.c.a;
    let var_3 = global2[_wgslsmith_index_u32(8803u, 15u)];
    let var_4 = var_1;
    return Struct_2(select(global0.a, vec4<u32>(33577u, u_input.c, abs(4294967295u), abs(~19411u)), !vec4<bool>(false, var_2.x == 0i, all(vec2<bool>(false, false)), global0.d)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(var_0.xy)))), Struct_1(firstTrailingBit(select(var_3.e.a, _wgslsmith_clamp_vec3_i32(vec3<i32>(72694i, -16186i, var_2.x), vec3<i32>(var_4.a.c.x, -2147483647i, 1i), var_1.b.e.a), func_3(var_0.x).wyy)), _wgslsmith_div_vec3_f32(var_4.a.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-331f, global1.b.x, 1121f), var_3.c.b))), vec2<i32>(-32847i, var_3.c.c.x) ^ ~_wgslsmith_mult_vec2_i32(vec2<i32>(var_4.b.e.a.x, var_2.x), vec2<i32>(var_3.e.c.x, 40303i))), true, Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(-5658i, 49929i, 33872i) | _wgslsmith_sub_vec3_i32(global0.c.a, global0.e.a), global0.e.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_4.b.c.b, vec3<f32>(205f, -743f, var_1.b.b.x))))), -var_3.c.a.yy));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_0.e.b.x, func_2(80349u).b.x)))), 200f);
    global2 = array<Struct_2, 15>();
    let var_1 = global0.e;
    global1 = func_1();
    global1 = Struct_2(global1.a, func_1().e.b.xx, Struct_1(min(vec3<i32>(-70825i, var_1.a.x, -2147483647i) << (_wgslsmith_mod_vec3_u32(arg_0.a.xww, vec3<u32>(arg_0.a.x, 18969u, 55952u)) % vec3<u32>(32u)), vec3<i32>(1i, global0.e.c.x >> (4294967295u % 32u), _wgslsmith_mod_i32(global0.e.c.x, 6166i))), arg_0.c.b, _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(select(vec2<i32>(1i, -60682i), vec2<i32>(arg_0.c.a.x, global1.e.a.x), false), vec2<i32>(-21799i, arg_0.e.a.x)), arg_2.c)), true, Struct_1(min(firstTrailingBit(-u_input.b), vec3<i32>(arg_2.c.x, ~1i, ~(-2147483647i))), _wgslsmith_f_op_vec3_f32(sign(global1.e.b)), arg_0.e.a.zx ^ arg_0.e.c));
    return Struct_2(vec4<u32>(global1.a.x, ~global0.a.x, ~(~0u), countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.a.x, 0u, 32963u), vec3<u32>(16482u, 0u, u_input.c))) & 0u), global1.c.b.xx, global1.c, true, Struct_1(_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(-vec3<i32>(2147483647i, global1.e.a.x, arg_2.a.x), vec3<i32>(arg_0.c.a.x, -47493i, -1i)), -firstTrailingBit(vec3<i32>(73117i, var_1.c.x, u_input.a.x))), vec3<f32>(arg_2.b.x, var_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(0u, 3u)], 1426f, arg_0.d)) * func_1().b.x)), -_wgslsmith_div_vec2_i32(select(vec2<i32>(arg_0.c.c.x, var_1.c.x), var_1.c, false), u_input.b.xy)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~global0.a.zw);
    global0 = func_4(func_1(), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, -1275f))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(global1.c.b.xy))))))), global0.e);
    var var_1 = func_4(Struct_2(~(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(44560u, u_input.c, u_input.c, 24763u)) ^ ~vec4<u32>(28083u, u_input.c, 104535u, u_input.c)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.e.b.xz + vec2<f32>(global3[_wgslsmith_index_u32(47947u, 3u)], 158f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.x, global1.b.x)))), Struct_1(~_wgslsmith_mod_vec3_i32(global1.e.a, vec3<i32>(global1.e.a.x, 9027i, u_input.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1157f, global0.e.b.x, -897f), vec3<f32>(319f, global3[_wgslsmith_index_u32(global0.a.x, 3u)], -142f), vec3<bool>(false, global0.d, true)))), global0.c.c), global0.d, global1.c), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.e.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -286f), _wgslsmith_f_op_f32(-global1.b.x))) + vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c.b.x + -1000f) - global1.b.x))), func_2(~4294967295u)).c;
    var var_2 = Struct_3(Struct_1(vec3<i32>(2147483647i, var_1.c.x, _wgslsmith_add_i32(-1i, countOneBits(global0.c.a.x))), _wgslsmith_f_op_vec3_f32(max(global1.e.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-476f, global0.b.x, 1000f), vec3<f32>(var_1.b.x, global3[_wgslsmith_index_u32(global1.a.x, 3u)], global0.c.b.x))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, -147f, -1688f), vec3<f32>(532f, global1.c.b.x, var_1.b.x)))))), vec2<i32>(-15046i, -2147483647i)), global2[_wgslsmith_index_u32(46599u, 15u)], any(!(!vec2<bool>(true, global0.d))) && true);
    var var_3 = !select(!(!select(vec2<bool>(false, false), vec2<bool>(true, var_2.b.d), global0.d)), select(!vec2<bool>(true, var_2.b.d), vec2<bool>(true, true), global1.d), select(vec2<bool>(global1.d, var_2.c), func_3(_wgslsmith_f_op_f32(var_2.a.b.x - -1123f)).wy, vec2<bool>(false, false)));
    var_1 = Struct_1(global1.c.a, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -375f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(627f, -419f) + -170f), global3[_wgslsmith_index_u32(1u, 3u)]))), -u_input.a.xy);
    var var_4 = Struct_3(global0.c, Struct_2(global1.a, func_4(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.x, 0u), ~vec2<u32>(25115u, 36275u)), 15u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.x, var_2.b.c.b.x)), var_2.a).b, var_2.b.e, global1.d, global0.e), true);
    let var_5 = var_4.c;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(~0u), _wgslsmith_f_op_vec2_f32(func_2(func_1().a.x).b.xx - func_4(Struct_2(vec4<u32>(18780u, 1u, 0u, var_0.x) | vec4<u32>(69344u, 4294967295u, 0u, 4294967295u), _wgslsmith_f_op_vec2_f32(abs(var_2.b.c.b.xx)), func_1().c, any(vec4<bool>(false, false, false, false)), func_1().e), _wgslsmith_f_op_vec2_f32(exp2(global1.e.b.xy)), func_4(func_1(), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(820f, global0.c.b.x), vec2<f32>(250f, var_4.a.b.x))), func_2(var_0.x)).c).e.b.yz), ~global1.a.x, -898f);
}

