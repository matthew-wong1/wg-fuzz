struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 7> = array<vec4<bool>, 7>(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false));

var<private> global1: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(Struct_1(vec4<bool>(true, true, true, true), false)), Struct_2(Struct_1(vec4<bool>(true, false, true, false), true)), Struct_2(Struct_1(vec4<bool>(true, false, false, false), true)), Struct_2(Struct_1(vec4<bool>(true, false, true, false), true)), Struct_2(Struct_1(vec4<bool>(true, false, true, false), true)), Struct_2(Struct_1(vec4<bool>(false, false, false, true), true)), Struct_2(Struct_1(vec4<bool>(false, true, false, false), false)), Struct_2(Struct_1(vec4<bool>(true, false, false, false), true)), Struct_2(Struct_1(vec4<bool>(true, true, false, true), false)), Struct_2(Struct_1(vec4<bool>(true, true, false, false), true)), Struct_2(Struct_1(vec4<bool>(true, true, true, false), true)), Struct_2(Struct_1(vec4<bool>(true, true, true, false), false)), Struct_2(Struct_1(vec4<bool>(false, false, false, false), true)), Struct_2(Struct_1(vec4<bool>(false, true, false, true), true)), Struct_2(Struct_1(vec4<bool>(false, false, true, true), true)), Struct_2(Struct_1(vec4<bool>(false, true, false, true), true)), Struct_2(Struct_1(vec4<bool>(false, true, true, true), true)), Struct_2(Struct_1(vec4<bool>(false, true, false, true), false)), Struct_2(Struct_1(vec4<bool>(false, false, true, true), true)), Struct_2(Struct_1(vec4<bool>(true, true, false, true), false)));

var<private> global2: array<Struct_2, 24>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<u32>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -321f);
    global1 = array<Struct_2, 20>();
    var var_1 = -vec4<i32>(-1i, abs(~firstLeadingBit(1i)), _wgslsmith_mod_i32(-_wgslsmith_div_i32(2147483647i, -13033i), _wgslsmith_mod_i32(~1i, ~2147483647i)), firstLeadingBit(9813i) & select(abs(-2147483647i), 1i, true));
    var var_2 = true;
    let var_3 = !(!(!select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), vec3<bool>(false, true, true))));
    return true;
}

fn func_2(arg_0: u32) -> Struct_4 {
    let var_0 = ~(firstTrailingBit(firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 4294967295u, u_input.a), vec3<u32>(5188u, arg_0, u_input.a)))) | vec3<u32>(0u, 55218u, select(20424u, _wgslsmith_clamp_u32(4294967295u, u_input.a, u_input.a), true)));
    global2 = array<Struct_2, 24>();
    return Struct_4(Struct_1(!select(vec4<bool>(false, false, false, false), global0[_wgslsmith_index_u32(u_input.a, 7u)], global0[_wgslsmith_index_u32(arg_0 | 47826u, 7u)]), true != func_3(_wgslsmith_div_vec4_f32(vec4<f32>(-333f, 818f, 181f, -2631f), vec4<f32>(-1523f, 598f, -518f, -1000f)), var_0.xy)));
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: Struct_4, arg_3: Struct_4) -> Struct_1 {
    var var_0 = Struct_1(global0[_wgslsmith_index_u32(~(~(u_input.a >> (abs(22113u) % 32u))), 7u)], true & arg_3.a.b);
    let var_1 = arg_3;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(229f, 893f, -653f, arg_1), vec4<f32>(arg_1, arg_1, -372f, arg_1)), vec4<f32>(693f, arg_1, arg_1, -1000f), true)) * vec4<f32>(-910f, _wgslsmith_div_f32(arg_1, arg_1), _wgslsmith_f_op_f32(-1151f + -454f), _wgslsmith_f_op_f32(select(1859f, 1253f, true))))));
    global1 = array<Struct_2, 20>();
    let var_3 = countOneBits(u_input.a);
    return Struct_1(select(!vec4<bool>(528f <= var_2.x, !arg_0, var_0.a.x, !arg_2.a.b), !arg_3.a.a, !var_0.a), true);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: bool) -> vec3<f32> {
    global1 = array<Struct_2, 20>();
    let var_0 = vec2<u32>(1u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.a, u_input.a), ~u_input.a));
    global1 = array<Struct_2, 20>();
    var var_1 = arg_0;
    var var_2 = vec2<i32>(0i, ~1i & max(firstTrailingBit(_wgslsmith_add_i32(-42288i, -9821i)), min(-2560i, 0i)));
    return _wgslsmith_div_vec3_f32(vec3<f32>(-1521f, 1123f, _wgslsmith_f_op_f32(1f * -440f)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1198f, -996f, 1410f), vec3<f32>(-182f, 518f, 987f))))))));
}

fn func_1(arg_0: u32, arg_1: Struct_3, arg_2: Struct_4) -> Struct_3 {
    var var_0 = arg_1.a.a.a.wz;
    global0 = array<vec4<bool>, 7>();
    global1 = array<Struct_2, 20>();
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_5(func_4(arg_2.a.a.x, -201f, func_2(u_input.a), func_2(1u)), global1[_wgslsmith_index_u32(arg_1.b, 20u)], arg_2.a, true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1091f, _wgslsmith_f_op_f32(min(-680f, -294f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-811f, -982f, -1316f) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1180f, -465f, 768f))))), _wgslsmith_sub_u32(min(arg_1.b, 1u), ~u_input.a) > _wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.a, 61999u, 4294967295u), abs(u_input.a))))));
    let var_2 = func_2(83342u);
    return arg_1;
}

fn func_6(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_2.c >> (47869u % 32u);
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(arg_0));
    var var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(-_wgslsmith_add_i32(i32(-1i) * -1i, arg_2.c), 15487i, _wgslsmith_dot_vec2_i32(vec2<i32>(60391i, 2147483647i), _wgslsmith_mult_vec2_i32(vec2<i32>(-15389i, -2147483647i) << (vec2<u32>(u_input.a, 5576u) % vec2<u32>(32u)), vec2<i32>(arg_2.c, arg_2.c)))), -vec3<i32>(21037i, max(-1i ^ arg_2.c, arg_2.c), func_1(~70041u, arg_2, Struct_4(Struct_1(global0[_wgslsmith_index_u32(60481u, 7u)], true))).c));
    var_0 = ~_wgslsmith_div_i32(8499i, 1i ^ func_1(~0u, arg_2, func_2(u_input.a)).c);
    global1 = array<Struct_2, 20>();
    return arg_2.a.a;
}

fn func_7(arg_0: Struct_2, arg_1: Struct_3) -> Struct_1 {
    global1 = array<Struct_2, 20>();
    let var_0 = vec2<u32>(_wgslsmith_div_u32(~(~(17492u >> (1u % 32u))), func_1(u_input.a, Struct_3(func_1(arg_1.b, Struct_3(arg_0, 107124u, -2147483647i, arg_0.a), Struct_4(Struct_1(arg_1.d.a, arg_1.d.b))).a, firstTrailingBit(arg_1.b), min(-6278i, arg_1.c), func_1(2268u, Struct_3(Struct_2(arg_0.a), arg_1.b, arg_1.c, Struct_1(vec4<bool>(arg_1.d.a.x, true, arg_0.a.b, true), arg_1.d.a.x)), Struct_4(Struct_1(vec4<bool>(arg_1.d.b, arg_0.a.a.x, false, arg_0.a.a.x), arg_0.a.a.x))).a.a), func_2(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.b, u_input.a), vec2<u32>(u_input.a, u_input.a)))).b), _wgslsmith_div_u32(~(~abs(u_input.a)), arg_1.b));
    var var_1 = -_wgslsmith_div_i32(-arg_1.c, firstTrailingBit(~arg_1.c) << (~_wgslsmith_add_u32(5811u, 20445u) % 32u));
    let var_2 = ~24676u != max(~_wgslsmith_mod_u32(countOneBits(u_input.a), _wgslsmith_dot_vec2_u32(vec2<u32>(17871u, 11855u), var_0)), var_0.x);
    global1 = array<Struct_2, 20>();
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(Struct_2(func_6(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-296f, 287f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, -1406f), vec2<f32>(-396f, -319f), false)))), Struct_2(Struct_1(global0[_wgslsmith_index_u32(0u, 7u)], false)), func_1(~33115u, Struct_3(Struct_2(Struct_1(vec4<bool>(false, false, true, true), false)), 4294967295u, -2147483647i, Struct_1(vec4<bool>(true, true, false, true), false)), Struct_4(Struct_1(vec4<bool>(true, true, true, true), false))), func_4(true, _wgslsmith_f_op_f32(select(-333f, -571f, false)), Struct_4(Struct_1(global0[_wgslsmith_index_u32(0u, 7u)], false)), Struct_4(Struct_1(global0[_wgslsmith_index_u32(67715u, 7u)], false))))), func_1((26444u ^ _wgslsmith_mod_u32(u_input.a, 39451u)) << (~1u % 32u), Struct_3(global1[_wgslsmith_index_u32(u_input.a, 20u)], 4294967295u, -45170i, func_6(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1264f, 1000f)), global1[_wgslsmith_index_u32(u_input.a, 20u)], func_1(9373u, Struct_3(global1[_wgslsmith_index_u32(u_input.a, 20u)], u_input.a, 1i, Struct_1(vec4<bool>(true, true, true, false), true)), Struct_4(Struct_1(global0[_wgslsmith_index_u32(u_input.a, 7u)], true))), func_4(true, 320f, Struct_4(Struct_1(global0[_wgslsmith_index_u32(u_input.a, 7u)], false)), Struct_4(Struct_1(global0[_wgslsmith_index_u32(18178u, 7u)], false))))), func_2(~(~u_input.a))));
    let var_1 = _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_5(func_6(vec2<f32>(140f, 168f), global1[_wgslsmith_index_u32(4294967295u, 20u)], Struct_3(Struct_2(Struct_1(var_0.a, true)), 0u, 2147483647i, Struct_1(var_0.a, false)), Struct_1(vec4<bool>(var_0.a.x, true, true, var_0.b), var_0.b)), func_1(1u, Struct_3(Struct_2(Struct_1(global0[_wgslsmith_index_u32(u_input.a, 7u)], var_0.a.x)), 4294967295u, 2147483647i, Struct_1(vec4<bool>(var_0.b, var_0.a.x, var_0.b, var_0.a.x), var_0.a.x)), Struct_4(Struct_1(vec4<bool>(false, var_0.b, var_0.b, false), var_0.a.x))).a, Struct_1(vec4<bool>(var_0.a.x, true, var_0.a.x, var_0.b), false), var_0.a.x)).x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(736f, 1024f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1079f) + _wgslsmith_f_op_f32(sign(958f)))))), reverseBits(firstTrailingBit(_wgslsmith_div_u32(1u, 4060u))) <= abs(u_input.a)));
    global1 = array<Struct_2, 20>();
    global0 = array<vec4<bool>, 7>();
    var var_2 = Struct_4(Struct_1(vec4<bool>(true, all(!vec4<bool>(false, false, true, var_0.a.x)), var_0.b, true), var_0.a.x));
    let var_3 = 32935u;
    let x = u_input.a;
    s_output = StorageBuffer(func_1(6582u, func_1(_wgslsmith_dot_vec4_u32(vec4<u32>(var_3, 20997u, 27050u, var_3) | vec4<u32>(4294967295u, var_3, u_input.a, 4294967295u), vec4<u32>(0u, 0u, 19044u, u_input.a)), func_1(~u_input.a, Struct_3(global2[_wgslsmith_index_u32(46648u, 24u)], 22237u, 1i, Struct_1(vec4<bool>(var_2.a.b, false, var_0.b, true), true)), Struct_4(var_2.a)), func_2(0u)), Struct_4(Struct_1(!var_0.a, var_0.a.x && var_0.a.x))).c, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 + -1498f) - _wgslsmith_f_op_f32(abs(539f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -155f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * var_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-857f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1156f))), _wgslsmith_f_op_f32(round(var_1))), var_3 >> (0u % 32u), vec3<i32>(firstLeadingBit(-18190i), ~_wgslsmith_add_i32(-2147483647i, func_1(var_3, Struct_3(global1[_wgslsmith_index_u32(u_input.a, 20u)], 43926u, -52345i, var_2.a), Struct_4(Struct_1(vec4<bool>(var_2.a.b, var_0.a.x, var_0.a.x, true), false))).c), countOneBits(-21114i)));
}

