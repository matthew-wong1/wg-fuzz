struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<f32>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15> = array<bool, 15>(false, false, false, false, false, true, true, true, true, true, true, true, true, false, true);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: Struct_5, arg_1: f32) -> Struct_5 {
    global0 = array<bool, 15>();
    global0 = array<bool, 15>();
    var var_0 = _wgslsmith_f_op_f32(-2055f - _wgslsmith_f_op_f32(-738f * arg_1));
    global0 = array<bool, 15>();
    var var_1 = vec2<bool>(global0[_wgslsmith_index_u32(countOneBits(1u), 15u)], false);
    return arg_0;
}

fn func_3(arg_0: f32) -> u32 {
    global0 = array<bool, 15>();
    global0 = array<bool, 15>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(347f))), _wgslsmith_f_op_f32(f32(-1f) * -971f)))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(382f, arg_0, _wgslsmith_f_op_f32(floor(539f)), _wgslsmith_f_op_f32(sign(565f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1064f, 825f, -379f, arg_0))))), ~(~_wgslsmith_mod_u32(_wgslsmith_mult_u32(24179u, 1u), 1u)), vec3<i32>(-1i, -1i, -5040i), u_input.a.x, select(!(!vec2<bool>(global0[_wgslsmith_index_u32(42342u, 15u)], global0[_wgslsmith_index_u32(41596u, 15u)])), !vec2<bool>(true, 0i == u_input.a.x), all(select(vec2<bool>(true, true), !vec2<bool>(global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(1u, 15u)]), !vec2<bool>(global0[_wgslsmith_index_u32(0u, 15u)], true)))));
    let var_2 = func_2(Struct_5(firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.d, var_1.c.x) >> (vec2<u32>(10840u, 0u) % vec2<u32>(32u)), max(vec2<i32>(u_input.a.x, var_1.d), var_1.c.yz)))), arg_0);
    return var_1.b;
}

fn func_1() -> Struct_5 {
    var var_0 = 43220u;
    var var_1 = func_2(Struct_5(1i), -820f);
    global0 = array<bool, 15>();
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1082f, 1053f, 653f) * vec4<f32>(-1284f, 920f, 2928f, -1000f)), vec4<f32>(935f, 939f, -2266f, 104f)))), func_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-880f)), 283f))) ^ ~(~1u), u_input.a.zzy, -(_wgslsmith_div_i32(~u_input.a.x, firstTrailingBit(-24437i)) << (~2763u % 32u)), !(!select(!vec2<bool>(global0[_wgslsmith_index_u32(18289u, 15u)], false), !vec2<bool>(false, global0[_wgslsmith_index_u32(13614u, 15u)]), vec2<bool>(true, true))));
    var_0 = var_2.b;
    return Struct_5(-select(u_input.a.x, func_2(func_2(Struct_5(31537i), var_2.a.x), 798f).a, select(!global0[_wgslsmith_index_u32(14047u, 15u)], true, !var_2.e.x)));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_5, arg_2: Struct_2, arg_3: Struct_1) -> Struct_4 {
    let var_0 = arg_3.b;
    global0 = array<bool, 15>();
    var var_1 = false;
    var_1 = !(28821u != arg_3.b);
    let var_2 = ~vec4<u32>(arg_2.c.b, 0u, arg_2.c.b, arg_2.c.b);
    return Struct_4(Struct_2(any(!vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 15u)], false)), u_input.a, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(arg_2.d.a, vec4<f32>(2009f, 827f, arg_3.a.x, arg_2.c.a.x)))), var_2.x, _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, 19639i, arg_1.a), vec3<i32>(arg_3.d, arg_2.d.d, u_input.a.x)), arg_0, _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, arg_0.x, arg_0.x), arg_0)), arg_2.c.c.x ^ 2147483647i, !select(arg_2.c.e, arg_2.c.e, arg_2.c.e.x)), arg_3, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -802f), arg_2.e.x, arg_3.a.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_2.d.a - arg_3.a)))), arg_2.c.a));
}

fn func_5(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: f32, arg_3: bool) -> u32 {
    global0 = array<bool, 15>();
    var var_0 = arg_0.a.c;
    var var_1 = !(-7247i != abs(var_0.c.x));
    let var_2 = _wgslsmith_sub_vec3_u32(max(~vec3<u32>(var_0.b, _wgslsmith_div_u32(var_0.b, 0u), var_0.b >> (100879u % 32u)), vec3<u32>(~0u, 71546u, 54122u) | select(~vec3<u32>(arg_0.a.d.b, arg_0.a.c.b, var_0.b), vec3<u32>(var_0.b, 82901u, arg_0.a.d.b), false)), firstLeadingBit(~(~vec3<u32>(arg_0.a.d.b, 0u, 42820u) << (_wgslsmith_add_vec3_u32(vec3<u32>(var_0.b, var_0.b, 66612u), vec3<u32>(var_0.b, 1u, 19248u)) % vec3<u32>(32u)))));
    var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(sign(var_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - _wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.b.x)) + _wgslsmith_f_op_f32(-var_0.a.x)), 929f), _wgslsmith_dot_vec2_u32(var_2.yy, ~firstLeadingBit(var_2.xx)) << (_wgslsmith_dot_vec3_u32(var_2, var_2 & vec3<u32>(arg_0.a.c.b, 29537u, 4294967295u)) % 32u), ~(-vec3<i32>(u_input.a.x, ~(-1i), _wgslsmith_add_i32(arg_0.a.b.x, arg_0.a.d.c.x))), abs(-14795i), !var_0.e);
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~func_5(func_4(u_input.a.wwz, func_1(), Struct_2(global0[_wgslsmith_index_u32(67560u, 15u)], vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -32715i), Struct_1(vec4<f32>(-1413f, -1080f, -113f, 1852f), 0u, vec3<i32>(-14008i, 1i, u_input.a.x), u_input.a.x, vec2<bool>(global0[_wgslsmith_index_u32(13558u, 15u)], global0[_wgslsmith_index_u32(23546u, 15u)])), Struct_1(vec4<f32>(786f, -410f, -1000f, 1000f), 45296u, u_input.a.zyx, -2147483647i, vec2<bool>(false, global0[_wgslsmith_index_u32(71011u, 15u)])), vec3<f32>(-181f, 941f, 464f)), Struct_1(vec4<f32>(-1352f, -604f, -1000f, 776f), 4294967295u, vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i), -4838i, vec2<bool>(global0[_wgslsmith_index_u32(39349u, 15u)], global0[_wgslsmith_index_u32(9178u, 15u)]))), vec3<f32>(-467f, _wgslsmith_div_f32(-883f, -1000f), 1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-1459f - 1000f)), true));
    var var_1 = func_1();
    global0 = array<bool, 15>();
    global0 = array<bool, 15>();
    let var_2 = false;
    var var_3 = 1u;
    var var_4 = _wgslsmith_sub_u32(1u, func_4(-_wgslsmith_mod_vec3_i32(u_input.a.xxw, -u_input.a.ywy), Struct_5((var_1.a ^ 11698i) << (firstLeadingBit(var_0) % 32u)), Struct_2(var_2, ~func_4(vec3<i32>(u_input.a.x, -4104i, var_1.a), Struct_5(16401i), Struct_2(false, u_input.a, Struct_1(vec4<f32>(1696f, -2800f, 906f, 1292f), 0u, u_input.a.zyz, u_input.a.x, vec2<bool>(var_2, true)), Struct_1(vec4<f32>(-1620f, -354f, 1444f, -754f), var_0, vec3<i32>(u_input.a.x, 0i, var_1.a), var_1.a, vec2<bool>(var_2, false)), vec3<f32>(-1122f, -115f, -342f)), Struct_1(vec4<f32>(-1168f, -105f, 176f, 168f), var_0, u_input.a.xwz, u_input.a.x, vec2<bool>(var_2, true))).a.b, Struct_1(vec4<f32>(-1220f, 236f, -929f, 1038f), _wgslsmith_mod_u32(4294967295u, 84101u), u_input.a.xzz, 1i >> (1u % 32u), select(vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(var_0, 15u)], false), false)), func_4(abs(u_input.a.wyw), Struct_5(var_1.a), func_4(u_input.a.wxx, Struct_5(u_input.a.x), Struct_2(var_2, u_input.a, Struct_1(vec4<f32>(402f, -511f, -2090f, -922f), 0u, vec3<i32>(0i, u_input.a.x, var_1.a), var_1.a, vec2<bool>(true, false)), Struct_1(vec4<f32>(399f, 230f, -968f, -277f), 51157u, u_input.a.xyw, -2147483647i, vec2<bool>(var_2, var_2)), vec3<f32>(109f, -664f, -909f)), Struct_1(vec4<f32>(-1000f, -319f, 412f, -901f), 1872u, vec3<i32>(u_input.a.x, u_input.a.x, var_1.a), u_input.a.x, vec2<bool>(false, true))).a, func_4(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), Struct_5(u_input.a.x), Struct_2(false, u_input.a, Struct_1(vec4<f32>(681f, 272f, 1000f, 1214f), 0u, u_input.a.zyx, -1i, vec2<bool>(var_2, false)), Struct_1(vec4<f32>(-292f, -112f, 756f, -655f), var_0, vec3<i32>(u_input.a.x, u_input.a.x, 0i), u_input.a.x, vec2<bool>(true, global0[_wgslsmith_index_u32(13395u, 15u)])), vec3<f32>(358f, -1493f, -518f)), Struct_1(vec4<f32>(1000f, 119f, -1608f, 1232f), var_0, vec3<i32>(var_1.a, 2338i, u_input.a.x), -44291i, vec2<bool>(false, true))).a.c).a.d, vec3<f32>(_wgslsmith_f_op_f32(-790f - 1047f), _wgslsmith_f_op_f32(554f + 1118f), -1464f)), func_4(countOneBits(abs(u_input.a.zyz)), func_2(func_1(), _wgslsmith_f_op_f32(max(-176f, 984f))), Struct_2(true, vec4<i32>(u_input.a.x, u_input.a.x, -12569i, var_1.a), func_4(u_input.a.xww, Struct_5(0i), Struct_2(global0[_wgslsmith_index_u32(var_0, 15u)], u_input.a, Struct_1(vec4<f32>(404f, 1373f, 2303f, 1000f), var_0, u_input.a.wzy, 32710i, vec2<bool>(var_2, true)), Struct_1(vec4<f32>(935f, -424f, -1238f, 651f), var_0, u_input.a.wyx, u_input.a.x, vec2<bool>(true, global0[_wgslsmith_index_u32(var_0, 15u)])), vec3<f32>(1245f, -818f, 1528f)), Struct_1(vec4<f32>(-618f, -1844f, 505f, 530f), 0u, u_input.a.yxz, var_1.a, vec2<bool>(var_2, global0[_wgslsmith_index_u32(var_0, 15u)]))).a.d, Struct_1(vec4<f32>(-698f, -724f, -870f, 390f), 31868u, vec3<i32>(-1293i, -22868i, -1i), u_input.a.x, vec2<bool>(false, false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-171f, 355f, 135f))), func_4(vec3<i32>(u_input.a.x, u_input.a.x, -15005i), func_2(Struct_5(-2147483647i), -184f), func_4(vec3<i32>(-15665i, 0i, u_input.a.x), Struct_5(-2147483647i), Struct_2(true, u_input.a, Struct_1(vec4<f32>(-2696f, -438f, 597f, 2627f), var_0, u_input.a.zyy, u_input.a.x, vec2<bool>(true, var_2)), Struct_1(vec4<f32>(548f, 326f, 393f, 771f), var_0, vec3<i32>(-36975i, var_1.a, -2147483647i), u_input.a.x, vec2<bool>(var_2, global0[_wgslsmith_index_u32(1u, 15u)])), vec3<f32>(805f, -669f, 850f)), Struct_1(vec4<f32>(-1350f, 1238f, 785f, 1000f), 77952u, u_input.a.wwx, var_1.a, vec2<bool>(false, global0[_wgslsmith_index_u32(5914u, 15u)]))).a, func_4(vec3<i32>(83559i, 4598i, var_1.a), Struct_5(0i), Struct_2(true, vec4<i32>(-2147483647i, var_1.a, -33538i, 2147483647i), Struct_1(vec4<f32>(2176f, 383f, -180f, 1517f), 57269u, u_input.a.yyy, 2054i, vec2<bool>(var_2, true)), Struct_1(vec4<f32>(-1455f, 900f, 688f, -1307f), 1u, u_input.a.zzy, u_input.a.x, vec2<bool>(false, false)), vec3<f32>(1008f, 1000f, 339f)), Struct_1(vec4<f32>(-721f, 1399f, -292f, -1403f), 9738u, u_input.a.zzy, u_input.a.x, vec2<bool>(var_2, global0[_wgslsmith_index_u32(1u, 15u)]))).a.c).a.d).a.d).a.c.b);
    var var_5 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(_wgslsmith_clamp_u32(25263u, 1u, 96742u) | (36932u >> (1u % 32u)), var_0 ^ ~0u, ~_wgslsmith_mult_u32(23256u, var_0), min(func_5(Struct_4(Struct_2(true, vec4<i32>(-13906i, u_input.a.x, 2147483647i, u_input.a.x), Struct_1(vec4<f32>(364f, 299f, -807f, -285f), 0u, vec3<i32>(u_input.a.x, u_input.a.x, 20687i), 23029i, vec2<bool>(global0[_wgslsmith_index_u32(23326u, 15u)], global0[_wgslsmith_index_u32(40526u, 15u)])), Struct_1(vec4<f32>(-510f, -871f, 912f, 382f), var_0, u_input.a.ywx, u_input.a.x, vec2<bool>(var_2, true)), vec3<f32>(-389f, 2148f, -414f)), vec4<f32>(-176f, -723f, -1060f, -1230f)), vec3<f32>(-642f, -156f, -1114f), 103f, true), 25103u)), ~(~var_0), ~u_input.a.zy, 0u);
}

