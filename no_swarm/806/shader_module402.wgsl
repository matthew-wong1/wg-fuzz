struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 29>;

var<private> global1: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec4<u32>(0u, 1u, 64246u, 1u), 1i, vec3<f32>(273f, 495f, 351f)), Struct_1(vec4<u32>(4294967295u, 23545u, 0u, 38285u), 78469i, vec3<f32>(935f, -619f, -1037f)), Struct_1(vec4<u32>(17361u, 34590u, 23171u, 1u), -1i, vec3<f32>(-2399f, 383f, -1000f)), Struct_1(vec4<u32>(5856u, 1u, 17554u, 30627u), -45693i, vec3<f32>(1259f, -1000f, -202f)), Struct_1(vec4<u32>(0u, 0u, 43550u, 4294967295u), 1i, vec3<f32>(-2663f, -680f, 260f)), Struct_1(vec4<u32>(51265u, 54820u, 4294967295u, 62598u), -1i, vec3<f32>(-167f, -1183f, 876f)), Struct_1(vec4<u32>(0u, 48724u, 64649u, 1u), 15056i, vec3<f32>(123f, -621f, -949f)), Struct_1(vec4<u32>(25355u, 19754u, 1u, 15056u), 1i, vec3<f32>(-1817f, 245f, -245f)), Struct_1(vec4<u32>(1u, 59477u, 53868u, 1u), i32(-2147483648), vec3<f32>(-1488f, 421f, -1000f)), Struct_1(vec4<u32>(0u, 4294967295u, 4294967295u, 63265u), 49751i, vec3<f32>(-232f, 525f, 805f)), Struct_1(vec4<u32>(0u, 10076u, 38969u, 4294967295u), 2147483647i, vec3<f32>(1765f, 269f, -293f)), Struct_1(vec4<u32>(0u, 66575u, 89818u, 1u), 39433i, vec3<f32>(938f, 147f, 688f)), Struct_1(vec4<u32>(1u, 109967u, 52938u, 1u), 5496i, vec3<f32>(-2065f, 1000f, 730f)), Struct_1(vec4<u32>(1u, 0u, 0u, 41937u), 35866i, vec3<f32>(-757f, 139f, -473f)), Struct_1(vec4<u32>(4294967295u, 45129u, 0u, 4294967295u), -1i, vec3<f32>(202f, 1000f, -717f)), Struct_1(vec4<u32>(0u, 79546u, 34559u, 1u), 0i, vec3<f32>(-171f, 1795f, 2281f)), Struct_1(vec4<u32>(7943u, 0u, 58063u, 4294967295u), 0i, vec3<f32>(1000f, -1864f, -423f)), Struct_1(vec4<u32>(0u, 1u, 34089u, 103514u), -14645i, vec3<f32>(341f, 173f, 970f)), Struct_1(vec4<u32>(1u, 120674u, 0u, 4294967295u), 0i, vec3<f32>(212f, 1076f, 466f)), Struct_1(vec4<u32>(54372u, 38736u, 36468u, 0u), i32(-2147483648), vec3<f32>(-748f, 424f, -242f)));

var<private> global2: array<vec4<i32>, 9>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec4<u32> {
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_sub_i32(-23394i, _wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(29319u, 29u)], vec3<i32>(min(u_input.a, u_input.a), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.a, u_input.a), vec3<i32>(-1i, -607i, u_input.a)), u_input.a))), _wgslsmith_mod_i32(-53285i, _wgslsmith_mod_i32(4269i, max(u_input.a, -u_input.a))));
    var var_1 = -1i & u_input.a;
    global0 = array<vec3<i32>, 29>();
    var_0 = _wgslsmith_add_i32(_wgslsmith_mod_i32(-16091i, ~select(1i, u_input.a, any(vec2<bool>(true, true)))), _wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(abs(vec2<u32>(15649u, 1u)), vec2<u32>(1u, 1u)), ~vec2<u32>(4294967295u, 16457u)), 29u)], ~(-global0[_wgslsmith_index_u32(58709u, 29u)] | (vec3<i32>(u_input.a, 1i, -20979i) ^ global0[_wgslsmith_index_u32(73213u, 29u)]))));
    var_0 = 72444i;
    return ~(~vec4<u32>(select(~69495u, _wgslsmith_mult_u32(1u, 4294967295u), false), _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(4294967295u, 6377u)), ~vec2<u32>(1u, 0u)), _wgslsmith_dot_vec4_u32(vec4<u32>(25758u, 1u, 57827u, 68326u), vec4<u32>(4294967295u, 48705u, 26337u, 1u)), ~1u));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    global0 = array<vec3<i32>, 29>();
    global2 = array<vec4<i32>, 9>();
    var var_0 = u_input.a;
    var_0 = 12350i;
    global0 = array<vec3<i32>, 29>();
    return Struct_1(func_3(), _wgslsmith_dot_vec4_i32(abs(global2[_wgslsmith_index_u32(~max(1u, arg_3.a.x), 9u)]), _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, -2147483647i, 2147483647i, -55170i), vec4<i32>(u_input.a, arg_2, -3339i, -37552i)), firstLeadingBit(firstTrailingBit(global2[_wgslsmith_index_u32(arg_0.x, 9u)])))), arg_3.c);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_3) -> i32 {
    var var_0 = arg_2;
    var_0 = arg_2;
    global1 = array<Struct_1, 20>();
    var var_1 = u_input.a;
    var var_2 = func_2(countOneBits(vec3<u32>(~arg_1.a.x | arg_1.a.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(arg_1.a.xw, vec2<u32>(arg_1.a.x, 2513u)), 0u), func_2(~var_0.a.a.xwz, ~vec4<u32>(arg_1.a.x, 4294967295u, arg_1.a.x, arg_1.a.x), -arg_2.d, Struct_1(var_0.a.a, 1i, var_0.a.c)).a.x)), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(arg_2.a.a, ~vec4<u32>(60339u, arg_2.b, 1u, arg_1.a.x)), max(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 4294967295u, var_0.a.a.x, 0u), vec4<u32>(94736u, arg_2.a.a.x, 13816u, 4294967295u)), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.a.a.x, arg_2.b, 1u, arg_2.a.a.x), arg_2.a.a))), arg_1.a), _wgslsmith_dot_vec4_i32(vec4<i32>(-13249i, ~arg_2.d, ~var_0.d, 1i), select(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(55971u, arg_2.a.a.x), 9u)], firstLeadingBit(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 40578u), vec2<u32>(arg_2.a.a.x, 82996u)), 9u)]), false)), global1[_wgslsmith_index_u32(21334u, 20u)]);
    return var_0.d >> (58u % 32u);
}

fn func_1() -> Struct_3 {
    var var_0 = vec3<i32>(func_4(_wgslsmith_f_op_f32(2575f - _wgslsmith_div_f32(-1266f, _wgslsmith_f_op_f32(f32(-1f) * -1446f))), func_2(vec3<u32>(firstTrailingBit(89338u), 1u, _wgslsmith_mult_u32(0u, 67276u)), vec4<u32>(_wgslsmith_mod_u32(31364u, 49388u), 1u, _wgslsmith_mod_u32(17854u, 13445u), ~15654u), -1i, Struct_1(vec4<u32>(1u, 1u, 1u, 1u), firstTrailingBit(u_input.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(658f, -1580f, -309f) * vec3<f32>(-2488f, -197f, 1913f)))), Struct_3(func_2(~vec3<u32>(17564u, 30814u, 0u), abs(vec4<u32>(27840u, 11553u, 4294967295u, 0u)), -161i, Struct_1(vec4<u32>(2136u, 3793u, 0u, 119980u), -649i, vec3<f32>(891f, -528f, -1109f))), 1u, -570f, ~_wgslsmith_sub_i32(16762i, u_input.a))), u_input.a | 23634i, -_wgslsmith_dot_vec2_i32(~(vec2<i32>(u_input.a, -1i) | vec2<i32>(u_input.a, u_input.a)), firstLeadingBit(~vec2<i32>(-20730i, 27360i))));
    let var_1 = abs(_wgslsmith_sub_vec4_i32(vec4<i32>(~var_0.x, i32(-1i) * -var_0.x, 7596i, _wgslsmith_mod_i32(0i, var_0.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(~(-30146i), ~1i, -33841i, _wgslsmith_mod_i32(var_0.x, -23376i)), _wgslsmith_sub_vec4_i32(~global2[_wgslsmith_index_u32(83226u, 9u)], ~vec4<i32>(var_0.x, u_input.a, u_input.a, -60769i)), -min(vec4<i32>(-13313i, -1i, 23369i, -1i), vec4<i32>(75111i, var_0.x, var_0.x, 0i)))));
    let var_2 = vec3<i32>(_wgslsmith_add_i32(~(-20774i), -56691i), ~1i, -(i32(-1i) * -1887i));
    global2 = array<vec4<i32>, 9>();
    let var_3 = vec2<bool>(true, true);
    return Struct_3(global1[_wgslsmith_index_u32(reverseBits(~(~1u)), 20u)], 4294967295u, 112f, var_2.x);
}

fn func_5(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: vec3<u32>, arg_3: Struct_3) -> Struct_3 {
    let var_0 = Struct_2(vec3<u32>(arg_2.x, _wgslsmith_clamp_u32(countOneBits(55516u), 0u, arg_3.b), ~(~func_1().a.a.x)));
    global0 = array<vec3<i32>, 29>();
    let var_1 = global1[_wgslsmith_index_u32(47881u, 20u)];
    global0 = array<vec3<i32>, 29>();
    global0 = array<vec3<i32>, 29>();
    return func_1();
}

fn func_6(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: f32) -> f32 {
    let var_0 = !select(!select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(abs(56302i) <= func_5(vec3<i32>(arg_0.d, arg_0.a.b, -2147483647i), vec4<f32>(arg_0.a.c.x, -1036f, arg_2.x, arg_0.a.c.x), vec3<u32>(5421u, 13484u, 1u), Struct_3(arg_0.a, 4294967295u, arg_0.a.c.x, u_input.a)).a.b, (i32(-1i) * -6142i) > ~u_input.a), vec2<bool>(true, true));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-func_2(arg_1.a, arg_0.a.a | ~arg_0.a.a, min(-9593i ^ arg_0.a.b, -2147483647i), func_1().a).c.zz) * _wgslsmith_f_op_vec2_f32(sign(arg_0.a.c.zy)));
    var var_2 = Struct_1(vec4<u32>(47200u, arg_0.b, abs(_wgslsmith_sub_u32(~0u, ~62252u)), 66586u), 1i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_0.a.c.x - _wgslsmith_f_op_f32(-arg_0.a.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, -1645f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.c.x + arg_0.c)))));
    global2 = array<vec4<i32>, 9>();
    var var_3 = var_2.a.x;
    return _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-911f + arg_0.a.c.x)), _wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-726f, _wgslsmith_f_op_f32(arg_3 - arg_3)) - _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-399f * 1313f) + _wgslsmith_f_op_f32(f32(-1f) * -327f)) + -875f) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-564f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<i32>, 9>();
    global0 = array<vec3<i32>, 29>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_6(func_5(global0[_wgslsmith_index_u32(min(64204u, 1u), 29u)], vec4<f32>(-1142f, -624f, -1000f, -321f), ~vec3<u32>(0u, 1u, 1u), func_1()), Struct_2(vec3<u32>(4294967295u, 39545u, 71982u)), vec2<f32>(_wgslsmith_f_op_f32(173f + 181f), _wgslsmith_f_op_f32(step(-1075f, -227f))), -140f)) - 412f));
    global1 = array<Struct_1, 20>();
    var var_1 = vec3<bool>(12151u != func_5(vec3<i32>(-u_input.a, u_input.a, u_input.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, var_0, -887f)), select(~vec3<u32>(1u, 1u, 4294967295u), ~vec3<u32>(134609u, 24779u, 1u), true), Struct_3(func_2(vec3<u32>(1u, 45855u, 22049u), vec4<u32>(29113u, 20905u, 1u, 16701u), u_input.a, Struct_1(vec4<u32>(46803u, 60893u, 0u, 4294967295u), 2147483647i, vec3<f32>(var_0, var_0, var_0))), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 41605u, 0u, 1u), vec4<u32>(334u, 51055u, 4294967295u, 1u)), var_0, u_input.a)).b, true, true);
    var_1 = vec3<bool>(!((false & all(var_1.yx)) != any(vec3<bool>(true, false, true))), select(true, (_wgslsmith_sub_i32(-1i, 0i) << (~4294967295u % 32u)) >= (-u_input.a ^ 2147483647i), var_1.x), var_1.x);
    var var_2 = Struct_3(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(func_1().a.a.wwx << (func_1().a.a.wwx % vec3<u32>(32u)), ~(_wgslsmith_clamp_vec3_u32(vec3<u32>(2102u, 31946u, 28631u), vec3<u32>(20812u, 84732u, 1u), vec3<u32>(1u, 348u, 85101u)) & ~vec3<u32>(34986u, 31051u, 71039u))), 20u)], max(abs(func_2(~vec3<u32>(4294967295u, 11566u, 30441u), vec4<u32>(0u, 0u, 7477u, 38779u), u_input.a << (84613u % 32u), func_5(global0[_wgslsmith_index_u32(25888u, 29u)], vec4<f32>(var_0, var_0, -1000f, var_0), vec3<u32>(0u, 0u, 4294967295u), Struct_3(Struct_1(vec4<u32>(1u, 67850u, 5102u, 43754u), u_input.a, vec3<f32>(var_0, -421f, var_0)), 0u, 881f, u_input.a)).a).a.x), ~firstLeadingBit(~4294967295u)), var_0, _wgslsmith_mod_i32(func_4(var_0, Struct_1(max(vec4<u32>(35629u, 65728u, 4294967295u, 1u), vec4<u32>(32808u, 34606u, 0u, 1u)), u_input.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, -744f))), func_1()), firstTrailingBit(u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(32558i, _wgslsmith_sub_i32(func_4(-828f, global1[_wgslsmith_index_u32(~4294967295u, 20u)], Struct_3(Struct_1(var_2.a.a, -1i, vec3<f32>(var_2.c, 1658f, var_2.c)), 0u, -1438f, u_input.a)), ~(~0i)), -_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_2.a.b, u_input.a), vec2<i32>(u_input.a, -49264i), vec2<i32>(var_2.d, u_input.a)), max(vec2<i32>(var_2.d, -12186i), vec2<i32>(1i, 0i))), 24877i >> (var_2.b % 32u)), max(_wgslsmith_div_u32(_wgslsmith_div_u32(var_2.b, var_2.a.a.x >> (var_2.b % 32u)), 4294967295u), var_2.a.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, ~var_2.a.a.x, var_2.a.a.x), var_2.a.a.yyw), var_2.b, vec2<i32>(var_2.a.b, var_2.a.b));
}

