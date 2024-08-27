struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec4<i32>,
    d: vec3<bool>,
    e: vec2<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec4<f32>, 26> = array<vec4<f32>, 26>(vec4<f32>(1776f, 1000f, 1301f, -820f), vec4<f32>(-174f, 1189f, 1498f, -653f), vec4<f32>(319f, -1215f, -1323f, 1231f), vec4<f32>(-234f, -1000f, 1320f, 410f), vec4<f32>(-1297f, -2935f, -1891f, -748f), vec4<f32>(633f, 1027f, 861f, -867f), vec4<f32>(636f, 940f, -646f, 298f), vec4<f32>(187f, 489f, -254f, -1006f), vec4<f32>(2648f, -580f, 386f, 284f), vec4<f32>(693f, 106f, 590f, -472f), vec4<f32>(469f, -275f, -877f, 1000f), vec4<f32>(-1848f, 410f, -1174f, 268f), vec4<f32>(154f, 308f, -1494f, -715f), vec4<f32>(1281f, 1852f, 346f, -833f), vec4<f32>(-377f, 125f, 1882f, 185f), vec4<f32>(-1758f, -537f, -1892f, 792f), vec4<f32>(-541f, -542f, 1453f, 1114f), vec4<f32>(1000f, -2047f, 355f, 1409f), vec4<f32>(173f, 1212f, 809f, -596f), vec4<f32>(529f, -556f, 433f, 116f), vec4<f32>(1000f, -490f, -1000f, 707f), vec4<f32>(-122f, -252f, -1000f, 1052f), vec4<f32>(-399f, 976f, 1000f, 567f), vec4<f32>(1000f, -645f, 416f, 622f), vec4<f32>(-599f, -419f, 269f, 898f), vec4<f32>(1893f, 131f, 361f, -474f));

var<private> global2: array<f32, 30> = array<f32, 30>(-421f, -335f, -1489f, -296f, -1242f, -605f, -258f, -324f, 308f, 726f, -1244f, 144f, 755f, -467f, 2271f, -547f, 2193f, 1125f, -1627f, 804f, -937f, 735f, -660f, -358f, 325f, -1244f, -413f, -1852f, 284f, 790f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2() -> Struct_2 {
    return Struct_2(vec2<bool>(true, any(vec2<bool>(false, false)) == true), true);
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: i32, arg_3: u32) -> Struct_2 {
    global2 = array<f32, 30>();
    let var_0 = arg_3;
    let var_1 = countOneBits(reverseBits(var_0));
    global1 = array<vec4<f32>, 26>();
    global2 = array<f32, 30>();
    return func_2();
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_3) -> vec3<i32> {
    let var_0 = Struct_3(!(!(!arg_0.x)) | any(!select(vec3<bool>(false, true, arg_0.x), arg_3.d, arg_3.d)), arg_2, min(-arg_3.c, vec4<i32>(arg_3.b.d, -2147483647i, arg_2.c, -29432i) << (vec4<u32>(~u_input.b, u_input.b << (1u % 32u), 11321u, 1u ^ u_input.b) % vec4<u32>(32u))), !arg_3.d, ~(arg_3.e << (_wgslsmith_div_vec2_u32(vec2<u32>(arg_1.x, arg_1.x), abs(vec2<u32>(arg_3.e.x, u_input.b))) % vec2<u32>(32u))));
    let var_1 = true;
    var var_2 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.b.a, global2[_wgslsmith_index_u32(0u, 30u)], -177f) * vec3<f32>(712f, arg_2.a, -394f)) - vec3<f32>(1873f, arg_3.b.a, 409f))))), func_2(), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2080f * _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_0.e.x, 30u)]))), var_0.b.b, _wgslsmith_div_i32(reverseBits(~u_input.c), arg_3.b.b.x), arg_2.b.x));
    let var_3 = Struct_3(func_2().a.x, Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.b.a), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(arg_1.x, 30u)] - global2[_wgslsmith_index_u32(u_input.b, 30u)])))), var_0.b.b, -_wgslsmith_clamp_i32(~(-41293i), -u_input.a.x, var_2.c.c), u_input.a.x), var_0.c & arg_3.c, vec3<bool>(arg_3.d.x, !any(!vec3<bool>(var_1, true, arg_0.x)), var_0.b.c == _wgslsmith_div_i32(~arg_2.d, _wgslsmith_clamp_i32(var_0.b.c, arg_2.b.x, arg_2.d))), vec2<u32>(1u, 40108u) << (var_0.e % vec2<u32>(32u)));
    global2 = array<f32, 30>();
    return abs(_wgslsmith_add_vec3_i32(var_0.c.xwy, -(~var_0.c.xxw)));
}

fn func_4(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_1) -> i32 {
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(!all(vec3<bool>(true, true, true)), -(_wgslsmith_mod_i32(-1i, u_input.a.x | 0i) | _wgslsmith_sub_i32(max(u_input.c, u_input.c), ~u_input.a.x)), _wgslsmith_div_i32(-9415i, 15842i), _wgslsmith_dot_vec2_u32(~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, 1u)), 29969u), vec2<u32>(u_input.b, _wgslsmith_sub_u32(~u_input.b, u_input.b))));
    var var_1 = Struct_1(-846f, ~u_input.a, u_input.a.x, reverseBits(_wgslsmith_clamp_i32(~(-1i), ~(1i ^ u_input.a.x), _wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.a.x, u_input.c), _wgslsmith_mod_i32(-1i, u_input.c)))));
    global2 = array<f32, 30>();
    var var_2 = vec4<u32>(_wgslsmith_mult_u32(u_input.b, u_input.b), u_input.b, countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(u_input.b, 4294967295u))) >> (12u % 32u), u_input.b) | vec4<u32>(0u, (u_input.b & _wgslsmith_add_u32(19498u, u_input.b)) << (~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b, 0u), vec3<u32>(4294967295u, u_input.b, 12910u)) % 32u), _wgslsmith_div_u32(u_input.b, 31853u), 4294967295u);
    var_1 = Struct_1(var_1.a, u_input.a, var_1.b.x, func_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f * var_1.a))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(101876u, 26u)] + vec4<f32>(-475f, -437f, global2[_wgslsmith_index_u32(var_2.x, 30u)], 1503f)) * _wgslsmith_f_op_vec4_f32(select(global1[_wgslsmith_index_u32(u_input.b, 26u)], global1[_wgslsmith_index_u32(17371u, 26u)], vec4<bool>(var_0.b, var_0.a.x, var_0.a.x, true)))))), Struct_1(global2[_wgslsmith_index_u32(~u_input.b, 30u)], vec2<i32>(0i, ~40922i), _wgslsmith_dot_vec3_i32(func_3(var_0.a, vec3<u32>(86681u, 0u, 114987u), Struct_1(var_1.a, var_1.b, -11774i, var_1.d), Struct_3(var_0.a.x, Struct_1(2092f, vec2<i32>(u_input.c, u_input.c), 1i, 4114i), vec4<i32>(41309i, var_1.c, u_input.a.x, var_1.d), vec3<bool>(false, true, var_0.a.x), var_2.wz)), abs(vec3<i32>(-2147483647i, var_1.d, var_1.b.x))), _wgslsmith_sub_i32(~22640i, 1i))));
    global2 = array<f32, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(-23471i, var_1.c, ~var_2.wzy, (_wgslsmith_mult_vec4_u32(~vec4<u32>(var_2.x, 4294967295u, u_input.b, 4294967295u), ~vec4<u32>(0u, 73687u, u_input.b, var_2.x)) << (vec4<u32>(~1u, u_input.b, var_2.x << (1818u % 32u), ~u_input.b) % vec4<u32>(32u))) << (vec4<u32>(~firstLeadingBit(var_2.x), 0u, 1u, firstLeadingBit(0u)) % vec4<u32>(32u)));
}

