struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<bool>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: Struct_1,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21>;

var<private> global1: Struct_2 = Struct_2(vec3<bool>(false, true, true), vec4<f32>(849f, 1180f, 1342f, 1236f), Struct_1(-406f, 1i, vec2<bool>(false, false), vec2<i32>(40738i, 2147483647i)), vec4<bool>(true, false, false, false));

var<private> global2: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(-486f, 0i, vec2<bool>(true, false), vec2<i32>(0i, -31135i)), Struct_1(-710f, 20090i, vec2<bool>(false, false), vec2<i32>(3850i, 7926i)), Struct_1(-1371f, -20025i, vec2<bool>(true, true), vec2<i32>(46020i, -35450i)), Struct_1(1420f, i32(-2147483648), vec2<bool>(false, true), vec2<i32>(33505i, 2147483647i)), Struct_1(-1107f, 34136i, vec2<bool>(false, true), vec2<i32>(0i, -254i)), Struct_1(1000f, 54759i, vec2<bool>(true, false), vec2<i32>(-62042i, -13268i)), Struct_1(-275f, 7882i, vec2<bool>(true, true), vec2<i32>(i32(-2147483648), 2147483647i)), Struct_1(1281f, 0i, vec2<bool>(false, true), vec2<i32>(i32(-2147483648), 0i)), Struct_1(-2833f, 17069i, vec2<bool>(false, true), vec2<i32>(-1i, -25971i)), Struct_1(1000f, i32(-2147483648), vec2<bool>(true, false), vec2<i32>(52727i, 28094i)), Struct_1(-460f, 2147483647i, vec2<bool>(false, false), vec2<i32>(2147483647i, i32(-2147483648))), Struct_1(-925f, -14099i, vec2<bool>(false, false), vec2<i32>(i32(-2147483648), -6323i)), Struct_1(-903f, i32(-2147483648), vec2<bool>(true, true), vec2<i32>(1i, -1i)), Struct_1(370f, 2147483647i, vec2<bool>(false, false), vec2<i32>(0i, 0i)), Struct_1(2335f, 1i, vec2<bool>(false, false), vec2<i32>(2147483647i, -22543i)), Struct_1(252f, 1543i, vec2<bool>(false, false), vec2<i32>(-12703i, 1i)), Struct_1(-265f, -10050i, vec2<bool>(false, true), vec2<i32>(1i, 2147483647i)), Struct_1(231f, i32(-2147483648), vec2<bool>(true, true), vec2<i32>(-34570i, 1i)), Struct_1(-478f, 0i, vec2<bool>(true, true), vec2<i32>(-13715i, 18667i)), Struct_1(997f, -41305i, vec2<bool>(true, true), vec2<i32>(1i, 1i)), Struct_1(355f, i32(-2147483648), vec2<bool>(true, false), vec2<i32>(3864i, -40311i)), Struct_1(1000f, i32(-2147483648), vec2<bool>(false, false), vec2<i32>(1i, 2147483647i)), Struct_1(-1062f, i32(-2147483648), vec2<bool>(false, false), vec2<i32>(65555i, 1i)), Struct_1(283f, 2147483647i, vec2<bool>(false, true), vec2<i32>(-49126i, -8731i)), Struct_1(-2237f, i32(-2147483648), vec2<bool>(false, true), vec2<i32>(1i, -1i)), Struct_1(1000f, 27951i, vec2<bool>(false, false), vec2<i32>(12635i, -1i)), Struct_1(-909f, 33206i, vec2<bool>(false, true), vec2<i32>(-101449i, 4225i)), Struct_1(306f, -6759i, vec2<bool>(true, true), vec2<i32>(-1i, 0i)));

var<private> global3: vec4<bool>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec4<u32>) -> vec4<bool> {
    global2 = array<Struct_1, 28>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(637f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), ~abs(u_input.a), !(!select(select(global3.zx, global1.c.c, vec2<bool>(global3.x, global3.x)), global1.c.c, vec2<bool>(global1.a.x, true))), global1.c.d);
    var var_1 = Struct_1(-1306f, global1.c.d.x, global3.zw, vec2<i32>(firstLeadingBit(global1.c.d.x), 23334i));
    var var_2 = global1.b;
    var var_3 = 57347u;
    return global1.d;
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_2 {
    global3 = select(global1.d, !func_3(~_wgslsmith_clamp_vec4_u32(arg_3, vec4<u32>(7517u, 1554u, 1u, 100455u), vec4<u32>(arg_3.x, 30590u, 36259u, 50476u))), true);
    global3 = global1.d;
    global0 = array<i32, 21>();
    global2 = array<Struct_1, 28>();
    var var_0 = arg_3;
    return Struct_2(vec3<bool>(var_0.x >= arg_3.x, true, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a, global1.c.a, 1020f, -1447f), global1.b)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) * _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1452f, arg_0.a), _wgslsmith_f_op_f32(-arg_0.a)))), -36609i, select(global1.d.xx, !select(global1.c.c, global3.yy, false), true), ~max(vec2<i32>(-55967i, 1i), vec2<i32>(arg_2.d.x, 2147483647i)) << (var_0.wx % vec2<u32>(32u))), !(!(!(!global1.d))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: f32) -> vec3<bool> {
    var var_0 = -1i;
    let var_1 = vec2<bool>(arg_1.x, false);
    global1 = Struct_2(!arg_1.xxz, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.x, arg_2, -411f, -145f) - arg_0.b), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-327f, arg_0.b.x, global1.b.x, global1.c.a), arg_0.b, global3.x))))))), global1.c, global1.d);
    let var_2 = func_2(arg_0.c, i32(-1i) * -1i, Struct_1(240f, _wgslsmith_div_i32(-1i, _wgslsmith_sub_i32(abs(-1i), global0[_wgslsmith_index_u32(min(0u, 46857u), 21u)])), vec2<bool>(arg_1.x, var_1.x), ~(~firstTrailingBit(vec2<i32>(-1i, global0[_wgslsmith_index_u32(61569u, 21u)])))), firstLeadingBit(~vec4<u32>(~22832u, 50110u, 1u, 19950u))).c;
    var var_3 = _wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~min(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(40015u, 33145u, 76113u, 92711u)));
    return !(!vec3<bool>(firstLeadingBit(u_input.a) < max(var_2.b, global0[_wgslsmith_index_u32(4294967295u, 21u)]), func_3(~vec4<u32>(var_3.x, 4294967295u, 31780u, 1u)).x, func_2(global1.c, ~global1.c.d.x, Struct_1(333f, -1i, vec2<bool>(global1.c.c.x, global1.c.c.x), var_2.d), vec4<u32>(62149u, 363u, var_3.x, var_3.x)).c.c.x));
}

fn func_1(arg_0: f32, arg_1: i32) -> vec2<bool> {
    let var_0 = Struct_2(select(func_4(func_2(global1.c, max(u_input.a, global0[_wgslsmith_index_u32(10074u, 21u)]), Struct_1(arg_0, arg_1, global1.c.c, vec2<i32>(2147483647i, arg_1)), vec4<u32>(1u, 1u, 1u, 1u)), func_2(global1.c, i32(-1i) * -2147483647i, func_2(global2[_wgslsmith_index_u32(478u, 28u)], -2147483647i, global1.c, vec4<u32>(0u, 4294967295u, 25064u, 43514u)).c, ~vec4<u32>(1u, 92308u, 4294967295u, 1u)).d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c.a - global1.c.a) - _wgslsmith_f_op_f32(arg_0 + 1291f))), !func_3(~vec4<u32>(48097u, 18506u, 0u, 1u)).zxx, global1.d.wxz), _wgslsmith_f_op_vec4_f32(-vec4<f32>(func_2(func_2(global2[_wgslsmith_index_u32(65407u, 28u)], 1i, global2[_wgslsmith_index_u32(40771u, 28u)], vec4<u32>(0u, 62953u, 4294967295u, 1u)).c, 50773i, func_2(global1.c, -2147483647i, global1.c, vec4<u32>(38081u, 15471u, 0u, 43134u)).c, vec4<u32>(1u, 14098u, 0u, 11111u)).c.a, _wgslsmith_f_op_f32(f32(-1f) * -1034f), -1091f, func_2(func_2(Struct_1(global1.c.a, global1.c.b, vec2<bool>(global1.d.x, global3.x), global1.c.d), u_input.a, Struct_1(global1.c.a, global0[_wgslsmith_index_u32(1u, 21u)], vec2<bool>(true, global1.a.x), vec2<i32>(58481i, global0[_wgslsmith_index_u32(3905u, 21u)])), vec4<u32>(126601u, 4294967295u, 28261u, 0u)).c, _wgslsmith_div_i32(2147483647i, u_input.a), global2[_wgslsmith_index_u32(1u, 28u)], vec4<u32>(0u, 11861u, 32405u, 2236u)).c.a)), Struct_1(-127f, global0[_wgslsmith_index_u32(reverseBits(~(~4294967295u)), 21u)], !vec2<bool>(!global3.x, true | global3.x), vec2<i32>(u_input.a << (~0u % 32u), 9974i)), vec4<bool>(!global3.x, global1.c.c.x, global3.x, true));
    var var_1 = firstLeadingBit(firstTrailingBit(vec2<u32>(1u, 1u) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), abs(vec2<u32>(0u, 0u))) % vec2<u32>(32u))));
    var var_2 = true;
    let var_3 = _wgslsmith_mult_vec3_u32(~firstTrailingBit(vec3<u32>(~50798u, 55931u, var_1.x)), min(~(~vec3<u32>(var_1.x, var_1.x, var_1.x)), vec3<u32>(~var_1.x, _wgslsmith_clamp_u32(var_1.x, var_1.x, 65443u), ~var_1.x) & firstTrailingBit(vec3<u32>(var_1.x, var_1.x, 4294967295u) | vec3<u32>(9138u, 40148u, var_1.x))));
    var_2 = true;
    return func_3(_wgslsmith_mod_vec4_u32(~(~(vec4<u32>(1u, 1u, var_1.x, 3288u) ^ vec4<u32>(0u, 75615u, 90595u, 1u))), countOneBits(~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, var_3.x, var_3.x, var_3.x), vec4<u32>(31708u, 1u, 0u, var_1.x))))).yz;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = vec4<bool>(true, !(-95454i > global0[_wgslsmith_index_u32(max(54233u, 4294967295u), 21u)]) & true, true, all(!global1.d));
    var var_0 = Struct_2(global3.xzx, global1.b, Struct_1(-1445f, -abs(global1.c.d.x), vec2<bool>(true, !any(global1.d.zw)), global1.c.d), vec4<bool>(all(func_1(-409f, -29902i)) != true, all(func_3(vec4<u32>(49659u, 0u, 26391u, 4294967295u))) && false, !(!global3.x), global3.x));
    var var_1 = func_2(func_2(func_2(func_2(func_2(global2[_wgslsmith_index_u32(108606u, 28u)], -1727i, Struct_1(326f, global0[_wgslsmith_index_u32(1u, 21u)], global3.ww, var_0.c.d), vec4<u32>(58110u, 12581u, 4779u, 8973u)).c, global1.c.b | var_0.c.d.x, global2[_wgslsmith_index_u32(1u, 28u)], ~vec4<u32>(33092u, 4294967295u, 35411u, 17988u)).c, -2147483647i, Struct_1(-848f, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, 57950u), 21u)], global1.a.xy, _wgslsmith_mod_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(69282u, 21u)], global0[_wgslsmith_index_u32(1546u, 21u)]), var_0.c.d)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(83090u, 33837u, 1u, 0u), vec4<u32>(1u, 0u, 18110u, 1u), vec4<u32>(0u, 5533u, 4294967295u, 1u))).c, 27860i, func_2(Struct_1(_wgslsmith_f_op_f32(var_0.c.a * 1071f), -u_input.a, vec2<bool>(false, var_0.c.c.x), global1.c.d), var_0.c.b, global1.c, vec4<u32>(1u, 1u, 1u, 1u) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))).c, ~(~vec4<u32>(1u, 1u, 1u, 1u))).c, max(~u_input.a, 65701i), global2[_wgslsmith_index_u32(~30366u, 28u)], vec4<u32>(~(~(~0u)), abs(_wgslsmith_mod_u32(~0u, 1u)), firstTrailingBit(24378u) | ~(~4294967295u), max(1u, ~min(1u, 28576u)))).c;
    let var_2 = Struct_1(var_0.b.x, select(var_1.b, -(~_wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(1u, 21u)], global1.c.d.x, 1i), vec3<i32>(1i, -20536i, global1.c.b))), true), func_3(vec4<u32>(1u, 1u, 1u, 1u)).yy, min(abs(global1.c.d) | vec2<i32>(-2147483647i, global1.c.b), vec2<i32>(global1.c.d.x, abs(var_0.c.d.x))) >> (vec2<u32>(1u >> (1u % 32u), 1u) % vec2<u32>(32u)));
    global0 = array<i32, 21>();
    global3 = var_0.d;
    var_1 = Struct_1(-747f, countOneBits(_wgslsmith_dot_vec4_i32(-vec4<i32>(var_0.c.d.x, -1i, 2147483647i, 25577i), vec4<i32>(global0[_wgslsmith_index_u32(~40966u, 21u)], var_1.d.x, var_0.c.b & 38460i, 0i))), select(select(func_2(Struct_1(-470f, var_1.d.x, global1.c.c, var_0.c.d), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(64503u, 4294967295u), 21u)], Struct_1(var_0.b.x, u_input.a, vec2<bool>(false, var_0.d.x), vec2<i32>(41797i, 14653i)), vec4<u32>(1u, 1u, 1u, 1u)).c.c, func_4(func_2(global2[_wgslsmith_index_u32(1053u, 28u)], 1i, var_0.c, vec4<u32>(4294967295u, 1u, 93906u, 59899u)), !var_0.d, _wgslsmith_f_op_f32(max(469f, global1.b.x))).xy, any(var_0.d.zy)), !var_1.c, all(vec3<bool>(!global3.x, true, var_0.c.c.x))), -_wgslsmith_mod_vec2_i32(abs(abs(global1.c.d)), _wgslsmith_mult_vec2_i32(var_2.d, vec2<i32>(var_1.d.x, var_2.b))));
    var_1 = func_2(var_2, 638i, var_2, select(~(firstTrailingBit(vec4<u32>(0u, 29556u, 0u, 0u)) | abs(vec4<u32>(21091u, 0u, 29057u, 4294967295u))), vec4<u32>(max(~27924u, _wgslsmith_mult_u32(25791u, 1u)), ~(~4294967295u), 1u, 1u), true && global3.x)).c;
    var_1 = Struct_1(1f, select(0i, var_0.c.b, global1.c.c.x) | 485i, var_1.c, ~firstTrailingBit(~(~var_1.d)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(1u, ~(~reverseBits(3060u)), _wgslsmith_add_u32(14819u, 0u), 74491u), vec3<i32>(-2147483647i, 1i, 21469i), -min(min(2147483647i, var_2.d.x), u_input.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(763f, global1.b.x)))))), 4294967295u);
}

