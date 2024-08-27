struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec3<bool>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: f32,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<vec4<i32>, 5> = array<vec4<i32>, 5>(vec4<i32>(-1i, i32(-2147483648), -11047i, -1i), vec4<i32>(26004i, 35101i, -42607i, 3951i), vec4<i32>(10817i, i32(-2147483648), 1i, 2147483647i), vec4<i32>(-1i, -1640i, -25673i, 1i), vec4<i32>(24890i, 14064i, -9474i, 0i));

var<private> global2: array<vec4<u32>, 9>;

var<private> global3: array<vec3<f32>, 8> = array<vec3<f32>, 8>(vec3<f32>(-1000f, -598f, -466f), vec3<f32>(-118f, 205f, 239f), vec3<f32>(1000f, -1517f, -875f), vec3<f32>(1113f, -460f, 820f), vec3<f32>(563f, 585f, 1256f), vec3<f32>(-829f, -2187f, -417f), vec3<f32>(1879f, -2833f, 883f), vec3<f32>(1766f, -179f, 833f));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    var var_0 = Struct_1(vec2<u32>(_wgslsmith_mult_u32(~98677u, u_input.c), _wgslsmith_mod_u32(60748u, u_input.c)) | vec2<u32>(45048u, 1165u), global0.x, !select(vec3<bool>(any(vec4<bool>(false, false, false, false)), any(vec3<bool>(false, true, false)), true), vec3<bool>(true, true, false), all(vec2<bool>(true, true))), firstLeadingBit(vec2<i32>(-_wgslsmith_mult_i32(1i, -1904i), -_wgslsmith_sub_i32(2147483647i, global0.x))));
    var var_1 = Struct_1(select(~vec2<u32>(var_0.a.x, _wgslsmith_mod_u32(65485u, u_input.d)), countOneBits(vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(0u, u_input.c)), ~16651u)), var_0.c.xz), -16506i, vec3<bool>(var_0.c.x, any(!(!vec4<bool>(var_0.c.x, true, true, true))), true), var_0.d);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -245f), _wgslsmith_f_op_f32(f32(-1f) * -1068f), -399f, _wgslsmith_f_op_f32(1000f * -198f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(2167f, -1000f, 1701f, 772f), vec4<f32>(789f, -229f, -1000f, 926f)))), all(vec2<bool>(true, var_1.c.x)))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-419f, -1223f, 500f, 1542f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(594f, 781f, 454f, 589f))))))));
    let var_3 = Struct_1(~min(var_0.a, _wgslsmith_add_vec2_u32(firstTrailingBit(var_0.a), abs(var_0.a))), var_1.b, var_0.c, _wgslsmith_mod_vec2_i32(~vec2<i32>(var_1.d.x, 1i), _wgslsmith_clamp_vec2_i32(select(var_0.d, vec2<i32>(23443i, -1i), vec2<bool>(false, false)) >> (vec2<u32>(var_0.a.x, 38199u) % vec2<u32>(32u)), var_0.d, (var_1.d ^ var_1.d) ^ ~var_1.d)));
    var_2 = vec4<f32>(_wgslsmith_f_op_f32(min(var_2.x, 826f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, var_2.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1091f, _wgslsmith_div_f32(967f, var_2.x)) * 1000f), true)), 503f, -1358f);
    return _wgslsmith_div_u32(_wgslsmith_mult_u32(var_0.a.x, _wgslsmith_sub_u32(_wgslsmith_sub_u32(~var_1.a.x, u_input.a.x), var_1.a.x)), var_0.a.x);
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1) -> vec2<u32> {
    let var_0 = _wgslsmith_div_i32(-1i, max(reverseBits(~abs(27705i)), global0.x));
    let var_1 = arg_1;
    var var_2 = arg_1;
    let var_3 = var_1;
    let var_4 = var_3;
    return vec2<u32>(var_4.a.x, func_3()) ^ ~var_2.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: Struct_1) -> Struct_1 {
    return Struct_1(~(select(~arg_0.a, vec2<u32>(arg_1.a.x, arg_3.a.x), arg_3.c.x) >> (arg_0.a % vec2<u32>(32u))), ~(-1i), select(!arg_0.c, arg_0.c, true), abs(arg_3.d));
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> i32 {
    var var_0 = arg_2;
    global2 = array<vec4<u32>, 9>();
    global2 = array<vec4<u32>, 9>();
    var var_1 = select(select(!var_0.c.yy, vec2<bool>(true, true), true), vec2<bool>(true, var_0.c.x), vec2<bool>(false, !all(var_0.c) && all(vec2<bool>(true, true))));
    global1 = array<vec4<i32>, 5>();
    return global0.x;
}

fn func_1() -> u32 {
    global3 = array<vec3<f32>, 8>();
    var var_0 = func_5(!(abs(u_input.c) <= u_input.a.x), Struct_1(u_input.a, ~_wgslsmith_div_i32(global0.x, 15706i) >> ((_wgslsmith_add_u32(0u, u_input.d) & u_input.a.x) % 32u), vec3<bool>(true, true, true), abs(_wgslsmith_mult_vec2_i32(-vec2<i32>(-2147483647i, -40757i), vec2<i32>(global0.x, global0.x)))), func_4(Struct_1(u_input.a, -2147483647i, vec3<bool>(true, -25876i >= global0.x, true), vec2<i32>(global0.x, global0.x) >> (func_2(vec3<i32>(-41245i, global0.x, global0.x), Struct_1(u_input.b, 1i, vec3<bool>(true, true, true), vec2<i32>(-29100i, 2147483647i))) % vec2<u32>(32u))), Struct_1(~vec2<u32>(4294967295u, 15894u), -42934i | _wgslsmith_clamp_i32(-2147483647i, -3645i, global0.x), vec3<bool>(true, true, true), min(vec2<i32>(-10009i, global0.x), vec2<i32>(global0.x, 52076i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1004f, -394f, 849f, 472f)), vec4<f32>(185f, 1398f, 250f, -548f), true))), Struct_1(_wgslsmith_sub_vec2_u32(max(vec2<u32>(39997u, 28469u), u_input.b), vec2<u32>(u_input.a.x, u_input.a.x) << (vec2<u32>(u_input.b.x, 77459u) % vec2<u32>(32u))), ~max(0i, -2147483647i), select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true), all(vec3<bool>(false, true, true))), ~(~vec2<i32>(-2147483647i, -1i)))), func_4(func_4(Struct_1(u_input.a, ~2147483647i, select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false), -vec2<i32>(global0.x, global0.x)), Struct_1(vec2<u32>(u_input.a.x, u_input.a.x) << (u_input.a % vec2<u32>(32u)), -global0.x, vec3<bool>(true, true, true), -vec2<i32>(0i, -5292i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1520f, -1000f, 502f, 433f))), func_4(Struct_1(u_input.b, 2147483647i, vec3<bool>(false, false, false), vec2<i32>(global0.x, global0.x)), func_4(Struct_1(u_input.a, 57342i, vec3<bool>(true, false, false), vec2<i32>(17099i, 21365i)), Struct_1(u_input.a, global0.x, vec3<bool>(true, false, true), vec2<i32>(global0.x, 10640i)), vec4<f32>(1000f, 613f, -259f, -983f), Struct_1(u_input.b, 42286i, vec3<bool>(true, false, true), vec2<i32>(global0.x, -30669i))), vec4<f32>(1256f, 1837f, -272f, 419f), func_4(Struct_1(u_input.a, global0.x, vec3<bool>(false, true, true), vec2<i32>(-2147483647i, global0.x)), Struct_1(u_input.a, 11027i, vec3<bool>(true, true, false), vec2<i32>(global0.x, global0.x)), vec4<f32>(410f, -163f, -1455f, 1216f), Struct_1(vec2<u32>(u_input.b.x, 17718u), global0.x, vec3<bool>(true, true, true), vec2<i32>(global0.x, 2147483647i))))), func_4(func_4(func_4(Struct_1(vec2<u32>(u_input.b.x, u_input.d), 2147483647i, vec3<bool>(true, false, true), vec2<i32>(1i, 1i)), Struct_1(u_input.b, global0.x, vec3<bool>(true, true, false), vec2<i32>(-22545i, global0.x)), vec4<f32>(307f, 391f, 493f, -925f), Struct_1(u_input.a, -43848i, vec3<bool>(false, false, true), vec2<i32>(65628i, global0.x))), Struct_1(u_input.b, global0.x, vec3<bool>(false, true, false), vec2<i32>(global0.x, 67140i)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1334f, -1746f, -774f, -1148f), vec4<f32>(-191f, -904f, 752f, 663f))), func_4(Struct_1(vec2<u32>(u_input.a.x, 1u), global0.x, vec3<bool>(true, true, true), vec2<i32>(2147483647i, global0.x)), Struct_1(vec2<u32>(4294967295u, 4294967295u), global0.x, vec3<bool>(true, true, true), vec2<i32>(global0.x, -12684i)), vec4<f32>(450f, -979f, -519f, 250f), Struct_1(u_input.b, 9198i, vec3<bool>(true, false, true), vec2<i32>(-13688i, 18456i)))), func_4(Struct_1(vec2<u32>(u_input.a.x, 0u), 0i, vec3<bool>(false, true, true), vec2<i32>(global0.x, -56781i)), func_4(Struct_1(vec2<u32>(62103u, u_input.a.x), global0.x, vec3<bool>(true, false, true), vec2<i32>(global0.x, global0.x)), Struct_1(u_input.a, 2147483647i, vec3<bool>(true, false, true), vec2<i32>(1i, 0i)), vec4<f32>(1000f, 1439f, 502f, -1598f), Struct_1(vec2<u32>(16505u, 15864u), global0.x, vec3<bool>(false, false, false), vec2<i32>(35903i, global0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-485f, 1286f, 1468f, -141f) - vec4<f32>(-827f, 340f, 248f, -912f)), Struct_1(u_input.b, global0.x, vec3<bool>(true, true, true), vec2<i32>(global0.x, global0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(214f, -1000f, -587f, -553f), vec4<f32>(913f, -146f, 297f, 450f))), func_4(func_4(Struct_1(u_input.a, global0.x, vec3<bool>(true, true, true), vec2<i32>(90617i, global0.x)), Struct_1(vec2<u32>(u_input.d, 4294967295u), global0.x, vec3<bool>(true, false, true), vec2<i32>(-16607i, -1i)), vec4<f32>(-265f, -475f, 513f, -1810f), Struct_1(vec2<u32>(40323u, u_input.b.x), 2147483647i, vec3<bool>(false, false, false), vec2<i32>(global0.x, -1i))), func_4(Struct_1(vec2<u32>(31752u, u_input.b.x), 48091i, vec3<bool>(true, true, true), vec2<i32>(14439i, global0.x)), Struct_1(u_input.b, global0.x, vec3<bool>(true, true, false), vec2<i32>(global0.x, 2147483647i)), vec4<f32>(-329f, -1963f, 128f, -155f), Struct_1(vec2<u32>(u_input.d, 19365u), global0.x, vec3<bool>(true, true, true), vec2<i32>(global0.x, 10119i))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-394f, -1261f, 438f, 1000f) + vec4<f32>(-1904f, -925f, 798f, 1565f)), func_4(Struct_1(u_input.b, 42892i, vec3<bool>(false, true, true), vec2<i32>(global0.x, 28314i)), Struct_1(vec2<u32>(u_input.a.x, u_input.c), global0.x, vec3<bool>(true, true, false), vec2<i32>(18610i, -1i)), vec4<f32>(2017f, 516f, 801f, -1339f), Struct_1(vec2<u32>(u_input.c, u_input.d), 13085i, vec3<bool>(true, true, true), vec2<i32>(0i, -40129i))))), vec4<f32>(1f, 1f, 1f, 1f), Struct_1(u_input.a, _wgslsmith_mod_i32(countOneBits(global0.x), ~(-2147483647i)), vec3<bool>(true, true, true), -(vec2<i32>(global0.x, -1i) << (vec2<u32>(72171u, 18867u) % vec2<u32>(32u))))).b);
    var var_1 = select(vec3<bool>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(1545f)))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1034f, -704f)) + _wgslsmith_div_f32(-1000f, -470f)), true != all(vec3<bool>(true, true, true)), true), vec3<bool>(true, (-1i & -global0.x) > _wgslsmith_add_i32(i32(-1i) * -12736i, reverseBits(-32499i)), !select(true, func_4(Struct_1(u_input.b, global0.x, vec3<bool>(true, true, true), vec2<i32>(-1i, -21010i)), Struct_1(vec2<u32>(u_input.b.x, 0u), 10301i, vec3<bool>(false, true, true), vec2<i32>(global0.x, 30335i)), vec4<f32>(-1691f, 260f, -257f, 1701f), Struct_1(u_input.b, global0.x, vec3<bool>(true, false, false), vec2<i32>(global0.x, -1i))).c.x, false)), false);
    global1 = array<vec4<i32>, 5>();
    var var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1440f, 892f, -1018f, -285f)))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2442f, -336f, 1937f, 1142f)), vec4<f32>(-1322f, 162f, 1024f, -884f)))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(trunc(739f)), _wgslsmith_f_op_f32(abs(651f)), 706f, _wgslsmith_f_op_f32(f32(-1f) * -165f))))))));
    return 0u;
}

fn func_6(arg_0: u32, arg_1: f32, arg_2: i32, arg_3: bool) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -254f), arg_1)))), 910f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -893f), _wgslsmith_f_op_f32(-arg_1)))))));
    global0 = ~(vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(vec2<i32>(arg_2, global0.x) >> (u_input.b % vec2<u32>(32u)), select(vec2<i32>(1i, arg_2), vec2<i32>(arg_2, -38106i), true)));
    let var_1 = vec4<bool>(arg_3, _wgslsmith_f_op_f32(-arg_1) == -1137f, any(select(select(select(vec3<bool>(false, arg_3, true), vec3<bool>(true, arg_3, true), vec3<bool>(true, false, true)), vec3<bool>(arg_3, true, arg_3), true), !vec3<bool>(arg_3, arg_3, false), !vec3<bool>(arg_3, arg_3, true))), !arg_3);
    var var_2 = Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(17852u, min(4294967295u, u_input.b.x)), ~(u_input.a | vec2<u32>(u_input.a.x, u_input.b.x)), ~u_input.a) ^ firstTrailingBit(_wgslsmith_add_vec2_u32(u_input.b, vec2<u32>(46827u, u_input.c))), _wgslsmith_clamp_i32(firstTrailingBit(global0.x >> (firstLeadingBit(68010u) % 32u)), abs(-max(arg_2, global0.x)), arg_2), var_1.yzy, -vec2<i32>(_wgslsmith_dot_vec2_i32(func_4(Struct_1(u_input.b, arg_2, vec3<bool>(var_1.x, var_1.x, arg_3), vec2<i32>(-30393i, -10940i)), Struct_1(u_input.b, global0.x, vec3<bool>(true, false, arg_3), vec2<i32>(21255i, 20489i)), vec4<f32>(arg_1, arg_1, arg_1, arg_1), Struct_1(u_input.a, 6301i, vec3<bool>(false, var_1.x, false), vec2<i32>(45755i, 20431i))).d, vec2<i32>(arg_2, global0.x)), arg_2 ^ ~19423i));
    var var_3 = Struct_1(firstLeadingBit(u_input.a), ~_wgslsmith_add_i32(arg_2, _wgslsmith_clamp_i32(~var_2.b, abs(2147483647i), select(var_2.b, -1i, arg_3))), select(select(select(select(var_2.c, vec3<bool>(true, true, arg_3), vec3<bool>(arg_3, arg_3, false)), var_1.xzz, select(var_2.c, var_1.yxz, false)), vec3<bool>(false, true, !var_2.c.x), !(true & var_1.x)), vec3<bool>(func_4(Struct_1(vec2<u32>(var_2.a.x, 9825u), global0.x, vec3<bool>(arg_3, var_1.x, arg_3), vec2<i32>(1i, 30766i)), Struct_1(u_input.a, -22726i, var_2.c, var_2.d), _wgslsmith_div_vec4_f32(vec4<f32>(1774f, arg_1, arg_1, arg_1), vec4<f32>(arg_1, -180f, -701f, 473f)), func_4(Struct_1(u_input.a, 1i, var_2.c, var_2.d), Struct_1(u_input.a, global0.x, var_1.yzx, var_2.d), vec4<f32>(arg_1, arg_1, arg_1, arg_1), Struct_1(u_input.a, -32534i, vec3<bool>(true, var_1.x, false), vec2<i32>(global0.x, global0.x)))).c.x, true, any(select(vec2<bool>(false, var_2.c.x), var_2.c.zy, true))), var_1.x), var_2.d);
    return vec2<u32>(_wgslsmith_add_u32(81196u, var_3.a.x) >> (var_2.a.x % 32u), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(func_6(func_1(), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(2060f - 422f), -857f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -506f)))), _wgslsmith_div_i32(_wgslsmith_clamp_i32(0i, global0.x, -global0.x), 61537i), all(vec3<bool>(true, true, false))), -19517i, !vec3<bool>(all(vec3<bool>(true, true, true)), true, func_4(func_4(Struct_1(u_input.a, global0.x, vec3<bool>(false, true, true), vec2<i32>(-1i, -1i)), Struct_1(u_input.b, global0.x, vec3<bool>(false, false, false), vec2<i32>(-36484i, 14440i)), vec4<f32>(-1000f, 1000f, 721f, 1184f), Struct_1(vec2<u32>(u_input.b.x, 1u), global0.x, vec3<bool>(false, false, true), vec2<i32>(49386i, global0.x))), func_4(Struct_1(vec2<u32>(u_input.d, 1u), 1i, vec3<bool>(false, false, true), vec2<i32>(0i, global0.x)), Struct_1(u_input.a, -69578i, vec3<bool>(false, false, false), vec2<i32>(-30902i, global0.x)), vec4<f32>(-1424f, 2684f, 1001f, -521f), Struct_1(vec2<u32>(18729u, 66178u), 1i, vec3<bool>(false, false, true), vec2<i32>(global0.x, -2147483647i))), vec4<f32>(1289f, 212f, -361f, 666f), Struct_1(vec2<u32>(u_input.b.x, 20044u), global0.x, vec3<bool>(false, false, true), vec2<i32>(global0.x, global0.x))).c.x), ~min(vec2<i32>(1i, global0.x), abs(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, -1i), vec2<i32>(global0.x, global0.x)))));
    global1 = array<vec4<i32>, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec2_i32(var_0.d, _wgslsmith_sub_vec2_i32(vec2<i32>(-3168i, global0.x), -vec2<i32>(var_0.d.x, 2147483647i))), ~_wgslsmith_mult_vec2_u32(vec2<u32>(func_3(), 427u), vec2<u32>(var_0.a.x, 48614u ^ u_input.d)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-337f, 858f, select(var_0.d.x, -2147483647i, var_0.c.x) == 0i)), _wgslsmith_f_op_f32(select(-351f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1333f)) * -392f), var_0.c.x)))), vec3<f32>(-838f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-551f, 399f), -661f)), -312f)), _wgslsmith_f_op_f32(ceil(1254f))), -659f);
}

