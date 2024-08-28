struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<bool>,
    d: vec4<u32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(Struct_1(vec4<f32>(-848f, -716f, 377f, -346f), vec3<u32>(79152u, 67903u, 67381u), vec3<u32>(1u, 10433u, 17517u), vec3<bool>(true, true, false)), Struct_2(vec4<bool>(true, true, false, false), 766f), vec2<bool>(true, false), vec4<u32>(6937u, 26167u, 1u, 36226u)), Struct_3(Struct_1(vec4<f32>(446f, 547f, -536f, -202f), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(1u, 4294967295u, 0u), vec3<bool>(false, true, true)), Struct_2(vec4<bool>(true, true, true, false), -791f), vec2<bool>(true, false), vec4<u32>(118182u, 0u, 10915u, 26782u)), Struct_3(Struct_1(vec4<f32>(821f, -1000f, 696f, 970f), vec3<u32>(19707u, 0u, 1u), vec3<u32>(80145u, 1u, 67161u), vec3<bool>(false, true, false)), Struct_2(vec4<bool>(true, false, true, true), 540f), vec2<bool>(true, true), vec4<u32>(1u, 44293u, 19355u, 68880u)), Struct_3(Struct_1(vec4<f32>(1409f, 751f, -511f, -838f), vec3<u32>(42619u, 4294967295u, 0u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<bool>(true, true, false)), Struct_2(vec4<bool>(false, true, false, true), -806f), vec2<bool>(true, false), vec4<u32>(76016u, 29927u, 0u, 8683u)), Struct_3(Struct_1(vec4<f32>(869f, -2462f, -2002f, -1923f), vec3<u32>(9780u, 3663u, 57209u), vec3<u32>(20796u, 45909u, 0u), vec3<bool>(true, false, false)), Struct_2(vec4<bool>(false, true, true, false), -2146f), vec2<bool>(true, false), vec4<u32>(51805u, 1u, 14390u, 29508u)), Struct_3(Struct_1(vec4<f32>(-1000f, -116f, -954f, -256f), vec3<u32>(1u, 79047u, 4294967295u), vec3<u32>(34622u, 1u, 1u), vec3<bool>(false, false, true)), Struct_2(vec4<bool>(false, false, true, false), -590f), vec2<bool>(false, false), vec4<u32>(4294967295u, 980u, 4294967295u, 22661u)), Struct_3(Struct_1(vec4<f32>(-172f, 565f, -363f, -172f), vec3<u32>(32225u, 0u, 4294967295u), vec3<u32>(0u, 0u, 17922u), vec3<bool>(true, true, false)), Struct_2(vec4<bool>(true, false, true, true), 1758f), vec2<bool>(true, false), vec4<u32>(0u, 13331u, 39116u, 14668u)), Struct_3(Struct_1(vec4<f32>(-1635f, -1117f, -1000f, -2072f), vec3<u32>(79748u, 1u, 53140u), vec3<u32>(4294967295u, 1u, 8534u), vec3<bool>(false, false, true)), Struct_2(vec4<bool>(false, false, true, false), 362f), vec2<bool>(false, true), vec4<u32>(1u, 13588u, 4294967295u, 73504u)), Struct_3(Struct_1(vec4<f32>(318f, 435f, 768f, -1191f), vec3<u32>(48851u, 18183u, 1u), vec3<u32>(12678u, 4294967295u, 1u), vec3<bool>(false, false, false)), Struct_2(vec4<bool>(true, false, true, false), 1449f), vec2<bool>(true, false), vec4<u32>(39412u, 53007u, 43128u, 4294967295u)), Struct_3(Struct_1(vec4<f32>(2002f, 1902f, -422f, 1191f), vec3<u32>(0u, 4294967295u, 49660u), vec3<u32>(46424u, 13243u, 4294967295u), vec3<bool>(false, true, true)), Struct_2(vec4<bool>(false, false, true, false), -345f), vec2<bool>(true, true), vec4<u32>(0u, 116332u, 6162u, 4294967295u)), Struct_3(Struct_1(vec4<f32>(-2364f, 663f, -1102f, -1000f), vec3<u32>(34914u, 0u, 0u), vec3<u32>(50554u, 24588u, 52257u), vec3<bool>(false, false, true)), Struct_2(vec4<bool>(true, false, false, true), -1145f), vec2<bool>(true, true), vec4<u32>(0u, 10519u, 36637u, 23263u)), Struct_3(Struct_1(vec4<f32>(1563f, -924f, 2540f, -1249f), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(0u, 22952u, 4058u), vec3<bool>(true, true, false)), Struct_2(vec4<bool>(true, true, true, true), -605f), vec2<bool>(false, false), vec4<u32>(1u, 1u, 0u, 1u)), Struct_3(Struct_1(vec4<f32>(1000f, 1267f, 1544f, -1121f), vec3<u32>(1176u, 3954u, 1u), vec3<u32>(5653u, 0u, 0u), vec3<bool>(true, true, true)), Struct_2(vec4<bool>(true, false, true, true), -628f), vec2<bool>(true, false), vec4<u32>(41568u, 0u, 4294967295u, 20052u)), Struct_3(Struct_1(vec4<f32>(846f, -655f, 1000f, -1859f), vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 28390u), vec3<bool>(false, false, false)), Struct_2(vec4<bool>(false, true, false, false), 595f), vec2<bool>(true, false), vec4<u32>(6479u, 80415u, 0u, 45403u)), Struct_3(Struct_1(vec4<f32>(693f, -163f, -585f, -210f), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(17150u, 14838u, 4294967295u), vec3<bool>(false, true, true)), Struct_2(vec4<bool>(true, false, false, false), -1317f), vec2<bool>(false, false), vec4<u32>(1u, 44334u, 59909u, 1u)), Struct_3(Struct_1(vec4<f32>(-311f, 1586f, 1993f, -614f), vec3<u32>(0u, 64350u, 1u), vec3<u32>(35979u, 1u, 6260u), vec3<bool>(true, true, false)), Struct_2(vec4<bool>(false, true, false, false), 1288f), vec2<bool>(false, false), vec4<u32>(0u, 0u, 0u, 18011u)), Struct_3(Struct_1(vec4<f32>(1101f, 918f, 780f, 1000f), vec3<u32>(53950u, 4294967295u, 18491u), vec3<u32>(29796u, 3626u, 11069u), vec3<bool>(true, true, false)), Struct_2(vec4<bool>(false, false, false, false), 596f), vec2<bool>(true, false), vec4<u32>(18932u, 19785u, 0u, 1u)), Struct_3(Struct_1(vec4<f32>(-1385f, 111f, 1174f, 1812f), vec3<u32>(54526u, 25520u, 4294967295u), vec3<u32>(24437u, 4294967295u, 4294967295u), vec3<bool>(false, false, true)), Struct_2(vec4<bool>(true, false, false, false), 213f), vec2<bool>(false, false), vec4<u32>(1u, 0u, 1u, 26728u)), Struct_3(Struct_1(vec4<f32>(223f, 927f, -1000f, 863f), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(4294967295u, 15821u, 68172u), vec3<bool>(false, true, false)), Struct_2(vec4<bool>(true, false, false, false), 2073f), vec2<bool>(true, true), vec4<u32>(0u, 82376u, 0u, 4294967295u)), Struct_3(Struct_1(vec4<f32>(1000f, 816f, -141f, 283f), vec3<u32>(70148u, 60775u, 77008u), vec3<u32>(61303u, 1u, 4294967295u), vec3<bool>(true, true, true)), Struct_2(vec4<bool>(true, false, false, true), -262f), vec2<bool>(false, false), vec4<u32>(41812u, 0u, 34497u, 1u)), Struct_3(Struct_1(vec4<f32>(388f, 598f, -1742f, -803f), vec3<u32>(1u, 1u, 20161u), vec3<u32>(4294967295u, 11158u, 35405u), vec3<bool>(true, true, true)), Struct_2(vec4<bool>(true, true, false, true), -1882f), vec2<bool>(true, false), vec4<u32>(0u, 30259u, 4294967295u, 13191u)));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<i32>) -> f32 {
    global1 = array<Struct_3, 21>();
    return _wgslsmith_f_op_f32(-810f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(133f))));
}

fn func_2(arg_0: vec2<u32>) -> i32 {
    let var_0 = max(min(-vec2<i32>(1i, 1i), vec2<i32>(1i | firstTrailingBit(-23207i), -select(13702i, -10364i, false))), abs(-(~vec2<i32>(1i, -42813i) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 55835u), vec2<u32>(49140u, 4845u)) % vec2<u32>(32u)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1095f, -1288f, -320f, 1942f), vec4<f32>(1613f, 250f, -822f, -400f), vec4<bool>(true, true, false, false)))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1202f), 1161f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.a, vec3<i32>(-2147483647i, var_0.x, 2147483647i)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(833f - 315f), _wgslsmith_f_op_f32(1078f * 451f)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2746f, 1200f, -1411f, -1962f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(472f, -117f, -359f, -1000f), vec4<f32>(-617f, 1038f, 1628f, -929f))))));
    var var_2 = !(!vec3<bool>(true, !(arg_0.x > 15048u), true));
    var_2 = !vec3<bool>(true, any(!(!vec2<bool>(false, var_2.x))), !all(select(vec3<bool>(var_2.x, var_2.x, false), vec3<bool>(var_2.x, true, var_2.x), var_2.x)));
    var var_3 = _wgslsmith_f_op_f32(func_3(vec4<u32>(~(arg_0.x | 99200u), 33561u, 4294967295u, abs(u_input.a.x >> (0u % 32u))) << (~reverseBits(vec4<u32>(u_input.a.x, 11611u, 0u, 0u)) % vec4<u32>(32u)), vec3<i32>(~(reverseBits(var_0.x) << (1u % 32u)), ((var_0.x >> (u_input.a.x % 32u)) >> (reverseBits(arg_0.x) % 32u)) << (~_wgslsmith_sub_u32(u_input.a.x, 6409u) % 32u), var_0.x >> (4294967295u % 32u))));
    return var_0.x;
}

fn func_1(arg_0: bool, arg_1: vec4<i32>, arg_2: vec2<i32>, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = ~(~func_2(~u_input.a.xw));
    global1 = array<Struct_3, 21>();
    let var_1 = u_input.a.yz;
    global1 = array<Struct_3, 21>();
    var_0 = firstTrailingBit(arg_1.x) | _wgslsmith_mult_i32(60671i, 1i);
    return vec3<bool>(!(!(!(!arg_3.d.x))), arg_1.x != arg_1.x, arg_3.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 5063u;
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2113f, _wgslsmith_f_op_f32(select(1827f, 597f, true)), -1618f, _wgslsmith_f_op_f32(f32(-1f) * -2501f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -811f), _wgslsmith_div_f32(-329f, -490f)))), u_input.a.yxw, u_input.a.wxx, select(!vec3<bool>(all(vec3<bool>(true, false, true)), true, true), select(func_1(true, countOneBits(vec4<i32>(-2147483647i, 11013i, 2147483647i, -2147483647i)), vec2<i32>(1i, 1i), Struct_1(vec4<f32>(-170f, 606f, -135f, -1532f), u_input.a.zxx, u_input.a.xyw, vec3<bool>(false, false, true))), select(func_1(false, vec4<i32>(0i, 23612i, -34594i, 2651i), vec2<i32>(-1i, -49373i), Struct_1(vec4<f32>(-1935f, -1582f, -1000f, -505f), u_input.a.wwx, u_input.a.xww, vec3<bool>(false, true, true))), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true)), false));
    global1 = array<Struct_3, 21>();
    var_0 = max(0u << (var_1.b.x % 32u), ~(var_1.c.x << (1u % 32u)));
    let var_2 = Struct_3(Struct_1(var_1.a, var_1.b, var_1.b, var_1.d), Struct_2(!vec4<bool>(true, true, var_1.d.x, true), _wgslsmith_f_op_f32(var_1.a.x * _wgslsmith_f_op_f32(sign(var_1.a.x)))), !var_1.d.xy, u_input.a);
    global1 = array<Struct_3, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_clamp_vec2_i32(-select(vec2<i32>(-1i, -2147483647i), vec2<i32>(36144i, 28257i), var_1.d.x), -vec2<i32>(-675i, 12900i), abs(select(vec2<i32>(0i, 4591i), vec2<i32>(0i, -27610i), false))), vec2<i32>(_wgslsmith_sub_i32(max(-1i, -2147483647i), 0i), ~(0i >> (var_1.c.x % 32u)))), min(85760u, u_input.a.x), _wgslsmith_add_u32(var_2.a.c.x, abs(var_1.c.x)), var_2.d.x, 1u & abs(countOneBits(var_1.b.x) << (min(1u, 69994u) % 32u)));
}

