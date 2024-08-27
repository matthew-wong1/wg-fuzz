struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: bool,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 31> = array<vec4<bool>, 31>(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true));

var<private> global1: array<bool, 15>;

var<private> global2: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(-497f, 8248u, true, vec4<i32>(i32(-2147483648), 78432i, 0i, -42835i)), Struct_2(666f, 14848u, true, vec4<i32>(-1i, -72432i, 25446i, -5865i)), Struct_2(563f, 18813u, false, vec4<i32>(93i, i32(-2147483648), -6162i, 6719i)), Struct_2(179f, 4294967295u, true, vec4<i32>(i32(-2147483648), 1i, 0i, 1i)), Struct_2(176f, 0u, false, vec4<i32>(0i, -1i, i32(-2147483648), 29259i)), Struct_2(462f, 55161u, false, vec4<i32>(i32(-2147483648), i32(-2147483648), 2147483647i, -16307i)), Struct_2(-486f, 56785u, true, vec4<i32>(0i, 20032i, i32(-2147483648), 14066i)), Struct_2(219f, 70441u, false, vec4<i32>(1i, -15267i, 73183i, 57255i)), Struct_2(213f, 58158u, true, vec4<i32>(0i, 2147483647i, -1185i, -1i)), Struct_2(499f, 4294967295u, true, vec4<i32>(-71999i, 0i, 0i, -90912i)), Struct_2(-445f, 0u, true, vec4<i32>(49659i, 42261i, 28128i, 2147483647i)), Struct_2(-1052f, 6343u, false, vec4<i32>(0i, -1i, -15805i, 57543i)), Struct_2(-784f, 16628u, false, vec4<i32>(1i, 1i, 4232i, 8371i)), Struct_2(1420f, 4294967295u, true, vec4<i32>(80742i, 2147483647i, i32(-2147483648), -3931i)), Struct_2(-1556f, 4294967295u, false, vec4<i32>(-7348i, 2147483647i, -1i, 0i)), Struct_2(1000f, 0u, true, vec4<i32>(-23422i, -22622i, 7891i, 1i)), Struct_2(753f, 38585u, false, vec4<i32>(i32(-2147483648), 2147483647i, -32160i, -1i)), Struct_2(-1491f, 4294967295u, true, vec4<i32>(33721i, 2147483647i, 1i, 29860i)), Struct_2(-531f, 0u, false, vec4<i32>(27580i, 0i, -12294i, -66772i)), Struct_2(-2313f, 1u, false, vec4<i32>(1i, 1i, 31668i, 1i)), Struct_2(-1299f, 41819u, false, vec4<i32>(11793i, 0i, 26871i, 2147483647i)), Struct_2(1000f, 37497u, true, vec4<i32>(0i, 0i, 0i, -14294i)), Struct_2(-1287f, 118034u, false, vec4<i32>(6659i, 0i, -23314i, -12575i)), Struct_2(1019f, 3319u, true, vec4<i32>(2147483647i, 1i, -50387i, -55403i)), Struct_2(160f, 70673u, false, vec4<i32>(i32(-2147483648), 0i, -1i, 47566i)), Struct_2(630f, 0u, true, vec4<i32>(41843i, 79244i, -1i, -37763i)), Struct_2(1773f, 4294967295u, true, vec4<i32>(1i, 2065i, -49152i, -14959i)), Struct_2(3065f, 4294967295u, true, vec4<i32>(28138i, i32(-2147483648), -4772i, -1i)), Struct_2(604f, 0u, true, vec4<i32>(-1794i, 13515i, -54934i, 1i)), Struct_2(1017f, 56830u, true, vec4<i32>(0i, -1i, 16364i, -1733i)));

var<private> global3: array<f32, 1> = array<f32, 1>(-585f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: vec2<f32>) -> f32 {
    global2 = array<Struct_2, 30>();
    global3 = array<f32, 1>();
    var var_0 = global0[_wgslsmith_index_u32(4294967295u, 31u)];
    let var_1 = Struct_4(!vec4<bool>(!select(true, arg_0.x, var_0.x), arg_0.x, _wgslsmith_f_op_f32(select(-1000f, 407f, false)) == _wgslsmith_f_op_f32(arg_1.x - 588f), !(!arg_0.x)), Struct_1(abs(vec2<u32>(u_input.c.x, u_input.b)), arg_1.x), Struct_2(1000f, ~1u, true, -firstTrailingBit(-vec4<i32>(1i, 2147483647i, -1i, 0i))));
    let var_2 = var_1.c.b;
    return _wgslsmith_f_op_f32(round(var_1.b.b));
}

fn func_3() -> vec2<bool> {
    var var_0 = _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), u_input.a.ww), u_input.b, 13870u), abs(firstTrailingBit(u_input.a)));
    return !vec2<bool>(false, !(global1[_wgslsmith_index_u32(min(1u, 4294967295u), 15u)] | true));
}

fn func_1(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_2, arg_3: vec3<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(!(!global0[_wgslsmith_index_u32(0u, 31u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_3.xx * arg_3.yy)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.x, 854f)))), _wgslsmith_f_op_f32(-arg_3.x))) - arg_3.x);
    let var_1 = Struct_1(~_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.c.zz, u_input.c.yz) | ~u_input.a.xz, _wgslsmith_sub_vec2_u32(u_input.a.xy, vec2<u32>(25107u, u_input.c.x))), -294f);
    var var_2 = ~72702u;
    global3 = array<f32, 1>();
    var var_3 = any(func_3());
    return arg_2;
}

fn func_4(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_2, arg_3: vec4<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-183f - _wgslsmith_f_op_f32(arg_2.a - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(firstLeadingBit(41242u), 1u)]), _wgslsmith_f_op_f32(617f - _wgslsmith_f_op_f32(-118f - -311f))))));
    global3 = array<f32, 1>();
    global1 = array<bool, 15>();
    global1 = array<bool, 15>();
    var var_1 = Struct_4(select(vec4<bool>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(arg_2.b, 1u)] * -1000f) >= _wgslsmith_f_op_f32(step(1219f, 1856f)), true & func_1(vec3<i32>(arg_2.d.x, arg_2.d.x, 2147483647i), arg_2.b, arg_2, vec3<f32>(-445f, arg_2.a, global3[_wgslsmith_index_u32(9390u, 1u)])).c, arg_1, select(13984u < u_input.c.x, arg_2.d.x >= 2811i, !global1[_wgslsmith_index_u32(u_input.b, 15u)])), select(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_2.b | 1u, 1u), 31u)], !(!global0[_wgslsmith_index_u32(14429u, 31u)]), select(global0[_wgslsmith_index_u32(reverseBits(arg_3.x), 31u)], select(vec4<bool>(arg_1, false, false, global1[_wgslsmith_index_u32(arg_2.b, 15u)]), vec4<bool>(global1[_wgslsmith_index_u32(0u, 15u)], true, true, true), vec4<bool>(false, true, arg_2.c, true)), vec4<bool>(arg_1, arg_1, arg_1, true))), global0[_wgslsmith_index_u32(u_input.c.x, 31u)]), Struct_1(~_wgslsmith_add_vec2_u32(max(u_input.c.yz, arg_3.xz), arg_3.zz), arg_2.a), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(arg_2.b, 1u)])))), _wgslsmith_add_u32(func_1(arg_2.d.wxy, 4294967295u, global2[_wgslsmith_index_u32(14534u, 30u)], vec3<f32>(-260f, 736f, 1000f)).b & _wgslsmith_mult_u32(23940u, 1u), 4294967295u), !(any(vec3<bool>(true, false, global1[_wgslsmith_index_u32(4294967295u, 15u)])) && !arg_1), ~func_1(vec3<i32>(2147483647i, arg_2.d.x, -2147483647i), ~38735u, Struct_2(3342f, arg_3.x, true, vec4<i32>(-8335i, 1i, arg_0.x, 28852i)), vec3<f32>(global3[_wgslsmith_index_u32(arg_3.x, 1u)], -1847f, arg_2.a)).d));
    return var_1.c;
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: Struct_2) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_1.c.a - -243f), arg_2.a, _wgslsmith_f_op_f32(ceil(arg_2.a)), -1562f) + vec4<f32>(_wgslsmith_f_op_f32(arg_2.a + 1f), arg_2.a, 1763f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.b.b * _wgslsmith_f_op_f32(trunc(arg_2.a)))))));
    let var_1 = true;
    var var_2 = arg_1.b;
    let var_3 = Struct_3(~u_input.c, arg_2.d.x);
    var var_4 = -(~(_wgslsmith_mult_vec3_i32(arg_2.d.www, arg_1.c.d.ywy) >> (vec3<u32>(arg_0.x, _wgslsmith_div_u32(var_3.a.x, arg_1.b.a.x), 0u) % vec3<u32>(32u))));
    return abs(_wgslsmith_sub_vec3_i32(~vec3<i32>(abs(var_3.b), var_4.x, var_4.x), -vec3<i32>(var_3.b, 2147483647i, var_4.x) ^ arg_1.c.d.xxz));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(~func_5(firstLeadingBit(u_input.a.wyz), Struct_4(select(global0[_wgslsmith_index_u32(u_input.c.x, 31u)], global0[_wgslsmith_index_u32(13961u, 31u)], true), Struct_1(vec2<u32>(u_input.a.x, u_input.c.x), global3[_wgslsmith_index_u32(u_input.c.x, 1u)]), global2[_wgslsmith_index_u32(u_input.c.x ^ u_input.c.x, 30u)]), func_4(vec2<i32>(-31544i, 2147483647i), any(vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 15u)], true)), func_1(vec3<i32>(-1i, -2147483647i, 35842i), u_input.a.x, Struct_2(global3[_wgslsmith_index_u32(u_input.a.x, 1u)], 1u, global1[_wgslsmith_index_u32(4294967295u, 15u)], vec4<i32>(15925i, 1i, 28826i, -56504i)), vec3<f32>(global3[_wgslsmith_index_u32(0u, 1u)], -564f, -1000f)), reverseBits(u_input.a))));
    global0 = array<vec4<bool>, 31>();
    var var_1 = ~(-_wgslsmith_mod_i32(max(var_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -11060i, -83486i, 5457i), vec4<i32>(2147483647i, var_0.x, 56062i, var_0.x))), var_0.x));
    let var_2 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a.ww, vec2<u32>(9210u, 1u)), vec2<u32>(u_input.a.x, u_input.c.x)), firstTrailingBit(u_input.b)), select(~u_input.a.ww, _wgslsmith_div_vec2_u32(u_input.c.yx, vec2<u32>(0u, 25975u)), !global1[_wgslsmith_index_u32(20079u, 15u)]));
    global3 = array<f32, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2 >> (4294967295u % 32u), select(u_input.c.x, ~u_input.c.x, false), 0u >> (var_2 % 32u));
}

