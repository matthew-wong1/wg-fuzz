struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec2<i32>,
    d: bool,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_5 {
    a: i32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(38049u, vec3<i32>(-38672i, 2147483647i, -142i));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_4) -> u32 {
    let var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(sign(-465f)), -1658f), vec4<f32>(arg_2.b.x, arg_1.x, _wgslsmith_div_f32(arg_0, arg_2.b.x), _wgslsmith_f_op_f32(f32(-1f) * -728f)), select(select(vec4<bool>(false, arg_2.d, true, false), vec4<bool>(arg_2.d, true, arg_2.d, false), false), !vec4<bool>(arg_2.d, true, false, arg_2.d), select(vec4<bool>(false, arg_2.d, arg_2.d, arg_2.d), vec4<bool>(arg_2.d, true, arg_2.d, true), arg_2.d))))), select(select(!(!vec3<bool>(false, arg_2.d, arg_2.d)), select(select(vec3<bool>(false, arg_2.d, true), vec3<bool>(arg_2.d, arg_2.d, true), vec3<bool>(arg_2.d, true, false)), select(vec3<bool>(arg_2.d, false, arg_2.d), vec3<bool>(false, false, arg_2.d), vec3<bool>(arg_2.d, arg_2.d, arg_2.d)), true), any(!vec4<bool>(arg_2.d, arg_2.d, arg_2.d, true))), !vec3<bool>(all(vec4<bool>(true, true, arg_2.d, true)), arg_2.d, true), true), Struct_1(abs(_wgslsmith_sub_vec3_i32(~vec3<i32>(-2554i, arg_2.c.x, arg_2.a.x), arg_3.b | vec3<i32>(arg_2.a.x, arg_2.a.x, 1i))), _wgslsmith_f_op_vec2_f32(-arg_1), _wgslsmith_add_vec2_i32(arg_3.b.xx, arg_2.a.xx), true, vec4<u32>(4294967295u, _wgslsmith_mult_u32(_wgslsmith_sub_u32(24372u, arg_3.a), global0.a), _wgslsmith_add_u32(1u, 0u), reverseBits(arg_3.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.x)) - -219f) + arg_1.x), arg_2);
    var var_1 = Struct_3(var_0.a, var_0.b, Struct_1(~_wgslsmith_mult_vec3_i32(var_0.c.a, -vec3<i32>(14284i, -76514i, -41366i)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1024f * arg_0) + _wgslsmith_f_op_f32(round(arg_0))), -532f), vec2<i32>(arg_2.c.x, max(var_0.e.a.x, -1i)) & arg_3.b.xy, arg_2.d, ~vec4<u32>(arg_2.e.x >> (10643u % 32u), ~56360u, var_0.c.e.x, 7765u)), var_0.a.a.x, arg_2);
    var_1 = var_0;
    var var_2 = vec4<i32>(var_1.e.c.x, (i32(-1i) * -(~23073i)) | ~u_input.a, -25850i, arg_3.b.x);
    return ~var_1.c.e.x;
}

fn func_2(arg_0: bool) -> f32 {
    var var_0 = ~vec4<u32>(abs(_wgslsmith_sub_u32(global0.a, global0.a)), global0.a, ~1u, func_3(-325f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(724f, 929f)), Struct_1(vec3<i32>(global0.b.x, 36781i, u_input.a), vec2<f32>(-714f, 1059f), global0.b.xx, arg_0, vec4<u32>(25572u, 47306u, global0.a, 3543u)), Struct_4(global0.a, global0.b))) >> (_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(~(vec4<u32>(16450u, 1u, 0u, global0.a) ^ vec4<u32>(0u, 1u, 1u, 61213u)), ~vec4<u32>(global0.a, 17281u, global0.a, 58554u)), reverseBits(~vec4<u32>(44081u, global0.a, 4294967295u, global0.a) | (vec4<u32>(global0.a, global0.a, global0.a, 4294967295u) >> (vec4<u32>(global0.a, global0.a, 1u, 88816u) % vec4<u32>(32u))))) % vec4<u32>(32u));
    var var_1 = Struct_4(4294967295u ^ min(reverseBits(var_0.x), 4294967295u), global0.b);
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(614f, 563f, -230f, 1197f), vec4<f32>(-1177f, -236f, -1197f, -1236f))))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(427f, 1000f, 1508f, 754f) + vec4<f32>(-1000f, 1832f, 729f, -1011f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1206f, 2516f, 387f, 745f))) + vec4<f32>(_wgslsmith_div_f32(732f, 535f), _wgslsmith_f_op_f32(316f * 824f), _wgslsmith_f_op_f32(-593f * -461f), -2173f)))));
    var var_3 = global0.b;
    var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 454f, var_2.x, -227f) + vec4<f32>(var_2.x, 902f, -635f, 646f)))))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.x)));
}

fn func_1(arg_0: i32) -> Struct_3 {
    let var_0 = abs(max(u_input.a, ~u_input.a));
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1911f)), _wgslsmith_div_vec2_f32(vec2<f32>(-1238f, -1000f), vec2<f32>(1387f, -1150f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 353f) * _wgslsmith_f_op_f32(1391f * -1000f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(117f)), -1167f))) + vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(false)), -2364f), _wgslsmith_f_op_f32(-815f + 1872f))));
    var var_2 = ~vec3<u32>(_wgslsmith_mod_u32(func_3(_wgslsmith_f_op_f32(-1007f + var_1.x), vec2<f32>(615f, var_1.x), Struct_1(global0.b, var_1, global0.b.yx, false, vec4<u32>(global0.a, 43203u, 0u, global0.a)), Struct_4(global0.a, vec3<i32>(var_0, u_input.a, global0.b.x))), global0.a), 864u, 1u);
    global0 = Struct_4(~(~var_2.x), abs(abs(countOneBits(vec3<i32>(-2147483647i, var_0, var_0)) ^ global0.b)));
    let var_3 = Struct_1(-vec3<i32>(~(-2147483647i), u_input.a, -1i), _wgslsmith_f_op_vec2_f32(var_1 - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(var_1, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) - var_1))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(898f, -1368f))), _wgslsmith_f_op_vec2_f32(select(var_1, var_1, vec2<bool>(true, true))), all(vec3<bool>(false, true, true))))))), countOneBits(~_wgslsmith_add_vec2_i32(global0.b.xy, abs(vec2<i32>(-17280i, -10375i)))), true, ~reverseBits(min(select(vec4<u32>(4294967295u, 63232u, var_2.x, 4294967295u), vec4<u32>(var_2.x, var_2.x, var_2.x, global0.a), vec4<bool>(false, true, true, false)), min(vec4<u32>(0u, 65805u, var_2.x, 1u), vec4<u32>(var_2.x, global0.a, var_2.x, 4294967295u)))));
    return Struct_3(Struct_2(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_1.x * var_1.x), _wgslsmith_f_op_f32(abs(-405f)), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(step(1367f, var_1.x))), vec4<f32>(106f, 947f, _wgslsmith_div_f32(var_1.x, var_1.x), var_3.b.x))), select(!(!select(vec3<bool>(var_3.d, var_3.d, var_3.d), vec3<bool>(true, true, false), var_3.d)), select(vec3<bool>(true, var_3.d, var_3.d | var_3.d), select(select(vec3<bool>(false, true, var_3.d), vec3<bool>(false, var_3.d, true), var_3.d), select(vec3<bool>(false, false, var_3.d), vec3<bool>(var_3.d, true, false), var_3.d), true), var_3.d), !vec3<bool>(true, var_3.d, true)), var_3, var_3.b.x, var_3);
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: i32, arg_3: Struct_4) -> Struct_1 {
    let var_0 = Struct_2(arg_1.a.a);
    let var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec3_f32(-var_1.a.yzz);
    let var_3 = Struct_1(select(vec3<i32>(max(-1i, 0i), _wgslsmith_mod_i32(arg_3.b.x, ~28017i), firstLeadingBit(~arg_2)), ~vec3<i32>(-arg_1.c.a.x, 59128i, -2147483647i), true), vec2<f32>(-631f, -679f), vec2<i32>(~_wgslsmith_mult_i32(2147483647i, -arg_1.c.c.x), _wgslsmith_div_i32(~u_input.a, ~2147483647i)), _wgslsmith_f_op_f32(step(-263f, _wgslsmith_f_op_f32(arg_1.a.a.x * _wgslsmith_f_op_f32(1000f - arg_1.d)))) < 166f, ~(_wgslsmith_sub_vec4_u32(arg_1.c.e, vec4<u32>(0u, 14474u, 32162u, 4294967295u)) ^ arg_1.e.e));
    global0 = arg_3;
    return func_1(u_input.a >> (var_3.e.x % 32u)).e;
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2, arg_3: vec2<f32>) -> bool {
    var var_0 = func_1(-arg_0.a.x);
    return 18652u != var_0.e.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u;
    var var_1 = all(select(vec4<bool>(true, global0.a != (global0.a >> (58708u % 32u)), true, select(true, true, true)), select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), false), !vec4<bool>(global0.a > 0u, true, select(false, true, false), false)));
    var_1 = all(vec2<bool>(func_5(func_4(any(vec2<bool>(false, false)), func_1(-7285i), i32(-1i) * -2147483647i, Struct_4(46863u, global0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(335f, 1000f, false)) - _wgslsmith_f_op_f32(select(1108f, -661f, true))), func_1(-2242i ^ u_input.a).a, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(351f, 129f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -334f))))), any(vec3<bool>(all(vec2<bool>(false, true)), true, true))));
    var_0 = global0.a | (_wgslsmith_clamp_u32(~(~global0.a), abs(0u), _wgslsmith_sub_u32(reverseBits(global0.a), ~global0.a)) & 27965u);
    let var_2 = ~global0.b.xy;
    let var_3 = vec2<bool>(!(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -916f), 522f, true)) == -477f), 1u < global0.a);
    let var_4 = ~vec3<u32>(4294967295u, ~0u, ~_wgslsmith_clamp_u32(5672u, global0.a, global0.a | 34926u));
    var_1 = -_wgslsmith_mult_i32(-2147483647i, global0.b.x) < abs(_wgslsmith_mod_i32(var_2.x, var_2.x));
    let var_5 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(func_4(false, Struct_3(Struct_2(vec4<f32>(-1560f, 1222f, -3000f, -878f)), vec3<bool>(var_3.x, var_3.x, var_3.x), Struct_1(vec3<i32>(-2147483647i, var_2.x, u_input.a), vec2<f32>(-508f, 475f), global0.b.yz, false, vec4<u32>(var_5, var_4.x, var_4.x, 7966u)), 987f, Struct_1(global0.b, vec2<f32>(-368f, 1332f), vec2<i32>(var_2.x, u_input.a), var_3.x, vec4<u32>(61457u, global0.a, var_5, 63240u))), global0.b.x, Struct_4(4294967295u, vec3<i32>(-13490i, var_2.x, global0.b.x))).b.x, _wgslsmith_f_op_f32(-872f + -1481f), _wgslsmith_f_op_f32(sign(789f)), _wgslsmith_f_op_f32(f32(-1f) * -1050f))), vec4<f32>(_wgslsmith_f_op_f32(func_1(var_2.x).c.b.x - -516f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1383f + -746f)), _wgslsmith_f_op_f32(-1131f * _wgslsmith_f_op_f32(130f - -227f)), -321f), !select(select(vec4<bool>(false, var_3.x, true, var_3.x), vec4<bool>(false, var_3.x, var_3.x, var_3.x), vec4<bool>(true, false, var_3.x, true)), vec4<bool>(true, true, true, true), all(vec3<bool>(true, var_3.x, var_3.x))))), 0u, -253f, (~1u & abs(4294967295u >> (var_4.x % 32u))) | global0.a, firstLeadingBit(_wgslsmith_div_vec2_i32(-global0.b.xx & abs(vec2<i32>(global0.b.x, 33737i)), firstTrailingBit(vec2<i32>(u_input.a, -2147483647i)))));
}

