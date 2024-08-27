struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<bool>,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: f32,
    b: bool,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 20> = array<Struct_5, 20>(Struct_5(vec4<u32>(15359u, 4294967295u, 4294967295u, 4294967295u), vec4<f32>(1016f, -1414f, 199f, 804f)), Struct_5(vec4<u32>(0u, 70221u, 65612u, 4294967295u), vec4<f32>(806f, 530f, -1058f, 1542f)), Struct_5(vec4<u32>(1u, 12959u, 4294967295u, 76174u), vec4<f32>(-1820f, 1000f, -1243f, 1053f)), Struct_5(vec4<u32>(0u, 15328u, 57062u, 59980u), vec4<f32>(693f, 375f, 1307f, -1046f)), Struct_5(vec4<u32>(48037u, 90294u, 4294967295u, 1u), vec4<f32>(-235f, -2099f, -805f, 1000f)), Struct_5(vec4<u32>(104434u, 4294967295u, 1u, 0u), vec4<f32>(-1020f, 1728f, -272f, -1000f)), Struct_5(vec4<u32>(1u, 4294967295u, 1u, 4294967295u), vec4<f32>(-1849f, 1000f, -249f, -1049f)), Struct_5(vec4<u32>(59117u, 10053u, 4294967295u, 44230u), vec4<f32>(657f, -2401f, -482f, -1029f)), Struct_5(vec4<u32>(0u, 21303u, 51808u, 0u), vec4<f32>(-273f, 1852f, 927f, -392f)), Struct_5(vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u), vec4<f32>(-1405f, -1000f, 283f, 1000f)), Struct_5(vec4<u32>(4294967295u, 0u, 10808u, 86936u), vec4<f32>(1000f, 1000f, -1030f, -307f)), Struct_5(vec4<u32>(1u, 627u, 5756u, 4294967295u), vec4<f32>(836f, -157f, 573f, -793f)), Struct_5(vec4<u32>(4294967295u, 26756u, 1u, 4294967295u), vec4<f32>(-1162f, 1932f, 276f, -1129f)), Struct_5(vec4<u32>(61872u, 35563u, 8231u, 67008u), vec4<f32>(943f, 196f, 372f, -1834f)), Struct_5(vec4<u32>(0u, 0u, 4294967295u, 1u), vec4<f32>(1657f, -602f, 1111f, 942f)), Struct_5(vec4<u32>(39788u, 68510u, 1u, 0u), vec4<f32>(547f, -499f, 1000f, -932f)), Struct_5(vec4<u32>(34917u, 21705u, 20755u, 4294967295u), vec4<f32>(-427f, 420f, -547f, -790f)), Struct_5(vec4<u32>(66684u, 4294967295u, 33614u, 1u), vec4<f32>(-442f, 1000f, -923f, 744f)), Struct_5(vec4<u32>(0u, 0u, 4294967295u, 4294967295u), vec4<f32>(-1076f, -2035f, 875f, -1303f)), Struct_5(vec4<u32>(0u, 25073u, 1u, 0u), vec4<f32>(-1107f, -1014f, -1138f, -1113f)));

var<private> global1: array<Struct_5, 23> = array<Struct_5, 23>(Struct_5(vec4<u32>(11061u, 4294967295u, 4992u, 1u), vec4<f32>(1094f, -739f, 561f, 1485f)), Struct_5(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 18161u), vec4<f32>(710f, 670f, 1173f, 661f)), Struct_5(vec4<u32>(4057u, 100794u, 5686u, 25045u), vec4<f32>(-1000f, -219f, -828f, -981f)), Struct_5(vec4<u32>(62732u, 89701u, 0u, 0u), vec4<f32>(1922f, -317f, 2273f, 1478f)), Struct_5(vec4<u32>(37020u, 40187u, 71718u, 4785u), vec4<f32>(-1877f, -120f, -1053f, 1235f)), Struct_5(vec4<u32>(4294967295u, 1u, 1u, 4294967295u), vec4<f32>(1515f, -3091f, 834f, -2159f)), Struct_5(vec4<u32>(0u, 0u, 23947u, 0u), vec4<f32>(1120f, -1000f, -1000f, -635f)), Struct_5(vec4<u32>(1u, 11403u, 4294967295u, 74384u), vec4<f32>(161f, -2072f, -218f, -2138f)), Struct_5(vec4<u32>(0u, 1u, 4294967295u, 4294967295u), vec4<f32>(-1154f, 991f, 178f, -517f)), Struct_5(vec4<u32>(115243u, 0u, 9154u, 38051u), vec4<f32>(1859f, -496f, 206f, -815f)), Struct_5(vec4<u32>(1u, 0u, 0u, 4254u), vec4<f32>(1885f, -1219f, -970f, -2047f)), Struct_5(vec4<u32>(4294967295u, 0u, 15692u, 0u), vec4<f32>(1726f, 2333f, 344f, 1761f)), Struct_5(vec4<u32>(1u, 4294967295u, 1u, 47020u), vec4<f32>(508f, -695f, -498f, -601f)), Struct_5(vec4<u32>(39172u, 1u, 1u, 51765u), vec4<f32>(139f, 1455f, -727f, 921f)), Struct_5(vec4<u32>(91322u, 93650u, 1u, 4294967295u), vec4<f32>(-576f, 2821f, -1000f, 889f)), Struct_5(vec4<u32>(35106u, 0u, 7093u, 1u), vec4<f32>(-499f, 1017f, -1108f, 319f)), Struct_5(vec4<u32>(57402u, 0u, 1u, 50164u), vec4<f32>(-1332f, -445f, -1482f, -209f)), Struct_5(vec4<u32>(23391u, 17502u, 127160u, 37666u), vec4<f32>(-300f, -479f, 1973f, -1080f)), Struct_5(vec4<u32>(55328u, 4294967295u, 4294967295u, 69991u), vec4<f32>(491f, 1151f, 145f, -450f)), Struct_5(vec4<u32>(40918u, 4294967295u, 4294967295u, 37961u), vec4<f32>(131f, -1000f, 111f, 205f)), Struct_5(vec4<u32>(1u, 1u, 20306u, 0u), vec4<f32>(-905f, -127f, 389f, -311f)), Struct_5(vec4<u32>(37032u, 86192u, 37962u, 42256u), vec4<f32>(-169f, 2805f, 435f, 160f)), Struct_5(vec4<u32>(21239u, 0u, 4294967295u, 7351u), vec4<f32>(-1000f, -2212f, -2251f, 1191f)));

var<private> global2: array<u32, 12>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_5) -> vec2<bool> {
    let var_0 = 1i;
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(arg_1.a.x << (global2[_wgslsmith_index_u32(4294967295u, 12u)] % 32u)), ~4294967295u, ~29481u), 20u)];
    var var_2 = Struct_4(-253f, true);
    global2 = array<u32, 12>();
    let var_3 = _wgslsmith_div_vec4_f32(vec4<f32>(1924f, 625f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-371f))))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_1.b.x, _wgslsmith_f_op_f32(f32(-1f) * -271f)), 1f))), _wgslsmith_f_op_vec4_f32(var_1.b + vec4<f32>(var_1.b.x, 246f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a - arg_2.b.x)), _wgslsmith_f_op_f32(exp2(1f)))));
    return select(!vec2<bool>(false, all(vec3<bool>(var_2.b, false, var_2.b))), select(select(vec2<bool>(true, var_2.b || var_2.b), !select(vec2<bool>(var_2.b, true), vec2<bool>(var_2.b, var_2.b), true), true), select(vec2<bool>(true, true), select(!vec2<bool>(var_2.b, false), !vec2<bool>(var_2.b, false), any(vec4<bool>(var_2.b, var_2.b, var_2.b, true))), var_2.b), any(select(vec3<bool>(true, true, var_2.b), vec3<bool>(var_2.b, true, var_2.b), var_2.b)) && (_wgslsmith_f_op_f32(-var_3.x) <= _wgslsmith_f_op_f32(sign(var_2.a)))), vec2<bool>(true, var_2.b | var_2.b));
}

fn func_2(arg_0: bool, arg_1: Struct_5) -> vec3<bool> {
    global1 = array<Struct_5, 23>();
    var var_0 = arg_1.a.yx & (arg_1.a.xz >> (select(vec2<u32>(1u, 0u), arg_1.a.yy, !func_3(101248u, Struct_1(arg_1.a.yxx, u_input.a), global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 12u)], 20u)])) % vec2<u32>(32u)));
    global0 = array<Struct_5, 20>();
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -163f)), arg_1.b.x, _wgslsmith_f_op_f32(1f + arg_1.b.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.b.x))))))));
    var var_2 = Struct_3(u_input.b << (_wgslsmith_div_vec3_u32(vec3<u32>(~var_0.x, firstLeadingBit(var_0.x), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(21789u, arg_1.a.x), 12u)]), ~vec3<u32>(arg_1.a.x, 63650u, 4294967295u) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(var_0.x, 12u)], 0u, arg_1.a.x), arg_1.a.zxw)) % vec3<u32>(32u)));
    return vec3<bool>(true, 455f <= _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x * 444f), arg_1.b.x), var_1.x), arg_0);
}

fn func_1(arg_0: Struct_4, arg_1: Struct_1) -> i32 {
    global1 = array<Struct_5, 23>();
    var var_0 = vec3<bool>(arg_0.b, all(!(!(!vec4<bool>(arg_0.b, arg_0.b, arg_0.b, arg_0.b)))), !any(!func_2(arg_0.b, Struct_5(vec4<u32>(0u, 53368u, 4294967295u, global2[_wgslsmith_index_u32(arg_1.a.x, 12u)]), vec4<f32>(arg_0.a, -969f, -392f, -382f)))));
    var var_1 = Struct_3(_wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(u_input.a, arg_1.b, -42592i) << (select(vec3<u32>(arg_1.a.x, global2[_wgslsmith_index_u32(arg_1.a.x, 12u)], 15795u), vec3<u32>(8751u, arg_1.a.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(44281u, 12u)], 12u)]), vec3<bool>(true, arg_0.b, arg_0.b)) % vec3<u32>(32u))), vec3<i32>(abs(1i), arg_1.b, _wgslsmith_add_i32(_wgslsmith_sub_i32(0i, u_input.b.x), -22891i))));
    var var_2 = Struct_3(vec3<i32>(countOneBits(-_wgslsmith_sub_i32(684i, u_input.a)), -51550i, firstTrailingBit(~max(0i, -22450i))));
    var var_3 = 35801u;
    return -firstTrailingBit(-2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1369f;
    let var_1 = vec4<i32>(-44537i, _wgslsmith_add_i32(-1i, min(39369i, 26096i)), -9786i, 20596i | _wgslsmith_div_i32(func_1(Struct_4(-1345f, false), Struct_1(vec3<u32>(1u, global2[_wgslsmith_index_u32(0u, 12u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(25143u, 12u)], 12u)]), 1i)), -2147483647i));
    var var_2 = Struct_2(Struct_1(reverseBits(_wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(37842u, 12u)], global2[_wgslsmith_index_u32(1u, 12u)])), vec3<u32>(global2[_wgslsmith_index_u32(1u, 12u)], 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(72322u, 12u)], 12u)]))), -reverseBits(var_1.x)), ~abs(~abs(62387u)), func_2(any(vec3<bool>(false, true, true)), Struct_5(countOneBits(~vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(5986u, 12u)], 12u)], 12u)], 12u)], 12u)], global2[_wgslsmith_index_u32(4737u, 12u)], global2[_wgslsmith_index_u32(59550u, 12u)], global2[_wgslsmith_index_u32(1u, 12u)])), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 1000f, var_0, 548f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-283f, var_0, var_0, 633f))))).xz, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, 284f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(abs(512f)), _wgslsmith_f_op_f32(f32(-1f) * -610f))))), Struct_1(select(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(23181u, 12u)], 12u)], global2[_wgslsmith_index_u32(0u, 12u)]), vec3<u32>(21066u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(9041u, 12u)], 12u)], 11096u)) & select(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 12u)], 12u)], 12u)], 12u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(14940u, 12u)], 12u)], 12u)], 1u), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(19166u, 12u)], 12u)], 12u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(18325u, 12u)], 12u)], 4294967295u), true), _wgslsmith_div_vec3_u32(~vec3<u32>(1u, 19380u, 1u), vec3<u32>(94716u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 12u)], 12u)], 12u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(17027u, 12u)], 12u)])), vec3<bool>(true, true, true)), ~(-3310i)));
    var var_3 = 2147483647i;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-601f, var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-197f)))));
    var var_5 = var_2.d;
    var var_6 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-396f, -638f, var_5.x, -1024f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 458f, var_2.d.x, var_2.d.x))))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_5.x), var_5.x, !var_2.c.x)), 674f, var_2.c.x)), -108f, var_0, var_0)));
    let var_7 = !(true || var_2.c.x);
    var var_8 = vec4<bool>(true, !((~26832u << (countOneBits(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 12u)], 12u)]) % 32u)) > ~4294967295u), _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.d.x)))) != _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -439f)), var_7 & all(var_2.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.d.x + 496f) - var_6.x), _wgslsmith_mult_vec3_u32(~(~(~vec3<u32>(721u, global2[_wgslsmith_index_u32(44326u, 12u)], 501u))), var_2.a.a), _wgslsmith_dot_vec4_i32(var_1, vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(var_1, var_1)));
}

