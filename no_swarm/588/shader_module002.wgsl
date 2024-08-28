struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: f32,
    d: bool,
}

struct Struct_4 {
    a: bool,
    b: vec2<u32>,
    c: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 17>;

var<private> global1: vec3<i32> = vec3<i32>(-6752i, -78508i, -41702i);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: bool, arg_3: Struct_5) -> i32 {
    global1 = -(_wgslsmith_clamp_vec3_i32(max(select(vec3<i32>(arg_1, global1.x, arg_1), vec3<i32>(0i, 0i, arg_0.b.b), arg_0.d), vec3<i32>(1i, 1i, 1i)), select(-vec3<i32>(u_input.c, -2147483647i, u_input.c), firstLeadingBit(vec3<i32>(u_input.c, 0i, -40445i)), arg_3.c.x <= arg_0.b.c.x), select(vec3<i32>(0i, u_input.c, global1.x), vec3<i32>(arg_3.b.b.b, -2147483647i, 2147483647i), arg_3.b.d) ^ vec3<i32>(-27268i, 17498i, -2147483647i)) ^ (vec3<i32>(_wgslsmith_mult_i32(-18145i, arg_0.b.a), arg_1 ^ arg_3.a.b, 0i) ^ vec3<i32>(~(-22472i), abs(-426i), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b.a, arg_0.b.b, 63481i, arg_3.b.b.a), vec4<i32>(global1.x, -1i, 4618i, 26857i)))));
    let var_0 = _wgslsmith_sub_i32(select(global1.x << (u_input.b % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, 2147483647i), global1.yx) >> (u_input.a % 32u), false), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, -6078i, 0i), vec3<i32>(28103i, _wgslsmith_mult_i32(-48726i, -31191i), max(2147483647i, _wgslsmith_add_i32(1i, 47325i)))));
    global0 = array<Struct_5, 17>();
    let var_1 = Struct_5(Struct_1(arg_0.b.b, ~(-2147483647i), _wgslsmith_f_op_vec3_f32(sign(arg_0.b.c))), arg_3.b, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(arg_0.b.c.x - -428f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-418f, 1000f)))), arg_3.a.c.x));
    global1 = _wgslsmith_add_vec3_i32(vec3<i32>(i32(-1i) * -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, 70481i, arg_1, 20604i), max(vec4<i32>(arg_0.b.a, 621i, arg_1, -1i), vec4<i32>(-77413i, -7302i, 0i, var_0))) & -(global1.x << (85871u % 32u)), (~2147483647i & var_1.b.b.a) & firstLeadingBit(1i)), abs(abs(-vec3<i32>(36659i, var_1.b.b.a, 2147483647i)) >> (vec3<u32>(0u, min(40957u, 0u), _wgslsmith_dot_vec2_u32(vec2<u32>(31456u, u_input.b), vec2<u32>(48973u, u_input.b))) % vec3<u32>(32u))));
    return firstTrailingBit(_wgslsmith_sub_i32(var_1.a.b, -arg_1));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: bool, arg_3: vec4<f32>) -> Struct_1 {
    global0 = array<Struct_5, 17>();
    let var_0 = _wgslsmith_mult_u32(0u & (4294967295u & u_input.b), max(2369u, ~_wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.b)) >> (1u % 32u));
    global1 = ~(~vec3<i32>(~_wgslsmith_div_i32(u_input.c, 0i), _wgslsmith_dot_vec3_i32(vec3<i32>(46427i, u_input.c, u_input.c), vec3<i32>(-49311i, 2992i, 1i)) & 2147483647i, ~(u_input.c | global1.x)));
    let var_1 = Struct_1(~(-func_3(Struct_3(arg_1.zy, Struct_1(-1i, global1.x, arg_1), arg_1.x, arg_0.x), abs(global1.x), select(arg_2, false, true), Struct_5(Struct_1(u_input.c, 59835i, arg_3.zxz), Struct_3(arg_3.xx, Struct_1(27667i, u_input.c, vec3<f32>(arg_1.x, -1000f, arg_1.x)), arg_3.x, arg_2), vec2<f32>(-489f, 863f)))), ~(-28579i), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.x)) * 263f), arg_1.x, 996f));
    global1 = vec3<i32>(-abs(_wgslsmith_add_i32(reverseBits(-28524i), ~var_1.b)), 1i, abs(abs(i32(-1i) * -2717i)));
    return Struct_1(u_input.c, _wgslsmith_clamp_i32(abs(global1.x), 47446i, select(firstTrailingBit(12096i), 51363i, arg_2) << ((4294967295u | ~u_input.b) % 32u)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(arg_1))) * arg_1))));
}

fn func_1() -> Struct_3 {
    global0 = array<Struct_5, 17>();
    global0 = array<Struct_5, 17>();
    var var_0 = func_2(select(vec2<bool>(false, true), !vec2<bool>(select(false, true, false), true), all(vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(599f, -1440f, 1772f)))))))), !(~u_input.a > 1u) || (-685f != _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-502f))))), vec4<f32>(962f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 1027f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1279f * 1364f) + _wgslsmith_f_op_f32(f32(-1f) * -1289f)))), -1000f, 251f));
    global0 = array<Struct_5, 17>();
    var_0 = func_2(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), false), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, var_0.c.x, _wgslsmith_f_op_f32(sign(var_0.c.x)))))), any(vec3<bool>(all(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true))), select(false, select(false, false, false), true), true)), vec4<f32>(-2264f, _wgslsmith_f_op_f32(max(var_0.c.x, var_0.c.x)), _wgslsmith_div_f32(var_0.c.x, var_0.c.x), var_0.c.x));
    return Struct_3(_wgslsmith_f_op_vec2_f32(-var_0.c.yz), func_2(!select(vec2<bool>(false, false), vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, true), false)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(865f, var_0.c.x)) - -356f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x * var_0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.c.x)) - _wgslsmith_f_op_f32(f32(-1f) * -2896f))), !any(select(vec2<bool>(false, false), vec2<bool>(false, false), false)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, var_0.c.x, -1088f, 1000f))), vec4<f32>(var_0.c.x, 158f, var_0.c.x, var_0.c.x), true)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1051f, -2117f, var_0.c.x, -1680f)) + _wgslsmith_div_vec4_f32(vec4<f32>(var_0.c.x, -3006f, 1468f, 1004f), vec4<f32>(1453f, 286f, 1140f, var_0.c.x))))), func_2(vec2<bool>(select(true, false, true) && all(vec3<bool>(true, true, true)), all(vec4<bool>(true, true, false, false)) == all(vec2<bool>(true, false))), vec3<f32>(var_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.x * var_0.c.x) * _wgslsmith_f_op_f32(-312f - var_0.c.x)), var_0.c.x), true, vec4<f32>(-1089f, 1000f, var_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.x, -1208f)))).c.x, all(vec4<bool>(true, all(vec3<bool>(false, true, false)), true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_5, 17>();
    let var_0 = func_1();
    var var_1 = vec3<bool>(select(any(!vec4<bool>(var_0.d, false, true, false)), var_0.d, var_0.d), -(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 2147483647i, var_0.b.b, global1.x), vec4<i32>(var_0.b.b, -49938i, global1.x, u_input.c)) ^ 34417i) > var_0.b.b, var_0.d);
    var_1 = vec3<bool>(true, var_1.x, func_1().d);
    global1 = select(_wgslsmith_sub_vec3_i32(~vec3<i32>(-u_input.c, abs(global1.x), var_0.b.a), vec3<i32>(~(-var_0.b.a), -35825i, -(~(-2147483647i)))), vec3<i32>(0i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, u_input.c, global1.x) ^ vec3<i32>(global1.x, 39115i, 0i), _wgslsmith_div_vec3_i32(vec3<i32>(var_0.b.a, -1i, 0i), vec3<i32>(-17829i, 31552i, u_input.c))), -_wgslsmith_clamp_i32(func_1().b.b, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, global1.x, var_0.b.b, -17122i), vec4<i32>(u_input.c, global1.x, -15334i, global1.x)), -1552i)), vec3<bool>(true, any(select(select(vec4<bool>(var_1.x, var_0.d, false, true), vec4<bool>(var_0.d, false, false, var_1.x), false), !vec4<bool>(true, var_0.d, true, var_0.d), vec4<bool>(true, true, var_0.d, var_1.x))), true));
    global0 = array<Struct_5, 17>();
    global0 = array<Struct_5, 17>();
    let var_2 = !any(select(!select(vec2<bool>(true, var_1.x), vec2<bool>(true, var_1.x), var_0.d), var_1.xx, true));
    let x = u_input.a;
    s_output = StorageBuffer(min(abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, -2579i, 16518i), ~vec3<i32>(var_0.b.a, -2147483647i, 1i), abs(vec3<i32>(-1i, -1i, global1.x)))), firstLeadingBit(~(-vec3<i32>(-2147483647i, 1i, 31255i)))), vec3<u32>(firstLeadingBit(~0u), ~u_input.a, 22485u));
}

