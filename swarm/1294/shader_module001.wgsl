struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec3<f32>(771f, -934f, -1119f), vec3<f32>(-659f, 137f, 1434f)), Struct_1(vec3<f32>(1219f, 245f, -219f), vec3<f32>(348f, 399f, 829f)), Struct_1(vec3<f32>(869f, -159f, 1821f), vec3<f32>(401f, 783f, 568f)), Struct_1(vec3<f32>(1198f, -318f, 3383f), vec3<f32>(202f, 254f, 1460f)), Struct_1(vec3<f32>(880f, -1000f, -768f), vec3<f32>(2264f, -384f, -1000f)), Struct_1(vec3<f32>(-633f, -1313f, -915f), vec3<f32>(1000f, 755f, -811f)), Struct_1(vec3<f32>(1299f, 624f, 1026f), vec3<f32>(108f, -1000f, -1178f)), Struct_1(vec3<f32>(2686f, 1254f, -409f), vec3<f32>(1431f, -700f, -440f)), Struct_1(vec3<f32>(230f, -456f, -437f), vec3<f32>(-568f, 176f, -1166f)), Struct_1(vec3<f32>(-628f, 169f, -652f), vec3<f32>(-1168f, 1263f, 610f)), Struct_1(vec3<f32>(-165f, -121f, 690f), vec3<f32>(1000f, -1000f, 1470f)), Struct_1(vec3<f32>(-980f, 491f, 970f), vec3<f32>(-1000f, 970f, -759f)), Struct_1(vec3<f32>(358f, 1000f, 265f), vec3<f32>(752f, -377f, 1415f)), Struct_1(vec3<f32>(-1513f, -553f, 2017f), vec3<f32>(-242f, 762f, -1000f)), Struct_1(vec3<f32>(1000f, -506f, 909f), vec3<f32>(-1595f, 787f, -803f)));

var<private> global1: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(Struct_1(vec3<f32>(-916f, -1033f, -1306f), vec3<f32>(1864f, 1000f, -148f)), 1182f), Struct_2(Struct_1(vec3<f32>(1162f, -808f, -319f), vec3<f32>(-1952f, -113f, 855f)), 884f), Struct_2(Struct_1(vec3<f32>(692f, 1724f, -1463f), vec3<f32>(-714f, 259f, -832f)), 1000f), Struct_2(Struct_1(vec3<f32>(514f, 2044f, 1658f), vec3<f32>(-108f, 852f, 1285f)), 698f), Struct_2(Struct_1(vec3<f32>(100f, 1308f, -701f), vec3<f32>(-1000f, -407f, -671f)), 501f), Struct_2(Struct_1(vec3<f32>(-373f, 1000f, 224f), vec3<f32>(198f, 306f, -1926f)), 1000f), Struct_2(Struct_1(vec3<f32>(1000f, -682f, 578f), vec3<f32>(-694f, -2105f, -954f)), -688f), Struct_2(Struct_1(vec3<f32>(-662f, 342f, 2166f), vec3<f32>(-965f, 1266f, 1370f)), 855f), Struct_2(Struct_1(vec3<f32>(1709f, 383f, 842f), vec3<f32>(-1450f, 178f, -1000f)), 595f), Struct_2(Struct_1(vec3<f32>(1000f, 173f, 1236f), vec3<f32>(277f, -1334f, 1214f)), -378f), Struct_2(Struct_1(vec3<f32>(-348f, -416f, -186f), vec3<f32>(-600f, -1574f, 2296f)), 1592f), Struct_2(Struct_1(vec3<f32>(204f, 1000f, -640f), vec3<f32>(-1328f, 1729f, 1339f)), -1384f), Struct_2(Struct_1(vec3<f32>(798f, 146f, 938f), vec3<f32>(156f, 1000f, -960f)), 233f), Struct_2(Struct_1(vec3<f32>(271f, -1319f, 229f), vec3<f32>(1000f, -2104f, -349f)), 969f), Struct_2(Struct_1(vec3<f32>(-244f, 183f, -330f), vec3<f32>(-2229f, 305f, 1462f)), -578f), Struct_2(Struct_1(vec3<f32>(1126f, 404f, -121f), vec3<f32>(-966f, 482f, 815f)), 708f), Struct_2(Struct_1(vec3<f32>(962f, 1035f, 738f), vec3<f32>(502f, -820f, -644f)), -1252f), Struct_2(Struct_1(vec3<f32>(1000f, 1000f, -248f), vec3<f32>(573f, 2307f, 361f)), -1620f), Struct_2(Struct_1(vec3<f32>(-1000f, 1313f, 997f), vec3<f32>(2243f, 1000f, 817f)), -1706f), Struct_2(Struct_1(vec3<f32>(1259f, -423f, 1000f), vec3<f32>(725f, -394f, 1184f)), 393f), Struct_2(Struct_1(vec3<f32>(696f, -794f, -1115f), vec3<f32>(1171f, 561f, 1637f)), -929f), Struct_2(Struct_1(vec3<f32>(262f, 535f, 447f), vec3<f32>(260f, 1084f, -873f)), 643f), Struct_2(Struct_1(vec3<f32>(1573f, -578f, 506f), vec3<f32>(1639f, -1618f, 1198f)), -127f));

var<private> global2: Struct_1;

var<private> global3: i32;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec4<u32>) -> vec3<f32> {
    let var_0 = _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.e.x, 4294967295u, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(arg_2.x, arg_1), arg_1, ~arg_1), _wgslsmith_mult_u32(arg_2.x, ~42529u)), _wgslsmith_sub_vec4_u32(u_input.e, abs(firstTrailingBit(vec4<u32>(1u, 0u, u_input.a, 4294967295u)))) >> (_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1, arg_2.x, arg_2.x, arg_1), arg_2), u_input.e) % vec4<u32>(32u)));
    global1 = array<Struct_2, 23>();
    return _wgslsmith_f_op_vec3_f32(abs(global2.a));
}

fn func_2(arg_0: vec3<i32>) -> vec3<f32> {
    let var_0 = _wgslsmith_add_vec4_i32(u_input.b, vec4<i32>(-1i, reverseBits(u_input.d | arg_0.x), 83526i, select(abs(arg_0.x), _wgslsmith_add_i32(u_input.d, -13292i), false)) ^ ~(~_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.x, -56194i, u_input.b.x, 51356i), u_input.b)));
    let var_1 = global1[_wgslsmith_index_u32(9412u, 23u)];
    global0 = array<Struct_1, 15>();
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(round(global2.b)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.a.b + var_1.a.a) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(260f, 460f, 254f)))), var_1.a.a));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.b) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.a.x, -1000f, 543f) + global2.a))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(global2.a, var_2.a), u_input.c, u_input.e)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-932f, var_2.a.x, var_1.a.a.x))), vec3<bool>(false, true, false))))));
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2) -> f32 {
    let var_0 = u_input.d;
    global1 = array<Struct_2, 23>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.a.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.b.x, -945f, 375f))))), _wgslsmith_f_op_vec3_f32(func_2(firstLeadingBit(vec3<i32>(select(u_input.d, 44829i, true), max(0i, -2147483647i), ~u_input.b.x)))));
    global3 = abs(-2890i);
    global3 = _wgslsmith_sub_i32(reverseBits(~0i), abs(~((var_0 & var_0) << (~u_input.c % 32u))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.x, 287f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -491f), -400f))), _wgslsmith_div_f32(191f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1502f * global2.a.x) - _wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(vec3<f32>(global2.a.x, global2.a.x, -1910f), global2.a), global2.b.x), global2.a.x, Struct_2(Struct_1(global2.b, vec3<f32>(-1037f, global2.a.x, -426f)), global2.a.x)))))), firstTrailingBit(_wgslsmith_clamp_vec2_i32(u_input.b.yw, u_input.b.wx, vec2<i32>(-2147483647i, reverseBits(2147483647i)))), min(u_input.e.x, 5828u));
}

