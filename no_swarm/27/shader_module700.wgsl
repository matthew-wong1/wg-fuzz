struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec2<bool>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<i32>) -> vec3<u32> {
    let var_0 = Struct_2(Struct_1(~vec3<u32>(global0.a.x, ~global0.a.x, 1u | arg_0.x), _wgslsmith_f_op_f32(global0.b * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(global0.b, 534f, global0.c.x))))), vec2<bool>(global0.c.x, global0.d), global0.d));
    let var_1 = (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b * global0.b) + var_0.a.b)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1402f * global0.b) + _wgslsmith_div_f32(global0.b, -469f)))) || !(!(!global0.c.x));
    var var_2 = !vec3<bool>(var_0.a.d, min(~arg_1.x, arg_1.x) < arg_1.x, var_0.a.d);
    global0 = var_0.a;
    var_2 = select(!select(select(select(vec3<bool>(var_2.x, false, global0.d), vec3<bool>(true, false, true), global0.d), vec3<bool>(global0.d, true, var_1), !var_2.x), vec3<bool>(var_2.x && true, select(global0.d, false, false), arg_1.x == arg_1.x), global0.c.x), !(!(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true))), !select(all(select(vec4<bool>(global0.d, var_0.a.c.x, var_2.x, var_2.x), vec4<bool>(true, true, false, var_2.x), vec4<bool>(var_0.a.d, false, false, var_2.x))), true, false && any(vec3<bool>(false, false, false))));
    return var_0.a.a;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2, arg_3: vec4<bool>) -> vec3<u32> {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-907f, arg_0.b) - vec2<f32>(arg_2.a.b, -1111f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1581f, arg_0.b) * vec2<f32>(-451f, arg_2.a.b))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, arg_0.b))))));
    global0 = arg_0;
    var var_1 = true;
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-166f, arg_0.b) * vec2<f32>(-1569f, -1202f)))))))));
    return ~countOneBits(vec3<u32>(1u, 5151u >> (0u % 32u), _wgslsmith_add_u32(global0.a.x, global0.a.x)) >> (vec3<u32>(~1u, ~global0.a.x, max(0u, 4294967295u)) % vec3<u32>(32u)));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>) -> vec4<bool> {
    global0 = Struct_1(func_4(Struct_1(func_3(vec2<u32>(78064u, 4294967295u) & global0.a.xx, vec4<i32>(arg_1.x, 1i, -1i, arg_1.x) >> (vec4<u32>(u_input.a, 93742u, 4294967295u, global0.a.x) % vec4<u32>(32u))), _wgslsmith_f_op_f32(round(global0.b)), vec2<bool>(arg_0.c.x, 8705u >= u_input.a), any(arg_0.c)), true, Struct_2(Struct_1(global0.a, _wgslsmith_div_f32(arg_0.b, arg_0.b), select(global0.c, arg_0.c, global0.c), true)), !vec4<bool>(56940u < global0.a.x, global0.c.x, true, false != global0.d)), 1194f, vec2<bool>(arg_1.x >= 4742i, true), true || arg_0.c.x);
    var var_0 = _wgslsmith_sub_vec4_u32(reverseBits(_wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(0u, u_input.a, global0.a.x, 1u)), ~vec4<u32>(22545u, arg_0.a.x, 1387u, 0u)) | ~select(vec4<u32>(u_input.a, 1u, 0u, arg_0.a.x), vec4<u32>(4294967295u, 31306u, 4294967295u, u_input.a), vec4<bool>(global0.d, true, arg_0.d, arg_0.d))), ~vec4<u32>(reverseBits(firstLeadingBit(u_input.a)), _wgslsmith_sub_u32(abs(17555u), arg_0.a.x & 23317u), abs(~global0.a.x), firstTrailingBit(4294967295u)));
    var_0 = ~(vec4<u32>(1u << (_wgslsmith_dot_vec3_u32(vec3<u32>(89184u, 1u, u_input.a), arg_0.a) % 32u), ~global0.a.x & ~u_input.a, 1u, 26863u) | ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(18998u, 4294967295u, arg_0.a.x, 4294967295u), vec4<u32>(u_input.a, 36145u, arg_0.a.x, 62819u))));
    var var_1 = _wgslsmith_f_op_f32(-global0.b);
    let var_2 = Struct_2(Struct_1(func_4(Struct_1(firstLeadingBit(vec3<u32>(92061u, arg_0.a.x, 1u)), -1091f, vec2<bool>(true, true), !global0.c.x), any(!vec3<bool>(arg_0.c.x, false, global0.c.x)), Struct_2(Struct_1(global0.a, 1254f, vec2<bool>(arg_0.c.x, false), global0.c.x)), !vec4<bool>(global0.c.x, false, false, arg_0.c.x)), -779f, vec2<bool>(20744i != select(arg_1.x, arg_1.x, false), max(global0.a.x, 1u) >= 0u), select(select(true, true, all(arg_0.c)), false, false)));
    return select(select(select(vec4<bool>(all(vec4<bool>(false, var_2.a.d, var_2.a.d, false)), true, true, all(vec3<bool>(arg_0.c.x, false, true))), !select(vec4<bool>(global0.c.x, true, global0.c.x, false), vec4<bool>(true, global0.d, true, true), arg_0.d), arg_0.d), select(vec4<bool>(false || var_2.a.d, !var_2.a.c.x, true, false || global0.d), !(!vec4<bool>(false, var_2.a.c.x, arg_0.d, var_2.a.d)), !(!vec4<bool>(true, arg_0.c.x, false, false))), select(!select(vec4<bool>(arg_0.c.x, true, global0.d, false), vec4<bool>(var_2.a.d, false, true, var_2.a.c.x), vec4<bool>(true, arg_0.d, true, true)), !(!vec4<bool>(true, arg_0.c.x, false, true)), 0i <= arg_1.x)), select(vec4<bool>(true, _wgslsmith_div_f32(global0.b, arg_0.b) < -1000f, true, false), vec4<bool>(true, true, -22445i > ~arg_1.x, true), !select(!vec4<bool>(true, var_2.a.d, arg_0.c.x, var_2.a.d), vec4<bool>(true, var_2.a.c.x, false, arg_0.c.x), all(vec4<bool>(var_2.a.d, global0.c.x, global0.c.x, false)))), all(!vec4<bool>(!var_2.a.c.x, true, arg_0.d, !var_2.a.d)));
}

fn func_5(arg_0: vec4<bool>, arg_1: bool) -> Struct_2 {
    var var_0 = global0.a.zx;
    let var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(global0.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-338f - _wgslsmith_div_f32(1997f, 472f)), 539f), _wgslsmith_f_op_f32(-2249f * 681f), global0.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(121f, global0.b, -139f, 1187f) + vec4<f32>(-913f, -1356f, global0.b, global0.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2280f, -920f, 1009f, global0.b) - vec4<f32>(-1443f, 245f, global0.b, global0.b)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-457f, 807f, global0.b, global0.b)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1384f, 814f, -258f, global0.b)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.b, 1422f, 594f, global0.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b, global0.b, global0.b, 807f) + vec4<f32>(681f, global0.b, global0.b, global0.b)), arg_0)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, global0.b, 363f, global0.b))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_1.xy)));
    let var_3 = vec2<bool>(true, arg_0.x);
    let var_4 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(483f, -761f, -1117f, -611f))))), vec4<f32>(-768f, -335f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.x - var_1.x))), 1f))));
    return Struct_2(Struct_1(_wgslsmith_div_vec3_u32(global0.a ^ vec3<u32>(var_0.x, 4294967295u, u_input.a), vec3<u32>(0u, global0.a.x, u_input.a) | global0.a) | ~(~vec3<u32>(var_0.x, var_0.x, 4294967295u)), -1753f, arg_0.wy, global0.c.x));
}

fn func_6(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    let var_0 = func_5(!(!(!(!vec4<bool>(arg_2.d, false, arg_1, global0.c.x)))), false).a;
    global0 = func_5(!(!vec4<bool>(any(vec3<bool>(arg_2.d, arg_1, arg_1)), arg_1 || arg_1, arg_0.a.d, true)), func_5(!vec4<bool>(true, arg_0.a.d, arg_0.a.b > arg_2.b, true), arg_0.a.c.x).a.c.x).a;
    let var_1 = -1292f;
    var var_2 = vec2<bool>(-_wgslsmith_div_i32(firstLeadingBit(2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -27768i, 1i), vec3<i32>(2147483647i, -1i, -2147483647i))) == (i32(-1i) * -2147483647i), true);
    var_2 = vec2<bool>(var_2.x, arg_0.a.d);
    return func_5(vec4<bool>(true, false, true, all(vec3<bool>(arg_1, true, all(vec2<bool>(arg_1, false))))), !all(!(!vec3<bool>(arg_1, true, true)))).a;
}

fn func_7(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_1 {
    global0 = Struct_1(global0.a, _wgslsmith_div_f32(-1000f, -1412f), func_2(func_5(select(select(vec4<bool>(arg_1.c.x, true, false, arg_1.c.x), vec4<bool>(true, true, true, true), vec4<bool>(global0.c.x, global0.c.x, true, true)), vec4<bool>(true, true, true, true), select(true, arg_1.d, false)), 4294967295u < _wgslsmith_clamp_u32(0u, 6742u, 90997u)).a, -vec3<i32>(-2147483647i, 1i, -46463i)).wy, all(vec3<bool>(all(global0.c), false, func_5(select(vec4<bool>(global0.c.x, true, false, false), vec4<bool>(global0.d, arg_1.d, true, false), true), !arg_2.c.x).a.d)));
    global0 = arg_1;
    let var_0 = Struct_2(func_6(func_5(vec4<bool>(select(false, true, true), arg_1.c.x & true, false, arg_2.c.x), all(vec3<bool>(false, true, true)) & true), !global0.d, arg_1));
    global0 = func_6(Struct_2(Struct_1(~(~arg_3.zyw), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-905f * -326f)), !var_0.a.c, var_0.a.c.x)), 18305u == _wgslsmith_mult_u32(arg_0.x, arg_2.a.x), Struct_1(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, arg_0.x, var_0.a.a.x), min(~arg_3.xzw, vec3<u32>(arg_1.a.x, var_0.a.a.x, arg_2.a.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(845f + arg_2.b))), vec2<bool>(arg_2.c.x, true), var_0.a.c.x));
    global0 = arg_2;
    return arg_1;
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_1) -> bool {
    let var_0 = arg_1;
    let var_1 = var_0;
    let var_2 = -258f;
    global0 = func_7(global0.a.xx, func_6(func_5(select(func_2(Struct_1(vec3<u32>(var_1.a.a.x, arg_2.a.x, arg_1.a.a.x), 1038f, vec2<bool>(var_0.a.d, true), true), vec3<i32>(arg_0.x, arg_0.x, arg_0.x)), vec4<bool>(arg_2.d, false, var_1.a.d, var_0.a.d), !vec4<bool>(global0.d, true, true, arg_2.d)), arg_1.a.c.x), func_5(!(!vec4<bool>(true, arg_2.c.x, arg_2.c.x, false)), !any(var_0.a.c)).a.d, var_1.a), var_0.a, vec4<u32>(firstLeadingBit(var_0.a.a.x), abs(global0.a.x >> ((global0.a.x & arg_2.a.x) % 32u)), arg_2.a.x, ~_wgslsmith_clamp_u32(u_input.a, func_6(var_0, global0.c.x, arg_2).a.x, 11098u)));
    var var_3 = func_6(func_5(!(!(!vec4<bool>(true, var_1.a.c.x, true, arg_1.a.d))), true), true, func_5(!select(vec4<bool>(true, true, false, false), !vec4<bool>(true, arg_2.c.x, true, global0.d), var_1.a.c.x), true).a);
    return !any(vec3<bool>(var_3.c.x, all(func_2(var_1.a, vec3<i32>(-2147483647i, 29551i, arg_0.x))), func_2(func_7(global0.a.xx, Struct_1(vec3<u32>(var_3.a.x, var_0.a.a.x, global0.a.x), arg_2.b, vec2<bool>(false, true), false), var_0.a, vec4<u32>(var_3.a.x, 51229u, var_0.a.a.x, arg_1.a.a.x)), vec3<i32>(arg_0.x, -53644i, 29806i)).x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(global0.c.x, !(!select(true, global0.d, !global0.d)), any(vec4<bool>(global0.c.x, func_1(vec2<i32>(-2147483647i, -1i), Struct_2(Struct_1(global0.a, -1000f, global0.c, true)), Struct_1(global0.a, global0.b, global0.c, true)) && true, func_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, -35821i), vec2<i32>(57380i, -2147483647i), vec2<i32>(30143i, 5900i)), func_5(vec4<bool>(global0.c.x, global0.d, global0.c.x, global0.d), global0.c.x), func_6(Struct_2(Struct_1(vec3<u32>(global0.a.x, 18054u, 39193u), global0.b, vec2<bool>(false, false), true)), false, Struct_1(global0.a, -2749f, global0.c, global0.c.x))), global0.c.x && (-767f != global0.b))), !(!(!(!global0.d))));
    var_0 = select(vec4<bool>(!var_0.x, true, global0.c.x, !all(var_0.zz)), !vec4<bool>(!func_7(vec2<u32>(123806u, 28156u), Struct_1(global0.a, 1901f, global0.c, global0.c.x), Struct_1(global0.a, global0.b, global0.c, var_0.x), vec4<u32>(1u, 1u, 90168u, u_input.a)).c.x, true, !var_0.x, any(!var_0.zwz)), all(vec2<bool>(true, var_0.x)));
    var var_1 = func_7(abs(global0.a.xy), Struct_1(global0.a, global0.b, vec2<bool>(func_1(vec2<i32>(-2147483647i, 9488i) << (vec2<u32>(global0.a.x, global0.a.x) % vec2<u32>(32u)), func_5(vec4<bool>(global0.d, true, global0.d, global0.d), false), Struct_1(vec3<u32>(global0.a.x, 4294967295u, u_input.a), -345f, global0.c, var_0.x)), var_0.x), global0.c.x), func_5(vec4<bool>(select(var_0.x, true, var_0.x), true, var_0.x && !global0.c.x, !(global0.d | global0.d)), false).a, min(firstLeadingBit(~vec4<u32>(u_input.a, global0.a.x, global0.a.x, 0u)), abs(max(vec4<u32>(u_input.a, global0.a.x, u_input.a, 4294967295u), vec4<u32>(37719u, global0.a.x, 0u, 33779u)))) << (firstTrailingBit(vec4<u32>(41306u, ~u_input.a, _wgslsmith_sub_u32(global0.a.x, 0u), reverseBits(1u))) % vec4<u32>(32u)));
    var_0 = vec4<bool>(true, !(global0.d || false), false, _wgslsmith_f_op_f32(func_6(func_5(vec4<bool>(var_1.d, var_1.d, false, var_1.d), var_1.d), var_1.d, func_6(Struct_2(Struct_1(var_1.a, global0.b, var_1.c, true)), false, Struct_1(global0.a, -889f, vec2<bool>(global0.d, var_1.c.x), false))).b + 928f) > _wgslsmith_f_op_f32(-global0.b));
    var var_2 = func_5(select(vec4<bool>(global0.d, false, var_0.x, func_5(vec4<bool>(false, global0.c.x, false, true), func_5(vec4<bool>(global0.d, true, false, var_1.c.x), global0.d).a.c.x).a.c.x), vec4<bool>(!var_1.c.x, u_input.a > var_1.a.x, func_1(select(vec2<i32>(-20396i, 44575i), vec2<i32>(-43547i, 2147483647i), var_1.c.x), func_5(vec4<bool>(true, true, var_0.x, true), global0.d), Struct_1(global0.a, var_1.b, var_0.yx, true)), false), true), any(func_6(Struct_2(Struct_1(global0.a, 271f, vec2<bool>(true, global0.d), true)), var_0.x, Struct_1(~vec3<u32>(1u, 25294u, global0.a.x), -1203f, func_7(var_1.a.yz, Struct_1(var_1.a, -1000f, var_1.c, true), Struct_1(vec3<u32>(1u, 65016u, var_1.a.x), 1062f, vec2<bool>(false, false), global0.d), vec4<u32>(0u, global0.a.x, 34345u, global0.a.x)).c, var_1.d)).c));
    var var_3 = _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(countOneBits(select(vec4<i32>(-14456i, -1i, -4442i, -2147483647i), vec4<i32>(-2147483647i, 50762i, 46177i, -2147483647i), var_2.a.c.x) & _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 35767i, 2147483647i, 1i), vec4<i32>(-1i, -25304i, -1i, 2147483647i))), -firstLeadingBit(countOneBits(vec4<i32>(2147483647i, 2147483647i, -2147483647i, -37593i)))), _wgslsmith_clamp_vec4_i32(-(~_wgslsmith_div_vec4_i32(vec4<i32>(-12202i, -1i, 14149i, -26669i), vec4<i32>(48506i, 1i, 76429i, 1i))), vec4<i32>(1i, 1i, 1i, 1i) << ((max(vec4<u32>(global0.a.x, 6776u, 50778u, global0.a.x), vec4<u32>(var_1.a.x, 22316u, 50413u, 0u)) >> (vec4<u32>(3481u, 2520u, u_input.a, var_1.a.x) % vec4<u32>(32u))) % vec4<u32>(32u)), -(~(vec4<i32>(-5928i, 554i, -4039i, 1i) << (vec4<u32>(8178u, var_1.a.x, 1u, 4294967295u) % vec4<u32>(32u))))));
    var_3 = ~_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(var_3.x, 8168i), abs(firstLeadingBit(1i)), _wgslsmith_dot_vec2_i32(firstLeadingBit(var_3.zw), countOneBits(var_3.yz)), 1i), vec4<i32>(~(-var_3.x), countOneBits(10259i), ~(-1i), -7464i));
    var var_4 = 1493f;
    let var_5 = func_5(vec4<bool>(true, true, func_6(func_5(select(vec4<bool>(var_1.c.x, false, false, var_2.a.c.x), vec4<bool>(true, true, false, true), var_0.x), !global0.c.x), false, var_2.a).c.x, true), all(select(vec4<bool>(var_1.d, false, var_1.d && var_2.a.d, true), select(vec4<bool>(var_0.x, true, true, false), select(vec4<bool>(true, false, false, global0.c.x), vec4<bool>(false, global0.d, true, var_2.a.c.x), vec4<bool>(true, true, true, var_2.a.c.x)), true), !(!vec4<bool>(true, false, var_0.x, false))))).a;
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_mult_vec4_i32(select(vec4<i32>(1i, var_3.x, var_3.x, var_3.x), vec4<i32>(2147483647i, var_3.x, 14533i, var_3.x), vec4<bool>(var_0.x, global0.d, var_5.c.x, true)), _wgslsmith_clamp_vec4_i32(vec4<i32>(26538i, var_3.x, var_3.x, var_3.x), vec4<i32>(-5664i, var_3.x, var_3.x, var_3.x), vec4<i32>(2147483647i, 2147483647i, 9313i, var_3.x)))), _wgslsmith_mult_i32(-23721i, var_3.x), min(~(-(vec4<i32>(var_3.x, var_3.x, 1024i, var_3.x) >> (vec4<u32>(var_5.a.x, var_1.a.x, 29222u, var_1.a.x) % vec4<u32>(32u)))), ~vec4<i32>(1i, ~21450i, select(var_3.x, var_3.x, var_1.c.x), 1i)), ~var_2.a.a.x << ((49402u << (0u % 32u)) % 32u), _wgslsmith_add_vec2_i32(vec2<i32>(18531i, -2147483647i), vec2<i32>(_wgslsmith_mult_i32(-1i, 0i), var_3.x)));
}

