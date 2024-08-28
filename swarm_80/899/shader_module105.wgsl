struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(736f);

var<private> global1: u32;

var<private> global2: vec4<i32> = vec4<i32>(0i, i32(-2147483648), 2147483647i, -10545i);

var<private> global3: i32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: u32, arg_1: Struct_4, arg_2: bool) -> Struct_3 {
    var var_0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(174f, _wgslsmith_f_op_f32(trunc(410f)))) - _wgslsmith_f_op_f32(-global0.a))));
    global3 = 31545i;
    var var_1 = 670f;
    var var_2 = vec3<bool>(true, arg_2 | !arg_1.a.c.b, any(vec2<bool>(!arg_2, true)) && arg_1.a.c.b);
    global3 = abs(-35932i);
    return Struct_3(max(arg_1.a.a, 59031u), arg_1.a.b, Struct_1(global2.yz, true, _wgslsmith_f_op_f32(global0.a - global0.a)), vec3<i32>(global2.x, global2.x, ~u_input.e.x));
}

fn func_1() -> Struct_4 {
    var var_0 = _wgslsmith_sub_vec2_u32(~(~vec2<u32>(min(u_input.c, 1u), ~8369u)), firstLeadingBit(vec2<u32>(u_input.d.x, abs(u_input.b.x))));
    var_0 = vec2<u32>(select(~(~u_input.d.x), _wgslsmith_sub_u32(0u, var_0.x), true), 65038u);
    let var_1 = u_input.e;
    global2 = vec4<i32>(_wgslsmith_div_i32(firstTrailingBit(_wgslsmith_mult_i32(global2.x ^ 1i, var_1.x ^ 19543i)), 0i), 1i, var_1.x, u_input.e.x);
    var var_2 = Struct_1(u_input.e ^ vec2<i32>(select(-47067i, 0i, all(vec4<bool>(false, true, false, false))), global2.x), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(select(u_input.d.ww, u_input.b.yw, vec2<bool>(false, false)), _wgslsmith_add_vec2_u32(u_input.b.zw, vec2<u32>(var_0.x, u_input.c))), _wgslsmith_div_u32(~94469u, var_0.x << (0u % 32u))) != (max(_wgslsmith_div_u32(4294967295u, 1u), var_0.x) & ~1u), _wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(-global0.a)));
    return Struct_4(func_2(countOneBits(max(75656u, u_input.d.x)), Struct_4(Struct_3(var_0.x, var_2.b, Struct_1(vec2<i32>(2147483647i, var_2.a.x), var_2.b, -206f), global2.zxy)), true));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1, arg_2: u32) -> f32 {
    global3 = arg_0.a.d.x;
    var var_0 = Struct_4(arg_0.a);
    var var_1 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(618f))), _wgslsmith_div_f32(_wgslsmith_div_f32(-1000f, arg_1.c), -1696f))));
    global3 = func_1().a.d.x;
    let var_2 = vec4<i32>(_wgslsmith_add_i32(abs(min(18895i, 23226i)), -21060i), -(u_input.e.x | ~var_0.a.d.x), -(i32(-1i) * -2147483647i), abs(-(-2147483647i ^ var_0.a.c.a.x))) | (vec4<i32>(abs(global2.x << (arg_0.a.a % 32u)), ~(-1i), _wgslsmith_add_i32(var_0.a.d.x, global2.x) << ((var_0.a.a & arg_2) % 32u), u_input.e.x) ^ _wgslsmith_mod_vec4_i32(-vec4<i32>(-2147483647i, 2147483647i, global2.x, arg_0.a.c.a.x), vec4<i32>(var_0.a.d.x, arg_0.a.c.a.x, arg_1.a.x, ~58242i)));
    return var_1.a;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_5) -> Struct_1 {
    global2 = firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e.x, -1i), u_input.e) & abs(-2147483647i), 0i >> ((1u >> (arg_1.a.a % 32u)) % 32u), abs(global2.x), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_1.a.c.a.x, arg_0.c.a.x, u_input.e.x), vec3<i32>(1i, arg_1.a.d.x, arg_1.a.c.a.x)), min(arg_1.a.d, vec3<i32>(arg_0.c.a.x, u_input.e.x, -34106i)))), vec4<i32>(_wgslsmith_mult_i32(-arg_0.c.a.x, arg_0.c.a.x | arg_0.c.a.x), global2.x, _wgslsmith_div_i32(-15704i, 1i), _wgslsmith_mod_i32(arg_0.c.a.x, arg_0.c.a.x)), vec4<i32>(~arg_0.c.a.x & _wgslsmith_sub_i32(global2.x, 49512i), ~u_input.e.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(15191u, u_input.b.x), u_input.d.xw) % 32u), arg_1.a.c.a.x, ~reverseBits(8163i))));
    let var_0 = -_wgslsmith_add_i32(global2.x, select(-1i << (~arg_1.a.a % 32u), -1i, any(!vec2<bool>(arg_1.a.b, false))));
    var var_1 = vec2<bool>(true, false);
    global2 = -_wgslsmith_mod_vec4_i32(-vec4<i32>(-2147483647i, -73357i, arg_0.c.a.x, arg_0.c.a.x), vec4<i32>(_wgslsmith_clamp_i32(-36245i, var_0, u_input.e.x), 2147483647i, ~arg_0.c.a.x, ~(-1i))) >> (~(~u_input.b) % vec4<u32>(32u));
    global0 = arg_2;
    return Struct_1(arg_1.a.c.a, false, -441f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_2(!(!all(vec3<bool>(true, false, true))), true, Struct_1(u_input.e, all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(global0.a * 776f)), _wgslsmith_f_op_f32(func_3(func_1(), func_2(~106190u, func_1(), true).c, 38753u))), func_1(), Struct_5(_wgslsmith_f_op_f32(1130f - _wgslsmith_f_op_f32(sign(1336f)))));
    global0 = Struct_5(-1463f);
    var var_1 = Struct_2(~func_1().a.a > 1u, var_0.b, Struct_1(-func_4(Struct_2(var_0.b, var_0.b, Struct_1(vec2<i32>(u_input.e.x, 26002i), var_0.b, -1720f), -696f), func_1(), Struct_5(-156f)).a, false, _wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(-func_2(14026u, Struct_4(Struct_3(19365u, var_0.b, Struct_1(vec2<i32>(-2147483647i, u_input.e.x), var_0.b, var_0.c), vec3<i32>(30582i, u_input.e.x, -10605i))), false).c.c))), var_0.c);
    global0 = Struct_5(func_4(Struct_2(var_0.b, 1i == _wgslsmith_mod_i32(26521i, var_1.c.a.x), Struct_1(firstTrailingBit(vec2<i32>(global2.x, -12671i)), var_0.b, _wgslsmith_f_op_f32(var_1.c.c + -1354f)), _wgslsmith_f_op_f32(-func_4(Struct_2(var_1.a, var_1.c.b, Struct_1(vec2<i32>(-24172i, global2.x), false, var_1.d), global0.a), Struct_4(Struct_3(78090u, true, Struct_1(var_1.c.a, false, global0.a), vec3<i32>(var_0.a.x, 2147483647i, u_input.e.x))), Struct_5(-1000f)).c)), func_1(), Struct_5(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(global0.a)))))).c);
    var var_2 = !select(!select(vec3<bool>(var_1.b, var_1.a, var_1.a), !vec3<bool>(var_1.b, var_0.b, var_1.c.b), vec3<bool>(true, var_1.c.b, var_1.b)), vec3<bool>(!any(vec2<bool>(false, true)), true, any(!vec2<bool>(var_0.b, var_0.b))), !(!(!vec3<bool>(var_1.c.b, false, var_0.b))));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<i32>(abs(-u_input.e.x), -select(var_1.c.a.x, var_1.c.a.x, true), _wgslsmith_dot_vec2_i32(global2.zz, abs(vec2<i32>(var_0.a.x, 15542i))), global2.x), vec4<i32>(abs(1i), -25198i, func_2(~u_input.c, func_1(), true).c.a.x, _wgslsmith_div_i32(-58400i, var_0.a.x)), !(!select(true, true, var_2.x))), -19760i, vec2<u32>(~firstTrailingBit(~49715u), u_input.a));
}

