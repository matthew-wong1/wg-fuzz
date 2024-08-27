struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
    c: bool,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27>;

var<private> global1: bool = false;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3) -> f32 {
    var var_0 = ~_wgslsmith_dot_vec2_u32(arg_0.d.yx, vec2<u32>(1u, _wgslsmith_mod_u32(122869u, 36793u)) & _wgslsmith_clamp_vec2_u32(arg_0.d.yx | vec2<u32>(1u, arg_0.d.x), vec2<u32>(u_input.a, u_input.a) ^ vec2<u32>(123077u, arg_0.d.x), ~arg_0.d.yz));
    global0 = array<Struct_1, 27>();
    var var_1 = !vec2<bool>(!arg_0.c, _wgslsmith_clamp_u32(u_input.a ^ arg_0.d.x, u_input.a, arg_0.d.x) >= _wgslsmith_mult_u32(u_input.a, ~arg_0.d.x));
    global0 = array<Struct_1, 27>();
    var_0 = firstTrailingBit(51161u) << (_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(arg_0.d.x, 15815u, arg_0.d.x, arg_0.d.x)), ~vec4<u32>(arg_0.d.x, u_input.a, 31462u, 1u)), vec4<u32>(_wgslsmith_add_u32(0u, 70340u), ~u_input.a, firstTrailingBit(u_input.a), u_input.a)), ~firstLeadingBit(vec4<u32>(u_input.a, arg_0.d.x, u_input.a, u_input.a))) % 32u);
    return arg_0.a.x;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec3<f32>) -> vec2<bool> {
    var var_0 = Struct_2(Struct_1(~arg_1.d.xy, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(arg_0)))), ~_wgslsmith_sub_vec3_i32(~vec3<i32>(2147483647i, u_input.b.x, u_input.b.x), vec3<i32>(u_input.b.x, -44764i, -35048i)), u_input.b, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(804f * arg_2.x), arg_1.a.x, _wgslsmith_f_op_f32(-arg_2.x), -286f)))), Struct_1(vec2<u32>(u_input.a, arg_0.d.x), _wgslsmith_f_op_f32(arg_1.a.x * _wgslsmith_f_op_f32(sign(1057f))), ~(-vec3<i32>(10715i, -32951i, -44605i) >> (select(arg_0.d, arg_1.d, true) % vec3<u32>(32u))), _wgslsmith_div_vec2_i32(-(u_input.b | u_input.b), ~(-u_input.b)), vec4<f32>(_wgslsmith_f_op_f32(-266f * 1186f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(570f * -1491f)), _wgslsmith_f_op_f32(ceil(-757f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(arg_2.x, 720f)), -318f, all(vec4<bool>(true, false, true, false)))))));
    global0 = array<Struct_1, 27>();
    var var_1 = _wgslsmith_f_op_f32(arg_2.x - arg_2.x);
    global0 = array<Struct_1, 27>();
    var var_2 = ~vec4<u32>(arg_1.d.x, u_input.a, firstTrailingBit(7479u), ~4294967295u);
    return vec2<bool>(any(vec4<bool>(false, all(vec2<bool>(arg_1.c, true)), true, any(vec2<bool>(arg_1.c, arg_0.c)))), arg_1.c | all(select(vec4<bool>(arg_0.c, true, arg_1.b, arg_1.c), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, arg_1.b, false), true), arg_0.c)));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<bool>) -> vec3<i32> {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(785f, -1211f, 328f)))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1228f, -990f, -1021f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(286f, 433f, -562f) - vec3<f32>(337f, -1447f, -1274f))))))), false, u_input.b.x != -arg_0.x, _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, 35945u), _wgslsmith_mod_vec3_u32(vec3<u32>(26250u, u_input.a, u_input.a), vec3<u32>(15564u, 0u, u_input.a))), ~(vec3<u32>(4294967295u, u_input.a, 4294967295u) ^ vec3<u32>(20242u, u_input.a, u_input.a))), _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 4294967295u, 18099u) | vec3<u32>(u_input.a, 53546u, 71631u), vec3<u32>(u_input.a, 4294967295u, u_input.a)), min(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(100774u, u_input.a, 56800u)) >> ((vec3<u32>(u_input.a, u_input.a, 19763u) >> (vec3<u32>(u_input.a, 0u, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u)), ~firstLeadingBit(vec3<u32>(u_input.a, u_input.a, u_input.a))), countOneBits(vec3<u32>(45831u, u_input.a, 43978u) | max(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(0u, u_input.a, 1u)))));
    var_0 = Struct_3(var_0.a, any(!arg_1), false, ~vec3<u32>((u_input.a >> (u_input.a % 32u)) & var_0.d.x, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 1u, 95887u), vec3<u32>(1u, 4294967295u, 47709u)), ~vec3<u32>(1u, 36100u, u_input.a)), ~var_0.d.x ^ var_0.d.x));
    global0 = array<Struct_1, 27>();
    global1 = var_0.b;
    var_0 = Struct_3(vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x), arg_1.x, !select(true, any(vec4<bool>(var_0.c, arg_1.x, var_0.c, arg_1.x)), true), var_0.d);
    return arg_0.xzz;
}

fn func_1(arg_0: u32, arg_1: vec4<f32>) -> Struct_3 {
    global0 = array<Struct_1, 27>();
    global0 = array<Struct_1, 27>();
    var var_0 = _wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)), func_4(-vec4<i32>(_wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, 0i), u_input.b.x | u_input.b.x, -2147483647i, u_input.b.x), select(!select(vec2<bool>(false, false), vec2<bool>(true, true), false), select(vec2<bool>(false, false), vec2<bool>(false, true), func_2(Struct_3(vec3<f32>(-1476f, -450f, -544f), true, false, vec3<u32>(arg_0, u_input.a, 41159u)), Struct_3(vec3<f32>(-1449f, arg_1.x, arg_1.x), false, true, vec3<u32>(u_input.a, 17812u, 21906u)), arg_1.yww)), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, false)))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-592f, arg_1.x, true)))), _wgslsmith_f_op_f32(-arg_1.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.x)))));
    var var_2 = Struct_3(arg_1.yyw, true, false, ~(~countOneBits(vec3<u32>(5329u, arg_0, arg_0) | vec3<u32>(arg_0, u_input.a, 4294967295u))));
    return Struct_3(_wgslsmith_f_op_vec3_f32(-var_2.a), false, var_2.b, vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(var_2.d, var_2.d), _wgslsmith_clamp_u32(~arg_0, _wgslsmith_mod_u32(10996u, 10011u), ~u_input.a)), _wgslsmith_div_u32(~21916u | var_2.d.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 61990u), vec2<u32>(var_2.d.x, 12944u))), 0u));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: f32, arg_3: bool) -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(u_input.a, 27u)];
    global1 = arg_3 | arg_0.x;
    let var_1 = arg_1.a.x;
    let var_2 = Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 4294967295u), ~vec2<u32>(~u_input.a, ~u_input.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1614f + arg_1.a.x), _wgslsmith_f_op_f32(min(1388f, 862f))), select(_wgslsmith_clamp_vec3_i32(var_0.c, ~(-vec3<i32>(1i, 2147483647i, u_input.b.x)), vec3<i32>(-58681i, 2147483647i, u_input.b.x)), vec3<i32>(max(var_0.d.x, u_input.b.x), -u_input.b.x, 1i) & select(min(var_0.c, var_0.c), var_0.c, arg_0.zyw), vec3<bool>(var_0.c.x != u_input.b.x, true, all(arg_0.wz))), vec2<i32>(-_wgslsmith_mult_i32(_wgslsmith_clamp_i32(-1i, 2147483647i, 26665i), 43177i), _wgslsmith_mult_i32(-(-44542i >> (var_0.a.x % 32u)), var_0.d.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(var_0.e + vec4<f32>(var_0.b, -1042f, var_0.e.x, 676f)))))));
    let var_3 = ~abs(_wgslsmith_sub_vec4_u32(vec4<u32>(reverseBits(u_input.a), 24696u, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.a.x, 4294967295u, 0u), arg_1.d)), abs(vec4<u32>(116552u, arg_1.d.x, u_input.a, 4294967295u)) | vec4<u32>(4294967295u, var_0.a.x, 29955u, arg_1.d.x)));
    return -1997f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -492f))) + 1f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true)), func_1(~0u, _wgslsmith_div_vec4_f32(vec4<f32>(1429f, 1000f, -1104f, -1282f), vec4<f32>(1510f, 150f, 1000f, 407f))), _wgslsmith_f_op_f32(-1066f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), false)));
    var var_0 = 1902f;
    var var_1 = vec4<f32>(1588f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1050f - _wgslsmith_f_op_f32(f32(-1f) * -843f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(-813f, -1574f, -202f) - vec3<f32>(-769f, -1235f, 2156f)), false, true, ~vec3<u32>(u_input.a, 1u, u_input.a)))))), _wgslsmith_f_op_f32(f32(-1f) * -714f));
    var var_2 = Struct_2(Struct_1(~(~(vec2<u32>(u_input.a, 24724u) >> (vec2<u32>(u_input.a, 5708u) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))), ~(~firstLeadingBit(vec3<i32>(u_input.b.x, -22676i, -2147483647i))), u_input.b, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(-1308f, 1000f), -631f, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_f32(var_1.x, 1975f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -226f, var_1.x, var_1.x)), select(vec4<bool>(false, true, true, false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), false), vec4<bool>(true, true, true, true))))), Struct_1(min(min(vec2<u32>(u_input.a, 0u), vec2<u32>(30436u, 31404u) << (vec2<u32>(37640u, u_input.a) % vec2<u32>(32u))), max(vec2<u32>(u_input.a, 17865u), vec2<u32>(u_input.a, 1u)) >> (vec2<u32>(0u, 0u) % vec2<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -225f) + -1854f)), vec3<i32>(_wgslsmith_clamp_i32(2147483647i, -14814i, ~u_input.b.x), _wgslsmith_mult_i32(-1i, 1i), 1i), func_4(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x & u_input.b.x, i32(-1i) * -1i), func_2(Struct_3(vec3<f32>(648f, var_1.x, 2191f), false, true, vec3<u32>(u_input.a, u_input.a, 1u)), func_1(u_input.a, vec4<f32>(-1594f, var_1.x, 161f, var_1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, -1298f)))).xz, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 771f, -200f, var_1.x) * vec4<f32>(var_1.x, var_1.x, 515f, 2030f))))))));
    var var_3 = _wgslsmith_dot_vec2_i32(-firstTrailingBit(u_input.b), -vec2<i32>(~0i, ~u_input.b.x) | (abs(~var_2.a.c.xy) << (var_2.a.a % vec2<u32>(32u))));
    var_1 = var_2.a.e;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(var_2.b.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(u_input.a, 70673u), 19138u), reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(2772u, var_2.b.a.x))))));
}

