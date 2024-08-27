struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<f32>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec3<f32>,
    d: u32,
    e: i32,
}

struct Struct_4 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: u32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec3<f32> = vec3<f32>(1460f, 443f, -635f);

var<private> global2: f32;

var<private> global3: array<Struct_4, 20> = array<Struct_4, 20>(Struct_4(-688f, vec3<u32>(9729u, 37301u, 0u)), Struct_4(843f, vec3<u32>(4294967295u, 60271u, 50168u)), Struct_4(1096f, vec3<u32>(734u, 0u, 0u)), Struct_4(-1508f, vec3<u32>(0u, 27074u, 0u)), Struct_4(-567f, vec3<u32>(48449u, 4294967295u, 42660u)), Struct_4(436f, vec3<u32>(34961u, 52524u, 0u)), Struct_4(-1538f, vec3<u32>(1u, 4294967295u, 8971u)), Struct_4(-520f, vec3<u32>(39633u, 3468u, 0u)), Struct_4(1654f, vec3<u32>(1u, 64364u, 0u)), Struct_4(-1897f, vec3<u32>(0u, 0u, 1u)), Struct_4(-647f, vec3<u32>(37956u, 0u, 10510u)), Struct_4(-679f, vec3<u32>(4294967295u, 1u, 131121u)), Struct_4(-545f, vec3<u32>(0u, 28564u, 1u)), Struct_4(1000f, vec3<u32>(4294967295u, 1u, 1u)), Struct_4(-1000f, vec3<u32>(1u, 1u, 4294967295u)), Struct_4(1322f, vec3<u32>(20345u, 0u, 1u)), Struct_4(-287f, vec3<u32>(4294967295u, 4294967295u, 0u)), Struct_4(1029f, vec3<u32>(1u, 51707u, 1u)), Struct_4(-920f, vec3<u32>(1u, 1u, 25227u)), Struct_4(-294f, vec3<u32>(0u, 18802u, 48595u)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<u32>) -> u32 {
    global1 = vec3<f32>(-748f, global1.x, _wgslsmith_f_op_f32(-332f - -521f));
    global3 = array<Struct_4, 20>();
    let var_0 = Struct_3(Struct_1(729f, _wgslsmith_dot_vec3_u32(u_input.b, ~firstTrailingBit(arg_0.wzx)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-936f, global1.x, global1.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1000f, 602f) + vec3<f32>(global1.x, 778f, global1.x))))), -1i, _wgslsmith_clamp_u32(select(54859u >> (1u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 1u), vec3<u32>(arg_0.x, 1u, u_input.a)), any(vec3<bool>(false, false, true))), u_input.b.x, arg_0.x)), 18399i, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -693f), _wgslsmith_f_op_f32(-820f - -506f), 1f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 478f, 1105f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-392f, 1526f, 2817f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -1301f, global1.x) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(417f, -506f, -512f)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.x, -787f, 457f))))))), abs(1u), 1i);
    var var_1 = Struct_4(_wgslsmith_f_op_f32(sign(var_0.c.x)), select(u_input.b, _wgslsmith_mod_vec3_u32(u_input.b, _wgslsmith_mult_vec3_u32(arg_0.yzy << (arg_0.zyy % vec3<u32>(32u)), min(vec3<u32>(arg_0.x, arg_0.x, arg_0.x), vec3<u32>(var_0.a.b, u_input.b.x, arg_0.x)))), select(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true), false), any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false))))));
    var var_2 = countOneBits(-((_wgslsmith_dot_vec4_i32(vec4<i32>(36393i, 4041i, var_0.e, var_0.b), vec4<i32>(-1i, var_0.e, var_0.e, -8225i)) | ~var_0.b) << (0u % 32u)));
    return 11400u ^ ~max(abs(_wgslsmith_mult_u32(54883u, var_1.b.x)), ~arg_0.x);
}

fn func_2(arg_0: vec3<u32>) -> Struct_4 {
    global0 = global1.x;
    let var_0 = !(false || (true | all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)))));
    var var_1 = _wgslsmith_div_u32(func_3(~_wgslsmith_add_vec4_u32(max(vec4<u32>(1u, 0u, arg_0.x, u_input.b.x), vec4<u32>(84581u, 1u, 114632u, arg_0.x)), vec4<u32>(1u, u_input.b.x, 43043u, arg_0.x))), 22365u);
    var var_2 = ~1u;
    let var_3 = !select(select(select(select(vec4<bool>(var_0, var_0, true, var_0), vec4<bool>(var_0, false, true, var_0), vec4<bool>(true, false, false, var_0)), select(vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(var_0, false, var_0, var_0)), true), !(!vec4<bool>(var_0, var_0, true, var_0)), vec4<bool>(var_0, var_0 == var_0, any(vec3<bool>(var_0, false, var_0)), var_0)), !(!vec4<bool>(true, var_0, false, true)), var_0);
    return Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x - global1.x) - _wgslsmith_f_op_f32(1162f * global1.x)))), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, ~arg_0.x, 4294967295u & u_input.a), vec3<u32>(arg_0.x, countOneBits(_wgslsmith_mod_u32(38228u, 4294967295u)), ~0u)));
}

fn func_1() -> Struct_3 {
    let var_0 = !(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), false)));
    let var_1 = func_2(vec3<u32>(~abs(u_input.a), 61503u, u_input.b.x));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, var_1.a, 1202f, global1.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-247f, global1.x, 1207f, var_1.a))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.x, var_1.a, global1.x, 1059f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(1073f, global1.x, -1156f, -668f), vec4<f32>(-777f, 336f, -1693f, global1.x)), vec4<f32>(global1.x, var_1.a, -100f, global1.x), var_0)))));
    let var_3 = var_2.zxz;
    var var_4 = vec4<u32>(1u, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.a, 50899u, u_input.a), vec4<u32>(var_1.b.x, 4294967295u, 1u, var_1.b.x)), u_input.b.x, ~var_1.b.x, u_input.b.x), vec4<u32>(var_1.b.x, select(u_input.b.x, 44054u, var_0.x), _wgslsmith_sub_u32(4294967295u, 1u), firstTrailingBit(20798u))), 91570u), u_input.b.x, 51881u);
    return Struct_3(Struct_1(_wgslsmith_f_op_f32(sign(-114f)), max(~4294967295u, ~var_1.b.x >> (~var_4.x % 32u)), _wgslsmith_f_op_vec3_f32(var_2.xxy * var_2.wwy), ~_wgslsmith_clamp_i32(6717i >> (var_1.b.x % 32u), -2147483647i, _wgslsmith_div_i32(1i, -1i)), var_4.x), -4935i, _wgslsmith_f_op_vec3_f32(round(var_2.zxy)), var_4.x, ~(-1i));
}

fn func_4(arg_0: Struct_3) -> f32 {
    let var_0 = ~_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_div_u32(0u, 44868u) | _wgslsmith_div_u32(u_input.b.x, arg_0.a.b), 27318u, reverseBits(max(0u, 4294967295u)), 76147u), ~(~abs(vec4<u32>(u_input.b.x, 4294967295u, 0u, 0u))), vec4<u32>(0u, ~u_input.b.x, 1u, firstLeadingBit(1u)) ^ (_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.d, 29895u, arg_0.a.b, arg_0.a.b), vec4<u32>(u_input.b.x, 14092u, u_input.a, u_input.b.x)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(33925u, 4294967295u, u_input.b.x, u_input.a), vec4<u32>(arg_0.d, 0u, 5611u, 4294967295u)) % vec4<u32>(32u))));
    global3 = array<Struct_4, 20>();
    var var_1 = ~(vec3<i32>(arg_0.b, _wgslsmith_mult_i32(arg_0.e, arg_0.e) << (var_0.x % 32u), 14934i) << (abs(~(var_0.zxw << (vec3<u32>(23488u, arg_0.a.b, arg_0.d) % vec3<u32>(32u)))) % vec3<u32>(32u)));
    global1 = vec3<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(914f - -142f) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-1440f)), _wgslsmith_f_op_f32(round(970f)), var_1.x != var_1.x)))), arg_0.a.c.x);
    let var_2 = func_1().a.c.yz;
    return _wgslsmith_f_op_f32(f32(-1f) * -773f);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(func_4(func_1()));
    var var_0 = any(!vec2<bool>(any(vec3<bool>(true, true, true)), true));
    global1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-691f - _wgslsmith_f_op_f32(max(global1.x, -1543f))), _wgslsmith_div_f32(-132f, -224f))), _wgslsmith_f_op_f32(-796f - _wgslsmith_f_op_f32(f32(-1f) * -327f)), _wgslsmith_f_op_f32(select(global1.x, 1131f, _wgslsmith_clamp_i32(2147483647i, -2380i, 72633i) != -10420i))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(func_1().c, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(569f, global1.x, global1.x))))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(919f, 2084f, 135f) + vec3<f32>(global1.x, global1.x, global1.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-631f, global1.x, global1.x)))))));
    let var_1 = true;
    var var_2 = func_1().a;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1392f)) + 1086f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.x, _wgslsmith_f_op_f32(abs(global1.x)), _wgslsmith_f_op_f32(min(-267f, var_2.a)), _wgslsmith_f_op_f32(-1777f * -757f))))), ~(~(~min(46609u, var_2.b))), u_input.b.x, func_1().a.a, var_2.d);
}

