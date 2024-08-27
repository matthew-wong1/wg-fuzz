struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
    c: f32,
    d: vec2<bool>,
}

struct Struct_5 {
    a: f32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 12> = array<Struct_4, 12>(Struct_4(Struct_1(true, 4294967295u, -1i), vec2<f32>(-1871f, 936f), 1272f, vec2<bool>(true, true)), Struct_4(Struct_1(true, 79313u, -3872i), vec2<f32>(544f, 1000f), 1550f, vec2<bool>(false, true)), Struct_4(Struct_1(true, 5233u, -19862i), vec2<f32>(-1090f, 900f), -1219f, vec2<bool>(true, true)), Struct_4(Struct_1(false, 0u, -6562i), vec2<f32>(182f, -1262f), -513f, vec2<bool>(false, false)), Struct_4(Struct_1(true, 63016u, 1i), vec2<f32>(-290f, -139f), 1008f, vec2<bool>(true, false)), Struct_4(Struct_1(false, 69213u, 1i), vec2<f32>(185f, -2277f), 1175f, vec2<bool>(false, true)), Struct_4(Struct_1(false, 4294967295u, -7581i), vec2<f32>(-1203f, 925f), -1000f, vec2<bool>(true, false)), Struct_4(Struct_1(false, 4294967295u, 1i), vec2<f32>(395f, -1000f), 402f, vec2<bool>(false, false)), Struct_4(Struct_1(true, 0u, 0i), vec2<f32>(-156f, -171f), 301f, vec2<bool>(false, false)), Struct_4(Struct_1(false, 7201u, 7756i), vec2<f32>(179f, 487f), -1755f, vec2<bool>(true, false)), Struct_4(Struct_1(false, 10745u, -1i), vec2<f32>(-144f, 1000f), -1465f, vec2<bool>(false, true)), Struct_4(Struct_1(false, 1u, -7768i), vec2<f32>(-795f, 1717f), 1422f, vec2<bool>(false, false)));

var<private> global1: vec2<bool>;

var<private> global2: array<u32, 30>;

var<private> global3: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(vec2<i32>(-22202i, 11803i), Struct_1(true, 65420u, -67565i), 631f, Struct_1(false, 19850u, -1i), Struct_1(true, 4294967295u, -60669i)), Struct_2(vec2<i32>(2147483647i, 1i), Struct_1(true, 17848u, -8090i), 222f, Struct_1(false, 1u, 0i), Struct_1(false, 1u, -1i)), Struct_2(vec2<i32>(-35567i, i32(-2147483648)), Struct_1(false, 1u, 73357i), -497f, Struct_1(false, 15572u, 1i), Struct_1(true, 17569u, -11584i)), Struct_2(vec2<i32>(2147483647i, 88963i), Struct_1(false, 4294967295u, 0i), 1674f, Struct_1(false, 100945u, 2147483647i), Struct_1(false, 4294967295u, -1i)), Struct_2(vec2<i32>(18333i, 1i), Struct_1(true, 0u, 22214i), -1000f, Struct_1(false, 25178u, 32740i), Struct_1(true, 1u, i32(-2147483648))), Struct_2(vec2<i32>(-1i, 19293i), Struct_1(false, 10477u, 2147483647i), -1400f, Struct_1(false, 1u, 35548i), Struct_1(true, 10659u, 2021i)), Struct_2(vec2<i32>(-25380i, 1i), Struct_1(false, 7548u, 16584i), -821f, Struct_1(false, 70351u, -45199i), Struct_1(false, 1u, -40910i)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec2<u32> {
    var var_0 = !select(!(!(!vec3<bool>(true, false, global1.x))), !select(select(vec3<bool>(global1.x, true, global1.x), vec3<bool>(global1.x, global1.x, global1.x), false), !vec3<bool>(true, global1.x, global1.x), vec3<bool>(global1.x, true, global1.x)), global1.x && true);
    global3 = array<Struct_2, 7>();
    global2 = array<u32, 30>();
    global2 = array<u32, 30>();
    global0 = array<Struct_4, 12>();
    return vec2<u32>(~2257u, global2[_wgslsmith_index_u32(0u, 30u)]);
}

fn func_2() -> vec3<f32> {
    let var_0 = vec2<bool>(_wgslsmith_f_op_f32(-972f * 336f) != _wgslsmith_f_op_f32(592f * _wgslsmith_f_op_f32(ceil(-1000f))), global1.x);
    var var_1 = ~_wgslsmith_mult_vec2_u32(~_wgslsmith_div_vec2_u32(abs(vec2<u32>(u_input.b, 4294967295u)), func_3()), vec2<u32>(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1493u, 30u)], 30u)], _wgslsmith_sub_u32(u_input.b, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 30u)], 30u)])) | ~countOneBits(vec2<u32>(global2[_wgslsmith_index_u32(1u, 30u)], 0u)));
    let var_2 = global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, _wgslsmith_mod_u32(~firstTrailingBit(global2[_wgslsmith_index_u32(var_1.x, 30u)]), 44037u), reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(firstTrailingBit(4294967295u), 4294967295u), _wgslsmith_div_vec2_u32(min(vec2<u32>(820u, global2[_wgslsmith_index_u32(4294967295u, 30u)]), vec2<u32>(global2[_wgslsmith_index_u32(var_1.x, 30u)], 4294967295u)), min(vec2<u32>(79060u, 120109u), vec2<u32>(u_input.b, global2[_wgslsmith_index_u32(u_input.b, 30u)])))))), 30u)], 7u)];
    let var_3 = -vec2<i32>(~10419i, 2147483647i);
    var var_4 = Struct_2(vec2<i32>(14207i, i32(-1i) * -var_2.e.c), Struct_1(-(~var_2.b.c) >= -var_2.d.c, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(1u, 79977u, 0u)), vec3<u32>(global2[_wgslsmith_index_u32(26141u, 30u)], 15065u, var_1.x)), ~(~global2[_wgslsmith_index_u32(var_1.x, 30u)])), countOneBits(countOneBits(-75551i))), _wgslsmith_f_op_f32(f32(-1f) * -1136f), var_2.b, Struct_1(any(vec3<bool>(var_2.c <= var_2.c, var_2.b.a, !var_0.x)), global2[_wgslsmith_index_u32(var_1.x, 30u)], 2147483647i));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(684f, var_2.c, -205f), vec3<f32>(var_4.c, var_4.c, var_2.c)), _wgslsmith_f_op_vec3_f32(vec3<f32>(2228f, var_2.c, -843f) + vec3<f32>(var_2.c, 334f, -173f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -851f, -231f) * vec3<f32>(-1049f, -1000f, 941f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1031f, -138f, var_2.c)))))));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_3) -> Struct_1 {
    global1 = !vec2<bool>(false, !global1.x != all(vec4<bool>(global1.x, true, arg_0.b.a, arg_2.c.a)));
    let var_0 = arg_2.e.c;
    let var_1 = countOneBits(_wgslsmith_clamp_vec3_u32(~vec3<u32>(arg_2.e.b, 4294967295u, 4294967295u) | vec3<u32>(1u, 4294967295u, u_input.b), ~vec3<u32>(46552u, 33885u, 4294967295u), ~(~vec3<u32>(u_input.b, 12075u, global2[_wgslsmith_index_u32(35806u, 30u)])))) & ~min(abs(~vec3<u32>(1u, 0u, 51050u)), _wgslsmith_sub_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(arg_2.d.b, 30u)], u_input.b, 1u) << (vec3<u32>(arg_2.c.b, u_input.b, arg_0.b.b) % vec3<u32>(32u)), ~vec3<u32>(arg_2.c.b, u_input.b, u_input.b)));
    var var_2 = Struct_3(arg_0.a.x, vec3<f32>(_wgslsmith_f_op_f32(trunc(arg_0.c)), arg_0.c, arg_2.b.x), arg_2.d, arg_0.e, arg_2.d);
    var var_3 = ~arg_2.c.b;
    return arg_2.d;
}

fn func_1() -> vec4<f32> {
    let var_0 = Struct_3(abs(~(~1i)), vec3<f32>(_wgslsmith_f_op_f32(ceil(228f)), _wgslsmith_f_op_f32(f32(-1f) * -1718f), _wgslsmith_f_op_f32(-726f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1755f, 597f))))), func_4(global3[_wgslsmith_index_u32(4294967295u, 7u)], false, Struct_3(0i, _wgslsmith_f_op_vec3_f32(func_2()), Struct_1(global1.x || false, 0u, u_input.a.x), Struct_1(false, _wgslsmith_div_u32(u_input.b, u_input.b), -62641i), Struct_1(true, global2[_wgslsmith_index_u32(func_3().x, 30u)], 0i << (0u % 32u)))), func_4(Struct_2(vec2<i32>(-1738i, -33338i) & vec2<i32>(u_input.a.x, 2147483647i), func_4(global3[_wgslsmith_index_u32(u_input.b, 7u)], false, Struct_3(-2147483647i, vec3<f32>(1000f, 1000f, -1128f), Struct_1(global1.x, 1u, -4748i), Struct_1(false, 0u, u_input.a.x), Struct_1(true, 4294967295u, -14310i))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -794f), -848f)), Struct_1(false, 30935u, _wgslsmith_div_i32(u_input.a.x, u_input.a.x)), Struct_1(func_4(global3[_wgslsmith_index_u32(u_input.b, 7u)], true, Struct_3(-44494i, vec3<f32>(-779f, 1000f, 859f), Struct_1(global1.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(9114u, 30u)], 30u)], u_input.a.x), Struct_1(global1.x, 4294967295u, -1i), Struct_1(global1.x, 25365u, u_input.a.x))).a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 37626u), vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 30u)], 30u)])), u_input.a.x)), any(!select(vec4<bool>(global1.x, global1.x, true, true), vec4<bool>(global1.x, global1.x, global1.x, global1.x), global1.x)), Struct_3(u_input.a.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(583f, 951f, 1309f)), vec3<f32>(2457f, -1058f, -1766f)), func_4(Struct_2(vec2<i32>(u_input.a.x, -2147483647i), Struct_1(global1.x, 1534u, u_input.a.x), 212f, Struct_1(true, 11784u, u_input.a.x), Struct_1(false, u_input.b, u_input.a.x)), any(vec4<bool>(global1.x, global1.x, global1.x, false)), Struct_3(1805i, vec3<f32>(132f, 618f, 1000f), Struct_1(false, 40892u, 4381i), Struct_1(true, 4294967295u, u_input.a.x), Struct_1(global1.x, u_input.b, u_input.a.x))), Struct_1(any(vec2<bool>(global1.x, false)), global2[_wgslsmith_index_u32(25758u, 30u)] & 1u, abs(19290i)), func_4(Struct_2(vec2<i32>(0i, -28213i), Struct_1(global1.x, global2[_wgslsmith_index_u32(0u, 30u)], 9108i), -364f, Struct_1(false, u_input.b, u_input.a.x), Struct_1(global1.x, global2[_wgslsmith_index_u32(50751u, 30u)], u_input.a.x)), true, Struct_3(u_input.a.x, vec3<f32>(-1080f, 656f, 832f), Struct_1(global1.x, 282u, u_input.a.x), Struct_1(global1.x, global2[_wgslsmith_index_u32(28688u, 30u)], -21148i), Struct_1(false, 32300u, u_input.a.x))))), Struct_1(global1.x, global2[_wgslsmith_index_u32(u_input.b, 30u)], _wgslsmith_sub_i32(-(~(-38019i)), i32(-1i) * -u_input.a.x)));
    let var_1 = _wgslsmith_mod_u32(~global2[_wgslsmith_index_u32(u_input.b, 30u)], 15070u);
    let var_2 = Struct_4(func_4(global3[_wgslsmith_index_u32(u_input.b, 7u)], any(!select(vec3<bool>(var_0.e.a, global1.x, global1.x), vec3<bool>(false, true, var_0.e.a), global1.x)), var_0), _wgslsmith_f_op_vec2_f32(var_0.b.xz * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, var_0.b.x) + vec2<f32>(var_0.b.x, 567f)))), var_0.b.x, !vec2<bool>(true, !all(vec4<bool>(true, global1.x, false, true))));
    let var_3 = u_input.a;
    let var_4 = !(!(!(var_2.d.x | true)) & all(!vec4<bool>(false, global1.x, var_0.c.a, global1.x)));
    return vec4<f32>(_wgslsmith_div_f32(-343f, var_2.c), _wgslsmith_f_op_f32(sign(var_0.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.b.x), -612f), var_0.b.x);
}

fn func_5(arg_0: vec4<f32>) -> Struct_1 {
    global0 = array<Struct_4, 12>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.zy));
    var var_1 = all(select(vec2<bool>(!(u_input.a.x != 12517i), global1.x), vec2<bool>(global1.x, u_input.a.x != ~u_input.a.x), vec2<bool>(!all(vec2<bool>(global1.x, global1.x)), global1.x)));
    global3 = array<Struct_2, 7>();
    var var_2 = vec4<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-1353f, arg_0.x)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1370f + var_0.x) + _wgslsmith_f_op_f32(arg_0.x * arg_0.x))) * _wgslsmith_f_op_f32(f32(-1f) * -358f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(var_0.x + var_0.x)), 558f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_div_f32(var_0.x, 1000f))));
    return Struct_1(global1.x, _wgslsmith_sub_u32(u_input.b, ~(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4230u, 30u)], 30u)] << (1u % 32u))), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(~u_input.a.x, u_input.a.x >> (u_input.b % 32u), ~u_input.a.x, ~2147483647i), vec4<i32>(-6284i, u_input.a.x, firstTrailingBit(u_input.a.x), 12433i)), _wgslsmith_div_i32(1i, ~(-51410i)), -u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1()) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(131f, 1000f, -278f, 1000f))))));
    let var_1 = Struct_4(func_4(Struct_2(vec2<i32>(u_input.a.x, -33354i) << (vec2<u32>(64615u, 1u) % vec2<u32>(32u)), Struct_1(global1.x, _wgslsmith_div_u32(25556u, 139119u), _wgslsmith_mod_i32(-28393i, -45957i)), 1f, func_5(_wgslsmith_div_vec4_f32(vec4<f32>(-183f, -203f, 1100f, 1000f), vec4<f32>(1000f, -132f, 3269f, -520f))), Struct_1(true, ~4294967295u, 1i)), true, Struct_3(_wgslsmith_div_i32(reverseBits(u_input.a.x), var_0.c), _wgslsmith_div_vec3_f32(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, -1788f, 1372f), vec3<f32>(-1881f, -1000f, 834f), var_0.a))), Struct_1(global1.x, ~4294967295u, _wgslsmith_div_i32(u_input.a.x, 65163i)), func_5(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(276f, -752f, -1000f, 1667f)))), Struct_1(global1.x == global1.x, global2[_wgslsmith_index_u32(var_0.b >> (26571u % 32u), 30u)], _wgslsmith_add_i32(u_input.a.x, 7283i)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec3_f32(func_2()).yx * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(269f))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1320f, -869f), _wgslsmith_f_op_f32(1798f - 275f))))), _wgslsmith_f_op_f32(-779f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1286f)) * -118f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-260f, 1365f) * _wgslsmith_f_op_f32(max(-752f, -702f))), true))), select(vec2<bool>(func_4(Struct_2(u_input.a.wx, Struct_1(false, 4294967295u, var_0.c), -190f, Struct_1(true, 0u, var_0.c), Struct_1(false, var_0.b, 6194i)), any(vec4<bool>(global1.x, var_0.a, true, global1.x)), Struct_3(0i, vec3<f32>(731f, 195f, 953f), Struct_1(global1.x, 4294967295u, 22891i), Struct_1(var_0.a, 52249u, -65443i), Struct_1(global1.x, 0u, u_input.a.x))).a, select(true | var_0.a, true, func_4(Struct_2(vec2<i32>(1i, 22434i), Struct_1(false, 38177u, 11716i), -1244f, Struct_1(var_0.a, u_input.b, -23021i), Struct_1(false, 33477u, var_0.c)), global1.x, Struct_3(2147483647i, vec3<f32>(167f, 428f, -1491f), Struct_1(true, 1u, u_input.a.x), Struct_1(global1.x, 34056u, u_input.a.x), Struct_1(false, 40351u, 1i))).a)), select(!select(vec2<bool>(false, true), vec2<bool>(global1.x, global1.x), var_0.a), vec2<bool>(global1.x, true && global1.x), global1.x), !select(select(vec2<bool>(global1.x, false), vec2<bool>(false, var_0.a), vec2<bool>(global1.x, true)), select(vec2<bool>(false, false), vec2<bool>(var_0.a, global1.x), global1.x), select(vec2<bool>(true, true), vec2<bool>(false, var_0.a), vec2<bool>(var_0.a, var_0.a)))));
    let var_2 = func_5(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1992f, 625f, 1335f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-558f, 791f, 322f, -1008f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, -689f, 676f, var_1.b.x))), all(vec4<bool>(true, true, false, false))))).a && (all(var_1.d) || var_1.a.a);
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(var_1.c)), _wgslsmith_f_op_f32(var_1.c - var_1.b.x))))));
    global2 = array<u32, 30>();
    let var_4 = vec3<bool>(false, func_4(Struct_2(vec2<i32>(~var_0.c, var_0.c), func_5(_wgslsmith_f_op_vec4_f32(func_1())), var_3.x, var_1.a, Struct_1(true, 4294967295u, var_0.c >> (0u % 32u))), !var_0.a, Struct_3(i32(-1i) * -var_1.a.c, vec3<f32>(_wgslsmith_f_op_f32(ceil(var_1.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -202f), _wgslsmith_f_op_f32(424f - 752f)), Struct_1(true, u_input.b, var_0.c), Struct_1(all(var_1.d), _wgslsmith_mult_u32(u_input.b, 1u), _wgslsmith_clamp_i32(2147483647i, var_1.a.c, u_input.a.x)), var_1.a)).a, all(select(select(!vec3<bool>(false, var_0.a, true), select(vec3<bool>(var_1.a.a, false, global1.x), vec3<bool>(var_2, var_2, global1.x), vec3<bool>(true, true, var_1.a.a)), !var_1.a.a), vec3<bool>(!var_1.d.x, 1i <= u_input.a.x, var_2), !any(vec4<bool>(false, true, true, global1.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(0u, u_input.b), 806u), vec2<u32>(abs(var_0.b), 0u << (1u % 32u))), vec2<u32>(~countOneBits(var_1.a.b), ~global2[_wgslsmith_index_u32(~0u, 30u)])), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec4_f32(func_1()).zwx + _wgslsmith_f_op_vec3_f32(func_2()))), countOneBits(vec3<i32>(i32(-1i) * -var_1.a.c, -2147483647i, u_input.a.x)), var_1.c, vec2<i32>(-_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-31479i, 2147483647i, 25672i, -31222i), u_input.a, vec4<i32>(u_input.a.x, var_0.c, -1i, var_1.a.c)), -u_input.a), 24762i));
}

