struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<f32>,
    d: vec3<f32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 3>;

var<private> global1: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(1u, -874f, vec3<f32>(1133f, 1000f, -788f)), Struct_1(1u, -1671f, vec3<f32>(391f, 861f, 618f)), Struct_1(67730u, -982f, vec3<f32>(-686f, -726f, -1494f)), Struct_1(73086u, 254f, vec3<f32>(146f, 817f, -947f)));

var<private> global2: array<Struct_4, 28> = array<Struct_4, 28>(Struct_4(Struct_2(true, vec2<i32>(11390i, -14133i)), Struct_2(true, vec2<i32>(2147483647i, 0i)), vec4<f32>(-601f, -387f, 699f, -1043f), vec3<f32>(818f, 761f, -1000f), vec3<bool>(false, true, false)), Struct_4(Struct_2(true, vec2<i32>(i32(-2147483648), 34382i)), Struct_2(false, vec2<i32>(0i, 2147483647i)), vec4<f32>(308f, -510f, 787f, -1169f), vec3<f32>(433f, 129f, -876f), vec3<bool>(false, false, true)), Struct_4(Struct_2(false, vec2<i32>(-1i, -45394i)), Struct_2(false, vec2<i32>(2147483647i, 36286i)), vec4<f32>(-873f, 2137f, -773f, 383f), vec3<f32>(1962f, -982f, 161f), vec3<bool>(false, false, false)), Struct_4(Struct_2(true, vec2<i32>(-21748i, -28927i)), Struct_2(false, vec2<i32>(5979i, 2147483647i)), vec4<f32>(-1406f, -1445f, 1000f, 800f), vec3<f32>(-490f, -1000f, -435f), vec3<bool>(false, false, false)), Struct_4(Struct_2(true, vec2<i32>(i32(-2147483648), -1i)), Struct_2(false, vec2<i32>(27179i, 0i)), vec4<f32>(-474f, 1303f, 1521f, 1654f), vec3<f32>(277f, -1397f, -239f), vec3<bool>(false, false, false)), Struct_4(Struct_2(true, vec2<i32>(17815i, 0i)), Struct_2(false, vec2<i32>(i32(-2147483648), 15263i)), vec4<f32>(-312f, -105f, 1168f, -857f), vec3<f32>(540f, -1127f, -323f), vec3<bool>(false, true, false)), Struct_4(Struct_2(true, vec2<i32>(-2546i, -22458i)), Struct_2(true, vec2<i32>(-1i, 0i)), vec4<f32>(-1412f, -296f, -946f, -106f), vec3<f32>(829f, 204f, 1443f), vec3<bool>(false, true, false)), Struct_4(Struct_2(false, vec2<i32>(-1i, 653i)), Struct_2(true, vec2<i32>(i32(-2147483648), -1i)), vec4<f32>(-1008f, -543f, 181f, -194f), vec3<f32>(487f, -1063f, 879f), vec3<bool>(true, false, false)), Struct_4(Struct_2(false, vec2<i32>(85461i, 1i)), Struct_2(true, vec2<i32>(38898i, 0i)), vec4<f32>(-279f, 805f, 1585f, -604f), vec3<f32>(2882f, -2392f, 241f), vec3<bool>(true, true, false)), Struct_4(Struct_2(true, vec2<i32>(-26147i, i32(-2147483648))), Struct_2(true, vec2<i32>(-47650i, 1i)), vec4<f32>(-513f, 1232f, -1335f, -1787f), vec3<f32>(140f, 429f, 133f), vec3<bool>(false, false, true)), Struct_4(Struct_2(true, vec2<i32>(-32503i, i32(-2147483648))), Struct_2(true, vec2<i32>(-35921i, -4363i)), vec4<f32>(-1017f, 121f, 167f, 322f), vec3<f32>(-1886f, 557f, 733f), vec3<bool>(true, false, true)), Struct_4(Struct_2(false, vec2<i32>(2147483647i, 29287i)), Struct_2(false, vec2<i32>(-22615i, i32(-2147483648))), vec4<f32>(-134f, -1270f, -477f, -160f), vec3<f32>(-1000f, 167f, 602f), vec3<bool>(true, false, false)), Struct_4(Struct_2(false, vec2<i32>(2147483647i, 16535i)), Struct_2(false, vec2<i32>(-24639i, 2558i)), vec4<f32>(-769f, -484f, 552f, -1407f), vec3<f32>(-578f, -2328f, -535f), vec3<bool>(true, false, true)), Struct_4(Struct_2(true, vec2<i32>(-12710i, 24337i)), Struct_2(true, vec2<i32>(0i, -28450i)), vec4<f32>(454f, -1146f, 1093f, 753f), vec3<f32>(-1180f, -749f, -418f), vec3<bool>(false, true, true)), Struct_4(Struct_2(true, vec2<i32>(0i, 8908i)), Struct_2(true, vec2<i32>(-1i, 0i)), vec4<f32>(-149f, -381f, -1000f, 877f), vec3<f32>(-1131f, 652f, -1256f), vec3<bool>(true, true, false)), Struct_4(Struct_2(true, vec2<i32>(4619i, 0i)), Struct_2(true, vec2<i32>(-1i, -33497i)), vec4<f32>(2188f, -1000f, -410f, -2561f), vec3<f32>(-870f, -691f, 355f), vec3<bool>(false, false, false)), Struct_4(Struct_2(true, vec2<i32>(17791i, 0i)), Struct_2(false, vec2<i32>(-1083i, 67268i)), vec4<f32>(-1668f, 207f, 1340f, -1781f), vec3<f32>(-2137f, -778f, -755f), vec3<bool>(false, true, false)), Struct_4(Struct_2(false, vec2<i32>(5454i, i32(-2147483648))), Struct_2(false, vec2<i32>(-19833i, 1i)), vec4<f32>(1123f, -257f, -1176f, 185f), vec3<f32>(-378f, -367f, -990f), vec3<bool>(false, false, true)), Struct_4(Struct_2(true, vec2<i32>(0i, 52379i)), Struct_2(false, vec2<i32>(i32(-2147483648), -49472i)), vec4<f32>(1005f, -1277f, -1915f, 1330f), vec3<f32>(1579f, 1000f, -1883f), vec3<bool>(true, true, false)), Struct_4(Struct_2(false, vec2<i32>(-1i, 0i)), Struct_2(true, vec2<i32>(29209i, 71101i)), vec4<f32>(744f, 241f, -2401f, 613f), vec3<f32>(-1040f, -883f, -790f), vec3<bool>(true, false, false)), Struct_4(Struct_2(false, vec2<i32>(1i, i32(-2147483648))), Struct_2(false, vec2<i32>(i32(-2147483648), 35140i)), vec4<f32>(-2455f, -181f, -1796f, -618f), vec3<f32>(550f, -145f, 823f), vec3<bool>(true, false, true)), Struct_4(Struct_2(true, vec2<i32>(7386i, -27809i)), Struct_2(true, vec2<i32>(-23530i, 2147483647i)), vec4<f32>(185f, -2000f, -103f, 632f), vec3<f32>(-908f, 545f, -1726f), vec3<bool>(false, true, false)), Struct_4(Struct_2(true, vec2<i32>(0i, -2624i)), Struct_2(false, vec2<i32>(1i, 42877i)), vec4<f32>(694f, -208f, -1532f, -810f), vec3<f32>(508f, 856f, 256f), vec3<bool>(false, false, true)), Struct_4(Struct_2(true, vec2<i32>(0i, 0i)), Struct_2(false, vec2<i32>(0i, 19064i)), vec4<f32>(-1515f, 649f, 874f, 1702f), vec3<f32>(-751f, -267f, 1000f), vec3<bool>(true, true, true)), Struct_4(Struct_2(true, vec2<i32>(1i, 8388i)), Struct_2(true, vec2<i32>(65021i, 16691i)), vec4<f32>(-1673f, -919f, -703f, -1000f), vec3<f32>(-642f, 584f, -1395f), vec3<bool>(false, false, true)), Struct_4(Struct_2(false, vec2<i32>(-59400i, 0i)), Struct_2(true, vec2<i32>(-11581i, 1i)), vec4<f32>(-1152f, 638f, -1378f, -1195f), vec3<f32>(147f, -1036f, -216f), vec3<bool>(false, false, false)), Struct_4(Struct_2(true, vec2<i32>(-14682i, -64044i)), Struct_2(false, vec2<i32>(-9989i, -48665i)), vec4<f32>(1000f, -1598f, 882f, -401f), vec3<f32>(-1080f, 147f, -328f), vec3<bool>(true, true, true)), Struct_4(Struct_2(false, vec2<i32>(-29337i, 2147483647i)), Struct_2(false, vec2<i32>(1i, 39225i)), vec4<f32>(-922f, 584f, 1275f, -730f), vec3<f32>(391f, 978f, -1011f), vec3<bool>(false, false, true)));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: i32, arg_3: vec2<u32>) -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(642u, 4u)];
    let var_1 = vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(141f, -1805f, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.b, _wgslsmith_f_op_f32(arg_0.x - -530f))) - -1919f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(2081f)) * -1201f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(arg_0.x, 984f)), arg_0.x, all(vec4<bool>(arg_1.a, arg_1.a, arg_1.a, true)))))))));
    var var_2 = arg_0.x;
    let var_3 = Struct_4(arg_1, Struct_2(!arg_1.a, max(arg_1.b, arg_1.b)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(arg_0))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.c + var_0.c))))), vec3<bool>(true, true && !arg_1.a, all(vec2<bool>(1304f == var_0.c.x, false))));
    var var_4 = Struct_1(firstTrailingBit(var_0.a), _wgslsmith_f_op_f32(-155f * _wgslsmith_f_op_f32(-arg_0.x)), vec3<f32>(-136f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.c.x - 1506f), _wgslsmith_f_op_f32(-var_0.b), arg_1.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.d.x)) + _wgslsmith_f_op_f32(step(189f, _wgslsmith_f_op_f32(f32(-1f) * -169f))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-327f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -130f), _wgslsmith_f_op_f32(max(363f, var_3.c.x))))));
}

fn func_2() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), vec3<f32>(-1042f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-557f)), -515f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1318f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-461f, _wgslsmith_f_op_f32(func_3(vec4<f32>(1373f, -1062f, 716f, 616f), Struct_2(true, vec2<i32>(u_input.a, u_input.a)), u_input.a, vec2<u32>(u_input.b, 0u))))) - _wgslsmith_f_op_f32(-179f * 1880f))), true));
    global2 = array<Struct_4, 28>();
    global2 = array<Struct_4, 28>();
    global1 = array<Struct_1, 4>();
    var var_1 = -1708f;
    return Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1718f, -448f, -384f, var_0.x) + vec4<f32>(var_0.x, 925f, var_0.x, 1000f))))) - _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(-868f, var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -433f), _wgslsmith_f_op_f32(f32(-1f) * -356f), _wgslsmith_f_op_f32(func_3(vec4<f32>(1361f, var_0.x, var_0.x, var_0.x), Struct_2(false, vec2<i32>(13466i, 8441i)), u_input.a, vec2<u32>(u_input.b, 10007u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 1000f, var_0.x))))));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: i32, arg_3: u32) -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(55616u, _wgslsmith_dot_vec2_u32(~(~vec2<u32>(arg_3, u_input.b)), ~max(~vec2<u32>(arg_3, arg_3), vec2<u32>(728u, 54910u)))), 28u)];
    let var_1 = u_input.b;
    var var_2 = var_0.a;
    let var_3 = _wgslsmith_sub_u32(arg_3, ~0u) != abs(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 4294967295u, var_1, u_input.b) & vec4<u32>(4294967295u, u_input.b, var_1, arg_3), vec4<u32>(arg_3, 4294967295u, var_1, var_1)), ~(~vec4<u32>(1u, arg_3, 28625u, 43167u))));
    var var_4 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~(~var_1 << (1u % 32u))), u_input.b), 28u)];
    return u_input.b;
}

fn func_5(arg_0: u32, arg_1: vec2<i32>, arg_2: f32) -> Struct_2 {
    let var_0 = vec2<bool>(any(!select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, true), arg_2 == arg_2)), false);
    return Struct_2(true, vec2<i32>(24369i, ~arg_1.x));
}

fn func_1(arg_0: bool, arg_1: vec4<f32>, arg_2: vec3<f32>) -> Struct_2 {
    var var_0 = !arg_0;
    var var_1 = func_5(~(~u_input.b) << (func_4(func_2(), _wgslsmith_f_op_vec2_f32(-arg_1.yz), 1i, u_input.b) % 32u), _wgslsmith_mult_vec2_i32(vec2<i32>(0i >> (u_input.b % 32u), ~1i), -_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, 19994i), vec2<i32>(u_input.a, u_input.a))) ^ firstLeadingBit(vec2<i32>(~(-2147483647i), 0i << (u_input.b % 32u))), 1347f);
    var var_2 = true;
    let var_3 = Struct_4(func_5(u_input.b, vec2<i32>(firstTrailingBit(max(15019i, 0i)), 0i), _wgslsmith_f_op_f32(-arg_1.x)), Struct_2(all(!vec3<bool>(var_1.a, false, false)) && true, var_1.b), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1) * vec4<f32>(arg_2.x, -311f, arg_1.x, arg_2.x)))))), arg_1.wxy, !select(select(select(vec3<bool>(true, var_1.a, true), vec3<bool>(arg_0, var_1.a, arg_0), vec3<bool>(var_1.a, false, false)), vec3<bool>(false, arg_0, var_1.a), select(vec3<bool>(true, true, false), vec3<bool>(var_1.a, false, true), vec3<bool>(true, var_1.a, true))), vec3<bool>(!var_1.a, all(vec3<bool>(arg_0, var_1.a, true)), !arg_0), !select(vec3<bool>(arg_0, var_1.a, arg_0), vec3<bool>(true, var_1.a, arg_0), true)));
    var var_4 = Struct_1(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(abs(~vec3<u32>(24915u, u_input.b, 59579u)), vec3<u32>(16530u << (u_input.b % 32u), u_input.b, u_input.b)), ~u_input.b), _wgslsmith_f_op_f32(trunc(arg_1.x)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_1.xwx, vec3<f32>(526f, var_3.c.x, arg_1.x))))));
    return func_5(534u, ~vec2<i32>(u_input.a, -(~var_1.b.x)), 1f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(578f, -651f, 659f, 1188f), vec4<f32>(-1224f, 1000f, 1144f, 376f), vec4<bool>(false, true, true, true)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1664f, -1029f, -1252f, 463f)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-516f)))), _wgslsmith_f_op_f32(min(408f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1077f + 580f))))), _wgslsmith_f_op_f32(round(-1000f))));
    let var_1 = _wgslsmith_div_u32(_wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 4294967295u, u_input.b), vec3<u32>(4294967295u, u_input.b, u_input.b)) >> (~u_input.b % 32u)) & u_input.b, 4294967295u);
    let var_2 = select(select(select(!select(vec3<bool>(var_0.a, var_0.a, var_0.a), vec3<bool>(false, var_0.a, var_0.a), vec3<bool>(var_0.a, var_0.a, true)), select(select(vec3<bool>(false, var_0.a, true), vec3<bool>(true, var_0.a, false), vec3<bool>(var_0.a, var_0.a, var_0.a)), select(vec3<bool>(var_0.a, var_0.a, true), vec3<bool>(var_0.a, false, var_0.a), vec3<bool>(var_0.a, var_0.a, false)), var_0.a), !select(vec3<bool>(false, true, true), vec3<bool>(var_0.a, false, var_0.a), vec3<bool>(var_0.a, var_0.a, var_0.a))), !select(select(vec3<bool>(true, var_0.a, false), vec3<bool>(false, var_0.a, var_0.a), var_0.a), select(vec3<bool>(var_0.a, var_0.a, false), vec3<bool>(var_0.a, true, var_0.a), true), vec3<bool>(false, var_0.a, var_0.a)), !vec3<bool>(var_0.a, any(vec2<bool>(var_0.a, var_0.a)), !var_0.a)), vec3<bool>(var_0.a, true, func_5(_wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.b, var_1), 12706u), _wgslsmith_mod_vec2_i32(func_1(false, vec4<f32>(785f, 241f, -1721f, 180f), vec3<f32>(1000f, -414f, 1025f)).b, firstTrailingBit(vec2<i32>(2147483647i, 1i))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1625f + -304f), _wgslsmith_div_f32(-654f, 1378f)))).a), true);
    let var_3 = ~(vec4<i32>(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -60890i, -10036i, 2147483647i), vec4<i32>(-1i, u_input.a, u_input.a, u_input.a))), reverseBits(_wgslsmith_sub_i32(-2147483647i, u_input.a)), var_0.b.x, _wgslsmith_mult_i32(~u_input.a, reverseBits(2147483647i))) ^ vec4<i32>(-2147483647i, u_input.a, ~(~(-1i)), ~var_0.b.x << (var_1 % 32u)));
    let var_4 = _wgslsmith_mod_u32(1u, _wgslsmith_mod_u32(var_1, _wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1, 34718u, u_input.b), vec3<u32>(4294967295u, u_input.b, var_1)), _wgslsmith_dot_vec3_u32(vec3<u32>(86044u, 1u, var_1), vec3<u32>(u_input.b, 0u, 13628u))), 92618u)));
    var var_5 = firstTrailingBit(vec2<u32>(89248u, 1u)) >> (vec2<u32>(33545u, var_1) % vec2<u32>(32u));
    global1 = array<Struct_1, 4>();
    let var_6 = func_5(var_5.x, vec2<i32>(max(-var_3.x, 34056i), _wgslsmith_dot_vec3_i32(~abs(var_3.xxz), vec3<i32>(var_3.x >> (0u % 32u), u_input.a, firstLeadingBit(-24921i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-312f * _wgslsmith_f_op_f32(trunc(224f))), _wgslsmith_f_op_f32(min(270f, _wgslsmith_f_op_f32(trunc(2016f)))))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1177f), _wgslsmith_f_op_f32(f32(-1f) * -1282f)))));
    var var_7 = abs(81319u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-1013f, _wgslsmith_f_op_f32(f32(-1f) * -365f)), ~select(~abs(vec3<u32>(var_1, 1259u, var_5.x)), vec3<u32>(4294967295u, abs(20450u), _wgslsmith_dot_vec2_u32(vec2<u32>(26363u, 61970u), vec2<u32>(var_5.x, 1u))), var_0.a), vec3<u32>(u_input.b, 38312u, var_4));
}

