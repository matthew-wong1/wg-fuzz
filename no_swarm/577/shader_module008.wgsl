struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec4<u32>) -> bool {
    global0 = array<Struct_2, 20>();
    let var_0 = -388f;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -293f));
    global0 = array<Struct_2, 20>();
    global0 = array<Struct_2, 20>();
    return !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0, -1076f)) + _wgslsmith_f_op_f32(-336f - var_1.a))) > _wgslsmith_f_op_f32(f32(-1f) * -1710f));
}

fn func_3(arg_0: i32) -> vec4<u32> {
    global0 = array<Struct_2, 20>();
    return vec4<u32>(0u | _wgslsmith_add_u32(firstTrailingBit(_wgslsmith_sub_u32(u_input.a, 1u)), ~(~25244u)), min(1u, abs(~u_input.a ^ 5321u)), u_input.a, 0u);
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: vec4<u32>) -> vec2<u32> {
    let var_0 = ~arg_2;
    let var_1 = global0[_wgslsmith_index_u32(~4294967295u, 20u)];
    global0 = array<Struct_2, 20>();
    let var_2 = u_input.b;
    let var_3 = global0[_wgslsmith_index_u32(arg_2.x, 20u)];
    return vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(arg_0, var_0.zzy) | var_0.xyw, ~(~vec3<u32>(u_input.a, 0u, 0u))), vec3<u32>(u_input.a, arg_0.x, min(4294967295u, ~81429u))), 13201u);
}

fn func_1() -> vec4<f32> {
    var var_0 = vec2<bool>(true, true);
    let var_1 = !(!func_2(vec4<u32>(u_input.a, ~u_input.a, 40485u & u_input.a, 56627u)));
    var_0 = vec2<bool>(false, var_1);
    var var_2 = func_4(vec3<u32>(1u, ~(_wgslsmith_div_u32(u_input.a, 4294967295u) << (40256u % 32u)), _wgslsmith_add_u32(~0u, 1u & ~u_input.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1418f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1348f, -1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -273f))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-169f, 1353f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-243f, 599f) * vec2<f32>(834f, -961f)), !vec2<bool>(var_1, var_1)))))), ~func_3(-2147483647i));
    let var_3 = max(var_2.x, 11246u);
    return vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -353f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-144f)) * 563f), _wgslsmith_f_op_f32(999f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-730f * -827f))), 955f);
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> Struct_2 {
    global0 = array<Struct_2, 20>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + 1f) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(arg_0.x, arg_1.a)), arg_1.a, !arg_2)))));
    var var_1 = vec2<bool>(~min(u_input.b, u_input.b >> (u_input.a % 32u)) >= firstLeadingBit(u_input.c), false);
    var_1 = !vec2<bool>(_wgslsmith_sub_i32(2617i, _wgslsmith_mult_i32(0i, 2260i)) != reverseBits(abs(u_input.b)), arg_2);
    let var_2 = var_0;
    return global0[_wgslsmith_index_u32(1u, 20u)];
}

fn func_6(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: vec2<bool>) -> vec4<bool> {
    global0 = array<Struct_2, 20>();
    let var_0 = arg_2.a;
    let var_1 = _wgslsmith_mod_vec2_i32(~firstLeadingBit(max(vec2<i32>(u_input.c, -1i), vec2<i32>(-9938i, -16528i))), abs(vec2<i32>(2147483647i, ~u_input.c))) | _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(countOneBits(u_input.b), u_input.c), reverseBits(abs(vec2<i32>(u_input.b, -2147483647i))), max(select(vec2<i32>(-1i, -11225i), vec2<i32>(-6519i, -2147483647i), false), reverseBits(vec2<i32>(-22515i, 0i)))), ~min(firstLeadingBit(vec2<i32>(-2147483647i, u_input.b)), abs(vec2<i32>(u_input.b, 94783i))));
    global0 = array<Struct_2, 20>();
    global0 = array<Struct_2, 20>();
    return vec4<bool>(true && arg_3.x, arg_3.x, !any(select(select(vec4<bool>(false, arg_2.b, arg_2.b, false), vec4<bool>(arg_2.b, true, arg_3.x, false), false), vec4<bool>(arg_3.x, arg_3.x, arg_2.b, false), !vec4<bool>(false, arg_2.b, arg_2.b, false))), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(_wgslsmith_dot_vec2_u32(select(~vec2<u32>(1u, 1u), firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 26440u), vec2<u32>(u_input.a, u_input.a))), false), countOneBits((vec2<u32>(u_input.a, 4294967295u) ^ vec2<u32>(52022u, 4294967295u)) << (countOneBits(vec2<u32>(2788u, u_input.a)) % vec2<u32>(32u)))), _wgslsmith_mult_vec3_u32(vec3<u32>(reverseBits(4294967295u), firstLeadingBit(u_input.a), ~u_input.a), countOneBits(abs(vec3<u32>(u_input.a, 68667u, u_input.a)))) << (~max(vec3<u32>(u_input.a, u_input.a, u_input.a), ~vec3<u32>(15344u, u_input.a, 1u)) % vec3<u32>(32u)), func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_1()), vec4<f32>(1f, 1f, 1f, 1f), true)) + vec4<f32>(1f, 1f, 1f, 1f)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-119f, 362f, false)) - _wgslsmith_f_op_f32(642f * -398f))), true, Struct_1(-960f)), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true))));
    let var_1 = -28667i;
    var var_2 = vec2<u32>(u_input.a, 69143u);
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(734f, _wgslsmith_f_op_f32(f32(-1f) * -399f), -705f));
    let var_4 = func_5(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, func_5(vec4<f32>(979f, var_3.x, var_3.x, var_3.x), Struct_1(var_3.x), false, Struct_1(var_3.x)).a.a, var_3.x, _wgslsmith_f_op_f32(ceil(var_3.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_3.x, 1634f, var_3.x))))), func_5(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) + _wgslsmith_f_op_f32(var_3.x + -238f)), var_3.x, _wgslsmith_f_op_f32(-var_3.x), -1000f), func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_3.x, -2145f, 812f)), Struct_1(var_3.x), all(vec4<bool>(true, var_0.x, false, false)), func_5(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(504f, var_3.x, var_3.x, 740f), vec4<f32>(var_3.x, var_3.x, -2292f, var_3.x), false)), func_5(vec4<f32>(522f, 1674f, var_3.x, -1296f), Struct_1(var_3.x), var_0.x, Struct_1(515f)).a, !var_0.x, func_5(vec4<f32>(1760f, var_3.x, -924f, var_3.x), Struct_1(1511f), true, Struct_1(941f)).a).a).a, var_0.x, func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-2201f, var_3.x, var_3.x, 144f), vec4<f32>(-2597f, -147f, var_3.x, var_3.x)))), Struct_1(_wgslsmith_f_op_vec4_f32(func_1()).x), var_3.x >= 1217f, Struct_1(_wgslsmith_f_op_f32(exp2(var_3.x)))).a).a, !(769f <= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_3.x * var_3.x)))), Struct_1(-1714f)).a;
    var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(trunc(927f)), _wgslsmith_f_op_vec4_f32(func_1()).x, _wgslsmith_f_op_f32(956f * -352f))))));
    let var_5 = ~(~5269u << (_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(u_input.a, 49589u), ~0u, 4294967295u), ~vec3<u32>(u_input.a, 0u, 7308u)) % 32u));
    let var_6 = func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.a, var_4.a, 1703f, -2180f) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_4.a, 1380f, var_3.x, var_3.x))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(511f, -1911f, var_3.x, -364f)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, var_3.x, -1580f, 1242f), vec4<f32>(-1545f, -657f, -401f, -1676f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(726f, 1548f, -1705f, -1000f) + vec4<f32>(var_3.x, 2370f, -276f, 690f)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_4.a, var_4.a, 423f, var_4.a)))))), var_4, func_5(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-801f, var_3.x, -162f, var_4.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1900f, 440f, -447f, -1320f)), false)), Struct_1(2705f), any(!var_0.wzz), var_4).b, func_5(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1017f, var_3.x))), var_4.a, var_3.x, _wgslsmith_f_op_f32(-418f - _wgslsmith_div_f32(-418f, 1000f))), func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, var_3.x, var_4.a, 1379f) - vec4<f32>(var_4.a, var_4.a, var_3.x, var_4.a)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(844f, var_3.x, -284f, var_3.x))), func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.a, -1106f, var_4.a, var_4.a)), Struct_1(var_3.x), var_0.x, Struct_1(var_3.x)).a, var_0.x, Struct_1(_wgslsmith_f_op_f32(-var_4.a))).a, true, var_4).a).a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_div_f32(1971f, 482f))))) * _wgslsmith_f_op_f32(var_6.a * _wgslsmith_f_op_f32(-var_6.a))));
}

