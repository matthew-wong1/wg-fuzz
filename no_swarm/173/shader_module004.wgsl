struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: vec2<f32>,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec3<f32>(242f, 664f, 949f), 0u, -1618f, vec2<f32>(1086f, 669f), false), Struct_1(vec3<f32>(130f, -813f, 264f), 4294967295u, -1702f, vec2<f32>(-925f, -524f), false), Struct_1(vec3<f32>(715f, 775f, -649f), 0u, -990f, vec2<f32>(-1154f, -1257f), true), Struct_1(vec3<f32>(1000f, -1000f, 1435f), 45685u, 560f, vec2<f32>(193f, -744f), false), Struct_1(vec3<f32>(-1632f, 1272f, 571f), 80241u, -1404f, vec2<f32>(601f, -1794f), true), Struct_1(vec3<f32>(2378f, -153f, -151f), 13333u, 820f, vec2<f32>(-860f, 440f), false), Struct_1(vec3<f32>(-1032f, 836f, -252f), 86443u, 2874f, vec2<f32>(-1037f, -677f), false), Struct_1(vec3<f32>(1000f, 1801f, 1837f), 6282u, -496f, vec2<f32>(-338f, 1000f), true), Struct_1(vec3<f32>(505f, -620f, 1000f), 1u, 1084f, vec2<f32>(1564f, -1000f), true), Struct_1(vec3<f32>(859f, 1000f, 225f), 1u, 526f, vec2<f32>(742f, 1761f), false), Struct_1(vec3<f32>(761f, -712f, -335f), 36337u, 234f, vec2<f32>(898f, 1257f), false), Struct_1(vec3<f32>(-1312f, 1264f, 180f), 86500u, -800f, vec2<f32>(1396f, -1731f), false), Struct_1(vec3<f32>(-1686f, -2186f, -1996f), 1u, 1310f, vec2<f32>(202f, -453f), true), Struct_1(vec3<f32>(1798f, 1828f, -216f), 22368u, -1018f, vec2<f32>(-1226f, -197f), false), Struct_1(vec3<f32>(-1448f, -223f, 1000f), 19468u, 223f, vec2<f32>(1456f, -1695f), true), Struct_1(vec3<f32>(114f, -969f, 1270f), 0u, 418f, vec2<f32>(750f, -400f), true), Struct_1(vec3<f32>(2127f, 591f, 391f), 4294967295u, 1000f, vec2<f32>(2453f, 525f), false), Struct_1(vec3<f32>(239f, 743f, -1017f), 1u, 1108f, vec2<f32>(-1869f, 1977f), true), Struct_1(vec3<f32>(1923f, -1557f, -1901f), 21838u, -971f, vec2<f32>(-2213f, -219f), false), Struct_1(vec3<f32>(454f, -1000f, 459f), 17727u, 574f, vec2<f32>(1705f, -1165f), false), Struct_1(vec3<f32>(1328f, -1865f, -497f), 0u, -205f, vec2<f32>(160f, 255f), false), Struct_1(vec3<f32>(1460f, 200f, 561f), 4294967295u, 1876f, vec2<f32>(971f, -1570f), true), Struct_1(vec3<f32>(1828f, 1342f, 189f), 1u, -658f, vec2<f32>(-571f, 1640f), false), Struct_1(vec3<f32>(-501f, 1920f, -582f), 28178u, 901f, vec2<f32>(615f, 659f), true), Struct_1(vec3<f32>(302f, 430f, -1264f), 4294967295u, -466f, vec2<f32>(-232f, 1700f), true), Struct_1(vec3<f32>(-1220f, -122f, 997f), 32954u, 1514f, vec2<f32>(-332f, 284f), false), Struct_1(vec3<f32>(922f, 1014f, 777f), 1u, -1992f, vec2<f32>(569f, -319f), false), Struct_1(vec3<f32>(1150f, 1261f, 171f), 28746u, -579f, vec2<f32>(-155f, 107f), true), Struct_1(vec3<f32>(-2361f, 1000f, 276f), 0u, 1599f, vec2<f32>(222f, 215f), false), Struct_1(vec3<f32>(1301f, -1240f, -684f), 4294967295u, 869f, vec2<f32>(1000f, -1891f), false));

var<private> global2: i32 = -9143i;

var<private> global3: array<vec3<bool>, 10>;

var<private> global4: vec4<i32> = vec4<i32>(18488i, 2147483647i, 1i, -14403i);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1() -> Struct_1 {
    var var_0 = global0.d;
    var var_1 = _wgslsmith_f_op_f32(exp2(global0.a.x));
    return global1[_wgslsmith_index_u32(1u, 30u)];
}

fn func_3(arg_0: f32, arg_1: vec2<bool>, arg_2: vec2<f32>) -> i32 {
    global2 = global4.x;
    global3 = array<vec3<bool>, 10>();
    global1 = array<Struct_1, 30>();
    var var_0 = u_input.a.yx;
    let var_1 = func_1();
    return global4.x;
}

fn func_2() -> StorageBuffer {
    global1 = array<Struct_1, 30>();
    var var_0 = reverseBits(~u_input.a);
    let var_1 = global1[_wgslsmith_index_u32(5031u, 30u)];
    var var_2 = _wgslsmith_mod_vec3_u32(vec3<u32>(min(1u, 50469u), 1u, global0.b), vec3<u32>(_wgslsmith_mult_u32(max(71957u, ~u_input.b), ~var_1.b), global0.b, 4294967295u));
    global4 = vec4<i32>(global4.x, firstLeadingBit(~_wgslsmith_mult_i32(1i, global4.x)), global4.x, func_3(var_1.c, !select(vec2<bool>(false, global0.e), vec2<bool>(false, false), var_1.e), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.d.x, var_1.d.x), vec2<f32>(1246f, -1000f)) * _wgslsmith_f_op_vec2_f32(abs(var_1.a.zx))))) | vec4<i32>(abs(global4.x) | global4.x, global4.x >> ((firstTrailingBit(0u) >> (0u % 32u)) % 32u), i32(-1i) * -(i32(-1i) * -19216i), -8541i & ~global4.x);
    return StorageBuffer(abs(var_1.b) ^ 6305u, vec2<i32>(~global4.x, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(global4.x, -16431i, 1i), global4.x)), reverseBits(abs(global4.x)), vec4<u32>(_wgslsmith_mult_u32(4294967295u << (firstTrailingBit(u_input.a.x) % 32u), ~(~var_1.b)), _wgslsmith_sub_u32(abs(var_1.b), ~(1u & var_1.b)), 1u, var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 20780i;
    var var_1 = func_1();
    let var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(min(720f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)))), _wgslsmith_f_op_f32(var_1.d.x * _wgslsmith_div_f32(var_1.d.x, -829f)), -699f), global0.b, 1000f, _wgslsmith_f_op_vec2_f32(-var_1.a.zx), true && (_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.a.x), 750f)) < _wgslsmith_f_op_f32(var_1.d.x * 1000f)));
    global2 = ~(~global4.x);
    var var_3 = !(-1i > global4.x);
    let x = u_input.a;
    s_output = func_2();
}

