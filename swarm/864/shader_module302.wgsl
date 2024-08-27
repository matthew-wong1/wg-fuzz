struct Struct_1 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: u32,
    d: bool,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
    c: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<bool>,
    c: vec3<f32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: Struct_4,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 23> = array<Struct_4, 23>(Struct_4(Struct_3(1i, vec4<f32>(-914f, 352f, -683f, -1459f), true), vec4<bool>(false, true, false, true), vec3<f32>(-753f, -470f, -986f)), Struct_4(Struct_3(13115i, vec4<f32>(-1361f, 562f, -1045f, -238f), true), vec4<bool>(false, false, true, false), vec3<f32>(480f, -1000f, 1459f)), Struct_4(Struct_3(2147483647i, vec4<f32>(-1030f, -1547f, -1290f, -716f), true), vec4<bool>(true, false, false, false), vec3<f32>(-879f, 1227f, 1015f)), Struct_4(Struct_3(0i, vec4<f32>(-1418f, 1010f, -333f, 586f), true), vec4<bool>(false, false, true, false), vec3<f32>(567f, 1000f, 2190f)), Struct_4(Struct_3(-24593i, vec4<f32>(-1956f, 1039f, -134f, -1356f), true), vec4<bool>(true, true, false, true), vec3<f32>(346f, 833f, 668f)), Struct_4(Struct_3(2147483647i, vec4<f32>(-126f, -475f, 1000f, 441f), false), vec4<bool>(true, true, true, true), vec3<f32>(-1048f, 1402f, 1260f)), Struct_4(Struct_3(-44475i, vec4<f32>(399f, 1000f, 1278f, -112f), false), vec4<bool>(true, false, true, true), vec3<f32>(312f, 805f, 344f)), Struct_4(Struct_3(84873i, vec4<f32>(-2906f, 286f, 899f, -128f), false), vec4<bool>(false, true, false, true), vec3<f32>(1000f, -608f, -650f)), Struct_4(Struct_3(14083i, vec4<f32>(-152f, 1000f, -361f, 549f), false), vec4<bool>(false, true, true, false), vec3<f32>(1176f, -1358f, 623f)), Struct_4(Struct_3(34652i, vec4<f32>(-1000f, -1042f, -127f, -609f), true), vec4<bool>(false, true, false, true), vec3<f32>(704f, -912f, -600f)), Struct_4(Struct_3(i32(-2147483648), vec4<f32>(-981f, 281f, -1011f, -1000f), false), vec4<bool>(true, false, false, false), vec3<f32>(135f, 682f, -671f)), Struct_4(Struct_3(-5379i, vec4<f32>(518f, 1242f, 1402f, 466f), true), vec4<bool>(true, false, true, false), vec3<f32>(857f, 1675f, 1603f)), Struct_4(Struct_3(8935i, vec4<f32>(-414f, -888f, -1155f, 591f), false), vec4<bool>(false, false, true, true), vec3<f32>(-128f, -1000f, 681f)), Struct_4(Struct_3(-7105i, vec4<f32>(542f, 1926f, 1248f, 546f), false), vec4<bool>(false, false, false, true), vec3<f32>(798f, 781f, -1598f)), Struct_4(Struct_3(0i, vec4<f32>(-337f, 1138f, 377f, 349f), false), vec4<bool>(false, false, false, true), vec3<f32>(2568f, -1768f, 1830f)), Struct_4(Struct_3(-1i, vec4<f32>(-1024f, -431f, -1242f, 413f), true), vec4<bool>(true, true, false, false), vec3<f32>(-1506f, -252f, 286f)), Struct_4(Struct_3(2147483647i, vec4<f32>(1414f, 1169f, 218f, 705f), false), vec4<bool>(false, true, false, true), vec3<f32>(1199f, -208f, 1424f)), Struct_4(Struct_3(-25035i, vec4<f32>(753f, -1000f, 916f, 962f), true), vec4<bool>(true, false, true, false), vec3<f32>(860f, -136f, -476f)), Struct_4(Struct_3(-1i, vec4<f32>(-1170f, -170f, 151f, -220f), false), vec4<bool>(false, false, true, false), vec3<f32>(164f, 587f, -162f)), Struct_4(Struct_3(-1i, vec4<f32>(-2827f, 694f, -1158f, 406f), false), vec4<bool>(false, true, true, true), vec3<f32>(405f, 712f, 509f)), Struct_4(Struct_3(25685i, vec4<f32>(-772f, 1257f, 1141f, -182f), false), vec4<bool>(true, false, true, false), vec3<f32>(256f, 469f, 196f)), Struct_4(Struct_3(-66243i, vec4<f32>(657f, 109f, -1656f, 114f), false), vec4<bool>(false, true, true, false), vec3<f32>(-814f, -1044f, -1460f)), Struct_4(Struct_3(2147483647i, vec4<f32>(757f, 1504f, -649f, -124f), true), vec4<bool>(true, false, true, false), vec3<f32>(-1537f, -720f, -434f)));

var<private> global1: bool = false;

var<private> global2: Struct_5 = Struct_5(vec3<f32>(1107f, -847f, -1881f), vec4<f32>(-1498f, -222f, -138f, -524f), Struct_4(Struct_3(0i, vec4<f32>(1762f, -634f, 169f, -655f), true), vec4<bool>(false, true, true, true), vec3<f32>(-1833f, 175f, -1514f)), vec4<bool>(false, false, false, false));

var<private> global3: array<Struct_2, 7>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_5, arg_1: bool) -> vec4<u32> {
    global0 = array<Struct_4, 23>();
    let var_0 = arg_0.a.x;
    let var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.b.zz) + _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0, global2.c.a.b.x), arg_0.c.c.zy), vec2<f32>(-1433f, arg_0.c.c.x))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b.x * _wgslsmith_f_op_f32(f32(-1f) * -338f)));
    var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0 * var_0)));
    return reverseBits(vec4<u32>(40949u, u_input.c.x, 33716u, ~1328u) >> (abs(~(vec4<u32>(1u, 32127u, u_input.c.x, 15548u) << (vec4<u32>(44450u, u_input.d, 1u, u_input.b) % vec4<u32>(32u)))) % vec4<u32>(32u)));
}

fn func_2(arg_0: Struct_4) -> vec4<u32> {
    global3 = array<Struct_2, 7>();
    let var_0 = _wgslsmith_clamp_vec4_i32(-abs(vec4<i32>(global2.c.a.a, arg_0.a.a, 2147483647i, global2.c.a.a)), vec4<i32>(0i, ~global2.c.a.a, 31546i, arg_0.a.a) << (func_3(Struct_5(vec3<f32>(574f, global2.c.c.x, arg_0.a.b.x), vec4<f32>(459f, -1056f, -848f, 1857f), Struct_4(global2.c.a, arg_0.b, global2.a), vec4<bool>(true, arg_0.a.c, arg_0.b.x, arg_0.b.x)), 2147483647i > arg_0.a.a) % vec4<u32>(32u)), ~(_wgslsmith_div_vec4_i32(vec4<i32>(19982i, u_input.a, 413i, arg_0.a.a), vec4<i32>(-1i, -12854i, 2147483647i, arg_0.a.a)) << (max(vec4<u32>(u_input.d, 35893u, u_input.c.x, u_input.c.x), vec4<u32>(15627u, 31917u, u_input.b, 1u)) % vec4<u32>(32u)))) << (vec4<u32>(37486u, ~(u_input.d | func_3(Struct_5(global2.b.xwy, vec4<f32>(-328f, 452f, global2.a.x, arg_0.c.x), Struct_4(Struct_3(27677i, vec4<f32>(arg_0.c.x, -1329f, global2.c.c.x, global2.a.x), global2.d.x), vec4<bool>(global2.d.x, arg_0.a.c, true, false), vec3<f32>(-352f, arg_0.c.x, arg_0.c.x)), vec4<bool>(arg_0.a.c, arg_0.b.x, true, arg_0.a.c)), arg_0.a.c).x), firstLeadingBit(~6200u), u_input.b | abs(u_input.d)) % vec4<u32>(32u));
    global2 = Struct_5(global2.c.a.b.xzw, _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.x, arg_0.c.x, -1795f, -1234f) - _wgslsmith_f_op_vec4_f32(arg_0.a.b - arg_0.a.b)), arg_0, vec4<bool>(global2.c.b.x, select(any(select(vec4<bool>(global2.c.b.x, false, false, false), vec4<bool>(global2.d.x, arg_0.b.x, false, false), vec4<bool>(false, global2.d.x, true, arg_0.b.x))), false, all(arg_0.b.wzx)), true, arg_0.b.x));
    global1 = all(select(!select(vec3<bool>(global2.d.x, global2.d.x, true), vec3<bool>(true, true, true), !arg_0.b.xxw), !(!(!global2.d.zxz)), !arg_0.b.wyw));
    global1 = any(select(!(!select(vec4<bool>(false, arg_0.b.x, arg_0.a.c, arg_0.b.x), arg_0.b, vec4<bool>(false, false, arg_0.a.c, true))), select(vec4<bool>(select(arg_0.a.c, global2.d.x, global2.c.b.x), global2.d.x, arg_0.b.x, true), !(!vec4<bool>(global2.d.x, false, true, global2.d.x)), !all(vec3<bool>(arg_0.a.c, false, global2.d.x))), !global2.c.b.x));
    return vec4<u32>(u_input.d, _wgslsmith_mult_u32(max(u_input.c.x << (23520u % 32u), _wgslsmith_mod_u32(1u, 4294967295u)) << (4294967295u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.b, u_input.c.x, u_input.c.x) << (vec4<u32>(u_input.b, 0u, 0u, 1u) % vec4<u32>(32u)), vec4<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 43362u, 14226u, 36169u), vec4<u32>(5553u, 65663u, u_input.d, 19875u)), _wgslsmith_mult_u32(1u, u_input.b), u_input.d))), min(~abs(u_input.b), 7580u), 21794u);
}

fn func_1() -> vec4<u32> {
    var var_0 = !select(global2.d.wy, select(vec2<bool>(4294967295u <= u_input.b, select(true, true, true)), select(!global2.d.yw, vec2<bool>(global2.d.x, global2.d.x), true), !select(global2.d.yx, global2.c.b.zy, false)), false);
    global0 = array<Struct_4, 23>();
    return _wgslsmith_div_vec4_u32(~vec4<u32>(7455u, u_input.c.x, 41744u, 1u), func_2(global0[_wgslsmith_index_u32(0u, 23u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = ~(~(-2147483647i));
    var var_2 = vec3<u32>(_wgslsmith_div_u32(~_wgslsmith_clamp_u32(select(var_0.x, u_input.c.x, false), abs(0u), func_1().x), 4626u), _wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.b, _wgslsmith_dot_vec2_u32(min(vec2<u32>(0u, 78005u), var_0.wz), u_input.c.zx)), 37604u), _wgslsmith_mult_u32(~(~var_0.x >> (0u % 32u)), 4294967295u));
    let var_3 = Struct_1(reverseBits(72003u), (vec3<i32>(u_input.a, var_1, ~var_1) >> (~(vec3<u32>(var_0.x, 32031u, 0u) >> (vec3<u32>(0u, var_2.x, 1u) % vec3<u32>(32u))) % vec3<u32>(32u))) & _wgslsmith_add_vec3_i32(abs(vec3<i32>(-1i, -14425i, 32880i)), _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, var_1, -1i), vec3<i32>(-1i, 4035i, 6056i)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, var_1, var_1), vec3<i32>(u_input.a, u_input.a, 1i)))));
    var var_4 = Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.b.wxz) - global2.b.zww), vec4<f32>(-728f, _wgslsmith_f_op_f32(1950f * 1732f), _wgslsmith_f_op_f32(global2.a.x + _wgslsmith_f_op_f32(531f + _wgslsmith_f_op_f32(-192f * 527f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.c.c.x)))), global2.c, !(!vec4<bool>(true, all(vec3<bool>(true, true, global2.d.x)), false, global2.d.x && global2.c.a.c)));
    let x = u_input.a;
    s_output = StorageBuffer(17678i);
}

