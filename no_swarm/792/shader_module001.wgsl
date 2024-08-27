struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: Struct_2,
    d: Struct_2,
    e: vec3<i32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_2,
}

struct Struct_5 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27>;

var<private> global1: array<Struct_4, 18> = array<Struct_4, 18>(Struct_4(vec2<f32>(-547f, -226f), Struct_2(vec2<u32>(26715u, 2625u), false, vec4<bool>(false, true, false, false))), Struct_4(vec2<f32>(131f, 196f), Struct_2(vec2<u32>(4294967295u, 4294967295u), true, vec4<bool>(false, false, false, true))), Struct_4(vec2<f32>(718f, -511f), Struct_2(vec2<u32>(1u, 4294967295u), true, vec4<bool>(true, true, true, true))), Struct_4(vec2<f32>(-956f, 882f), Struct_2(vec2<u32>(0u, 0u), false, vec4<bool>(false, true, true, true))), Struct_4(vec2<f32>(822f, -206f), Struct_2(vec2<u32>(0u, 29978u), true, vec4<bool>(true, true, false, true))), Struct_4(vec2<f32>(-726f, -1648f), Struct_2(vec2<u32>(1u, 4294967295u), true, vec4<bool>(true, true, false, false))), Struct_4(vec2<f32>(-496f, 857f), Struct_2(vec2<u32>(0u, 72649u), false, vec4<bool>(false, true, false, true))), Struct_4(vec2<f32>(-835f, -1224f), Struct_2(vec2<u32>(4294967295u, 4294967295u), false, vec4<bool>(false, true, true, true))), Struct_4(vec2<f32>(-861f, -372f), Struct_2(vec2<u32>(1u, 4294967295u), true, vec4<bool>(true, false, true, false))), Struct_4(vec2<f32>(858f, -1000f), Struct_2(vec2<u32>(0u, 11775u), false, vec4<bool>(false, true, true, true))), Struct_4(vec2<f32>(-354f, 767f), Struct_2(vec2<u32>(17973u, 46896u), false, vec4<bool>(false, true, true, true))), Struct_4(vec2<f32>(341f, -1585f), Struct_2(vec2<u32>(18520u, 1u), true, vec4<bool>(false, true, true, true))), Struct_4(vec2<f32>(688f, -978f), Struct_2(vec2<u32>(68497u, 38030u), false, vec4<bool>(false, false, false, false))), Struct_4(vec2<f32>(-1000f, -1359f), Struct_2(vec2<u32>(59761u, 1u), true, vec4<bool>(true, false, true, false))), Struct_4(vec2<f32>(849f, -353f), Struct_2(vec2<u32>(4294967295u, 30912u), false, vec4<bool>(false, true, false, false))), Struct_4(vec2<f32>(-1000f, 1281f), Struct_2(vec2<u32>(59113u, 0u), false, vec4<bool>(false, false, true, true))), Struct_4(vec2<f32>(223f, 595f), Struct_2(vec2<u32>(1003u, 4294967295u), false, vec4<bool>(false, false, true, true))), Struct_4(vec2<f32>(-729f, 1358f), Struct_2(vec2<u32>(1u, 0u), true, vec4<bool>(true, true, false, false))));

var<private> global2: array<vec3<f32>, 3>;

var<private> global3: array<Struct_5, 25>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: u32, arg_1: Struct_5, arg_2: f32) -> vec2<bool> {
    var var_0 = 395f;
    global3 = array<Struct_5, 25>();
    return !select(select(vec2<bool>(any(vec4<bool>(false, false, true, true)), true), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), true), vec2<bool>(true, true), all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<u32>) -> u32 {
    var var_0 = arg_1.x >= ~(~(~1u));
    let var_1 = Struct_3(select(!func_3(_wgslsmith_div_u32(4294967295u, arg_1.x), global3[_wgslsmith_index_u32(arg_1.x, 25u)], _wgslsmith_f_op_f32(2231f * arg_0.x)), vec2<bool>(arg_1.x >= _wgslsmith_mod_u32(24451u, arg_1.x), false), func_3(~reverseBits(74594u), global3[_wgslsmith_index_u32(53879u, 25u)], _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.x * -427f), _wgslsmith_f_op_f32(-arg_0.x)))).x), arg_1.yx, Struct_2(vec2<u32>(26007u, ~arg_1.x << (10393u % 32u)), true | !all(vec3<bool>(true, true, true)), !(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), true))), Struct_2(arg_1.yy, true, select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), false), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), true), all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false))))), ~firstTrailingBit(select(-vec3<i32>(u_input.a, u_input.a, 2147483647i), min(vec3<i32>(2110i, u_input.a, -2147483647i), vec3<i32>(u_input.a, 0i, u_input.a)), vec3<bool>(true, true, false))));
    global2 = array<vec3<f32>, 3>();
    var var_2 = 0u;
    let var_3 = firstLeadingBit(6399i);
    return abs(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, var_1.b.x, var_1.d.a.x, var_1.c.a.x), vec4<u32>(4294967295u, 53228u, 55948u, var_1.b.x))) ^ (~arg_1.x & _wgslsmith_sub_u32(var_1.b.x, firstTrailingBit(arg_1.x))));
}

fn func_1(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_4, arg_3: vec4<u32>) -> i32 {
    global3 = array<Struct_5, 25>();
    var var_0 = ~vec2<u32>(func_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-357f, 477f)))), ~vec3<u32>(arg_2.b.a.x, arg_3.x, 4294967295u)), 0u);
    let var_1 = true;
    var var_2 = Struct_5(~(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.a, arg_1), vec3<i32>(u_input.a, 19833i, -1i)), arg_1) & countOneBits(-vec2<i32>(u_input.a, u_input.a))));
    global1 = array<Struct_4, 18>();
    return 0i;
}

fn func_4(arg_0: i32, arg_1: vec4<i32>, arg_2: vec4<i32>) -> f32 {
    global1 = array<Struct_4, 18>();
    var var_0 = select(vec4<bool>(true, false, true, true), vec4<bool>(any(!func_3(73815u, global3[_wgslsmith_index_u32(0u, 25u)], -1083f)), !(1i < _wgslsmith_clamp_i32(arg_2.x, arg_1.x, arg_1.x)), -countOneBits(-25935i) < -_wgslsmith_sub_i32(-7315i, arg_0), true), select(!vec4<bool>(false, all(vec3<bool>(true, false, false)), true, true), vec4<bool>(func_3(1u, Struct_5(vec2<i32>(1i, arg_1.x)), -382f).x, false, true, func_3(select(0u, 0u, true), Struct_5(arg_2.wx), _wgslsmith_f_op_f32(step(928f, 1336f))).x), true != (all(vec4<bool>(true, true, false, true)) | func_3(32821u, global3[_wgslsmith_index_u32(7363u, 25u)], -313f).x)));
    var_0 = !select(!vec4<bool>(var_0.x, true, var_0.x || false, var_0.x | var_0.x), select(select(!vec4<bool>(true, true, var_0.x, true), vec4<bool>(false, false, var_0.x, true), true), vec4<bool>(any(vec4<bool>(false, false, var_0.x, true)), true, any(var_0.xyw), true), !vec4<bool>(var_0.x, var_0.x, false, var_0.x)), select(select(!vec4<bool>(var_0.x, var_0.x, false, var_0.x), select(vec4<bool>(var_0.x, false, true, true), vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(false, true, true, var_0.x)), false), vec4<bool>(!var_0.x, true, var_0.x, var_0.x), var_0.x));
    var var_1 = arg_1.x;
    let var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -155f), 277f)), Struct_2(~vec2<u32>(102076u, reverseBits(84859u)), var_0.x, select(vec4<bool>(var_0.x, !var_0.x, var_0.x || var_0.x, false), vec4<bool>(var_0.x, true, 0i > arg_2.x, var_0.x), vec4<bool>(all(vec4<bool>(true, false, false, true)), false, true, var_0.x))));
    return _wgslsmith_f_op_f32(f32(-1f) * -1194f);
}

fn func_5(arg_0: f32) -> Struct_1 {
    var var_0 = ~(~(-49867i));
    var_0 = _wgslsmith_clamp_i32(0i, firstTrailingBit(7308i), _wgslsmith_mod_i32(countOneBits(_wgslsmith_div_i32(u_input.a, -1i)), abs(-32856i)) | (1i & _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.a, -31356i, 1i), vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.a)), u_input.a ^ u_input.a)));
    var_0 = _wgslsmith_dot_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(1i, u_input.a, u_input.a, 2147483647i) >> (vec4<u32>(51452u, 4096u, 4294967295u, 104124u) % vec4<u32>(32u)), reverseBits(vec4<i32>(u_input.a, u_input.a, 0i, -4966i))) >> (firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u)), vec4<i32>(abs(-28110i), 25020i, _wgslsmith_clamp_i32(u_input.a, abs(61308i << (1u % 32u)), 2147483647i), 0i));
    let var_1 = !select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(select(vec2<bool>(true, true), func_3(4294967295u, Struct_5(vec2<i32>(3222i, 0i)), arg_0), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), select(func_3(1u, Struct_5(vec2<i32>(2147483647i, 21615i)), _wgslsmith_f_op_f32(-1792f + 1200f)), vec2<bool>(true, true), any(vec3<bool>(true, true, true))));
    var var_2 = vec3<i32>(abs(_wgslsmith_clamp_i32(u_input.a >> (1u % 32u), firstLeadingBit(68065i), u_input.a)), ~firstLeadingBit(~14283i), 2147483647i);
    return Struct_1(arg_0, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a & firstTrailingBit(u_input.a), ~(-1i << (0u % 32u))), ~(~(~vec2<i32>(var_2.x, -34849i)))), 0i | firstTrailingBit(-countOneBits(33129i)), _wgslsmith_div_vec2_u32(~(~(~vec2<u32>(16172u, 1u))), abs(vec2<u32>(min(11689u, 26413u), _wgslsmith_dot_vec3_u32(vec3<u32>(83769u, 1u, 1u), vec3<u32>(1u, 41372u, 10317u))))), select(1u, max(_wgslsmith_div_u32(func_2(vec2<f32>(-1354f, arg_0), vec3<u32>(74495u, 4294967295u, 45878u)), reverseBits(23405u)), _wgslsmith_clamp_u32(0u, 1u, ~22822u)), all(vec4<bool>(var_1.x, var_1.x, !var_1.x, !var_1.x))));
}

fn func_6(arg_0: Struct_1) -> Struct_3 {
    global3 = array<Struct_5, 25>();
    global0 = array<Struct_1, 27>();
    global0 = array<Struct_1, 27>();
    var var_0 = func_5(_wgslsmith_div_f32(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-791f, _wgslsmith_f_op_f32(-arg_0.a), true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a, arg_0.a))))).a;
    var var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(1u, arg_0.e), 27u)];
    return Struct_3(!select(vec2<bool>(false, true), vec2<bool>(select(false, true, false), all(vec4<bool>(false, false, false, false))), all(vec3<bool>(false, false, true))), ~var_1.d, Struct_2(_wgslsmith_mod_vec2_u32(abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(9995u, arg_0.d.x), vec2<u32>(var_1.e, var_1.e), var_1.d)), vec2<u32>(_wgslsmith_mult_u32(28917u, var_1.e), abs(arg_0.d.x))), var_1.a <= _wgslsmith_f_op_f32(var_1.a - -2152f), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, any(vec4<bool>(true, false, false, true))), vec4<bool>(all(vec2<bool>(true, false)), any(vec4<bool>(true, false, false, false)), true, any(vec4<bool>(false, false, false, false))))), Struct_2(vec2<u32>(reverseBits(~arg_0.e), ~74257u), all(vec3<bool>(true, false, true)), !select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, false, true), -2140f >= var_1.a)), abs(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_1.b, var_1.c, var_1.c) << (vec3<u32>(var_1.e, 1u, var_1.e) % vec3<u32>(32u)), reverseBits(vec3<i32>(-1i, arg_0.c, arg_0.b))), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, arg_0.b, u_input.a), vec3<i32>(u_input.a, 1i, 16935i)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec4_u32(~(~vec4<u32>(_wgslsmith_mod_u32(22028u, 2146u), _wgslsmith_sub_u32(42130u, 1u), _wgslsmith_mult_u32(29937u, 63618u), min(6415u, 1u))), firstTrailingBit(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(29383u, 4294967295u, 1u, 102694u), ~vec4<u32>(32082u, 4294967295u, 4294967295u, 4294967295u)), 1u, 1u, _wgslsmith_clamp_u32(~950u, 14580u, firstLeadingBit(0u)))));
    global1 = array<Struct_4, 18>();
    global3 = array<Struct_5, 25>();
    let var_1 = func_6(func_5(_wgslsmith_f_op_f32(func_4(func_1(vec4<u32>(17724u, 39793u, 0u, 61139u), u_input.a, Struct_4(vec2<f32>(1000f, 2349f), Struct_2(vec2<u32>(0u, 1u), false, vec4<bool>(true, false, false, false))), countOneBits(vec4<u32>(60975u, 1u, 4294967295u, 43029u))), firstLeadingBit(vec4<i32>(u_input.a, -2147483647i, -9992i, 0i) | vec4<i32>(u_input.a, -16908i, 1i, u_input.a)), -vec4<i32>(-2147483647i, u_input.a, 0i, -11109i)))));
    global2 = array<vec3<f32>, 3>();
    global0 = array<Struct_1, 27>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-401f - _wgslsmith_f_op_f32(f32(-1f) * -508f))));
    let var_3 = Struct_5(vec2<i32>(-20878i, var_1.e.x) >> (~vec2<u32>(_wgslsmith_add_u32(1u, var_1.d.a.x), var_1.c.a.x) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(vec3<u32>(~_wgslsmith_div_u32(var_1.c.a.x, var_1.c.a.x), var_1.c.a.x, _wgslsmith_mod_u32(var_1.c.a.x >> (81911u % 32u), ~var_1.b.x)), select(vec3<u32>(47760u, ~1u, _wgslsmith_mult_u32(var_1.d.a.x, var_1.c.a.x)), countOneBits(vec3<u32>(24494u, 22264u, var_1.d.a.x)), all(vec2<bool>(true, var_1.c.b)))), vec3<i32>(~var_3.a.x, 30027i, i32(-1i) * -var_1.e.x) | firstTrailingBit(vec3<i32>(firstTrailingBit(-10858i), _wgslsmith_sub_i32(1i, var_1.e.x), 1i)), -2147483647i);
}

