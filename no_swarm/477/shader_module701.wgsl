struct Struct_1 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_2,
    c: i32,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
    c: Struct_3,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 18> = array<vec2<bool>, 18>(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> i32 {
    let var_0 = Struct_2(vec4<i32>(-1i) * -vec4<i32>(u_input.c << (u_input.a.x % 32u), -40455i, _wgslsmith_mod_i32(u_input.c, 2147483647i), u_input.c));
    var var_1 = -2147483647i;
    let var_2 = var_0;
    var var_3 = vec3<bool>(false, u_input.d <= u_input.d, select(true, ~(~71482u) >= u_input.a.x, false));
    let var_4 = Struct_3(vec3<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -128f)) + _wgslsmith_f_op_f32(max(375f, _wgslsmith_f_op_f32(768f * -1074f)))), _wgslsmith_f_op_f32(round(985f))), u_input.e, Struct_1(~var_2.a, -2147483647i), Struct_1(_wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(-1i, var_2.a.x, 1i, 2147483647i)), vec4<i32>(-1i) * -vec4<i32>(var_0.a.x, -8809i, var_2.a.x, var_0.a.x)), -1i), vec3<bool>(true, true, true));
    return -(~2147483647i ^ (-min(1i, -22955i) ^ _wgslsmith_add_i32(min(u_input.c, var_2.a.x), firstLeadingBit(-50548i))));
}

fn func_2() -> Struct_1 {
    global0 = array<vec2<bool>, 18>();
    global0 = array<vec2<bool>, 18>();
    var var_0 = vec3<i32>(-countOneBits(_wgslsmith_div_i32(~(-2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 2147483647i, -2147483647i), vec3<i32>(u_input.c, u_input.c, -1i)))), u_input.c, func_3() << (~1u % 32u));
    global0 = array<vec2<bool>, 18>();
    var var_1 = Struct_5(Struct_1(vec4<i32>(func_3(), ~(~(-1i)), 2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 2147483647i), vec2<i32>(var_0.x, var_0.x)) ^ _wgslsmith_sub_i32(u_input.c, u_input.c)), _wgslsmith_mod_i32(select(u_input.c, -var_0.x, true), -1i)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(185f + _wgslsmith_f_op_f32(-547f + -1415f)) - 1000f), -1226f)), Struct_3(vec3<f32>(-547f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(916f, -233f)), _wgslsmith_f_op_f32(sign(1658f))), firstTrailingBit(vec2<u32>(~u_input.e.x, ~4294967295u)), Struct_1(vec4<i32>(var_0.x, -1i, -u_input.c, -347i), max(_wgslsmith_dot_vec3_i32(vec3<i32>(27287i, u_input.c, -2425i), vec3<i32>(var_0.x, -1i, 18890i)), -1i)), Struct_1(min(~vec4<i32>(-2147483647i, u_input.c, var_0.x, u_input.c), ~vec4<i32>(-2147483647i, u_input.c, var_0.x, var_0.x)), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(var_0.x, var_0.x), -19522i, countOneBits(-50791i))), !vec3<bool>(any(vec2<bool>(false, false)), true, false)), _wgslsmith_f_op_f32(-407f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-424f))), -870f, true))));
    return Struct_1(~var_1.a.a, -_wgslsmith_mod_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, -1652i, 0i, 34249i), vec4<i32>(2147483647i, 1i, var_0.x, -10496i)), 0i, select(u_input.c, -2147483647i, false)), _wgslsmith_clamp_i32(var_0.x & var_0.x, 31990i, ~var_1.a.a.x)));
}

fn func_1(arg_0: bool, arg_1: vec3<bool>) -> f32 {
    global0 = array<vec2<bool>, 18>();
    var var_0 = Struct_5(func_2(), _wgslsmith_f_op_f32(sign(1000f)), Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(156f, -1738f, -175f) + vec3<f32>(-260f, -1263f, 2308f)))), min(vec2<u32>(51802u, 4294967295u), u_input.e) | (vec2<u32>(u_input.a.x, 98415u) >> (u_input.a.xz % vec2<u32>(32u))), Struct_1(~(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c) | vec4<i32>(2147483647i, u_input.c, 1i, u_input.c)), min(u_input.c, u_input.c) >> (~u_input.d % 32u)), func_2(), vec3<bool>(arg_0, true, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1071f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1596f, -881f) * 686f), true))));
    let var_1 = -264f;
    var var_2 = u_input.a.yz;
    let var_3 = Struct_2(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(var_0.a.a.ww, vec2<i32>(var_0.a.a.x, 45373i)), abs(u_input.c)), (var_0.c.c.a.x & 20757i) >> (~0u % 32u), ~(-1i), _wgslsmith_sub_i32(max(u_input.c, 33075i), -u_input.c)), abs(var_0.c.d.a)));
    return -2019f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 18>();
    let var_0 = 1082f;
    let var_1 = select(vec3<bool>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(true, vec3<bool>(false, true, true))), _wgslsmith_f_op_f32(413f * 1902f))) != 1160f, true, _wgslsmith_dot_vec3_i32(-vec3<i32>(-3827i, u_input.c, u_input.c), vec3<i32>(2147483647i, 2147483647i, u_input.c)) == u_input.c), select(!vec3<bool>(all(vec3<bool>(true, false, true)), any(vec2<bool>(false, true)), true), vec3<bool>(_wgslsmith_f_op_f32(var_0 + var_0) < _wgslsmith_f_op_f32(abs(var_0)), true, true || all(vec4<bool>(false, true, false, true))), vec3<bool>(false, true, true)), false);
    global0 = array<vec2<bool>, 18>();
    global0 = array<vec2<bool>, 18>();
    let var_2 = u_input.c;
    global0 = array<vec2<bool>, 18>();
    global0 = array<vec2<bool>, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(u_input.c, (select(6352i, var_2, false) >> (0u % 32u)) ^ firstTrailingBit(~u_input.c)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, u_input.a.x, 4294967295u) << (select(u_input.a, u_input.a, vec3<bool>(false, true, var_1.x)) % vec3<u32>(32u)), max(u_input.a, u_input.a) | u_input.a), ~_wgslsmith_add_i32(0i, -31896i), var_2);
}

