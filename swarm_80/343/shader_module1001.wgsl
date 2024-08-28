struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_3,
    d: f32,
    e: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: Struct_2,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: Struct_2 = Struct_2(vec4<f32>(-981f, 838f, 2124f, 1223f));

var<private> global2: array<Struct_3, 30> = array<Struct_3, 30>(Struct_3(4294967295u, Struct_2(vec4<f32>(1214f, 636f, -897f, 498f))), Struct_3(1u, Struct_2(vec4<f32>(112f, 644f, 1003f, -1715f))), Struct_3(0u, Struct_2(vec4<f32>(-923f, 815f, 681f, -532f))), Struct_3(1u, Struct_2(vec4<f32>(-1758f, 818f, 679f, -521f))), Struct_3(19283u, Struct_2(vec4<f32>(1000f, -976f, 1127f, -477f))), Struct_3(4294967295u, Struct_2(vec4<f32>(-630f, 261f, -1345f, -1185f))), Struct_3(88654u, Struct_2(vec4<f32>(786f, -1207f, 1173f, 1000f))), Struct_3(85007u, Struct_2(vec4<f32>(1376f, 1153f, 669f, -850f))), Struct_3(70915u, Struct_2(vec4<f32>(-1513f, 2468f, 389f, -1075f))), Struct_3(7685u, Struct_2(vec4<f32>(753f, 1328f, 1061f, 648f))), Struct_3(36372u, Struct_2(vec4<f32>(-190f, 157f, -2190f, -712f))), Struct_3(4294967295u, Struct_2(vec4<f32>(-1000f, -910f, -1136f, -919f))), Struct_3(86557u, Struct_2(vec4<f32>(1722f, 453f, -1585f, 1304f))), Struct_3(0u, Struct_2(vec4<f32>(-902f, -351f, -375f, -594f))), Struct_3(82811u, Struct_2(vec4<f32>(-835f, 761f, 749f, -474f))), Struct_3(1u, Struct_2(vec4<f32>(1911f, -712f, 1000f, -818f))), Struct_3(37414u, Struct_2(vec4<f32>(-683f, -134f, -147f, -1249f))), Struct_3(4294967295u, Struct_2(vec4<f32>(-1325f, 554f, 1476f, 480f))), Struct_3(4294967295u, Struct_2(vec4<f32>(-117f, 141f, -561f, 610f))), Struct_3(20051u, Struct_2(vec4<f32>(1373f, -775f, -1483f, -539f))), Struct_3(0u, Struct_2(vec4<f32>(551f, -578f, -696f, 1599f))), Struct_3(4294967295u, Struct_2(vec4<f32>(2097f, -447f, 1475f, -1503f))), Struct_3(68912u, Struct_2(vec4<f32>(2685f, 1829f, -1252f, -724f))), Struct_3(0u, Struct_2(vec4<f32>(-644f, 778f, -1459f, 1000f))), Struct_3(0u, Struct_2(vec4<f32>(-887f, -147f, -1091f, 580f))), Struct_3(0u, Struct_2(vec4<f32>(-1000f, 1393f, 1740f, 196f))), Struct_3(1u, Struct_2(vec4<f32>(-1000f, -177f, 690f, 607f))), Struct_3(1u, Struct_2(vec4<f32>(1237f, -962f, 2523f, -388f))), Struct_3(101301u, Struct_2(vec4<f32>(-625f, 1000f, -167f, -2273f))), Struct_3(0u, Struct_2(vec4<f32>(-1308f, -103f, -858f, 830f))));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<i32>) -> f32 {
    global1 = Struct_2(global1.a);
    global0 = select(!select(vec3<bool>(any(vec3<bool>(global0.x, true, global0.x)), true, true), !(!vec3<bool>(global0.x, true, false)), !select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, false, global0.x), vec3<bool>(true, false, global0.x))), !(!vec3<bool>(true, true, global0.x)), select(vec3<bool>(true, select(global0.x && false, global0.x, true), all(vec3<bool>(global0.x, true, global0.x)) | any(vec3<bool>(false, false, global0.x))), select(!select(vec3<bool>(false, false, global0.x), vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, false, global0.x)), vec3<bool>(true, true, false), vec3<bool>(true, global0.x, true)), 392f >= _wgslsmith_f_op_f32(_wgslsmith_div_f32(1964f, -1716f) - global1.a.x)));
    var var_0 = Struct_3(select(~1u >> (1u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(1u, 2950u, 19204u, 40872u)), any(!(!vec4<bool>(false, false, true, global0.x)))), Struct_2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-765f, global1.a.x, 252f, -1000f) * global1.a)))));
    let var_1 = vec2<bool>(!(!(0u == var_0.a)) & any(!(!vec4<bool>(global0.x, true, true, global0.x))), false);
    let var_2 = Struct_1(true, var_1.x & all(select(vec4<bool>(false, global0.x, var_1.x, false), vec4<bool>(true, var_1.x, true, var_1.x), false)), global1.a.x, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.a.x, 1000f)))))));
    return -1030f;
}

fn func_2(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_2, arg_3: u32) -> Struct_4 {
    var var_0 = Struct_5(global1.a.x, arg_2, _wgslsmith_mult_vec4_i32(~vec4<i32>(-u_input.d.x, 16476i >> (arg_3 % 32u), _wgslsmith_add_i32(u_input.b.x, -19845i), _wgslsmith_mod_i32(2147483647i, u_input.d.x)), -vec4<i32>(min(u_input.d.x, -1i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, 0i, u_input.a.x), u_input.d), -u_input.d.x, -u_input.b.x)));
    global2 = array<Struct_3, 30>();
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.a.yy)) * arg_2.a.zy);
    var var_2 = -879f;
    let var_3 = select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2.a.x)) + -757f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(840f)))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + -1389f)), 10335u == ~(arg_3 ^ ~arg_3), -u_input.d.x > var_0.c.x);
    return Struct_4(Struct_1(select(arg_2.a.x != _wgslsmith_f_op_f32(f32(-1f) * -849f), var_3, global0.x), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<i32>(0i, 2147483647i, u_input.b.x, -44248i))) * _wgslsmith_f_op_f32(max(338f, var_1.x)))), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(arg_1)), _wgslsmith_f_op_f32(min(global1.a.x, global1.a.x)))), arg_1)), Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.x, 489f, var_0.a, arg_1))) * _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, 559f, 539f, arg_2.a.x), vec4<f32>(1566f, 806f, arg_2.a.x, 1000f))), vec4<f32>(-476f, 1230f, var_0.b.a.x, _wgslsmith_f_op_f32(arg_1 + arg_1)))), Struct_3(arg_3, var_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x - var_1.x)), global2[_wgslsmith_index_u32(arg_3, 30u)]);
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_4, arg_3: Struct_2) -> Struct_1 {
    var var_0 = !any(global0.zy);
    global0 = !select(vec3<bool>(false, true, !any(vec3<bool>(arg_2.a.b, global0.x, true))), vec3<bool>(true, true, true), true);
    let var_1 = vec3<i32>(_wgslsmith_mod_i32(max(i32(-1i) * -1i, -_wgslsmith_sub_i32(-2147483647i, arg_0)), _wgslsmith_div_i32(arg_0, u_input.c)), _wgslsmith_sub_i32(_wgslsmith_div_i32(-11536i, u_input.d.x), arg_0), u_input.a.x);
    var var_2 = vec3<bool>(~(~var_1.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 26634u, 8948u), vec3<u32>(arg_2.c.a, 16779u, arg_2.c.a)) % 32u)) < min(var_1.x, ~(~(-24369i))), arg_2.a.a, arg_1);
    let var_3 = arg_2.a;
    return func_2(!(!(!select(vec4<bool>(var_3.a, false, var_3.a, arg_2.a.b), vec4<bool>(arg_1, global0.x, true, true), arg_2.a.a))), _wgslsmith_f_op_f32(select(544f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -579f), _wgslsmith_f_op_f32(-arg_2.b.a.x)))), true)), Struct_2(global1.a), arg_2.e.a).a;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = firstTrailingBit(~1u);
    global2 = array<Struct_3, 30>();
    var var_1 = Struct_2(global1.a);
    var_1 = func_2(vec4<bool>(false, true, !arg_1.b, abs(_wgslsmith_mult_u32(var_0, var_0)) <= var_0), -218f, func_2(!(!vec4<bool>(global0.x, arg_1.b, global0.x, true)), -1066f, Struct_2(vec4<f32>(arg_0.c, _wgslsmith_f_op_f32(443f + arg_1.d.x), 289f, _wgslsmith_f_op_f32(global1.a.x * arg_0.d.x))), firstTrailingBit(min(1u, var_0 & var_0))).b, _wgslsmith_mod_u32(reverseBits(var_0), _wgslsmith_clamp_u32(1u, abs(var_0), ~var_0))).e.b;
    var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1.d.x, 369f, -379f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(651f, -2446f), _wgslsmith_f_op_f32(ceil(-701f))))))));
    return arg_0;
}

fn func_1(arg_0: bool) -> u32 {
    var var_0 = Struct_4(func_5(func_4(u_input.d.x, global0.x, func_2(vec4<bool>(true, global0.x, global0.x, true), _wgslsmith_f_op_f32(-global1.a.x), Struct_2(global1.a), _wgslsmith_mult_u32(0u, 2431u)), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-678f, global1.a.x, 944f, -730f)))), func_4(16233i, false, Struct_4(Struct_1(true, false, global1.a.x, vec2<f32>(-419f, global1.a.x)), func_2(vec4<bool>(false, false, false, global0.x), global1.a.x, Struct_2(global1.a), 110599u).c.b, global2[_wgslsmith_index_u32(func_2(vec4<bool>(global0.x, true, true, false), 673f, Struct_2(vec4<f32>(global1.a.x, -1168f, -1373f, global1.a.x)), 0u).e.a, 30u)], _wgslsmith_f_op_f32(276f * 1376f), Struct_3(92783u, Struct_2(global1.a))), func_2(vec4<bool>(true, true, true, arg_0), 1577f, Struct_2(global1.a), ~45791u).b)), func_2(!vec4<bool>(global0.x, true & global0.x, all(vec3<bool>(global0.x, arg_0, global0.x)), true), -2413f, func_2(vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)), Struct_2(global1.a), reverseBits(min(0u, 0u))).e.b, 1u).b, Struct_3(17972u, Struct_2(vec4<f32>(_wgslsmith_div_f32(1034f, 986f), _wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(func_3(vec4<i32>(u_input.c, u_input.d.x, -1i, u_input.c))), _wgslsmith_div_f32(global1.a.x, -524f)))), _wgslsmith_f_op_f32(func_3(abs(max(vec4<i32>(2147483647i, u_input.c, u_input.a.x, u_input.b.x), vec4<i32>(24147i, u_input.b.x, u_input.d.x, u_input.a.x))))), Struct_3(firstTrailingBit(~select(32073u, 19291u, arg_0)), func_2(!vec4<bool>(true, true, arg_0, arg_0), global1.a.x, Struct_2(vec4<f32>(-1702f, global1.a.x, -972f, global1.a.x)), func_2(vec4<bool>(true, arg_0, global0.x, true), _wgslsmith_f_op_f32(global1.a.x + -368f), func_2(vec4<bool>(global0.x, arg_0, global0.x, true), 1183f, Struct_2(global1.a), 4294967295u).b, ~4294967295u).e.a).e.b));
    let var_1 = ~u_input.c;
    var_0 = func_2(select(!vec4<bool>(global0.x && var_0.a.b, false, var_0.a.a, func_4(u_input.a.x, var_0.a.b, Struct_4(Struct_1(arg_0, global0.x, -674f, global1.a.wy), Struct_2(var_0.e.b.a), global2[_wgslsmith_index_u32(2940u, 30u)], -826f, Struct_3(var_0.e.a, var_0.b)), Struct_2(global1.a)).b), !(!(!vec4<bool>(arg_0, arg_0, false, false))), func_4(_wgslsmith_mult_i32(-1i, 17659i), any(vec4<bool>(global0.x, false, true, arg_0)), Struct_4(Struct_1(global0.x, false, var_0.b.a.x, vec2<f32>(var_0.d, -824f)), Struct_2(global1.a), Struct_3(0u, Struct_2(var_0.e.b.a)), -809f, var_0.c), func_2(vec4<bool>(var_0.a.b, global0.x, global0.x, true), var_0.d, Struct_2(vec4<f32>(var_0.d, global1.a.x, var_0.b.a.x, -1463f)), var_0.e.a).b).b && all(!vec3<bool>(true, global0.x, global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1416f + _wgslsmith_f_op_f32(global1.a.x - _wgslsmith_f_op_f32(-1544f * -442f)))), var_0.c.b, 13282u);
    var var_2 = var_0.e.a >= var_0.e.a;
    global1 = func_2(vec4<bool>(true, var_0.a.b, !(u_input.c < (i32(-1i) * -2147483647i)), true), 284f, func_2(select(vec4<bool>(var_0.a.b, var_0.c.a <= 4294967295u, global1.a.x != global1.a.x, false), vec4<bool>(true, arg_0, all(vec3<bool>(true, false, arg_0)), true), select(select(vec4<bool>(arg_0, false, false, arg_0), vec4<bool>(true, false, true, false), vec4<bool>(arg_0, global0.x, global0.x, true)), !vec4<bool>(var_0.a.b, var_0.a.b, arg_0, true), select(vec4<bool>(arg_0, false, arg_0, var_0.a.b), vec4<bool>(arg_0, arg_0, var_0.a.a, arg_0), vec4<bool>(var_0.a.a, false, false, global0.x)))), _wgslsmith_f_op_f32(func_3(vec4<i32>(~u_input.a.x, 57354i ^ u_input.d.x, ~var_1, u_input.a.x))), var_0.c.b, var_0.e.a).c.b, min(~(~var_0.c.a), var_0.c.a)).b;
    return var_0.e.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~func_1(true);
    let var_1 = select(!(!vec3<bool>(true, true, 1u > var_0)), !vec3<bool>(!func_2(vec4<bool>(true, true, global0.x, global0.x), global1.a.x, Struct_2(vec4<f32>(global1.a.x, 1254f, global1.a.x, global1.a.x)), 1u).a.a, _wgslsmith_f_op_f32(504f * -1804f) != _wgslsmith_f_op_f32(global1.a.x * global1.a.x), global0.x), all(vec4<bool>(false, true, false, global0.x)));
    let var_2 = _wgslsmith_f_op_f32(-global1.a.x);
    var var_3 = vec2<i32>(0i | (~(u_input.c & u_input.b.x) & -2147483647i), -2147483647i);
    let var_4 = Struct_1(60870u <= _wgslsmith_sub_u32(var_0, var_0), any(!select(!vec4<bool>(var_1.x, true, true, global0.x), select(vec4<bool>(false, var_1.x, var_1.x, false), vec4<bool>(true, true, var_1.x, var_1.x), vec4<bool>(global0.x, global0.x, true, true)), true)), global1.a.x, global1.a.yx);
    global0 = select(vec3<bool>(var_0 > func_1(!global0.x), true, true), !var_1, !select(vec3<bool>(select(global0.x, true, var_4.b), false, false), var_1, !var_1));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1337f - _wgslsmith_f_op_f32(step(var_4.c, 276f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(611f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_4.d.x, -1676f)) + _wgslsmith_f_op_f32(trunc(var_4.c)))), 1112f), _wgslsmith_div_vec2_i32(countOneBits(u_input.d.yy), _wgslsmith_clamp_vec2_i32(-vec2<i32>(1i, var_3.x), vec2<i32>(u_input.c, u_input.d.x), _wgslsmith_sub_vec2_i32(u_input.b, u_input.d.yy))) >> (firstTrailingBit(select(~vec2<u32>(var_0, 48393u), firstLeadingBit(vec2<u32>(var_0, var_0)), !global0.xx)) % vec2<u32>(32u)), var_0, countOneBits(~_wgslsmith_sub_u32(var_0, 0u) & ~0u));
}

