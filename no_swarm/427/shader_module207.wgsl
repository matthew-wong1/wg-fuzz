struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: vec2<u32>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(vec4<f32>(134f, -839f, -282f, -478f), Struct_1(vec2<u32>(1u, 4294967295u), vec2<bool>(false, true), vec2<u32>(74346u, 4294967295u), false, 405f), vec2<i32>(27901i, 6774i), Struct_1(vec2<u32>(15768u, 81154u), vec2<bool>(false, true), vec2<u32>(1u, 14254u), true, 754f)), Struct_2(vec4<f32>(-434f, -126f, -651f, 480f), Struct_1(vec2<u32>(43401u, 22989u), vec2<bool>(true, true), vec2<u32>(1u, 0u), true, -1559f), vec2<i32>(0i, 6827i), Struct_1(vec2<u32>(15217u, 7344u), vec2<bool>(true, false), vec2<u32>(1u, 0u), true, -396f)), Struct_2(vec4<f32>(-448f, 550f, -608f, 503f), Struct_1(vec2<u32>(1u, 4294967295u), vec2<bool>(false, false), vec2<u32>(32134u, 4294967295u), true, -882f), vec2<i32>(-1i, -4874i), Struct_1(vec2<u32>(23658u, 15953u), vec2<bool>(false, true), vec2<u32>(0u, 0u), true, -947f)), Struct_2(vec4<f32>(-1005f, 124f, -190f, -2352f), Struct_1(vec2<u32>(2147u, 4294967295u), vec2<bool>(true, false), vec2<u32>(1u, 1u), false, 1138f), vec2<i32>(2147483647i, -7382i), Struct_1(vec2<u32>(44704u, 67068u), vec2<bool>(true, true), vec2<u32>(0u, 4294967295u), true, 143f)), Struct_2(vec4<f32>(-433f, -821f, 2345f, -149f), Struct_1(vec2<u32>(12144u, 46711u), vec2<bool>(true, false), vec2<u32>(0u, 9443u), false, 3204f), vec2<i32>(-24458i, -10494i), Struct_1(vec2<u32>(4294967295u, 28883u), vec2<bool>(false, false), vec2<u32>(9320u, 12595u), true, -634f)), Struct_2(vec4<f32>(-780f, -719f, -1703f, -168f), Struct_1(vec2<u32>(0u, 3049u), vec2<bool>(false, true), vec2<u32>(0u, 1u), false, 1000f), vec2<i32>(-4853i, 0i), Struct_1(vec2<u32>(1u, 1u), vec2<bool>(true, true), vec2<u32>(1u, 0u), false, -879f)), Struct_2(vec4<f32>(778f, 652f, 1002f, 486f), Struct_1(vec2<u32>(1u, 0u), vec2<bool>(true, false), vec2<u32>(72447u, 1u), true, -314f), vec2<i32>(23844i, i32(-2147483648)), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec2<bool>(false, false), vec2<u32>(100964u, 25150u), false, 1180f)), Struct_2(vec4<f32>(648f, -1000f, 323f, -683f), Struct_1(vec2<u32>(1u, 7107u), vec2<bool>(false, false), vec2<u32>(0u, 1u), true, -2076f), vec2<i32>(0i, 30510i), Struct_1(vec2<u32>(0u, 4294967295u), vec2<bool>(true, true), vec2<u32>(65045u, 49927u), true, 1105f)), Struct_2(vec4<f32>(-437f, -871f, -251f, -1053f), Struct_1(vec2<u32>(45674u, 51324u), vec2<bool>(true, false), vec2<u32>(23070u, 1u), true, 243f), vec2<i32>(5395i, i32(-2147483648)), Struct_1(vec2<u32>(4294967295u, 293u), vec2<bool>(false, true), vec2<u32>(1u, 0u), true, -1091f)), Struct_2(vec4<f32>(1151f, 1124f, 506f, 854f), Struct_1(vec2<u32>(1u, 4294967295u), vec2<bool>(false, false), vec2<u32>(9226u, 1u), false, -719f), vec2<i32>(-18780i, 0i), Struct_1(vec2<u32>(19123u, 4294967295u), vec2<bool>(false, false), vec2<u32>(1u, 80961u), false, -204f)), Struct_2(vec4<f32>(512f, 857f, 660f, 489f), Struct_1(vec2<u32>(43084u, 4177u), vec2<bool>(true, false), vec2<u32>(25649u, 50766u), true, -380f), vec2<i32>(17272i, 35967i), Struct_1(vec2<u32>(33353u, 1u), vec2<bool>(false, true), vec2<u32>(1u, 29845u), false, -2079f)), Struct_2(vec4<f32>(-996f, -695f, 1774f, -898f), Struct_1(vec2<u32>(4254u, 3878u), vec2<bool>(false, false), vec2<u32>(4440u, 134999u), false, 480f), vec2<i32>(37320i, -11165i), Struct_1(vec2<u32>(1u, 0u), vec2<bool>(true, true), vec2<u32>(38921u, 4294967295u), true, 453f)), Struct_2(vec4<f32>(-1249f, -704f, 1329f, -1458f), Struct_1(vec2<u32>(1u, 4294967295u), vec2<bool>(false, false), vec2<u32>(0u, 10591u), false, 928f), vec2<i32>(-34618i, -27621i), Struct_1(vec2<u32>(1u, 90852u), vec2<bool>(true, false), vec2<u32>(14369u, 1u), true, 228f)), Struct_2(vec4<f32>(-1000f, -1126f, -512f, 1154f), Struct_1(vec2<u32>(43732u, 1u), vec2<bool>(false, false), vec2<u32>(61950u, 1u), false, -1338f), vec2<i32>(0i, 9185i), Struct_1(vec2<u32>(0u, 13618u), vec2<bool>(false, false), vec2<u32>(61145u, 1u), false, -746f)), Struct_2(vec4<f32>(-786f, 294f, 2552f, -250f), Struct_1(vec2<u32>(4294967295u, 68089u), vec2<bool>(false, true), vec2<u32>(0u, 23660u), true, 1032f), vec2<i32>(-1345i, -21041i), Struct_1(vec2<u32>(0u, 1u), vec2<bool>(true, false), vec2<u32>(18413u, 20950u), true, 921f)), Struct_2(vec4<f32>(1038f, -586f, 626f, -393f), Struct_1(vec2<u32>(23695u, 1u), vec2<bool>(false, false), vec2<u32>(4294967295u, 4294967295u), false, 1000f), vec2<i32>(-1i, -34283i), Struct_1(vec2<u32>(4294967295u, 0u), vec2<bool>(true, false), vec2<u32>(0u, 0u), false, 805f)), Struct_2(vec4<f32>(2086f, -1000f, -558f, 342f), Struct_1(vec2<u32>(1u, 0u), vec2<bool>(false, true), vec2<u32>(36921u, 1u), true, -1172f), vec2<i32>(1i, -32138i), Struct_1(vec2<u32>(76772u, 15728u), vec2<bool>(true, true), vec2<u32>(0u, 98438u), true, 397f)), Struct_2(vec4<f32>(-204f, -1000f, 1274f, 360f), Struct_1(vec2<u32>(56307u, 4294967295u), vec2<bool>(false, false), vec2<u32>(51406u, 38589u), false, -274f), vec2<i32>(-25078i, i32(-2147483648)), Struct_1(vec2<u32>(1u, 1u), vec2<bool>(true, true), vec2<u32>(4294967295u, 8687u), true, 809f)), Struct_2(vec4<f32>(638f, 1313f, 174f, 1000f), Struct_1(vec2<u32>(19482u, 2349u), vec2<bool>(true, true), vec2<u32>(0u, 4294967295u), true, -1470f), vec2<i32>(1i, 1i), Struct_1(vec2<u32>(27482u, 25846u), vec2<bool>(false, false), vec2<u32>(43239u, 4294967295u), false, 286f)), Struct_2(vec4<f32>(-568f, 541f, -434f, 230f), Struct_1(vec2<u32>(4294967295u, 12881u), vec2<bool>(true, false), vec2<u32>(36308u, 63683u), false, -284f), vec2<i32>(-27783i, 1i), Struct_1(vec2<u32>(4294967295u, 47695u), vec2<bool>(true, false), vec2<u32>(94296u, 1u), true, -1000f)), Struct_2(vec4<f32>(767f, -611f, -1612f, -1696f), Struct_1(vec2<u32>(4294967295u, 0u), vec2<bool>(true, true), vec2<u32>(0u, 30621u), true, -253f), vec2<i32>(-35441i, 18926i), Struct_1(vec2<u32>(14411u, 1u), vec2<bool>(true, true), vec2<u32>(4294967295u, 2198u), true, 1061f)), Struct_2(vec4<f32>(-370f, 1227f, 2750f, -193f), Struct_1(vec2<u32>(56587u, 4294967295u), vec2<bool>(true, true), vec2<u32>(1u, 4294967295u), true, -1594f), vec2<i32>(40483i, -6916i), Struct_1(vec2<u32>(4294967295u, 1u), vec2<bool>(true, false), vec2<u32>(44117u, 1493u), true, 226f)), Struct_2(vec4<f32>(-1251f, 942f, -1251f, 1081f), Struct_1(vec2<u32>(4294967295u, 66798u), vec2<bool>(false, true), vec2<u32>(1u, 0u), true, 2449f), vec2<i32>(43468i, 1i), Struct_1(vec2<u32>(0u, 0u), vec2<bool>(false, true), vec2<u32>(1u, 0u), true, 1331f)), Struct_2(vec4<f32>(-1059f, 1000f, -1495f, 303f), Struct_1(vec2<u32>(70873u, 1u), vec2<bool>(false, false), vec2<u32>(0u, 0u), true, -256f), vec2<i32>(-64661i, 1i), Struct_1(vec2<u32>(27871u, 0u), vec2<bool>(true, false), vec2<u32>(4294967295u, 13386u), false, -297f)), Struct_2(vec4<f32>(1004f, -1099f, 910f, 588f), Struct_1(vec2<u32>(36662u, 0u), vec2<bool>(true, false), vec2<u32>(60189u, 40947u), false, -247f), vec2<i32>(i32(-2147483648), 2147483647i), Struct_1(vec2<u32>(45073u, 37057u), vec2<bool>(false, true), vec2<u32>(64030u, 7635u), true, 884f)), Struct_2(vec4<f32>(1000f, 1041f, 1145f, 722f), Struct_1(vec2<u32>(0u, 4294967295u), vec2<bool>(false, false), vec2<u32>(4294967295u, 7884u), true, -972f), vec2<i32>(30333i, 18906i), Struct_1(vec2<u32>(64145u, 34598u), vec2<bool>(false, false), vec2<u32>(4294967295u, 40582u), false, -1079f)));

var<private> global2: Struct_2 = Struct_2(vec4<f32>(805f, 964f, -301f, -1000f), Struct_1(vec2<u32>(126414u, 4187u), vec2<bool>(true, true), vec2<u32>(35878u, 72160u), true, 1161f), vec2<i32>(-32731i, 59522i), Struct_1(vec2<u32>(63979u, 24519u), vec2<bool>(false, false), vec2<u32>(4285u, 19222u), true, -672f));

var<private> global3: array<Struct_3, 7>;

var<private> global4: array<i32, 22>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> f32 {
    let var_0 = global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(min(reverseBits(reverseBits(11176u)) & u_input.a.x, ~global2.d.a.x ^ max(_wgslsmith_add_u32(0u, 9008u), u_input.a.x)), 1u), 22u)];
    var var_1 = u_input.c;
    let var_2 = vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(4294967295u | firstTrailingBit(u_input.d.x), ~(~global2.b.a.x)), countOneBits(12409u)), select(_wgslsmith_dot_vec3_u32(~(vec3<u32>(0u, u_input.a.x, global2.d.a.x) ^ u_input.a.wxy), abs(~vec3<u32>(16880u, 68576u, 56580u))), min(44995u, 24412u), true), 31695u, 48810u);
    global4 = array<i32, 22>();
    let var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(select(global2.a, _wgslsmith_f_op_vec4_f32(-global2.a), false)), global2.d, -select(global2.c, -(~vec2<i32>(36745i, global2.c.x)), false), Struct_1(_wgslsmith_sub_vec2_u32(abs(u_input.a.yw), _wgslsmith_mult_vec2_u32(select(vec2<u32>(global2.b.c.x, var_2.x), var_2.ww, global2.b.b), vec2<u32>(4294967295u, u_input.d.x))), vec2<bool>(true, true), max(countOneBits(~vec2<u32>(u_input.d.x, u_input.a.x)), abs(vec2<u32>(global2.b.c.x, 37345u)) & ~vec2<u32>(1u, var_2.x)), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1401f, -969f)) * 663f)));
    return _wgslsmith_f_op_f32(-var_3.b.e);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1494f, -1210f))) - arg_1.a.e) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.e)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))))));
    let var_1 = ~global2.c.x;
    return Struct_3(Struct_1(u_input.a.zw, global2.d.b, ~(~vec2<u32>(arg_1.a.c.x, 67760u) >> (reverseBits(global2.d.c) % vec2<u32>(32u))), any(vec2<bool>(!global2.b.b.x, select(global2.b.b.x, false, global2.d.b.x))), arg_1.a.e));
}

fn func_1(arg_0: vec2<f32>) -> vec3<bool> {
    var var_0 = Struct_3(global2.b);
    var var_1 = func_2(global2.d, global3[_wgslsmith_index_u32(u_input.d.x & (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, var_0.a.c.x, global2.d.a.x, global2.d.a.x), u_input.a | u_input.a) >> (~global2.d.a.x % 32u)), 7u)]);
    global4 = array<i32, 22>();
    var var_2 = global3[_wgslsmith_index_u32(~0u, 7u)];
    global1 = array<Struct_2, 26>();
    return !select(vec3<bool>(var_0.a.d, true, true), vec3<bool>(func_2(func_2(Struct_1(var_2.a.a, vec2<bool>(true, var_2.a.b.x), vec2<u32>(var_1.a.c.x, var_2.a.a.x), var_2.a.b.x, 1348f), global3[_wgslsmith_index_u32(var_0.a.c.x, 7u)]).a, Struct_3(var_1.a)).a.d, any(vec2<bool>(true, global2.d.d)), !(global2.b.d && var_0.a.d)), select(!(!vec3<bool>(false, var_1.a.b.x, true)), select(select(vec3<bool>(global2.b.b.x, false, var_2.a.d), vec3<bool>(true, false, true), vec3<bool>(true, global2.b.b.x, true)), select(vec3<bool>(false, false, global2.b.b.x), vec3<bool>(global2.d.d, false, true), false), !vec3<bool>(var_1.a.b.x, var_1.a.d, false)), all(!vec3<bool>(true, true, var_0.a.d))));
}

fn func_4(arg_0: vec3<bool>) -> Struct_2 {
    global4 = array<i32, 22>();
    global2 = global1[_wgslsmith_index_u32(7833u & reverseBits(37225u >> (~_wgslsmith_mod_u32(27534u, global2.b.a.x) % 32u)), 26u)];
    let var_0 = vec3<u32>(15368u, 4294967295u, 72362u);
    let var_1 = global2.b.b.x;
    global4 = array<i32, 22>();
    return global1[_wgslsmith_index_u32(~min(~var_0.x, 44270u), 26u)];
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global1[_wgslsmith_index_u32(~global2.b.a.x, 26u)];
    var var_0 = func_4(!select(func_1(_wgslsmith_f_op_vec2_f32(abs(global2.a.wy))), vec3<bool>(global2.b.d, !global2.d.d, all(vec3<bool>(global2.b.d, global2.d.d, false))), func_2(func_2(global2.b, global3[_wgslsmith_index_u32(8871u, 7u)]).a, global3[_wgslsmith_index_u32(global2.b.a.x << (u_input.a.x % 32u), 7u)]).a.b.x));
    var var_1 = ~u_input.a.xxw;
    global4 = array<i32, 22>();
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(global2.a.ww)), var_0.a.xy);
    let var_3 = _wgslsmith_sub_i32(4062i, -1i) | ((19399i >> (global2.d.a.x % 32u)) | -22442i);
    let var_4 = func_2(func_4(func_1(func_4(select(vec3<bool>(global2.d.d, false, var_0.b.d), vec3<bool>(false, true, global2.d.d), vec3<bool>(true, true, var_0.d.b.x))).a.yw)).d, Struct_3(Struct_1(vec2<u32>(global2.b.a.x & 0u, ~var_1.x), select(func_1(global2.a.xx).xx, select(vec2<bool>(var_0.d.b.x, global2.b.b.x), vec2<bool>(global2.d.b.x, var_0.b.b.x), vec2<bool>(true, true)), select(global2.d.d, global2.b.d, global2.b.b.x)), ~u_input.a.xy, any(vec3<bool>(global2.d.b.x, var_0.b.d, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - global2.d.e)))));
    let var_5 = true;
    let var_6 = func_2(var_4.a, var_4);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(26636u, 23520u, 4294967295u, u_input.a.x) ^ vec4<u32>(var_1.x, 0u, 11061u, u_input.d.x)) & max(~u_input.a, abs(vec4<u32>(34260u, var_1.x, var_4.a.a.x, var_6.a.c.x))), vec4<u32>(94743u, max(global2.d.c.x, ~0u), countOneBits(var_4.a.a.x), 1u)), var_1.x, global2.d.e, ~278u);
}

