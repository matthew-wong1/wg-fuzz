struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: f32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(4294967295u, 82226i, Struct_1(vec3<bool>(true, false, true), vec2<u32>(4294967295u, 26997u), vec3<i32>(1i, 14102i, -8609i), 300f, vec3<u32>(0u, 46512u, 0u))), Struct_2(5864u, 24863i, Struct_1(vec3<bool>(false, true, true), vec2<u32>(16101u, 1u), vec3<i32>(9540i, 13954i, -1i), 520f, vec3<u32>(38002u, 28652u, 35408u))), Struct_2(5044u, 2147483647i, Struct_1(vec3<bool>(true, true, true), vec2<u32>(4294967295u, 94335u), vec3<i32>(2014i, 46975i, 57598i), 411f, vec3<u32>(47244u, 43700u, 11221u))), Struct_2(23696u, 1i, Struct_1(vec3<bool>(true, false, true), vec2<u32>(0u, 0u), vec3<i32>(-1i, 2147483647i, 587i), 916f, vec3<u32>(85096u, 36246u, 54963u))), Struct_2(1276u, i32(-2147483648), Struct_1(vec3<bool>(true, true, true), vec2<u32>(0u, 1u), vec3<i32>(2147483647i, 24776i, -1i), 258f, vec3<u32>(0u, 6101u, 17266u))), Struct_2(4294967295u, i32(-2147483648), Struct_1(vec3<bool>(false, true, true), vec2<u32>(31384u, 77683u), vec3<i32>(-4697i, i32(-2147483648), -1i), 221f, vec3<u32>(4294967295u, 36859u, 4294967295u))), Struct_2(65366u, 2147483647i, Struct_1(vec3<bool>(false, true, false), vec2<u32>(1u, 1u), vec3<i32>(1i, 14325i, -15065i), -1233f, vec3<u32>(0u, 1u, 1u))), Struct_2(1u, 2147483647i, Struct_1(vec3<bool>(true, true, false), vec2<u32>(1u, 57011u), vec3<i32>(0i, -26919i, 39152i), 1351f, vec3<u32>(4294967295u, 4294967295u, 4294967295u))), Struct_2(27455u, 48374i, Struct_1(vec3<bool>(true, true, false), vec2<u32>(29945u, 0u), vec3<i32>(31878i, -6335i, 0i), 1000f, vec3<u32>(40564u, 55972u, 1u))), Struct_2(0u, 0i, Struct_1(vec3<bool>(false, false, false), vec2<u32>(38151u, 1u), vec3<i32>(-1i, 2147483647i, 5477i), 1000f, vec3<u32>(0u, 1u, 0u))), Struct_2(17841u, -1i, Struct_1(vec3<bool>(false, false, false), vec2<u32>(0u, 0u), vec3<i32>(0i, 0i, 18317i), 563f, vec3<u32>(10806u, 58988u, 76643u))), Struct_2(25200u, -49955i, Struct_1(vec3<bool>(false, false, false), vec2<u32>(74820u, 25511u), vec3<i32>(2147483647i, 62960i, 35937i), 305f, vec3<u32>(101403u, 27044u, 103332u))), Struct_2(12757u, i32(-2147483648), Struct_1(vec3<bool>(false, false, true), vec2<u32>(0u, 28255u), vec3<i32>(i32(-2147483648), 0i, -38134i), -591f, vec3<u32>(4294967295u, 16971u, 8394u))), Struct_2(9104u, i32(-2147483648), Struct_1(vec3<bool>(true, true, true), vec2<u32>(78824u, 0u), vec3<i32>(54948i, -1i, 1i), 140f, vec3<u32>(62421u, 10802u, 16116u))), Struct_2(0u, 0i, Struct_1(vec3<bool>(true, false, false), vec2<u32>(4294967295u, 4294967295u), vec3<i32>(0i, 2147483647i, -39318i), 910f, vec3<u32>(4294967295u, 1u, 52201u))));

var<private> global1: array<vec2<f32>, 30> = array<vec2<f32>, 30>(vec2<f32>(-1536f, -512f), vec2<f32>(-270f, 546f), vec2<f32>(-361f, 771f), vec2<f32>(641f, 847f), vec2<f32>(-874f, -811f), vec2<f32>(-129f, -300f), vec2<f32>(480f, -2514f), vec2<f32>(-1622f, -858f), vec2<f32>(111f, -179f), vec2<f32>(2538f, 348f), vec2<f32>(850f, 838f), vec2<f32>(167f, -2049f), vec2<f32>(112f, 1452f), vec2<f32>(-314f, 1105f), vec2<f32>(1622f, 2021f), vec2<f32>(753f, 1210f), vec2<f32>(-1010f, 1333f), vec2<f32>(-617f, 272f), vec2<f32>(-1000f, -144f), vec2<f32>(528f, 826f), vec2<f32>(-1000f, 1000f), vec2<f32>(1000f, 1000f), vec2<f32>(1007f, -473f), vec2<f32>(1048f, 347f), vec2<f32>(-1475f, 1455f), vec2<f32>(-545f, -353f), vec2<f32>(-799f, -893f), vec2<f32>(1255f, 2408f), vec2<f32>(-2506f, -977f), vec2<f32>(-792f, -308f));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<u32>) -> i32 {
    global1 = array<vec2<f32>, 30>();
    global0 = array<Struct_2, 15>();
    global0 = array<Struct_2, 15>();
    var var_0 = select(false, select(true, arg_1.x < ~_wgslsmith_mod_u32(arg_1.x, arg_1.x), (i32(-1i) * -arg_0.x) != 13393i), any(vec3<bool>(true, true, true)));
    global0 = array<Struct_2, 15>();
    return _wgslsmith_add_i32((reverseBits(~arg_0.x) ^ abs(0i)) & _wgslsmith_sub_i32(_wgslsmith_sub_i32(-44311i, 1i), arg_0.x & (u_input.a ^ -2867i)), abs(44736i));
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: Struct_3) -> Struct_1 {
    let var_0 = (firstLeadingBit(~1u) & arg_1.c.e.x) ^ ~(~_wgslsmith_clamp_u32(u_input.c.x, 0u, arg_2.a.c.e.x));
    let var_1 = arg_2;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(arg_2.a.c.d + 1256f), arg_2.e.x);
    var_2 = var_1.e;
    var var_3 = ~1u;
    return Struct_1(!select(vec3<bool>(all(vec3<bool>(arg_0, true, true)), var_1.d >= -6695i, true), vec3<bool>(true, false, arg_2.a.c.a.x), !select(arg_1.c.a.x, arg_2.a.c.a.x, arg_2.a.c.a.x)), vec2<u32>(~(~var_1.c | ~4294967295u), 39777u), vec3<i32>(0i, ~(-25275i) ^ func_3(var_1.b.zy, ~vec4<u32>(arg_1.a, 17585u, 19889u, 6204u)), ~max(22591i, var_1.d)), _wgslsmith_f_op_f32(select(arg_2.a.c.d, arg_1.c.d, !all(select(var_1.a.c.a, var_1.a.c.a, arg_1.c.a.x)))), arg_1.c.e);
}

fn func_4(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_1) -> vec3<u32> {
    var var_0 = Struct_3(Struct_2(func_2((arg_1 | arg_1) != true, global0[_wgslsmith_index_u32(4294967295u, 15u)], Struct_3(global0[_wgslsmith_index_u32(~4294967295u, 15u)], vec3<i32>(arg_2.c.x, 2147483647i, 2147483647i), ~arg_2.b.x, u_input.b.x, arg_0)).b.x, ~u_input.a, arg_2), abs(-arg_2.c), ~12496u, abs(-4943i), arg_0);
    let var_1 = var_0.a.c.d;
    var_0 = Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(max(u_input.c.x, 15252u)), ~min(50426u, 22993u)), 15u)], _wgslsmith_sub_vec3_i32(countOneBits(_wgslsmith_add_vec3_i32(u_input.b, _wgslsmith_mod_vec3_i32(var_0.b, vec3<i32>(-36961i, arg_2.c.x, 7713i)))), var_0.a.c.c), 0u, -_wgslsmith_mod_i32(0i, 1i), _wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(~(var_0.c >> (u_input.c.x % 32u)) >> (var_0.c % 32u), 30u)]));
    global0 = array<Struct_2, 15>();
    let var_2 = true;
    return var_0.a.c.e;
}

fn func_5(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_3) -> bool {
    global0 = array<Struct_2, 15>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-arg_3.e.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1536f + arg_2.d) + _wgslsmith_f_op_f32(step(arg_3.e.x, 757f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.d))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1346f)))), _wgslsmith_f_op_f32(-arg_3.e.x), arg_2.d);
    let var_1 = vec4<u32>(firstTrailingBit(~_wgslsmith_sub_u32(_wgslsmith_sub_u32(1u, u_input.c.x), ~88394u)), u_input.c.x, ~abs(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 16912u), vec2<u32>(arg_2.e.x, u_input.c.x)) << (~arg_3.a.c.e.x % 32u)), ~arg_3.a.c.b.x);
    global0 = array<Struct_2, 15>();
    global1 = array<vec2<f32>, 30>();
    return all(arg_3.a.c.a.yz);
}

fn func_1() -> Struct_2 {
    var var_0 = !func_5(true, vec3<bool>(true, true, all(vec3<bool>(true, false, true))), Struct_1(vec3<bool>(true, true, true), ~max(vec2<u32>(57362u, u_input.c.x), vec2<u32>(u_input.c.x, u_input.c.x)), _wgslsmith_mult_vec3_i32(u_input.b, u_input.b) & select(u_input.b, vec3<i32>(1i, u_input.d, u_input.d), true), _wgslsmith_f_op_f32(f32(-1f) * -251f), func_4(_wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(4294967295u, 30u)] + vec2<f32>(-860f, 856f)), u_input.c.x != u_input.c.x, func_2(false, global0[_wgslsmith_index_u32(u_input.c.x, 15u)], Struct_3(Struct_2(1u, u_input.d, Struct_1(vec3<bool>(false, true, true), vec2<u32>(u_input.c.x, u_input.c.x), u_input.b, -304f, u_input.c)), u_input.b, 3366u, u_input.d, vec2<f32>(1005f, -1344f))))), Struct_3(Struct_2(~u_input.c.x, ~u_input.b.x, func_2(false, Struct_2(u_input.c.x, u_input.a, Struct_1(vec3<bool>(false, true, false), vec2<u32>(0u, u_input.c.x), u_input.b, -658f, u_input.c)), Struct_3(Struct_2(u_input.c.x, u_input.a, Struct_1(vec3<bool>(false, true, false), u_input.c.xy, u_input.b, -284f, u_input.c)), vec3<i32>(1i, 2147483647i, u_input.b.x), u_input.c.x, u_input.a, vec2<f32>(325f, 966f)))), firstLeadingBit(firstTrailingBit(u_input.b)), ~25193u, _wgslsmith_mult_i32(select(u_input.a, 0i, false), u_input.a), _wgslsmith_f_op_vec2_f32(ceil(global1[_wgslsmith_index_u32(~u_input.c.x, 30u)]))));
    global1 = array<vec2<f32>, 30>();
    global1 = array<vec2<f32>, 30>();
    let var_1 = _wgslsmith_div_u32(abs(_wgslsmith_dot_vec3_u32(u_input.c, ~(~vec3<u32>(34770u, u_input.c.x, u_input.c.x)))), u_input.c.x);
    global1 = array<vec2<f32>, 30>();
    return global0[_wgslsmith_index_u32(var_1, 15u)];
}

fn func_6(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1, arg_3: Struct_2) -> Struct_3 {
    let var_0 = arg_3.c;
    global0 = array<Struct_2, 15>();
    var var_1 = vec2<u32>(_wgslsmith_clamp_u32(4294967295u, 8847u, _wgslsmith_clamp_u32(min(var_0.e.x, arg_1), _wgslsmith_mod_u32(reverseBits(var_0.e.x), var_0.b.x), _wgslsmith_mod_u32(arg_3.a, 29611u))), ~1u);
    var var_2 = arg_0.a;
    let var_3 = arg_2.d;
    return Struct_3(Struct_2(var_0.b.x, ~(~arg_3.c.c.x) & -4252i, func_1().c), min(vec3<i32>(1i, 0i, func_3(~arg_3.c.c.zz, _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.b.x, var_1.x, arg_3.a, arg_2.b.x), vec4<u32>(arg_2.e.x, arg_1, u_input.c.x, 53769u)))), func_2(arg_3.a > _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_0.e.x, u_input.c.x), arg_3.c.e), func_1(), Struct_3(Struct_2(var_0.e.x, -24228i, arg_0.c), vec3<i32>(arg_0.c.c.x, 13828i, -52549i), arg_2.e.x, firstTrailingBit(arg_2.c.x), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_3.c.d, arg_3.c.d), vec2<f32>(1052f, arg_0.c.d))))).c), ~func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.c.d, var_0.d), vec2<f32>(var_0.d, -886f)))), true, func_2(all(vec4<bool>(arg_3.c.a.x, false, arg_0.c.a.x, true)), Struct_2(4294967295u, 2147483647i, Struct_1(arg_0.c.a, vec2<u32>(32596u, arg_3.c.e.x), u_input.b, 1000f, arg_2.e)), Struct_3(Struct_2(arg_2.e.x, arg_0.b, Struct_1(vec3<bool>(arg_0.c.a.x, var_0.a.x, true), vec2<u32>(1u, 1302u), vec3<i32>(37152i, arg_0.b, u_input.a), arg_3.c.d, u_input.c)), vec3<i32>(-17364i, arg_2.c.x, arg_3.b), 1u, -2147483647i, global1[_wgslsmith_index_u32(0u, 30u)]))).x, -76461i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(36901u, 30u)])) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1103f, 683f) * global1[_wgslsmith_index_u32(var_1.x, 30u)]))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(global1[_wgslsmith_index_u32(44110u, 30u)], vec2<f32>(var_0.d, arg_2.d), true)))) + _wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_1, arg_1), 30u)]))));
}

fn func_7(arg_0: Struct_3) -> i32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1085f, -831f)))), arg_0.e.x);
    let var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), var_0.x), var_0.x);
    global1 = array<vec2<f32>, 30>();
    var var_2 = Struct_3(arg_0.a, _wgslsmith_clamp_vec3_i32(-abs(u_input.b), _wgslsmith_add_vec3_i32(-vec3<i32>(u_input.a, arg_0.d, -35476i), arg_0.a.c.c ^ -arg_0.b), func_1().c.c), u_input.c.x, u_input.d, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(arg_0.e, vec2<f32>(var_0.x, var_0.x)))) * global1[_wgslsmith_index_u32(1u, 30u)]))));
    let var_3 = func_2(var_2.a.c.a.x, Struct_2(var_2.c, countOneBits(~var_2.d), func_6(var_2.a, arg_0.a.c.e.x, func_2(arg_0.a.c.a.x, Struct_2(1u, u_input.a, var_2.a.c), arg_0), arg_0.a).a.c), arg_0);
    return var_2.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(56799u) << (1u % 32u), u_input.c.x) ^ countOneBits(0u), 15u)], vec3<i32>(func_7(func_6(func_1(), firstTrailingBit(u_input.c.x), Struct_1(vec3<bool>(false, false, true), vec2<u32>(66740u, u_input.c.x), vec3<i32>(u_input.a, -9108i, -1i), 2092f, vec3<u32>(u_input.c.x, 1u, 2869u)), func_1())), ~(u_input.b.x | (i32(-1i) * -49479i)), u_input.d), ~u_input.c.x, ~0i, _wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(1u, 30u)]));
    let var_1 = u_input.b.zz;
    global0 = array<Struct_2, 15>();
    global0 = array<Struct_2, 15>();
    global1 = array<vec2<f32>, 30>();
    global1 = array<vec2<f32>, 30>();
    global0 = array<Struct_2, 15>();
    var var_2 = Struct_3(var_0.a, _wgslsmith_mult_vec3_i32(~_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, var_1.x, 74954i), vec3<i32>(u_input.b.x, -2147483647i, -33275i)), abs(firstTrailingBit(vec3<i32>(var_0.a.b, 1i, var_1.x)))) | -vec3<i32>(select(u_input.b.x, var_0.a.b, var_0.a.c.a.x), var_1.x, 4483i ^ var_1.x), func_2(var_0.a.c.b.x <= 22169u, global0[_wgslsmith_index_u32(~(~var_0.a.c.e.x >> (~var_0.c % 32u)), 15u)], var_0).e.x, var_0.a.c.c.x, _wgslsmith_f_op_vec2_f32(-var_0.e));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(6003u, _wgslsmith_sub_u32(var_2.c, u_input.c.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1741f, var_2.a.c.d) + vec2<f32>(var_0.a.c.d, 249f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.c.d, var_0.e.x) * vec2<f32>(var_0.e.x, 321f))))), firstTrailingBit(17579i) >> (4294967295u % 32u));
}

