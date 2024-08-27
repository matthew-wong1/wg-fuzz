struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: f32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -8388i;

var<private> global1: array<vec2<i32>, 2> = array<vec2<i32>, 2>(vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 371i));

var<private> global2: vec4<i32>;

var<private> global3: vec2<u32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_1) -> vec3<u32> {
    global2 = abs(firstLeadingBit(countOneBits(-select(arg_2.a, arg_2.a, vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)))));
    var var_0 = u_input.c != 1992u;
    var var_1 = (((arg_2.a.x & reverseBits(-46305i)) ^ (-global2.x ^ 17967i)) >> (arg_0 % 32u)) >> (min(66948u, ~(_wgslsmith_mod_u32(0u, global3.x) | abs(arg_0))) % 32u);
    var_1 = 1i;
    global0 = global2.x ^ 0i;
    return abs(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.b.zwx, u_input.b.yyz, vec3<u32>(arg_0, 1u, 4294967295u)), u_input.b.yzy), firstTrailingBit(u_input.b.wyz))) ^ u_input.b.zxy;
}

fn func_2(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -242f)), -1303f);
    let var_1 = arg_0;
    global1 = array<vec2<i32>, 2>();
    let var_2 = Struct_1(arg_0.a);
    let var_3 = arg_0;
    return func_3(global3.x, vec4<bool>(true, any(vec4<bool>(true, true, true, true)), true && all(vec3<bool>(true, true, true)), ~(~arg_0.a.x) != var_1.a.x), Struct_1(-var_1.a | -vec4<i32>(var_3.a.x, global2.x, -146i, -48188i)));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    let var_0 = u_input.a.x;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -579f), _wgslsmith_f_op_f32(round(772f)))) + vec2<f32>(_wgslsmith_f_op_f32(sign(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -308f)))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-327f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1093f)) + _wgslsmith_div_f32(1709f, -1853f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1638f, 1000f))), -1605f))));
    let var_2 = func_2(arg_1);
    let var_3 = Struct_1(vec4<i32>((i32(-1i) * -2147483647i) | -global2.x, arg_1.a.x, -arg_1.a.x, firstTrailingBit(-1i)));
    global0 = 52786i;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(u_input.b.wzz, Struct_1(vec4<i32>(global2.x & global2.x, global2.x, global2.x, _wgslsmith_div_i32(global2.x, -86625i)) ^ _wgslsmith_sub_vec4_i32(-vec4<i32>(global2.x, -1i, global2.x, 0i), -vec4<i32>(global2.x, global2.x, global2.x, global2.x))), _wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(4294967295u, u_input.a.x), global3.x), u_input.a.x));
    global3 = u_input.a;
    global0 = -19187i;
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(759f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1466f + -949f) + _wgslsmith_div_f32(1176f, 187f)), 1f))));
    var var_2 = vec4<i32>(var_0.a.x, 18098i, _wgslsmith_dot_vec3_i32(reverseBits(_wgslsmith_mult_vec3_i32(select(global2.yyz, vec3<i32>(var_0.a.x, 0i, 1i), false), -vec3<i32>(var_0.a.x, -30828i, var_0.a.x))), func_1(vec3<u32>(~1831u, u_input.c, _wgslsmith_sub_u32(global3.x, u_input.a.x)), func_1(u_input.b.wyw, Struct_1(var_0.a), _wgslsmith_sub_u32(46337u, 1u)), u_input.c).a.yzx), firstTrailingBit(~(-abs(-2147483647i))));
    let var_3 = func_1(~vec3<u32>(global3.x, 1u, _wgslsmith_sub_u32(u_input.a.x, global3.x)) | ~vec3<u32>(u_input.b.x, u_input.a.x >> (1u % 32u), u_input.b.x >> (global3.x % 32u)), func_1(firstLeadingBit(vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.b.xzy, vec3<u32>(global3.x, 1u, 25325u)), ~4294967295u, global3.x)), func_1(~(vec3<u32>(global3.x, 55950u, 2265u) >> (u_input.b.yyy % vec3<u32>(32u))), func_1(u_input.b.xwz | vec3<u32>(18618u, 4294967295u, 34195u), Struct_1(vec4<i32>(-1i, var_0.a.x, -15227i, var_0.a.x)), _wgslsmith_mult_u32(global3.x, 16897u)), abs(80760u) >> (1u % 32u)), max(firstLeadingBit(37228u), _wgslsmith_dot_vec4_u32(min(u_input.b, u_input.b), vec4<u32>(global3.x, global3.x, u_input.d, 0u)))), reverseBits(u_input.d));
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(floor(-1207f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1206f, var_1.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(sign(-1187f))), _wgslsmith_f_op_f32(min(var_1.x, 763f)));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_4.yz), vec2<f32>(var_1.x, _wgslsmith_f_op_f32(ceil(-433f)))) - _wgslsmith_f_op_vec2_f32(-var_4.yy)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, var_2.wxw, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1190f, var_4.x, var_2.x <= var_2.x)) + _wgslsmith_f_op_f32(f32(-1f) * -363f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_4.x, -632f))), 4294967295u, reverseBits(global3.x));
}

