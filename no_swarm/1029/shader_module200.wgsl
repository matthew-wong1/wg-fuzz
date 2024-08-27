struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: i32,
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

var<private> global0: array<vec3<bool>, 19> = array<vec3<bool>, 19>(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true));

var<private> global1: i32;

var<private> global2: vec2<u32>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>) -> u32 {
    let var_0 = Struct_4(~(~firstLeadingBit(_wgslsmith_mod_u32(u_input.e, 0u))), countOneBits(firstLeadingBit(_wgslsmith_sub_vec3_i32(arg_1, arg_1))), 4294967295u, _wgslsmith_dot_vec2_u32(arg_0.b.wx, u_input.c.zy), arg_0.a.x);
    global0 = array<vec3<bool>, 19>();
    let var_1 = _wgslsmith_div_f32(516f, _wgslsmith_f_op_f32(f32(-1f) * -1568f));
    var var_2 = ~(u_input.c.x ^ (1u << (_wgslsmith_mod_u32(_wgslsmith_add_u32(arg_0.b.x, 0u), countOneBits(var_0.d)) % 32u)));
    global1 = -16942i;
    return _wgslsmith_clamp_u32(u_input.e, ~global2.x, abs(5460u)) >> (arg_0.b.x % 32u);
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: Struct_3) -> f32 {
    var var_0 = arg_1;
    let var_1 = arg_3.a;
    var var_2 = ~select(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.e, var_1.b.x), ~vec2<u32>(var_1.b.x, 21862u)), 35451u), 1u, !arg_2.x);
    var_2 = abs(firstLeadingBit(func_3(arg_1.a, ~vec3<i32>(u_input.d, u_input.a, u_input.a))));
    var var_3 = true;
    return _wgslsmith_f_op_f32(select(1782f, -1421f, any(global0[_wgslsmith_index_u32(~(~(~global2.x)), 19u)])));
}

fn func_1(arg_0: vec3<bool>, arg_1: f32, arg_2: vec4<bool>, arg_3: Struct_4) -> Struct_2 {
    global0 = array<vec3<bool>, 19>();
    let var_0 = Struct_1(!arg_2);
    global2 = vec2<u32>(_wgslsmith_add_u32(global2.x, 4294967295u), arg_3.c);
    let var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(433f, -2102f, -557f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-119f, -920f, -1381f))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1, 821f, -1036f)))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-267f, _wgslsmith_div_f32(-336f, 778f), _wgslsmith_f_op_f32(-1047f + arg_1)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1228f, arg_1, arg_1)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, 413f, 1904f) - vec3<f32>(532f, 400f, arg_1)))), !vec3<bool>(var_0.a.x, true, var_0.a.x))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-854f, -1441f, arg_3.e)) - vec3<f32>(arg_1, arg_3.e, -1000f)) * vec3<f32>(_wgslsmith_f_op_f32(1630f - arg_1), _wgslsmith_f_op_f32(func_2(-534f, Struct_3(Struct_2(vec3<f32>(952f, -1427f, arg_1), vec4<u32>(arg_3.d, u_input.c.x, 37600u, 0u))), vec2<bool>(false, false), Struct_3(Struct_2(vec3<f32>(arg_3.e, arg_1, -339f), vec4<u32>(arg_3.c, arg_3.d, 10741u, global2.x))))), 317f)))));
    global1 = min(max(-13067i, _wgslsmith_clamp_i32(1i, ~u_input.b, -12100i)), abs(arg_3.b.x) & 20181i);
    return Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1930f, 737f, arg_3.e)), vec3<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-405f * arg_3.e), _wgslsmith_f_op_f32(f32(-1f) * -1292f)))), abs(~vec4<u32>(func_3(Struct_2(var_1, vec4<u32>(0u, global2.x, global2.x, u_input.e)), vec3<i32>(arg_3.b.x, -2147483647i, u_input.a)), ~4294967295u, global2.x, 1u)));
}

fn func_4(arg_0: Struct_2) -> bool {
    global2 = _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(2927u, _wgslsmith_div_u32(global2.x, global2.x))), arg_0.b.xy), _wgslsmith_clamp_vec2_u32(arg_0.b.xw, abs(abs(arg_0.b.wx)), (~vec2<u32>(global2.x, 20383u) >> (vec2<u32>(global2.x, 101497u) % vec2<u32>(32u))) >> (~(~vec2<u32>(0u, arg_0.b.x)) % vec2<u32>(32u))));
    var var_0 = 27505i;
    let var_1 = Struct_3(Struct_2(arg_0.a, abs(vec4<u32>(firstTrailingBit(global2.x), global2.x & 0u, ~43699u, max(arg_0.b.x, arg_0.b.x)))));
    var_0 = u_input.a;
    global1 = -2147483647i;
    return all(select(vec3<bool>(true, true, true), global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(countOneBits(global2.x), var_1.a.b.x), 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)]));
}

fn func_5(arg_0: bool, arg_1: vec2<bool>, arg_2: bool, arg_3: vec4<u32>) -> Struct_3 {
    let var_0 = 4294967295u;
    var var_1 = Struct_3(Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(-765f, 1352f, -451f), vec3<f32>(-244f, 174f, 978f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(689f, -470f, 1140f), vec3<f32>(-1086f, 707f, -886f), vec3<bool>(arg_1.x, true, arg_2))))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1318f, -1476f, -401f)))), vec4<u32>(1u ^ func_1(global0[_wgslsmith_index_u32(u_input.e, 19u)], -856f, vec4<bool>(true, true, true, arg_1.x), Struct_4(u_input.c.x, vec3<i32>(17292i, u_input.a, -12689i), 0u, global2.x, -256f)).b.x, ~func_1(vec3<bool>(false, arg_0, true), 1915f, vec4<bool>(false, true, false, false), Struct_4(var_0, vec3<i32>(u_input.d, u_input.d, u_input.d), u_input.c.x, 13704u, 481f)).b.x, _wgslsmith_mod_u32(arg_3.x, ~91222u), min(u_input.e, _wgslsmith_sub_u32(43502u, arg_3.x)))));
    var var_2 = var_1.a;
    var var_3 = true;
    let var_4 = global0[_wgslsmith_index_u32(0u, 19u)];
    return Struct_3(func_1(global0[_wgslsmith_index_u32(4294967295u, 19u)], _wgslsmith_f_op_f32(abs(481f)), vec4<bool>(true, arg_1.x, select(false, true, !arg_2), var_4.x), Struct_4(arg_3.x & 87067u, -vec3<i32>(1i, u_input.a, u_input.b) << (countOneBits(var_2.b.zzy) % vec3<u32>(32u)), global2.x, countOneBits(~var_1.a.b.x), -411f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -17700i;
    let var_0 = 44591i;
    var var_1 = vec2<i32>(u_input.b, 1i);
    var var_2 = func_5(!(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) > -835f), vec2<bool>(all(vec2<bool>(true, true)), false || func_4(func_1(vec3<bool>(true, true, true), -127f, vec4<bool>(true, false, false, true), Struct_4(75049u, vec3<i32>(var_0, -2147483647i, 0i), u_input.e, u_input.c.x, -1614f)))), false, func_1(!vec3<bool>(all(vec3<bool>(true, true, true)), true, true), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1409f, 425f)))), !select(vec4<bool>(true, true, true, false), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), true), true), Struct_4(~0u, _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, -37375i, -1i) ^ vec3<i32>(2147483647i, 21042i, var_1.x), vec3<i32>(1714i, 2147483647i, -1i) >> (vec3<u32>(u_input.e, 0u, 4294967295u) % vec3<u32>(32u))), ~1u, (global2.x & u_input.e) & _wgslsmith_add_u32(global2.x, 1u), _wgslsmith_f_op_f32(_wgslsmith_div_f32(3024f, -309f) * _wgslsmith_f_op_f32(-578f * 606f)))).b);
    global1 = -2147483647i;
    var var_3 = vec2<i32>(-13327i, -38663i);
    global1 = var_0 << (~u_input.e % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e);
}

