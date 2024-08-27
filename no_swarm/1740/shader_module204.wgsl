struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<bool>,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: vec2<bool>,
    e: vec4<f32>,
}

struct Struct_5 {
    a: u32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 20>;

var<private> global1: array<u32, 28> = array<u32, 28>(120559u, 1u, 4130u, 4294967295u, 1u, 923u, 64808u, 1u, 46647u, 1u, 0u, 0u, 23012u, 1706u, 107951u, 10666u, 9784u, 1u, 1569u, 4294967295u, 27069u, 16079u, 95056u, 63365u, 0u, 1u, 0u, 1u);

var<private> global2: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(1i, false, vec4<bool>(true, true, true, false), false), Struct_1(i32(-2147483648), true, vec4<bool>(false, true, true, true), true), Struct_1(-9157i, true, vec4<bool>(true, false, true, true), false), Struct_1(0i, false, vec4<bool>(true, true, true, true), true), Struct_1(34812i, false, vec4<bool>(true, true, true, false), false), Struct_1(0i, true, vec4<bool>(false, true, false, false), false), Struct_1(-12572i, true, vec4<bool>(true, false, false, true), false), Struct_1(49486i, false, vec4<bool>(false, true, false, false), true), Struct_1(1i, true, vec4<bool>(false, true, true, true), false), Struct_1(-22270i, true, vec4<bool>(true, false, true, false), true), Struct_1(-42628i, true, vec4<bool>(false, false, true, false), false), Struct_1(-6917i, false, vec4<bool>(false, false, false, false), true), Struct_1(17850i, false, vec4<bool>(true, false, false, false), true), Struct_1(0i, false, vec4<bool>(false, true, true, false), true), Struct_1(90899i, false, vec4<bool>(false, false, true, true), true), Struct_1(-1i, true, vec4<bool>(true, false, true, false), true), Struct_1(-1i, true, vec4<bool>(false, true, true, false), true), Struct_1(10016i, false, vec4<bool>(false, true, false, true), false), Struct_1(i32(-2147483648), false, vec4<bool>(true, false, false, false), true), Struct_1(-4456i, true, vec4<bool>(true, false, false, false), false), Struct_1(i32(-2147483648), true, vec4<bool>(true, false, true, true), false), Struct_1(16036i, true, vec4<bool>(false, false, false, true), false));

var<private> global3: Struct_5 = Struct_5(4294967295u, vec2<i32>(0i, -34943i));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: i32, arg_1: f32) -> bool {
    var var_0 = vec4<f32>(-712f, _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(max(arg_1, _wgslsmith_f_op_f32(sign(125f)))), 1395f);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(ceil(1654f)), arg_1, 1141f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(f32(-1f) * -389f)))));
    let var_2 = vec3<u32>(1u, min(_wgslsmith_sub_u32(~51960u, _wgslsmith_dot_vec3_u32(vec3<u32>(global3.a, global3.a, global3.a), vec3<u32>(8988u, global3.a, 4294967295u))), ~u_input.e.x) << (global3.a % 32u), ~4294967295u);
    return !(u_input.e.x < var_2.x);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_5, arg_2: vec2<f32>) -> vec2<u32> {
    global1 = array<u32, 28>();
    let var_0 = min(global3.a >> (1u % 32u), _wgslsmith_clamp_u32(global3.a, global3.a, arg_1.a << (_wgslsmith_dot_vec4_u32(vec4<u32>(global3.a, global3.a, u_input.e.x, 70794u), vec4<u32>(arg_1.a, u_input.e.x, 22293u, 0u)) % 32u)));
    global3 = Struct_5(~_wgslsmith_sub_u32(~(4294967295u | u_input.e.x), 4294967295u), arg_1.b);
    let var_1 = firstTrailingBit(global3.b.x);
    let var_2 = select(-1i, -17045i, var_1 <= _wgslsmith_mod_i32(20600i, var_1));
    return vec2<u32>(abs(29623u), abs(31543u));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: Struct_3, arg_3: vec2<u32>) -> vec2<f32> {
    global0 = array<vec2<f32>, 20>();
    global2 = array<Struct_1, 22>();
    var var_0 = Struct_5(arg_3.x ^ ~u_input.e.x, u_input.c.yz);
    var var_1 = firstLeadingBit(countOneBits(func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, arg_1)) - _wgslsmith_div_vec3_f32(arg_2.a.zxx, arg_2.a.xzz)), Struct_5(firstLeadingBit(4294967295u), var_0.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(37474u, 20u)] + vec2<f32>(arg_2.a.x, arg_1)) * arg_2.a.xx))));
    let var_2 = Struct_1(~(-23490i), all(!(!select(vec4<bool>(false, false, arg_0, arg_0), vec4<bool>(false, arg_2.c.d, arg_2.d.b, false), vec4<bool>(true, arg_0, false, true)))), arg_2.d.c, !(select(false, false, false) | (arg_0 | arg_2.d.c.x)) | !(!(!arg_0)));
    return vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(arg_2.a.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-379f - arg_1) - arg_2.a.x))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: u32) -> Struct_1 {
    var var_0 = (-firstTrailingBit(select(vec2<i32>(17739i, -2705i), global3.b, true)) << (~(u_input.e >> (arg_1.b.xx % vec2<u32>(32u))) % vec2<u32>(32u))) << (_wgslsmith_sub_vec2_u32(arg_1.b.xz, u_input.e) % vec2<u32>(32u));
    var var_1 = false;
    global2 = array<Struct_1, 22>();
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.a.x + -478f)));
    global3 = Struct_5(_wgslsmith_dot_vec3_u32(vec3<u32>(~arg_1.b.x, ~arg_2, _wgslsmith_dot_vec2_u32(u_input.e, arg_1.b.zx)) | _wgslsmith_sub_vec3_u32(~vec3<u32>(arg_2, 0u, global1[_wgslsmith_index_u32(1206u, 28u)]), vec3<u32>(u_input.e.x, global3.a, 0u)), ~vec3<u32>(1u, ~global3.a, 0u)), ~vec2<i32>(-44703i, var_0.x));
    return arg_1.c;
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2, arg_3: vec2<u32>) -> vec3<i32> {
    global2 = array<Struct_1, 22>();
    var var_0 = func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_2(true, arg_2.a, Struct_3(vec4<f32>(1904f, arg_2.a, -1683f, 596f), vec3<u32>(global3.a, u_input.e.x, 13448u), arg_2.b, Struct_1(-46166i, arg_2.d.d, vec4<bool>(arg_0.d, false, arg_0.c.x, false), arg_2.d.c.x)), u_input.e)).x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2.a)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a, arg_2.a))))), Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a, -1123f, arg_2.a, arg_2.a))), ~_wgslsmith_mult_vec3_u32(~vec3<u32>(38593u, global3.a, 28855u), vec3<u32>(4294967295u, 62482u, 8761u)), func_4(vec2<f32>(_wgslsmith_f_op_f32(arg_2.a - -1387f), _wgslsmith_f_op_f32(ceil(-200f))), Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a, arg_2.a, arg_2.a, -116f)), vec3<u32>(0u, 1u, 4294967295u), Struct_1(arg_2.d.a, arg_0.d, vec4<bool>(arg_2.b.b, true, false, true), arg_0.b), func_4(global0[_wgslsmith_index_u32(arg_1, 20u)], Struct_3(vec4<f32>(arg_2.a, -393f, 2845f, 1616f), vec3<u32>(0u, 4294967295u, global1[_wgslsmith_index_u32(arg_3.x, 28u)]), Struct_1(u_input.a, arg_2.d.d, vec4<bool>(true, arg_0.b, arg_0.d, false), true), Struct_1(1i, true, arg_2.e.c, true)), 32616u)), _wgslsmith_mod_u32(11374u, arg_3.x) | _wgslsmith_mod_u32(4294967295u, global3.a)), arg_0), _wgslsmith_add_u32(45399u, arg_1)).c;
    let var_1 = global2[_wgslsmith_index_u32(8633u, 22u)];
    var var_2 = Struct_4(_wgslsmith_f_op_f32(max(819f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2.a)) - arg_2.a))), global2[_wgslsmith_index_u32(arg_2.c.x, 22u)], global3.b.x, vec2<bool>(var_1.d, arg_2.e.b), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1199f, 335f, arg_2.a, arg_2.a) + vec4<f32>(arg_2.a, 218f, 519f, arg_2.a)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a, arg_2.a, arg_2.a, arg_2.a) * vec4<f32>(1720f, arg_2.a, -811f, arg_2.a))) - _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-3145f, -460f, -244f, -818f), vec4<f32>(1207f, 488f, -303f, -464f)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_2.a, arg_2.a, 2372f, 2320f))))))));
    let var_3 = countOneBits(0u);
    return _wgslsmith_div_vec3_i32(u_input.d.wwy, abs(vec3<i32>(-1i, -7786i, var_1.a) << (~firstLeadingBit(vec3<u32>(91013u, global3.a, 4294967295u)) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(!vec2<bool>(func_1(u_input.b.x, -107f), true), !select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(false, true)), vec2<bool>(true, true));
    let var_1 = func_5(func_4(_wgslsmith_f_op_vec2_f32(func_2(global3.b.x < _wgslsmith_add_i32(2147483647i, -82372i), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(780f, 839f, true)), _wgslsmith_f_op_f32(f32(-1f) * -2384f), !var_0.x)), Struct_3(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-546f, 988f, 421f, 282f))), ~vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(4294967295u, 28u)], 6762u), global2[_wgslsmith_index_u32(4294967295u, 22u)], Struct_1(28073i, true, vec4<bool>(false, false, true, false), true)), ~(~vec2<u32>(106759u, u_input.e.x)))), Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(596f, -216f, -1267f, -1409f), vec4<f32>(1881f, -844f, 598f, 1476f), vec4<bool>(var_0.x, true, var_0.x, true))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-346f, 920f, -1166f, -562f) - vec4<f32>(768f, -534f, -267f, -465f))), vec3<u32>(u_input.e.x, global1[_wgslsmith_index_u32(1u, 28u)], global3.a) | abs(vec3<u32>(global1[_wgslsmith_index_u32(global3.a, 28u)], u_input.e.x, 0u)), Struct_1(global3.b.x, !var_0.x, vec4<bool>(var_0.x, true, var_0.x, var_0.x), true), global2[_wgslsmith_index_u32(func_3(vec3<f32>(1297f, 277f, 1000f), Struct_5(global3.a, global3.b), vec2<f32>(1000f, -798f)).x | ~global1[_wgslsmith_index_u32(u_input.e.x, 28u)], 22u)]), min(u_input.e.x, ~global1[_wgslsmith_index_u32(u_input.e.x, 28u)])), min(global1[_wgslsmith_index_u32(28014u, 28u)], _wgslsmith_mult_u32(~0u, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.e, u_input.e), vec2<u32>(60327u, 4294967295u) | u_input.e))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-329f)) + _wgslsmith_f_op_f32(-271f - 387f)) + -1070f), global2[_wgslsmith_index_u32(u_input.e.x, 22u)], _wgslsmith_add_vec2_u32(vec2<u32>(global3.a, 119605u & u_input.e.x), ~max(u_input.e, u_input.e)), Struct_1(func_4(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(22892u, 91733u), 20u)], Struct_3(vec4<f32>(-225f, 883f, -819f, -278f), vec3<u32>(u_input.e.x, u_input.e.x, global1[_wgslsmith_index_u32(0u, 28u)]), Struct_1(u_input.c.x, true, vec4<bool>(var_0.x, var_0.x, false, var_0.x), true), Struct_1(u_input.d.x, true, vec4<bool>(var_0.x, var_0.x, false, true), true)), 1u).a, -u_input.d.x == u_input.c.x, vec4<bool>(var_0.x != var_0.x, all(vec2<bool>(false, false)), -2147483647i > u_input.d.x, !var_0.x), true), Struct_1(global3.b.x, var_0.x, vec4<bool>(true, true, func_4(global0[_wgslsmith_index_u32(18357u, 20u)], Struct_3(vec4<f32>(823f, 1000f, 667f, 1631f), vec3<u32>(global1[_wgslsmith_index_u32(24293u, 28u)], 4294967295u, 5842u), Struct_1(-21820i, var_0.x, vec4<bool>(true, true, false, var_0.x), var_0.x), global2[_wgslsmith_index_u32(global3.a, 22u)]), global1[_wgslsmith_index_u32(29656u, 28u)]).c.x, var_0.x), false)), vec2<u32>(~max(_wgslsmith_mod_u32(0u, 4294967295u), _wgslsmith_sub_u32(31186u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.e.x, 28u)], 28u)])), global3.a));
    let var_2 = _wgslsmith_add_vec2_i32(u_input.b, ~_wgslsmith_sub_vec2_i32(max(global3.b, global3.b), -_wgslsmith_mult_vec2_i32(u_input.d.wx, u_input.b)));
    let var_3 = abs(_wgslsmith_mult_i32(max(var_2.x, _wgslsmith_dot_vec3_i32(var_1, vec3<i32>(var_2.x, -6213i, 1i))), _wgslsmith_mod_i32(min(u_input.a, 1i), 1i ^ var_2.x))) | _wgslsmith_div_i32(1i, var_1.x << (global1[_wgslsmith_index_u32(countOneBits(1u) | _wgslsmith_mod_u32(28776u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(21997u, 28u)], 28u)]), 28u)] % 32u));
    global3 = Struct_5(31711u << (countOneBits(~(~18933u)) % 32u), vec2<i32>(~(-2147483647i), -2147483647i));
    let var_4 = vec3<bool>(!func_1(1i, 586f), !var_0.x, false);
    var var_5 = select(vec3<u32>(~4294967295u, _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(~global3.a, 28u)], ~global3.a & u_input.e.x), _wgslsmith_mult_u32(~u_input.e.x, ~u_input.e.x) & ~countOneBits(global3.a)), select(~(~vec3<u32>(global3.a, global3.a, u_input.e.x)), ~(~vec3<u32>(1u, 0u, 1983u)), var_4) | ~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 1u, u_input.e.x), vec3<u32>(global3.a, u_input.e.x, 1u), vec3<u32>(u_input.e.x, global3.a, global1[_wgslsmith_index_u32(6796u, 28u)]))), select(!var_4, var_4, var_4));
    var_5 = ~_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(20877u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3.a, 28u)], 28u)], 34150u), vec3<u32>(8902u, 4757u, global3.a)) >> (~vec3<u32>(global3.a, 1210u, global3.a) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 56860u, 34360u) & vec3<u32>(68672u, u_input.e.x, 51677u), vec3<u32>(global3.a, 6982u, 55413u))), abs(vec3<u32>(var_5.x, _wgslsmith_sub_u32(u_input.e.x, 4294967295u), 8535u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, max(vec4<u32>(~abs(0u), _wgslsmith_mod_u32(_wgslsmith_sub_u32(global3.a, 0u), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3.a, 28u)] ^ 64979u, 28u)]), _wgslsmith_mult_u32(abs(1u), var_5.x), 0u), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~global3.a, 28u)], 28u)], 1u ^ u_input.e.x, 4294967295u, var_5.x)), vec4<u32>(18894u, 29020u, global3.a, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.e.x, u_input.e.x) & u_input.e, var_5.zx), var_5.xx)), ~vec2<u32>(~_wgslsmith_mult_u32(var_5.x, 4294967295u), min(1u ^ var_5.x, global3.a)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1215f, -1321f, 1392f, -839f), vec4<f32>(1000f, 142f, 160f, 1295f), false)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-720f, -141f, -1672f, -161f), vec4<f32>(-2209f, -1301f, -1345f, -1679f), vec4<bool>(var_4.x, false, var_4.x, true))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(838f, 1321f, 1529f, 944f)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1433f, -1391f, -1161f, -121f))))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1f, 1f, 1f, 1f)))));
}

