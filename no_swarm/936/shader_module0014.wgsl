struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: bool,
    d: f32,
    e: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 1>;

var<private> global1: array<Struct_3, 31> = array<Struct_3, 31>(Struct_3(vec2<bool>(false, false), Struct_1(1u, 12787i, 990f, false, -777i), false, -834f, false), Struct_3(vec2<bool>(false, false), Struct_1(0u, -43590i, 1000f, false, 2147483647i), false, 1647f, false), Struct_3(vec2<bool>(true, true), Struct_1(3637u, 1i, 2540f, true, -1i), false, -780f, false), Struct_3(vec2<bool>(true, true), Struct_1(139769u, -1i, -687f, false, -1i), false, 1339f, false), Struct_3(vec2<bool>(false, false), Struct_1(11218u, 1i, -1000f, false, 2147483647i), false, 891f, true), Struct_3(vec2<bool>(true, true), Struct_1(69843u, -12477i, 257f, true, -15879i), false, -669f, false), Struct_3(vec2<bool>(true, true), Struct_1(0u, -1i, -224f, false, 2147483647i), true, -992f, false), Struct_3(vec2<bool>(true, false), Struct_1(13117u, 0i, 1225f, false, 18050i), true, -114f, false), Struct_3(vec2<bool>(false, true), Struct_1(1u, 0i, 586f, false, -3684i), true, -213f, false), Struct_3(vec2<bool>(false, true), Struct_1(47878u, i32(-2147483648), 177f, false, 6980i), true, -121f, true), Struct_3(vec2<bool>(true, false), Struct_1(79694u, 13770i, 1112f, true, 1i), false, 915f, false), Struct_3(vec2<bool>(false, false), Struct_1(4294967295u, -39006i, 799f, false, -17547i), false, -898f, false), Struct_3(vec2<bool>(true, true), Struct_1(55390u, -27685i, 2246f, true, -48410i), false, -753f, false), Struct_3(vec2<bool>(false, true), Struct_1(4294967295u, -73005i, 461f, false, -22639i), true, -591f, true), Struct_3(vec2<bool>(true, true), Struct_1(10791u, 2147483647i, -926f, false, 8168i), false, -1138f, false), Struct_3(vec2<bool>(true, true), Struct_1(0u, -6641i, -1169f, true, -19735i), true, -350f, false), Struct_3(vec2<bool>(false, false), Struct_1(7815u, -1i, 296f, true, -405i), false, 379f, true), Struct_3(vec2<bool>(false, true), Struct_1(30066u, -1i, -1635f, false, -3542i), true, -573f, true), Struct_3(vec2<bool>(false, true), Struct_1(0u, -3334i, -1299f, false, -3630i), true, 217f, false), Struct_3(vec2<bool>(true, false), Struct_1(1u, 42974i, 260f, false, -27291i), false, -791f, true), Struct_3(vec2<bool>(false, true), Struct_1(0u, i32(-2147483648), -641f, true, 41644i), true, -713f, true), Struct_3(vec2<bool>(false, true), Struct_1(0u, -40632i, 1000f, true, 2147483647i), false, -2316f, true), Struct_3(vec2<bool>(false, false), Struct_1(1383u, -1i, 839f, true, -1671i), true, 1123f, true), Struct_3(vec2<bool>(false, false), Struct_1(4294967295u, -40953i, -366f, false, -9999i), false, -308f, true), Struct_3(vec2<bool>(false, true), Struct_1(37052u, 9273i, -549f, false, 2147483647i), true, 1000f, false), Struct_3(vec2<bool>(false, true), Struct_1(1u, 0i, 1608f, false, -1i), false, -266f, false), Struct_3(vec2<bool>(true, false), Struct_1(4294967295u, i32(-2147483648), 263f, false, -13955i), false, -1000f, false), Struct_3(vec2<bool>(false, false), Struct_1(0u, 19288i, 460f, false, -1i), false, -623f, true), Struct_3(vec2<bool>(true, true), Struct_1(76109u, 10056i, 266f, true, 19681i), true, -945f, false), Struct_3(vec2<bool>(false, true), Struct_1(41776u, -2066i, -2559f, true, 4146i), true, -1434f, true), Struct_3(vec2<bool>(false, false), Struct_1(0u, 1i, 2216f, false, 27396i), true, -1304f, true));

var<private> global2: vec3<i32> = vec3<i32>(-60463i, -37082i, 9167i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: f32) -> u32 {
    var var_0 = -65843i;
    global1 = array<Struct_3, 31>();
    global0 = array<Struct_3, 1>();
    let var_1 = min(max(arg_1.a.b.e, arg_1.a.b.b), (~0i >> (arg_1.a.b.a % 32u)) << (1u % 32u)) << (59267u % 32u);
    let var_2 = vec3<i32>(i32(-1i) * -firstLeadingBit(var_1), var_1, arg_1.a.b.e);
    return arg_0.x;
}

fn func_4(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: vec2<i32>) -> vec4<f32> {
    let var_0 = 1464f;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-926f, 982f, -1535f, var_0)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(arg_1)), arg_1))));
    let var_2 = select(vec4<bool>(select(!all(vec4<bool>(false, true, false, true)), false, 6300i >= arg_0), (u_input.d.x ^ _wgslsmith_add_u32(u_input.a.x, u_input.a.x)) >= _wgslsmith_sub_u32(4294967295u, u_input.d.x), false, !any(vec2<bool>(true, true))), select(!vec4<bool>(var_1.x <= arg_1.x, true, select(false, true, true), select(true, false, true)), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), false)), select(vec4<bool>(true, any(vec2<bool>(true, false)), var_1.x >= 823f, any(vec2<bool>(true, false))), vec4<bool>(true, true, true, true), true)), true);
    var var_3 = select(all(!select(select(vec2<bool>(false, var_2.x), vec2<bool>(true, var_2.x), var_2.xz), vec2<bool>(false, var_2.x), !var_2.xy)), var_2.x, true);
    var var_4 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1023f - _wgslsmith_f_op_f32(-arg_1.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0)))) * -490f)));
    return _wgslsmith_f_op_vec4_f32(arg_1 - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.x + var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - 301f)), var_0)));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_4(-max(global2.x ^ global2.x, u_input.c) >> ((func_3(vec4<u32>(u_input.d.x, 15822u, u_input.a.x, 1u) >> (vec4<u32>(u_input.d.x, 1u, u_input.d.x, 50890u) % vec4<u32>(32u)), Struct_4(Struct_3(vec2<bool>(false, true), Struct_1(u_input.d.x, global2.x, 613f, false, 42563i), true, -141f, false), false), -1000f) | _wgslsmith_sub_u32(max(u_input.a.x, u_input.d.x), abs(u_input.a.x))) % 32u), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(115f, 840f, 646f, -933f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1153f, -218f, 357f, -369f) * vec4<f32>(-1427f, 1530f, 778f, -708f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-171f, -678f, 1230f, -170f)), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1607f, 1105f, 355f, -1597f))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(178f, -1060f, 1389f, 627f), vec4<f32>(-2294f, 970f, -1987f, -1032f), true)))), vec4<bool>(true, true, true, true))), Struct_2(abs(vec3<i32>(-u_input.b, -u_input.c, firstLeadingBit(global2.x)))), global2.yz));
    global1 = array<Struct_3, 31>();
    let var_1 = ~_wgslsmith_mult_vec3_u32(~reverseBits(u_input.d), ~(u_input.a | vec3<u32>(0u, 0u, 1u))) & (vec3<u32>(~u_input.a.x, 0u, select(~u_input.a.x, _wgslsmith_add_u32(u_input.d.x, u_input.d.x), false)) >> (abs(~(~vec3<u32>(0u, u_input.d.x, 39556u))) % vec3<u32>(32u)));
    global2 = vec3<i32>(-14127i, ~35348i, global2.x);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(698f, var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1235f)), 1f))), _wgslsmith_f_op_f32(-var_0.x));
    return Struct_1(var_1.x, ~reverseBits(u_input.c), 313f, !any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), false)) || ((all(vec2<bool>(true, false)) && (u_input.c >= u_input.b)) && true), ~firstTrailingBit(global2.x));
}

fn func_5(arg_0: Struct_4, arg_1: i32) -> Struct_1 {
    var var_0 = func_2();
    return Struct_1(abs(arg_0.a.b.a), _wgslsmith_dot_vec2_i32(~_wgslsmith_sub_vec2_i32(vec2<i32>(-6603i, arg_1), global2.yx), ~global2.xx) ^ _wgslsmith_dot_vec2_i32(global2.xx, -global2.yy), 3134f, true, _wgslsmith_mod_i32(-2147483647i, u_input.b));
}

fn func_6(arg_0: vec4<bool>, arg_1: Struct_1) -> vec3<f32> {
    global0 = array<Struct_3, 1>();
    var var_0 = -_wgslsmith_mod_i32(global2.x, func_2().b);
    global0 = array<Struct_3, 1>();
    global0 = array<Struct_3, 1>();
    let var_1 = abs(u_input.d.yy);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(213f, arg_1.c, arg_1.c), vec3<f32>(arg_1.c, -240f, -426f))))))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_1.c), -491f, 1397f)) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1781f, arg_1.c, arg_1.c)))))));
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_6(vec4<bool>(any(vec3<bool>(true, true, true)), ~(-7324i) < _wgslsmith_div_i32(global2.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, global2.x), vec2<i32>(global2.x, 2147483647i))), false, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 0i, 15953i), ~vec3<i32>(-26634i, u_input.c, 0i)) != 1i), func_5(Struct_4(Struct_3(vec2<bool>(true, true), func_2(), true, _wgslsmith_div_f32(155f, 773f), true), all(vec3<bool>(true, true, true))), (_wgslsmith_mult_i32(global2.x, u_input.b) << (~u_input.d.x % 32u)) ^ countOneBits(-22810i))));
    let var_1 = -abs(-1i);
    var var_2 = var_0.xz;
    let var_3 = _wgslsmith_mult_u32(4294967295u, abs(u_input.d.x & (~u_input.a.x & ~4294967295u)));
    let var_4 = 0u;
    return Struct_2(vec3<i32>(-10418i, abs(firstLeadingBit(1i)), 2147483647i));
}

fn func_7(arg_0: Struct_2) -> vec2<bool> {
    global0 = array<Struct_3, 1>();
    var var_0 = select(select(select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false)), vec4<bool>(true, false, true, false), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false))), select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true))), true), vec4<bool>(true, true, true, !(global2.x != u_input.b)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !all(vec2<bool>(false, false)))), !vec4<bool>(true, !(u_input.d.x > u_input.d.x), !any(vec3<bool>(true, true, true)), true), true);
    let var_1 = countOneBits(vec3<i32>(i32(-1i) * -1i, -29093i, ~u_input.c));
    var var_2 = _wgslsmith_f_op_vec3_f32(func_6(select(vec4<bool>(u_input.d.x != (u_input.d.x << (u_input.a.x % 32u)), _wgslsmith_sub_i32(global2.x, -8020i) <= _wgslsmith_mod_i32(1i, u_input.b), true, true), !(!vec4<bool>(var_0.x, var_0.x, false, var_0.x)), select(select(select(vec4<bool>(var_0.x, var_0.x, true, true), vec4<bool>(true, var_0.x, var_0.x, true), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), select(vec4<bool>(true, false, true, true), vec4<bool>(false, var_0.x, var_0.x, true), vec4<bool>(var_0.x, var_0.x, false, var_0.x)), vec4<bool>(false, true, true, true)), select(select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(true, var_0.x, var_0.x, true), vec4<bool>(true, var_0.x, var_0.x, var_0.x)), !vec4<bool>(var_0.x, false, var_0.x, var_0.x), select(vec4<bool>(var_0.x, true, true, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(true, true, true, var_0.x))), !var_0.x)), Struct_1(1u, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(func_1().a, firstLeadingBit(var_1)), countOneBits(1i), -1i), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(select(func_5(Struct_4(Struct_3(vec2<bool>(true, var_0.x), Struct_1(u_input.a.x, -59122i, -1191f, var_0.x, global2.x), var_0.x, 675f, false), false), -10105i).c, -689f, all(vec4<bool>(var_0.x, var_0.x, false, true))))), func_5(Struct_4(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(13047u, 0u, 48675u), u_input.a), 1u)], true), -138i).d, ~abs(select(11082i, u_input.c, false))))).zx;
    let var_3 = vec3<bool>(true, arg_0.a.x != 51721i, !(2147483647i < _wgslsmith_sub_i32(_wgslsmith_mult_i32(arg_0.a.x, var_1.x), arg_0.a.x ^ u_input.b)));
    return !var_0.yz;
}

fn func_8(arg_0: Struct_3, arg_1: f32, arg_2: vec2<u32>, arg_3: vec2<bool>) -> Struct_4 {
    global2 = ~_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.b.b, arg_0.b.e, firstTrailingBit(11821i)), abs(~(vec3<i32>(global2.x, 2147483647i, 2147483647i) & vec3<i32>(u_input.b, global2.x, -1i))));
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-758f, arg_1)) - -764f)), _wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(select(380f, arg_1, any(vec2<bool>(arg_3.x, false)) || (arg_0.b.b <= u_input.c)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 196f, 985f))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1274f, -317f, arg_0.b.c)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.c, 341f, -933f) * vec3<f32>(arg_0.b.c, -248f, arg_0.d))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d, arg_1, arg_1)) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-619f, 755f, 776f)))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_6(vec4<bool>(false, arg_0.e, arg_3.x, true), arg_0.b))))));
    let var_2 = _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(48124u | _wgslsmith_div_u32(arg_2.x, arg_0.b.a), ~_wgslsmith_div_u32(arg_2.x, arg_0.b.a), u_input.d.x)), ~(u_input.a ^ vec3<u32>(arg_0.b.a, 56553u, min(arg_0.b.a, 21383u))));
    return Struct_4(Struct_3(!select(func_7(Struct_2(vec3<i32>(37550i, u_input.c, 10132i))), func_7(Struct_2(vec3<i32>(0i, u_input.b, 2147483647i))), vec2<bool>(arg_0.a.x, false)), func_2(), func_5(Struct_4(arg_0, true | arg_0.e), u_input.c).d, -217f, func_2().d), any(!vec2<bool>(true, arg_3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_8(Struct_3(!func_7(func_1()), Struct_1(69966u, i32(-1i) * -global2.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(499f * -358f), _wgslsmith_f_op_f32(456f + 692f))), func_2().d && func_2().d, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global2.x, -8708i, 8286i), vec3<i32>(u_input.b, -2147483647i, -2147483647i)), global2.x)), true, _wgslsmith_f_op_f32(-696f + 2356f), any(vec3<bool>(true, true, true))), -1010f, _wgslsmith_add_vec2_u32(u_input.d.xx, u_input.a.yy), vec2<bool>(false, !(any(vec3<bool>(true, true, false)) && true)));
    global1 = array<Struct_3, 31>();
    let var_1 = var_0.b;
    var var_2 = vec3<i32>(_wgslsmith_mod_i32(func_8(Struct_3(vec2<bool>(true, var_1), func_2(), true, var_0.a.b.c, func_7(Struct_2(vec3<i32>(u_input.c, 7484i, 5958i))).x), -800f, ~_wgslsmith_mod_vec2_u32(u_input.d.zx, vec2<u32>(0u, u_input.d.x)), func_7(func_1())).a.b.e, -firstLeadingBit(min(-2147483647i, global2.x))), _wgslsmith_mult_i32(-26781i, u_input.c), -41365i);
    global0 = array<Struct_3, 1>();
    let var_3 = Struct_1(55400u, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.b.e & -62517i, global2.x, var_0.a.b.e), ~vec3<i32>(-22631i, 0i, var_2.x)) >> (_wgslsmith_sub_u32(4294967295u, 525u) % 32u), var_0.a.b.c, var_1, ~_wgslsmith_div_i32(abs(_wgslsmith_clamp_i32(var_2.x, 0i, global2.x)), ~58875i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(abs(countOneBits(abs(var_0.a.b.a))), ~(_wgslsmith_add_u32(0u, 9462u) | max(u_input.a.x, var_0.a.b.a))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.a.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-458f + 338f)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_3.c, 342f)))))), global2.x, _wgslsmith_sub_u32(_wgslsmith_sub_u32(1u, func_2().a), 1781u), var_3.c);
}

