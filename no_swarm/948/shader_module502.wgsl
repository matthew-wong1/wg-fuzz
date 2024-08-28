struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: vec2<f32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_3,
    c: f32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 14> = array<vec3<f32>, 14>(vec3<f32>(-819f, 145f, 413f), vec3<f32>(-327f, -2097f, 656f), vec3<f32>(2721f, 2081f, -907f), vec3<f32>(100f, -417f, 840f), vec3<f32>(1771f, -1000f, -1000f), vec3<f32>(1186f, -420f, 1172f), vec3<f32>(-1697f, 1361f, -2285f), vec3<f32>(-1396f, -1000f, 374f), vec3<f32>(-1762f, 1170f, 1065f), vec3<f32>(-755f, -106f, -446f), vec3<f32>(-1106f, 424f, 1152f), vec3<f32>(856f, 368f, -1691f), vec3<f32>(366f, 1174f, -2252f), vec3<f32>(188f, -711f, -1000f));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_4, arg_1: i32, arg_2: Struct_4, arg_3: vec2<u32>) -> Struct_4 {
    let var_0 = 18496u;
    global0 = array<vec3<f32>, 14>();
    global0 = array<vec3<f32>, 14>();
    global0 = array<vec3<f32>, 14>();
    var var_1 = Struct_4(u_input.b, arg_0.b, -1178f);
    return Struct_4(_wgslsmith_mult_vec2_i32(var_1.a, -vec2<i32>(var_1.b.b, i32(-1i) * -36234i)), Struct_3(vec2<f32>(1208f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1610f)))), 0i, arg_2.b.c), arg_0.c);
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: Struct_5) -> Struct_1 {
    var var_0 = func_2(func_2(Struct_4(arg_2.b.a, arg_2.b.b, arg_2.a.b.c.x), -2147483647i, Struct_4(u_input.c.xy ^ (u_input.c.zx | u_input.b), func_2(arg_2.b, firstTrailingBit(u_input.e), func_2(Struct_4(vec2<i32>(1i, arg_1), arg_2.a.b, -445f), -49333i, arg_2.a, vec2<u32>(u_input.a, 4294967295u)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 0u))).b, _wgslsmith_f_op_f32(round(-258f))), countOneBits(min(vec2<u32>(45451u, 1u), vec2<u32>(u_input.a, 1u)))), _wgslsmith_div_i32(arg_2.b.b.b, -1i), func_2(Struct_4(_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, 23332i), vec2<i32>(-37438i, arg_2.a.b.b)) ^ (vec2<i32>(43271i, 9400i) ^ vec2<i32>(-49354i, u_input.b.x)), arg_2.b.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(430f + 890f), _wgslsmith_f_op_f32(-980f * arg_2.b.b.a.x))), ~1i, arg_2.b, ~vec2<u32>(_wgslsmith_clamp_u32(u_input.a, 1u, 0u), ~u_input.a)), ~vec2<u32>(firstLeadingBit(u_input.a | 64158u), u_input.a)).b;
    var_0 = arg_2.b.b;
    var var_1 = max(_wgslsmith_add_u32((0u | u_input.a) & (u_input.a << (15845u % 32u)), 0u), u_input.a) >= _wgslsmith_mod_u32(u_input.a & ~1u, min(u_input.a | 0u, ~(9114u | u_input.a)));
    let var_2 = Struct_2(arg_0, Struct_1(_wgslsmith_sub_u32(_wgslsmith_div_u32(28455u, 1u), 4294967295u | u_input.a) >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 49599u, u_input.a), vec4<u32>(0u, u_input.a, u_input.a, 0u)) % 32u)));
    let var_3 = arg_2.a.b.a.x;
    return var_2.b;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_4, arg_3: Struct_2) -> Struct_1 {
    var var_0 = ~(~(~vec3<u32>(~1u, 44666u, ~arg_1.a)));
    var var_1 = (vec3<u32>(abs(~u_input.a), arg_3.b.a, (arg_1.a | u_input.a) << (~var_0.x % 32u)) & abs(select(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0, 61766u, arg_1.a), vec3<u32>(arg_1.a, u_input.a, 51610u)), select(vec3<u32>(84340u, 95040u, var_0.x), vec3<u32>(u_input.a, var_0.x, 115756u), vec3<bool>(false, true, true)), !vec3<bool>(arg_3.a, arg_3.a, false)))) & ~reverseBits(select(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, arg_0, u_input.a), vec3<u32>(u_input.a, arg_0, 1u)), vec3<u32>(22886u, arg_0, 4294967295u) >> (vec3<u32>(4294967295u, arg_0, arg_3.b.a) % vec3<u32>(32u)), select(vec3<bool>(false, false, arg_3.a), vec3<bool>(arg_3.a, arg_3.a, true), vec3<bool>(arg_3.a, arg_3.a, false))));
    var var_2 = func_2(arg_2, func_2(Struct_4(~vec2<i32>(-733i, arg_2.b.b), Struct_3(_wgslsmith_f_op_vec2_f32(trunc(arg_2.b.a)), u_input.b.x, arg_2.b.a), arg_2.c), abs(u_input.b.x ^ arg_2.b.b), func_2(func_2(func_2(arg_2, arg_2.a.x, arg_2, vec2<u32>(3057u, 0u)), _wgslsmith_clamp_i32(u_input.e, arg_2.b.b, 2147483647i), func_2(arg_2, arg_2.b.b, arg_2, vec2<u32>(arg_0, 1u)), var_1.yx), 10173i, Struct_4(vec2<i32>(-58785i, -1i), func_2(Struct_4(arg_2.a, Struct_3(vec2<f32>(1000f, -951f), 1i, vec2<f32>(741f, arg_2.b.a.x)), -1096f), -68345i, Struct_4(u_input.b, arg_2.b, arg_2.c), var_1.zx).b, 1742f), vec2<u32>(var_0.x >> (27388u % 32u), ~arg_0)), var_0.xz).b.b, arg_2, vec2<u32>(func_3(!arg_3.a, _wgslsmith_sub_i32(0i, 1i), Struct_5(Struct_4(u_input.c.yz, arg_2.b, -1965f), arg_2)).a, (1u << (u_input.a % 32u)) & ~0u) | reverseBits(vec2<u32>(1u, _wgslsmith_mod_u32(4294967295u, 57667u))));
    let var_3 = arg_2;
    var_2 = func_2(Struct_4(vec2<i32>(i32(-1i) * -var_3.b.b, var_3.b.b), arg_2.b, var_2.b.c.x), min(-40906i, var_2.b.b), Struct_4(-_wgslsmith_add_vec2_i32(arg_2.a, arg_2.a), Struct_3(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_3.c, var_2.c), _wgslsmith_f_op_vec2_f32(ceil(arg_2.b.a)))), _wgslsmith_sub_i32(~arg_2.a.x, ~12503i), vec2<f32>(552f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), arg_2.c), vec2<u32>(_wgslsmith_clamp_u32(reverseBits(u_input.a), arg_3.b.a, _wgslsmith_sub_u32(507u | var_0.x, 59622u)), arg_3.b.a));
    return func_3(arg_3.a, reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-2629i, -2147483647i, arg_2.a.x), ~vec3<i32>(arg_2.a.x, 1i, 0i)) ^ arg_2.a.x), Struct_5(func_2(arg_2, 96958i, arg_2, var_1.xz | select(var_1.xz, vec2<u32>(var_0.x, var_0.x), false)), arg_2));
}

fn func_1(arg_0: vec2<i32>) -> u32 {
    global0 = array<vec3<f32>, 14>();
    var var_0 = Struct_2(true, func_4(4294967295u, func_3(any(vec3<bool>(true, true, true)), u_input.b.x, Struct_5(func_2(Struct_4(arg_0, Struct_3(vec2<f32>(2342f, 193f), 2147483647i, vec2<f32>(1000f, 1106f)), 1196f), 52555i, Struct_4(vec2<i32>(1i, u_input.d), Struct_3(vec2<f32>(-969f, -1392f), u_input.c.x, vec2<f32>(1000f, -1048f)), -1167f), vec2<u32>(8123u, 45761u)), Struct_4(arg_0, Struct_3(vec2<f32>(725f, 897f), u_input.c.x, vec2<f32>(-437f, -726f)), 1894f))), Struct_4(firstLeadingBit(~vec2<i32>(arg_0.x, -44789i)), func_2(func_2(Struct_4(arg_0, Struct_3(vec2<f32>(-814f, -2063f), 0i, vec2<f32>(2130f, -475f)), -515f), 1i, Struct_4(vec2<i32>(u_input.c.x, arg_0.x), Struct_3(vec2<f32>(-395f, -183f), 1i, vec2<f32>(532f, -1161f)), 108f), vec2<u32>(u_input.a, u_input.a)), arg_0.x, func_2(Struct_4(u_input.c.zz, Struct_3(vec2<f32>(-164f, -464f), -2981i, vec2<f32>(-1606f, -528f)), 522f), -1i, Struct_4(vec2<i32>(arg_0.x, 0i), Struct_3(vec2<f32>(702f, -1000f), u_input.b.x, vec2<f32>(-1380f, -225f)), 247f), vec2<u32>(19597u, 0u)), vec2<u32>(u_input.a, 4294967295u)).b, _wgslsmith_f_op_f32(f32(-1f) * -1084f)), Struct_2(func_2(Struct_4(vec2<i32>(-69559i, 0i), Struct_3(vec2<f32>(585f, 887f), 0i, vec2<f32>(-549f, 136f)), -192f), arg_0.x, Struct_4(vec2<i32>(56835i, -2147483647i), Struct_3(vec2<f32>(-1099f, 865f), arg_0.x, vec2<f32>(-674f, 977f)), -2375f), vec2<u32>(25778u, 1u)).c > _wgslsmith_f_op_f32(-1518f - -161f), Struct_1(min(48403u, u_input.a)))));
    var var_1 = Struct_2(true, func_3(true, reverseBits(~(~arg_0.x)), Struct_5(func_2(func_2(Struct_4(arg_0, Struct_3(vec2<f32>(-499f, 199f), arg_0.x, vec2<f32>(-1000f, 1179f)), 1074f), 70918i, Struct_4(arg_0, Struct_3(vec2<f32>(1772f, -2002f), -45680i, vec2<f32>(693f, 649f)), -316f), vec2<u32>(1u, u_input.a)), -12461i, func_2(Struct_4(vec2<i32>(16946i, u_input.b.x), Struct_3(vec2<f32>(-902f, 1484f), 2147483647i, vec2<f32>(376f, 2123f)), -154f), u_input.b.x, Struct_4(vec2<i32>(-6050i, 2147483647i), Struct_3(vec2<f32>(-867f, -289f), arg_0.x, vec2<f32>(-1659f, -1114f)), -1000f), vec2<u32>(4294967295u, var_0.b.a)), vec2<u32>(var_0.b.a, u_input.a) | vec2<u32>(70836u, 4294967295u)), func_2(Struct_4(u_input.c.zy, Struct_3(vec2<f32>(510f, -790f), arg_0.x, vec2<f32>(251f, 1000f)), -982f), -2147483647i, Struct_4(u_input.b, Struct_3(vec2<f32>(-457f, 471f), -2147483647i, vec2<f32>(544f, 487f)), 1477f), max(vec2<u32>(var_0.b.a, 0u), vec2<u32>(u_input.a, u_input.a))))));
    var var_2 = select(select(max(abs(vec3<u32>(1u, var_1.b.a, u_input.a)) ^ max(vec3<u32>(var_0.b.a, 64334u, 4294967295u), vec3<u32>(4294967295u, var_1.b.a, u_input.a)), _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(69647u, var_1.b.a, u_input.a), vec3<u32>(var_1.b.a, 19944u, 40909u)), countOneBits(vec3<u32>(1u, 0u, 39423u)))), vec3<u32>(0u, 0u, _wgslsmith_div_u32(~67863u, 1u)), !select(any(vec3<bool>(true, true, var_0.a)), any(vec4<bool>(false, true, var_0.a, var_1.a)), var_0.a)), firstLeadingBit(vec3<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(var_0.b.a, 13730u), 106559u), _wgslsmith_clamp_u32(u_input.a, 50271u, 11757u), abs(firstTrailingBit(51552u)))), !var_0.a);
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-718f)))), -284f);
    return _wgslsmith_mod_u32(~(~func_4(~85996u, var_1.b, Struct_4(u_input.c.zx, Struct_3(vec2<f32>(1157f, var_3), 1i, vec2<f32>(-1260f, -225f)), -1087f), Struct_2(false, var_0.b)).a), var_2.x);
}

fn func_5(arg_0: i32, arg_1: Struct_4, arg_2: u32) -> vec4<bool> {
    global0 = array<vec3<f32>, 14>();
    global0 = array<vec3<f32>, 14>();
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(func_3(any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), true)), 65044i >> (abs(arg_2) % 32u), Struct_5(arg_1, arg_1)).a, 14u)])));
    global0 = array<vec3<f32>, 14>();
    global0 = array<vec3<f32>, 14>();
    return !select(vec4<bool>(false, all(vec4<bool>(true, true, true, true)), true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), true), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1204f;
    var var_1 = all(!select(func_5(u_input.c.x, Struct_4(u_input.b, Struct_3(vec2<f32>(var_0, 1000f), 28819i, vec2<f32>(115f, var_0)), -2668f), func_1(u_input.c.zx)), vec4<bool>(any(vec2<bool>(false, false)), false, true, any(vec2<bool>(false, false))), vec4<bool>(true, true, true, true)));
    let var_2 = Struct_5(func_2(func_2(Struct_4(abs(vec2<i32>(u_input.e, u_input.c.x)), Struct_3(vec2<f32>(var_0, -702f), u_input.c.x, vec2<f32>(var_0, var_0)), _wgslsmith_f_op_f32(select(-104f, -2150f, true))), -func_2(Struct_4(u_input.c.yz, Struct_3(vec2<f32>(-291f, -452f), u_input.c.x, vec2<f32>(var_0, 582f)), 667f), u_input.b.x, Struct_4(vec2<i32>(u_input.d, -1i), Struct_3(vec2<f32>(-461f, var_0), u_input.e, vec2<f32>(-150f, var_0)), var_0), vec2<u32>(u_input.a, 4294967295u)).a.x, Struct_4(reverseBits(vec2<i32>(u_input.c.x, u_input.e)), func_2(Struct_4(u_input.c.zx, Struct_3(vec2<f32>(var_0, var_0), 1i, vec2<f32>(var_0, var_0)), var_0), -66795i, Struct_4(vec2<i32>(-5250i, u_input.c.x), Struct_3(vec2<f32>(var_0, var_0), 24259i, vec2<f32>(1459f, 1232f)), -1000f), vec2<u32>(u_input.a, 1u)).b, _wgslsmith_f_op_f32(-var_0)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a) | vec2<u32>(u_input.a, 1u))), _wgslsmith_div_i32(i32(-1i) * -1809i, -45377i ^ u_input.d), Struct_4(vec2<i32>(~u_input.e, 40856i), func_2(Struct_4(u_input.c.yx, Struct_3(vec2<f32>(-715f, var_0), -1i, vec2<f32>(-353f, var_0)), -2099f), 2147483647i, func_2(Struct_4(vec2<i32>(u_input.c.x, 0i), Struct_3(vec2<f32>(var_0, var_0), u_input.d, vec2<f32>(553f, var_0)), 936f), u_input.b.x, Struct_4(vec2<i32>(2147483647i, u_input.d), Struct_3(vec2<f32>(-598f, -768f), -1i, vec2<f32>(1801f, var_0)), var_0), vec2<u32>(0u, u_input.a)), vec2<u32>(50785u, u_input.a)).b, var_0), vec2<u32>(func_1(min(vec2<i32>(u_input.b.x, 1i), vec2<i32>(u_input.c.x, u_input.b.x))), u_input.a)), Struct_4(min(u_input.c.zx, vec2<i32>(u_input.d, u_input.b.x) | ~vec2<i32>(-10565i, u_input.b.x)), Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) + vec2<f32>(var_0, -1082f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-977f, var_0) * vec2<f32>(-619f, 1126f))), -20233i, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-316f, -2576f) * vec2<f32>(var_0, var_0))))), var_0));
    let var_3 = select(!vec4<bool>(true || select(true, false, false), true, true, all(vec3<bool>(false, false, true))), !select(vec4<bool>(true, select(true, false, true), true, true), vec4<bool>(true, true, true, true), var_2.a.b.b > firstLeadingBit(var_2.a.a.x)), true);
    var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, var_2.a.c)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(353f, 1463f))))), func_2(Struct_4(-vec2<i32>(1i, var_2.b.b.b), var_2.b.b, var_0), reverseBits(abs(0i)), func_2(var_2.b, var_2.b.b.b, var_2.b, _wgslsmith_clamp_vec2_u32(vec2<u32>(12850u, 13947u), vec2<u32>(u_input.a, 4022u), vec2<u32>(4294967295u, u_input.a))), vec2<u32>(~4294967295u, 1u)).c)) != 438f;
    var_1 = var_3.x;
    let var_4 = min(~(~firstLeadingBit(firstTrailingBit(6097i))), i32(-1i) * -_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, var_2.a.a.x), vec2<i32>(0i, u_input.b.x)), 2147483647i, 1i));
    let var_5 = _wgslsmith_mod_vec2_i32(vec2<i32>(-countOneBits(var_2.b.b.b) | _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-86651i, 1i), vec2<i32>(var_2.a.a.x, 0i)), abs(var_2.a.a.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, _wgslsmith_mult_i32(0i, 0i), -1i), u_input.c)), var_2.b.a);
    var var_6 = _wgslsmith_clamp_i32(~_wgslsmith_mod_i32(func_2(var_2.a, u_input.b.x, var_2.b, vec2<u32>(55373u, 1u)).b.b, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 61731i, var_5.x, 34479i), vec4<i32>(var_4, 20953i, -8009i, var_2.b.a.x))) << (9740u % 32u), -var_2.a.a.x, -39717i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(var_5.x, func_2(Struct_4(abs(u_input.b), func_2(var_2.a, 1i, Struct_4(vec2<i32>(-2107i, var_2.a.a.x), Struct_3(vec2<f32>(-1217f, var_2.b.c), u_input.b.x, vec2<f32>(var_2.b.b.c.x, 789f)), var_2.b.c), vec2<u32>(6333u, 19769u)).b, 1419f), -2147483647i, Struct_4(select(vec2<i32>(var_5.x, 1i), u_input.b, var_3.yy), func_2(Struct_4(vec2<i32>(2147483647i, u_input.e), var_2.a.b, -520f), u_input.d, var_2.b, vec2<u32>(u_input.a, 55583u)).b, var_2.a.c), vec2<u32>(~4294967295u, 63654u)).b.b, var_2.b.a.x), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_div_f32(1075f, -828f), _wgslsmith_f_op_f32(875f + var_2.a.b.a.x), var_0, _wgslsmith_f_op_f32(-var_0))))));
}

