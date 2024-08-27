struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<f32, 1> = array<f32, 1>(-591f);

var<private> global2: array<vec2<i32>, 2> = array<vec2<i32>, 2>(vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(-22604i, 10551i));

var<private> global3: array<i32, 8>;

var<private> global4: array<Struct_3, 32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2) -> bool {
    var var_0 = _wgslsmith_dot_vec3_i32(-_wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(57367i, 1141i, arg_0.a.c) ^ vec3<i32>(u_input.a.x, -5044i, -51601i)), u_input.a), firstTrailingBit(u_input.a));
    global2 = array<vec2<i32>, 2>();
    let var_1 = true;
    let var_2 = select(!(!select(select(vec4<bool>(arg_1, true, true, true), vec4<bool>(arg_2.c.x, true, true, false), vec4<bool>(arg_2.c.x, true, true, var_1)), select(vec4<bool>(true, arg_1, var_1, true), vec4<bool>(true, arg_2.c.x, true, var_1), vec4<bool>(false, var_1, var_1, false)), !vec4<bool>(arg_0.c.x, false, var_1, arg_0.c.x))), vec4<bool>(!all(vec4<bool>(false, false, true, false)), arg_2.c.x, arg_1, true), _wgslsmith_dot_vec2_i32(firstTrailingBit(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, 4294967295u), 2u)]), firstLeadingBit(_wgslsmith_mod_vec2_i32(global2[_wgslsmith_index_u32(u_input.b.x, 2u)], u_input.a.zx))) == _wgslsmith_add_i32(global3[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.b.x, 4294967295u), 8u)], -(arg_2.a.c | 0i)));
    let var_3 = 7757u;
    return arg_1;
}

fn func_2(arg_0: Struct_1) -> i32 {
    var var_0 = select(u_input.b.xy, ~u_input.b.yy, func_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(step(-550f, -1000f)), _wgslsmith_f_op_vec4_f32(exp2(arg_0.b)), _wgslsmith_clamp_i32(13354i, -2147483647i, 1i), _wgslsmith_f_op_f32(floor(arg_0.e)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 1u)])), 64552u, vec3<bool>(true, true, true)), !all(vec4<bool>(true, true, false, false)) && (2731u <= _wgslsmith_sub_u32(58764u, u_input.b.x)), Struct_2(arg_0, 4294967295u >> (_wgslsmith_mod_u32(1864u, u_input.b.x) % 32u), select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true), vec3<bool>(true, false, false), vec3<bool>(true, false, true)))));
    global4 = array<Struct_3, 32>();
    global3 = array<i32, 8>();
    var var_1 = Struct_2(arg_0, 1u, !(!vec3<bool>(4294967295u == var_0.x, false, true)));
    global3 = array<i32, 8>();
    return -22398i | _wgslsmith_dot_vec4_i32(vec4<i32>(firstTrailingBit(arg_0.c) & 1i, min(u_input.a.x, var_1.a.c), u_input.a.x, -abs(2628i)), _wgslsmith_div_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(u_input.b.x, 8u)] | 57560i, countOneBits(-11902i), var_1.a.c | -20384i, firstTrailingBit(15487i)), min(-vec4<i32>(u_input.a.x, u_input.a.x, arg_0.c, var_1.a.c), firstTrailingBit(vec4<i32>(1i, arg_0.c, -19900i, var_1.a.c)))));
}

fn func_1() -> vec4<f32> {
    let var_0 = global4[_wgslsmith_index_u32(0u, 32u)];
    global0 = false;
    var var_1 = 1u;
    let var_2 = ~vec2<u32>(~0u, ~(~u_input.b.x ^ reverseBits(var_0.a)));
    var var_3 = 35496i & func_2(Struct_1(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(select(var_2.x, u_input.b.x, false), 1u), 1u)], _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1[_wgslsmith_index_u32(39589u, 1u)], 248f, 1000f, 562f))))), _wgslsmith_mult_i32(1i, ~u_input.a.x), global1[_wgslsmith_index_u32(~min(22536u, var_0.a), 1u)], global1[_wgslsmith_index_u32(var_2.x, 1u)]));
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1[_wgslsmith_index_u32(34879u, 1u)], 1251f, global1[_wgslsmith_index_u32(var_0.a, 1u)], global1[_wgslsmith_index_u32(u_input.b.x, 1u)]))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(336f, global1[_wgslsmith_index_u32(var_2.x, 1u)], 1544f, 1797f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(644f, global1[_wgslsmith_index_u32(1u, 1u)], 1261f, 573f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(0u, 1u)], global1[_wgslsmith_index_u32(var_0.a, 1u)], -1000f, global1[_wgslsmith_index_u32(1u, 1u)]) + vec4<f32>(global1[_wgslsmith_index_u32(1u, 1u)], global1[_wgslsmith_index_u32(var_2.x, 1u)], global1[_wgslsmith_index_u32(var_2.x, 1u)], global1[_wgslsmith_index_u32(0u, 1u)])))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32) -> Struct_1 {
    let var_0 = Struct_4(arg_1, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-289f)) - global1[_wgslsmith_index_u32(arg_2, 1u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d, 1922f, arg_1.a.a, -1006f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-339f, -764f, arg_1.a.e, -1685f)))), func_2(arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1f, arg_0.a)) - _wgslsmith_f_op_f32(139f * _wgslsmith_f_op_f32(-arg_0.e))), _wgslsmith_f_op_f32(f32(-1f) * -311f)));
    let var_1 = Struct_2(Struct_1(global1[_wgslsmith_index_u32(~4294967295u, 1u)], arg_1.a.b, _wgslsmith_sub_i32(~countOneBits(arg_1.a.c), 23767i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_1()).x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(733f, 117f)) - -1620f) - -1178f)), reverseBits(arg_2), vec3<bool>(true, -1623f >= arg_1.a.a, !var_0.a.c.x));
    var var_2 = global4[_wgslsmith_index_u32(reverseBits(arg_1.b), 32u)];
    global1 = array<f32, 1>();
    var var_3 = arg_1.b;
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -965f)), _wgslsmith_f_op_vec4_f32(func_1()), max(0i, -(global3[_wgslsmith_index_u32(4294967295u, 8u)] >> (10562u % 32u))), 968f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(1397f)), _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(0u, 1u)])))) + -328f)), Struct_2(Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -190f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(25512u, 1u)], -1955f, 694f, 1680f)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1[_wgslsmith_index_u32(1u, 1u)], -1180f, global1[_wgslsmith_index_u32(u_input.b.x, 1u)], -836f)))), func_2(Struct_1(global1[_wgslsmith_index_u32(10723u, 1u)], vec4<f32>(global1[_wgslsmith_index_u32(1u, 1u)], 314f, global1[_wgslsmith_index_u32(u_input.b.x, 1u)], global1[_wgslsmith_index_u32(1u, 1u)]), 2147483647i, global1[_wgslsmith_index_u32(u_input.b.x, 1u)], global1[_wgslsmith_index_u32(u_input.b.x, 1u)])), _wgslsmith_f_op_f32(trunc(1565f)), -1364f), 1u & firstLeadingBit(u_input.b.x), !select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true))), ~u_input.b.x);
    global0 = all(vec2<bool>(true, true)) || (!all(vec2<bool>(true, true)) && false);
    var var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b.x, 1u << (_wgslsmith_mult_u32(u_input.b.x, u_input.b.x) % 32u), abs(~4294967295u)), 1u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1046f, var_0.e))))));
    let var_2 = Struct_4(Struct_2(func_4(Struct_1(_wgslsmith_f_op_vec4_f32(func_1()).x, _wgslsmith_f_op_vec4_f32(max(var_0.b, var_0.b)), var_0.c, -904f, global1[_wgslsmith_index_u32(0u & u_input.b.x, 1u)]), Struct_2(func_4(Struct_1(var_0.e, var_0.b, var_0.c, global1[_wgslsmith_index_u32(u_input.b.x, 1u)], -232f), Struct_2(Struct_1(global1[_wgslsmith_index_u32(u_input.b.x, 1u)], var_0.b, var_0.c, -956f, 1083f), u_input.b.x, vec3<bool>(true, true, false)), u_input.b.x), abs(7689u), vec3<bool>(false, true, false)), _wgslsmith_mod_u32(min(u_input.b.x, 0u), 13631u)), _wgslsmith_dot_vec4_u32(~select(vec4<u32>(u_input.b.x, u_input.b.x, 1u, 4294967295u), vec4<u32>(0u, 4294967295u, u_input.b.x, 1u), true), _wgslsmith_mod_vec4_u32(~vec4<u32>(3270u, 4294967295u, u_input.b.x, u_input.b.x), reverseBits(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)))), select(vec3<bool>(true, true, true), vec3<bool>(false, all(vec2<bool>(true, true)), all(vec4<bool>(false, false, false, false))), select(var_0.d >= 552f, true, true))), func_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_div_vec4_f32(var_0.b, _wgslsmith_div_vec4_f32(var_0.b, var_0.b)), -1i | select(u_input.a.x, 64747i, true), _wgslsmith_f_op_f32(exp2(var_1.x)), 1317f), Struct_2(func_4(func_4(Struct_1(-1582f, vec4<f32>(var_0.a, 317f, var_1.x, 1285f), global3[_wgslsmith_index_u32(6052u, 8u)], -1738f, -1135f), Struct_2(Struct_1(627f, var_0.b, global3[_wgslsmith_index_u32(u_input.b.x, 8u)], var_1.x, global1[_wgslsmith_index_u32(u_input.b.x, 1u)]), u_input.b.x, vec3<bool>(false, false, false)), u_input.b.x), Struct_2(Struct_1(-951f, vec4<f32>(-870f, var_0.d, var_1.x, var_1.x), var_0.c, 572f, var_0.d), 0u, vec3<bool>(false, true, true)), _wgslsmith_add_u32(37509u, u_input.b.x)), u_input.b.x, vec3<bool>(true, all(vec3<bool>(false, true, false)), true)), 1881u));
    var var_3 = Struct_3(var_2.a.b);
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    global0 = any(vec4<bool>(true, true, true, true));
    let var_5 = 52871i;
    let var_6 = Struct_3(firstLeadingBit(~var_3.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(min(var_0.b, var_0.b)));
}

