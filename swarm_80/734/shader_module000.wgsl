struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: bool,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: Struct_2,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(1000f, 1604f);

var<private> global1: bool = true;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32, arg_1: i32) -> vec2<f32> {
    global0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-2070f, arg_0))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-1150f, arg_0), vec2<f32>(-1014f, global0.x)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-401f, global0.x), vec2<f32>(arg_0, 1498f), false)), true)))), vec2<f32>(global0.x, _wgslsmith_f_op_f32(round(-147f)))));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, arg_0), vec2<f32>(arg_0, global0.x)) * vec2<f32>(arg_0, 343f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(173f, 434f))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0, -623f), vec2<f32>(301f, -509f))))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(217f, 107f), vec2<f32>(-2346f, 740f))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0, -564f))))))));
    global1 = true;
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1050f), _wgslsmith_f_op_f32(-712f * -406f), global0.x);
    let var_1 = u_input.e;
    return _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-871f * global0.x), var_0.x)))))));
}

fn func_2() -> vec3<f32> {
    global1 = !(!any(vec3<bool>(true, true, true)));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(-1287f, u_input.d.x)) - vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-303f * global0.x), 1723f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-480f * _wgslsmith_f_op_f32(global0.x * global0.x)))));
    let var_0 = vec2<u32>(~u_input.a, u_input.a);
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, 1460f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-549f, global0.x, 202f)), select(true, false, true)))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1093f)) - _wgslsmith_div_f32(264f, _wgslsmith_f_op_f32(global0.x - 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-578f)), _wgslsmith_f_op_vec2_f32(func_3(1000f, -1i)).x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.x - global0.x), global0.x)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x)))));
}

fn func_4(arg_0: vec3<f32>, arg_1: i32, arg_2: vec2<f32>) -> vec3<bool> {
    let var_0 = ~_wgslsmith_clamp_vec4_u32(firstTrailingBit(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.e, 20501u, 6790u, u_input.e), vec4<u32>(8063u, 17704u, 1u, 93536u)), ~vec4<u32>(u_input.e, 4294967295u, u_input.e, 14832u), vec4<u32>(u_input.e, u_input.e, 1u, 4294967295u))), ~(~firstTrailingBit(vec4<u32>(4294967295u, u_input.e, u_input.a, 0u))), vec4<u32>(~(~0u), _wgslsmith_sub_u32(u_input.e, _wgslsmith_clamp_u32(1u, u_input.e, u_input.e)), 53782u, u_input.e));
    let var_1 = 6911u | (~(~(~u_input.e)) ^ 6071u);
    global0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-632f, _wgslsmith_f_op_f32(step(-1290f, _wgslsmith_f_op_f32(-arg_2.x)))))));
    var var_2 = abs(i32(-1i) * -2147483647i);
    var var_3 = Struct_2(Struct_1(vec4<i32>(arg_1, -1i, u_input.c, -1i), _wgslsmith_f_op_f32(-arg_0.x), 2064f), max(~(~u_input.d.yz), vec2<i32>(2147483647i, arg_1)) & firstTrailingBit(select(select(vec2<i32>(arg_1, arg_1), vec2<i32>(1i, u_input.b.x), false), ~vec2<i32>(-9436i, -11486i), true)), all(vec4<bool>(true, true, true, true)), Struct_1(-vec4<i32>(select(arg_1, u_input.c, false), -2147483647i, u_input.c >> (u_input.a % 32u), -arg_1), 1154f, arg_2.x), _wgslsmith_mod_i32(71999i, _wgslsmith_dot_vec4_i32(firstTrailingBit(-vec4<i32>(0i, arg_1, 0i, u_input.c)), abs(vec4<i32>(0i, -47275i, 1i, 0i)))));
    return vec3<bool>(var_3.d.a.x < countOneBits(-24067i), select(false, arg_0.x <= 419f, all(vec3<bool>(true, false, var_3.c))), select(any(!(!vec3<bool>(var_3.c, false, false))), !(!all(vec3<bool>(var_3.c, var_3.c, var_3.c))), all(!select(vec4<bool>(false, var_3.c, var_3.c, var_3.c), vec4<bool>(true, var_3.c, var_3.c, false), vec4<bool>(var_3.c, var_3.c, true, var_3.c)))));
}

fn func_1(arg_0: f32, arg_1: Struct_2) -> vec2<bool> {
    let var_0 = vec4<u32>(37495u, 54919u, firstTrailingBit(0u), 1u) ^ vec4<u32>(~4294967295u, 4051u, u_input.a, _wgslsmith_mod_u32(u_input.a, ~_wgslsmith_sub_u32(u_input.e, u_input.a)));
    global1 = u_input.e == var_0.x;
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_0)), arg_0) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.b, 1613f) - vec2<f32>(arg_1.d.c, arg_0)), vec2<f32>(global0.x, global0.x), vec2<bool>(arg_1.c, true)))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1944f, arg_0))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-435f, -1000f) * vec2<f32>(-2075f, 2181f)))))));
    let var_1 = true && (!(arg_0 != _wgslsmith_f_op_f32(1072f - 757f)) && any(func_4(_wgslsmith_f_op_vec3_f32(func_2()), u_input.d.x ^ u_input.d.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.b, arg_0)))));
    var var_2 = _wgslsmith_div_vec2_i32(vec2<i32>(1i, -(_wgslsmith_dot_vec3_i32(vec3<i32>(13334i, -45748i, u_input.d.x), vec3<i32>(arg_1.a.a.x, 29969i, 0i)) << (~11199u % 32u))), -(~_wgslsmith_clamp_vec2_i32(select(vec2<i32>(u_input.c, arg_1.d.a.x), u_input.d.zz, var_1), arg_1.a.a.yw & vec2<i32>(0i, arg_1.b.x), vec2<i32>(-2147483647i, 2147483647i))));
    return vec2<bool>(true, false);
}

fn func_5(arg_0: i32, arg_1: vec2<bool>, arg_2: i32) -> Struct_1 {
    let var_0 = Struct_1(max(vec4<i32>(_wgslsmith_add_i32(arg_2, -6091i), _wgslsmith_mod_i32(2147483647i, u_input.d.x), _wgslsmith_sub_i32(46935i, arg_0), ~3840i), vec4<i32>(_wgslsmith_mult_i32(0i, arg_0), -2147483647i, abs(arg_2), arg_2)) | vec4<i32>(arg_0, 0i, abs(arg_0) | firstLeadingBit(33290i), -(~arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - global0.x), _wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_2()).x, _wgslsmith_f_op_f32(-574f - global0.x)));
    var var_1 = 2977u;
    var var_2 = vec4<i32>(_wgslsmith_div_i32(~2147483647i, -2147483647i), -1i, _wgslsmith_mult_i32(~arg_2, var_0.a.x), arg_0);
    var var_3 = arg_1.x;
    var_2 = max(reverseBits(var_0.a), vec4<i32>(~_wgslsmith_clamp_i32(-8376i, arg_2, -194i), u_input.c, arg_0 ^ ~var_0.a.x, reverseBits(abs(0i)))) << (abs(~vec4<u32>(0u, reverseBits(u_input.e), _wgslsmith_add_u32(u_input.a, u_input.a), _wgslsmith_sub_u32(46634u, u_input.e))) % vec4<u32>(32u));
    return Struct_1(min(var_0.a, ~(~vec4<i32>(0i, var_0.a.x, -1i, u_input.b.x)) & min(vec4<i32>(arg_2, 2147483647i, -42276i, 1i) ^ vec4<i32>(var_2.x, var_0.a.x, 6200i, -30148i), u_input.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(2536f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c, global0.x))) + _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.b * -186f), _wgslsmith_f_op_f32(round(960f)))), _wgslsmith_dot_vec4_i32(var_0.a, _wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.x, 3624i, arg_0, arg_2), vec4<i32>(u_input.c, 15368i, 1i, arg_0), vec4<i32>(var_0.a.x, 2147483647i, -21689i, var_0.a.x))))).x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(u_input.b.x, select(!select(vec2<bool>(false, true), func_1(global0.x, Struct_2(Struct_1(u_input.b, global0.x, -1000f), vec2<i32>(u_input.b.x, -9199i), true, Struct_1(vec4<i32>(u_input.d.x, 0i, u_input.c, u_input.c), global0.x, global0.x), 1i)), func_1(652f, Struct_2(Struct_1(u_input.b, global0.x, 130f), vec2<i32>(u_input.d.x, u_input.d.x), false, Struct_1(vec4<i32>(u_input.c, 27504i, u_input.b.x, u_input.d.x), 396f, global0.x), -18661i))), vec2<bool>(func_4(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, -271f, -957f))), u_input.b.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x))).x, _wgslsmith_div_i32(u_input.c, u_input.c) != abs(u_input.d.x)), select(all(vec4<bool>(true, true, true, true)), true, true)), 0i);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(0u, u_input.e), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, global0.x, 323f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1028f, var_0.b, global0.x))))), _wgslsmith_f_op_f32(floor(-560f)), ~_wgslsmith_add_vec4_u32(vec4<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 25455u), vec2<u32>(62023u, u_input.e)), _wgslsmith_sub_u32(1u, u_input.e), _wgslsmith_mult_u32(u_input.e, 39121u)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 4294967295u, 50368u, 22527u), vec4<u32>(u_input.a, 47182u, u_input.e, 4294967295u) ^ vec4<u32>(u_input.a, u_input.e, 49120u, 26985u))));
}

