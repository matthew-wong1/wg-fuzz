struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18> = array<f32, 18>(262f, -703f, -2222f, -334f, -751f, -303f, -380f, 1000f, 1000f, 966f, -309f, 1000f, -1653f, -1261f, -1090f, -581f, -477f, 1000f);

var<private> global1: array<u32, 31>;

var<private> global2: i32;

var<private> global3: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(vec3<bool>(true, false, false), Struct_1(vec4<bool>(true, false, true, false), true)), Struct_2(vec3<bool>(true, true, true), Struct_1(vec4<bool>(false, false, true, true), false)), Struct_2(vec3<bool>(false, false, false), Struct_1(vec4<bool>(true, true, false, true), false)), Struct_2(vec3<bool>(false, false, true), Struct_1(vec4<bool>(true, true, true, false), true)), Struct_2(vec3<bool>(true, true, true), Struct_1(vec4<bool>(true, false, false, true), true)), Struct_2(vec3<bool>(false, false, false), Struct_1(vec4<bool>(false, true, true, false), true)), Struct_2(vec3<bool>(true, true, true), Struct_1(vec4<bool>(true, false, false, false), true)), Struct_2(vec3<bool>(true, false, false), Struct_1(vec4<bool>(true, false, true, false), true)), Struct_2(vec3<bool>(false, true, true), Struct_1(vec4<bool>(true, true, false, true), false)), Struct_2(vec3<bool>(false, false, true), Struct_1(vec4<bool>(false, true, false, false), false)), Struct_2(vec3<bool>(true, false, true), Struct_1(vec4<bool>(false, true, true, false), true)), Struct_2(vec3<bool>(false, true, true), Struct_1(vec4<bool>(false, false, false, false), true)), Struct_2(vec3<bool>(false, true, false), Struct_1(vec4<bool>(true, true, true, false), false)), Struct_2(vec3<bool>(true, true, false), Struct_1(vec4<bool>(true, false, true, true), true)), Struct_2(vec3<bool>(true, false, false), Struct_1(vec4<bool>(true, true, false, false), true)));

var<private> global4: i32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<bool>) -> vec3<u32> {
    var var_0 = select(~_wgslsmith_sub_vec4_u32(firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 10239u, 34313u, 1u), vec4<u32>(42188u, global1[_wgslsmith_index_u32(46621u, 31u)], 5327u, 80215u))), vec4<u32>(global1[_wgslsmith_index_u32(1u, 31u)], _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 26995u, 36937u), vec3<u32>(4903u, u_input.a.x, 1u)), firstTrailingBit(global1[_wgslsmith_index_u32(u_input.a.x, 31u)]), ~u_input.a.x)), vec4<u32>(26007u, abs(1694u), max(_wgslsmith_add_u32(~u_input.a.x, firstLeadingBit(u_input.a.x)), _wgslsmith_clamp_u32(~30634u, _wgslsmith_mod_u32(u_input.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 31u)], 31u)], 31u)], 31u)]), global1[_wgslsmith_index_u32(85213u, 31u)])), u_input.a.x), !vec4<bool>(false, false, arg_1.x, true));
    let var_1 = Struct_4(true, _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(firstTrailingBit(24880u), 18u)], -575f)), Struct_3((_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global1[_wgslsmith_index_u32(35582u, 31u)], 8213u, 1u), vec4<u32>(u_input.a.x, 31249u, 14125u, var_0.x)) < select(var_0.x, 38041u, false)) & arg_1.x, Struct_1(select(select(vec4<bool>(false, true, true, arg_1.x), vec4<bool>(true, false, false, arg_1.x), vec4<bool>(true, true, arg_1.x, arg_1.x)), select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(true, false, true, arg_1.x), false), any(vec4<bool>(true, true, false, true))), -10458i < -u_input.b.x), !vec4<bool>(arg_1.x, all(vec3<bool>(false, arg_1.x, true)), true, arg_1.x || false)));
    global2 = 1i;
    global3 = array<Struct_2, 15>();
    global2 = u_input.b.x << (var_0.x % 32u);
    return ~firstLeadingBit(vec3<u32>(1u, abs(1u), ~(~var_0.x)));
}

fn func_4(arg_0: f32, arg_1: vec3<u32>) -> u32 {
    let var_0 = Struct_1(!vec4<bool>(any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true)), true, true, true), -u_input.c.x > reverseBits(u_input.c.x));
    var var_1 = Struct_1(select(vec4<bool>(_wgslsmith_div_u32(4294967295u, arg_1.x) < ~arg_1.x, !all(var_0.a.yxx), !var_0.a.x, !any(vec3<bool>(var_0.a.x, true, var_0.b))), vec4<bool>(var_0.b, 1i != u_input.b.x, !any(var_0.a), var_0.b), var_0.b), true);
    let var_2 = abs(0u);
    global3 = array<Struct_2, 15>();
    global0 = array<f32, 18>();
    return _wgslsmith_add_u32(~4294967295u, ~u_input.a.x);
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec4<u32>, arg_3: vec3<f32>) -> f32 {
    let var_0 = select(vec3<u32>(4294967295u, abs(global1[_wgslsmith_index_u32(countOneBits(arg_2.x & arg_1), 31u)]), firstTrailingBit(firstLeadingBit(abs(1u)))), vec3<u32>(min(_wgslsmith_add_u32(1u, select(global1[_wgslsmith_index_u32(arg_1, 31u)], 1u, false)), func_4(global0[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(arg_2.x, 31u)], 18u)], func_3(arg_3, arg_0.a.wz))), arg_2.x, ~_wgslsmith_div_u32(u_input.a.x, arg_2.x)), arg_0.a.wwy);
    let var_1 = !select(!select(vec4<bool>(arg_0.a.x, true, true, arg_0.b), arg_0.a, arg_0.a), !vec4<bool>(true, arg_0.b, arg_0.b, true), vec4<bool>(true, !(arg_0.b || false), any(arg_0.a.xx), !arg_0.b));
    let var_2 = vec4<i32>(abs(u_input.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(1i & -u_input.b.x, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2304i, u_input.b.x, u_input.b.x), vec3<i32>(12568i, u_input.b.x, -8990i)), 1i), -u_input.b.x, u_input.c.x), min(-vec4<i32>(13262i, u_input.b.x, 2147483647i, u_input.c.x) ^ abs(vec4<i32>(24264i, 1i, u_input.c.x, u_input.b.x)), -vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, -2147483647i))), abs(_wgslsmith_clamp_i32(min(u_input.b.x, u_input.c.x), u_input.b.x, ~(~u_input.c.x))), _wgslsmith_sub_i32(~_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.c.x, u_input.b.x), u_input.c), _wgslsmith_mod_i32(1i, _wgslsmith_sub_i32(u_input.c.x, u_input.c.x))));
    var var_3 = !select(arg_0.a.xx, var_1.zy, !(!(arg_0.b || false)));
    var var_4 = -12455i;
    return 264f;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_4) -> Struct_1 {
    let var_0 = Struct_4(!all(select(vec2<bool>(false, arg_0.b), !vec2<bool>(true, arg_0.a.x), arg_0.b)), arg_1.x, arg_2.c);
    global4 = u_input.c.x;
    let var_1 = vec4<bool>(func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, arg_2.b, -591f)) - vec3<f32>(-1459f, global0[_wgslsmith_index_u32(u_input.a.x, 18u)], -1195f)), select(vec2<bool>(arg_2.a, var_0.a), vec2<bool>(arg_0.b, false), !arg_2.c.c.zx)).x >= (29115u | _wgslsmith_sub_u32(1u, ~global1[_wgslsmith_index_u32(4294967295u, 31u)])), _wgslsmith_f_op_f32(max(arg_1.x, -420f)) >= 971f, false, arg_0.a.x);
    var var_2 = u_input.b & _wgslsmith_div_vec2_i32(vec2<i32>(-29634i, u_input.b.x), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b.x, 27562i), ~_wgslsmith_clamp_vec2_i32(u_input.c, vec2<i32>(u_input.c.x, u_input.c.x), u_input.b)));
    var var_3 = vec3<i32>(-1i, var_2.x, 5953i);
    return var_0.c.b;
}

fn func_1(arg_0: i32) -> Struct_4 {
    let var_0 = Struct_4(true, 851f, Struct_3(true, func_5(Struct_1(vec4<bool>(true, true, true, true), false), vec2<f32>(_wgslsmith_f_op_f32(func_2(Struct_1(vec4<bool>(false, true, true, true), false), global1[_wgslsmith_index_u32(1u, 31u)], vec4<u32>(0u, global1[_wgslsmith_index_u32(0u, 31u)], global1[_wgslsmith_index_u32(0u, 31u)], u_input.a.x), vec3<f32>(global0[_wgslsmith_index_u32(0u, 18u)], global0[_wgslsmith_index_u32(4294967295u, 18u)], global0[_wgslsmith_index_u32(u_input.a.x, 18u)]))), global0[_wgslsmith_index_u32(2249u, 18u)]), Struct_4(true, -1371f, Struct_3(false, Struct_1(vec4<bool>(true, false, false, true), true), vec4<bool>(false, true, false, true)))), vec4<bool>(true, true, all(vec2<bool>(true, true)), all(vec2<bool>(true, true)))));
    let var_1 = _wgslsmith_mod_i32(abs(1i), max(~u_input.c.x, _wgslsmith_div_i32(-8974i, arg_0)));
    let var_2 = var_0;
    let var_3 = max(u_input.c, vec2<i32>(~_wgslsmith_mod_i32(_wgslsmith_add_i32(0i, -1i), select(2147483647i, u_input.c.x, var_0.c.a)), -abs(var_1)));
    var var_4 = Struct_4(false, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_sub_u32(~u_input.a.x, ~10630u)), 18u)] - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1407f - var_0.b))) + _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-2152f, 155f))))), Struct_3(all(var_2.c.c), func_5(var_0.c.b, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(2144f, -593f), vec2<f32>(-1284f, var_2.b))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1703f, 501f), vec2<f32>(var_2.b, -655f)))), Struct_4(true, _wgslsmith_f_op_f32(var_0.b * 910f), var_0.c)), var_2.c.b.a));
    return Struct_4(var_4.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_2.b)), var_0.b))), Struct_3(true, Struct_1(select(var_2.c.b.a, vec4<bool>(var_4.a, var_4.c.c.x, var_4.a, true), var_2.c.b.a), var_4.c.b.a.x), vec4<bool>(var_4.c.a, var_0.c.b.b, true && any(vec4<bool>(var_4.c.b.b, var_4.a, false, false)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    var var_1 = true;
    let var_2 = func_1(abs(~_wgslsmith_mult_i32(1i, 0i << (u_input.a.x % 32u))));
    let var_3 = !(!var_2.c.b.a);
    var var_4 = vec4<bool>(all(vec2<bool>(false, !(var_0.x == u_input.c.x))), true, !(var_2.a || var_2.c.a), func_5(var_2.c.b, vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2.b - -823f))), -420f), func_1(abs(-u_input.c.x))).b);
    let var_5 = vec2<u32>(_wgslsmith_sub_u32(firstTrailingBit(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(61153u, 31u)], 31u)] ^ ~u_input.a.x), global1[_wgslsmith_index_u32(77408u, 31u)]), 101483u);
    let var_6 = var_2.c;
    global4 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b)) - -2330f), _wgslsmith_f_op_f32(func_2(var_2.c.b, ~global1[_wgslsmith_index_u32(~reverseBits(u_input.a.x), 31u)], abs(vec4<u32>(79708u, ~54956u, ~var_5.x, u_input.a.x)), vec3<f32>(_wgslsmith_f_op_f32(-420f * -456f), var_2.b, 745f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, _wgslsmith_f_op_f32(round(392f))) + vec2<f32>(_wgslsmith_div_f32(-857f, global0[_wgslsmith_index_u32(63424u, 18u)]), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 31u)], 18u)]))));
}

