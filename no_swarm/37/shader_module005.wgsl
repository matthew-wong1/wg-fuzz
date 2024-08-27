struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: u32) -> f32 {
    let var_0 = ~arg_2;
    let var_1 = Struct_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(120f, -364f), _wgslsmith_div_f32(1000f, 2146f))) + 1000f), 240f)), Struct_2(!any(vec4<bool>(true, true, true, true)), -1155f, Struct_1(vec2<bool>(true, true)), vec2<u32>(countOneBits(var_0 ^ u_input.b), ~_wgslsmith_sub_u32(4294967295u, u_input.b))), Struct_3(_wgslsmith_mod_i32(u_input.c, 2147483647i) ^ -5785i, ~(vec4<i32>(-1i, u_input.c, u_input.a, u_input.c) << (vec4<u32>(30165u, 0u, u_input.b, arg_2) % vec4<u32>(32u))), Struct_1(vec2<bool>(any(vec4<bool>(false, false, true, false)), true))));
    var var_2 = min(-58417i, var_1.c.a ^ -82434i);
    var var_3 = ~select(select(var_1.b.d << (vec2<u32>(0u, 1u) % vec2<u32>(32u)), vec2<u32>(0u, 0u), vec2<bool>(true, true)), ~var_1.b.d, select(select(var_1.b.c.a, vec2<bool>(false, false), var_1.c.c.a.x), var_1.c.c.a, select(vec2<bool>(var_1.b.a, true), vec2<bool>(var_1.c.c.a.x, true), var_1.c.c.a.x))) << (var_1.b.d % vec2<u32>(32u));
    var var_4 = Struct_1(!(!(!(!var_1.b.c.a))));
    return -2189f;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3) -> f32 {
    var var_0 = select(_wgslsmith_f_op_f32(func_3(-1i, u_input.b, ~1u)) >= 1501f, any(select(select(vec4<bool>(false, arg_0.c.a.x, arg_1.c.a.x, true), vec4<bool>(false, true, false, arg_1.c.a.x), -579f < arg_0.b), !vec4<bool>(true, arg_1.c.a.x, arg_1.c.a.x, arg_0.a), !arg_0.a)), true);
    let var_1 = vec3<bool>(true, false, arg_0.a);
    var var_2 = Struct_2(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.b))), arg_1.c, ~(~vec2<u32>(arg_0.d.x, 8454u)) << (select(firstTrailingBit(min(arg_0.d, vec2<u32>(u_input.b, u_input.b))), vec2<u32>(arg_0.d.x, arg_0.d.x), any(vec4<bool>(true, arg_0.c.a.x, arg_0.c.a.x, false))) % vec2<u32>(32u)));
    var var_3 = arg_0;
    var_2 = arg_0;
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-449f, 161f))));
}

fn func_4(arg_0: f32) -> f32 {
    let var_0 = false;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1605f, arg_0, arg_0, -259f)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1098f, arg_0, arg_0, arg_0)))))) * vec4<f32>(_wgslsmith_f_op_f32(ceil(1737f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-962f))), _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(arg_0 * arg_0)), -1233f)));
    let var_2 = Struct_3(_wgslsmith_dot_vec4_i32(max(select(vec4<i32>(-7710i, 13612i, -1i, -2130i), _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, 2147483647i, -1i, -56555i), vec4<i32>(u_input.a, 40540i, u_input.c, -7556i), vec4<i32>(u_input.a, u_input.a, -57683i, 22218i)), vec4<bool>(false, var_0, var_0, true)), vec4<i32>(43533i, _wgslsmith_add_i32(u_input.c, u_input.a), 1i, -2147483647i)), vec4<i32>(u_input.c, ~(-1i), u_input.c, ~abs(u_input.a))), _wgslsmith_sub_vec4_i32(firstLeadingBit(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, -44074i, -43452i, 2147483647i), vec4<i32>(u_input.c, u_input.c, u_input.a, 1i), vec4<i32>(u_input.c, -1i, 12158i, u_input.a)), vec4<i32>(u_input.a, u_input.a, 0i, u_input.c))), countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.a, 1221i, -32513i), vec4<i32>(u_input.a, 2147483647i, 824i, -20484i)) & ~vec4<i32>(16131i, -2147483647i, 1i, u_input.a))), Struct_1(!(!(!vec2<bool>(var_0, var_0)))));
    var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(abs(arg_0)), _wgslsmith_f_op_f32(abs(var_1.x)), _wgslsmith_f_op_f32(min(-1704f, -2281f))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)))))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_div_i32(var_2.b.x, 0i), u_input.b | u_input.b, ~56370u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(663f * var_1.x)) + var_1.x), -1000f), select(!(!select(vec4<bool>(true, true, var_0, false), vec4<bool>(false, var_0, var_0, var_0), vec4<bool>(var_2.c.a.x, true, false, var_2.c.a.x))), vec4<bool>(true, true, all(select(vec3<bool>(true, var_0, false), vec3<bool>(var_0, true, true), vec3<bool>(true, var_2.c.a.x, var_2.c.a.x))), true), select(vec4<bool>(all(vec2<bool>(false, var_0)), true, true, var_2.c.a.x), !vec4<bool>(var_2.c.a.x, var_2.c.a.x, var_2.c.a.x, true), vec4<bool>(true, !var_2.c.a.x, var_2.a >= var_2.b.x, true)))));
    var var_3 = var_2.c;
    return arg_0;
}

fn func_1(arg_0: vec3<bool>, arg_1: i32, arg_2: vec3<u32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_2(true, -591f, Struct_1(vec2<bool>(arg_0.x, arg_0.x)), vec2<u32>(u_input.b, arg_2.x)), Struct_3(-70589i, vec4<i32>(arg_1, -1i, u_input.a, arg_1), Struct_1(vec2<bool>(true, arg_0.x)))))) * _wgslsmith_f_op_f32(min(789f, -511f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(985f, -1000f)) + _wgslsmith_f_op_f32(f32(-1f) * -453f)) * _wgslsmith_f_op_f32(max(-166f, _wgslsmith_f_op_f32(func_3(u_input.c, 91308u, u_input.b))))), false))));
    var var_1 = vec3<i32>(abs(~(~arg_1)), arg_1, arg_1);
    let var_2 = select(arg_0, !arg_0, all(!(!arg_0.yy)));
    let var_3 = Struct_4(603f, Struct_2(any(var_2), -1069f, Struct_1(select(var_2.yx, arg_0.yz, true)), _wgslsmith_mod_vec2_u32(~(~arg_2.xy), _wgslsmith_clamp_vec2_u32(firstLeadingBit(arg_2.zx), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 17080u), vec2<u32>(0u, 72267u)), _wgslsmith_mod_vec2_u32(arg_2.xy, vec2<u32>(8470u, u_input.b))))), Struct_3(max(_wgslsmith_div_i32(-var_1.x, var_1.x), 1i), vec4<i32>(-(1427i << (0u % 32u)), 20419i, _wgslsmith_div_i32(max(29195i, u_input.c), abs(88210i)), ~(u_input.c << (0u % 32u))), Struct_1(arg_0.xy)));
    var_1 = firstTrailingBit(abs(~vec3<i32>(var_3.c.b.x, -14427i, 1i))) >> (~arg_2 % vec3<u32>(32u));
    return _wgslsmith_f_op_f32(max(var_3.b.b, var_3.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(431f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-363f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1524f * -1147f) + _wgslsmith_f_op_f32(f32(-1f) * -199f)) + _wgslsmith_f_op_f32(func_1(vec3<bool>(true, true, true), u_input.a, vec3<u32>(13754u, u_input.b, 4294967295u) ^ vec3<u32>(0u, 15756u, u_input.b)))))));
    var var_1 = Struct_4(-1232f, Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(u_input.c, u_input.b, u_input.b)), -493f, true)) != _wgslsmith_f_op_f32(-956f * -745f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.a, 22168u, u_input.b))), Struct_1(vec2<bool>(any(vec3<bool>(false, true, true)), true)), vec2<u32>(u_input.b, 4294967295u)), Struct_3(reverseBits(~u_input.a), -min(firstTrailingBit(vec4<i32>(-2147483647i, u_input.c, u_input.c, -2147483647i)), -vec4<i32>(-1i, -1i, 33401i, u_input.a)), Struct_1(vec2<bool>(true, true))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-var_1.b.b), _wgslsmith_f_op_f32(abs(var_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1822f)));
    var var_3 = Struct_3(firstLeadingBit(var_1.c.b.x), var_1.c.b | vec4<i32>(_wgslsmith_mod_i32(-2147483647i, 1i), 51844i, ~var_1.c.a, 2147483647i), Struct_1(select(!(!var_1.b.c.a), var_1.b.c.a, var_1.b.c.a)));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -209f));
    var var_5 = vec3<u32>(_wgslsmith_add_u32(~((u_input.b | 111746u) >> ((u_input.b >> (var_1.b.d.x % 32u)) % 32u)), u_input.b), 80015u, 1u);
    var_4 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-830f, var_1.a))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1729f)) - _wgslsmith_f_op_f32(-656f - -529f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(10428u, var_2.ywx, i32(-1i) * -25945i);
}

