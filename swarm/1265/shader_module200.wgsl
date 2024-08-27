struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: bool,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(4714i, -1i, -44551i, 2147483647i);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool) -> vec4<bool> {
    var var_0 = arg_1.a;
    var var_1 = arg_1;
    let var_2 = 1324f;
    global0 = ~(~_wgslsmith_clamp_vec4_i32(-vec4<i32>(var_1.b.a.x, u_input.d, var_1.b.a.x, global0.x), vec4<i32>(var_0.a.x, var_1.a.a.x, arg_1.a.a.x, -23026i), vec4<i32>(arg_0.a.x, var_0.a.x, -79209i, 27806i)) & vec4<i32>(global0.x, 59478i, ~(-var_1.a.a.x), 37161i));
    var var_3 = 18396u;
    return !(!select(select(!vec4<bool>(true, arg_2, true, var_0.c), !vec4<bool>(true, arg_2, arg_0.c, arg_1.a.c), false), !(!vec4<bool>(arg_2, true, var_1.a.c, true)), !(!vec4<bool>(var_0.c, arg_1.b.c, false, arg_1.b.c))));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: bool) -> vec4<i32> {
    let var_0 = vec2<bool>(393f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1740f, arg_0), _wgslsmith_f_op_f32(arg_0 * arg_0)))), any(select(select(!vec4<bool>(arg_2, arg_2, arg_2, arg_2), select(vec4<bool>(arg_2, arg_2, true, arg_2), vec4<bool>(arg_2, true, false, arg_2), vec4<bool>(arg_2, false, true, true)), func_3(Struct_1(vec3<i32>(-20945i, global0.x, 3954i), -1020f, arg_2, vec4<f32>(-110f, 535f, arg_0, arg_0)), Struct_2(Struct_1(global0.yyz, arg_0, arg_2, vec4<f32>(523f, arg_0, arg_0, arg_0)), Struct_1(vec3<i32>(global0.x, u_input.d, arg_1), arg_0, true, vec4<f32>(1264f, arg_0, arg_0, arg_0))), false)), !select(vec4<bool>(true, arg_2, arg_2, arg_2), vec4<bool>(false, arg_2, false, false), vec4<bool>(arg_2, true, arg_2, arg_2)), -arg_1 == _wgslsmith_div_i32(-2147483647i, -11355i))));
    return -select(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(select(vec4<i32>(60729i, 40614i, -2147483647i, u_input.d), vec4<i32>(global0.x, -20i, -1343i, global0.x), vec4<bool>(arg_2, false, arg_2, arg_2)), vec4<i32>(u_input.a, u_input.a, -1771i, global0.x)), vec4<i32>(-2147483647i, _wgslsmith_mult_i32(-2147483647i, u_input.a), 45057i, u_input.d)), vec4<i32>(max(30692i, abs(-35012i)), 12764i, _wgslsmith_mult_i32(_wgslsmith_div_i32(global0.x, arg_1), -1i), ~_wgslsmith_mult_i32(-37448i, -1i)), vec4<bool>(true, true, true, true));
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    global0 = ~select(func_2(_wgslsmith_f_op_f32(step(-997f, 1f)), -min(arg_0.x, -8347i), true), reverseBits(vec4<i32>(_wgslsmith_dot_vec3_i32(global0.wwz, global0.yzw), 57888i, _wgslsmith_add_i32(-1i, arg_0.x), _wgslsmith_mult_i32(u_input.d, arg_0.x))), all(vec3<bool>(true, true, all(vec4<bool>(false, false, false, false)))));
    global0 = ~vec4<i32>(u_input.d, -3885i, -(~(-39110i)), 1i);
    global0 = abs(_wgslsmith_sub_vec4_i32(~vec4<i32>(arg_0.x, _wgslsmith_add_i32(0i, u_input.d), -1i, arg_0.x), _wgslsmith_mod_vec4_i32(~vec4<i32>(arg_0.x, u_input.a, -29200i, global0.x), ~vec4<i32>(global0.x, u_input.d, 10070i, u_input.d) & firstLeadingBit(vec4<i32>(-20628i, global0.x, u_input.a, 2147483647i)))));
    var var_0 = Struct_2(Struct_1(~min(_wgslsmith_div_vec3_i32(vec3<i32>(global0.x, global0.x, arg_0.x), vec3<i32>(global0.x, u_input.d, -9459i)), vec3<i32>(2147483647i, -2147483647i, global0.x)), -915f, true, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -623f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(1169f)), 1422f, true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(370f - 207f), _wgslsmith_f_op_f32(f32(-1f) * -244f))), -1341f)), Struct_1(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-48809i, global0.x, 1i), ~vec3<i32>(23950i, 2147483647i, u_input.a)), -countOneBits(806i), 0i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-452f + -686f) * _wgslsmith_div_f32(-474f, 820f)) + -1020f), false, vec4<f32>(_wgslsmith_f_op_f32(893f + _wgslsmith_f_op_f32(abs(882f))), _wgslsmith_f_op_f32(f32(-1f) * -786f), -941f, _wgslsmith_f_op_f32(f32(-1f) * -851f))));
    var_0 = Struct_2(Struct_1(~(min(vec3<i32>(-20096i, global0.x, arg_0.x), vec3<i32>(1i, -2147483647i, 0i)) >> ((vec3<u32>(u_input.c.x, 31164u, u_input.c.x) ^ vec3<u32>(u_input.b, u_input.b, u_input.b)) % vec3<u32>(32u))), -1000f, (true || !var_0.a.c) | (~4294967295u <= _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 17125u, 0u, u_input.b), vec4<u32>(0u, 38029u, 0u, 1u))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1873f + -2370f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.d.x + var_0.a.b)), var_0.b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.b * var_0.b.d.x)))), var_0.b);
    return Struct_1(vec3<i32>(global0.x, u_input.a, func_2(586f, abs(_wgslsmith_mod_i32(global0.x, var_0.a.a.x)), true).x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.d.x, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_0.b.d.x, 1000f), _wgslsmith_f_op_f32(-1924f * -285f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(599f - var_0.a.b)) + var_0.b.d.x)), var_0.b.c, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.d.x) + var_0.a.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -973f) - _wgslsmith_f_op_f32(step(var_0.b.b, var_0.a.b))) - _wgslsmith_div_f32(-1332f, -1252f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.b)), _wgslsmith_div_f32(2333f, 652f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1(countOneBits(global0.yyx) >> (vec3<u32>(_wgslsmith_div_u32(0u, 6285u), ~u_input.b, ~11679u) % vec3<u32>(32u))), Struct_1(func_1(~(vec3<i32>(global0.x, u_input.a, 1i) >> (vec3<u32>(u_input.c.x, 4294967295u, u_input.c.x) % vec3<u32>(32u)))).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1543f, -1270f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-584f)))), _wgslsmith_mod_i32(2147483647i, u_input.a) <= -3359i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1545f, 1410f, _wgslsmith_f_op_f32(abs(1419f)), _wgslsmith_f_op_f32(sign(599f))))));
    global0 = vec4<i32>(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-44795i, func_1(global0.xyx ^ vec3<i32>(-2147483647i, 23967i, u_input.a)).a.x, -_wgslsmith_mod_i32(var_0.b.a.x, 19924i), -22256i), firstLeadingBit(max(vec4<i32>(var_0.a.a.x, global0.x, 1i, global0.x), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.b.a.x, u_input.a, 58163i, 2147483647i), vec4<i32>(u_input.a, 25607i, global0.x, u_input.d))))), var_0.a.a.x, _wgslsmith_clamp_i32(abs(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(global0.wx, vec2<i32>(-2147483647i, global0.x)), -7967i)), firstLeadingBit(_wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.a, -2147483647i), u_input.a)), ~(-35609i)));
    let var_1 = var_0.a.b;
    global0 = vec4<i32>(-(_wgslsmith_mod_i32(~8392i, -55296i) >> (u_input.b % 32u)), 1i, -2147483647i, u_input.d);
    global0 = ~abs(vec4<i32>(-_wgslsmith_clamp_i32(-82418i, u_input.a, var_0.b.a.x), -12160i, 2147483647i, _wgslsmith_sub_i32(select(u_input.a, 0i, var_0.b.c), -2147483647i & global0.x)));
    let var_2 = true;
    global0 = vec4<i32>(1i, (max(firstTrailingBit(var_0.a.a.x), _wgslsmith_mod_i32(u_input.d, 2147483647i)) & u_input.d) >> (u_input.b % 32u), u_input.a << (_wgslsmith_div_u32(1u, u_input.b) % 32u), min(global0.x, -(i32(-1i) * -8835i)));
    let var_3 = all(select(select(select(func_3(Struct_1(global0.yxx, 385f, var_0.a.c, vec4<f32>(558f, -643f, 1032f, var_0.a.b)), Struct_2(var_0.b, Struct_1(var_0.b.a, -1000f, false, vec4<f32>(-1000f, var_0.b.d.x, 880f, -2281f))), false), func_3(Struct_1(global0.wxy, var_1, false, vec4<f32>(var_0.a.b, var_0.b.d.x, var_1, var_0.b.b)), Struct_2(Struct_1(global0.wxz, -1849f, var_0.a.c, var_0.b.d), Struct_1(vec3<i32>(1i, 1i, u_input.d), -305f, var_0.b.c, var_0.a.d)), var_2), func_3(var_0.a, Struct_2(var_0.b, Struct_1(vec3<i32>(u_input.a, 1i, -30771i), var_0.b.d.x, false, var_0.b.d)), var_2).x), !select(vec4<bool>(true, true, var_0.a.c, false), vec4<bool>(true, var_0.a.c, var_2, false), vec4<bool>(false, var_0.a.c, false, var_2)), !(!vec4<bool>(true, false, var_2, var_0.b.c))), !(!vec4<bool>(true, var_2, true, true)), var_0.a.c));
    var var_4 = _wgslsmith_div_vec2_u32(vec2<u32>(countOneBits(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 2558u, 25330u), vec3<u32>(57731u, u_input.c.x, u_input.b)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c.x, 68186u, u_input.b), vec3<u32>(u_input.c.x, 22606u, u_input.c.x), vec3<u32>(4294967295u, 13315u, u_input.b)))), _wgslsmith_mod_u32(~reverseBits(u_input.b), max(8341u, firstTrailingBit(4294967295u)))), max(~vec2<u32>(_wgslsmith_div_u32(u_input.c.x, 4294967295u), u_input.c.x), ~select(u_input.c, vec2<u32>(u_input.c.x, u_input.c.x), var_0.a.c)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_clamp_u32(1u, var_4.x, 1u)), min(func_1(firstTrailingBit(vec3<i32>(var_0.a.a.x, 19437i, -570i))).a, vec3<i32>(_wgslsmith_clamp_i32(1i, global0.x, 1i), ~0i, func_2(var_1, u_input.d, var_3).x)) ^ _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, global0.x, u_input.a), abs(vec3<i32>(-11933i, 1i, -10433i)), -var_0.a.a), -vec3<i32>(-1i, -2147483647i, 10000i) ^ (var_0.a.a ^ var_0.a.a)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b.b, var_0.b.d.x) + 184f), var_0.b.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.b.b)) + _wgslsmith_f_op_f32(f32(-1f) * -769f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.b, 1428f, -754f, -898f)))));
}

