struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 24> = array<vec4<f32>, 24>(vec4<f32>(239f, 808f, 149f, 2417f), vec4<f32>(469f, 1368f, -710f, 483f), vec4<f32>(1732f, 956f, -221f, -550f), vec4<f32>(-2154f, 1359f, -1313f, 710f), vec4<f32>(640f, 1130f, 126f, 1099f), vec4<f32>(390f, 1301f, -1559f, 2464f), vec4<f32>(467f, -1615f, 103f, -1180f), vec4<f32>(-1098f, -113f, 149f, -2864f), vec4<f32>(-1912f, 446f, -277f, -1647f), vec4<f32>(-207f, -1000f, -1493f, 1316f), vec4<f32>(-217f, 317f, 692f, 406f), vec4<f32>(243f, 292f, 294f, 727f), vec4<f32>(-986f, -1740f, 378f, 929f), vec4<f32>(-1448f, 668f, 1351f, 217f), vec4<f32>(-417f, -2136f, -1000f, 219f), vec4<f32>(571f, -1081f, 1000f, 152f), vec4<f32>(1156f, -121f, -607f, 1000f), vec4<f32>(300f, -122f, 660f, 512f), vec4<f32>(376f, 1869f, -1343f, 1524f), vec4<f32>(516f, -289f, 2147f, 1044f), vec4<f32>(-308f, 671f, 1105f, 1000f), vec4<f32>(-2039f, -388f, 1000f, -1000f), vec4<f32>(-209f, 1413f, 403f, 2382f), vec4<f32>(1320f, 1075f, 1000f, 1304f));

var<private> global1: Struct_1 = Struct_1(-931f, vec2<i32>(30009i, 0i), vec2<f32>(-551f, -946f));

var<private> global2: Struct_1 = Struct_1(335f, vec2<i32>(0i, i32(-2147483648)), vec2<f32>(-1194f, 1000f));

var<private> global3: f32;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1) -> i32 {
    global1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(arg_0.c.x)), _wgslsmith_f_op_f32(min(global2.c.x, _wgslsmith_div_f32(arg_0.a, -1327f)))))), _wgslsmith_mult_vec2_i32(vec2<i32>(arg_2.b.x, 0i), min(~vec2<i32>(global1.b.x, global1.b.x), -_wgslsmith_sub_vec2_i32(arg_2.b, global2.b))), global2.c);
    let var_0 = -1003f;
    global2 = Struct_1(arg_2.a, ~reverseBits(~_wgslsmith_div_vec2_i32(global1.b, vec2<i32>(arg_0.b.x, -8716i))), vec2<f32>(arg_2.a, global1.a));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(39239u, 24u)])) * vec4<f32>(-317f, -791f, _wgslsmith_f_op_f32(f32(-1f) * -441f), _wgslsmith_f_op_f32(f32(-1f) * -249f))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.x, 101f, -708f, _wgslsmith_f_op_f32(-global2.c.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-351f, _wgslsmith_f_op_f32(max(global2.c.x, global1.a)), -1171f, _wgslsmith_f_op_f32(ceil(-780f))) + global0[_wgslsmith_index_u32(1u, 24u)]), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))));
    global2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c.x * arg_2.c.x) * _wgslsmith_f_op_f32(global2.a + 470f))))), arg_0.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-299f, -946f) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2.c.x, arg_2.c.x), global1.c, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1649f, var_1.x)))) + arg_0.c));
    return _wgslsmith_mult_i32(arg_0.b.x, -2147483647i);
}

fn func_2(arg_0: vec2<bool>, arg_1: i32, arg_2: vec3<u32>, arg_3: vec2<f32>) -> f32 {
    global3 = -1311f;
    var var_0 = Struct_1(_wgslsmith_f_op_f32(arg_3.x - -1369f), vec2<i32>(1i, _wgslsmith_div_i32(u_input.d, min(-2147483647i, func_3(Struct_1(-1636f, vec2<i32>(-28432i, global1.b.x), vec2<f32>(arg_3.x, global1.c.x)), arg_2.zz, Struct_1(183f, global1.b, global2.c))))), _wgslsmith_f_op_vec2_f32(-arg_3));
    global3 = 1373f;
    var var_1 = arg_2.zx;
    var var_2 = true;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.x + 1000f) + 568f);
}

fn func_4(arg_0: u32, arg_1: f32) -> Struct_1 {
    var var_0 = _wgslsmith_add_vec3_i32(~_wgslsmith_sub_vec3_i32(~_wgslsmith_mult_vec3_i32(vec3<i32>(global1.b.x, global1.b.x, global2.b.x), vec3<i32>(0i, global1.b.x, global2.b.x)), vec3<i32>(-1i) * -vec3<i32>(u_input.d, 1i, -18699i)), ~_wgslsmith_mult_vec3_i32(abs(vec3<i32>(-30022i, -20961i, global2.b.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d, 2147483647i, -2147483647i), vec3<i32>(-2474i, 4403i, global1.b.x)) << (vec3<u32>(u_input.c.x, u_input.b.x, 48406u) % vec3<u32>(32u))));
    let var_1 = ~select(min(vec2<u32>(1u, 1u), min(vec2<u32>(4294967295u, 0u), vec2<u32>(8948u, u_input.a.x))), u_input.b.yw, select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(true, false, false, false)))) >> (u_input.a.yx % vec2<u32>(32u));
    var var_2 = Struct_1(-1161f, vec2<i32>(40713i, var_0.x ^ _wgslsmith_dot_vec2_i32(abs(vec2<i32>(-1792i, global2.b.x)), vec2<i32>(u_input.d, -27388i))), vec2<f32>(995f, _wgslsmith_f_op_f32(129f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-1263f, 1349f)))))));
    let var_3 = true;
    let var_4 = Struct_1(_wgslsmith_f_op_f32(-1067f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global1.a, _wgslsmith_f_op_f32(-222f - global1.a))), 723f)), select(~vec2<i32>(-1i, _wgslsmith_mult_i32(1i, var_0.x)), reverseBits(max(~vec2<i32>(var_0.x, var_0.x), vec2<i32>(-19721i, -2147483647i))), true), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(376f, 1558f) * global2.c) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_2.c.x, global1.c.x))))))));
    return var_4;
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    global0 = array<vec4<f32>, 24>();
    let var_0 = arg_1;
    global0 = array<vec4<f32>, 24>();
    var var_1 = var_0;
    global1 = func_4(1u, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<bool>(arg_2, false), u_input.d, u_input.a, global2.c))), global2.a, arg_2)))));
    return func_4(_wgslsmith_clamp_u32(4294967295u, min(u_input.c.x, 29263u), ~max(17821u | u_input.b.x, 4294967295u)), -538f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global2.b.x, Struct_1(global2.c.x, ~_wgslsmith_mult_vec2_i32(global2.b, reverseBits(global1.b)), vec2<f32>(-804f, _wgslsmith_f_op_f32(-235f * _wgslsmith_f_op_f32(-global2.a)))), any(vec3<bool>(true, true, true)));
    global1 = func_4(u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-205f - 183f)));
    global0 = array<vec4<f32>, 24>();
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.a, global1.a)) - _wgslsmith_f_op_f32(min(1624f, 332f)))))));
    global3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-559f, global2.a)))));
    var var_1 = func_1(u_input.d & -39872i, func_4(abs(30081u), var_0.a), true);
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, global2.a, ~20618u, 7818i);
}

