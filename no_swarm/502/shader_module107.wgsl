struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec3<u32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<i32>(1i, -41591i, 23941i), Struct_1(false, vec4<u32>(1u, 1u, 72216u, 0u), true), vec3<u32>(75486u, 1u, 4294967295u), vec3<f32>(1895f, 422f, -1047f));

var<private> global1: array<vec2<u32>, 26>;

var<private> global2: bool;

var<private> global3: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(vec3<i32>(20522i, 1i, i32(-2147483648)), Struct_1(false, vec4<u32>(1u, 4294967295u, 17668u, 51630u), false), vec3<u32>(53331u, 4294967295u, 40062u), vec3<f32>(-1050f, -662f, 1482f)), Struct_2(vec3<i32>(-40312i, -1i, 2147483647i), Struct_1(false, vec4<u32>(37192u, 0u, 1u, 51488u), false), vec3<u32>(35494u, 82504u, 23428u), vec3<f32>(362f, -354f, 1738f)), Struct_2(vec3<i32>(-17765i, 1i, i32(-2147483648)), Struct_1(true, vec4<u32>(21341u, 0u, 66435u, 0u), false), vec3<u32>(0u, 4294967295u, 0u), vec3<f32>(-1000f, -105f, 439f)), Struct_2(vec3<i32>(-21392i, 13901i, -1i), Struct_1(true, vec4<u32>(0u, 0u, 66589u, 177u), true), vec3<u32>(54466u, 136985u, 22077u), vec3<f32>(378f, 136f, -2319f)), Struct_2(vec3<i32>(-2485i, i32(-2147483648), 37020i), Struct_1(false, vec4<u32>(11290u, 28403u, 29860u, 0u), false), vec3<u32>(68202u, 56951u, 1120u), vec3<f32>(1000f, 1863f, 1344f)), Struct_2(vec3<i32>(-46617i, 6271i, 16139i), Struct_1(true, vec4<u32>(9466u, 42339u, 1u, 276u), false), vec3<u32>(58739u, 91074u, 80241u), vec3<f32>(-1050f, -207f, 552f)), Struct_2(vec3<i32>(-1i, 2147483647i, 1i), Struct_1(false, vec4<u32>(4294967295u, 49259u, 1u, 30383u), false), vec3<u32>(1u, 0u, 0u), vec3<f32>(799f, -983f, 1140f)), Struct_2(vec3<i32>(0i, 1i, i32(-2147483648)), Struct_1(false, vec4<u32>(105680u, 1u, 73990u, 1933u), false), vec3<u32>(55584u, 68396u, 58651u), vec3<f32>(-1053f, -853f, -1000f)));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2() -> u32 {
    var var_0 = global0.b.c;
    global3 = array<Struct_2, 8>();
    global3 = array<Struct_2, 8>();
    let var_1 = any(vec3<bool>(global0.b.a, !global0.b.c, false));
    var var_2 = Struct_2(countOneBits(firstLeadingBit(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.d, -2147483647i, u_input.b.x), vec3<i32>(u_input.d, 0i, -16864i)), ~vec3<i32>(u_input.d, 21088i, global0.a.x)))), global0.b, abs(global0.b.b.yxw), global0.d);
    return ~73815u;
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = global0.d.x;
    var var_1 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_2(), ~(~global0.b.b.x)), 8u)];
    let var_2 = _wgslsmith_f_op_vec2_f32(-var_1.d.yz);
    var var_3 = global0.b;
    global1 = array<vec2<u32>, 26>();
    return global0.b;
}

fn func_3() -> vec4<u32> {
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, min(~_wgslsmith_clamp_u32(4294967295u, u_input.c, abs(47795u)), min(_wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(~31144u, 26u)], _wgslsmith_clamp_vec2_u32(global1[_wgslsmith_index_u32(36992u, 26u)], global1[_wgslsmith_index_u32(global0.b.b.x, 26u)], vec2<u32>(global0.b.b.x, 3730u))), firstLeadingBit(_wgslsmith_mult_u32(u_input.c, global0.c.x))))), 8u)];
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1000f)), -258f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.x))))));
    global3 = array<Struct_2, 8>();
    var var_2 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -679f)), -1110f)));
    global3 = array<Struct_2, 8>();
    return var_0.b.b;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec4<u32>, arg_3: i32) -> bool {
    let var_0 = -1302f;
    return !global0.b.c;
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_mod_vec3_i32(vec3<i32>(global0.a.x, _wgslsmith_mult_i32(-20549i, 18958i), u_input.d), -u_input.b.wyx), Struct_1(arg_2.x, vec4<u32>(global0.c.x, ~firstTrailingBit(u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.b.x, 1u, global0.c.x, arg_1.b.x), global0.b.b), global0.c.x), all(!select(vec3<bool>(global0.b.c, true, true), arg_2.zyx, arg_2.yww))), ~reverseBits(func_3().yzz), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global0.d, global0.d) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.x, global0.d.x, -1273f), vec3<f32>(arg_0.x, -1311f, -114f)))), vec3<f32>(_wgslsmith_f_op_f32(global0.d.x + global0.d.x), _wgslsmith_div_f32(arg_0.x, global0.d.x), 361f)) - vec3<f32>(906f, global0.d.x, -127f)));
    global2 = all(arg_2.ww);
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, 255f, 998f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(201f, -614f, arg_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-617f, global0.d.x, -1586f) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.x, var_0.d.x, -680f), var_0.d, global0.b.c))))));
    var var_2 = global3[_wgslsmith_index_u32(arg_1.b.x, 8u)];
    var var_3 = var_2.b;
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(global0.d.xz, global0.b, vec4<bool>(true, global0.b.a, global0.b.a, func_4(func_1(_wgslsmith_div_f32(283f, -1969f)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(global0.b.b.x, u_input.a, 1u), ~global0.b.b.zwx, _wgslsmith_add_vec3_u32(global0.b.b.xyz, global0.b.b.ywx)), func_3(), _wgslsmith_div_i32(global0.a.x >> (0u % 32u), 10242i))));
    var var_1 = var_0;
    var var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(global0.d)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d.x, -1229f, global0.d.x))), global0.d)));
    global1 = array<vec2<u32>, 26>();
    let var_3 = !(!vec3<bool>(!var_0.c, (var_1.b.x & var_1.b.x) < _wgslsmith_mod_u32(var_0.b.x, var_1.b.x), 1784f != _wgslsmith_f_op_f32(max(1132f, var_2.x))));
    var var_4 = var_3.x;
    global0 = Struct_2(-global0.a, Struct_1(true, var_1.b, true), vec3<u32>(~_wgslsmith_mod_u32(var_1.b.x, var_0.b.x), ~(var_0.b.x >> (reverseBits(0u) % 32u)), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(var_1.b, vec4<u32>(global0.b.b.x, 6132u, u_input.c, 19530u)), reverseBits(var_0.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.d)), vec3<f32>(_wgslsmith_f_op_f32(-1290f * 599f), 860f, _wgslsmith_f_op_f32(abs(-2170f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(0u, reverseBits(~_wgslsmith_mod_u32(~var_1.b.x, 4294967295u)), ~(_wgslsmith_sub_u32(min(u_input.a, 1u), ~u_input.c) >> (~(~30012u) % 32u)), _wgslsmith_f_op_f32(254f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-348f)))))), _wgslsmith_mult_vec4_i32(~_wgslsmith_div_vec4_i32(u_input.b, vec4<i32>(-1i, -2147483647i, u_input.b.x, -1i)), vec4<i32>(-35174i, _wgslsmith_clamp_i32(min(4540i, u_input.b.x), min(-25061i, u_input.b.x), 0i), global0.a.x & min(global0.a.x, u_input.b.x), _wgslsmith_sub_i32(-u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, global0.a.x, global0.a.x, global0.a.x), vec4<i32>(global0.a.x, -1527i, u_input.b.x, global0.a.x))))));
}

