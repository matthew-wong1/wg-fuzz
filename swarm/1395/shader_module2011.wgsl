struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<u32>,
    c: f32,
    d: Struct_1,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(926f, vec4<u32>(41103u, 4294967295u, 51941u, 4294967295u), 1000f, Struct_1(vec3<f32>(-883f, 888f, 893f)), vec4<bool>(false, false, true, true));

var<private> global1: array<vec2<f32>, 31> = array<vec2<f32>, 31>(vec2<f32>(557f, 180f), vec2<f32>(-892f, 1431f), vec2<f32>(860f, -851f), vec2<f32>(-2286f, -389f), vec2<f32>(-212f, -479f), vec2<f32>(392f, 557f), vec2<f32>(-865f, -1576f), vec2<f32>(1000f, 301f), vec2<f32>(277f, 399f), vec2<f32>(-121f, -188f), vec2<f32>(357f, -1000f), vec2<f32>(458f, 1000f), vec2<f32>(-1334f, -971f), vec2<f32>(-302f, 595f), vec2<f32>(-1197f, -1538f), vec2<f32>(-1574f, -1817f), vec2<f32>(-742f, -743f), vec2<f32>(-551f, 946f), vec2<f32>(1792f, -1105f), vec2<f32>(-495f, 1189f), vec2<f32>(712f, -1129f), vec2<f32>(1628f, 188f), vec2<f32>(-1000f, -461f), vec2<f32>(745f, 1026f), vec2<f32>(-1000f, -354f), vec2<f32>(960f, 2677f), vec2<f32>(-1889f, -640f), vec2<f32>(139f, 176f), vec2<f32>(656f, -2801f), vec2<f32>(1503f, 915f), vec2<f32>(553f, 655f));

var<private> global2: array<u32, 10>;

var<private> global3: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(364f, vec4<u32>(43695u, 11303u, 64412u, 10845u), 1086f, Struct_1(vec3<f32>(1000f, 282f, 293f)), vec4<bool>(true, true, false, true)), Struct_3(-749f, vec4<u32>(81509u, 31779u, 5217u, 17669u), 1512f, Struct_1(vec3<f32>(163f, -436f, -261f)), vec4<bool>(true, true, false, true)), Struct_3(-1801f, vec4<u32>(62018u, 37881u, 14019u, 62581u), -1121f, Struct_1(vec3<f32>(1009f, -1138f, -440f)), vec4<bool>(true, true, true, false)), Struct_3(330f, vec4<u32>(2307u, 26908u, 32218u, 49007u), -486f, Struct_1(vec3<f32>(-1199f, -1000f, 685f)), vec4<bool>(false, true, false, true)), Struct_3(-1229f, vec4<u32>(44585u, 4294967295u, 0u, 1u), -233f, Struct_1(vec3<f32>(-1980f, -807f, -393f)), vec4<bool>(false, false, true, false)), Struct_3(2040f, vec4<u32>(0u, 0u, 0u, 0u), -1000f, Struct_1(vec3<f32>(741f, 284f, -197f)), vec4<bool>(true, false, false, true)), Struct_3(-554f, vec4<u32>(0u, 6766u, 57854u, 4294967295u), -460f, Struct_1(vec3<f32>(-1000f, -237f, 920f)), vec4<bool>(true, false, true, true)), Struct_3(-994f, vec4<u32>(62221u, 12592u, 0u, 43936u), 965f, Struct_1(vec3<f32>(695f, 1621f, 506f)), vec4<bool>(false, false, false, false)), Struct_3(-639f, vec4<u32>(20811u, 1u, 50041u, 30991u), -1054f, Struct_1(vec3<f32>(1322f, -311f, -1262f)), vec4<bool>(false, false, false, true)), Struct_3(611f, vec4<u32>(47494u, 91970u, 3042u, 13346u), 1000f, Struct_1(vec3<f32>(1000f, -627f, -532f)), vec4<bool>(true, false, false, true)), Struct_3(-1492f, vec4<u32>(39471u, 1u, 19671u, 11253u), -1247f, Struct_1(vec3<f32>(153f, 571f, -1000f)), vec4<bool>(false, true, true, false)), Struct_3(-743f, vec4<u32>(0u, 87299u, 4294967295u, 4294967295u), -267f, Struct_1(vec3<f32>(1833f, -694f, -731f)), vec4<bool>(true, true, true, true)), Struct_3(-809f, vec4<u32>(1u, 0u, 41565u, 4294967295u), -833f, Struct_1(vec3<f32>(1446f, 193f, 1080f)), vec4<bool>(false, true, true, false)), Struct_3(-1407f, vec4<u32>(40983u, 1u, 0u, 0u), 561f, Struct_1(vec3<f32>(-1210f, 261f, 2060f)), vec4<bool>(false, false, true, true)), Struct_3(383f, vec4<u32>(1u, 8086u, 33872u, 86661u), -1000f, Struct_1(vec3<f32>(749f, 226f, -2150f)), vec4<bool>(false, false, false, true)), Struct_3(-976f, vec4<u32>(54270u, 35309u, 0u, 6554u), -1242f, Struct_1(vec3<f32>(713f, 1288f, 107f)), vec4<bool>(false, false, true, false)), Struct_3(1000f, vec4<u32>(40694u, 33170u, 47487u, 89932u), -1559f, Struct_1(vec3<f32>(-690f, 1000f, 314f)), vec4<bool>(false, false, false, false)), Struct_3(1000f, vec4<u32>(74343u, 0u, 4294967295u, 27690u), -1190f, Struct_1(vec3<f32>(508f, 318f, 1063f)), vec4<bool>(false, true, false, false)), Struct_3(-295f, vec4<u32>(46599u, 28936u, 38145u, 4294967295u), 124f, Struct_1(vec3<f32>(-1266f, 459f, 2537f)), vec4<bool>(true, true, true, false)), Struct_3(639f, vec4<u32>(4224u, 33542u, 4294967295u, 0u), -739f, Struct_1(vec3<f32>(2124f, 478f, 484f)), vec4<bool>(true, true, true, true)), Struct_3(-722f, vec4<u32>(4294967295u, 48135u, 8515u, 33520u), -672f, Struct_1(vec3<f32>(1279f, 2143f, 560f)), vec4<bool>(false, false, false, false)), Struct_3(852f, vec4<u32>(4294967295u, 15017u, 4294967295u, 1u), 2191f, Struct_1(vec3<f32>(-967f, 490f, 977f)), vec4<bool>(true, true, true, false)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<u32>) -> u32 {
    global1 = array<vec2<f32>, 31>();
    return global2[_wgslsmith_index_u32(abs(~(~(select(14916u, 4294967295u, false) << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global0.b.xzz, global0.b.yyz), 10u)], 10u)] % 32u)))), 10u)];
}

fn func_2() -> bool {
    let var_0 = select(vec2<bool>(global0.e.x & !(!global0.e.x), all(select(global0.e, global0.e, !global0.e))), global0.e.xy, !(!all(vec4<bool>(global0.e.x, global0.e.x, true, true))));
    var var_1 = _wgslsmith_div_i32(u_input.a.x, u_input.a.x) ^ ~_wgslsmith_div_i32(u_input.a.x ^ (i32(-1i) * -36399i), -_wgslsmith_mod_i32(2147483647i, 1i));
    var_1 = -(~1i);
    global1 = array<vec2<f32>, 31>();
    global0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(0u, u_input.c, func_3(vec4<u32>(1u, global2[_wgslsmith_index_u32(8644u, 10u)], 357u, u_input.c))), vec3<u32>(global2[_wgslsmith_index_u32(u_input.b.x, 10u)], reverseBits(~1u), _wgslsmith_mod_u32(4294967295u, global2[_wgslsmith_index_u32(4294967295u, 10u)])), vec3<u32>(_wgslsmith_clamp_u32(~70154u, abs(9453u), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, u_input.b.x), 10u)], 10u)]), 1u, ~global2[_wgslsmith_index_u32(u_input.b.x & 85492u, 10u)])), global0.b.xyw), 22u)];
    return !global0.e.x;
}

fn func_4(arg_0: vec4<bool>, arg_1: u32, arg_2: f32) -> i32 {
    global2 = array<u32, 10>();
    global0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, 889f)), ~(~global0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2)))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(1294f + _wgslsmith_div_f32(1166f, 770f)), _wgslsmith_f_op_f32(global0.c - 1f), _wgslsmith_f_op_f32(-arg_2))), arg_0);
    var var_0 = ~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(~global2[_wgslsmith_index_u32(global0.b.x, 10u)], _wgslsmith_div_u32(0u, ~global2[_wgslsmith_index_u32(0u, 10u)])), 912u, _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_1, 4294967295u) & vec2<u32>(global0.b.x, 5328u), ~(~vec2<u32>(40588u, global2[_wgslsmith_index_u32(1u, 10u)]))));
    var_0 = u_input.b.x & 0u;
    let var_1 = ~select(~(~global0.b.wwz), vec3<u32>(16285u, arg_1, min(u_input.c, ~112375u)), vec3<bool>(!any(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), arg_0.x, any(arg_0) || (25934i >= u_input.a.x)));
    return -9926i;
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(1841f * arg_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2.x, _wgslsmith_f_op_f32(1825f + 2113f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c + 788f))))));
    let var_1 = _wgslsmith_f_op_f32(-599f - global0.a);
    let var_2 = vec2<i32>(func_4(vec4<bool>(true, func_2(), !(!arg_0), !(!arg_0)), 100225u, var_0.a.x), -15595i);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x * -150f)))), 276f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2041f, 1054f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-410f * arg_2.x), _wgslsmith_f_op_f32(trunc(822f)), arg_0)) + 341f) * var_0.a.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-747f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(918f, 262f)))))));
    var var_4 = u_input.a.x;
    return Struct_1(var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 10>();
    var var_0 = func_1(false, _wgslsmith_sub_u32(~(global0.b.x | 4294967295u) | ~(global2[_wgslsmith_index_u32(global0.b.x, 10u)] & u_input.c), 1u), global0.d.a);
    let var_1 = Struct_2(-abs(1i), u_input.a.x | -(-u_input.a.x & (i32(-1i) * -2147483647i)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(796f, -1570f, var_0.a.x, _wgslsmith_f_op_f32(-783f * global0.a)))), global0.b.wx, Struct_1(vec3<f32>(global0.a, -623f, global0.d.a.x)));
    var_0 = func_1(!global0.e.x, reverseBits(0u), var_0.a);
    let var_2 = global3[_wgslsmith_index_u32(48769u, 22u)];
    var var_3 = global0.b | global0.b;
    let var_4 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(172f, 606f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-408f - var_2.a))) - -2602f), var_2.b, 2320f, func_1(var_2.e.x, max(4294967295u, reverseBits(1u)), _wgslsmith_f_op_vec3_f32(global0.d.a - vec3<f32>(var_2.c, var_2.d.a.x, var_2.d.a.x))), select(select(!select(vec4<bool>(var_2.e.x, false, true, global0.e.x), global0.e, vec4<bool>(true, var_2.e.x, global0.e.x, true)), var_2.e, select(vec4<bool>(false, true, false, false), vec4<bool>(false, var_2.e.x, true, global0.e.x), !var_2.e)), vec4<bool>(false, all(vec3<bool>(global0.e.x, true, false)), any(!vec3<bool>(false, var_2.e.x, var_2.e.x)), true), vec4<bool>(global0.e.x & !var_2.e.x, global0.e.x, var_2.e.x, global0.e.x)));
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(543f, 1340f, var_4.e.x)));
    var var_6 = var_2.e.wz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(var_1.c)), var_1.c), vec2<f32>(1000f, _wgslsmith_f_op_f32(min(var_5, -910f))), min(u_input.a.x | -(var_1.b << (40635u % 32u)), u_input.a.x), _wgslsmith_clamp_i32(_wgslsmith_div_i32(firstTrailingBit(~(-11465i)), -1i), abs(reverseBits(u_input.a.x)), select(_wgslsmith_dot_vec3_i32(u_input.a.xwz, u_input.a.yww) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a, -20880i), vec2<i32>(17347i, var_1.a)), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.a.wy, u_input.a.yw, vec2<i32>(u_input.a.x, -1i)), _wgslsmith_mod_vec2_i32(u_input.a.xz, vec2<i32>(u_input.a.x, var_1.b))), true)));
}

