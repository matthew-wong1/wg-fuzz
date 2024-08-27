struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(992f);

var<private> global1: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_3) -> vec2<f32> {
    var var_0 = _wgslsmith_add_vec3_i32(select(abs(abs(~vec3<i32>(19058i, arg_2.b.x, arg_2.b.x))), vec3<i32>(_wgslsmith_sub_i32(~15712i, arg_2.b.x ^ -1i), -1i, 1i), !(!vec3<bool>(global1.x, global1.x, global1.x))), abs(countOneBits(vec3<i32>(arg_2.b.x, countOneBits(arg_2.b.x), 1i))));
    var var_1 = 37473u;
    let var_2 = Struct_3(-1257f);
    var var_3 = min(~(~vec3<i32>(arg_2.b.x, 0i, -39114i)) << (max(u_input.b, _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.b, u_input.b), abs(vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u)))) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.x, -var_0.x & firstLeadingBit(arg_2.b.x), -48837i), _wgslsmith_clamp_vec3_i32(~firstLeadingBit(vec3<i32>(1i, arg_2.b.x, arg_2.b.x)), -vec3<i32>(-21474i, var_0.x, var_0.x), -_wgslsmith_mult_vec3_i32(vec3<i32>(7386i, arg_2.b.x, 0i), vec3<i32>(2147483647i, arg_2.b.x, arg_2.b.x)))));
    var_1 = u_input.b.x;
    return _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-999f, 298f)));
}

fn func_2(arg_0: bool) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-490f, _wgslsmith_f_op_f32(global0.a * global0.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_3(-461f), Struct_3(global0.a), Struct_1(global0.a, vec2<i32>(-34306i, 2147483647i), global0.a, -1341f), Struct_3(314f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1060f, global0.a), vec2<f32>(global0.a, global0.a)))) - vec2<f32>(_wgslsmith_f_op_f32(round(2163f)), global0.a)) * vec2<f32>(_wgslsmith_f_op_vec2_f32(func_3(Struct_3(global0.a), Struct_3(global0.a), Struct_1(1000f, vec2<i32>(-2147483647i, 24780i), 435f, -1235f), Struct_3(global0.a))).x, global0.a)), false));
    let var_1 = _wgslsmith_clamp_i32(_wgslsmith_div_i32(_wgslsmith_mod_i32(-12485i, -(~0i)), select(-1i, _wgslsmith_div_i32(select(-15806i, 43737i, false), firstTrailingBit(-18846i)), all(vec3<bool>(false, true, true)))), 11146i, -_wgslsmith_dot_vec3_i32(-max(vec3<i32>(-13405i, 1i, -2147483647i), vec3<i32>(-31481i, 2147483647i, 13455i)), firstLeadingBit(vec3<i32>(78609i, -2147483647i, 94679i))));
    var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, global0.a)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, var_0.x)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-187f, var_0.x))), true)), !vec2<bool>(global1.x, true))))), !((firstLeadingBit(var_1) != ~var_1) & (~var_1 >= -var_1))));
    global1 = !select(vec2<bool>(all(vec2<bool>(false, arg_0)), true), !vec2<bool>(all(vec2<bool>(arg_0, false)), false), !vec2<bool>(2147483647i >= var_1, true));
    var var_2 = !all(select(!vec3<bool>(false, global1.x, true), !vec3<bool>(global1.x, true, false), all(select(vec3<bool>(true, global1.x, false), vec3<bool>(false, global1.x, global1.x), true))));
    return !(var_0.x != global0.a);
}

fn func_1(arg_0: vec4<i32>) -> vec2<bool> {
    global0 = Struct_3(global0.a);
    global0 = Struct_3(_wgslsmith_f_op_f32(step(global0.a, _wgslsmith_f_op_f32(867f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.a)))))));
    var var_0 = !vec4<bool>(any(vec4<bool>(true, true, func_2(global1.x), true)), false, true, !select(global1.x, !global1.x, false));
    var var_1 = ~(~vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(4294967295u, u_input.a, 4294967295u)), u_input.b.x), u_input.a));
    let var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_vec2_f32(func_3(Struct_3(_wgslsmith_f_op_f32(-global0.a)), Struct_3(_wgslsmith_f_op_f32(floor(667f))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1053f), firstLeadingBit(arg_0.xz), _wgslsmith_f_op_vec2_f32(func_3(Struct_3(516f), Struct_3(-863f), Struct_1(global0.a, vec2<i32>(-1i, -54909i), -1374f, -651f), Struct_3(-748f))).x, global0.a), Struct_3(-182f))).x), vec2<i32>(-1i) * -vec2<i32>(countOneBits(-41601i), -47906i), _wgslsmith_div_f32(-969f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-420f, _wgslsmith_f_op_f32(f32(-1f) * -1469f))))), global0.a);
    return vec2<bool>(true, global1.x);
}

fn func_4(arg_0: vec2<bool>, arg_1: bool) -> f32 {
    global1 = arg_0;
    let var_0 = true;
    global0 = Struct_3(_wgslsmith_f_op_f32(global0.a + _wgslsmith_f_op_vec2_f32(func_3(Struct_3(_wgslsmith_f_op_f32(max(global0.a, -1497f))), Struct_3(-668f), Struct_1(_wgslsmith_f_op_f32(floor(-518f)), vec2<i32>(-2147483647i, -2147483647i), _wgslsmith_f_op_f32(round(1667f)), global0.a), Struct_3(global0.a))).x));
    global1 = arg_0;
    var var_1 = select(vec3<bool>(u_input.a == min(~u_input.b.x, firstTrailingBit(46282u)), select(false, !(!var_0), true | global1.x), _wgslsmith_add_u32(0u, ~8347u) >= _wgslsmith_mod_u32(~79970u, _wgslsmith_clamp_u32(u_input.a, 2766u, 27909u))), !(!(!select(vec3<bool>(arg_0.x, global1.x, arg_1), vec3<bool>(true, true, false), vec3<bool>(arg_0.x, false, arg_1)))), arg_1);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(356f - -1000f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~firstTrailingBit(_wgslsmith_mult_u32(~(~42932u), 47753u));
    var var_1 = ~select(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 1i, 1i), vec3<bool>(true, true, true));
    var var_2 = _wgslsmith_dot_vec4_i32(-max(vec4<i32>(-2147483647i, var_1.x, 2147483647i, var_1.x) | countOneBits(vec4<i32>(var_1.x, var_1.x, -44289i, 57142i)), firstLeadingBit(vec4<i32>(var_1.x, var_1.x, var_1.x, -38989i))), _wgslsmith_add_vec4_i32((_wgslsmith_mod_vec4_i32(vec4<i32>(-38654i, 2147483647i, 45909i, -2147483647i), vec4<i32>(78065i, var_1.x, 0i, -19319i)) | ~vec4<i32>(var_1.x, var_1.x, 1i, var_1.x)) << (select(~vec4<u32>(4294967295u, 90463u, 0u, u_input.b.x), vec4<u32>(0u, u_input.a, u_input.a, 11407u) & vec4<u32>(88836u, u_input.b.x, u_input.b.x, u_input.b.x), 4294967295u < u_input.b.x) % vec4<u32>(32u)), min(select(firstLeadingBit(vec4<i32>(var_1.x, 2147483647i, var_1.x, var_1.x)), vec4<i32>(var_1.x, -34142i, var_1.x, 2147483647i), vec4<bool>(false, global1.x, global1.x, false)), ~vec4<i32>(var_1.x, var_1.x, 2147483647i, var_1.x))));
    var var_3 = Struct_3(_wgslsmith_f_op_f32(632f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -204f)))));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1655f)), _wgslsmith_f_op_f32(func_4(func_1(vec4<i32>(var_1.x, var_1.x, var_1.x, var_1.x)), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2486f + -1000f) + _wgslsmith_f_op_f32(func_4(vec2<bool>(global1.x, global1.x), true))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a))), true & any(select(vec3<bool>(true, global1.x, global1.x), vec3<bool>(false, global1.x, true), vec3<bool>(true, false, false))))), var_1.zx, _wgslsmith_f_op_f32(-303f * _wgslsmith_f_op_f32(trunc(var_3.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_3.a))));
    var_3 = Struct_3(-562f);
    var var_5 = Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.a)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_3(203f), Struct_3(1000f), Struct_1(var_4.d, var_1.zy, global0.a, var_3.a), Struct_3(var_4.a))).x)))));
    var var_6 = var_1.x;
    let var_7 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec2<bool>(233f > global0.a, !global1.x), func_2(true)))), reverseBits(vec2<i32>(2147483647i, var_4.b.x)), var_3.a, _wgslsmith_f_op_f32(sign(var_5.a)));
    let x = u_input.a;
    s_output = StorageBuffer(max(u_input.a, 1u), 0u, var_7.c, var_7.b.x);
}

