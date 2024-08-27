struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: bool = false;

var<private> global2: vec3<bool> = vec3<bool>(true, true, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32, arg_1: vec3<u32>) -> vec2<i32> {
    let var_0 = Struct_3(Struct_2(all(select(!vec3<bool>(global2.x, global2.x, true), !vec3<bool>(global2.x, false, false), true)), ~max(~global0.wxx, ~vec3<u32>(u_input.c, arg_1.x, 83453u)), Struct_1(vec2<u32>(u_input.c, 4294967295u) & global0.ww)));
    global2 = !(!vec3<bool>(true, global2.x, true & all(vec4<bool>(var_0.a.a, var_0.a.a, global2.x, true))));
    let var_1 = vec3<bool>(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(1258f * _wgslsmith_f_op_f32(f32(-1f) * -1068f)))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(237f, 483f, global2.x)) + _wgslsmith_f_op_f32(f32(-1f) * -439f))), var_0.a.a, global2.x);
    global2 = !select(var_1, var_1, select(!select(var_1, var_1, var_0.a.a), var_1, var_1));
    global0 = vec4<u32>(4294967295u, 25374u, global0.x, 1u);
    return vec2<i32>(_wgslsmith_div_i32(-2147483647i, arg_0), reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, arg_0, -1i), ~vec3<i32>(arg_0, arg_0, -2147483647i)))) >> (global0.xz % vec2<u32>(32u));
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: vec3<u32>, arg_3: vec2<i32>) -> bool {
    var var_0 = Struct_2(arg_1.x, arg_2, Struct_1(countOneBits(firstTrailingBit(min(arg_2.zy, arg_2.yy)))));
    var var_1 = Struct_2((global2.x && arg_1.x) || !(_wgslsmith_f_op_f32(select(1634f, 361f, false)) == -399f), ~vec3<u32>(6190u, 80612u, 5856u), Struct_1(vec2<u32>(1u, countOneBits(_wgslsmith_mod_u32(arg_2.x, 10473u)))));
    var var_2 = all(vec3<bool>(false, select(true, false, var_0.a), !var_0.a != var_0.a));
    let var_3 = Struct_3(Struct_2(true, firstTrailingBit(firstLeadingBit(var_0.b | vec3<u32>(30160u, 40291u, global0.x))), Struct_1(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(28967u, 1u), var_0.c.a), ~var_1.c.a))));
    var var_4 = -20223i;
    return var_1.a;
}

fn func_5(arg_0: vec2<bool>, arg_1: bool, arg_2: vec4<bool>) -> vec4<u32> {
    global1 = arg_1;
    global0 = _wgslsmith_mod_vec4_u32(reverseBits(~vec4<u32>(min(1u, 4294967295u), 4294967295u, 82159u, 39404u)), vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, global0.x, 115756u), ~global0.zww), vec3<u32>(u_input.c, u_input.a, global0.x >> (u_input.b % 32u))), _wgslsmith_sub_u32(firstLeadingBit(global0.x), select(0u, _wgslsmith_dot_vec2_u32(global0.zz, vec2<u32>(0u, 0u)), false)), 45643u, 0u));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -327f) + _wgslsmith_div_f32(-738f, -375f)) * -507f), -479f, false)) * -371f);
    global0 = vec4<u32>(global0.x, u_input.c, 10634u, global0.x);
    let var_1 = select(global2.x, !arg_0.x, true);
    return select(~(firstTrailingBit(vec4<u32>(0u, 4294967295u, u_input.c, global0.x)) << (vec4<u32>(41135u, ~global0.x, ~4294967295u, 0u) % vec4<u32>(32u))), vec4<u32>(~4294967295u, 14581u, ~max(0u, u_input.b) & global0.x, global0.x), all(vec2<bool>(true, true)));
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_1(~global0.zz);
    var var_1 = global0.wyy;
    var var_2 = func_5(vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1668f, 341f, true)) * _wgslsmith_f_op_f32(round(1548f))) < _wgslsmith_f_op_f32(f32(-1f) * -1278f), global2.x & false), global2.x != func_4(!global2.x, !vec4<bool>(global2.x, false, true, true), _wgslsmith_div_vec3_u32(vec3<u32>(global0.x, u_input.b, 0u) >> (vec3<u32>(72961u, 112795u, var_1.x) % vec3<u32>(32u)), vec3<u32>(u_input.c, var_0.a.x, global0.x) | global0.wyz), func_3(_wgslsmith_mult_i32(0i, 2147483647i), vec3<u32>(u_input.b, u_input.c, u_input.b))), vec4<bool>(true, !(global2.x | !global2.x), true, true));
    global0 = func_5(vec2<bool>(!(true && all(global2.xx)), true), any(vec4<bool>(true, !select(global2.x, global2.x, true), global2.x, all(vec4<bool>(false, global2.x, global2.x, true)))), !vec4<bool>(global2.x, false, func_4(true, select(vec4<bool>(global2.x, global2.x, global2.x, true), vec4<bool>(global2.x, global2.x, true, global2.x), global2.x), global0.yxx, _wgslsmith_add_vec2_i32(vec2<i32>(2892i, 2147483647i), vec2<i32>(-1i, -2147483647i))), all(!vec3<bool>(global2.x, false, global2.x))));
    var var_3 = -(min(~vec3<i32>(2147483647i, -2147483647i, -35688i), _wgslsmith_sub_vec3_i32(-vec3<i32>(-64374i, -22454i, 25351i), ~vec3<i32>(3754i, 0i, 0i))) << (~_wgslsmith_mult_vec3_u32(select(vec3<u32>(var_1.x, 9254u, 10576u), vec3<u32>(1u, var_2.x, 0u), vec3<bool>(global2.x, false, global2.x)), global0.wyw) % vec3<u32>(32u)));
    return Struct_3(Struct_2(true, vec3<u32>(8655u, var_1.x, abs(var_0.a.x)), Struct_1(~(vec2<u32>(4294967295u, 0u) | var_0.a))));
}

fn func_6(arg_0: Struct_3, arg_1: bool) -> vec4<u32> {
    global0 = countOneBits(vec4<u32>(1u, ~arg_0.a.c.a.x, 4294967295u, 4294967295u));
    var var_0 = arg_0.a;
    var_0 = Struct_2(select(any(vec3<bool>(false, false, any(global2.zy))), any(!select(vec3<bool>(global2.x, global2.x, false), vec3<bool>(var_0.a, arg_0.a.a, var_0.a), arg_1)), !(!arg_0.a.a)), func_2().a.b, func_2().a.c);
    let var_1 = true;
    var_0 = arg_0.a;
    return _wgslsmith_sub_vec4_u32(select(select(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.c.a.x, 4294967295u, u_input.b, 1369u), vec4<u32>(u_input.a, 1u, arg_0.a.b.x, 47362u)), reverseBits(max(vec4<u32>(19176u, 96904u, u_input.a, var_0.b.x), vec4<u32>(var_0.b.x, 19142u, arg_0.a.c.a.x, 23065u))), vec4<bool>(true, func_2().a.a, true, false)), vec4<u32>(46888u, 4294967295u, ~var_0.c.a.x, _wgslsmith_dot_vec3_u32(~global0.wxw, vec3<u32>(u_input.a, 53980u, 27477u))), true), vec4<u32>(func_5(!select(global2.xz, vec2<bool>(true, false), vec2<bool>(true, true)), false, vec4<bool>(false, false, false, func_4(arg_0.a.a, vec4<bool>(true, arg_1, true, var_0.a), var_0.b, vec2<i32>(-1i, -55179i)))).x, abs(0u), ~(~(~0u)), ~1u));
}

fn func_1() -> StorageBuffer {
    var var_0 = !vec3<bool>(false, global2.x, global2.x);
    var_0 = !(!(!vec3<bool>(true, false & global2.x, any(vec4<bool>(true, var_0.x, global2.x, var_0.x)))));
    var var_1 = _wgslsmith_dot_vec4_u32(func_6(func_2(), max(_wgslsmith_mod_i32(2147483647i, 16513i), i32(-1i) * -1i) != _wgslsmith_add_i32(43411i, firstTrailingBit(9950i))), _wgslsmith_add_vec4_u32(~_wgslsmith_mod_vec4_u32(~vec4<u32>(1u, 2274u, global0.x, 4294967295u), vec4<u32>(0u, u_input.a, 0u, u_input.c) ^ vec4<u32>(global0.x, u_input.c, 56615u, 0u)), func_5(select(var_0.yx, vec2<bool>(global2.x, var_0.x), !global2.yy), true, select(select(vec4<bool>(false, var_0.x, false, false), vec4<bool>(true, false, var_0.x, true), vec4<bool>(var_0.x, global2.x, var_0.x, true)), select(vec4<bool>(var_0.x, true, true, var_0.x), vec4<bool>(global2.x, var_0.x, true, true), false), var_0.x))));
    var var_2 = Struct_1(abs(func_2().a.c.a));
    var var_3 = u_input.c;
    return StorageBuffer(vec3<u32>(u_input.b, max(~(var_2.a.x << (var_2.a.x % 32u)), 1u >> (abs(0u) % 32u)), min(u_input.b, 1u)), abs(~var_2.a), var_2.a.x & countOneBits(9812u | (24115u ^ global0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec3_i32(-vec3<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(-9809i, 52376i, 1i, -5932i), vec4<i32>(15905i, -27718i, 27966i, -2147483647i)), 1i, _wgslsmith_mod_i32(~57230i, -2147483647i)), firstLeadingBit(-vec3<i32>(2147483647i, select(30997i, 49079i, global2.x), _wgslsmith_div_i32(-22651i, -19935i))));
    let x = u_input.a;
    s_output = func_1();
}

