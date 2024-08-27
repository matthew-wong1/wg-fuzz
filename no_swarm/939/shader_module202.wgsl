struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: f32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25> = array<bool, 25>(false, false, false, true, false, true, false, true, true, true, false, false, true, false, true, false, true, false, false, true, false, false, false, false, false);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec4<i32>) -> f32 {
    global0 = array<bool, 25>();
    let var_0 = -670f;
    let var_1 = Struct_1(arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.b))));
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(206f, _wgslsmith_f_op_f32(floor(arg_1.b)))))));
    var var_3 = -_wgslsmith_sub_i32(arg_0 & arg_2.x, _wgslsmith_mult_i32(_wgslsmith_sub_i32(arg_2.x, arg_0), 1i));
    return var_0;
}

fn func_2() -> Struct_1 {
    global0 = array<bool, 25>();
    let var_0 = Struct_1(select(select(!select(vec2<bool>(false, global0[_wgslsmith_index_u32(14354u, 25u)]), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 25u)], true), vec2<bool>(global0[_wgslsmith_index_u32(2295u, 25u)], global0[_wgslsmith_index_u32(36877u, 25u)])), select(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 25u)]), vec2<bool>(true, false), vec2<bool>(true, true)), !all(vec4<bool>(false, true, false, true))), select(!select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 25u)], true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 25u)], true), global0[_wgslsmith_index_u32(34626u, 25u)]), select(vec2<bool>(true, false), select(vec2<bool>(global0[_wgslsmith_index_u32(51454u, 25u)], false), vec2<bool>(true, false), false), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 25u)])), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x >> (0u % 32u), 1u), 25u)]), vec2<bool>(true, false)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(879f + 1414f), _wgslsmith_f_op_f32(f32(-1f) * -576f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(109f)) * _wgslsmith_f_op_f32(func_3(-2147483647i, Struct_1(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 25u)], false), -217f), vec4<i32>(-2147483647i, -2147483647i, -2147483647i, -1i)))), false)))));
    global0 = array<bool, 25>();
    global0 = array<bool, 25>();
    global0 = array<bool, 25>();
    return Struct_1(vec2<bool>(true, true), _wgslsmith_div_f32(683f, _wgslsmith_f_op_f32(-889f + var_0.b)));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: f32, arg_3: vec3<u32>) -> Struct_1 {
    var var_0 = Struct_1(func_2().a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)));
    global0 = array<bool, 25>();
    var_0 = func_2();
    var var_1 = func_2();
    global0 = array<bool, 25>();
    return func_2();
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: Struct_1) -> bool {
    var var_0 = vec2<f32>(-367f, _wgslsmith_f_op_f32(-arg_3.b));
    var_0 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(-arg_3.b))));
    var var_1 = ~select(_wgslsmith_mod_i32(24364i, select(1i, firstTrailingBit(0i), arg_3.a.x)), -6298i, false);
    var var_2 = _wgslsmith_mod_i32(1i, -7342i);
    let var_3 = 1000f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.b)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(1947f + 1412f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b + arg_0.b))));
    return arg_0.a.x;
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: u32) -> vec2<bool> {
    let var_0 = func_5(Struct_1(!vec2<bool>(!global0[_wgslsmith_index_u32(arg_2, 25u)], true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(655f - 619f) + _wgslsmith_f_op_f32(350f + 1192f)))), func_4(func_2(), _wgslsmith_sub_u32(u_input.a.x, arg_1 | ~arg_1), -1000f, ~u_input.a), u_input.a.zx, Struct_1(func_2().a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1838f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1196f - 722f) * -1501f))));
    var var_1 = reverseBits(reverseBits(max(u_input.a.zx, ~(vec2<u32>(arg_0, 1u) | u_input.a.zy))));
    var var_2 = func_2();
    global0 = array<bool, 25>();
    global0 = array<bool, 25>();
    return func_2().a;
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(arg_2.a, _wgslsmith_f_op_f32(f32(-1f) * -1295f));
    let var_1 = vec4<bool>(arg_1.a.x, !arg_1.a.x, func_2().a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-560f * arg_1.b)))) > -757f);
    let var_2 = arg_1;
    var var_3 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-330f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -973f)))));
    let var_4 = var_0;
    return func_2();
}

fn func_7(arg_0: vec4<f32>, arg_1: i32, arg_2: f32, arg_3: Struct_1) -> bool {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(reverseBits(1u), u_input.a.x), 25u)];
    var var_1 = ~39046u;
    var var_2 = max(~min(vec4<u32>(~10436u, u_input.a.x, u_input.a.x, u_input.a.x & 2885u), ~abs(vec4<u32>(u_input.a.x, 0u, 22620u, 0u))), (vec4<u32>(firstTrailingBit(0u), ~4294967295u, _wgslsmith_add_u32(11378u, 57998u), ~u_input.a.x) ^ ~vec4<u32>(u_input.a.x, 4294967295u, 25754u, 14986u)) >> (~reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 89583u, u_input.a.x, u_input.a.x), vec4<u32>(6399u, u_input.a.x, u_input.a.x, u_input.a.x))) % vec4<u32>(32u)));
    let var_3 = 4294967295u;
    var var_4 = _wgslsmith_f_op_f32(ceil(arg_2));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -55241i;
    let var_1 = Struct_1(vec2<bool>(func_7(vec4<f32>(_wgslsmith_f_op_f32(floor(-1687f)), -279f, _wgslsmith_f_op_f32(ceil(1701f)), -733f), _wgslsmith_sub_i32(_wgslsmith_mult_i32(var_0, var_0), _wgslsmith_mod_i32(14115i, var_0)), _wgslsmith_f_op_f32(max(1235f, _wgslsmith_f_op_f32(f32(-1f) * -334f))), func_6(func_1(0u, u_input.a.x, 3906u), Struct_1(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 25u)], global0[_wgslsmith_index_u32(u_input.a.x, 25u)]), 660f), func_2())), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2().b)) - 1337f));
    let var_2 = select(u_input.a, u_input.a, global0[_wgslsmith_index_u32(12632u, 25u)]);
    global0 = array<bool, 25>();
    var var_3 = ~_wgslsmith_clamp_vec4_u32(~_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, var_2.x, var_2.x), vec4<u32>(var_2.x, u_input.a.x, var_2.x, u_input.a.x)), vec4<u32>(0u, 4294967295u, 1u, 38383u) & vec4<u32>(1u, var_2.x, 14092u, 20895u), vec4<u32>(4294967295u, var_2.x, var_2.x, 134113u)), vec4<u32>(_wgslsmith_mod_u32(1u, max(0u, 4294967295u)), _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, 139591u, var_2.x, u_input.a.x), vec4<u32>(u_input.a.x, 1381u, u_input.a.x, 9390u) ^ vec4<u32>(var_2.x, var_2.x, u_input.a.x, var_2.x)), 42544u, ~(~u_input.a.x)), select(vec4<u32>(1u, 1u, 1u, var_2.x) ^ vec4<u32>(u_input.a.x, u_input.a.x, 36760u, 64228u), vec4<u32>(var_2.x, var_2.x, 8936u, 4294967295u), any(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 25u)], false, true))) << (~vec4<u32>(30441u, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u)));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1014f * 1201f), _wgslsmith_f_op_f32(round(var_1.b)), _wgslsmith_f_op_f32(f32(-1f) * -909f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b, -287f, -771f))))));
    let var_5 = func_2();
    var_3 = ~(select(firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 1u, 1u, 4294967295u), vec4<u32>(4294967295u, 34848u, u_input.a.x, 1u))), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 1u, 4294967295u, var_3.x) & vec4<u32>(70467u, var_2.x, 4294967295u, var_3.x), _wgslsmith_div_vec4_u32(vec4<u32>(63404u, var_3.x, 80947u, 0u), vec4<u32>(18666u, var_3.x, u_input.a.x, var_3.x))), false) ^ vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(1u, u_input.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(var_3.x, 51488u), vec2<u32>(0u, var_3.x)), ~50042u), 44954u, var_3.x, countOneBits(u_input.a.x)));
    var_3 = ~vec4<u32>(min(abs(var_3.x), ~_wgslsmith_mod_u32(var_3.x, 0u)), reverseBits(~1u), select(0u, var_2.x, true), firstTrailingBit(1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1775f, -388f, var_1.b, 708f)), firstTrailingBit(~var_2), 1401f, reverseBits(min(min(vec2<i32>(var_0, var_0), vec2<i32>(var_0, var_0)), vec2<i32>(var_0, var_0) & vec2<i32>(var_0, var_0)) << (vec2<u32>(~var_2.x, max(21044u, 4294967295u)) % vec2<u32>(32u))), _wgslsmith_f_op_f32(f32(-1f) * -320f));
}

