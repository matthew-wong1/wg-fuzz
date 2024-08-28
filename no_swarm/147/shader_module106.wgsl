struct Struct_1 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 6> = array<vec4<bool>, 6>(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false));

var<private> global1: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(vec2<bool>(false, false), Struct_1(false, vec3<f32>(1062f, 246f, 1616f)), Struct_1(true, vec3<f32>(-531f, -1630f, 2358f)), true, Struct_1(false, vec3<f32>(-754f, -1062f, -207f))), Struct_2(vec2<bool>(false, false), Struct_1(false, vec3<f32>(-930f, 498f, -1429f)), Struct_1(true, vec3<f32>(580f, -1000f, 510f)), false, Struct_1(true, vec3<f32>(367f, 1049f, 809f))), Struct_2(vec2<bool>(false, false), Struct_1(true, vec3<f32>(983f, 1519f, 181f)), Struct_1(false, vec3<f32>(530f, 1097f, -198f)), true, Struct_1(false, vec3<f32>(1600f, -1058f, -662f))), Struct_2(vec2<bool>(false, false), Struct_1(false, vec3<f32>(-193f, 917f, -1793f)), Struct_1(true, vec3<f32>(1834f, 1185f, 191f)), false, Struct_1(false, vec3<f32>(840f, 205f, 1325f))), Struct_2(vec2<bool>(true, true), Struct_1(false, vec3<f32>(928f, 1000f, 1193f)), Struct_1(false, vec3<f32>(-1754f, -1142f, -404f)), false, Struct_1(true, vec3<f32>(882f, -1590f, -113f))), Struct_2(vec2<bool>(true, false), Struct_1(true, vec3<f32>(750f, -1251f, 1658f)), Struct_1(false, vec3<f32>(-804f, 619f, 1434f)), false, Struct_1(true, vec3<f32>(-1701f, 549f, -1057f))), Struct_2(vec2<bool>(false, true), Struct_1(false, vec3<f32>(-1027f, 897f, -251f)), Struct_1(false, vec3<f32>(1611f, 607f, -1698f)), true, Struct_1(true, vec3<f32>(-780f, -578f, 678f))), Struct_2(vec2<bool>(false, false), Struct_1(true, vec3<f32>(-472f, -2408f, 1207f)), Struct_1(true, vec3<f32>(-1988f, 828f, 1377f)), true, Struct_1(false, vec3<f32>(-385f, 1431f, 376f))), Struct_2(vec2<bool>(true, false), Struct_1(true, vec3<f32>(-888f, -1000f, -1041f)), Struct_1(true, vec3<f32>(-1765f, -183f, 1000f)), false, Struct_1(false, vec3<f32>(-884f, -647f, -413f))), Struct_2(vec2<bool>(false, true), Struct_1(true, vec3<f32>(-197f, 1208f, -528f)), Struct_1(true, vec3<f32>(815f, 2243f, -822f)), true, Struct_1(true, vec3<f32>(1083f, -381f, 220f))), Struct_2(vec2<bool>(false, true), Struct_1(false, vec3<f32>(1000f, -586f, 296f)), Struct_1(true, vec3<f32>(-1652f, -1000f, -1000f)), false, Struct_1(true, vec3<f32>(1000f, 1000f, 1336f))), Struct_2(vec2<bool>(true, true), Struct_1(false, vec3<f32>(-2266f, 888f, -1329f)), Struct_1(true, vec3<f32>(-797f, -2664f, 194f)), false, Struct_1(false, vec3<f32>(1720f, -320f, 998f))), Struct_2(vec2<bool>(false, true), Struct_1(true, vec3<f32>(1799f, -1219f, 359f)), Struct_1(true, vec3<f32>(1982f, 1633f, -509f)), true, Struct_1(false, vec3<f32>(1129f, 925f, -1973f))), Struct_2(vec2<bool>(false, false), Struct_1(false, vec3<f32>(-3158f, 572f, -1504f)), Struct_1(false, vec3<f32>(948f, 1400f, -1164f)), true, Struct_1(true, vec3<f32>(-1043f, 1163f, -1182f))), Struct_2(vec2<bool>(false, true), Struct_1(false, vec3<f32>(438f, 672f, 771f)), Struct_1(true, vec3<f32>(1480f, -1699f, 1020f)), true, Struct_1(false, vec3<f32>(-113f, 571f, 796f))), Struct_2(vec2<bool>(true, true), Struct_1(false, vec3<f32>(1290f, 685f, -726f)), Struct_1(false, vec3<f32>(870f, -626f, -366f)), true, Struct_1(false, vec3<f32>(-522f, -627f, -113f))), Struct_2(vec2<bool>(false, false), Struct_1(true, vec3<f32>(174f, -703f, 235f)), Struct_1(false, vec3<f32>(374f, -1973f, -1281f)), true, Struct_1(false, vec3<f32>(-1100f, 313f, 640f))), Struct_2(vec2<bool>(true, true), Struct_1(true, vec3<f32>(835f, -303f, -487f)), Struct_1(true, vec3<f32>(1263f, 1162f, 593f)), true, Struct_1(false, vec3<f32>(-831f, 730f, -313f))), Struct_2(vec2<bool>(true, false), Struct_1(false, vec3<f32>(1422f, 865f, -691f)), Struct_1(true, vec3<f32>(804f, -638f, 606f)), true, Struct_1(false, vec3<f32>(812f, 306f, -174f))), Struct_2(vec2<bool>(false, true), Struct_1(false, vec3<f32>(1294f, 419f, -1322f)), Struct_1(false, vec3<f32>(-883f, -156f, 466f)), false, Struct_1(true, vec3<f32>(227f, -2053f, -1420f))), Struct_2(vec2<bool>(true, true), Struct_1(false, vec3<f32>(1406f, -1651f, -848f)), Struct_1(false, vec3<f32>(155f, 289f, -413f)), false, Struct_1(false, vec3<f32>(-177f, -633f, 522f))));

var<private> global2: array<vec2<bool>, 29>;

var<private> global3: array<vec3<u32>, 7> = array<vec3<u32>, 7>(vec3<u32>(1u, 0u, 4902u), vec3<u32>(1u, 4294967295u, 8501u), vec3<u32>(53665u, 54359u, 1u), vec3<u32>(4294967295u, 0u, 27253u), vec3<u32>(18751u, 0u, 42733u), vec3<u32>(4294967295u, 60199u, 25235u), vec3<u32>(64723u, 32973u, 4294967295u));

var<private> global4: array<f32, 9> = array<f32, 9>(374f, -1210f, 569f, 431f, -415f, -2024f, -153f, -1000f, -391f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: Struct_1) -> vec4<bool> {
    global3 = array<vec3<u32>, 7>();
    let var_0 = vec2<bool>(false, ((2147483647i | ~u_input.d.x) & _wgslsmith_div_i32(u_input.e, ~(-6526i))) > -2147483647i);
    let var_1 = vec2<bool>(true, var_0.x);
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -867f), arg_0.b.x))), arg_0.b.zz);
    let var_3 = Struct_3(global1[_wgslsmith_index_u32(select(u_input.c, 1u, !(u_input.b <= -32797i) & true), 21u)]);
    return select(vec4<bool>(var_0.x, !(!var_3.a.c.a), true, any(vec3<bool>(all(vec4<bool>(var_0.x, false, var_1.x, var_0.x)), var_0.x, true))), global0[_wgslsmith_index_u32(~(~(~firstTrailingBit(34204u))), 6u)], true);
}

fn func_3(arg_0: vec2<u32>, arg_1: bool, arg_2: f32) -> vec4<bool> {
    var var_0 = ~(~global3[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c, _wgslsmith_dot_vec3_u32(global3[_wgslsmith_index_u32(u_input.c, 7u)], global3[_wgslsmith_index_u32(arg_0.x, 7u)])), 7u)]) ^ global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~vec3<u32>(56056u, 4294967295u, arg_0.x) | ~vec3<u32>(u_input.c, 43472u, 19992u), vec3<u32>(4294967295u, 0u, 0u)), 7u)];
    let var_1 = -vec3<i32>(-max(firstTrailingBit(u_input.d.x), ~20496i), _wgslsmith_add_i32(-1i, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(u_input.a, u_input.d), u_input.d)), ~(-19003i >> (1u % 32u)));
    var var_2 = Struct_3(global1[_wgslsmith_index_u32(min(firstLeadingBit(~var_0.x), _wgslsmith_add_u32(~(~u_input.c), _wgslsmith_sub_u32(select(0u, 7680u, arg_1), _wgslsmith_mod_u32(1u, 46127u)))), 21u)]);
    global0 = array<vec4<bool>, 6>();
    var var_3 = Struct_4(var_2.a, var_2.a, vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(arg_2, -487f, !var_2.a.d)))), -1848f, 952f, 493f), Struct_2(func_2(Struct_1(false, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, global4[_wgslsmith_index_u32(arg_0.x, 9u)], var_2.a.e.b.x) - vec3<f32>(arg_2, 2240f, global4[_wgslsmith_index_u32(var_0.x, 9u)])))).zx, Struct_1(true, vec3<f32>(_wgslsmith_f_op_f32(ceil(global4[_wgslsmith_index_u32(44025u, 9u)])), _wgslsmith_f_op_f32(arg_2 - -1872f), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(4294967295u, 9u)]))), var_2.a.e, arg_1, var_2.a.e));
    return vec4<bool>((true || all(vec2<bool>(var_3.a.e.a, var_2.a.e.a))) != true, true, true & (arg_2 >= global4[_wgslsmith_index_u32(6916u ^ arg_0.x, 9u)]), true);
}

fn func_1(arg_0: Struct_1) -> Struct_3 {
    let var_0 = firstLeadingBit(vec3<u32>(~(select(5892u, u_input.c, false) ^ (u_input.c << (u_input.c % 32u))), 0u, 3654u));
    var var_1 = select(select(func_2(Struct_1(u_input.b != u_input.d.x, _wgslsmith_f_op_vec3_f32(-arg_0.b))), func_3(var_0.yy, select(any(global0[_wgslsmith_index_u32(var_0.x, 6u)]), var_0.x == var_0.x, arg_0.a), -331f), 0i <= (1i >> (u_input.c % 32u))), global0[_wgslsmith_index_u32(u_input.c, 6u)], false);
    global2 = array<vec2<bool>, 29>();
    var var_2 = global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~var_0.x, 20368u, abs(reverseBits(~var_0.x))), 9u)];
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1576f * _wgslsmith_f_op_f32(f32(-1f) * -1353f))));
    return Struct_3(Struct_2(vec2<bool>(global4[_wgslsmith_index_u32(~110642u, 9u)] > _wgslsmith_f_op_f32(floor(1000f)), true || any(vec3<bool>(false, false, arg_0.a))), arg_0, Struct_1(all(!vec4<bool>(false, false, true, arg_0.a)), arg_0.b), all(vec4<bool>(false, !arg_0.a, any(global0[_wgslsmith_index_u32(70297u, 6u)]), true)), Struct_1(func_2(arg_0).x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.x, 1069f, 223f) * vec3<f32>(-826f, -1077f, 232f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_1(!(~(-1i) != -u_input.e), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4[_wgslsmith_index_u32(0u, 9u)], 1984f, global4[_wgslsmith_index_u32(u_input.c, 9u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4[_wgslsmith_index_u32(u_input.c, 9u)], global4[_wgslsmith_index_u32(1u, 9u)], -1041f))))));
    let var_1 = _wgslsmith_mod_vec3_i32(~(vec3<i32>(-1i) * -_wgslsmith_mod_vec3_i32(vec3<i32>(29185i, -1i, u_input.b), vec3<i32>(u_input.b, -2147483647i, 2147483647i))), countOneBits(-(vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x) >> ((vec3<u32>(1558u, 90941u, 0u) >> (global3[_wgslsmith_index_u32(u_input.c, 7u)] % vec3<u32>(32u))) % vec3<u32>(32u)))));
    let var_2 = _wgslsmith_mod_u32(reverseBits(abs(0u)), firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, 0u), vec4<u32>(u_input.c, 4294967295u, u_input.c, u_input.c)) << (0u % 32u))) << ((31588u << (select(_wgslsmith_add_u32(0u, u_input.c), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(0u, u_input.c), _wgslsmith_add_u32(4294967295u, u_input.c), u_input.c), any(func_3(vec2<u32>(32912u, 0u), var_0.a.c.a, var_0.a.c.b.x))) % 32u)) % 32u);
    var var_3 = _wgslsmith_f_op_f32(func_1(func_1(func_1(var_0.a.e).a.b).a.c).a.c.b.x * _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global4[_wgslsmith_index_u32(u_input.c, 9u)], global4[_wgslsmith_index_u32(var_2, 9u)])) - -987f) * func_1(func_1(var_0.a.e).a.b).a.b.b.x)));
    global1 = array<Struct_2, 21>();
    var var_4 = _wgslsmith_clamp_i32(max(_wgslsmith_clamp_i32(min(1i, _wgslsmith_add_i32(0i, 20923i)), var_1.x, -(var_1.x | -1398i)), select(~53812i, _wgslsmith_clamp_i32(0i, _wgslsmith_dot_vec2_i32(u_input.a, var_1.zz), _wgslsmith_div_i32(u_input.d.x, 1i)), !any(vec2<bool>(true, var_0.a.e.a)))), -1i, firstLeadingBit(-var_1.x));
    var var_5 = -var_1;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~select(vec4<u32>(1u, var_2, u_input.c, u_input.c), vec4<u32>(4294967295u, var_2, u_input.c, 65024u), var_0.a.d))));
}

