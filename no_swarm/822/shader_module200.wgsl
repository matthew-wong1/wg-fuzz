struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
    c: i32,
    d: vec3<f32>,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_3,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 27>;

var<private> global1: array<vec4<f32>, 3> = array<vec4<f32>, 3>(vec4<f32>(1354f, 2048f, 1103f, 1129f), vec4<f32>(-1240f, 136f, 799f, 595f), vec4<f32>(-1964f, -313f, -1031f, -1000f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> i32 {
    var var_0 = arg_2.b.x;
    var_0 = false;
    var_0 = !any(vec3<bool>(all(vec3<bool>(false, arg_0.b.x, true)), false, arg_2.b.x | arg_2.b.x)) || select(true, all(!vec2<bool>(false, arg_2.b.x)), select(arg_0.b.x, arg_0.b.x, false));
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1225f, 1376f, 1447f)))), ~0u, (u_input.d << (0u % 32u)) | -76674i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(968f, -2236f, 262f) * vec3<f32>(-580f, -353f, 478f))))) - vec3<f32>(146f, _wgslsmith_f_op_f32(f32(-1f) * -154f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1315f))))));
    let var_2 = _wgslsmith_sub_i32(1i, arg_0.a);
    return -select(~2147483647i, firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2, arg_2.a, u_input.d, 1i), vec4<i32>(-26072i, -11011i, var_1.c, arg_0.a))), true);
}

fn func_4(arg_0: i32) -> u32 {
    var var_0 = vec2<i32>(-1i, abs(arg_0));
    var var_1 = Struct_1(-_wgslsmith_add_i32(arg_0 & var_0.x, 4100i), vec3<bool>(true, true, true));
    var var_2 = Struct_5(vec3<i32>(max(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -1i, u_input.c), vec3<i32>(var_0.x, arg_0, var_1.a) << (u_input.b % vec3<u32>(32u))), arg_0), var_1.a, 1i), Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1555f, 576f, 1492f)) * _wgslsmith_div_vec3_f32(vec3<f32>(579f, -601f, -1216f), vec3<f32>(364f, -1538f, -1289f)))), select(6426u, max(_wgslsmith_add_u32(111u, 0u), ~u_input.b.x), false), _wgslsmith_sub_i32(arg_0, -1i), vec3<f32>(-1715f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1079f), -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1168f, -361f)) + _wgslsmith_f_op_f32(min(-1125f, 622f))))), !vec2<bool>(false, select(false, any(vec4<bool>(var_1.b.x, false, false, var_1.b.x)), var_1.b.x)));
    let var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(-var_2.b.a), var_2.b.b, ~_wgslsmith_mult_i32(reverseBits(0i), select(var_0.x, ~var_0.x, true)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.b.d.x, -1532f, var_2.b.a.x), vec3<f32>(1281f, var_2.b.a.x, var_2.b.d.x)))) * vec3<f32>(var_2.b.d.x, _wgslsmith_div_f32(-2076f, -758f), _wgslsmith_f_op_f32(-var_2.b.d.x))), vec3<f32>(_wgslsmith_f_op_f32(min(-557f, -815f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1128f))), var_2.b.d.x))));
    let var_4 = var_2.c.x;
    return _wgslsmith_dot_vec4_u32(~vec4<u32>(select(u_input.a.x, 4294967295u, var_2.c.x), 4294967295u, _wgslsmith_dot_vec3_u32(u_input.b, u_input.b), ~116396u), vec4<u32>(u_input.b.x, min(4294967295u, firstLeadingBit(1615u)), ~firstLeadingBit(var_2.b.b), _wgslsmith_clamp_u32(~1u, 4294967295u, ~var_3.b))) >> (select(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x | 0u, 0u), u_input.a & u_input.a), var_3.b, var_2.c.x || var_2.c.x) % 32u);
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: bool, arg_3: f32) -> Struct_4 {
    global0 = array<vec2<bool>, 27>();
    let var_0 = 323f;
    let var_1 = vec3<u32>(_wgslsmith_mult_u32(24909u, ~u_input.a.x ^ (0u | u_input.a.x)), u_input.a.x, func_4(func_3(Struct_1(-10501i, vec3<bool>(false, false, false)), ~u_input.b.x, Struct_1(u_input.d, vec3<bool>(arg_0, true, true))))) >> ((vec3<u32>(u_input.b.x, u_input.b.x, ~_wgslsmith_mod_u32(6731u, u_input.b.x)) | _wgslsmith_div_vec3_u32(abs(firstLeadingBit(u_input.b)), abs(u_input.b))) % vec3<u32>(32u));
    var var_2 = Struct_1(_wgslsmith_sub_i32(func_3(Struct_1(-32789i, vec3<bool>(true, false, arg_1)), _wgslsmith_div_u32(30900u, ~u_input.b.x), Struct_1(~(-1i), !vec3<bool>(false, false, arg_2))), ~2147483647i), !(!(!select(vec3<bool>(arg_2, arg_1, true), vec3<bool>(true, arg_2, arg_0), vec3<bool>(true, true, arg_2)))));
    var_2 = Struct_1(0i, !vec3<bool>(~var_1.x != _wgslsmith_mod_u32(1u, u_input.a.x), _wgslsmith_f_op_f32(f32(-1f) * -715f) > _wgslsmith_f_op_f32(var_0 - -3933f), arg_1 | any(vec4<bool>(true, false, var_2.b.x, true))));
    return Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0, 2800f))));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_1, arg_2: f32, arg_3: vec3<u32>) -> vec4<bool> {
    return !(!(!vec4<bool>(true, true, true, arg_1.b.x)));
}

fn func_6(arg_0: vec4<bool>) -> Struct_4 {
    global1 = array<vec4<f32>, 3>();
    var var_0 = !vec3<bool>(arg_0.x, firstLeadingBit(min(0u, u_input.a.x)) > u_input.b.x, !any(select(arg_0, arg_0, arg_0.x)));
    var var_1 = 939f;
    let var_2 = var_0.x;
    var var_3 = Struct_5(~_wgslsmith_clamp_vec3_i32(~vec3<i32>(u_input.d, -87331i, u_input.c), firstTrailingBit(~vec3<i32>(-20121i, u_input.c, 2147483647i)), vec3<i32>(0i, _wgslsmith_add_i32(u_input.c, -14132i), _wgslsmith_mult_i32(4235i, u_input.c))), Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1022f, -790f, 745f) - vec3<f32>(1294f, 2708f, 361f))))), 1u, 1i, _wgslsmith_div_vec3_f32(vec3<f32>(-360f, _wgslsmith_f_op_f32(sign(-189f)), _wgslsmith_f_op_f32(trunc(-1000f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1539f, -1437f, -1836f)), vec3<f32>(-1000f, -474f, -335f))))), select(!vec2<bool>(select(false, false, arg_0.x), arg_0.x), select(!var_0.yz, vec2<bool>(var_0.x, all(global0[_wgslsmith_index_u32(1u, 27u)])), all(select(vec3<bool>(true, var_0.x, true), vec3<bool>(true, arg_0.x, arg_0.x), var_0.x))), arg_0.zw));
    return Struct_4(var_3.b.d.x);
}

fn func_1(arg_0: Struct_3) -> Struct_1 {
    let var_0 = Struct_4(arg_0.d.x);
    global1 = array<vec4<f32>, 3>();
    var var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -723f)));
    let var_2 = reverseBits(u_input.c);
    var_1 = func_6(select(vec4<bool>(all(vec4<bool>(true, true, true, true)), true, true, true), vec4<bool>(true, all(global0[_wgslsmith_index_u32(4294967295u, 27u)]), all(vec4<bool>(true, true, false, true)) | true, true & select(false, false, false)), func_5(func_2(all(vec3<bool>(true, false, true)), true, false, var_0.a), Struct_1(u_input.d, vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(select(-454f, var_1.a, true)), vec3<u32>(u_input.a.x, arg_0.b, 4294967295u) >> (~u_input.b % vec3<u32>(32u)))));
    return Struct_1(reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(firstLeadingBit(-37971i), abs(-2147483647i)), ~(vec2<i32>(2617i, 24277i) ^ vec2<i32>(-2147483647i, arg_0.c)))), !(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), func_5(Struct_4(var_0.a), Struct_1(u_input.d, vec3<bool>(false, false, true)), var_0.a, vec3<u32>(68534u, u_input.b.x, 0u)).xyw)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 27>();
    global0 = array<vec2<bool>, 27>();
    global0 = array<vec2<bool>, 27>();
    global1 = array<vec4<f32>, 3>();
    let var_0 = !(!vec3<bool>(any(!global0[_wgslsmith_index_u32(u_input.a.x, 27u)]), true, false));
    global1 = array<vec4<f32>, 3>();
    var var_1 = func_1(Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-833f, -480f, 387f))))), ~(~4294967295u), -_wgslsmith_sub_i32(u_input.d, _wgslsmith_dot_vec4_i32(vec4<i32>(-43089i, -25909i, u_input.c, u_input.c), vec4<i32>(u_input.d, 0i, -2147483647i, u_input.c))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-322f, -1191f, 1066f), vec3<f32>(835f, 978f, -1365f))))), vec3<f32>(_wgslsmith_f_op_f32(sign(1372f)), 742f, -797f)))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1776f) + -1153f);
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -465f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(173f)), _wgslsmith_f_op_f32(step(1077f, 1000f)), true)), _wgslsmith_f_op_f32(f32(-1f) * -1636f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(198f, -598f, false)), _wgslsmith_f_op_f32(f32(-1f) * -313f), true)))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(101f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(142f * 175f) + _wgslsmith_f_op_f32(sign(272f))), -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(918f, _wgslsmith_f_op_f32(f32(-1f) * -1381f)))));
}

