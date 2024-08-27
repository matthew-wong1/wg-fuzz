struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec2<bool>) -> i32 {
    var var_0 = vec3<bool>(arg_1.x, !all(!arg_1.xx) || arg_2.x, true);
    let var_1 = arg_0;
    var_0 = vec3<bool>(arg_2.x, any(arg_1), true);
    var var_2 = var_1.a;
    let var_3 = var_1.d;
    return 26047i;
}

fn func_2() -> Struct_1 {
    let var_0 = -vec3<i32>(u_input.a, i32(-1i) * -(u_input.a | u_input.a), (-u_input.a | func_3(Struct_1(vec3<i32>(-5756i, 0i, u_input.a), vec4<i32>(0i, u_input.a, 47704i, -23102i), vec2<i32>(0i, -28447i), 40506i, u_input.a), vec3<bool>(true, true, false), vec2<bool>(false, true))) ^ _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, -1964i, 12435i), vec3<i32>(48494i, u_input.a, 1i)), vec3<i32>(12073i, 0i, -16234i)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1172f, 1637f, -1280f, 748f) + vec4<f32>(-771f, 1000f, 1053f, -1548f)) * vec4<f32>(-1608f, 469f, 118f, 1186f))), true)));
    var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-621f, -1000f, _wgslsmith_f_op_f32(floor(1090f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-158f, 300f, true)) + _wgslsmith_div_f32(636f, var_1.x)))));
    let var_2 = _wgslsmith_mult_u32(_wgslsmith_add_u32(abs(1u), ~(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 61425u, 4294967295u), vec3<u32>(4294967295u, 13868u, 1u)) << (~6105u % 32u))), 48846u);
    var var_3 = -(i32(-1i) * -2147483647i);
    return Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(35704i, i32(-1i) * -9094i, var_0.x), vec3<i32>(abs(~var_0.x), ~abs(u_input.a), _wgslsmith_dot_vec3_i32(-var_0, vec3<i32>(-15543i, u_input.a, 1i)))), -select(~vec4<i32>(-3827i, 1i, 1i, var_0.x) | vec4<i32>(u_input.a, 2147483647i, -2147483647i, u_input.a), vec4<i32>(~u_input.a, 2147483647i, var_0.x, -u_input.a), false), vec2<i32>(~(~_wgslsmith_div_i32(-2147483647i, 1i)), -25236i), countOneBits(u_input.a >> (firstLeadingBit(~58116u) % 32u)), _wgslsmith_clamp_i32(23191i, (-38091i << (var_2 % 32u)) << (countOneBits(_wgslsmith_div_u32(55181u, var_2)) % 32u), u_input.a));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_2;
    var_0 = func_2();
    let var_1 = vec2<bool>(true, true);
    let var_2 = select(vec4<bool>(!any(select(vec2<bool>(var_1.x, true), var_1, var_1.x)), (_wgslsmith_clamp_i32(u_input.a, 1i, arg_2.e) >= countOneBits(-1i)) == any(select(vec2<bool>(var_1.x, false), var_1, false)), !(all(vec2<bool>(var_1.x, var_1.x)) && true), false), select(!(!vec4<bool>(var_1.x, var_1.x, true, var_1.x)), select(select(select(vec4<bool>(false, var_1.x, false, var_1.x), vec4<bool>(var_1.x, var_1.x, true, true), var_1.x), !vec4<bool>(true, var_1.x, var_1.x, var_1.x), !vec4<bool>(true, var_1.x, false, true)), vec4<bool>(!var_1.x, true && var_1.x, !var_1.x, all(vec2<bool>(var_1.x, true))), true), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, var_1.x, true), vec4<bool>(var_1.x, var_1.x, false, false), vec4<bool>(false, var_1.x, var_1.x, false)), !vec4<bool>(var_1.x, var_1.x, false, var_1.x)), select(select(vec4<bool>(true, var_1.x, var_1.x, true), vec4<bool>(var_1.x, var_1.x, false, true), false), vec4<bool>(var_1.x, var_1.x, true, true), select(vec4<bool>(true, false, var_1.x, var_1.x), vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, true))), (var_1.x | var_1.x) && true)), vec4<bool>(all(vec3<bool>(true, !var_1.x, all(vec4<bool>(var_1.x, true, var_1.x, true)))), var_1.x, all(!(!vec2<bool>(var_1.x, var_1.x))), true));
    var var_3 = Struct_1(arg_0.b.wxw, -(~firstTrailingBit(vec4<i32>(arg_0.c.x, arg_0.b.x, arg_2.a.x, arg_0.d))), _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, arg_0.c.x, arg_0.c.x), vec3<i32>(arg_1.x, -1i, var_0.c.x))), select(-var_0.b.x, arg_1.x, var_1.x)), -abs(vec2<i32>(1i, u_input.a))), -(~(~max(arg_1.x, 4585i))), arg_2.a.x);
    return Struct_1(~abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(-30513i, arg_1.x, 1i), vec3<i32>(arg_0.c.x, 1i, -3840i), arg_1)) & -reverseBits(max(vec3<i32>(13936i, -35492i, u_input.a), var_3.a)), vec4<i32>(u_input.a, _wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_sub_i32(var_3.a.x, arg_0.d), arg_0.c.x), var_0.e), var_3.d, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a, 24695i, u_input.a), _wgslsmith_div_vec3_i32(var_3.a, var_3.a)), -2147483647i)), _wgslsmith_mult_vec2_i32(vec2<i32>(~_wgslsmith_clamp_i32(var_3.d, -25718i, 8212i), _wgslsmith_add_i32(arg_1.x, 80i)), _wgslsmith_div_vec2_i32(firstLeadingBit(vec2<i32>(32421i, var_0.c.x)), arg_2.b.ww)), min(-10692i, var_3.b.x), i32(-1i) * -2814i);
}

fn func_1(arg_0: vec3<i32>, arg_1: f32) -> bool {
    var var_0 = any(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), !select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false)));
    var_0 = false;
    var var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1414f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1380f + arg_1) + _wgslsmith_f_op_f32(arg_1 + 147f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) * vec2<f32>(arg_1, arg_1)))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, 125f))))));
    let var_2 = func_4(func_2(), _wgslsmith_clamp_vec3_i32(max(min(vec3<i32>(u_input.a, arg_0.x, -20291i), arg_0) >> (~vec3<u32>(4294967295u, 10765u, 35110u) % vec3<u32>(32u)), vec3<i32>(-1i, arg_0.x, 17592i)), _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(arg_0, ~arg_0, vec3<i32>(arg_0.x, -53058i, -2380i)), vec3<i32>(1i, _wgslsmith_mod_i32(-1i, arg_0.x), _wgslsmith_div_i32(-10860i, -14559i))), firstLeadingBit(~firstTrailingBit(vec3<i32>(-2147483647i, -14335i, u_input.a)))), func_2());
    var var_3 = max(~_wgslsmith_add_u32(_wgslsmith_sub_u32(firstLeadingBit(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 40744u, 0u), vec4<u32>(1u, 4294967295u, 20347u, 4294967295u))), ~36361u), ~14704u);
    return any(!vec4<bool>(all(vec3<bool>(true, true, false)), true, true, all(vec2<bool>(false, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(_wgslsmith_div_vec4_i32(vec4<i32>(~_wgslsmith_mult_i32(-6890i, -61779i), -1i, u_input.a, 43426i), countOneBits(~vec4<i32>(u_input.a, 1i, u_input.a, u_input.a))), _wgslsmith_add_vec4_i32(firstTrailingBit(~max(vec4<i32>(u_input.a, u_input.a, 1i, 68493i), vec4<i32>(-43666i, -2147483647i, -1i, u_input.a))), abs(vec4<i32>(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(26146i, u_input.a)), u_input.a, ~u_input.a))));
    let var_1 = -100f;
    var var_2 = vec4<i32>(1i, ~var_0.x, _wgslsmith_sub_i32(-20503i, u_input.a), (-18137i | min(0i, ~u_input.a)) ^ ~u_input.a);
    let var_3 = select(vec4<bool>(!any(vec3<bool>(true, true, false)), !func_1(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, 1i, 35739i), var_2.zyx), _wgslsmith_div_f32(var_1, var_1)), any(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true)), true & all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)))), !vec4<bool>(!any(vec3<bool>(true, false, true)), any(vec4<bool>(false, true, true, true)) & select(true, false, true), true, !(-1i < var_2.x)), any(select(vec2<bool>(any(vec3<bool>(true, false, false)), any(vec4<bool>(false, true, false, false))), select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true)), select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, true), vec2<bool>(true, true)))));
    var_2 = ~(~(vec4<i32>(firstTrailingBit(1i), var_0.x, -var_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, u_input.a, 1961i), vec3<i32>(u_input.a, var_0.x, -69241i))) & vec4<i32>(1i, var_2.x, var_0.x ^ 1i, -3439i)));
    let var_4 = vec2<u32>(_wgslsmith_clamp_u32(4294967295u, firstTrailingBit(1u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(61903u, 1u, 67416u, 30710u), vec4<u32>(1u, 1u, 4294967295u, 1u))), abs(_wgslsmith_div_u32(~37387u, 32948u))) & ~(~(~vec2<u32>(5543u, 0u)));
    let var_5 = vec2<u32>(~18591u, _wgslsmith_div_u32(~(~_wgslsmith_mod_u32(var_4.x, var_4.x)), 4294967295u));
    var_2 = _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(~var_0, -vec4<i32>(_wgslsmith_add_i32(-1i, var_0.x), func_4(Struct_1(var_0.zxz, var_0, var_2.yw, u_input.a, 1i), vec3<i32>(-1i, -74636i, 2147483647i), Struct_1(var_2.yzx, var_0, vec2<i32>(2147483647i, 0i), -19128i, 1i)).b.x, abs(13279i), i32(-1i) * -492i)), vec4<i32>(var_2.x, var_2.x, _wgslsmith_mult_i32(u_input.a ^ u_input.a, func_2().e), var_2.x) >> (vec4<u32>(reverseBits(reverseBits(var_5.x)), var_5.x | var_4.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_5.x, 0u, 4294967295u, 37971u), vec4<u32>(65471u, var_5.x, var_5.x, var_5.x)), _wgslsmith_clamp_u32(1u, var_5.x, 22909u)), _wgslsmith_dot_vec4_u32(vec4<u32>(var_4.x, 1u, var_5.x, var_4.x) >> (vec4<u32>(var_4.x, 28879u, 34251u, 4294967295u) % vec4<u32>(32u)), reverseBits(vec4<u32>(var_4.x, var_5.x, 1884u, var_5.x)))) % vec4<u32>(32u)));
    var_2 = vec4<i32>(-_wgslsmith_add_i32(abs(~1i), min(1i, var_0.x)), -14483i, _wgslsmith_sub_i32(_wgslsmith_div_i32(func_2().e, min(~24355i, var_0.x)), _wgslsmith_mod_i32(1i, -1i)), (i32(-1i) * -4377i) | firstTrailingBit(func_4(func_4(Struct_1(var_0.wyy, vec4<i32>(29435i, var_0.x, -1i, 3973i), vec2<i32>(14205i, 3451i), var_2.x, u_input.a), var_0.xww, Struct_1(vec3<i32>(15554i, var_2.x, -1i), vec4<i32>(var_2.x, 40287i, u_input.a, var_0.x), vec2<i32>(var_0.x, 34360i), u_input.a, -1i)), vec3<i32>(21245i, 35430i, var_2.x), Struct_1(var_2.ywy, var_0, var_0.xy, u_input.a, var_2.x)).d));
    let x = u_input.a;
    s_output = StorageBuffer(select(max(firstLeadingBit(vec4<u32>(47996u, 0u, var_5.x, 4294967295u)), (vec4<u32>(1u, var_4.x, var_5.x, 63668u) ^ vec4<u32>(4294967295u, 0u, 4294967295u, 36873u)) >> (vec4<u32>(var_5.x, var_5.x, 1u, var_4.x) % vec4<u32>(32u))), abs(vec4<u32>(~0u, countOneBits(var_4.x), _wgslsmith_dot_vec4_u32(vec4<u32>(var_4.x, var_5.x, var_4.x, 14484u), vec4<u32>(var_4.x, 0u, var_5.x, var_4.x)), ~var_4.x)), !var_3), _wgslsmith_f_op_f32(-var_1));
}

