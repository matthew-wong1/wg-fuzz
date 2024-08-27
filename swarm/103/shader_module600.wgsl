struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: i32,
    d: bool,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 9>;

var<private> global1: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(vec4<f32>(194f, 226f, 1434f, -386f), vec4<u32>(0u, 0u, 25010u, 1u), -12739i, false, vec3<bool>(false, false, true)), Struct_2(vec4<f32>(-512f, -732f, 955f, -224f), vec4<u32>(0u, 3585u, 4294967295u, 41989u), 15186i, false, vec3<bool>(true, false, false)), Struct_2(vec4<f32>(-634f, 1792f, -625f, 149f), vec4<u32>(1u, 1u, 52923u, 0u), 0i, false, vec3<bool>(false, true, false)), Struct_2(vec4<f32>(-1313f, 852f, -1336f, 1988f), vec4<u32>(29550u, 1u, 1u, 1u), -1i, true, vec3<bool>(false, true, false)), Struct_2(vec4<f32>(-583f, 1813f, -457f, 639f), vec4<u32>(35979u, 38047u, 14001u, 17180u), 4775i, true, vec3<bool>(false, false, true)), Struct_2(vec4<f32>(611f, 1382f, 1050f, -142f), vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u), 1i, true, vec3<bool>(true, false, false)), Struct_2(vec4<f32>(1430f, 152f, 665f, -1106f), vec4<u32>(1u, 16332u, 29513u, 14815u), -7166i, true, vec3<bool>(true, true, false)), Struct_2(vec4<f32>(1041f, -907f, -513f, 884f), vec4<u32>(67987u, 82896u, 1u, 25674u), -20999i, true, vec3<bool>(true, false, true)), Struct_2(vec4<f32>(199f, -213f, -1130f, -743f), vec4<u32>(0u, 0u, 31101u, 0u), -1i, false, vec3<bool>(false, false, false)), Struct_2(vec4<f32>(864f, 610f, -691f, -313f), vec4<u32>(0u, 1u, 43987u, 24449u), 1i, false, vec3<bool>(false, true, false)), Struct_2(vec4<f32>(-427f, 586f, -1692f, 1132f), vec4<u32>(4294967295u, 49914u, 51448u, 1u), -13871i, true, vec3<bool>(true, true, true)), Struct_2(vec4<f32>(-295f, 188f, 1564f, 2168f), vec4<u32>(12427u, 550u, 0u, 4294967295u), i32(-2147483648), true, vec3<bool>(true, false, true)), Struct_2(vec4<f32>(475f, -614f, 1164f, -542f), vec4<u32>(1u, 33020u, 37348u, 0u), -73125i, false, vec3<bool>(false, false, true)), Struct_2(vec4<f32>(328f, -667f, -1273f, 282f), vec4<u32>(6470u, 1u, 38308u, 48568u), -1i, true, vec3<bool>(false, true, false)), Struct_2(vec4<f32>(-1637f, -1107f, -528f, -565f), vec4<u32>(35742u, 55958u, 38792u, 4294967295u), -13728i, false, vec3<bool>(false, true, false)), Struct_2(vec4<f32>(1179f, 222f, 620f, 135f), vec4<u32>(9337u, 44931u, 20734u, 1u), i32(-2147483648), true, vec3<bool>(true, true, true)), Struct_2(vec4<f32>(-623f, -1000f, 2614f, -1599f), vec4<u32>(29513u, 4294967295u, 4294967295u, 98748u), -10663i, false, vec3<bool>(false, true, true)), Struct_2(vec4<f32>(-485f, 1086f, -644f, -1356f), vec4<u32>(30893u, 0u, 0u, 7218u), i32(-2147483648), true, vec3<bool>(false, false, true)), Struct_2(vec4<f32>(-1293f, 498f, 653f, -192f), vec4<u32>(58346u, 55264u, 4294967295u, 1u), 0i, false, vec3<bool>(false, false, false)), Struct_2(vec4<f32>(-592f, -1229f, -798f, 446f), vec4<u32>(8317u, 0u, 4294967295u, 4294967295u), 44363i, true, vec3<bool>(false, true, true)), Struct_2(vec4<f32>(-721f, 1915f, 142f, -1667f), vec4<u32>(0u, 59163u, 1u, 4294967295u), 2147483647i, false, vec3<bool>(false, false, false)), Struct_2(vec4<f32>(-922f, 971f, -1574f, -379f), vec4<u32>(45809u, 41228u, 4294967295u, 4294967295u), 2147483647i, false, vec3<bool>(true, false, true)), Struct_2(vec4<f32>(1213f, -870f, 1175f, 153f), vec4<u32>(4294967295u, 0u, 0u, 1u), -18764i, true, vec3<bool>(true, false, false)));

var<private> global2: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(vec4<f32>(995f, 1872f, -733f, 1073f), vec4<u32>(4294967295u, 30591u, 1u, 3771u), -11285i, false, vec3<bool>(true, true, false)), Struct_2(vec4<f32>(-427f, 1165f, -775f, 422f), vec4<u32>(4294967295u, 26265u, 0u, 0u), 1i, false, vec3<bool>(true, false, false)), Struct_2(vec4<f32>(267f, 1725f, 148f, -447f), vec4<u32>(4294967295u, 4294967295u, 27469u, 56175u), -1i, true, vec3<bool>(false, true, false)), Struct_2(vec4<f32>(2090f, 144f, 275f, 959f), vec4<u32>(45597u, 0u, 1u, 46532u), 1i, true, vec3<bool>(true, false, false)), Struct_2(vec4<f32>(-1000f, -1633f, -1328f, 1000f), vec4<u32>(5371u, 0u, 4294967295u, 32195u), -33868i, false, vec3<bool>(true, false, false)), Struct_2(vec4<f32>(596f, -1133f, 1502f, 699f), vec4<u32>(48252u, 4294967295u, 54445u, 0u), -36801i, false, vec3<bool>(false, true, false)), Struct_2(vec4<f32>(-2030f, 1118f, -1235f, 1123f), vec4<u32>(0u, 99213u, 47036u, 4294967295u), 0i, true, vec3<bool>(false, false, false)), Struct_2(vec4<f32>(-1000f, 370f, 644f, 1624f), vec4<u32>(27337u, 11568u, 1u, 1u), -12099i, true, vec3<bool>(true, false, false)), Struct_2(vec4<f32>(891f, -1000f, -325f, 245f), vec4<u32>(5713u, 12742u, 4294967295u, 21789u), 36877i, true, vec3<bool>(false, false, true)), Struct_2(vec4<f32>(203f, 1371f, -1035f, 1621f), vec4<u32>(41727u, 88192u, 76407u, 23563u), 0i, true, vec3<bool>(true, false, true)), Struct_2(vec4<f32>(1539f, 407f, 639f, 108f), vec4<u32>(1u, 4294967295u, 4294967295u, 0u), 1i, true, vec3<bool>(true, false, true)), Struct_2(vec4<f32>(431f, 1315f, 745f, -1415f), vec4<u32>(38700u, 0u, 39633u, 1569u), -14179i, true, vec3<bool>(true, true, false)), Struct_2(vec4<f32>(397f, -372f, -410f, -2111f), vec4<u32>(1u, 0u, 74409u, 617u), -39349i, true, vec3<bool>(false, true, true)), Struct_2(vec4<f32>(438f, -777f, 109f, -922f), vec4<u32>(1u, 19996u, 6310u, 4294967295u), -1i, true, vec3<bool>(true, false, true)), Struct_2(vec4<f32>(940f, -223f, 2175f, -1756f), vec4<u32>(53858u, 37096u, 41725u, 2705u), 307i, true, vec3<bool>(false, true, true)), Struct_2(vec4<f32>(398f, -660f, -705f, -663f), vec4<u32>(1u, 2441u, 8807u, 58061u), i32(-2147483648), true, vec3<bool>(false, true, false)), Struct_2(vec4<f32>(-940f, 832f, 857f, -756f), vec4<u32>(18115u, 1u, 69203u, 1u), -29502i, true, vec3<bool>(false, false, true)), Struct_2(vec4<f32>(253f, -762f, 370f, -122f), vec4<u32>(4294967295u, 0u, 1u, 0u), -2647i, true, vec3<bool>(true, true, true)), Struct_2(vec4<f32>(-223f, -1000f, 983f, 1359f), vec4<u32>(16213u, 0u, 80522u, 28670u), 14664i, false, vec3<bool>(true, true, true)), Struct_2(vec4<f32>(-2336f, -1447f, -134f, -990f), vec4<u32>(1u, 38515u, 1u, 0u), 2147483647i, true, vec3<bool>(true, false, true)), Struct_2(vec4<f32>(-662f, -2197f, -414f, -1358f), vec4<u32>(35877u, 58670u, 1u, 41232u), -24163i, true, vec3<bool>(true, true, true)), Struct_2(vec4<f32>(-1738f, -1060f, -1778f, 1148f), vec4<u32>(1u, 1u, 0u, 4294967295u), -34868i, false, vec3<bool>(true, false, true)));

var<private> global3: array<u32, 18> = array<u32, 18>(0u, 0u, 143399u, 27652u, 5723u, 4294967295u, 41961u, 0u, 1u, 10128u, 0u, 50274u, 1u, 22472u, 0u, 10301u, 1u, 4294967295u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> bool {
    var var_0 = Struct_1(!(!vec3<bool>(u_input.c >= global3[_wgslsmith_index_u32(u_input.c, 18u)], true, true)), global3[_wgslsmith_index_u32(reverseBits(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(54776u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 9u)], 18u)], 18u)], global0[_wgslsmith_index_u32(u_input.c, 9u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c, 18u)], 9u)]), vec3<u32>(0u, global3[_wgslsmith_index_u32(47109u, 18u)], 4294967295u), true), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(14131u, 9u)], 9u)], 1u, global0[_wgslsmith_index_u32(4294967295u, 9u)]))), 18u)]), 18u)]);
    global2 = array<Struct_2, 22>();
    let var_1 = (!(!select(var_0.a.x, false, var_0.a.x)) && false) | any(!vec2<bool>(var_0.a.x, false));
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-570f, -1957f, -631f, -438f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(858f, -637f, 358f, -914f))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1028f), _wgslsmith_f_op_f32(abs(2337f)), _wgslsmith_div_f32(2607f, -925f), -344f))), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(var_0.b, var_0.b, 66369u, 4294967295u)), select(min(vec4<u32>(15552u, var_0.b, global3[_wgslsmith_index_u32(u_input.c, 18u)], global3[_wgslsmith_index_u32(4294967295u, 18u)]), vec4<u32>(u_input.c, 4294967295u, 29652u, global3[_wgslsmith_index_u32(var_0.b, 18u)])), ~vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(var_0.b, 18u)], 31159u, 4294967295u), !vec4<bool>(var_1, var_0.a.x, var_1, true))), vec4<u32>(global3[_wgslsmith_index_u32(u_input.c, 18u)], 0u, abs(~u_input.c), (u_input.c >> (global0[_wgslsmith_index_u32(var_0.b, 9u)] % 32u)) << (1u % 32u))), 24693i, !(!var_0.a.x), !(!var_0.a));
    var_0 = Struct_1(select(var_2.e, select(var_2.e, vec3<bool>(var_1, all(vec3<bool>(false, true, var_1)), all(vec3<bool>(true, false, var_2.d))), true), var_2.c != -(21576i << (var_0.b % 32u))), ~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(var_2.b, select(var_2.b, vec4<u32>(u_input.c, 81059u, var_0.b, var_0.b), true)), _wgslsmith_add_u32(_wgslsmith_mult_u32(var_2.b.x, var_0.b), 29769u)));
    return any(vec4<bool>(select(_wgslsmith_f_op_f32(select(var_2.a.x, -910f, true)) != _wgslsmith_f_op_f32(717f * var_2.a.x), _wgslsmith_f_op_f32(exp2(var_2.a.x)) == 649f, !(!var_1)), select(!all(vec4<bool>(var_0.a.x, var_0.a.x, false, var_2.e.x)), var_1, true), any(vec2<bool>(var_0.a.x, true)), any(vec4<bool>(var_1, var_0.a.x, false, any(vec4<bool>(var_0.a.x, var_2.d, var_2.d, var_0.a.x))))));
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 38866u, countOneBits(global0[_wgslsmith_index_u32(abs(~0u), 9u)])), ~_wgslsmith_div_vec3_u32(vec3<u32>(select(3839u, global3[_wgslsmith_index_u32(34935u, 18u)], false), _wgslsmith_dot_vec4_u32(vec4<u32>(5418u, 1u, u_input.c, global3[_wgslsmith_index_u32(u_input.c, 18u)]), vec4<u32>(global0[_wgslsmith_index_u32(27212u, 9u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(75581u, 18u)], 9u)], 18u)], 20914u, global3[_wgslsmith_index_u32(4294967295u, 18u)])), global3[_wgslsmith_index_u32(u_input.c, 18u)] << (global0[_wgslsmith_index_u32(48886u, 9u)] % 32u)), vec3<u32>(20832u, 4294967295u, abs(4294967295u))));
    var var_1 = vec2<bool>(!any(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false))) || !func_3(), select(func_3() && false, func_3(), all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), true)))));
    var_0 = vec3<u32>(abs(~(~0u >> (~var_0.x % 32u))), ~global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, _wgslsmith_clamp_u32(0u, 31831u, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 18u)], 9u)], 18u)] | u_input.c), u_input.c), 9u)], ~(~(~(~var_0.x))));
    let var_2 = !any(vec2<bool>(all(select(vec2<bool>(true, false), vec2<bool>(false, var_1.x), vec2<bool>(var_1.x, true))), var_1.x));
    global1 = array<Struct_2, 23>();
    return u_input.a.x;
}

fn func_1(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: bool) -> vec3<f32> {
    global0 = array<u32, 9>();
    let var_0 = vec2<i32>(-2147483647i | _wgslsmith_clamp_i32(-func_2(), 1i, ~u_input.b), _wgslsmith_add_i32(u_input.b, _wgslsmith_add_i32(39896i, u_input.b)));
    var var_1 = Struct_1(vec3<bool>(false, all(vec4<bool>(false, arg_2.a.x, true, arg_2.b != 1u)), arg_0), firstLeadingBit(_wgslsmith_mod_u32(arg_1.x, _wgslsmith_mod_u32(global3[_wgslsmith_index_u32(u_input.c << (arg_2.b % 32u), 18u)], arg_2.b >> (global0[_wgslsmith_index_u32(20868u, 9u)] % 32u)))));
    let var_2 = -var_0.x;
    global0 = array<u32, 9>();
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))) + _wgslsmith_f_op_f32(floor(-329f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1003f))), -1047f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1098f * 1000f), -196f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(710f)), 1f))))));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: vec4<f32>) -> Struct_1 {
    var var_0 = ~(-1i);
    global1 = array<Struct_2, 23>();
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(846f))), arg_2.x, _wgslsmith_f_op_f32(trunc(-438f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(249f, 174f, 1000f, arg_2.x)) - vec4<f32>(_wgslsmith_f_op_f32(round(arg_1.x)), _wgslsmith_f_op_f32(round(arg_1.x)), _wgslsmith_div_f32(193f, arg_1.x), arg_1.x)) - arg_2));
    let var_2 = Struct_1(vec3<bool>(true, true, true), reverseBits(_wgslsmith_sub_u32(6214u, _wgslsmith_div_u32(global3[_wgslsmith_index_u32(21537u, 18u)], 79187u))) >> (_wgslsmith_sub_u32(~u_input.c, 1u << (_wgslsmith_add_u32(global3[_wgslsmith_index_u32(49857u, 18u)], 1u) % 32u)) % 32u));
    var_1 = arg_2;
    return var_2;
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: Struct_1, arg_3: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-413f, -546f), _wgslsmith_f_op_f32(min(255f, -144f)))), 2394f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1038f - 535f)), _wgslsmith_f_op_f32(ceil(-951f))))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1267f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_1(true, vec4<u32>(global3[_wgslsmith_index_u32(u_input.c, 18u)], 15449u, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c, 18u)], 9u)], 4294967295u), arg_2, arg_2.a.x)).x - _wgslsmith_f_op_f32(-var_0.x)) - -411f) * -444f), var_0.x);
    var var_1 = u_input.a.zxw;
    global0 = array<u32, 9>();
    global1 = array<Struct_2, 23>();
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 23>();
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(func_5(-1i, ~(~(~u_input.b)), func_4(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, 2147483647i), vec2<i32>(u_input.a.x, u_input.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1000f, -1627f)) * _wgslsmith_f_op_vec3_f32(func_1(true, vec4<u32>(0u, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 9u)], 18u)], 67091u, 4294967295u), Struct_1(vec3<bool>(true, true, true), 0u), false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(2093f, 547f, -1855f, 892f))))), all(vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(trunc(-569f)));
    let var_1 = vec3<f32>(-356f, _wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(-var_0.x));
    let var_2 = _wgslsmith_clamp_i32(reverseBits(_wgslsmith_clamp_i32(u_input.a.x ^ u_input.a.x, _wgslsmith_mod_i32(12275i, u_input.a.x), _wgslsmith_clamp_i32(-1i, 9870i, -1i))), -21075i, u_input.a.x) == _wgslsmith_mult_i32(u_input.b, -2147483647i);
    let var_3 = global2[_wgslsmith_index_u32(abs(~(~25301u | ~(u_input.c ^ 68729u))), 22u)];
    global0 = array<u32, 9>();
    global2 = array<Struct_2, 22>();
    let var_4 = var_3.e;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(var_3.b.x), ~(~select(~0u, 23308u, any(vec3<bool>(false, true, var_4.x)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(var_3.a.wy - vec2<f32>(336f, var_1.x)))), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(countOneBits(var_3.c) & u_input.b, var_3.c), -min(min(-2147483647i, var_3.c), -u_input.b), -15291i));
}

