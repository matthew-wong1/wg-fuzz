struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<f32>,
    c: vec2<i32>,
    d: u32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -32651i;

var<private> global1: array<Struct_5, 23> = array<Struct_5, 23>(Struct_5(Struct_3(Struct_2(Struct_1(4294967295u), vec4<f32>(732f, -1157f, 891f, -1311f)), vec4<i32>(i32(-2147483648), 36455i, 8614i, 23499i)), vec4<f32>(-456f, -1515f, 779f, 946f), vec2<i32>(3500i, -56153i), 0u, vec3<bool>(true, false, true)), Struct_5(Struct_3(Struct_2(Struct_1(11037u), vec4<f32>(-545f, -716f, -726f, 903f)), vec4<i32>(-32339i, -7516i, 915i, -1i)), vec4<f32>(123f, 102f, -398f, -174f), vec2<i32>(16856i, -13769i), 0u, vec3<bool>(false, true, false)), Struct_5(Struct_3(Struct_2(Struct_1(87797u), vec4<f32>(-577f, 1069f, -1000f, 171f)), vec4<i32>(-13859i, -86747i, 2147483647i, 2147483647i)), vec4<f32>(-1040f, 844f, -301f, 1763f), vec2<i32>(0i, -9424i), 4294967295u, vec3<bool>(false, true, false)), Struct_5(Struct_3(Struct_2(Struct_1(0u), vec4<f32>(-1481f, -1641f, 1511f, 818f)), vec4<i32>(23895i, 0i, 1555i, i32(-2147483648))), vec4<f32>(576f, 718f, 373f, -1112f), vec2<i32>(0i, 2147483647i), 36748u, vec3<bool>(true, true, true)), Struct_5(Struct_3(Struct_2(Struct_1(1u), vec4<f32>(653f, -424f, 641f, 521f)), vec4<i32>(9020i, 1i, 2147483647i, i32(-2147483648))), vec4<f32>(-628f, 481f, 626f, 1112f), vec2<i32>(-6819i, 2147483647i), 41971u, vec3<bool>(true, false, true)), Struct_5(Struct_3(Struct_2(Struct_1(0u), vec4<f32>(410f, -660f, 997f, -642f)), vec4<i32>(19968i, -13355i, -50520i, 1i)), vec4<f32>(-1265f, -904f, 676f, -2220f), vec2<i32>(i32(-2147483648), -44156i), 27082u, vec3<bool>(true, false, false)), Struct_5(Struct_3(Struct_2(Struct_1(1u), vec4<f32>(1000f, -952f, 281f, -180f)), vec4<i32>(-3543i, 0i, 0i, 1i)), vec4<f32>(1184f, 540f, -652f, 389f), vec2<i32>(2147483647i, 18284i), 43242u, vec3<bool>(false, true, true)), Struct_5(Struct_3(Struct_2(Struct_1(4294967295u), vec4<f32>(-368f, -307f, -1000f, -976f)), vec4<i32>(2147483647i, -1i, -21268i, 38647i)), vec4<f32>(-1920f, 1082f, 389f, -303f), vec2<i32>(1i, 7025i), 1u, vec3<bool>(true, true, true)), Struct_5(Struct_3(Struct_2(Struct_1(2806u), vec4<f32>(-1467f, -102f, -837f, 602f)), vec4<i32>(2147483647i, -1i, -1i, -26553i)), vec4<f32>(1103f, 1817f, 976f, -337f), vec2<i32>(-1i, 1i), 57386u, vec3<bool>(true, false, true)), Struct_5(Struct_3(Struct_2(Struct_1(0u), vec4<f32>(380f, -342f, 1674f, -156f)), vec4<i32>(33680i, 0i, 1i, -1i)), vec4<f32>(387f, 321f, -1008f, -557f), vec2<i32>(2147483647i, -49290i), 57882u, vec3<bool>(false, false, false)), Struct_5(Struct_3(Struct_2(Struct_1(0u), vec4<f32>(2010f, -1000f, 1815f, -795f)), vec4<i32>(-9441i, 61468i, i32(-2147483648), 2147483647i)), vec4<f32>(-774f, -125f, 584f, -126f), vec2<i32>(-1i, 0i), 1u, vec3<bool>(true, false, true)), Struct_5(Struct_3(Struct_2(Struct_1(0u), vec4<f32>(-1404f, 1399f, -2444f, -590f)), vec4<i32>(i32(-2147483648), 0i, -1i, 0i)), vec4<f32>(1011f, -1290f, 1000f, 1298f), vec2<i32>(20974i, 0i), 1u, vec3<bool>(true, true, true)), Struct_5(Struct_3(Struct_2(Struct_1(1u), vec4<f32>(1826f, 459f, 2487f, -1148f)), vec4<i32>(i32(-2147483648), i32(-2147483648), 2147483647i, 3527i)), vec4<f32>(1126f, -273f, -731f, 547f), vec2<i32>(2848i, i32(-2147483648)), 2131u, vec3<bool>(true, false, true)), Struct_5(Struct_3(Struct_2(Struct_1(1u), vec4<f32>(936f, -1695f, -774f, -898f)), vec4<i32>(i32(-2147483648), i32(-2147483648), 1505i, 1i)), vec4<f32>(230f, -687f, -595f, 1000f), vec2<i32>(-3067i, 0i), 1u, vec3<bool>(false, false, true)), Struct_5(Struct_3(Struct_2(Struct_1(4294967295u), vec4<f32>(-1232f, -1011f, -1000f, 1816f)), vec4<i32>(-41723i, i32(-2147483648), i32(-2147483648), -29537i)), vec4<f32>(218f, 712f, -784f, -1063f), vec2<i32>(2147483647i, -1i), 93320u, vec3<bool>(false, true, false)), Struct_5(Struct_3(Struct_2(Struct_1(1u), vec4<f32>(-573f, 203f, -1159f, -1093f)), vec4<i32>(-1i, -1i, -21360i, -1i)), vec4<f32>(633f, 534f, -785f, -1443f), vec2<i32>(-1i, 8759i), 0u, vec3<bool>(false, false, true)), Struct_5(Struct_3(Struct_2(Struct_1(10308u), vec4<f32>(-668f, -446f, 234f, -836f)), vec4<i32>(-1i, -6402i, -14933i, -1673i)), vec4<f32>(1000f, 427f, -1293f, 668f), vec2<i32>(15055i, 2147483647i), 1u, vec3<bool>(true, false, false)), Struct_5(Struct_3(Struct_2(Struct_1(35109u), vec4<f32>(1465f, 722f, -417f, 800f)), vec4<i32>(70245i, i32(-2147483648), -1i, i32(-2147483648))), vec4<f32>(798f, 831f, 1251f, -878f), vec2<i32>(17498i, -1i), 12078u, vec3<bool>(false, true, true)), Struct_5(Struct_3(Struct_2(Struct_1(70514u), vec4<f32>(598f, -353f, -978f, 822f)), vec4<i32>(i32(-2147483648), i32(-2147483648), -50318i, 31738i)), vec4<f32>(1151f, 1188f, -1000f, -589f), vec2<i32>(-1i, 1i), 17711u, vec3<bool>(true, false, true)), Struct_5(Struct_3(Struct_2(Struct_1(4294967295u), vec4<f32>(1724f, 558f, 169f, -838f)), vec4<i32>(15650i, 4112i, -10486i, -28969i)), vec4<f32>(-647f, -1122f, -347f, -551f), vec2<i32>(36209i, -15399i), 4294967295u, vec3<bool>(false, false, false)), Struct_5(Struct_3(Struct_2(Struct_1(32777u), vec4<f32>(510f, 923f, 867f, -180f)), vec4<i32>(13196i, -56321i, 0i, 2147483647i)), vec4<f32>(1198f, 962f, 306f, -938f), vec2<i32>(-90180i, -1i), 1u, vec3<bool>(true, true, true)), Struct_5(Struct_3(Struct_2(Struct_1(0u), vec4<f32>(1022f, -344f, -397f, 1302f)), vec4<i32>(28907i, -1i, i32(-2147483648), 4658i)), vec4<f32>(-520f, 565f, 214f, -1363f), vec2<i32>(1i, -55803i), 41926u, vec3<bool>(true, false, false)), Struct_5(Struct_3(Struct_2(Struct_1(0u), vec4<f32>(469f, -449f, -781f, -247f)), vec4<i32>(-5722i, 11683i, i32(-2147483648), 34227i)), vec4<f32>(-736f, 423f, -2617f, 274f), vec2<i32>(32872i, 1i), 4294967295u, vec3<bool>(true, true, false)));

var<private> global2: Struct_2;

var<private> global3: array<bool, 24>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: vec3<f32>, arg_3: i32) -> vec2<i32> {
    global0 = _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 1i), -_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-3943i, arg_3) | vec2<i32>(u_input.c, arg_0), -vec2<i32>(-31464i, arg_0)), vec2<i32>(arg_0, arg_3) << (vec2<u32>(1u, u_input.a) % vec2<u32>(32u))));
    global2 = Struct_2(Struct_1(_wgslsmith_add_u32(u_input.a, ~global2.a.a >> (44017u % 32u))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(global2.b)))));
    let var_0 = _wgslsmith_sub_vec2_i32(vec2<i32>(select(-676i, 0i, global3[_wgslsmith_index_u32(u_input.b, 24u)]), -firstLeadingBit(-42779i) >> (u_input.a % 32u)), (_wgslsmith_sub_vec2_i32(select(vec2<i32>(arg_3, arg_0), vec2<i32>(arg_0, arg_3), global3[_wgslsmith_index_u32(global2.a.a, 24u)]), abs(vec2<i32>(u_input.c, 1i))) << (min(vec2<u32>(0u, u_input.a), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 22364u), vec2<u32>(33257u, 34725u))) % vec2<u32>(32u))) & _wgslsmith_add_vec2_i32(vec2<i32>(~arg_0, abs(0i)), vec2<i32>(firstLeadingBit(arg_3), u_input.c)));
    let var_1 = _wgslsmith_add_i32(u_input.c, 2147483647i) > arg_0;
    global2 = Struct_2(Struct_1(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(global2.a.a, 10364u)), vec2<u32>(15081u, ~u_input.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1252f * global2.b.x), _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(-global2.b.x), _wgslsmith_div_f32(1676f, 271f)))));
    return -_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_add_i32(-1i, -var_0.x), max(i32(-1i) * -1i, 12044i)), abs(var_0));
}

fn func_2() -> i32 {
    var var_0 = Struct_4(func_3(abs(-22323i), global3[_wgslsmith_index_u32(~(~u_input.a), 24u)], _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global2.b.x, -820f, 1000f))), ~(-2147483647i)) << (vec2<u32>(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(u_input.b, global2.a.a, global2.a.a)), ~vec3<u32>(26903u, u_input.b, u_input.b)), 1u ^ ~global2.a.a) % vec2<u32>(32u)));
    var var_1 = u_input.b;
    global2 = Struct_2(Struct_1(0u), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(-840f, global2.b.x, 1529f, global2.b.x), global2.b))), global2.b, true)))));
    var_0 = Struct_4(firstLeadingBit(-var_0.a));
    var var_2 = vec4<bool>(true, global3[_wgslsmith_index_u32(~(~(~global2.a.a)) ^ u_input.a, 24u)], false, false);
    return u_input.c;
}

fn func_1() -> Struct_1 {
    global3 = array<bool, 24>();
    let var_0 = max(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_add_i32(-u_input.c, func_2()), u_input.c, min(u_input.c | -18509i, u_input.c), reverseBits(_wgslsmith_div_i32(-33624i, -2147483647i))), vec4<i32>(u_input.c, 2147483647i, _wgslsmith_div_i32(firstTrailingBit(u_input.c), 6199i), abs(u_input.c))), firstTrailingBit(select(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 2147483647i, u_input.c, 16554i), vec4<i32>(22587i, -2147483647i, 2147483647i, -2147483647i)), -u_input.c, 1i, 0i), vec4<i32>(u_input.c, abs(2147483647i), ~u_input.c, u_input.c), vec4<bool>(global3[_wgslsmith_index_u32(reverseBits(u_input.b), 24u)], global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global2.a.a, global2.a.a, u_input.a), vec4<u32>(u_input.a, u_input.b, 0u, u_input.a)), 24u)], global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, 9244u), 24u)], global2.b.x == -1256f))));
    var var_1 = select(vec2<i32>(_wgslsmith_mult_i32(-2147483647i, 1i), _wgslsmith_dot_vec4_i32(var_0, _wgslsmith_sub_vec4_i32(~var_0, ~var_0))), ~var_0.zz, select(vec2<bool>(global3[_wgslsmith_index_u32(abs(4294967295u), 24u)], true), vec2<bool>(!global3[_wgslsmith_index_u32(21429u, 24u)], !all(vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 24u)], global3[_wgslsmith_index_u32(global2.a.a, 24u)], true))), !global3[_wgslsmith_index_u32(global2.a.a, 24u)]));
    var var_2 = global2.b.yz;
    let var_3 = 127f;
    return Struct_1(~0u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_2(func_1(), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b.x, -1000f, 205f, -184f)))));
    var var_0 = !(!select(vec4<bool>(true, true, all(vec3<bool>(global3[_wgslsmith_index_u32(49186u, 24u)], global3[_wgslsmith_index_u32(4294967295u, 24u)], global3[_wgslsmith_index_u32(u_input.a, 24u)])), true), vec4<bool>(all(vec4<bool>(global3[_wgslsmith_index_u32(u_input.b, 24u)], global3[_wgslsmith_index_u32(1307u, 24u)], global3[_wgslsmith_index_u32(0u, 24u)], false)), !global3[_wgslsmith_index_u32(0u, 24u)], global3[_wgslsmith_index_u32(32541u >> (1u % 32u), 24u)], true), select(select(vec4<bool>(false, global3[_wgslsmith_index_u32(81330u, 24u)], false, true), vec4<bool>(global3[_wgslsmith_index_u32(u_input.a, 24u)], global3[_wgslsmith_index_u32(3148u, 24u)], global3[_wgslsmith_index_u32(u_input.a, 24u)], false), vec4<bool>(global3[_wgslsmith_index_u32(43784u, 24u)], global3[_wgslsmith_index_u32(4294967295u, 24u)], false, global3[_wgslsmith_index_u32(global2.a.a, 24u)])), !vec4<bool>(global3[_wgslsmith_index_u32(global2.a.a, 24u)], global3[_wgslsmith_index_u32(4294967295u, 24u)], false, global3[_wgslsmith_index_u32(4294967295u, 24u)]), true)));
    global3 = array<bool, 24>();
    let var_1 = Struct_4(vec2<i32>(-4106i, abs(u_input.c)) << (~vec2<u32>(94858u, _wgslsmith_clamp_u32(u_input.a, global2.a.a, global2.a.a)) % vec2<u32>(32u)));
    global1 = array<Struct_5, 23>();
    let var_2 = vec4<u32>(4294967295u, ~reverseBits(firstLeadingBit(4294967295u >> (1u % 32u))), global2.a.a, abs(_wgslsmith_mod_u32(~u_input.b & (3494u & global2.a.a), 27232u)));
    var var_3 = global1[_wgslsmith_index_u32(1u, 23u)];
    let x = u_input.a;
    s_output = StorageBuffer(~((var_3.a.b ^ ~vec4<i32>(10022i, 2147483647i, -2778i, var_1.a.x)) << (~var_2 % vec4<u32>(32u))), var_2, vec4<u32>(140731u << (var_3.a.a.a.a % 32u), _wgslsmith_clamp_u32(global2.a.a, ~var_2.x, ~8176u), 1u, global2.a.a) & vec4<u32>(~(~global2.a.a), ~global2.a.a, 101704u, 1u));
}

