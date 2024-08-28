struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<f32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 17> = array<vec4<i32>, 17>(vec4<i32>(1i, 2147483647i, i32(-2147483648), -1i), vec4<i32>(-1i, -53880i, 13441i, -8647i), vec4<i32>(1i, 2147483647i, -1i, -27729i), vec4<i32>(-1i, 13834i, -14110i, 13051i), vec4<i32>(i32(-2147483648), 21786i, -24896i, 2147483647i), vec4<i32>(2147483647i, 1i, -1321i, -60245i), vec4<i32>(-11328i, i32(-2147483648), 0i, -51076i), vec4<i32>(-52018i, i32(-2147483648), 0i, -1i), vec4<i32>(1i, 14623i, 0i, 1i), vec4<i32>(-1i, 44720i, i32(-2147483648), 0i), vec4<i32>(4650i, i32(-2147483648), -38443i, 1i), vec4<i32>(-6183i, i32(-2147483648), 43359i, -1i), vec4<i32>(3161i, 1i, -36840i, -43673i), vec4<i32>(2147483647i, i32(-2147483648), -1457i, -11401i), vec4<i32>(2147483647i, 2147483647i, 2147483647i, 2147483647i), vec4<i32>(-18770i, 19231i, 1i, -43715i), vec4<i32>(-24837i, -27880i, -1i, -1i));

var<private> global1: vec2<i32> = vec2<i32>(7980i, 22185i);

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: i32) -> vec2<u32> {
    let var_0 = Struct_2(-273f, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1403f, 459f, -646f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(2538f, 240f, 148f) - vec3<f32>(350f, 399f, 1406f)))), _wgslsmith_add_i32(arg_0, i32(-1i) * -arg_0), firstTrailingBit(vec4<u32>(~4294967295u, ~1u, 1u, 1u))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-588f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-727f, 756f)) - -475f)), firstLeadingBit(firstTrailingBit(vec3<u32>(reverseBits(48731u), 1u, 4294967295u))));
    let var_1 = 10555u;
    var var_2 = false;
    var var_3 = 4965i;
    let var_4 = _wgslsmith_f_op_vec2_f32(-var_0.b.a.xy);
    return vec2<u32>(var_0.d.x, countOneBits(~reverseBits(_wgslsmith_clamp_u32(var_1, var_0.b.c.x, var_0.b.c.x))));
}

fn func_2(arg_0: vec3<i32>, arg_1: u32, arg_2: vec2<bool>) -> Struct_2 {
    var var_0 = func_3(-(global1.x & global1.x));
    let var_1 = all(select(select(select(vec3<bool>(arg_2.x, false, false), select(vec3<bool>(false, arg_2.x, true), vec3<bool>(arg_2.x, true, arg_2.x), vec3<bool>(true, arg_2.x, false)), false), !select(vec3<bool>(false, false, false), vec3<bool>(arg_2.x, arg_2.x, true), vec3<bool>(false, false, false)), any(!vec4<bool>(false, arg_2.x, true, arg_2.x))), !select(vec3<bool>(true, true, true), select(vec3<bool>(false, arg_2.x, true), vec3<bool>(false, false, arg_2.x), vec3<bool>(false, true, arg_2.x)), vec3<bool>(arg_2.x, true, arg_2.x)), true));
    global0 = array<vec4<i32>, 17>();
    let var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-457f * _wgslsmith_f_op_f32(trunc(-1402f)))) + _wgslsmith_f_op_f32(ceil(1818f))), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(268f)), -342f, _wgslsmith_f_op_f32(floor(453f)))), _wgslsmith_mod_i32(9993i, firstLeadingBit(1i)), min(vec4<u32>(~arg_1, countOneBits(29357u), arg_1, firstLeadingBit(56473u)), vec4<u32>(1u, abs(var_0.x), var_0.x, 1u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(1498f)), -971f)), select(~(~(vec3<u32>(31369u, 0u, var_0.x) ^ vec3<u32>(31236u, 1u, var_0.x))), vec3<u32>(1u, 1u, arg_1 ^ ~var_0.x), (u_input.b.x ^ ~u_input.b.x) >= 1i));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a * _wgslsmith_f_op_f32(exp2(var_2.b.a.x)))) - _wgslsmith_f_op_f32(min(1300f, 1994f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-218f * -772f) - var_2.b.a.x) - var_2.c.x)));
    return var_2;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: bool) -> f32 {
    var var_0 = Struct_1(vec3<f32>(func_2(~vec3<i32>(-2147483647i, global1.x, arg_0.x), ~arg_1.d.x, vec2<bool>(-865f <= arg_1.b.a.x, arg_2)).b.a.x, arg_1.a, 1f), ~(~firstLeadingBit(-arg_0.x)), vec4<u32>(abs(arg_1.b.c.x) | ~16797u, arg_1.b.c.x, 26521u, ~(~4294967295u)));
    let var_1 = vec4<u32>(49005u >> (firstLeadingBit(func_3(-4509i).x) % 32u), ~(~_wgslsmith_mod_u32(0u, reverseBits(4294967295u))), _wgslsmith_clamp_u32(~(~_wgslsmith_div_u32(0u, var_0.c.x)), _wgslsmith_div_u32(4294967295u >> (arg_1.b.c.x % 32u), _wgslsmith_div_u32(25963u, var_0.c.x)), _wgslsmith_div_u32(56458u, _wgslsmith_div_u32(arg_1.d.x, arg_1.b.c.x)) ^ 1u), countOneBits(95581u));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(1147f, var_0.a.x)))))))));
    global0 = array<vec4<i32>, 17>();
    global0 = array<vec4<i32>, 17>();
    return arg_1.b.a.x;
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_4(firstTrailingBit(vec3<i32>(1438i, 59472i, -22898i)) | firstLeadingBit(arg_2), func_2(~arg_2, 0u, select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true))), true)))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(arg_2, arg_1.c.x, vec2<bool>(false, false)).b.a - _wgslsmith_f_op_vec3_f32(-vec3<f32>(660f, 571f, 535f)))), 1i, vec4<u32>(_wgslsmith_sub_u32(firstTrailingBit(1u), arg_0), arg_1.c.x, min(arg_0, 1u), func_2(arg_2, select(8287u, 15252u, true), vec2<bool>(true, true)).b.c.x)), vec2<f32>(_wgslsmith_f_op_f32(-1672f - _wgslsmith_f_op_f32(floor(-550f))), 537f), ~_wgslsmith_mod_vec3_u32(arg_1.c.xxz | (vec3<u32>(0u, 0u, 2506u) >> (vec3<u32>(17960u, 1u, arg_0) % vec3<u32>(32u))), ~select(vec3<u32>(arg_0, 4294967295u, arg_1.c.x), arg_1.c.yxx, vec3<bool>(false, true, true))));
    global0 = array<vec4<i32>, 17>();
    var var_1 = all(!vec4<bool>(!(var_0.b.b == 109i), false, true & (arg_1.c.x > 97303u), true));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(floor(-1000f)), var_0.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(func_2(arg_2, func_3(u_input.a).x, select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true))).c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - 772f))) * var_0.b.a.xy), arg_1.c.zyy);
    let var_3 = var_0.b;
    return var_0;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: i32) -> f32 {
    global0 = array<vec4<i32>, 17>();
    let var_0 = ~(~(~(~4294967295u) ^ ~(~arg_2.x)));
    let var_1 = -select(u_input.b, ~(~u_input.b), select(vec2<bool>(true, true), vec2<bool>(true, true), false));
    let var_2 = arg_1;
    global1 = vec2<i32>(~(-1i), global1.x ^ arg_0.b);
    return _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_1.b.a.x, func_1(80623u, Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(100f, arg_0.a.x, arg_1.a) + vec3<f32>(var_2.b.a.x, -571f, 942f)), abs(1i), arg_2), countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_3, 1i, arg_3), vec3<i32>(arg_0.b, arg_1.b.b, 2147483647i), vec3<i32>(global1.x, 2147483647i, u_input.a)))).a), arg_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1034f;
    let var_1 = vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)) >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_5(Struct_1(vec3<f32>(-1768f, 326f, var_0), global1.x, vec4<u32>(274u, 12203u, 5625u, 110705u)), func_1(0u, Struct_1(vec3<f32>(var_0, var_0, var_0), u_input.b.x, vec4<u32>(1u, 55424u, 4294967295u, 60975u)), vec3<i32>(-2147483647i, -8861i, u_input.b.x)), firstTrailingBit(vec4<u32>(1u, 31931u, 75414u, 1u)), ~u_input.b.x)))), !(!(_wgslsmith_f_op_f32(-var_0) >= var_0)));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(980f, var_0)))) - 845f), var_0, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0, var_0)) - 1010f)))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(621f)) + -387f);
    let var_4 = vec3<i32>(0i, _wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.a, u_input.a), -2147483647i), _wgslsmith_dot_vec3_i32(select(-abs(vec3<i32>(global1.x, u_input.a, global1.x)), abs(vec3<i32>(global1.x, -1i, -37186i)) ^ vec3<i32>(u_input.a, -23339i, -41473i), vec3<bool>(var_1.x, true, true)), _wgslsmith_mult_vec3_i32(~vec3<i32>(-27960i, -1i, u_input.b.x), countOneBits(vec3<i32>(14528i, global1.x, global1.x))) & select(firstTrailingBit(vec3<i32>(1i, -1i, u_input.b.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, global1.x, 0i), vec3<i32>(global1.x, global1.x, -2147483647i)), select(vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(true, true, var_1.x)))));
    let var_5 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1322f)) - var_3), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3 * -562f)), var_2.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1271f - var_0) * -1000f), -802f, var_2.x, func_2(var_4, firstTrailingBit(4294967295u), vec2<bool>(true, true)).c.x))));
    var var_6 = func_1(~0u, Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(var_5.wzz * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3, -510f, var_2.x))))), -2147483647i, select(vec4<u32>(abs(0u), _wgslsmith_dot_vec4_u32(vec4<u32>(13551u, 0u, 85873u, 0u), vec4<u32>(12685u, 4294967295u, 19203u, 45973u)), ~87881u, firstLeadingBit(4294967295u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 0u, 27964u), vec4<u32>(0u, 1u, 55737u, 3808u), vec4<u32>(1u, 16781u, 4294967295u, 1u)), vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), vec4<bool>(true, var_1.x, any(vec4<bool>(false, var_1.x, true, var_1.x)), var_1.x))), select(abs(var_4), var_4, select(select(!vec3<bool>(var_1.x, var_1.x, var_1.x), select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(true, var_1.x, false)), vec3<bool>(false, var_1.x, var_1.x)), !(!vec3<bool>(var_1.x, var_1.x, var_1.x)), vec3<bool>(!var_1.x, false, true)))).d;
    var var_7 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3 - var_3))), var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -1051f)), 40447i, vec4<u32>(~var_6.x, min(4294967295u, var_6.x), 1u, var_6.x));
    global1 = _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(var_4.zy, -(~(-u_input.b))), -_wgslsmith_mod_vec2_i32(vec2<i32>(global1.x, -2147483647i), (vec2<i32>(2147483647i, global1.x) | u_input.b) | -u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(34300u, 0u, _wgslsmith_mult_u32(1u, var_6.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-1501f + var_2.x)));
}

