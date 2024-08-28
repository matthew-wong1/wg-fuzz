struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: i32,
    d: i32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 21>;

var<private> global1: Struct_1;

var<private> global2: array<f32, 6>;

var<private> global3: array<vec3<f32>, 23> = array<vec3<f32>, 23>(vec3<f32>(876f, 1681f, 553f), vec3<f32>(1138f, -1390f, -769f), vec3<f32>(792f, 1000f, -423f), vec3<f32>(406f, 573f, 571f), vec3<f32>(1114f, 852f, 910f), vec3<f32>(-1000f, 2287f, 621f), vec3<f32>(-493f, 342f, -1025f), vec3<f32>(1302f, 640f, 255f), vec3<f32>(-1482f, 258f, -375f), vec3<f32>(179f, 273f, -397f), vec3<f32>(-811f, 143f, -1081f), vec3<f32>(-311f, -500f, -1004f), vec3<f32>(-541f, 1000f, -576f), vec3<f32>(907f, -373f, -648f), vec3<f32>(-917f, -397f, -1375f), vec3<f32>(1818f, 1306f, 517f), vec3<f32>(-188f, 626f, -1356f), vec3<f32>(240f, -643f, -1030f), vec3<f32>(-838f, 426f, 1076f), vec3<f32>(1000f, -493f, -296f), vec3<f32>(969f, 1000f, 577f), vec3<f32>(1778f, 788f, -302f), vec3<f32>(-329f, 105f, 783f));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: Struct_3, arg_3: vec4<f32>) -> bool {
    global0 = array<vec3<bool>, 21>();
    global2 = array<f32, 6>();
    global2 = array<f32, 6>();
    let var_0 = ~_wgslsmith_sub_i32(global1.d, reverseBits(global1.c));
    let var_1 = arg_2.c.a;
    return global1.e.x;
}

fn func_3() -> vec3<bool> {
    global3 = array<vec3<f32>, 23>();
    let var_0 = true;
    return vec3<bool>(!(u_input.d >= 1i), 9584u < _wgslsmith_add_u32(4294967295u, ~max(33446u, u_input.b)), u_input.c.x == _wgslsmith_div_u32((u_input.c.x & u_input.b) << (u_input.c.x % 32u), u_input.b));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<u32>) -> bool {
    var var_0 = global1.e.zy;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -265f), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~(~38287u) >> (select(_wgslsmith_add_u32(1u, 76325u), arg_0.x, !global1.e.x) % 32u), 6u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -332f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) - -132f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(279f)) * -277f))));
    let var_2 = -598f;
    var var_3 = global1.b;
    let var_4 = func_3();
    return true;
}

fn func_4(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_2) -> Struct_4 {
    global2 = array<f32, 6>();
    global3 = array<vec3<f32>, 23>();
    global1 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1093f), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.c.x, 6u)])), _wgslsmith_f_op_f32(-global1.b.x), func_3().x)), _wgslsmith_f_op_f32(f32(-1f) * -521f)), _wgslsmith_div_i32(global1.c, min(38147i, 1i)), -1i, global1.e);
    let var_0 = Struct_4(Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(global1.a)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.c.x, 6u)]))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-global1.b))), _wgslsmith_add_i32(~u_input.d, min(-2147483647i, ~(-3783i))), 27848i, global1.e), func_3().zy);
    var var_1 = ((_wgslsmith_add_vec3_i32(vec3<i32>(arg_2.d.c, global1.d, global1.d), select(vec3<i32>(38808i, -2147483647i, -2147483647i), vec3<i32>(40669i, var_0.a.d, u_input.d), arg_2.b.e.yxz)) ^ ~_wgslsmith_div_vec3_i32(vec3<i32>(-1i, global1.d, -2147483647i), vec3<i32>(8842i, arg_2.b.d, 28956i))) & -vec3<i32>(var_0.a.d, u_input.d, var_0.a.d)) ^ (_wgslsmith_sub_vec3_i32(-vec3<i32>(-26041i, global1.d, 0i), ~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d, arg_2.a.x, -1i), vec3<i32>(0i, -40867i, arg_2.a.x))) >> (vec3<u32>(~14963u | ~u_input.a, ~_wgslsmith_sub_u32(4294967295u, 4294967295u), 11101u) % vec3<u32>(32u)));
    return Struct_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.b.x - _wgslsmith_f_op_f32(-global1.b.x))), _wgslsmith_f_op_vec2_f32(round(global1.b)), abs(55876i), -_wgslsmith_dot_vec2_i32(var_1.xz, ~var_1.yx), arg_2.b.e), func_3().xy);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.b.x, global1.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a, 6u)])), func_1(true, u_input.c.x, Struct_3(global1.e.x, vec3<bool>(global1.e.x, true, global1.e.x), Struct_1(global1.a, vec2<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 6u)], global1.b.x), global1.d, global1.d, vec4<bool>(true, true, global1.e.x, global1.e.x))), vec4<f32>(global1.b.x, -291f, 904f, global1.a)) && true)) * -1250f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.b * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(global1.b, vec2<f32>(494f, global2[_wgslsmith_index_u32(u_input.a, 6u)])))))), max(u_input.d, abs(firstTrailingBit(-1i)) >> (87557u % 32u)), ~2147483647i, select(global1.e, select(vec4<bool>(global1.e.x, global1.e.x, global1.d <= u_input.d, global1.e.x), !(!global1.e), select(select(global1.e, global1.e, false), vec4<bool>(true, true, true, true), global1.e)), true));
    var var_0 = ~u_input.c;
    var var_1 = func_4(select(!select(global1.e.xx, vec2<bool>(global1.e.x, true), select(global1.e.x, false, global1.e.x)), select(global1.e.wx, !(!global1.e.xx), !global1.e.yz), !func_2(vec2<u32>(var_0.x, var_0.x), vec2<u32>(11144u, u_input.a))), all(vec4<bool>(true, false, all(select(global1.e, global1.e, global1.e.x)), func_2(~vec2<u32>(4294967295u, 4294967295u), select(vec2<u32>(var_0.x, var_0.x), vec2<u32>(4294967295u, var_0.x), false)))), Struct_2(_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(global1.c, global1.c), vec2<i32>(-2147483647i, u_input.d)) << ((u_input.c << (u_input.c % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<i32>(9143i >> (var_0.x % 32u), 25057i)), Struct_1(-288f, _wgslsmith_f_op_vec2_f32(-global1.b), min(global1.c, -3375i), -8648i, !global1.e), Struct_1(685f, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -676f), _wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(var_0.x, 6u)]))), _wgslsmith_sub_i32(6911i, global1.c ^ 25685i), firstLeadingBit(u_input.d), !(!global1.e)), Struct_1(_wgslsmith_f_op_f32(1904f + 2264f), vec2<f32>(-1070f, 879f), ~reverseBits(0i), _wgslsmith_add_i32(global1.c, global1.d) & max(global1.d, u_input.d), vec4<bool>(global1.e.x, !global1.e.x, true, false || global1.e.x))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, global1.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_1.a.b, var_1.a.b)), _wgslsmith_f_op_vec2_f32(var_1.a.b * vec2<f32>(651f, global1.a)))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.a, -866f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.b.x, global2[_wgslsmith_index_u32(var_0.x, 6u)]))), vec2<f32>(-639f, _wgslsmith_f_op_f32(-172f - 113f))))), ~u_input.b);
}

