struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec4<f32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: Struct_1,
    d: vec2<u32>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: f32,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<i32, 24>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2(arg_0: vec3<bool>, arg_1: f32) -> u32 {
    global1 = array<i32, 24>();
    global0 = u_input.c;
    var var_0 = !arg_0.x;
    var var_1 = select(~u_input.c, 0u, arg_0.x);
    var var_2 = Struct_3(vec2<bool>(!((i32(-1i) * -259i) == firstTrailingBit(-24158i)), arg_0.x));
    return ~countOneBits(u_input.c) ^ min(u_input.c, ~4294967295u);
}

fn func_3(arg_0: vec2<i32>, arg_1: f32) -> vec2<i32> {
    global0 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(~reverseBits(vec4<u32>(9842u, 1u, 0u, u_input.c)), firstLeadingBit(vec4<u32>(u_input.c, u_input.c, 23303u, 32769u) ^ vec4<u32>(1u, 27539u, 0u, 0u))), u_input.c, reverseBits(_wgslsmith_clamp_u32(13942u & u_input.c, _wgslsmith_sub_u32(1u, u_input.c), u_input.c)), 1u), select(~(~vec4<u32>(92603u, u_input.c, u_input.c, 38436u)) ^ abs(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, 0u, u_input.c, u_input.c), vec4<u32>(u_input.c, 4294967295u, u_input.c, u_input.c))), _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 42825u, 50472u, 4294967295u) & vec4<u32>(u_input.c, 1u, u_input.c, u_input.c), ~vec4<u32>(1u, 4294967295u, u_input.c, u_input.c)), ~(~vec4<u32>(88822u, u_input.c, u_input.c, 33425u)), select(~vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), ~vec4<u32>(0u, 15796u, 24716u, 4294967295u), vec4<bool>(true, true, true, true))), false));
    global0 = _wgslsmith_mult_u32(~(_wgslsmith_mult_u32(10696u, u_input.c) & 4294967295u), u_input.c) >> (u_input.c % 32u);
    var var_0 = Struct_5(Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -472f), ~(abs(arg_0.x) << (u_input.c % 32u)), arg_1));
    var_0 = Struct_5(var_0.a);
    let var_1 = abs(vec4<i32>(-3141i, 1i, -(~global1[_wgslsmith_index_u32(u_input.c, 24u)] >> (~1u % 32u)), global1[_wgslsmith_index_u32(~12147u, 24u)]));
    return -(~(~(var_1.yx >> (vec2<u32>(u_input.c, 62584u) % vec2<u32>(32u))) >> (firstLeadingBit(vec2<u32>(19529u, 1u)) % vec2<u32>(32u))));
}

fn func_1() -> Struct_1 {
    global0 = abs(u_input.c);
    global0 = ~(~_wgslsmith_sub_u32(u_input.c, 29371u | func_2(vec3<bool>(true, true, true), -259f)));
    let var_0 = _wgslsmith_dot_vec2_i32(func_3(vec2<i32>(u_input.b.x, ~_wgslsmith_add_i32(-20557i, u_input.a.x)), -584f), u_input.a);
    let var_1 = u_input.c;
    var var_2 = Struct_4(_wgslsmith_f_op_f32(max(-1178f, -415f)), _wgslsmith_dot_vec4_i32(min(max(vec4<i32>(var_0, var_0, 18951i, u_input.b.x), vec4<i32>(0i, 0i, var_0, -19712i)), ~vec4<i32>(var_0, -1i, 1i, -1i)) & -vec4<i32>(u_input.a.x, var_0, u_input.a.x, 1i), vec4<i32>(_wgslsmith_add_i32(~(-33009i), var_0), u_input.b.x, _wgslsmith_add_i32(-21825i, global1[_wgslsmith_index_u32(func_2(vec3<bool>(false, true, true), 638f), 24u)]), -firstLeadingBit(var_0))), -355f);
    return Struct_1(!(!select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(false, true), false))), u_input.b.x, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1057f + var_2.c) * var_2.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(900f)), 521f)), var_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c) * -1413f)), -697f), ~var_1, !select(_wgslsmith_f_op_f32(-var_2.c) < _wgslsmith_f_op_f32(exp2(var_2.a)), (-8203i < var_2.b) && true, true | all(vec4<bool>(true, false, true, false))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec3<i32>, arg_3: Struct_2) -> Struct_4 {
    global1 = array<i32, 24>();
    global0 = _wgslsmith_add_u32(firstLeadingBit(u_input.c), abs(0u));
    global0 = 38438u;
    var var_0 = _wgslsmith_mod_vec2_u32(abs(arg_3.d), _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(1u, 31800u), arg_0.d), arg_0.d), min((vec2<u32>(8003u, arg_3.d.x) ^ vec2<u32>(0u, 104601u)) << ((arg_3.d & arg_3.d) % vec2<u32>(32u)), vec2<u32>(reverseBits(u_input.c), _wgslsmith_add_u32(u_input.c, 0u)))));
    var var_1 = arg_3.d;
    return Struct_4(arg_0.c.x, 16923i, -1000f);
}

fn func_5(arg_0: Struct_5, arg_1: Struct_4, arg_2: vec4<f32>) -> Struct_4 {
    let var_0 = _wgslsmith_mult_i32(max(func_3(_wgslsmith_sub_vec2_i32(~u_input.a, vec2<i32>(arg_0.a.b, u_input.a.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-2218f + -1358f)))).x, _wgslsmith_mod_i32(2147483647i, _wgslsmith_dot_vec3_i32(~vec3<i32>(arg_1.b, 0i, u_input.a.x), vec3<i32>(10951i, -1i, arg_0.a.b) >> (vec3<u32>(u_input.c, 0u, 24781u) % vec3<u32>(32u))))), arg_0.a.b);
    let var_1 = func_4(func_1(), _wgslsmith_add_vec4_i32(~(-(vec4<i32>(var_0, 53168i, arg_0.a.b, arg_1.b) ^ vec4<i32>(arg_1.b, -73379i, var_0, -17525i))), vec4<i32>(func_4(func_1(), vec4<i32>(1i, arg_1.b, 0i, global1[_wgslsmith_index_u32(2924u, 24u)]), _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, var_0, u_input.b.x), vec3<i32>(-1i, 1i, -11386i)), Struct_2(vec2<i32>(arg_1.b, arg_0.a.b), false, Struct_1(vec2<bool>(true, true), 20899i, arg_2, 0u, true), vec2<u32>(33137u, 4294967295u), arg_2)).b, global1[_wgslsmith_index_u32(u_input.c, 24u)], 2147483647i, -var_0 | var_0)), _wgslsmith_clamp_vec3_i32(select(_wgslsmith_div_vec3_i32(select(vec3<i32>(-2147483647i, 0i, arg_1.b), vec3<i32>(1i, global1[_wgslsmith_index_u32(1u, 24u)], -1i), true), max(vec3<i32>(0i, -10725i, -2147483647i), vec3<i32>(global1[_wgslsmith_index_u32(0u, 24u)], -30402i, arg_1.b))), _wgslsmith_mod_vec3_i32(-vec3<i32>(arg_0.a.b, 2147483647i, 1469i), vec3<i32>(-2147483647i, 0i, 6373i)), vec3<bool>(true, true, true)), countOneBits(vec3<i32>(~19968i, -53925i, -71360i)), -abs(vec3<i32>(arg_1.b, 41381i, u_input.a.x)) & vec3<i32>(~1i, arg_1.b, _wgslsmith_mod_i32(1i, -13052i))), Struct_2(vec2<i32>(firstLeadingBit(2147483647i), -2147483647i), false, func_1(), reverseBits(abs(vec2<u32>(35418u, 1u))) & min(vec2<u32>(u_input.c, u_input.c), _wgslsmith_add_vec2_u32(vec2<u32>(0u, u_input.c), vec2<u32>(u_input.c, 21122u))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2267f, arg_2.x, arg_0.a.a, 1000f) * vec4<f32>(arg_2.x, -176f, -485f, arg_2.x))), arg_2, vec4<bool>(true, true, true, true)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.zx * _wgslsmith_f_op_vec2_f32(floor(arg_2.xz))));
    var var_3 = Struct_1(!(!func_1().a), 0i, arg_2, 0u, _wgslsmith_mult_u32(~u_input.c, (u_input.c | u_input.c) | ~u_input.c) > (u_input.c | func_1().d));
    let var_4 = min(1i, var_1.b);
    return Struct_4(arg_1.a, func_1().b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.a)) - arg_0.a.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -reverseBits(vec3<i32>(u_input.a.x, 40444i, ~(-41130i))) | firstTrailingBit(~(-vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 24u)], u_input.a.x, 2147483647i)));
    var var_1 = func_5(Struct_5(func_4(func_1(), vec4<i32>(-1i) * -vec4<i32>(-29497i, global1[_wgslsmith_index_u32(72770u, 24u)], 13509i, -11679i), -max(vec3<i32>(u_input.b.x, var_0.x, var_0.x), vec3<i32>(2147483647i, 11069i, -24265i)), Struct_2(_wgslsmith_mult_vec2_i32(var_0.zz, vec2<i32>(3536i, -1i)), false, func_1(), ~vec2<u32>(4294967295u, 4294967295u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1148f, -1342f, 1379f, -259f))))), func_4(Struct_1(vec2<bool>(all(vec4<bool>(true, true, false, true)), false), (global1[_wgslsmith_index_u32(u_input.c, 24u)] ^ -2147483647i) >> (9192u % 32u), vec4<f32>(_wgslsmith_f_op_f32(-1662f - -760f), 1f, _wgslsmith_f_op_f32(f32(-1f) * -123f), 333f), 99701u, true), vec4<i32>(30443i, 1i, _wgslsmith_dot_vec2_i32(u_input.a, var_0.yy), u_input.b.x) ^ _wgslsmith_mod_vec4_i32(abs(vec4<i32>(u_input.a.x, var_0.x, global1[_wgslsmith_index_u32(u_input.c, 24u)], 18688i)), -vec4<i32>(40710i, global1[_wgslsmith_index_u32(u_input.c, 24u)], 2147483647i, u_input.b.x)), _wgslsmith_add_vec3_i32(vec3<i32>(18711i, 22911i, -27289i), _wgslsmith_mult_vec3_i32(vec3<i32>(24020i, global1[_wgslsmith_index_u32(15528u, 24u)], global1[_wgslsmith_index_u32(51239u, 24u)]), vec3<i32>(var_0.x, var_0.x, 1i))) ^ vec3<i32>(1i, 1i, -2147483647i), Struct_2(~_wgslsmith_add_vec2_i32(vec2<i32>(-24155i, 32043i), vec2<i32>(u_input.b.x, -17018i)), false, func_1(), max(vec2<u32>(55313u, u_input.c) & vec2<u32>(u_input.c, u_input.c), abs(vec2<u32>(u_input.c, u_input.c))), _wgslsmith_f_op_vec4_f32(max(func_1().c, func_1().c)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-457f + -494f) - _wgslsmith_f_op_f32(step(701f, 593f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1483f, 360f)) - _wgslsmith_f_op_f32(round(-290f))), _wgslsmith_f_op_f32(trunc(739f)), -732f) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(275f, -1438f, -312f, 1000f))) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-244f, -1052f, -225f, -732f)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -582f), _wgslsmith_f_op_f32(min(-910f, -879f)), _wgslsmith_f_op_f32(-731f * -129f)), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), false)))));
    var var_2 = Struct_1(vec2<bool>(!(~(-2147483647i) < abs(var_0.x)), true), 4475i, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-644f + 1275f) * _wgslsmith_f_op_f32(-300f + _wgslsmith_f_op_f32(-var_1.c))), 824f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_1.c, 350f), _wgslsmith_f_op_f32(938f - -709f))), 580f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_1.a)), _wgslsmith_f_op_f32(max(var_1.a, var_1.a))) + var_1.a)), min(74319u, u_input.c), any(select(select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), true)), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), false)));
    let var_3 = Struct_5(Struct_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -463f), -2400f)), var_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.c.x)))));
    var_1 = Struct_4(_wgslsmith_div_f32(var_1.a, 1f), _wgslsmith_div_i32(_wgslsmith_clamp_i32(-2147483647i, ~firstLeadingBit(u_input.b.x), reverseBits(var_1.b)), var_3.a.b), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_3.a.c - _wgslsmith_f_op_f32(var_2.c.x * var_3.a.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) - _wgslsmith_f_op_f32(abs(var_1.c))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-825f + _wgslsmith_f_op_f32(sign(var_2.c.x))), _wgslsmith_f_op_f32(f32(-1f) * -282f)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b, ~max((vec3<i32>(-17498i, 22081i, var_1.b) ^ vec3<i32>(2147483647i, u_input.a.x, 0i)) >> (_wgslsmith_add_vec3_u32(vec3<u32>(var_2.d, 1u, 0u), vec3<u32>(u_input.c, var_2.d, u_input.c)) % vec3<u32>(32u)), vec3<i32>(max(u_input.b.x, 1i), _wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(0u, 24u)], 23879i, 0i), vec3<i32>(2147483647i, var_2.b, u_input.a.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.a.x), vec2<i32>(-20278i, 63083i)))), 0i);
}

