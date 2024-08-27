struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: i32,
    d: vec3<bool>,
}

struct Struct_4 {
    a: f32,
    b: vec2<bool>,
    c: Struct_3,
    d: vec4<f32>,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<u32>,
    c: Struct_2,
    d: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(20041u), Struct_2(2147483647i, Struct_1(27501u), false, Struct_1(1430u), -895f), i32(-2147483648), vec3<bool>(true, false, false));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: u32, arg_3: f32) -> vec4<u32> {
    global0 = Struct_3(global0.a, Struct_2(~_wgslsmith_mult_i32(~u_input.e.x, 1i), Struct_1(80661u), !any(global0.d), arg_1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(331f + arg_1.e))), -1i, !(!global0.d));
    var var_0 = global0.d.zx;
    global0 = Struct_3(global0.a, arg_1, _wgslsmith_dot_vec4_i32(u_input.e, vec4<i32>(~arg_1.a, ~(-1i), u_input.e.x, global0.c)), vec3<bool>(!(global0.b.a >= arg_1.a), !var_0.x, true));
    var var_1 = u_input.e.xzy;
    let var_2 = global0.b;
    return vec4<u32>(1u, arg_0.x, 4294967295u, 26757u);
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: i32, arg_3: Struct_1) -> Struct_3 {
    var var_0 = ~(countOneBits(firstLeadingBit(countOneBits(vec4<u32>(4294967295u, 0u, arg_0, 1u)))) | (~func_3(vec2<u32>(28585u, 0u), Struct_2(global0.b.a, global0.a, false, global0.b.b, -105f), 1u, global0.b.e) & vec4<u32>(firstLeadingBit(1u), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, u_input.b), vec2<u32>(global0.a.a, 37209u)), global0.a.a, 0u)));
    global0 = Struct_3(Struct_1(~54998u << (global0.b.d.a % 32u)), global0.b, u_input.e.x, global0.d);
    let var_1 = func_3(vec2<u32>(_wgslsmith_clamp_u32(1u, (122551u | arg_0) >> (_wgslsmith_div_u32(4294967295u, 38251u) % 32u), _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, 0u, 0u, var_0.x)), ~vec4<u32>(42056u, 8424u, var_0.x, global0.a.a))), ~1u), global0.b, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(reverseBits(reverseBits(vec4<u32>(var_0.x, 1u, arg_3.a, u_input.d))), select(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0, arg_3.a, 52442u, 13684u), vec4<u32>(arg_1, 86137u, arg_0, 4294967295u)), firstLeadingBit(vec4<u32>(0u, arg_0, 19585u, u_input.d)), global0.b.c)), _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(60831u, 15877u, 64326u, 18297u), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0, u_input.a, 1u, 9392u), vec4<u32>(var_0.x, arg_1, arg_0, var_0.x))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 36133u, global0.a.a, u_input.b), vec4<u32>(u_input.c, 1u, arg_1, 0u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-521f)) * _wgslsmith_f_op_f32(global0.b.e - 288f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(global0.b.e))))))).x;
    var_0 = vec4<u32>(32522u, arg_1, _wgslsmith_div_u32(_wgslsmith_add_u32(firstTrailingBit(~48318u), u_input.d), 47857u), arg_0);
    var var_2 = false;
    return Struct_3(arg_3, Struct_2(u_input.e.x, Struct_1(4294967295u), _wgslsmith_mod_u32(max(15879u, arg_0), arg_0) < 42835u, Struct_1(_wgslsmith_mod_u32(u_input.b, abs(31269u))), 1105f), i32(-1i) * -select(_wgslsmith_add_i32(17803i, 1i), 29360i, global0.b.c), vec3<bool>(all(vec4<bool>(all(global0.d.yz), true, !global0.b.c, any(global0.d))), false, global0.b.c));
}

fn func_1(arg_0: bool, arg_1: Struct_3, arg_2: bool, arg_3: u32) -> vec2<bool> {
    var var_0 = select(u_input.e.yzy, abs(abs(vec3<i32>(2147483647i, global0.b.a, global0.c))) ^ (vec3<i32>(arg_1.c, -27571i, -5547i) >> (_wgslsmith_add_vec3_u32(vec3<u32>(51419u, global0.a.a, arg_1.a.a), vec3<u32>(27971u, arg_3, 59569u)) % vec3<u32>(32u))), global0.b.e > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.e * global0.b.e))) >> (~vec3<u32>(~87059u, 8251u, global0.a.a) % vec3<u32>(32u));
    var var_1 = any(vec3<bool>(false, !global0.b.c, true));
    let var_2 = Struct_4(arg_1.b.e, vec2<bool>((arg_1.b.c && !arg_2) || false, !arg_1.d.x), func_2(~(51150u << (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(arg_3, 42152u)) % 32u)), _wgslsmith_mod_u32(_wgslsmith_add_u32(firstTrailingBit(arg_1.b.b.a), 4294967295u), ~arg_1.a.a), _wgslsmith_div_i32(_wgslsmith_sub_i32(1i, 2317i), 1i), Struct_1(~1u)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(sign(arg_1.b.e)), _wgslsmith_f_op_f32(round(arg_1.b.e)), global0.b.e, _wgslsmith_f_op_f32(exp2(1f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.b.e))), 1f, 162f, arg_1.b.e), !vec4<bool>(true, all(vec4<bool>(true, false, false, true)), all(vec4<bool>(false, global0.b.c, false, false)), arg_2 | arg_0))), arg_1);
    var var_3 = -29280i;
    var var_4 = vec2<i32>(arg_1.b.a ^ ~countOneBits(4706i), ~_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(var_2.e.c, var_2.c.b.a, global0.b.a)), u_input.e.xxz)) << (vec2<u32>(1u, ~select(arg_3, ~u_input.b, false)) % vec2<u32>(32u));
    return !select(vec2<bool>(true, true), vec2<bool>(false, _wgslsmith_f_op_f32(var_2.a + -1000f) <= _wgslsmith_f_op_f32(global0.b.e - var_2.c.b.e)), arg_1.d.xz);
}

fn func_4(arg_0: Struct_5) -> Struct_5 {
    let var_0 = Struct_5(Struct_4(_wgslsmith_f_op_f32(sign(arg_0.d.e.b.e)), func_2(~_wgslsmith_div_u32(0u, 4294967295u), abs(u_input.c << (1u % 32u)), _wgslsmith_clamp_i32(arg_0.c.a, ~global0.b.a, -34853i), global0.a).d.zz, arg_0.a.e, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1136f, _wgslsmith_f_op_f32(max(190f, -544f)), -342f, -1725f))), func_2(~arg_0.b.x >> (~arg_0.d.e.a.a % 32u), u_input.c >> (~0u % 32u), global0.c, func_2(4294967295u, 1u, global0.b.a, Struct_1(global0.a.a)).b.d)), func_3(~(~arg_0.b), Struct_2(firstLeadingBit(19824i), Struct_1(func_3(vec2<u32>(u_input.b, 15719u), Struct_2(u_input.e.x, Struct_1(u_input.c), arg_0.a.c.b.c, Struct_1(85218u), arg_0.c.e), 8503u, -2242f).x), ~global0.b.d.a <= u_input.c, Struct_1(u_input.b | 52893u), global0.b.e), ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global0.a.a, 0u), vec3<u32>(global0.a.a, arg_0.b.x, 50702u)), 0u, 1u), 404f).xy, global0.b, Struct_4(global0.b.e, select(!arg_0.d.b, select(vec2<bool>(false, arg_0.d.e.b.c), vec2<bool>(true, false), vec2<bool>(true, true)), _wgslsmith_f_op_f32(-global0.b.e) > arg_0.c.e), arg_0.a.c, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(arg_0.a.d)) * arg_0.d.d), arg_0.d.d), func_2(_wgslsmith_mod_u32(3235u, 1u), _wgslsmith_sub_u32(min(global0.a.a, global0.a.a), arg_0.d.e.a.a << (arg_0.d.c.b.b.a % 32u)), countOneBits(-43889i) << (_wgslsmith_add_u32(9149u, u_input.b) % 32u), arg_0.c.b)));
    let var_1 = global0.d.x;
    global0 = Struct_3(func_2(95222u, arg_0.b.x, firstLeadingBit(var_0.a.e.c), func_2(57805u, select(arg_0.c.b.a, u_input.d, arg_0.a.e.b.c), -countOneBits(arg_0.d.e.c), func_2(_wgslsmith_add_u32(0u, 4294967295u), arg_0.d.e.a.a, var_0.c.a, func_2(arg_0.d.e.a.a, 78244u, -26907i, var_0.d.e.b.b).b.d).a).a).b.d, func_2(firstTrailingBit(~4294967295u), arg_0.a.e.a.a, ~(-1i), func_2(0u, var_0.c.b.a, u_input.e.x, Struct_1(func_3(vec2<u32>(u_input.b, var_0.c.d.a), Struct_2(var_0.d.c.b.a, Struct_1(4294967295u), var_0.c.c, arg_0.d.e.a, 131f), 11267u, 1111f).x)).b.d).b, _wgslsmith_sub_i32(_wgslsmith_sub_i32(-3616i, _wgslsmith_mod_i32(_wgslsmith_mult_i32(global0.c, 52837i), _wgslsmith_div_i32(global0.c, 0i))), 1i), vec3<bool>(!(!global0.b.c) & arg_0.a.e.b.c, global0.b.e > _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.b.e - -699f), var_0.c.e)), !var_0.c.c));
    let var_2 = 13794u;
    let var_3 = select(countOneBits(~(~max(vec3<u32>(4294967295u, 9324u, global0.b.b.a), vec3<u32>(u_input.c, 0u, u_input.b)))), ~(~(vec3<u32>(var_2, var_2, global0.a.a) >> (vec3<u32>(global0.b.b.a, 19783u, u_input.c) % vec3<u32>(32u)))) << (vec3<u32>(func_2(arg_0.a.e.b.b.a, ~u_input.a, u_input.e.x, arg_0.d.c.a).a.a, ~58854u, var_0.d.c.a.a) % vec3<u32>(32u)), arg_0.d.e.d);
    return Struct_5(var_0.d, arg_0.b, func_2(4294967295u, _wgslsmith_mod_u32((global0.b.b.a ^ var_2) | 4294967295u, global0.a.a), ~arg_0.d.e.c >> (max(_wgslsmith_sub_u32(global0.a.a, var_0.c.b.a), 1u) % 32u), arg_0.d.c.a).b, Struct_4(_wgslsmith_f_op_f32(select(arg_0.c.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.d.a, 1227f)) - _wgslsmith_f_op_f32(-926f + -336f)), true)), var_0.d.b, Struct_3(func_2(~arg_0.b.x, ~1u, -global0.c, Struct_1(arg_0.d.e.b.b.a)).a, arg_0.a.e.b, 0i << (_wgslsmith_div_u32(4294967295u, var_3.x) % 32u), !arg_0.d.c.d), arg_0.a.d, var_0.a.e));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_5(Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(644f + -909f)), select(vec2<bool>(global0.d.x, global0.b.c), func_1(true, Struct_3(Struct_1(global0.b.d.a), Struct_2(global0.b.a, global0.a, true, global0.a, 830f), global0.c, global0.d), true, 59337u), func_2(1u, u_input.b, -1i, global0.b.d).d.zz), func_2(7787u, global0.b.d.a, firstTrailingBit(46116i), func_2(u_input.a, 1u, 5775i, Struct_1(global0.a.a)).b.b), vec4<f32>(706f, -116f, _wgslsmith_f_op_f32(-global0.b.e), -763f), Struct_3(global0.b.d, global0.b, global0.b.a, vec3<bool>(true, true, global0.b.c))), ~reverseBits(~vec2<u32>(9162u, 36929u)), global0.b, Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.b.e))), global0.d.zy, Struct_3(func_2(4294967295u, 4294967295u, u_input.e.x, Struct_1(u_input.c)).b.b, Struct_2(-2147483647i, global0.b.d, false, Struct_1(4294967295u), 396f), -2147483647i, !vec3<bool>(global0.d.x, false, false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1166f, global0.b.e, global0.b.e, global0.b.e)), func_2(min(28969u, global0.a.a), func_3(vec2<u32>(u_input.d, 1u), Struct_2(2147483647i, Struct_1(50570u), global0.b.c, global0.a, -3067f), global0.b.d.a, global0.b.e).x, _wgslsmith_div_i32(global0.b.a, 2147483647i), global0.b.d))));
    let var_1 = select(global0.d.x, false, all(vec3<bool>(func_1(all(var_0.d.b), func_2(u_input.b, var_0.b.x, global0.b.a, Struct_1(1u)), all(vec4<bool>(var_0.d.e.d.x, false, global0.b.c, global0.b.c)), _wgslsmith_mod_u32(global0.a.a, 0u)).x, global0.b.c, !any(vec3<bool>(false, global0.b.c, true)))));
    var var_2 = var_1;
    var var_3 = _wgslsmith_mult_vec4_u32(~vec4<u32>(global0.b.d.a, reverseBits(0u), firstLeadingBit(var_0.c.b.a ^ 4294967295u), u_input.a), select(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(36754u, u_input.a, var_0.a.c.a.a, global0.a.a), vec4<u32>(27440u, var_0.a.e.b.d.a, 49665u, 1u))), vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(global0.b.b.a, 0u), _wgslsmith_mod_u32(u_input.b, 4294967295u)), 1u, var_0.b.x, func_3(func_4(Struct_5(var_0.a, vec2<u32>(25157u, 55207u), Struct_2(var_0.c.a, Struct_1(u_input.a), true, var_0.a.e.b.b, -646f), Struct_4(var_0.d.c.b.e, vec2<bool>(var_0.d.e.b.c, var_1), Struct_3(global0.a, var_0.d.c.b, -5629i, global0.d), vec4<f32>(1364f, -643f, var_0.c.e, 548f), var_0.d.e))).b, Struct_2(37009i, var_0.a.e.a, true, var_0.c.d, var_0.a.a), var_0.b.x & 50960u, _wgslsmith_f_op_f32(f32(-1f) * -766f)).x), select(vec4<bool>(var_0.a.e.b.c, select(var_0.a.e.d.x, global0.b.c, var_0.c.c), true, global0.d.x), select(select(vec4<bool>(false, global0.b.c, false, var_1), vec4<bool>(var_1, false, true, var_1), vec4<bool>(true, false, global0.d.x, true)), select(vec4<bool>(true, true, global0.d.x, false), vec4<bool>(false, true, var_1, true), global0.b.c), !vec4<bool>(global0.b.c, false, var_0.c.c, var_0.c.c)), true)));
    var var_4 = func_4(func_4(Struct_5(func_4(Struct_5(var_0.d, vec2<u32>(var_0.d.c.b.b.a, u_input.c), global0.b, Struct_4(global0.b.e, var_0.d.e.d.xz, Struct_3(var_0.c.d, var_0.c, -8495i, var_0.a.c.d), vec4<f32>(1745f, var_0.d.c.b.e, var_0.c.e, global0.b.e), Struct_3(global0.a, var_0.c, 0i, vec3<bool>(var_1, global0.d.x, var_0.a.e.b.c))))).a, var_0.b, global0.b, Struct_4(_wgslsmith_f_op_f32(-var_0.a.c.b.e), vec2<bool>(true, true), Struct_3(var_0.c.b, global0.b, global0.c, var_0.a.c.d), var_0.a.d, Struct_3(Struct_1(101772u), global0.b, -2147483647i, vec3<bool>(true, global0.d.x, true)))))).a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_0.d.d.wz), vec2<f32>(_wgslsmith_f_op_f32(floor(-1864f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-236f, 416f)), _wgslsmith_f_op_f32(f32(-1f) * -373f))), var_0.c.c)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(918f, var_4.e.b.e), var_4.d.xy, select(global0.d.yx, global0.d.zx, vec2<bool>(true, var_4.c.b.c))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.e.b.e, -708f) - _wgslsmith_f_op_vec2_f32(var_0.a.d.xw - vec2<f32>(-189f, 109f))) + _wgslsmith_div_vec2_f32(vec2<f32>(775f, var_0.a.c.b.e), vec2<f32>(var_4.d.x, var_4.c.b.e))), !vec2<bool>(true, var_0.a.c.d.x && var_4.e.d.x))), 33310i);
}

