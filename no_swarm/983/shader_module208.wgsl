struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
    d: i32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: vec2<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21> = array<i32, 21>(-53740i, 8281i, 16097i, 26063i, i32(-2147483648), i32(-2147483648), 0i, 0i, 0i, 24424i, 1i, -24127i, i32(-2147483648), -1i, -1i, i32(-2147483648), 0i, 0i, -1i, -25623i, -71711i);

var<private> global1: Struct_2 = Struct_2(Struct_1(-1076f, -20159i, 0i, 1i, vec2<f32>(483f, 756f)), Struct_1(-361f, 2147483647i, 0i, -15023i, vec2<f32>(-376f, 658f)), vec4<u32>(0u, 131871u, 1u, 32522u), vec2<u32>(1u, 4294967295u), Struct_1(808f, -10660i, -33725i, -71638i, vec2<f32>(-406f, -1096f)));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: vec2<i32>) -> bool {
    var var_0 = global1.c;
    var_0 = global1.c | ~vec4<u32>(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.d.x, u_input.e, var_0.x), u_input.a)), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, u_input.a.x, global1.d.x), ~vec3<u32>(u_input.a.x, 4294967295u, 4294967295u)), 25602u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(34714u, 4254u), global1.c.yx));
    var_0 = global1.c;
    var var_1 = global1.b;
    var var_2 = any(select(vec3<bool>(true, true, true), vec3<bool>(var_0.x <= (var_0.x & 14285u), true, true), vec3<bool>(true, true, true)));
    return false;
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_1(-260f, 1i, ~global1.a.c, countOneBits(-2147483647i), _wgslsmith_f_op_vec2_f32(vec2<f32>(189f, -944f) + global1.b.e));
    let var_1 = var_0.a;
    let var_2 = _wgslsmith_sub_vec3_u32(u_input.a << (global1.c.wwy % vec3<u32>(32u)), ~(~_wgslsmith_div_vec3_u32(~vec3<u32>(global1.d.x, 0u, 4294967295u), max(u_input.a, global1.c.wwx))));
    global0 = array<i32, 21>();
    global1 = Struct_2(global1.e, global1.a, _wgslsmith_sub_vec4_u32(global1.c, global1.c & firstLeadingBit(vec4<u32>(var_2.x, 47977u, 4294967295u, global1.d.x) << (vec4<u32>(global1.c.x, var_2.x, var_2.x, var_2.x) % vec4<u32>(32u)))), max(u_input.a.zx, _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(countOneBits(global1.c.xy), firstLeadingBit(vec2<u32>(var_2.x, var_2.x))), reverseBits(_wgslsmith_div_vec2_u32(var_2.xx, vec2<u32>(70595u, global1.d.x))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.a.e.x)))), -global0[_wgslsmith_index_u32(u_input.c, 21u)], 1i, 16077i, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.a)) * _wgslsmith_f_op_f32(var_0.a - 981f)), -548f)));
    return select(select(vec4<bool>(!any(vec4<bool>(true, false, false, true)), any(vec3<bool>(true, true, false)), false | (var_0.e.x != global1.b.a), (global1.a.d >> (global1.d.x % 32u)) <= _wgslsmith_mod_i32(7987i, 2147483647i)), select(vec4<bool>(0u != global1.d.x, true, true, select(true, false, true)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false))), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true))), vec4<bool>(true, !any(vec2<bool>(true, false)), !select(true, false, false), true)), select(vec4<bool>(true, true, true, true), !vec4<bool>(147f <= global1.a.e.x, true, true, true), true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0.e.x)), _wgslsmith_f_op_f32(global1.a.e.x - _wgslsmith_f_op_f32(-var_0.a))) < -2163f);
}

fn func_1(arg_0: u32, arg_1: i32) -> i32 {
    var var_0 = countOneBits(-arg_1);
    var var_1 = !select(!vec2<bool>(all(vec3<bool>(true, true, true)), true), !vec2<bool>(true, all(vec2<bool>(false, true))), ~34073u >= u_input.a.x);
    let var_2 = vec4<bool>(var_1.x, func_2(u_input.d.yx), all(select(select(!vec4<bool>(var_1.x, false, false, false), func_3(), select(vec4<bool>(true, true, true, var_1.x), vec4<bool>(var_1.x, true, var_1.x, var_1.x), true)), func_3(), vec4<bool>(false, false, false, true))), !all(!(!vec4<bool>(false, var_1.x, var_1.x, var_1.x))));
    var var_3 = any(vec3<bool>(true, any(var_2.zw), !(global1.b.c != 0i)));
    let var_4 = Struct_1(_wgslsmith_div_f32(-791f, global1.a.e.x), reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, global0[_wgslsmith_index_u32(1u, 21u)], 2147483647i), abs(u_input.d))) >> (global1.c.x % 32u), global1.a.c, 0i, global1.a.e);
    return -13068i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(func_1(1u, countOneBits(2147483647i)), -func_1(min(44663u, 1u), -global0[_wgslsmith_index_u32(global1.d.x, 21u)]), global1.a.c, -(~1i)), vec4<i32>(-_wgslsmith_clamp_i32(2147483647i, global1.e.b, reverseBits(1i)), -u_input.b ^ 1i, -12210i, global1.b.c));
    let var_1 = Struct_2(global1.a, Struct_1(_wgslsmith_f_op_f32(-global1.b.e.x), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(var_0.yzx, var_0.xzx), var_0.yyx), ~_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(1u, 21u)], var_0.x)), ~(~global0[_wgslsmith_index_u32(u_input.e, 21u)] << (global1.d.x % 32u)), max(7591i, var_0.x), vec2<f32>(_wgslsmith_f_op_f32(abs(global1.b.e.x)), _wgslsmith_f_op_f32(ceil(1543f)))), vec4<u32>(~firstLeadingBit(1u), ~u_input.a.x, 33111u, _wgslsmith_add_u32(4294967295u, ~u_input.e & ~global1.c.x)), vec2<u32>(0u, 1u) << ((countOneBits(vec2<u32>(15975u, 0u)) ^ ~(~vec2<u32>(u_input.e, 2901u))) % vec2<u32>(32u)), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(650f, 744f)))), _wgslsmith_div_i32(max(var_0.x, _wgslsmith_add_i32(-22761i, 2147483647i)), 0i), u_input.b, 5241i >> (global1.d.x % 32u), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(global1.b.e)) * vec2<f32>(global1.b.a, 1637f)), global1.a.e))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(556f, -658f, global1.b.a, global1.e.a)))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-250f, -1729f, var_1.a.a, var_1.e.e.x))), any(vec3<bool>(true, true, true)) || true)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -578f), _wgslsmith_f_op_f32(-var_1.b.a), _wgslsmith_f_op_f32(-743f + -1000f), _wgslsmith_f_op_f32(-var_1.e.a)))));
    var var_3 = Struct_2(Struct_1(var_1.a.a, _wgslsmith_dot_vec4_i32(-(var_0 << (vec4<u32>(1u, u_input.a.x, u_input.c, 12866u) % vec4<u32>(32u))), vec4<i32>(-1i) * -var_0), max(~(-2147483647i), -2147483647i | u_input.d.x), _wgslsmith_add_i32(_wgslsmith_add_i32(_wgslsmith_sub_i32(-19203i, global1.e.d), ~global1.e.d), _wgslsmith_mod_i32(abs(-4481i), global0[_wgslsmith_index_u32(1u, 21u)])), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1495f, 1135f), _wgslsmith_f_op_vec2_f32(-var_1.e.e)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.a) * var_2.x), global1.e.c, _wgslsmith_sub_i32(min(58512i, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, global1.c.x), vec2<u32>(u_input.a.x, 4009u)), 21u)]), ~u_input.b & _wgslsmith_div_i32(var_1.b.b, 1i)), _wgslsmith_mult_i32(~(-25644i), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(var_1.d.x, 1u), 21u)]), var_1.b.e), ~var_1.c, ~global1.c.yz, Struct_1(global1.b.e.x, 15596i, -global1.e.c, global1.b.d, _wgslsmith_f_op_vec2_f32(var_2.wx + vec2<f32>(var_2.x, 227f))));
    var_2 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * -593f)), -816f))), -434f, var_1.a.a, _wgslsmith_f_op_f32(exp2(var_3.a.e.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_3.a.a, -1271f, var_3.b.e.x))) - vec3<f32>(var_2.x, -179f, 179f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.xzx - vec3<f32>(var_1.a.a, -680f, 1517f)))))));
}

