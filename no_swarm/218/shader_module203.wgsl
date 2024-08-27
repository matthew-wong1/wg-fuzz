struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-arg_0.b))) + -253f), _wgslsmith_f_op_f32(arg_0.b + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-833f - -613f)))))) + arg_0.b);
    var var_1 = 2245f;
    return _wgslsmith_clamp_u32(~32236u, _wgslsmith_mult_u32(u_input.a, ~global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 19u)], 19u)] >> (61726u % 32u)), 19u)]), u_input.a);
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: Struct_3, arg_3: bool) -> vec3<i32> {
    let var_0 = ~min(reverseBits(_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(46757u, arg_0.c, global0[_wgslsmith_index_u32(0u, 19u)]), vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 19u)], global0[_wgslsmith_index_u32(u_input.a, 19u)], arg_2.a.c)), vec3<u32>(arg_2.a.c, u_input.a, 28070u))), vec3<u32>(func_3(Struct_1(arg_2.a.b.a, arg_2.a.b.b, arg_2.a.b.c)), ~(~arg_0.c), ~(0u | u_input.a)));
    var var_1 = arg_2.a.b;
    let var_2 = arg_0.b;
    let var_3 = var_1.c.zy;
    global0 = array<u32, 19>();
    return abs(vec3<i32>(abs(_wgslsmith_sub_i32(-arg_0.b.a, abs(var_2.a))), var_1.a, u_input.b));
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    global0 = array<u32, 19>();
    global0 = array<u32, 19>();
    var var_0 = vec2<i32>(countOneBits(min(0i, _wgslsmith_div_i32(reverseBits(u_input.b), u_input.b << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(66226u, 19u)], 19u)] % 32u)))), -_wgslsmith_dot_vec3_i32((vec3<i32>(-1i, u_input.b, 1i) | vec3<i32>(0i, arg_0.a, 2147483647i)) | vec3<i32>(-17561i, -28508i, arg_0.a), _wgslsmith_mult_vec3_i32(func_2(Struct_2(false, arg_0, u_input.a), -1357f, Struct_3(Struct_2(false, Struct_1(-1i, arg_0.b, vec3<bool>(arg_0.c.x, false, false)), 0u)), false), vec3<i32>(u_input.b, u_input.b, u_input.b) ^ vec3<i32>(u_input.b, -2147483647i, arg_0.a))));
    var_0 = func_2(Struct_2(true, arg_0, u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-730f * -610f) * _wgslsmith_f_op_f32(select(arg_0.b, 121f, true))), arg_0.b))), Struct_3(Struct_2(false, Struct_1(abs(51750i), -1735f, vec3<bool>(true, false, arg_0.c.x)), ~1u)), true).zx;
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b + 1170f)))));
    return Struct_2(arg_0.c.x, arg_0, global0[_wgslsmith_index_u32(firstLeadingBit(~global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~1u, u_input.a), 19u)]), 19u)]);
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: Struct_2) -> Struct_2 {
    let var_0 = vec4<i32>(_wgslsmith_dot_vec2_i32(select(abs(arg_1.yz), vec2<i32>(reverseBits(arg_2.b.a), func_1(Struct_1(u_input.b, arg_0.x, arg_2.b.c)).b.a), func_1(Struct_1(-1i, arg_0.x, vec3<bool>(false, arg_2.a, arg_2.a))).b.c.yx), vec2<i32>(-1i) * -_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, 3386i), arg_1.xy)), _wgslsmith_div_i32(2147483647i, -27711i), 353i, arg_1.x);
    var var_1 = all(vec4<bool>(!arg_2.b.c.x, true && any(!arg_2.b.c.xy), any(func_1(arg_2.b).b.c) & (false && any(vec2<bool>(false, arg_2.a))), all(!func_1(arg_2.b).b.c)));
    let var_2 = arg_2.c;
    var var_3 = arg_2.a;
    var var_4 = -(~_wgslsmith_mult_i32(~func_2(Struct_2(arg_2.a, Struct_1(2147483647i, -334f, vec3<bool>(arg_2.b.c.x, arg_2.b.c.x, true)), 3270u), arg_2.b.b, Struct_3(arg_2), true).x, u_input.b));
    return Struct_2(arg_2.b.c.x, func_1(arg_2.b).b, ~select(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(arg_2.c, 4294967295u, global0[_wgslsmith_index_u32(arg_2.c, 19u)], arg_2.c)), reverseBits(vec4<u32>(arg_2.c, arg_2.c, 6130u, var_2))), var_2, select(false, arg_2.b.c.x, arg_2.b.c.x) | arg_2.b.c.x));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_2) -> vec2<i32> {
    let var_0 = func_1(func_4(vec2<f32>(-1425f, arg_1.b.b), vec3<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 0i, 40861i, arg_1.b.a), vec4<i32>(u_input.b, u_input.b, arg_1.b.a, 29566i)), -2147483647i, _wgslsmith_add_i32(u_input.b, -1i)), func_4(vec2<f32>(_wgslsmith_f_op_f32(513f + -1575f), _wgslsmith_f_op_f32(-arg_1.b.b)), ~countOneBits(vec3<i32>(arg_1.b.a, 24294i, u_input.b)), func_4(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.b.b, arg_1.b.b), vec2<f32>(-103f, arg_1.b.b)), _wgslsmith_mult_vec3_i32(vec3<i32>(43983i, u_input.b, u_input.b), vec3<i32>(1i, 32718i, -39075i)), arg_1))).b).b;
    var var_1 = vec4<i32>(_wgslsmith_sub_i32(var_0.a, var_0.a), 1i, func_4(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -561f), 1265f), vec3<i32>(-1i) * -vec3<i32>(arg_1.b.a, 0i, u_input.b), Struct_2(var_0.c.x, Struct_1(0i, arg_1.b.b, vec3<bool>(false, true, true)), arg_1.c)).b.a << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~u_input.a, 19u)], 19u)] % 32u), 22901i);
    let var_2 = ~_wgslsmith_div_i32(-5988i, u_input.b);
    let var_3 = Struct_3(arg_1);
    var var_4 = Struct_1(-39905i, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a.b.b * 2017f)) + -2120f), -358f)), select(arg_1.b.c, !select(!vec3<bool>(true, arg_1.b.c.x, var_3.a.b.c.x), arg_1.b.c, true), var_3.a.b.a != 1i));
    return _wgslsmith_sub_vec2_i32(~var_1.xx, select(var_1.xw, ~_wgslsmith_mult_vec2_i32(vec2<i32>(var_1.x, var_3.a.b.a), vec2<i32>(var_0.a, u_input.b)), true) & vec2<i32>(382i, firstTrailingBit(arg_1.b.a | 24063i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (vec2<i32>(min(reverseBits(u_input.b), countOneBits(u_input.b)), 1i) ^ ((vec2<i32>(u_input.b, 12977i) & -vec2<i32>(u_input.b, 1i)) & ~(vec2<i32>(38826i, u_input.b) | vec2<i32>(u_input.b, -21415i)))) | func_5(vec4<bool>(true, true, true, true), func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-382f, 1000f) * vec2<f32>(1209f, 482f))), vec3<i32>(-15518i, 1i, -u_input.b), func_1(Struct_1(4215i, 641f, vec3<bool>(false, false, false)))));
    var var_1 = Struct_2(true, func_1(Struct_1(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1025f), vec3<bool>(true, true, true))).b, ~_wgslsmith_sub_u32(72647u, 1u & global0[_wgslsmith_index_u32(~18290u, 19u)]));
    var var_2 = !(!var_1.b.c.zy);
    let var_3 = vec2<u32>(10671u, (4294967295u ^ ~var_1.c) | ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 19u)], 19u)], 61810u, var_1.c), vec3<u32>(9170u, 0u, 13063u))));
    var var_4 = select(select(!vec4<bool>(any(vec3<bool>(false, var_2.x, false)), true, !var_1.b.c.x, true), !vec4<bool>(!var_1.b.c.x, all(var_1.b.c.yy), !var_1.b.c.x, var_2.x & var_2.x), true), select(vec4<bool>(!(var_1.a | true), var_2.x, var_2.x, _wgslsmith_f_op_f32(abs(var_1.b.b)) != _wgslsmith_f_op_f32(f32(-1f) * -576f)), select(vec4<bool>(!var_1.a, var_1.b.c.x, all(var_1.b.c), var_1.b.c.x), vec4<bool>(true, select(var_2.x, var_1.a, true), var_1.b.c.x, var_1.b.c.x), vec4<bool>(var_2.x, var_2.x, !var_2.x, any(vec4<bool>(false, var_1.b.c.x, false, true)))), false), _wgslsmith_f_op_f32(sign(var_1.b.b)) > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.b.b, 1103f)) - _wgslsmith_f_op_f32(ceil(var_1.b.b))))));
    var var_5 = func_4(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.b)), _wgslsmith_f_op_f32(var_1.b.b + -1732f)))), abs(vec3<i32>(u_input.b & firstTrailingBit(0i), _wgslsmith_div_i32(_wgslsmith_mult_i32(1i, var_0.x), 25147i), -2147483647i)), func_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.b.b, 441f))) * vec2<f32>(-1137f, 1946f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-174f, -570f)))), ~_wgslsmith_add_vec3_i32(vec3<i32>(-1i, var_0.x, u_input.b), reverseBits(vec3<i32>(u_input.b, -74918i, var_0.x))), func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1527f, var_1.b.b)), vec3<i32>(var_0.x, _wgslsmith_mult_i32(var_0.x, -2147483647i), -20825i), Struct_2(!var_2.x, func_1(Struct_1(-1i, var_1.b.b, vec3<bool>(var_4.x, true, var_1.b.c.x))).b, ~1u))));
    var_1 = func_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -337f)), var_5.b.b), abs(~min(~vec3<i32>(var_0.x, var_5.b.a, -1i), min(vec3<i32>(var_0.x, -1i, var_1.b.a), vec3<i32>(11572i, 1i, u_input.b)))), Struct_2(func_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_5.b.b, var_1.b.b)), vec2<f32>(-721f, 411f)), select(vec3<i32>(var_5.b.a, 2147483647i, 2147483647i), -vec3<i32>(var_1.b.a, var_0.x, var_1.b.a), var_1.b.c), Struct_2(var_5.b.c.x, var_1.b, var_3.x)).a, func_1(var_5.b).b, _wgslsmith_add_u32(0u, _wgslsmith_sub_u32(66489u, 0u << (global0[_wgslsmith_index_u32(4294967295u, 19u)] % 32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec3<i32>(var_1.b.a, 1i, u_input.b)), 1i, func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_5.b.b, var_1.b.b)))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(580f, -584f))))), _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(min(vec3<i32>(u_input.b, var_0.x, u_input.b), vec3<i32>(2147483647i, 0i, 1i)), vec3<i32>(var_0.x, -33752i, 2147483647i)), -vec3<i32>(var_0.x, -78082i, -1i) << (_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(var_3.x, 1u, var_1.c)) % vec3<u32>(32u))), func_1(Struct_1(_wgslsmith_div_i32(91378i, var_0.x), _wgslsmith_f_op_f32(-var_1.b.b), select(var_1.b.c, var_4.zxy, var_4.yxx)))).b.a);
}

