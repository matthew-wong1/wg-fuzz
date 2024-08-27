struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_3,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(-1352f, false, -26609i, vec2<bool>(false, false)), Struct_1(-1362f, true, -27773i, vec2<bool>(true, true)), Struct_1(492f, false, 28814i, vec2<bool>(true, false)), Struct_1(-726f, true, -14361i, vec2<bool>(false, false)), Struct_1(942f, false, -1i, vec2<bool>(false, true)), Struct_1(-369f, true, 0i, vec2<bool>(false, false)), Struct_1(864f, false, 2147483647i, vec2<bool>(false, false)), Struct_1(1000f, true, 2147483647i, vec2<bool>(false, false)), Struct_1(1421f, true, 0i, vec2<bool>(false, true)), Struct_1(477f, false, -1i, vec2<bool>(true, true)), Struct_1(-766f, true, 1i, vec2<bool>(true, true)), Struct_1(1254f, true, -77959i, vec2<bool>(true, false)), Struct_1(888f, true, 2147483647i, vec2<bool>(false, false)), Struct_1(-910f, false, i32(-2147483648), vec2<bool>(false, false)), Struct_1(308f, false, 8921i, vec2<bool>(true, false)), Struct_1(413f, true, i32(-2147483648), vec2<bool>(false, false)), Struct_1(513f, false, 10693i, vec2<bool>(true, false)), Struct_1(-1182f, true, 1i, vec2<bool>(true, false)), Struct_1(570f, true, -8915i, vec2<bool>(true, false)), Struct_1(589f, false, i32(-2147483648), vec2<bool>(false, false)), Struct_1(-1467f, false, 1963i, vec2<bool>(false, true)), Struct_1(-1204f, true, 5551i, vec2<bool>(true, false)));

var<private> global1: array<i32, 26> = array<i32, 26>(3807i, 0i, 0i, i32(-2147483648), 0i, 0i, 20918i, 0i, -1i, -22286i, -1i, 26984i, -40378i, 2147483647i, 7197i, 44923i, 43581i, 5729i, 43650i, -23880i, 2147483647i, 30384i, 2147483647i, 0i, 52938i, -977i);

var<private> global2: array<vec4<i32>, 25>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<i32>) -> u32 {
    let var_0 = vec2<bool>(true, false);
    global2 = array<vec4<i32>, 25>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(1277f + _wgslsmith_div_f32(_wgslsmith_div_f32(-724f, _wgslsmith_f_op_f32(f32(-1f) * -2258f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(284f, -183f)))), any(!var_0) | false, ~(~(-39821i)), !var_0);
    global0 = array<Struct_1, 22>();
    let var_2 = select(vec3<bool>(var_1.a >= var_1.a, true, !(1i < global1[_wgslsmith_index_u32(60940u, 26u)]) | !var_0.x), !vec3<bool>(!(var_0.x | true), _wgslsmith_add_u32(10846u, 1u) != u_input.b, var_0.x), vec3<bool>(var_0.x, var_1.d.x, all(vec3<bool>(true, !var_0.x, var_0.x))));
    return ~select(~_wgslsmith_sub_u32(arg_0.a, 73974u) << (~u_input.b % 32u), arg_0.a, false);
}

fn func_2() -> Struct_3 {
    var var_0 = true;
    global0 = array<Struct_1, 22>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1223f + -162f)) + _wgslsmith_f_op_f32(f32(-1f) * -676f));
    global1 = array<i32, 26>();
    var var_2 = !(firstLeadingBit(u_input.b) == func_3(Struct_3(abs(u_input.b)), abs(global2[_wgslsmith_index_u32(u_input.b | u_input.b, 25u)])));
    return Struct_3(1u);
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    var var_0 = func_2();
    var var_1 = -vec3<i32>(_wgslsmith_add_i32(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -22432i, global1[_wgslsmith_index_u32(0u, 26u)]), vec3<i32>(u_input.a, 1i, -29877i)) << (~0u % 32u)), global1[_wgslsmith_index_u32(arg_0.a, 26u)], ~_wgslsmith_sub_i32(firstTrailingBit(-2147483647i), global1[_wgslsmith_index_u32(u_input.b, 26u)] >> (1u % 32u)));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(min(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(31554u, 30751u, u_input.b), vec3<u32>(2u, 16392u, var_0.a)), select(~vec3<u32>(arg_0.a, 1u, 65812u), ~vec3<u32>(arg_0.a, arg_0.a, var_0.a), vec3<bool>(true, true, true))), _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.a, arg_0.a, var_0.a), vec3<u32>(u_input.b, 8131u, 31276u)), select(vec3<u32>(9943u, arg_0.a, 5905u), vec3<u32>(var_0.a, 2564u, 1u), vec3<bool>(true, true, false))) & vec3<u32>(33775u, 1u, ~4294967295u)), select(select(~(vec3<u32>(88225u, 12344u, 0u) >> (vec3<u32>(arg_0.a, 39723u, u_input.b) % vec3<u32>(32u))), firstTrailingBit(abs(vec3<u32>(0u, arg_0.a, 0u))), u_input.b < 1u), vec3<u32>(func_3(func_2(), _wgslsmith_mult_vec4_i32(vec4<i32>(-17887i, -1i, u_input.a, u_input.a), vec4<i32>(var_1.x, u_input.a, var_1.x, global1[_wgslsmith_index_u32(4294967295u, 26u)]))), func_3(arg_0, -global2[_wgslsmith_index_u32(1u, 25u)]), arg_0.a), false)), 22u)];
    var var_3 = !(!vec3<bool>(true, var_2.d.x, true));
    let var_4 = false || select(!(_wgslsmith_f_op_f32(ceil(-1923f)) > _wgslsmith_f_op_f32(min(var_2.a, var_2.a))), !var_2.d.x, true);
    return Struct_1(1783f, (0u != ~(u_input.b & 1u)) | (global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(4849u, 1u), 26u)] != 1i), max(-2147483647i, 1i), select(vec2<bool>(true, _wgslsmith_f_op_f32(exp2(var_2.a)) >= _wgslsmith_f_op_f32(exp2(var_2.a))), var_2.d, vec2<bool>(all(vec2<bool>(var_4, true)), true)));
}

fn func_5(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_2, arg_3: vec4<f32>) -> Struct_1 {
    let var_0 = select(!vec4<bool>(false, false, !any(vec4<bool>(arg_2.a.d.x, arg_2.c.d.x, arg_2.c.d.x, arg_2.a.d.x)), !arg_2.d.d.x), vec4<bool>(!all(select(vec4<bool>(arg_2.d.d.x, arg_2.d.d.x, false, true), vec4<bool>(arg_2.a.b, false, true, true), vec4<bool>(false, arg_2.b.d.x, true, false))), !all(vec4<bool>(arg_2.d.b, false, arg_2.d.d.x, arg_2.d.b)), arg_2.d.d.x, all(select(!vec4<bool>(arg_2.c.d.x, false, false, true), !vec4<bool>(false, arg_2.b.d.x, false, true), vec4<bool>(false, arg_2.a.b, false, arg_2.a.b)))), arg_2.c.d.x);
    var var_1 = false;
    var var_2 = !all(vec3<bool>(var_0.x, select(any(vec4<bool>(true, arg_2.c.b, arg_2.a.d.x, true)), var_0.x & var_0.x, all(vec2<bool>(arg_2.a.b, false))), true));
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(countOneBits(101398u), ~(u_input.b | 31883u) ^ (u_input.b << (select(~29789u, 27636u, true) % 32u))), 26u)];
    global1 = array<i32, 26>();
    return Struct_1(_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(ceil(330f))), any(!var_0.xx), countOneBits(u_input.a), select(func_4(func_2()).d, vec2<bool>(true & (7049i < u_input.a), !var_0.x != any(vec2<bool>(arg_2.b.d.x, var_0.x))), var_0.x & any(select(vec3<bool>(var_0.x, var_0.x, arg_2.a.d.x), vec3<bool>(false, var_0.x, var_0.x), var_0.ywz))));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: f32) -> Struct_2 {
    global2 = array<vec4<i32>, 25>();
    let var_0 = u_input.b ^ u_input.b;
    global2 = array<vec4<i32>, 25>();
    let var_1 = ~abs(_wgslsmith_mod_vec3_i32(abs(min(vec3<i32>(global1[_wgslsmith_index_u32(var_0, 26u)], 41763i, -1i), vec3<i32>(2147483647i, u_input.a, global1[_wgslsmith_index_u32(1u, 26u)]))), vec3<i32>(0i, ~arg_1, u_input.a)));
    let var_2 = Struct_2(global0[_wgslsmith_index_u32(~u_input.b, 22u)], func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, -1125f, _wgslsmith_f_op_f32(656f * -1000f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-2772f, arg_2, -1167f))))), _wgslsmith_f_op_f32(trunc(277f)), Struct_2(func_4(func_2()), Struct_1(_wgslsmith_f_op_f32(984f + arg_2), arg_2 == arg_2, u_input.a, select(vec2<bool>(true, true), vec2<bool>(false, false), true)), func_4(Struct_3(51449u)), func_4(func_2()), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1072f, arg_2))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, func_4(Struct_3(3533u)).a, _wgslsmith_f_op_f32(min(-514f, 1234f)), _wgslsmith_f_op_f32(trunc(arg_2))))), func_4(Struct_3(7291u)), global0[_wgslsmith_index_u32(var_0, 22u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_2))))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_2, arg_2), _wgslsmith_f_op_vec2_f32(vec2<f32>(286f, arg_2) - vec2<f32>(arg_2, arg_2)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_2))))));
    return Struct_2(func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(trunc(arg_2)), _wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_f32(round(319f)), var_2, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(arg_2)), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-541f * 1220f), _wgslsmith_f_op_f32(trunc(1190f))))), Struct_1(163f, _wgslsmith_f_op_f32(-arg_2) != arg_2, -_wgslsmith_div_i32(var_2.c.c, -8703i), func_4(func_2()).d), func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-546f, var_2.e.x, 406f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.a, 149f, var_2.d.a))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2, 1273f)) + 1466f) - _wgslsmith_f_op_f32(step(arg_2, _wgslsmith_f_op_f32(-arg_2)))), var_2, _wgslsmith_f_op_vec4_f32(-vec4<f32>(358f, _wgslsmith_f_op_f32(min(var_2.c.a, arg_2)), _wgslsmith_f_op_f32(min(var_2.a.a, 1621f)), arg_2))), func_4(Struct_3(countOneBits(1u))), var_2.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_div_i32(27849i, global1[_wgslsmith_index_u32(8636u, 26u)]), _wgslsmith_add_i32(-(u_input.a & -1i), ~reverseBits(global1[_wgslsmith_index_u32(4294967295u, 26u)])) << (countOneBits(u_input.b) % 32u), _wgslsmith_f_op_f32(f32(-1f) * -365f));
    let var_1 = var_0;
    var var_2 = ~vec4<u32>(~(~(~u_input.b)), u_input.b, ~select(u_input.b, u_input.b, true), ~(~36165u));
    global2 = array<vec4<i32>, 25>();
    let var_3 = select(vec4<bool>(-2147483647i >= (-1i << (~u_input.b % 32u)), true, var_1.d.d.x, true), vec4<bool>(!(!var_1.d.d.x), var_1.a.b, false, true), !select(vec4<bool>(any(vec3<bool>(false, false, var_1.d.d.x)), true, false, true), !vec4<bool>(var_1.c.b, var_1.c.b, false, var_1.c.d.x), vec4<bool>(true, !var_1.d.b, false, true)));
    let var_4 = vec4<bool>(_wgslsmith_f_op_f32(var_0.b.a + _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(551f, 700f)))) > var_0.a.a, false, true, false & var_1.b.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(4294967295u, _wgslsmith_div_u32(func_3(Struct_3(var_2.x), firstTrailingBit(global2[_wgslsmith_index_u32(1u, 25u)])), _wgslsmith_mod_u32(select(10857u, var_2.x, true), u_input.b)), u_input.b, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.b, u_input.b, var_2.x, 4294967295u) & vec4<u32>(4294967295u, 82007u, u_input.b, u_input.b)), ~select(vec4<u32>(u_input.b, var_2.x, 4294967295u, 4294967295u), vec4<u32>(26314u, u_input.b, 0u, 17493u), true))), vec3<i32>(-1i) * -_wgslsmith_add_vec3_i32(~vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 26u)], global1[_wgslsmith_index_u32(u_input.b, 26u)], 1i), vec3<i32>(-1i, u_input.a, -19934i)), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(~48394u, 26u)], ~27620i, -u_input.a, ~u_input.a), global2[_wgslsmith_index_u32(select(_wgslsmith_sub_u32(var_2.x, u_input.b), 97486u, !var_1.d.d.x), 25u)]), -2440i), ~var_0.d.c);
}

