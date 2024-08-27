struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: f32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: i32,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec4<f32>(490f, 533f, 588f, 1228f), vec4<i32>(-31923i, -57384i, 11959i, -1i), -1864f, vec3<i32>(33823i, -1i, 14539i)), Struct_1(vec4<f32>(680f, 710f, 962f, -1156f), vec4<i32>(-58002i, -1i, -1i, -1i), -1000f, vec3<i32>(-35039i, 1i, 2147483647i)), Struct_1(vec4<f32>(-313f, -1605f, -753f, -216f), vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), 8269i), 1000f, vec3<i32>(1i, 1i, 0i)), Struct_1(vec4<f32>(183f, 535f, 204f, 1252f), vec4<i32>(2147483647i, 10553i, 2147483647i, -1i), -1095f, vec3<i32>(1i, 34092i, 1i)), Struct_1(vec4<f32>(-409f, -1162f, 1586f, -253f), vec4<i32>(2147483647i, 2147483647i, 1i, -1i), 1822f, vec3<i32>(0i, i32(-2147483648), -6280i)), Struct_1(vec4<f32>(-1208f, -817f, 641f, -2616f), vec4<i32>(8931i, 2147483647i, -12998i, 34438i), -1230f, vec3<i32>(37059i, 0i, 2147483647i)), Struct_1(vec4<f32>(-761f, 682f, 1000f, -565f), vec4<i32>(-1i, -32195i, -11823i, -30569i), -358f, vec3<i32>(-26417i, 1i, 1i)), Struct_1(vec4<f32>(444f, -421f, -1264f, -148f), vec4<i32>(-14442i, -1i, -1i, 1i), 1654f, vec3<i32>(-16984i, -10651i, -13418i)), Struct_1(vec4<f32>(-1303f, 824f, 169f, 240f), vec4<i32>(57491i, -64512i, i32(-2147483648), -16174i), 301f, vec3<i32>(2147483647i, i32(-2147483648), i32(-2147483648))), Struct_1(vec4<f32>(-419f, -827f, 1382f, 256f), vec4<i32>(2147483647i, 9385i, 27808i, 0i), -1326f, vec3<i32>(0i, 22103i, 1i)), Struct_1(vec4<f32>(2359f, 1327f, 703f, 1320f), vec4<i32>(-32645i, 0i, -41994i, 8890i), 471f, vec3<i32>(0i, -37162i, 54256i)), Struct_1(vec4<f32>(-1505f, -431f, -415f, 1287f), vec4<i32>(0i, i32(-2147483648), -1i, -1i), 713f, vec3<i32>(-7381i, -62721i, -29197i)), Struct_1(vec4<f32>(390f, 318f, 1787f, 269f), vec4<i32>(-1i, -32189i, 2147483647i, i32(-2147483648)), -1116f, vec3<i32>(9549i, -8257i, -1i)), Struct_1(vec4<f32>(316f, -447f, -648f, -320f), vec4<i32>(-43509i, i32(-2147483648), 0i, -33108i), 1254f, vec3<i32>(55277i, 64755i, 0i)), Struct_1(vec4<f32>(-1472f, -513f, -398f, -569f), vec4<i32>(-27812i, 27091i, -110258i, 32133i), -105f, vec3<i32>(-48268i, i32(-2147483648), 77533i)), Struct_1(vec4<f32>(274f, -199f, 261f, -546f), vec4<i32>(-24499i, 1i, 8906i, 5852i), 1898f, vec3<i32>(1i, -1i, 9493i)), Struct_1(vec4<f32>(-1000f, 608f, -1286f, 1112f), vec4<i32>(0i, 13441i, 62974i, 0i), -608f, vec3<i32>(-71918i, 25019i, 2147483647i)), Struct_1(vec4<f32>(655f, -1159f, 1000f, -758f), vec4<i32>(i32(-2147483648), 0i, -28619i, i32(-2147483648)), 2070f, vec3<i32>(2147483647i, 48606i, 5650i)), Struct_1(vec4<f32>(808f, -940f, 1045f, -422f), vec4<i32>(21795i, 16251i, -1i, -1i), 256f, vec3<i32>(2147483647i, -52677i, -53095i)), Struct_1(vec4<f32>(-2145f, -770f, 354f, -909f), vec4<i32>(28766i, i32(-2147483648), i32(-2147483648), -42319i), 957f, vec3<i32>(29605i, i32(-2147483648), 2516i)), Struct_1(vec4<f32>(-1764f, 184f, -631f, -295f), vec4<i32>(0i, -6213i, 0i, -1i), 1784f, vec3<i32>(0i, 0i, -15573i)), Struct_1(vec4<f32>(1500f, -419f, -1753f, -507f), vec4<i32>(41219i, 2147483647i, -1i, 2147483647i), -637f, vec3<i32>(14983i, 1i, 57897i)));

var<private> global2: f32 = -137f;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = _wgslsmith_div_f32(arg_0.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.a.x))))), -163f));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c - arg_0.c) * -1016f) * 301f)));
    var var_1 = 1750f;
    let var_2 = arg_0;
    let var_3 = Struct_2(vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), vec2<u32>(_wgslsmith_div_u32(28368u, 4294967295u), 64458u)), reverseBits(73216u), firstLeadingBit(countOneBits(max(4294967295u, 45238u))), ~_wgslsmith_div_u32(~1u, 1u)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-395f, -1594f, var_2.c, -1017f)))), arg_0.b, 370f, firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, u_input.a.x, -1i) & vec3<i32>(var_2.b.x, -2147483647i, 17517i), vec3<i32>(var_2.d.x, var_2.d.x, -85782i)))), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(abs(arg_0.d.x), max(var_2.d.x, -1i), u_input.a.x, 1310i), var_2.b), var_2.b), _wgslsmith_add_u32(~4294967295u << (_wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(22649u, 1547u, 1u, 43282u), vec4<u32>(14203u, 56018u, 1u, 12745u)), _wgslsmith_mult_u32(26189u, 54996u)) % 32u), 1u), ~max(reverseBits(firstLeadingBit(-19527i)), var_2.d.x));
    return 0i;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec4<f32>, arg_3: vec4<u32>) -> vec4<u32> {
    global1 = array<Struct_1, 22>();
    let var_0 = Struct_2(vec4<u32>(~(~arg_0.a.x), arg_0.d, _wgslsmith_clamp_u32(min(4294967295u, ~arg_3.x), 71348u, min(~0u, 0u)), arg_3.x), arg_0.b, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -u_input.a.x, -15546i), -_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, 1i, 2147483647i), vec3<i32>(arg_0.c, arg_0.c, u_input.a.x)) << (~vec3<u32>(34327u, 4294967295u, arg_0.a.x) % vec3<u32>(32u))), 36122u, 278i);
    let var_1 = arg_3;
    let var_2 = vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(countOneBits(arg_0.b.d), vec3<i32>(var_0.e, 0i, arg_0.b.d.x) << (var_1.zwx % vec3<u32>(32u))), -33251i), -vec2<i32>(min(var_0.e, arg_0.b.b.x), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, arg_0.c), u_input.a))), -(u_input.a.x >> (arg_1.x % 32u)), firstLeadingBit(arg_0.b.b.x), 21774i);
    let var_3 = -(~(~20845i));
    return var_0.a | var_1;
}

fn func_2() -> vec2<u32> {
    var var_0 = u_input.a.x;
    var var_1 = _wgslsmith_add_i32(~u_input.a.x, 2147483647i);
    let var_2 = Struct_2(_wgslsmith_sub_vec4_u32(func_4(Struct_2(reverseBits(vec4<u32>(1u, 83868u, 45963u, 1u)), Struct_1(vec4<f32>(1143f, 179f, 267f, 508f), vec4<i32>(-39406i, u_input.a.x, 1i, 1i), -437f, vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x)), func_3(global1[_wgslsmith_index_u32(1791u, 22u)]), 0u, firstLeadingBit(u_input.a.x)), select(vec2<u32>(6199u, 18284u), ~vec2<u32>(4294967295u, 6760u), vec2<bool>(true, true)), vec4<f32>(1f, 1f, 1f, 1f), ~_wgslsmith_mod_vec4_u32(vec4<u32>(41018u, 1u, 61671u, 1u), vec4<u32>(28993u, 4294967295u, 1u, 1u))), ~vec4<u32>(1861u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(14787u, 55578u)), _wgslsmith_div_u32(1u, 4294967295u), ~33027u)), global1[_wgslsmith_index_u32(firstTrailingBit(~(~(~6930u))), 22u)], _wgslsmith_add_i32(24017i, reverseBits(_wgslsmith_div_i32(abs(7603i), u_input.a.x))), ~_wgslsmith_mod_u32(abs(select(1u, 13656u, false)), countOneBits(~1u)), countOneBits(-(~_wgslsmith_mod_i32(-36349i, 55231i))));
    var_1 = -40634i;
    let var_3 = !select(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec3<bool>(true, false, true))), !vec2<bool>(var_2.c >= -2147483647i, false), true);
    return _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, var_2.a.x), ~_wgslsmith_clamp_vec2_u32(~var_2.a.yx, min(~var_2.a.yw, abs(vec2<u32>(var_2.d, 19019u))), var_2.a.wy));
}

fn func_5(arg_0: i32, arg_1: Struct_1) -> Struct_2 {
    var var_0 = Struct_2(vec4<u32>(0u, 65936u, ~1u, 0u), Struct_1(vec4<f32>(810f, -912f, 451f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1733f))), -vec4<i32>(~u_input.a.x, _wgslsmith_mod_i32(u_input.a.x, arg_0), func_3(Struct_1(vec4<f32>(arg_1.c, arg_1.a.x, arg_1.a.x, arg_1.a.x), vec4<i32>(2392i, u_input.a.x, arg_0, 2147483647i), -518f, vec3<i32>(u_input.a.x, arg_1.b.x, u_input.a.x))), u_input.a.x), _wgslsmith_f_op_f32(round(arg_1.c)), vec3<i32>(abs(arg_1.b.x ^ 0i), -arg_0, u_input.a.x)), u_input.a.x, abs(func_2().x), ~(-reverseBits(arg_1.b.x)));
    var_0 = Struct_2(~(~var_0.a), arg_1, var_0.c, abs(~_wgslsmith_mult_u32(19525u, var_0.d)) << (~var_0.a.x % 32u), _wgslsmith_mod_i32(var_0.e, u_input.a.x));
    let var_1 = firstLeadingBit(_wgslsmith_div_i32(-36275i, -62328i)) & var_0.b.b.x;
    let var_2 = 1u;
    var var_3 = Struct_2(~var_0.a << (func_4(Struct_2(~vec4<u32>(var_0.a.x, 7723u, 85499u, var_2), Struct_1(arg_1.a, vec4<i32>(-1i, 1i, var_1, var_0.c), var_0.b.c, arg_1.b.xwx), -2147483647i, var_2, 16838i), var_0.a.yw, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(470f, var_0.b.c, -680f, -650f) - vec4<f32>(arg_1.a.x, arg_1.c, 262f, arg_1.c)) - var_0.b.a), ~reverseBits(var_0.a)) % vec4<u32>(32u)), arg_1, u_input.a.x, 1u, (-select(var_0.e, -9546i, false) << (1u % 32u)) >> (select(_wgslsmith_div_u32(var_2 << (var_0.d % 32u), abs(1u)), var_2, select(any(vec3<bool>(true, false, true)), any(vec2<bool>(true, true)), all(vec3<bool>(true, false, false)))) % 32u));
    return Struct_2(_wgslsmith_mod_vec4_u32(vec4<u32>(70540u, _wgslsmith_clamp_u32(var_2, ~var_0.a.x, var_2), 4294967295u, select(var_3.a.x, abs(var_2), all(vec2<bool>(false, false)))), _wgslsmith_add_vec4_u32(~max(vec4<u32>(26759u, 4294967295u, var_2, 4294967295u), vec4<u32>(1u, 19613u, var_0.d, var_3.d)), vec4<u32>(firstTrailingBit(var_0.d), ~64853u, 40671u, _wgslsmith_mod_u32(var_0.a.x, var_3.d)))), var_0.b, reverseBits(var_1), _wgslsmith_sub_u32(var_2, 0u), 0i);
}

fn func_1() -> Struct_2 {
    let var_0 = func_5(abs(u_input.a.x), global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 1u), _wgslsmith_add_vec2_u32(func_2(), vec2<u32>(54686u, 68983u))), 22u)]);
    global2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.b.a.x + -1003f)));
    let var_1 = vec4<bool>(all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, select(false, true, true)), !select(vec2<bool>(true, true), vec2<bool>(true, false), true))), false, all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false))), true);
    global1 = array<Struct_1, 22>();
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(493f, -1867f, var_1.x)), _wgslsmith_f_op_f32(min(var_0.b.a.x, -1280f)), _wgslsmith_f_op_f32(round(-1245f)), _wgslsmith_f_op_f32(exp2(var_0.b.c)))))), var_0.b.b ^ var_0.b.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.b.c))), var_0.b.d);
    return func_5(countOneBits(abs(~36369i)), global1[_wgslsmith_index_u32(~abs(~1u), 22u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(-var_0.b.b.zzx >> (var_0.a.ywx % vec3<u32>(32u)), ~var_0.b.b.yxx), -(i32(-1i) * -2147483647i), ~48897u, vec4<i32>(u_input.a.x, -(~0i), -50843i, _wgslsmith_add_i32(-58611i & u_input.a.x, ~55049i) & -var_0.b.d.x));
}

