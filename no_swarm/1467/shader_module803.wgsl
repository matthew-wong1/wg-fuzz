struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-1i, 1925f);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_1) -> bool {
    global0 = Struct_1(0i, _wgslsmith_f_op_f32(-global0.b));
    let var_0 = Struct_2(arg_0);
    global0 = Struct_1(i32(-1i) * -(~min(0i, -2147483647i)), 359f);
    let var_1 = -firstLeadingBit(~_wgslsmith_sub_i32(-11329i, 28474i));
    let var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(arg_1, -1483f, _wgslsmith_f_op_f32(min(-838f, arg_2.b))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-135f, arg_1, -1000f) + vec3<f32>(147f, global0.b, arg_2.b))))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_2.b, global0.b)))))));
    return !(!(!(!(arg_0.x && true))));
}

fn func_2(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_2) -> Struct_2 {
    var var_0 = Struct_2(select(arg_3.a, arg_3.a, true));
    var var_1 = func_3(arg_3.a, 730f, Struct_1(-1i, arg_2.b));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.b, -649f, arg_2.b, _wgslsmith_f_op_f32(step(global0.b, -139f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-924f, -138f, global0.b, global0.b))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.b, arg_2.b, arg_2.b, global0.b), vec4<f32>(659f, global0.b, 961f, arg_2.b)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, arg_2.b, 286f, 456f)))), arg_3.a.x))), !(all(!vec4<bool>(false, var_0.a.x, arg_3.a.x, arg_3.a.x)) & false)));
    let var_3 = Struct_2(vec4<bool>(var_0.a.x && arg_3.a.x, all(arg_3.a.xyz), var_0.a.x, !var_0.a.x));
    let var_4 = arg_2.b;
    return Struct_2(!vec4<bool>(true || arg_3.a.x, true | (arg_3.a.x & var_3.a.x), true, ~arg_1 >= firstTrailingBit(u_input.b)));
}

fn func_4(arg_0: Struct_2) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, -2100f, global0.b), vec3<f32>(global0.b, -1147f, global0.b)))))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(177f, -537f, -563f), vec3<f32>(-158f, 2224f, -699f)))))), vec3<f32>(global0.b, global0.b, 1688f)), true & (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(152f - global0.b) * global0.b) < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(global0.b)))))));
    var var_1 = Struct_1(global0.a, 134f);
    let var_2 = Struct_1(2147483647i, 1f);
    let var_3 = _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.b, u_input.a.x), vec3<u32>(u_input.b, 0u, u_input.a.x)), ~u_input.a.x, u_input.a.x) ^ ~(~vec4<u32>(u_input.b, 1u, u_input.b, u_input.a.x)), vec4<u32>(u_input.b, ~u_input.b, ~(~u_input.a.x), 4294967295u)) | ~_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 1u, u_input.a.x, 18194u), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.b, u_input.a.x), vec4<u32>(u_input.b, 4294967295u, 14924u, 78764u))), abs(vec4<u32>(40858u, u_input.b, u_input.a.x, u_input.a.x) & vec4<u32>(1u, 12744u, 54265u, u_input.a.x)));
    let var_4 = u_input.b | (0u << (~(countOneBits(1593u) >> ((var_3.x & u_input.a.x) % 32u)) % 32u));
    return abs(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(-vec4<i32>(var_1.a, 40950i, 1i, 2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(global0.a, 1i, 27192i, global0.a), vec4<i32>(var_1.a, global0.a, var_2.a, 2147483647i))), max(select(vec4<i32>(var_2.a, -22047i, global0.a, 2147483647i), vec4<i32>(var_2.a, -1i, global0.a, 13632i), arg_0.a.x), vec4<i32>(0i, -2147483647i, var_2.a, var_1.a) << (var_3 % vec4<u32>(32u)))) << (vec4<u32>(firstLeadingBit(1u), var_4, ~(u_input.b << (0u % 32u)), abs(82906u)) % vec4<u32>(32u)));
}

fn func_5(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = Struct_2(vec4<bool>(!func_2(firstTrailingBit(vec3<u32>(u_input.a.x, 21199u, u_input.b)), 0u, Struct_1(-8149i, arg_0.x), func_2(vec3<u32>(u_input.b, u_input.b, 4294967295u), 4294967295u, Struct_1(-2147483647i, 625f), Struct_2(vec4<bool>(false, false, true, true)))).a.x, true, all(vec3<bool>(true, true, true)), -2147483647i >= _wgslsmith_add_i32(-2147483647i ^ arg_1.x, _wgslsmith_mult_i32(arg_1.x, 15226i))));
    var var_1 = arg_2;
    var_1 = vec2<f32>(1144f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x + arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(144f - _wgslsmith_f_op_f32(global0.b - 2098f)) - _wgslsmith_f_op_f32(abs(1643f)))));
    global0 = Struct_1(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, firstLeadingBit(-2147483647i)), abs(arg_1.zx | vec2<i32>(arg_1.x, global0.a))), _wgslsmith_add_i32(_wgslsmith_div_i32(_wgslsmith_clamp_i32(arg_1.x, 0i, arg_1.x), _wgslsmith_mult_i32(arg_1.x, 2147483647i)), _wgslsmith_dot_vec3_i32(abs(arg_1.xxx), -arg_1.yzx))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1715f))));
    var var_2 = 4294967295u;
    return Struct_1(1i, var_1.x);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<bool>) -> i32 {
    global0 = func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, -1457f)), _wgslsmith_div_vec4_i32(func_4(func_2(vec3<u32>(u_input.b, u_input.b, u_input.b), u_input.a.x, Struct_1(global0.a, 381f), Struct_2(vec4<bool>(true, arg_1.x, arg_0.x, false)))), select(vec4<i32>(-36744i, global0.a, 15870i, global0.a) & vec4<i32>(1i, -33793i, global0.a, global0.a), vec4<i32>(global0.a, 2147483647i, global0.a, global0.a), !vec4<bool>(false, true, arg_1.x, arg_0.x))) >> (vec4<u32>(firstTrailingBit(u_input.a.x), _wgslsmith_mult_u32(u_input.a.x, 59376u) | ~1u, u_input.a.x >> (57120u % 32u), firstTrailingBit(u_input.b)) % vec4<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.b)) - global0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-298f)) * global0.b), ~global0.a >= 2147483647i)), -772f));
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(865f)) + -963f), _wgslsmith_f_op_f32(-global0.b))) * _wgslsmith_f_op_f32(ceil(287f))), -687f));
    var var_1 = func_5(vec2<f32>(func_5(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(324f, 1698f), vec2<f32>(801f, 1959f)))), ~(~vec4<i32>(global0.a, global0.a, -1i, global0.a)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, -1000f))))).b, global0.b), _wgslsmith_mod_vec4_i32(vec4<i32>(~select(-1i, global0.a, arg_1.x), global0.a, global0.a, _wgslsmith_add_i32(0i, global0.a | global0.a)), firstLeadingBit(vec4<i32>(reverseBits(-30542i), -global0.a, func_5(vec2<f32>(global0.b, -1302f), vec4<i32>(-40351i, -31655i, 32291i, -11949i), vec2<f32>(1000f, global0.b)).a, global0.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(round(global0.b)), _wgslsmith_f_op_f32(trunc(global0.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(256f, 1728f)))), vec2<bool>(all(vec3<bool>(arg_1.x, arg_1.x, arg_0.x)), arg_0.x | false)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(step(-320f, -495f)), _wgslsmith_f_op_f32(-957f - var_1.b)))), vec2<f32>(_wgslsmith_f_op_f32(-205f + _wgslsmith_f_op_f32(min(var_1.b, var_1.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_1.b, -1622f)), _wgslsmith_f_op_f32(trunc(global0.b)))), global0.b != func_5(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(135f, -268f))), -vec4<i32>(var_1.a, 1i, -24977i, 55837i), vec2<f32>(765f, -1510f)).b)));
    var var_3 = abs(_wgslsmith_mult_i32(global0.a, -reverseBits(-2147483647i)));
    return ~global0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(func_1(!(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true)), !vec2<bool>(true, any(vec4<bool>(false, true, true, false)))), -1797f);
    global0 = func_5(vec2<f32>(1104f, -1726f), ~(~(-vec4<i32>(5345i, 1i, -1i, global0.a))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(186f, global0.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, 302f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, global0.b)))), vec2<f32>(-1662f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b))))));
    var var_0 = _wgslsmith_div_vec3_i32(vec3<i32>(countOneBits(~_wgslsmith_div_i32(0i, global0.a)), func_4(Struct_2(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), true))).x, global0.a), vec3<i32>(~(~global0.a) & abs(select(global0.a, -2147483647i, false)), 0i, func_4(func_2(vec3<u32>(u_input.b, 7154u, u_input.a.x), 74605u, Struct_1(global0.a, -406f), Struct_2(vec4<bool>(true, true, true, false)))).x << (_wgslsmith_div_u32(~u_input.b, firstTrailingBit(3301u)) % 32u)));
    var var_1 = Struct_2(select(select(select(func_2(vec3<u32>(u_input.a.x, 1u, 101531u), 3151u, Struct_1(global0.a, global0.b), Struct_2(vec4<bool>(true, false, true, false))).a, vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, true, 30575i == global0.a), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true))), select(vec4<bool>(false, true, 136976u < u_input.a.x, true), !select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), false), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.b, 842f) * _wgslsmith_div_f32(global0.b, 1000f)) > _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(976f, global0.b, false)), 1000f))));
    var var_2 = global0.b;
    var_1 = Struct_2(var_1.a);
    var var_3 = abs(u_input.b);
    global0 = Struct_1(var_0.x, _wgslsmith_div_f32(1233f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(global0.b, -352f, var_1.a.x)), global0.b)) * _wgslsmith_f_op_f32(-global0.b))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(0u, 68231u, 20817u, 1u)), firstLeadingBit(abs(~vec4<u32>(65457u, 1u, 1u, 4294967295u)))), 1647i);
}

