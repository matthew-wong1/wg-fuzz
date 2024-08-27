struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: f32,
    d: bool,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec3<bool>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
    c: f32,
    d: Struct_2,
    e: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<i32, 8> = array<i32, 8>(1i, 8775i, 2147483647i, -8248i, -1i, -976i, -57257i, 2147483647i);

var<private> global2: array<vec4<u32>, 2> = array<vec4<u32>, 2>(vec4<u32>(1u, 0u, 82115u, 60944u), vec4<u32>(4294967295u, 1u, 0u, 18105u));

var<private> global3: array<Struct_3, 12> = array<Struct_3, 12>(Struct_3(vec3<i32>(5179i, -1i, 1i), 1u, -375f, Struct_2(Struct_1(37394u, vec3<i32>(-40828i, i32(-2147483648), 34758i), -140f, false, vec2<i32>(-1732i, 6978i)), Struct_1(0u, vec3<i32>(23946i, 1i, i32(-2147483648)), -826f, false, vec2<i32>(i32(-2147483648), -1i)), 778f, vec3<bool>(true, false, true), vec3<f32>(2770f, 1220f, 478f)), vec3<u32>(22302u, 27771u, 1u)), Struct_3(vec3<i32>(14121i, i32(-2147483648), -35889i), 65590u, -588f, Struct_2(Struct_1(33058u, vec3<i32>(-34351i, -1i, 16726i), -1932f, false, vec2<i32>(94754i, 38410i)), Struct_1(1u, vec3<i32>(i32(-2147483648), 5926i, -1214i), -1481f, true, vec2<i32>(1i, 33606i)), 1092f, vec3<bool>(false, true, false), vec3<f32>(-827f, 1000f, 1966f)), vec3<u32>(62424u, 100852u, 4294967295u)), Struct_3(vec3<i32>(-74169i, 3741i, -3100i), 13626u, -645f, Struct_2(Struct_1(398u, vec3<i32>(1i, 64098i, 0i), 2153f, true, vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_1(68727u, vec3<i32>(2147483647i, 4370i, 15713i), -334f, false, vec2<i32>(-11005i, 80614i)), -1728f, vec3<bool>(true, false, true), vec3<f32>(-944f, 972f, -1264f)), vec3<u32>(65377u, 25137u, 1u)), Struct_3(vec3<i32>(36335i, -12108i, -9111i), 4294967295u, 1022f, Struct_2(Struct_1(0u, vec3<i32>(-1i, i32(-2147483648), 2147483647i), 937f, true, vec2<i32>(11281i, 1i)), Struct_1(1u, vec3<i32>(-1972i, 11246i, -26761i), 685f, true, vec2<i32>(2147483647i, 20409i)), 219f, vec3<bool>(true, false, true), vec3<f32>(498f, 347f, 511f)), vec3<u32>(0u, 100161u, 51088u)), Struct_3(vec3<i32>(-21796i, -1i, i32(-2147483648)), 4294967295u, -896f, Struct_2(Struct_1(1u, vec3<i32>(2147483647i, -8864i, 1i), -878f, true, vec2<i32>(2147483647i, -49893i)), Struct_1(7894u, vec3<i32>(0i, 53403i, 33925i), -1291f, true, vec2<i32>(-1i, 0i)), -1476f, vec3<bool>(true, false, false), vec3<f32>(-521f, -842f, 1000f)), vec3<u32>(1u, 73567u, 0u)), Struct_3(vec3<i32>(4429i, -34687i, 16811i), 6804u, -418f, Struct_2(Struct_1(4294967295u, vec3<i32>(-10504i, i32(-2147483648), 6310i), -1000f, false, vec2<i32>(-37178i, 2147483647i)), Struct_1(4294967295u, vec3<i32>(i32(-2147483648), 15626i, 6535i), -1224f, false, vec2<i32>(14191i, 32019i)), -671f, vec3<bool>(false, true, false), vec3<f32>(-384f, -233f, 618f)), vec3<u32>(4922u, 26561u, 1u)), Struct_3(vec3<i32>(0i, -5604i, -1i), 1u, -839f, Struct_2(Struct_1(36584u, vec3<i32>(-25904i, -64161i, -5591i), -336f, true, vec2<i32>(i32(-2147483648), 0i)), Struct_1(0u, vec3<i32>(1i, -1918i, 1i), -585f, true, vec2<i32>(-1147i, 0i)), -129f, vec3<bool>(false, false, true), vec3<f32>(-1000f, 567f, 710f)), vec3<u32>(0u, 109369u, 4294967295u)), Struct_3(vec3<i32>(1i, 9977i, -58792i), 13069u, -658f, Struct_2(Struct_1(0u, vec3<i32>(11222i, 25507i, i32(-2147483648)), -523f, true, vec2<i32>(-17255i, 2147483647i)), Struct_1(0u, vec3<i32>(1i, -12480i, 16900i), -1081f, false, vec2<i32>(1i, 1i)), -549f, vec3<bool>(true, true, false), vec3<f32>(-886f, -322f, -265f)), vec3<u32>(0u, 4294967295u, 75382u)), Struct_3(vec3<i32>(-48036i, -29803i, 80953i), 1u, -805f, Struct_2(Struct_1(15466u, vec3<i32>(-1i, 12717i, 5247i), -296f, true, vec2<i32>(-1i, -34358i)), Struct_1(61565u, vec3<i32>(2147483647i, 0i, i32(-2147483648)), -187f, true, vec2<i32>(1i, i32(-2147483648))), -206f, vec3<bool>(false, false, false), vec3<f32>(782f, 907f, 532f)), vec3<u32>(41934u, 4294967295u, 75328u)), Struct_3(vec3<i32>(1i, -38189i, -69460i), 3602u, 651f, Struct_2(Struct_1(0u, vec3<i32>(i32(-2147483648), -1i, 0i), -760f, false, vec2<i32>(8322i, 1328i)), Struct_1(4294967295u, vec3<i32>(-69799i, 50008i, -29352i), -665f, true, vec2<i32>(-1i, 28147i)), 1000f, vec3<bool>(true, true, true), vec3<f32>(-931f, 106f, 783f)), vec3<u32>(4294967295u, 1u, 4294967295u)), Struct_3(vec3<i32>(37400i, 21479i, -11465i), 1u, 1655f, Struct_2(Struct_1(4294967295u, vec3<i32>(25292i, -7859i, 27024i), 967f, false, vec2<i32>(-9079i, -1i)), Struct_1(4294967295u, vec3<i32>(0i, 0i, -36944i), -895f, true, vec2<i32>(-4485i, 1i)), 786f, vec3<bool>(true, true, true), vec3<f32>(1184f, -329f, 1163f)), vec3<u32>(30310u, 1u, 1u)), Struct_3(vec3<i32>(-391i, -46337i, 0i), 4294967295u, -1103f, Struct_2(Struct_1(1u, vec3<i32>(-31823i, 22666i, 9728i), 515f, true, vec2<i32>(11383i, i32(-2147483648))), Struct_1(83571u, vec3<i32>(18581i, 1i, -1i), -595f, false, vec2<i32>(26213i, -53279i)), -1000f, vec3<bool>(false, true, true), vec3<f32>(1163f, 194f, 501f)), vec3<u32>(1u, 4294967295u, 4294967295u)));

var<private> global4: i32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: i32) -> i32 {
    var var_0 = vec4<bool>(!(-1i < (arg_0 & u_input.c)) | false, all(!(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), true))), true, all(vec3<bool>(true, all(vec2<bool>(true, true)), true)));
    let var_1 = ~47178i;
    let var_2 = Struct_4(Struct_1(_wgslsmith_dot_vec4_u32(select(~vec4<u32>(u_input.a.x, 0u, 37020u, u_input.a.x), u_input.a & u_input.a, !vec4<bool>(var_0.x, var_0.x, var_0.x, true)), vec4<u32>(~1u, select(u_input.a.x, 54838u, var_0.x), 13162u, firstTrailingBit(0u))), -(vec3<i32>(arg_0, 11824i, 0i) | _wgslsmith_sub_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 8u)], arg_0, -62181i), vec3<i32>(2147483647i, u_input.c, -4572i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(abs(221f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(713f + 2672f))), var_0.x, _wgslsmith_add_vec2_i32(-_wgslsmith_add_vec2_i32(vec2<i32>(-9180i, 31668i), vec2<i32>(44287i, 1i)), ~vec2<i32>(var_1, var_1))));
    let var_3 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1250f, -189f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1389f, var_2.a.c) + vec2<f32>(var_2.a.c, var_2.a.c))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2376f, 1000f) - vec2<f32>(var_2.a.c, 1411f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a.c, -1304f)))))));
    var var_4 = Struct_3(~max(firstLeadingBit(-vec3<i32>(2147483647i, var_2.a.e.x, var_2.a.b.x)), reverseBits(abs(vec3<i32>(arg_0, -23789i, u_input.c)))), _wgslsmith_mod_u32(~54016u, ~_wgslsmith_sub_u32(var_2.a.a, max(var_2.a.a, u_input.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -1351f), Struct_2(Struct_1(abs(u_input.b.x), var_2.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-143f * -644f)), var_0.x, vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(var_2.a.a, 8u)], 16107i, -1402i, 22180i), vec4<i32>(-15592i, -1i, 1i, -1i)), u_input.c)), var_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) + 115f) - 1f), vec3<bool>(var_2.a.d, !(4294967295u < u_input.a.x), -2147483647i <= (global1[_wgslsmith_index_u32(1u, 8u)] ^ var_1)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, var_3.x, 251f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-136f, 2059f, 332f)))), u_input.b.xxw);
    return ~select(min(-u_input.c, abs(-2147483647i)), _wgslsmith_mod_i32(~(~arg_0), var_2.a.e.x), !(!select(var_2.a.d, var_2.a.d, true)));
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-873f - _wgslsmith_f_op_f32(abs(-922f)));
    let var_1 = func_3(global1[_wgslsmith_index_u32(1u, 8u)]) >> (79072u % 32u);
    var var_2 = u_input.b.xyy;
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 708f) + _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(min(973f, _wgslsmith_f_op_f32(-var_0)))))) - vec2<f32>(-476f, _wgslsmith_f_op_f32(ceil(var_0))));
    let var_4 = Struct_4(Struct_1(u_input.a.x, vec3<i32>(u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 3004i), vec2<i32>(-1i, var_1)), _wgslsmith_sub_i32(u_input.c, _wgslsmith_add_i32(-12626i, 19455i))), -1584f, all(vec3<bool>(true, true, true)), -(vec2<i32>(0i, u_input.c) ^ vec2<i32>(-1i, -20975i)) << (_wgslsmith_mod_vec2_u32(vec2<u32>(var_2.x, u_input.a.x), var_2.xx) % vec2<u32>(32u))));
    return 0u;
}

fn func_1() -> Struct_1 {
    global2 = array<vec4<u32>, 2>();
    global0 = ~min(func_2(), u_input.a.x);
    global1 = array<i32, 8>();
    global4 = 1i;
    global2 = array<vec4<u32>, 2>();
    return Struct_1(reverseBits(u_input.a.x), min(vec3<i32>(1i, 1i, 1i) & abs(vec3<i32>(global1[_wgslsmith_index_u32(1u, 8u)], -2147483647i, u_input.c)), vec3<i32>(-6182i, u_input.c, u_input.c) & countOneBits(vec3<i32>(u_input.c, global1[_wgslsmith_index_u32(40590u, 8u)], -2147483647i))) & ~(-countOneBits(vec3<i32>(0i, u_input.c, -7238i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(165f, -2586f))))), all(vec3<bool>(u_input.b.x <= 1u, -global1[_wgslsmith_index_u32(u_input.a.x, 8u)] >= (u_input.c >> (u_input.b.x % 32u)), !all(vec4<bool>(true, true, true, false)))), _wgslsmith_mod_vec2_i32(select(abs(~vec2<i32>(u_input.c, u_input.c)), select(-vec2<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 8u)], 252i), vec2<i32>(-57072i, -28358i) >> (u_input.a.zy % vec2<u32>(32u)), true), any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), false))), vec2<i32>(u_input.c, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(u_input.b.x, 8u)], global1[_wgslsmith_index_u32(u_input.b.x, 8u)], global1[_wgslsmith_index_u32(u_input.a.x, 8u)]), -8197i, ~u_input.c))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = Struct_5(vec2<u32>(u_input.a.x, max(~(~u_input.a.x), 96944u & (u_input.b.x & 4294967295u))), u_input.b.wwx);
    var var_2 = firstLeadingBit(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.b.x, -1i, 0i, 7076i), vec4<i32>(global1[_wgslsmith_index_u32(var_0.a, 8u)], u_input.c, u_input.c, global1[_wgslsmith_index_u32(1u, 8u)]))), _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-43451i, var_0.b.x, -1i, 16491i), vec4<i32>(0i, global1[_wgslsmith_index_u32(33873u, 8u)], global1[_wgslsmith_index_u32(var_0.a, 8u)], var_0.b.x)), vec4<i32>(34280i, u_input.c, u_input.c, 86528i))), vec4<i32>(~(-21124i), 1i, 0i, ~firstLeadingBit(8324i))));
    var var_3 = func_1();
    let var_4 = vec3<bool>(false, _wgslsmith_mod_u32(1u, ~(~var_1.b.x)) <= _wgslsmith_mult_u32(~u_input.a.x, var_1.b.x), select(var_3.a >= reverseBits(33570u), any(vec3<bool>(true, false, false)), (var_3.d || (u_input.c != var_2.x)) && var_0.d));
    let var_5 = -610f;
    let var_6 = _wgslsmith_dot_vec3_u32(max(u_input.b.zzz, u_input.a.xzz ^ ~abs(vec3<u32>(0u, 14707u, var_0.a))), var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_5, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5) - -524f), -870f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_5), _wgslsmith_div_f32(var_0.c, 780f)) * _wgslsmith_f_op_f32(-var_3.c))), select(abs(var_0.a), var_1.b.x, true), -834f);
}

