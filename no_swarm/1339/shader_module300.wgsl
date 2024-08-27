struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: f32,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec4<f32>,
    d: bool,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
    c: Struct_2,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 5>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_3(-firstTrailingBit(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 0i), vec2<i32>(u_input.a, -2147483647i))), _wgslsmith_clamp_vec2_u32(firstTrailingBit(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 116u), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)), 0u)), vec2<u32>(46740u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(1u, u_input.b) | vec2<u32>(0u, u_input.b))), ~min(~vec2<u32>(8278u, u_input.b), vec2<u32>(0u, u_input.b))), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(693f, 1492f, 1000f, -460f), _wgslsmith_div_vec4_f32(vec4<f32>(-1004f, -514f, -1088f, 224f), vec4<f32>(-404f, 2467f, 1647f, 1020f))) + vec4<f32>(-1236f, _wgslsmith_f_op_f32(max(-336f, -202f)), _wgslsmith_f_op_f32(f32(-1f) * -156f), _wgslsmith_f_op_f32(-269f * -1000f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-837f, -1747f), vec2<f32>(366f, -1339f)))) - vec2<f32>(_wgslsmith_f_op_f32(ceil(-706f)), -1137f)), vec4<f32>(-883f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-157f + 268f), _wgslsmith_div_f32(355f, 1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1332f) - _wgslsmith_f_op_f32(ceil(1734f))), 1263f), !(select(true, false, false) | true)), Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1480f, -191f, -1687f, 786f))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-711f, 1094f, -1208f, -1320f)))), select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true), true))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(815f, -999f, false)), 400f, all(vec3<bool>(true, true, true)))), -377f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 310f)), -1122f), _wgslsmith_f_op_f32(abs(-1450f)), select(~(~u_input.b), 3047u, true), all(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), true))), Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-108f, -647f, 345f, 404f)))))), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(872f, -961f, true)))), _wgslsmith_f_op_f32(f32(-1f) * -1116f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -189f)), _wgslsmith_f_op_f32(round(-383f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1076f)))), ~4294967295u, false));
    global0 = array<Struct_3, 5>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e.c, _wgslsmith_f_op_f32(-153f * -628f), -1094f, _wgslsmith_f_op_f32(trunc(var_0.c.a.x))));
    var var_2 = -1i;
    var var_3 = vec2<bool>(var_0.e.e, select(var_0.d.e, var_0.e.e, var_0.c.d));
    return select(vec4<bool>(select(true, var_3.x, var_3.x), true, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(var_0.c.c.x)))) == _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-634f, -588f)), var_3.x), vec4<bool>(!(!var_0.e.e || true), var_0.d.e, true, select(_wgslsmith_f_op_f32(exp2(var_1.x)) < _wgslsmith_f_op_f32(var_1.x * 891f), var_3.x, true)), all(select(select(vec2<bool>(true, true), vec2<bool>(var_0.e.e, false), all(vec2<bool>(var_0.c.d, var_0.d.e))), vec2<bool>(!var_3.x, var_3.x), all(vec2<bool>(false, true)) || (-737i >= u_input.a))));
}

fn func_4(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: vec2<f32>) -> u32 {
    global0 = array<Struct_3, 5>();
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(select(arg_2.b, vec4<f32>(-608f, _wgslsmith_f_op_f32(-1310f - _wgslsmith_f_op_f32(abs(1435f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_3.x * 920f), 554f)), -425f), arg_2.e)), arg_2.a.zx, arg_2.a, arg_1.x);
    let var_1 = var_0.a;
    let var_2 = Struct_2(arg_2.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_2.a.zw, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.xy - vec2<f32>(1000f, arg_3.x)) * _wgslsmith_div_vec2_f32(vec2<f32>(-1124f, 904f), var_1.zw))) + vec2<f32>(_wgslsmith_f_op_f32(select(-588f, _wgslsmith_f_op_f32(-1000f - var_0.a.x), all(vec3<bool>(var_0.d, false, false)))), _wgslsmith_f_op_f32(f32(-1f) * -449f))), vec4<f32>(_wgslsmith_f_op_f32(sign(var_0.a.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.x * -697f) - arg_3.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.c.x - 393f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1504f))))), arg_2.b.x), false);
    let var_3 = arg_1.xx;
    return 121221u;
}

fn func_2(arg_0: vec3<i32>) -> vec2<f32> {
    var var_0 = vec3<u32>(~func_4(_wgslsmith_mod_u32(96781u, abs(115044u)), func_3(), Struct_1(vec4<f32>(-418f, -946f, 3436f, 871f), _wgslsmith_div_vec4_f32(vec4<f32>(111f, -925f, 866f, -122f), vec4<f32>(304f, 1055f, -214f, 144f)), -704f, u_input.b >> (4294967295u % 32u), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1212f, 939f)))), ~(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, u_input.b, u_input.b, 25382u), vec4<u32>(u_input.b, u_input.b, 37072u, 4294967295u)) | select(select(u_input.b, 11164u, true), u_input.b ^ u_input.b, true)), ~(~1u));
    var_0 = vec3<u32>(9408u, var_0.x, 10074u & ~u_input.b);
    let var_1 = vec3<bool>(select(true, true, false), true, func_3().x);
    let var_2 = arg_0.x;
    let var_3 = max(firstLeadingBit(var_2 ^ var_2), _wgslsmith_dot_vec3_i32(abs(-(vec3<i32>(-1i, 2147483647i, 7004i) & arg_0)), -firstLeadingBit(arg_0)));
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-478f - -786f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1756f, 1f)) - _wgslsmith_f_op_f32(min(-973f, _wgslsmith_f_op_f32(abs(274f))))))));
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: i32) -> Struct_3 {
    var var_0 = arg_1;
    let var_1 = 0u;
    var var_2 = u_input.a;
    var var_3 = _wgslsmith_mod_vec3_i32(abs(-(~vec3<i32>(u_input.a, 2147483647i, -5480i))), ~countOneBits(vec3<i32>(u_input.a, u_input.a, u_input.a)) >> (vec3<u32>(~6913u, u_input.b, _wgslsmith_add_u32(21572u, var_1)) % vec3<u32>(32u))) << (~vec3<u32>(65932u, u_input.b, _wgslsmith_div_u32(15204u >> (var_1 % 32u), ~0u)) % vec3<u32>(32u));
    let var_4 = vec2<i32>(select(-24607i, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(var_3.zy, var_3.zz) ^ countOneBits(vec2<i32>(u_input.a, 6466i)), vec2<i32>(-1i) * -var_3.xy), false), var_3.x);
    return global0[_wgslsmith_index_u32(~var_1 & ~_wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.b, abs(var_1), 31629u), vec3<u32>(countOneBits(var_1), u_input.b, 81165u)), 5u)];
}

fn func_1() -> i32 {
    let var_0 = func_5(0u < ~(_wgslsmith_add_u32(u_input.b, 1u) | reverseBits(4294967295u)), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(142f, 1139f, -2138f, -1033f))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(388f, 989f, 512f, 1366f), vec4<f32>(-177f, -1434f, -866f, -707f), vec4<bool>(true, true, true, false)))) + vec4<f32>(-902f, _wgslsmith_f_op_f32(f32(-1f) * -757f), _wgslsmith_f_op_f32(select(-2814f, 218f, false)), _wgslsmith_f_op_f32(sign(405f)))), _wgslsmith_f_op_vec2_f32(func_2(vec3<i32>(_wgslsmith_mult_i32(32901i, 20068i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -57461i, u_input.a, u_input.a), vec4<i32>(0i, u_input.a, 1i, 1135i)), 1i))), vec4<f32>(-983f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 690f) + -1285f), _wgslsmith_f_op_f32(-1f), 784f), all(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true)))), select(vec4<bool>(any(vec4<bool>(true, true, true, true)), true | (u_input.a != 2147483647i), any(vec4<bool>(false, false, true, true)), true), select(vec4<bool>(u_input.b < 30843u, true, true, 2147483647i > u_input.a), vec4<bool>(true, true, true, true), all(vec3<bool>(false, true, true))), vec4<bool>(any(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false))), all(vec2<bool>(true, true)), true, true)), u_input.a);
    let var_1 = func_5(any(!select(select(vec2<bool>(true, var_0.c.d), vec2<bool>(var_0.d.e, var_0.c.d), false), !vec2<bool>(var_0.e.e, true), select(vec2<bool>(var_0.c.d, var_0.e.e), vec2<bool>(true, var_0.d.e), vec2<bool>(var_0.e.e, var_0.e.e)))), func_5(any(func_3()), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e.b.x, var_0.c.a.x, 2426f, -293f))), vec2<f32>(-336f, var_0.d.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1181f, -1187f, 1000f, -156f)) - vec4<f32>(var_0.e.c, 892f, 1341f, -1357f)), func_3().x), vec4<bool>(all(select(vec2<bool>(var_0.d.e, var_0.c.d), vec2<bool>(false, true), vec2<bool>(var_0.e.e, var_0.d.e))), any(select(vec4<bool>(var_0.e.e, false, var_0.e.e, var_0.e.e), vec4<bool>(var_0.e.e, false, var_0.d.e, true), true)), var_0.c.d, (i32(-1i) * -1i) > select(3164i, 26796i, var_0.d.e)), u_input.a).c, !(!select(select(vec4<bool>(var_0.d.e, var_0.d.e, var_0.e.e, true), vec4<bool>(false, var_0.d.e, var_0.d.e, var_0.c.d), vec4<bool>(false, false, var_0.e.e, var_0.c.d)), vec4<bool>(false, true, var_0.d.e, true), vec4<bool>(var_0.e.e, false, var_0.c.d, var_0.e.e))), u_input.a).c;
    let var_2 = Struct_3(firstLeadingBit(_wgslsmith_dot_vec3_i32(~firstTrailingBit(vec3<i32>(var_0.a, 1i, 1i)), firstLeadingBit(max(vec3<i32>(-2147483647i, u_input.a, 0i), vec3<i32>(-2147483647i, var_0.a, 38030i))))), _wgslsmith_clamp_vec2_u32(~abs(~var_0.b), vec2<u32>(_wgslsmith_mult_u32(66029u, var_0.e.d << (1u % 32u)), var_0.b.x), ~_wgslsmith_mult_vec2_u32(max(vec2<u32>(0u, 28112u), vec2<u32>(var_0.b.x, 1u)), vec2<u32>(var_0.e.d, 36019u))), var_1, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(481f, var_1.c.x) + 1542f), func_5(var_1.d, func_5(true, var_1, vec4<bool>(true, true, var_1.d, var_1.d), u_input.a).c, select(vec4<bool>(true, var_0.e.e, true, false), vec4<bool>(true, var_1.d, true, true), false), var_0.a).d.c, _wgslsmith_div_f32(var_0.c.a.x, func_5(false, Struct_2(var_1.c, var_0.e.a.wy, var_0.c.a, var_0.c.d), vec4<bool>(var_0.c.d, var_1.d, true, var_0.d.e), 41654i).d.a.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(121f, 327f, true))))), _wgslsmith_div_vec4_f32(vec4<f32>(-315f, 907f, _wgslsmith_div_f32(var_0.d.c, -441f), _wgslsmith_f_op_f32(-1003f * var_1.a.x)), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(var_0.e.b, vec4<f32>(var_0.d.a.x, var_0.d.c, -895f, var_1.b.x)), _wgslsmith_f_op_vec4_f32(min(var_1.c, vec4<f32>(-1152f, var_1.c.x, -252f, 1389f))))), _wgslsmith_f_op_f32(-var_0.e.c), max(var_0.e.d, u_input.b), true), var_0.e);
    var var_3 = vec2<i32>(-1i) * -abs(vec2<i32>(~(-2147483647i), max(-1i, var_0.a)));
    global0 = array<Struct_3, 5>();
    return _wgslsmith_clamp_i32(-u_input.a, ~(-select(_wgslsmith_mod_i32(var_0.a, u_input.a), select(-13533i, 37055i, false), any(vec4<bool>(true, false, var_0.e.e, var_0.e.e)))), -select(var_3.x, -2147483647i, false));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 5>();
    let var_0 = vec3<i32>(select(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(-vec2<i32>(u_input.a, 19593i), vec2<i32>(-28724i, 2147483647i)), (vec2<i32>(u_input.a, u_input.a) | vec2<i32>(0i, u_input.a)) & _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, 0i), vec2<i32>(2147483647i, u_input.a), vec2<i32>(-16476i, -2147483647i))), -37802i, all(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)))), countOneBits(u_input.a), reverseBits(-(~u_input.a)));
    global0 = array<Struct_3, 5>();
    let var_1 = vec4<bool>(all(vec3<bool>(true, true, true)) | false, select(select(false, true, true), true, u_input.b != u_input.b), true, false);
    var var_2 = vec2<i32>(~func_1(), 23292i);
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(317f, _wgslsmith_f_op_f32(-1000f * -631f), -225f, _wgslsmith_div_f32(-1278f, -1312f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1145f, 446f, -557f, -468f), vec4<f32>(1000f, -327f, 545f, 1000f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(341f, 654f, 415f, -807f), vec4<f32>(-251f, -1337f, 228f, 241f), var_1.x)))) + vec4<f32>(_wgslsmith_f_op_f32(ceil(-1512f)), 865f, _wgslsmith_f_op_f32(abs(-419f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 1770f)))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-762f, 2599f, -2053f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(176f, 1631f, true)) - _wgslsmith_f_op_f32(541f - -1601f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-880f)) + -885f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-826f, -220f)), _wgslsmith_f_op_f32(1582f - -1497f)))))), u_input.b, any(vec3<bool>(true, !var_1.x, false)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~var_0.x, var_2.x, ~(-1i)) ^ var_0, max(firstLeadingBit(-var_0.yx), countOneBits(max(var_0.zz, var_0.xz))) << (vec2<u32>(max(_wgslsmith_dot_vec2_u32(vec2<u32>(var_3.d, var_3.d), vec2<u32>(u_input.b, 14136u)), ~31598u), (1u ^ u_input.b) ^ ~83501u) % vec2<u32>(32u)));
}

