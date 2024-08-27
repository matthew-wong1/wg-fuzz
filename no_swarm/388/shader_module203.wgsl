struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
    c: vec4<i32>,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
    c: vec2<f32>,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(Struct_1(-2183f, vec2<bool>(false, true), -2034f), Struct_1(310f, vec2<bool>(false, true), 1062f), Struct_1(760f, vec2<bool>(false, false), -2209f)), Struct_2(Struct_1(-2731f, vec2<bool>(true, false), -813f), Struct_1(-648f, vec2<bool>(false, false), -731f), Struct_1(-1000f, vec2<bool>(false, false), -1204f)), Struct_2(Struct_1(207f, vec2<bool>(true, true), 386f), Struct_1(112f, vec2<bool>(false, false), 1170f), Struct_1(1629f, vec2<bool>(true, false), -1902f)), Struct_2(Struct_1(-1049f, vec2<bool>(false, true), -2165f), Struct_1(-1460f, vec2<bool>(false, true), -612f), Struct_1(598f, vec2<bool>(false, true), -1230f)), Struct_2(Struct_1(1325f, vec2<bool>(false, true), 1288f), Struct_1(1472f, vec2<bool>(false, true), 190f), Struct_1(1091f, vec2<bool>(false, false), 182f)), Struct_2(Struct_1(790f, vec2<bool>(false, true), 391f), Struct_1(1432f, vec2<bool>(true, true), 1000f), Struct_1(-576f, vec2<bool>(false, true), -241f)), Struct_2(Struct_1(-1361f, vec2<bool>(false, true), -262f), Struct_1(441f, vec2<bool>(true, true), -554f), Struct_1(757f, vec2<bool>(true, true), 608f)), Struct_2(Struct_1(-559f, vec2<bool>(false, false), 855f), Struct_1(1880f, vec2<bool>(false, true), -487f), Struct_1(-136f, vec2<bool>(false, false), -595f)), Struct_2(Struct_1(-1130f, vec2<bool>(false, false), 707f), Struct_1(1291f, vec2<bool>(false, true), -222f), Struct_1(-949f, vec2<bool>(false, true), -193f)), Struct_2(Struct_1(-644f, vec2<bool>(true, false), -733f), Struct_1(-4032f, vec2<bool>(false, true), 468f), Struct_1(1489f, vec2<bool>(true, true), -537f)), Struct_2(Struct_1(1000f, vec2<bool>(false, true), -1433f), Struct_1(100f, vec2<bool>(false, true), 1574f), Struct_1(-1986f, vec2<bool>(false, false), -1000f)), Struct_2(Struct_1(-311f, vec2<bool>(true, false), 430f), Struct_1(-1220f, vec2<bool>(true, false), 1824f), Struct_1(1124f, vec2<bool>(false, false), -480f)), Struct_2(Struct_1(-310f, vec2<bool>(false, true), 593f), Struct_1(2111f, vec2<bool>(true, false), -1064f), Struct_1(-517f, vec2<bool>(false, false), -784f)), Struct_2(Struct_1(329f, vec2<bool>(true, false), 2873f), Struct_1(-1242f, vec2<bool>(false, true), 336f), Struct_1(802f, vec2<bool>(true, true), -724f)), Struct_2(Struct_1(-1000f, vec2<bool>(true, false), 1241f), Struct_1(-582f, vec2<bool>(false, true), 194f), Struct_1(-1888f, vec2<bool>(true, false), 1698f)), Struct_2(Struct_1(-435f, vec2<bool>(false, false), 2803f), Struct_1(2407f, vec2<bool>(false, true), -926f), Struct_1(232f, vec2<bool>(false, false), -352f)), Struct_2(Struct_1(1501f, vec2<bool>(false, false), -443f), Struct_1(1000f, vec2<bool>(false, false), -401f), Struct_1(1000f, vec2<bool>(true, true), -1713f)), Struct_2(Struct_1(176f, vec2<bool>(false, false), 228f), Struct_1(-232f, vec2<bool>(false, true), 119f), Struct_1(1117f, vec2<bool>(false, true), 149f)), Struct_2(Struct_1(-860f, vec2<bool>(true, false), 355f), Struct_1(-1033f, vec2<bool>(false, false), 480f), Struct_1(-204f, vec2<bool>(true, false), 279f)), Struct_2(Struct_1(443f, vec2<bool>(false, false), -425f), Struct_1(-213f, vec2<bool>(true, true), 1035f), Struct_1(-647f, vec2<bool>(true, true), 464f)), Struct_2(Struct_1(-1000f, vec2<bool>(true, false), 1817f), Struct_1(1770f, vec2<bool>(false, true), -1983f), Struct_1(-267f, vec2<bool>(true, true), 158f)), Struct_2(Struct_1(-1197f, vec2<bool>(true, false), -818f), Struct_1(-1456f, vec2<bool>(true, true), 231f), Struct_1(572f, vec2<bool>(false, true), 850f)), Struct_2(Struct_1(976f, vec2<bool>(false, true), 102f), Struct_1(1000f, vec2<bool>(true, false), 393f), Struct_1(-1457f, vec2<bool>(true, true), -2571f)), Struct_2(Struct_1(-116f, vec2<bool>(false, false), 461f), Struct_1(964f, vec2<bool>(false, false), 309f), Struct_1(-202f, vec2<bool>(true, false), -1000f)), Struct_2(Struct_1(414f, vec2<bool>(false, false), -249f), Struct_1(503f, vec2<bool>(true, false), 1201f), Struct_1(-524f, vec2<bool>(true, false), -189f)), Struct_2(Struct_1(150f, vec2<bool>(false, false), 2671f), Struct_1(-1600f, vec2<bool>(false, true), -1487f), Struct_1(247f, vec2<bool>(false, true), 572f)));

var<private> global1: array<Struct_2, 23>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_2) -> bool {
    var var_0 = select(select(select(vec4<bool>(u_input.c >= u_input.c, arg_2.c.b.x, arg_0.b.x, all(vec3<bool>(arg_2.c.b.x, false, false))), vec4<bool>(any(arg_0.b), true, arg_0.b.x, true), select(select(vec4<bool>(arg_0.b.x, false, arg_2.c.b.x, false), vec4<bool>(false, arg_2.b.b.x, false, true), vec4<bool>(arg_0.b.x, false, false, arg_2.b.b.x)), !vec4<bool>(false, arg_0.b.x, true, arg_2.c.b.x), any(vec3<bool>(false, true, arg_0.b.x)))), vec4<bool>(true, all(!vec3<bool>(arg_0.b.x, false, true)), true, arg_0.b.x), true), vec4<bool>(true, arg_0.b.x == all(vec3<bool>(true, true, true)), arg_2.a.b.x, false), select(select(!select(vec4<bool>(false, arg_2.a.b.x, true, arg_2.c.b.x), vec4<bool>(arg_0.b.x, arg_0.b.x, arg_2.a.b.x, arg_0.b.x), vec4<bool>(arg_2.b.b.x, arg_2.c.b.x, arg_0.b.x, arg_2.c.b.x)), select(!vec4<bool>(true, true, false, arg_0.b.x), select(vec4<bool>(false, arg_0.b.x, true, true), vec4<bool>(false, false, false, arg_0.b.x), vec4<bool>(false, true, false, false)), !vec4<bool>(false, arg_2.a.b.x, arg_2.c.b.x, false)), arg_2.b.b.x), select(vec4<bool>(arg_0.b.x, arg_0.b.x, arg_2.a.b.x && arg_0.b.x, true), select(!vec4<bool>(arg_2.a.b.x, arg_2.c.b.x, true, true), select(vec4<bool>(true, arg_0.b.x, true, arg_0.b.x), vec4<bool>(false, false, arg_0.b.x, false), arg_0.b.x), vec4<bool>(true, false, arg_0.b.x, true)), all(vec2<bool>(true, true))), vec4<bool>(arg_0.b.x, true, true, true)));
    global1 = array<Struct_2, 23>();
    let var_1 = var_0.yy;
    return var_0.x;
}

fn func_2(arg_0: f32, arg_1: bool) -> u32 {
    let var_0 = false;
    global0 = array<Struct_2, 26>();
    var var_1 = !(!(!vec2<bool>(all(vec2<bool>(true, true)), func_3(Struct_1(521f, vec2<bool>(var_0, false), 1000f), vec4<f32>(905f, arg_0, arg_0, arg_0), global1[_wgslsmith_index_u32(u_input.c, 23u)]))));
    var var_2 = arg_1;
    var_1 = select(vec2<bool>(!(!var_0 || var_0), var_1.x), vec2<bool>(true, 1u < (55771u ^ abs(u_input.a.x))), !(!vec2<bool>(all(vec3<bool>(arg_1, true, arg_1)), arg_1)));
    return ~50664u;
}

fn func_1(arg_0: vec3<bool>) -> vec2<i32> {
    global0 = array<Struct_2, 26>();
    global1 = array<Struct_2, 23>();
    var var_0 = _wgslsmith_mult_u32(1u, 1u);
    global1 = array<Struct_2, 23>();
    var_0 = ~min(firstTrailingBit(_wgslsmith_sub_u32(u_input.b.x, ~1u)), ~firstTrailingBit(func_2(-1000f, arg_0.x)));
    return vec2<i32>(1i, 1i) >> (u_input.a.zz % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(true, min(select(abs(~vec2<i32>(-38069i, 1i)), func_1(vec3<bool>(true, true, false)), all(vec4<bool>(true, true, true, true))), -abs(vec2<i32>(-1i, -2580i))), ~abs(vec4<i32>(21206i, 31534i, 27743i, 2147483647i)) >> ((u_input.a | u_input.a) % vec4<u32>(32u)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(381f * 528f))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1596f, -463f))))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), any(vec4<bool>(true, false, true, false))), vec2<bool>(true, true)), -1114f), true);
    global1 = array<Struct_2, 23>();
    let var_1 = Struct_3(!any(!vec3<bool>(var_0.a, true, false)) == (~(var_0.c.x << (4294967295u % 32u)) >= ~max(-1i, 2147483647i)), select(vec2<i32>(1i, var_0.b.x), min(vec2<i32>(var_0.c.x, var_0.c.x), vec2<i32>(41179i, var_0.b.x)) | select(-var_0.b, vec2<i32>(1i, -51478i), select(true, var_0.a, true)), !(_wgslsmith_f_op_f32(abs(261f)) != var_0.d.a)), var_0.c, var_0.d, !(!any(vec2<bool>(true, true))));
    var var_2 = ~vec2<u32>(~1u, _wgslsmith_mult_u32(firstTrailingBit(_wgslsmith_sub_u32(u_input.c, 0u)), 82574u));
    global1 = array<Struct_2, 23>();
    var var_3 = vec4<u32>(abs(var_2.x), var_2.x, 13626u ^ max(~4294967295u >> (var_2.x % 32u), u_input.c), _wgslsmith_mod_u32(4294967295u, 1u) ^ (reverseBits(36595u) ^ select(4294967295u, _wgslsmith_div_u32(var_2.x, 4294967295u), false)));
    var var_4 = _wgslsmith_clamp_i32(-10316i >> (var_2.x % 32u), _wgslsmith_dot_vec2_i32(var_1.c.xw, firstTrailingBit(reverseBits(vec2<i32>(-2147483647i, 28131i)))), 38531i) << (~_wgslsmith_mult_u32(_wgslsmith_sub_u32(10296u & var_3.x, var_2.x & var_2.x), firstTrailingBit(_wgslsmith_mod_u32(33722u, var_2.x))) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(1u, vec3<i32>(_wgslsmith_mod_i32(~var_0.b.x, var_0.b.x) ^ ~0i, -(var_1.b.x << (u_input.a.x % 32u)), -54346i), reverseBits(var_3.x), u_input.c, select(vec3<u32>(_wgslsmith_div_u32(var_3.x, var_3.x), ~var_3.x | var_3.x, ~var_3.x >> (1392u % 32u)), u_input.b, any(select(select(vec3<bool>(false, var_1.d.b.x, false), vec3<bool>(true, var_0.e, true), vec3<bool>(var_0.d.b.x, false, false)), vec3<bool>(false, false, var_0.a), vec3<bool>(true, var_0.a, var_1.d.b.x)))));
}

