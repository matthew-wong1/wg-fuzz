struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: vec3<bool>,
    e: u32,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: u32,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, -1000f)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1377f, 212f, arg_0)))), !(!arg_1.a.x)))));
    var var_1 = arg_1.b;
    let var_2 = Struct_3(arg_1.a.x, u_input.b.x, !all(select(!vec3<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x), vec3<bool>(false, arg_1.a.x, true), all(vec3<bool>(false, false, true)))));
    let var_3 = var_2.c;
    return !arg_1.a;
}

fn func_2() -> Struct_3 {
    let var_0 = select(reverseBits(vec4<i32>(u_input.a.x, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(u_input.a, u_input.a), u_input.a), _wgslsmith_dot_vec2_i32(abs(u_input.a), ~u_input.a), ~firstTrailingBit(u_input.a.x))), ~(_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(6066i, -892i, 1i, 16963i), vec4<i32>(-8577i, 2147483647i, u_input.a.x, u_input.a.x)), vec4<i32>(u_input.a.x, -38127i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, 0i, u_input.a.x, u_input.a.x)) >> (~abs(vec4<u32>(u_input.b.x, 56803u, 15925u, 0u)) % vec4<u32>(32u))), func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1277f - -1403f) - 1756f), Struct_1(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), true), ~(~1u))));
    return Struct_3(select(true, all(vec2<bool>(true, true)), true), 4821u, !(false || !(-2147483647i != var_0.x)));
}

fn func_4(arg_0: u32, arg_1: Struct_3) -> Struct_1 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1424f * 1545f))) - -226f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-505f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -784f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-1000f, -902f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1045f))))), _wgslsmith_f_op_f32(-1f), arg_1.c)));
    global0 = arg_1.a;
    global0 = func_3(-353f, Struct_1(func_3(_wgslsmith_f_op_f32(845f * _wgslsmith_f_op_f32(var_0.x - 988f)), Struct_1(vec4<bool>(true, true, true, true), u_input.b.x)), abs(arg_0))).x;
    global0 = true;
    var var_1 = func_2();
    return Struct_1(select(select(vec4<bool>(true, true, all(vec4<bool>(var_1.c, var_1.a, false, false)), arg_1.c & true), vec4<bool>(arg_1.c, !var_1.a, any(vec3<bool>(false, false, arg_1.a)), func_3(725f, Struct_1(vec4<bool>(true, arg_1.c, false, var_1.c), 4294967295u)).x), vec4<bool>(false, u_input.a.x < u_input.a.x, true, !arg_1.a)), vec4<bool>(all(select(vec3<bool>(var_1.c, true, arg_1.c), vec3<bool>(var_1.c, arg_1.c, false), vec3<bool>(false, arg_1.c, arg_1.a))), var_1.c, true, _wgslsmith_add_i32(u_input.a.x, -26915i) < (i32(-1i) * -1i)), func_3(var_0.x, Struct_1(select(vec4<bool>(var_1.a, var_1.c, true, false), vec4<bool>(arg_1.c, arg_1.a, true, true), false), 1u))), select(countOneBits(~1u), ~min(_wgslsmith_mod_u32(4294967295u, 14537u), _wgslsmith_clamp_u32(1u, 28909u, arg_1.b)), var_1.a));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> u32 {
    global0 = arg_0.a.x;
    let var_0 = _wgslsmith_sub_i32(u_input.a.x, ~(28194i << (u_input.b.x % 32u)));
    let var_1 = Struct_3(true, u_input.b.x, all(vec2<bool>(_wgslsmith_clamp_u32(91804u, u_input.b.x, 41170u) != abs(0u), true)));
    global0 = true;
    var var_2 = Struct_2(var_0, func_4(arg_0.b, func_2()), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1000f), _wgslsmith_f_op_f32(726f * -1761f))))), arg_0.a.xzx, (arg_0.b & ~10490u) & ~arg_0.b);
    return ~var_2.b.b & 1910u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(any(vec3<bool>(true, true, true)), false, ~_wgslsmith_sub_u32(~89747u, 28341u) <= (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 20122u, 28888u), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 49912u), vec4<u32>(u_input.b.x, 0u, 4294967295u, 38777u), vec4<u32>(u_input.b.x, u_input.b.x, 45160u, 0u))) << (u_input.b.x % 32u)));
    var var_1 = !vec3<bool>(true, any(vec2<bool>(false, var_0.x)), var_0.x);
    global0 = (~_wgslsmith_div_u32(1u, func_1(Struct_1(vec4<bool>(true, false, var_1.x, true), 8095u), false)) | (~(~u_input.b.x) << (u_input.b.x % 32u))) != firstLeadingBit(0u);
    var var_2 = Struct_2(select(0i, _wgslsmith_mult_i32(~(~2147483647i), 1i), !(any(vec3<bool>(false, true, var_1.x)) | var_1.x)), func_4(_wgslsmith_mult_u32(_wgslsmith_mod_u32(~u_input.b.x, ~u_input.b.x), 31068u), func_2()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-393f))), vec3<bool>(var_0.x, !(!var_0.x | true), false), _wgslsmith_add_u32(0u >> (_wgslsmith_sub_u32(select(u_input.b.x, 30430u, var_0.x), _wgslsmith_dot_vec2_u32(vec2<u32>(8030u, u_input.b.x), vec2<u32>(u_input.b.x, u_input.b.x))) % 32u), abs(_wgslsmith_dot_vec3_u32(select(vec3<u32>(25728u, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, 5651u, u_input.b.x), vec3<bool>(true, var_1.x, var_1.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u), vec3<u32>(43258u, u_input.b.x, 33941u))))));
    global0 = var_2.b.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(2343f - -1052f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-356f)))) + var_2.c), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -625f), _wgslsmith_f_op_f32(var_2.c * var_2.c)), _wgslsmith_f_op_f32(-var_2.c)), 1229f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1889f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-162f, -1000f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.c, 781f) - vec2<f32>(var_2.c, 469f))))), 51791u, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1620f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c) + _wgslsmith_div_f32(var_2.c, -1267f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c) + var_2.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-590f, 164f, var_2.c) + vec3<f32>(var_2.c, var_2.c, var_2.c)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(2787f, -565f, var_2.c), vec3<f32>(612f, var_2.c, var_2.c)))))), (!var_1.x && true) | false)), ~var_2.e);
}

