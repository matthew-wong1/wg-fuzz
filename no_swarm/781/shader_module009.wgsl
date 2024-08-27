struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: vec2<f32>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: i32 = 2147483647i;

var<private> global2: array<vec2<u32>, 5>;

var<private> global3: array<vec3<f32>, 26> = array<vec3<f32>, 26>(vec3<f32>(231f, 734f, -1872f), vec3<f32>(-904f, 1865f, -528f), vec3<f32>(-1171f, -233f, 802f), vec3<f32>(483f, 147f, 1224f), vec3<f32>(795f, 612f, 1653f), vec3<f32>(-1000f, -1400f, -891f), vec3<f32>(-1000f, -204f, 240f), vec3<f32>(-601f, -336f, 120f), vec3<f32>(-235f, 598f, 1495f), vec3<f32>(1586f, -136f, -1321f), vec3<f32>(819f, 513f, 601f), vec3<f32>(1917f, 536f, -162f), vec3<f32>(-998f, 1750f, 1021f), vec3<f32>(751f, 785f, -1434f), vec3<f32>(954f, -1000f, 646f), vec3<f32>(2078f, 1103f, 1127f), vec3<f32>(1549f, 713f, -297f), vec3<f32>(-317f, -416f, 1226f), vec3<f32>(-1296f, 319f, 683f), vec3<f32>(-1000f, 1767f, -231f), vec3<f32>(2031f, -3027f, 523f), vec3<f32>(-1596f, 1211f, -1239f), vec3<f32>(-476f, 186f, 2448f), vec3<f32>(-1276f, -1000f, -296f), vec3<f32>(275f, -1000f, -905f), vec3<f32>(206f, -428f, 665f));

var<private> global4: array<f32, 29> = array<f32, 29>(-731f, -941f, 521f, -326f, 1839f, -342f, -1539f, -1874f, 443f, 219f, 172f, -1112f, 1016f, 1000f, 1157f, 1580f, -418f, 787f, -533f, -2036f, 952f, 1231f, -741f, -1309f, 554f, -1117f, -983f, 1472f, -359f);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: bool) -> i32 {
    return ~u_input.d.x;
}

fn func_3(arg_0: Struct_3, arg_1: bool) -> u32 {
    let var_0 = arg_0.a;
    return 1u;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: i32, arg_3: bool) -> i32 {
    let var_0 = vec4<bool>(false, !arg_3, true, !arg_0.b.x);
    let var_1 = Struct_3(var_0.yyx, -33076i);
    var var_2 = Struct_4(vec4<bool>(true, true, true, true), (reverseBits(~0u) ^ _wgslsmith_div_u32(func_3(var_1, false), ~7620u)) & u_input.a.x);
    var var_3 = Struct_2((_wgslsmith_f_op_f32(-715f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)) != _wgslsmith_f_op_f32(sign(global4[_wgslsmith_index_u32(abs(arg_1.x), 29u)]))) & !arg_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c.x, 54116u), 29u)]))));
    let var_4 = select(select(vec2<bool>(var_1.a.x, all(select(vec4<bool>(var_3.a, true, var_0.x, true), var_2.a, var_0))), var_2.a.yz, ~(-u_input.d.x) < reverseBits(arg_0.a.x)), var_2.a.wy, !any(var_2.a.xzz));
    return u_input.d.x >> (13368u % 32u);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: f32) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.x) + _wgslsmith_f_op_f32(min(-649f, arg_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1840f))), 1513f) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, arg_1.c.x, -1867f), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_3, global4[_wgslsmith_index_u32(41008u, 29u)], global0.x), vec3<f32>(513f, -866f, global4[_wgslsmith_index_u32(u_input.b, 29u)]))), arg_1.b))))));
    var var_0 = arg_0.c.x;
    let var_1 = Struct_4(select(select(!vec4<bool>(false, true, arg_1.b.x, arg_0.b.x), vec4<bool>(all(vec2<bool>(false, arg_1.b.x)), true, arg_0.b.x, arg_1.b.x), arg_1.b.x), select(vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, false), !(!vec4<bool>(false, arg_1.b.x, arg_1.b.x, arg_0.b.x)), true), vec4<bool>(arg_0.b.x, false, false, !(!arg_0.b.x))), ~(~(~u_input.e)));
    var var_2 = select(select(vec3<bool>(false, !arg_1.b.x, any(var_1.a)), !(!arg_0.b), select(arg_1.b, arg_0.b, true)), vec3<bool>(true, true, any(select(var_1.a.wyw, select(arg_0.b, vec3<bool>(true, false, false), vec3<bool>(true, arg_0.b.x, false)), arg_2.x == 699f))), arg_0.b);
    var var_3 = ~max(_wgslsmith_sub_i32(arg_1.e, abs(1i)), ~u_input.d.x) & -2147483647i;
    return Struct_1(~(arg_1.a >> (u_input.c % vec3<u32>(32u))), arg_1.b, _wgslsmith_f_op_vec2_f32(abs(global0.xz)), arg_1.d, arg_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(!(!(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true))), _wgslsmith_div_i32(-u_input.d.x, _wgslsmith_clamp_i32(-12998i, abs(u_input.d.x), func_1(true))));
    var var_1 = func_4(Struct_1(vec3<i32>(-func_2(Struct_1(vec3<i32>(var_0.b, -1173i, 1i), var_0.a, global0.yy, 0i, u_input.d.x), vec3<u32>(4294967295u, 0u, u_input.c.x), var_0.b, false), _wgslsmith_div_i32(_wgslsmith_div_i32(-2493i, 3652i), ~0i), _wgslsmith_div_i32(36804i, 12464i) & func_2(Struct_1(vec3<i32>(u_input.d.x, 0i, u_input.d.x), var_0.a, global0.yy, u_input.d.x, var_0.b), u_input.c, u_input.d.x, var_0.a.x)), var_0.a, global0.zy, abs(var_0.b), -1i), Struct_1(-(~_wgslsmith_add_vec3_i32(u_input.d.zwx, u_input.d.yxw)), select(var_0.a, select(var_0.a, vec3<bool>(false, var_0.a.x, true), vec3<bool>(false, var_0.a.x, var_0.a.x)), vec3<bool>(!var_0.a.x, true, any(var_0.a))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(298f)), -123f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4[_wgslsmith_index_u32(u_input.e, 29u)], global4[_wgslsmith_index_u32(45900u, 29u)]) + vec2<f32>(771f, 1000f)) - vec2<f32>(-300f, global0.x))), u_input.d.x, 2147483647i), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(~global2[_wgslsmith_index_u32(1u, 5u)], countOneBits(~u_input.a.zy)), _wgslsmith_dot_vec4_u32(firstLeadingBit(~u_input.a), ~(vec4<u32>(1u, u_input.c.x, 0u, 0u) ^ u_input.a))), 26u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(1u, 29u)])));
    let var_2 = _wgslsmith_div_u32(u_input.b, 0u);
    let var_3 = false;
    global2 = array<vec2<u32>, 5>();
    var var_4 = 1094f;
    var var_5 = Struct_1(u_input.d.zxx >> (~vec3<u32>(~0u, var_2, var_2) % vec3<u32>(32u)), select(var_0.a, !vec3<bool>(!var_3, false, any(vec4<bool>(false, true, var_3, var_3))), true), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global4[_wgslsmith_index_u32(20535u, 29u)])), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1286f, 237f)), _wgslsmith_div_vec2_f32(global0.yy, vec2<f32>(var_1.c.x, 1405f)), !vec2<bool>(false, var_1.b.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, global0.x), var_1.c, var_0.a.zx)))), var_0.b, i32(-1i) * -10206i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 79222u, 24083u), u_input.a), firstTrailingBit(u_input.c.x)) >> (~u_input.b % 32u), ~_wgslsmith_mult_u32(func_3(var_0, var_5.b.x), min(7055u, 1u)), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(1u, u_input.b, u_input.b) >> (~27079u % 32u), firstTrailingBit(22693u))));
}

