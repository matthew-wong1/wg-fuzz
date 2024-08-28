// {"0:0":[18,140,52,92]}
// Seed: 7550229976289251369

struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(vec2<f32>(1204f, -667f), vec2<f32>(-1386f, 171f), Struct_1(-1i, vec3<i32>(-37592i, -1i, 12352i)), 4294967295u), Struct_2(vec2<f32>(-1567f, 1126f), vec2<f32>(-171f, 1185f), Struct_1(0i, vec3<i32>(2147483647i, 2147483647i, 2147483647i)), 4294967295u), Struct_2(vec2<f32>(-988f, 1000f), vec2<f32>(632f, 1498f), Struct_1(-886i, vec3<i32>(817i, 2147483647i, -3697i)), 66599u), Struct_2(vec2<f32>(-1395f, -878f), vec2<f32>(-736f, -1383f), Struct_1(43138i, vec3<i32>(2147483647i, 28892i, i32(-2147483648))), 0u), Struct_2(vec2<f32>(-1054f, 574f), vec2<f32>(261f, -1000f), Struct_1(0i, vec3<i32>(7607i, i32(-2147483648), 0i)), 34117u), Struct_2(vec2<f32>(-723f, 1087f), vec2<f32>(-1005f, -1197f), Struct_1(35664i, vec3<i32>(17436i, 1i, -4060i)), 0u), Struct_2(vec2<f32>(-1388f, 136f), vec2<f32>(1521f, 268f), Struct_1(-48880i, vec3<i32>(-8824i, -1i, 12045i)), 5034u), Struct_2(vec2<f32>(-1488f, 1230f), vec2<f32>(2688f, 752f), Struct_1(i32(-2147483648), vec3<i32>(2147483647i, -26970i, i32(-2147483648))), 1u), Struct_2(vec2<f32>(1124f, -2245f), vec2<f32>(291f, -461f), Struct_1(0i, vec3<i32>(-1832i, 21342i, i32(-2147483648))), 72772u), Struct_2(vec2<f32>(-950f, -737f), vec2<f32>(172f, 354f), Struct_1(53974i, vec3<i32>(2147483647i, 0i, 1i)), 4294967295u), Struct_2(vec2<f32>(-852f, 364f), vec2<f32>(465f, -1223f), Struct_1(2818i, vec3<i32>(45087i, 2147483647i, 0i)), 111456u), Struct_2(vec2<f32>(-456f, -383f), vec2<f32>(-1293f, -1000f), Struct_1(13675i, vec3<i32>(-5880i, 27592i, 28216i)), 30409u), Struct_2(vec2<f32>(1230f, 650f), vec2<f32>(-794f, 1000f), Struct_1(-392i, vec3<i32>(14174i, -29363i, i32(-2147483648))), 16108u), Struct_2(vec2<f32>(-181f, -114f), vec2<f32>(-379f, -806f), Struct_1(-1i, vec3<i32>(-47815i, -12104i, 54059i)), 11098u), Struct_2(vec2<f32>(-2123f, -785f), vec2<f32>(-1126f, 1074f), Struct_1(2147483647i, vec3<i32>(13122i, -1i, 0i)), 37589u), Struct_2(vec2<f32>(-333f, 1000f), vec2<f32>(269f, -1681f), Struct_1(1i, vec3<i32>(2170i, -31410i, 2147483647i)), 4294967295u), Struct_2(vec2<f32>(-1005f, -213f), vec2<f32>(-878f, 483f), Struct_1(0i, vec3<i32>(-1i, 6326i, 2147483647i)), 18938u), Struct_2(vec2<f32>(1000f, -404f), vec2<f32>(438f, 1266f), Struct_1(-18694i, vec3<i32>(8542i, 2147483647i, 6437i)), 1u), Struct_2(vec2<f32>(1413f, -1104f), vec2<f32>(434f, -1069f), Struct_1(-68926i, vec3<i32>(-10834i, 2147483647i, 1i)), 48840u), Struct_2(vec2<f32>(-1456f, -414f), vec2<f32>(1735f, -268f), Struct_1(1i, vec3<i32>(2147483647i, -11418i, 1i)), 43470u), Struct_2(vec2<f32>(-110f, -2123f), vec2<f32>(1379f, 142f), Struct_1(i32(-2147483648), vec3<i32>(2147483647i, -10827i, -39336i)), 0u), Struct_2(vec2<f32>(969f, 582f), vec2<f32>(-1099f, 755f), Struct_1(-8828i, vec3<i32>(i32(-2147483648), 13111i, 1i)), 4294967295u), Struct_2(vec2<f32>(848f, -213f), vec2<f32>(-698f, 1543f), Struct_1(-16778i, vec3<i32>(-15685i, 0i, -1i)), 4294967295u), Struct_2(vec2<f32>(481f, 958f), vec2<f32>(1000f, -1142f), Struct_1(1i, vec3<i32>(0i, i32(-2147483648), -11420i)), 0u), Struct_2(vec2<f32>(-311f, 1000f), vec2<f32>(1224f, 474f), Struct_1(5810i, vec3<i32>(-10684i, 1i, 1i)), 13197u), Struct_2(vec2<f32>(147f, -1148f), vec2<f32>(-1923f, -1215f), Struct_1(5906i, vec3<i32>(13643i, 1i, -1i)), 77907u), Struct_2(vec2<f32>(-920f, 1078f), vec2<f32>(-1426f, 531f), Struct_1(10714i, vec3<i32>(i32(-2147483648), 2147483647i, 2147483647i)), 0u), Struct_2(vec2<f32>(2160f, -196f), vec2<f32>(958f, 1616f), Struct_1(1i, vec3<i32>(-6555i, i32(-2147483648), 40849i)), 4294967295u), Struct_2(vec2<f32>(1470f, 1111f), vec2<f32>(851f, -462f), Struct_1(0i, vec3<i32>(-70063i, -1389i, 1i)), 0u), Struct_2(vec2<f32>(-275f, -353f), vec2<f32>(1574f, -350f), Struct_1(-56482i, vec3<i32>(-2177i, 1i, -1i)), 0u), Struct_2(vec2<f32>(188f, -959f), vec2<f32>(-1038f, -222f), Struct_1(12658i, vec3<i32>(18464i, -23761i, 0i)), 0u), Struct_2(vec2<f32>(-541f, -2128f), vec2<f32>(622f, -184f), Struct_1(2147483647i, vec3<i32>(-24932i, -62739i, 47157i)), 1u));

var<private> global1: Struct_1 = Struct_1(1i, vec3<i32>(-91524i, 39285i, 15145i));

fn func_3(arg_0: u32, arg_1: bool, arg_2: Struct_2, arg_3: vec2<f32>) -> vec2<f32> {
    var var_0 = true;
    let var_1 = arg_2.c;
    return vec2<f32>(-(-(-max(-2349f, 167f))), 783f);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2) -> Struct_2 {
    return Struct_2(sign(func_3(~arg_1.d, arg_1.d > 0u, Struct_2(vec2<f32>(arg_1.a.x, arg_1.a.x), vec2<f32>(1242f, -243f), Struct_1(arg_0.a, vec3<i32>(global1.a, global1.b.x, global1.b.x)), arg_1.d), arg_1.a - arg_1.a)) * -arg_1.a, sign(select(arg_1.b, arg_1.b, any(vec3<bool>(false, false, false))) / arg_1.b), Struct_1(i32(-2147483648), ~(-clamp(arg_0.b, vec3<i32>(2147483647i, arg_1.c.b.x, 55377i), arg_0.b))), u_input.a);
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> bool {
    global1 = arg_1.c;
    let var_0 = step((trunc(-138f) / (floor(arg_1.a.x) - -268f)) / -1184f, arg_1.a.x * 1609f);
    global0 = array<Struct_2, 32>();
    global0 = array<Struct_2, 32>();
    var var_1 = arg_1.a.x;
    return !(!(false && any(!vec2<bool>(false, false))));
}

fn func_1(arg_0: Struct_2) -> f32 {
    let var_0 = arg_0;
    let var_1 = vec2<bool>(func_4(1i % global1.b.x, func_2(var_0.c, global0[31732u])), !(1u > ((arg_0.d + var_0.d) - select(arg_0.d, arg_0.d, true))));
    global1 = arg_0.c;
    global0 = array<Struct_2, 32>();
    let var_2 = dot(~var_0.c.b & arg_0.c.b, firstTrailingBit(-min(vec3<i32>(2147483647i, 0i, var_0.c.a), global1.b ^ arg_0.c.b)));
    return var_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~2147483647i, global1.b);
    global0 = array<Struct_2, 32>();
    let var_1 = u_input.a;
    let var_2 = !vec2<bool>(func_1(Struct_2(vec2<f32>(-273f, 176f), vec2<f32>(291f, -1000f), Struct_1(-2497i, var_0.b), u_input.a)) <= -1483f, true);
    var var_3 = func_2(func_2(func_2(Struct_1(i32(-2147483648), var_0.b), func_2(Struct_1(i32(-2147483648), vec3<i32>(var_0.a, 13179i, var_0.b.x)), global0[38333u])).c, func_2(Struct_1(i32(-2147483648), firstLeadingBit(global1.b)), func_2(func_2(Struct_1(2147483647i, global1.b), global0[u_input.a]).c, func_2(Struct_1(-1i, vec3<i32>(var_0.b.x, 0i, 29435i)), global0[var_1])))).c, global0[4294967295u]).c;
    var_0 = Struct_1(reverseBits(select(-(var_3.a ^ var_0.b.x), -25896i, all(!vec2<bool>(false, var_2.x)))), ~vec3<i32>(var_0.b.x, global1.b.x | (-9672i >> 0u), var_0.b.x % 32074i));
    let x = u_input.a;
    s_output = StorageBuffer(-273f + (trunc(round(853f)) / 1000f), -(-trunc(981f)), vec2<u32>(u_input.a & ~118410u, 48743u) | vec2<u32>(~(~var_1), 24376u), -dot(global1.b, vec3<i32>(~global1.a, abs(var_3.b.x), i32(-2147483648))));
}

