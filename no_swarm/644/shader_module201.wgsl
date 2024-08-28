struct Struct_1 {
    a: f32,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> i32 {
    var var_0 = Struct_2(reverseBits(~select(vec2<u32>(0u, 32054u), vec2<u32>(47869u, 30708u), vec2<bool>(false, false))) | abs(vec2<u32>(~27160u, min(1u, 1u))), true, Struct_1(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~1u, 11u)] - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-3076f + -653f))), -1i, !any(vec3<bool>(false, true, false)) && true), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(~1u, 11u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 11u)]), _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(4294967295u, 11u)])))), min(22031i, ~u_input.c.x), !all(vec2<bool>(true, true))), Struct_1(287f, _wgslsmith_dot_vec4_i32(countOneBits(-u_input.a), ~u_input.b), true));
    var_0 = Struct_2(_wgslsmith_mod_vec2_u32(var_0.a, ~var_0.a), true, var_0.e, var_0.d, var_0.e);
    var var_1 = !select(vec2<bool>(any(!vec3<bool>(false, true, var_0.c.c)), any(select(vec4<bool>(var_0.e.c, var_0.b, true, false), vec4<bool>(var_0.d.c, var_0.c.c, var_0.e.c, var_0.c.c), var_0.d.c))), vec2<bool>(true, true), select(vec2<bool>(true, false & var_0.c.c), vec2<bool>(any(vec4<bool>(false, var_0.d.c, var_0.d.c, var_0.b)), true), true));
    var_0 = Struct_2(~(var_0.a << (vec2<u32>(select(0u, 5261u, var_1.x), var_0.a.x) % vec2<u32>(32u))), !(!(any(vec4<bool>(false, var_1.x, var_0.b, true)) | !var_0.d.c)), Struct_1(1364f, var_0.c.b, false), var_0.e, var_0.e);
    var var_2 = Struct_2(vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.a.x, 1u, 1u, 1u), ~(~vec4<u32>(4294967295u, 57739u, 65641u, var_0.a.x))), 1u), !var_1.x, Struct_1(-446f, 1i, all(select(select(vec2<bool>(false, false), vec2<bool>(var_0.d.c, true), vec2<bool>(false, true)), !vec2<bool>(var_1.x, false), select(vec2<bool>(true, var_1.x), vec2<bool>(false, false), var_0.c.c)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1092f * -339f), _wgslsmith_f_op_f32(f32(-1f) * -564f)))), u_input.a.x, (var_0.d.c == all(vec3<bool>(var_1.x, false, true))) || false), var_0.d);
    return var_2.c.b;
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> bool {
    global0 = array<f32, 11>();
    let var_0 = select(func_3(), ~reverseBits(-_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 28390i, -14950i, arg_1.b), vec4<i32>(arg_1.b, 1i, -81831i, arg_1.b))), false);
    let var_1 = Struct_2(~vec2<u32>(0u, ~(~4294967295u)), any(vec2<bool>(true, arg_1.c)), arg_1, Struct_1(_wgslsmith_f_op_f32(-arg_1.a), ~(-countOneBits(arg_1.b)), arg_1.c), arg_1);
    global0 = array<f32, 11>();
    global0 = array<f32, 11>();
    return any(!select(vec2<bool>(var_1.b, true), vec2<bool>(true, true), select(vec2<bool>(arg_1.c, var_1.b), !vec2<bool>(arg_1.c, false), all(vec2<bool>(false, var_1.c.c)))));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    var var_0 = vec3<f32>(arg_0.e.a, 1757f, 381f);
    var var_1 = u_input.c.ywz;
    global0 = array<f32, 11>();
    var_1 = ~(~vec3<i32>(arg_0.e.b, func_3(), select(var_1.x, 14350i, arg_0.d.c) | ~(-4431i)));
    var var_2 = _wgslsmith_f_op_f32(abs(102f));
    return arg_0;
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_mult_i32(0i, _wgslsmith_clamp_i32(_wgslsmith_add_i32(-u_input.c.x, u_input.c.x), -1i, u_input.b.x)) & -2147483647i;
    let var_1 = func_4(Struct_2(firstTrailingBit(vec2<u32>(_wgslsmith_mod_u32(22285u, 4294967295u), 1u)), select(func_2(1u, Struct_1(-118f, var_0, false)), false, 107f != arg_0.x) == !any(vec2<bool>(false, true)), Struct_1(1495f, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(54446i, 0i, u_input.c.x), vec3<i32>(u_input.a.x, var_0, -1i)), _wgslsmith_mult_i32(u_input.c.x, -1i)), true), Struct_1(global0[_wgslsmith_index_u32(1u, 11u)], 19736i, true), Struct_1(_wgslsmith_div_f32(arg_0.x, arg_0.x), 1i, !select(true, false, true))));
    var var_2 = !select(!(!select(vec4<bool>(var_1.c.c, var_1.e.c, var_1.e.c, var_1.c.c), vec4<bool>(false, var_1.d.c, false, var_1.e.c), var_1.d.c)), select(!vec4<bool>(false, var_1.c.c, var_1.d.c, var_1.b), !(!vec4<bool>(var_1.b, true, var_1.d.c, var_1.e.c)), vec4<bool>(true, var_1.d.c, true, 0u != var_1.a.x)), !(!all(vec2<bool>(false, var_1.b))));
    var_2 = vec4<bool>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(u_input.a.yz, vec2<i32>(-2147483647i, var_1.c.b)) ^ (-1i >> (1u % 32u)), -351i, (195i >> (var_1.a.x % 32u)) ^ -2147483647i) >= var_0, !var_1.e.c, var_1.d.c, !(!var_2.x));
    var var_3 = var_1.c.a;
    return func_4(func_4(Struct_2(vec2<u32>(31473u, var_1.a.x), func_2(_wgslsmith_add_u32(51656u, 20349u), Struct_1(204f, var_0, false)), func_4(func_4(Struct_2(vec2<u32>(1u, 0u), true, var_1.e, Struct_1(global0[_wgslsmith_index_u32(98028u, 11u)], var_1.c.b, true), Struct_1(global0[_wgslsmith_index_u32(var_1.a.x, 11u)], -2147483647i, false)))).c, Struct_1(_wgslsmith_f_op_f32(ceil(arg_0.x)), ~var_1.e.b, !var_2.x), func_4(func_4(var_1)).d))).d;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(abs(~arg_1.a.x), 11u)]), _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(1u, arg_1.a.x), ~0u), 11u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.a)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a, arg_1.e.a)))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(529f, arg_1.c.a, 174f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-778f, arg_1.c.a, -1257f)))))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(770f - -1000f) + _wgslsmith_f_op_f32(abs(-886f))) + 677f)));
    global0 = array<f32, 11>();
    var var_2 = abs(vec4<u32>(max(arg_1.a.x, ~arg_1.a.x), 18115u, _wgslsmith_add_u32(1u, arg_1.a.x), ~max(4294967295u, arg_1.a.x))) & countOneBits(vec4<u32>(~abs(0u), arg_1.a.x, _wgslsmith_clamp_u32(arg_1.a.x, _wgslsmith_sub_u32(arg_1.a.x, arg_1.a.x), arg_1.a.x), 4294967295u ^ _wgslsmith_div_u32(4294967295u, arg_1.a.x)));
    let var_3 = func_4(arg_1).c.b;
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(27540u, 11u)], 1224f) - vec2<f32>(1353f, -787f))))))));
    var var_1 = vec3<i32>(-_wgslsmith_dot_vec4_i32(u_input.c, -u_input.b), ~func_5(func_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(1u, 11u)], 939f, var_0.x, var_0.x), vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 11u)], -1482f, -849f, global0[_wgslsmith_index_u32(0u, 11u)]), vec4<bool>(true, false, true, true)))), Struct_2(~vec2<u32>(28969u, 0u), true, Struct_1(1395f, u_input.b.x, false), func_1(vec4<f32>(global0[_wgslsmith_index_u32(55516u, 11u)], -1119f, global0[_wgslsmith_index_u32(59761u, 11u)], var_0.x)), Struct_1(var_0.x, -5621i, true))), ~0i);
    var var_2 = true;
    let var_3 = func_4(Struct_2(vec2<u32>(1u, 1u), !func_4(Struct_2(vec2<u32>(1u, 4294967295u), false, Struct_1(1181f, -6742i, false), Struct_1(794f, 33257i, false), Struct_1(global0[_wgslsmith_index_u32(61123u, 11u)], 19924i, true))).b, Struct_1(func_4(Struct_2(vec2<u32>(2004u, 0u), false, Struct_1(var_0.x, 85033i, false), Struct_1(298f, u_input.b.x, false), Struct_1(var_0.x, 2147483647i, false))).d.a, _wgslsmith_dot_vec4_i32(vec4<i32>(11543i, -54568i, -2147483647i, var_1.x), vec4<i32>(-27494i, u_input.b.x, -10270i, var_1.x)) | func_1(vec4<f32>(1761f, 1179f, global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(94777u, 11u)])).b, !any(vec4<bool>(true, true, false, false))), func_4(Struct_2(countOneBits(vec2<u32>(1u, 0u)), true, func_1(vec4<f32>(1048f, global0[_wgslsmith_index_u32(0u, 11u)], -1218f, 2165f)), Struct_1(global0[_wgslsmith_index_u32(22177u, 11u)], u_input.b.x, true), Struct_1(903f, 10907i, false))).d, Struct_1(_wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(select(var_0.x, global0[_wgslsmith_index_u32(1u, 11u)], false)))), min(_wgslsmith_sub_i32(2147483647i, u_input.c.x), i32(-1i) * -84938i), true)));
    var var_4 = u_input.b.x;
    let var_5 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-823f)), var_3.c.a))))), global0[_wgslsmith_index_u32(~func_4(var_3).a.x, 11u)], _wgslsmith_div_f32(177f, var_0.x));
    var_1 = vec3<i32>(~_wgslsmith_add_i32(-1i, _wgslsmith_dot_vec2_i32(-var_1.xz, u_input.c.xy)), -_wgslsmith_mult_i32(-17003i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.c.x, 3236i), vec3<i32>(2147483647i, u_input.b.x, -21672i))) >> (_wgslsmith_mod_u32(abs(abs(var_3.a.x)), 1u) % 32u), i32(-1i) * -987i);
    let var_6 = ~var_3.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.xyx, -6632i, vec4<u32>(_wgslsmith_add_u32((var_6 ^ var_3.a.x) & _wgslsmith_div_u32(49435u, var_6), 5611u), _wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_3.a.x, 0u, 1u), vec4<u32>(var_3.a.x, var_3.a.x, 1u, var_3.a.x)), ~var_6), var_6), 1u, _wgslsmith_clamp_u32(~(~var_3.a.x), ~var_3.a.x, countOneBits(var_6))), firstTrailingBit(35679u), _wgslsmith_f_op_f32(sign(1f)));
}

