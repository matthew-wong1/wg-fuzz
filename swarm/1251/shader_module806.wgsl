struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
    d: vec4<bool>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: i32,
    d: vec3<bool>,
    e: vec4<i32>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_5, 25> = array<Struct_5, 25>(Struct_5(vec2<f32>(-604f, -226f), Struct_4(52840u, Struct_1(35548i, -45529i, false, vec4<bool>(true, false, false, true), 1049f), 20936i, vec3<bool>(false, false, true), vec4<i32>(2147483647i, -85536i, -3701i, 1i))), Struct_5(vec2<f32>(1657f, 1784f), Struct_4(68590u, Struct_1(-1i, 2147483647i, true, vec4<bool>(true, false, false, false), -183f), -16361i, vec3<bool>(true, true, false), vec4<i32>(25107i, -22939i, -1i, i32(-2147483648)))), Struct_5(vec2<f32>(-795f, -494f), Struct_4(0u, Struct_1(2147483647i, 1i, true, vec4<bool>(true, false, false, false), -636f), 0i, vec3<bool>(true, false, true), vec4<i32>(1i, 1i, 510i, -1i))), Struct_5(vec2<f32>(-342f, -915f), Struct_4(2571u, Struct_1(-3670i, i32(-2147483648), false, vec4<bool>(false, true, true, false), -1000f), i32(-2147483648), vec3<bool>(true, true, true), vec4<i32>(2147483647i, i32(-2147483648), -66150i, -1i))), Struct_5(vec2<f32>(1116f, 400f), Struct_4(39689u, Struct_1(20662i, 2147483647i, false, vec4<bool>(false, false, true, true), 910f), i32(-2147483648), vec3<bool>(false, false, true), vec4<i32>(16832i, -7465i, 31827i, -36464i))), Struct_5(vec2<f32>(-1000f, -713f), Struct_4(51983u, Struct_1(0i, 0i, true, vec4<bool>(false, true, true, false), -1354f), -1531i, vec3<bool>(false, true, true), vec4<i32>(-1i, 1i, 27559i, 38526i))), Struct_5(vec2<f32>(-417f, -2171f), Struct_4(92546u, Struct_1(i32(-2147483648), 0i, true, vec4<bool>(true, false, false, false), -1257f), -64571i, vec3<bool>(true, false, false), vec4<i32>(17328i, 2147483647i, -43982i, 43810i))), Struct_5(vec2<f32>(977f, 1513f), Struct_4(41293u, Struct_1(i32(-2147483648), -12755i, true, vec4<bool>(false, false, false, false), 319f), 9119i, vec3<bool>(false, true, false), vec4<i32>(-21207i, i32(-2147483648), -1180i, -15409i))), Struct_5(vec2<f32>(-1736f, -953f), Struct_4(15539u, Struct_1(0i, -1i, false, vec4<bool>(true, false, false, false), 250f), 23935i, vec3<bool>(true, false, true), vec4<i32>(18603i, 2147483647i, 26914i, 0i))), Struct_5(vec2<f32>(996f, -774f), Struct_4(28030u, Struct_1(-2013i, 75i, false, vec4<bool>(false, false, false, true), -365f), i32(-2147483648), vec3<bool>(false, true, true), vec4<i32>(-1i, 14491i, 11088i, 412i))), Struct_5(vec2<f32>(114f, 239f), Struct_4(52363u, Struct_1(-75158i, 1i, false, vec4<bool>(true, true, true, true), -289f), i32(-2147483648), vec3<bool>(false, false, true), vec4<i32>(0i, 1i, 2147483647i, 0i))), Struct_5(vec2<f32>(-1162f, -1518f), Struct_4(97256u, Struct_1(i32(-2147483648), i32(-2147483648), true, vec4<bool>(false, true, true, false), 423f), -23519i, vec3<bool>(false, false, true), vec4<i32>(i32(-2147483648), 2147483647i, -31682i, -17520i))), Struct_5(vec2<f32>(-750f, -1408f), Struct_4(30336u, Struct_1(36697i, 0i, true, vec4<bool>(true, true, true, true), -485f), -1i, vec3<bool>(true, true, true), vec4<i32>(-27810i, -1i, 0i, -76072i))), Struct_5(vec2<f32>(578f, 1549f), Struct_4(4294967295u, Struct_1(-42086i, 5964i, false, vec4<bool>(false, true, true, false), -1000f), i32(-2147483648), vec3<bool>(true, false, false), vec4<i32>(20327i, -6320i, 1i, -18422i))), Struct_5(vec2<f32>(1006f, 1364f), Struct_4(1u, Struct_1(i32(-2147483648), i32(-2147483648), true, vec4<bool>(false, true, false, false), -1570f), 0i, vec3<bool>(false, true, false), vec4<i32>(2147483647i, 33016i, 52013i, -68615i))), Struct_5(vec2<f32>(1071f, -870f), Struct_4(0u, Struct_1(2147483647i, 0i, true, vec4<bool>(false, false, true, true), -1000f), 0i, vec3<bool>(false, true, false), vec4<i32>(1i, 12522i, 0i, 1i))), Struct_5(vec2<f32>(-706f, -1000f), Struct_4(37417u, Struct_1(i32(-2147483648), 52310i, true, vec4<bool>(true, true, false, false), 1268f), 21909i, vec3<bool>(true, false, false), vec4<i32>(1i, -5537i, -1i, 1i))), Struct_5(vec2<f32>(-804f, 478f), Struct_4(10977u, Struct_1(1126i, -42041i, false, vec4<bool>(true, false, true, true), -663f), 43515i, vec3<bool>(false, false, true), vec4<i32>(-8962i, 3193i, 34627i, -38354i))), Struct_5(vec2<f32>(2300f, -724f), Struct_4(1u, Struct_1(2147483647i, -7783i, false, vec4<bool>(false, true, true, false), -589f), 181i, vec3<bool>(true, false, true), vec4<i32>(-1i, 1i, 17022i, 2147483647i))), Struct_5(vec2<f32>(-2457f, -244f), Struct_4(94366u, Struct_1(4028i, -1i, false, vec4<bool>(false, false, false, false), -3126f), -1i, vec3<bool>(true, true, true), vec4<i32>(i32(-2147483648), -15481i, 47154i, -1i))), Struct_5(vec2<f32>(-1180f, -244f), Struct_4(19979u, Struct_1(0i, -4046i, true, vec4<bool>(true, false, true, false), -554f), 1i, vec3<bool>(false, false, true), vec4<i32>(0i, -4122i, 34724i, 58095i))), Struct_5(vec2<f32>(-1000f, 874f), Struct_4(49429u, Struct_1(-13479i, i32(-2147483648), true, vec4<bool>(false, true, false, true), -1119f), 51974i, vec3<bool>(false, true, true), vec4<i32>(8718i, 37424i, 4119i, i32(-2147483648)))), Struct_5(vec2<f32>(1123f, -1774f), Struct_4(1u, Struct_1(-1i, 2147483647i, true, vec4<bool>(true, true, false, false), -1006f), i32(-2147483648), vec3<bool>(true, true, true), vec4<i32>(16130i, -28843i, 0i, 2147483647i))), Struct_5(vec2<f32>(-309f, -489f), Struct_4(1u, Struct_1(11922i, 50072i, true, vec4<bool>(true, true, true, true), -2330f), -52854i, vec3<bool>(true, false, true), vec4<i32>(-264i, 0i, 0i, 23178i))), Struct_5(vec2<f32>(-1621f, -311f), Struct_4(9925u, Struct_1(2147483647i, -22877i, true, vec4<bool>(true, true, false, false), 1000f), -29568i, vec3<bool>(true, false, true), vec4<i32>(2147483647i, 2147483647i, -7210i, -4687i))));

var<private> global2: Struct_2 = Struct_2(Struct_1(-11326i, -1i, false, vec4<bool>(false, true, true, true), -103f), Struct_1(1i, -21207i, true, vec4<bool>(true, false, false, false), -254f), 1000f);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec4<u32> {
    var var_0 = _wgslsmith_mult_vec2_u32(reverseBits(u_input.c), select(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.d, u_input.c.x), u_input.c) >> (vec2<u32>(~u_input.a, 77207u >> (0u % 32u)) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(~vec2<u32>(1u, u_input.a), ~vec2<u32>(u_input.a, 35022u)) ^ u_input.c, vec2<bool>(true, true)));
    let var_1 = 48285u;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1150f, 1000f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(581f, global2.b.e, 973f))))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-290f, _wgslsmith_f_op_f32(trunc(-2386f)), global2.a.e)))));
    var var_3 = Struct_4(~47569u, Struct_1(u_input.b.x, ~global2.b.a, all(select(global2.b.d.xx, global2.b.d.yy, global2.b.d.yz)) && true, vec4<bool>(all(global2.a.d), true, select(u_input.b.x >= global2.a.a, var_2.x == global2.a.e, global2.a.c), true), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), -30600i, vec3<bool>(global2.b.d.x, var_2.x != var_2.x, !(!global2.b.d.x)), firstLeadingBit((~vec4<i32>(51342i, 1i, 2147483647i, u_input.b.x) & firstTrailingBit(vec4<i32>(9645i, global2.a.b, u_input.b.x, global2.a.b))) | vec4<i32>(min(23917i, -1i), global2.b.a, global2.a.a, u_input.b.x)));
    let var_4 = var_1 & (reverseBits(min(22143u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, var_0.x), vec2<u32>(0u, var_0.x)))) | var_0.x);
    return _wgslsmith_sub_vec4_u32(~(~(~vec4<u32>(var_4, var_4, var_3.a, var_1))) & vec4<u32>(~var_0.x, var_4, 20189u, 2382u), ~min(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1, 71309u, 8712u, var_1), vec4<u32>(var_1, 24545u, 4294967295u, var_3.a) | vec4<u32>(4294967295u, 1u, 42682u, var_4), vec4<u32>(0u, 76478u, 13884u, 41304u)), min(min(vec4<u32>(var_1, 4294967295u, 88645u, 35981u), vec4<u32>(var_0.x, 27953u, 0u, var_3.a)), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 22316u, 74241u, 12999u), vec4<u32>(u_input.d, 10533u, 4294967295u, var_0.x), vec4<u32>(31868u, 4294967295u, 0u, var_3.a)))));
}

fn func_2(arg_0: Struct_4) -> Struct_5 {
    var var_0 = ~vec4<u32>(~firstLeadingBit(4294967295u), ~firstTrailingBit(4294967295u), 4294967295u, 25487u) << (~vec4<u32>(arg_0.a, ~min(1u, u_input.c.x), abs(0u), 30422u) % vec4<u32>(32u));
    global2 = Struct_2(global2.a, Struct_1(-22219i, ~u_input.b.x, arg_0.d.x, !vec4<bool>(any(global2.b.d), all(arg_0.d), !global2.a.c, arg_0.b.c & true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1337f)))), _wgslsmith_f_op_f32(-arg_0.b.e));
    let var_1 = -(~(_wgslsmith_mult_i32(0i, firstTrailingBit(-26327i)) & firstLeadingBit(_wgslsmith_div_i32(1i, -11781i))));
    var_0 = ~func_3() ^ vec4<u32>(firstTrailingBit(var_0.x), _wgslsmith_dot_vec4_u32(max(select(vec4<u32>(1u, u_input.a, 0u, u_input.c.x), vec4<u32>(arg_0.a, 0u, 0u, 1u), vec4<bool>(false, global2.b.d.x, arg_0.d.x, arg_0.b.c)), vec4<u32>(0u, arg_0.a, u_input.d, 8086u) >> (vec4<u32>(1u, 1u, 0u, 27894u) % vec4<u32>(32u))), vec4<u32>(u_input.c.x, func_3().x, u_input.a, 0u)), countOneBits(2667u), ~select(u_input.c.x ^ u_input.d, arg_0.a >> (17183u % 32u), global2.b.a >= 14274i));
    let var_2 = false;
    return global1[_wgslsmith_index_u32(4294967295u, 25u)];
}

fn func_4(arg_0: Struct_5, arg_1: u32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.b.b.e, arg_0.b.b.e, -1677f, 766f), vec4<f32>(arg_0.b.b.e, global2.b.e, -1196f, -1242f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1700f, 143f, arg_0.b.b.e, arg_0.a.x), vec4<f32>(-154f, global2.c, global2.c, -354f)))), vec4<f32>(_wgslsmith_f_op_f32(arg_0.a.x + arg_0.a.x), arg_0.b.b.e, _wgslsmith_f_op_f32(select(-498f, arg_0.b.b.e, global2.b.d.x)), -345f))), vec4<f32>(arg_0.b.b.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1285f * arg_0.a.x) - _wgslsmith_f_op_f32(arg_0.b.b.e - arg_0.b.b.e)), 204f, arg_0.a.x), func_2(arg_0.b).b.b.d)));
    return Struct_3(true);
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: u32, arg_3: Struct_4) -> Struct_3 {
    let var_0 = ~arg_3.a;
    let var_1 = func_4(func_2(arg_3), firstLeadingBit(firstLeadingBit(11229u)));
    let var_2 = func_2(Struct_4(~82729u, func_2(Struct_4(~arg_3.a, Struct_1(-1i, -45052i, arg_3.b.c, global2.a.d, -401f), ~u_input.b.x, global2.a.d.yyy, arg_3.e)).b.b, countOneBits(_wgslsmith_div_i32(_wgslsmith_sub_i32(arg_3.b.b, u_input.b.x), arg_3.e.x >> (481u % 32u))), func_2(arg_3).b.d, arg_3.e));
    global0 = countOneBits(_wgslsmith_mod_u32(~arg_3.a, ~arg_3.a));
    global0 = _wgslsmith_dot_vec2_u32(min(countOneBits(u_input.c), ~(~u_input.c)), u_input.c);
    return func_4(func_2(Struct_4(83014u, func_2(Struct_4(35908u, Struct_1(-2147483647i, -6833i, false, vec4<bool>(var_2.b.d.x, arg_0, arg_0, var_2.b.b.c), arg_3.b.e), 1i, var_2.b.b.d.yzz, vec4<i32>(global2.b.a, 16028i, global2.a.a, var_2.b.e.x))).b.b, firstLeadingBit(-1i), vec3<bool>(func_4(var_2, arg_1).a, true, var_2.b.b.d.x), vec4<i32>(1i, -global2.a.a, -64348i, abs(-2147483647i)))), 1u);
}

fn func_5(arg_0: Struct_3) -> Struct_1 {
    global2 = Struct_2(func_2(func_2(Struct_4(~4294967295u, func_2(Struct_4(u_input.a, Struct_1(-2147483647i, 0i, false, vec4<bool>(false, arg_0.a, false, global2.b.c), 800f), u_input.b.x, vec3<bool>(global2.b.d.x, false, global2.a.d.x), vec4<i32>(global2.a.a, -9538i, global2.b.a, -22006i))).b.b, u_input.b.x, global2.b.d.yyx, vec4<i32>(u_input.b.x, u_input.b.x, 0i, 1i) >> (vec4<u32>(u_input.c.x, 60241u, 18426u, u_input.a) % vec4<u32>(32u)))).b).b.b, func_2(Struct_4(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, 2262u, 0u, u_input.d), ~vec4<u32>(1u, 1u, u_input.d, u_input.a)), Struct_1(global2.b.b ^ global2.b.a, global2.b.b, true, func_2(Struct_4(u_input.d, Struct_1(-1i, -15438i, false, global2.b.d, global2.a.e), global2.b.b, vec3<bool>(global2.a.c, true, global2.a.d.x), vec4<i32>(-2147483647i, -3349i, -35996i, global2.a.b))).b.b.d, -147f), 13246i, vec3<bool>(func_1(arg_0.a, u_input.a, 1u, Struct_4(119915u, global2.a, 2147483647i, vec3<bool>(true, arg_0.a, true), vec4<i32>(0i, global2.b.a, u_input.b.x, global2.a.a))).a, global2.a.d.x || arg_0.a, any(global2.b.d.xy)), vec4<i32>(u_input.b.x, global2.a.a, -16133i, 0i) | vec4<i32>(global2.b.b, -3087i, u_input.b.x, 0i))).b.b, -372f);
    let var_0 = global2.b;
    var var_1 = Struct_4(~_wgslsmith_add_u32((0u | u_input.a) | u_input.c.x, func_3().x), global2.b, i32(-1i) * -_wgslsmith_mult_i32(func_2(Struct_4(u_input.c.x, global2.b, -6995i, global2.a.d.yyx, vec4<i32>(1i, -1i, -19237i, 2147483647i))).b.e.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a, -2147483647i, u_input.b.x), vec3<i32>(global2.b.a, -60084i, var_0.a))), !select(select(global2.a.d.wyy, vec3<bool>(var_0.c, false, false), true), vec3<bool>(global2.b.c, select(arg_0.a, var_0.c, false), true), func_2(func_2(Struct_4(u_input.d, Struct_1(-30056i, u_input.b.x, global2.a.d.x, vec4<bool>(false, true, true, true), var_0.e), -60089i, vec3<bool>(var_0.d.x, false, false), vec4<i32>(44261i, u_input.b.x, global2.b.b, var_0.a))).b).b.b.d.yxz), vec4<i32>(global2.b.a, global2.a.a, _wgslsmith_add_i32(-(i32(-1i) * -2147483647i), max(_wgslsmith_sub_i32(var_0.a, 1i), -46189i)), firstLeadingBit(6809i)));
    global1 = array<Struct_5, 25>();
    var var_2 = func_2(Struct_4(~_wgslsmith_sub_u32(_wgslsmith_mult_u32(18689u, var_1.a), max(1u, var_1.a)), var_1.b, firstLeadingBit(~u_input.b.x), !vec3<bool>(any(global2.a.d), false, true), vec4<i32>(global2.b.b, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(var_1.b.a, 0i), var_1.c, var_1.e.x >> (101139u % 32u)), u_input.b.x, u_input.b.x)));
    return var_2.b.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_5, 25>();
    global1 = array<Struct_5, 25>();
    let var_0 = global1[_wgslsmith_index_u32(u_input.a, 25u)];
    var var_1 = -870f;
    let var_2 = vec4<u32>(max(4294967295u, ~u_input.d ^ min(59528u, 88400u)), ~(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(1u, var_0.b.a, 40064u, var_0.b.a)), vec4<u32>(16129u, 1u, 0u, var_0.b.a) & vec4<u32>(var_0.b.a, var_0.b.a, u_input.a, 74258u)) ^ 36590u), 25502u, 0u);
    global2 = Struct_2(var_0.b.b, func_5(func_1(false, _wgslsmith_div_u32(var_0.b.a, _wgslsmith_sub_u32(u_input.a, 3174u)), abs(0u), Struct_4(~1u, global2.a, global2.b.a, vec3<bool>(true, true, true), ~vec4<i32>(24707i, 10145i, u_input.b.x, -2147483647i)))), -661f);
    var var_3 = func_1(!(!var_0.b.b.d.x), 0u, u_input.d, var_0.b).a;
    let var_4 = -542f;
    var var_5 = Struct_3(false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.a.x)) - -1556f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.a.x)))))), -204f, var_0.b.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(global2.c * var_4))));
}

