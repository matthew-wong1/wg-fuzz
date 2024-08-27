struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec2<u32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 7> = array<vec4<i32>, 7>(vec4<i32>(0i, 49608i, -1i, 2147483647i), vec4<i32>(-12540i, 1i, 19352i, -11060i), vec4<i32>(-4092i, -15243i, 11180i, i32(-2147483648)), vec4<i32>(-48856i, 2147483647i, 1i, i32(-2147483648)), vec4<i32>(-37947i, 0i, 47937i, 18704i), vec4<i32>(-9241i, 2147483647i, 72229i, 16819i), vec4<i32>(2147483647i, 1i, -28391i, -22225i));

var<private> global1: u32 = 19332u;

var<private> global2: array<i32, 10>;

var<private> global3: array<vec2<u32>, 8>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -246f), _wgslsmith_f_op_f32(f32(-1f) * -692f), _wgslsmith_f_op_f32(-1000f * 536f)), vec3<f32>(_wgslsmith_f_op_f32(max(-355f, 667f)), _wgslsmith_f_op_f32(max(-1882f, 327f)), _wgslsmith_f_op_f32(f32(-1f) * -105f)))), true, vec2<u32>(~(~(72226u ^ u_input.b)), _wgslsmith_dot_vec4_u32(abs(~vec4<u32>(1u, u_input.b, u_input.b, u_input.b)), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), ~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1090f, _wgslsmith_f_op_f32(f32(-1f) * -313f), _wgslsmith_f_op_f32(-216f + 1000f), _wgslsmith_f_op_f32(-743f + 366f)))));
    let var_1 = Struct_1(var_0.a, var_0.b, vec2<u32>(u_input.b, var_0.c.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(var_0.d.x, -527f)), _wgslsmith_f_op_f32(var_0.a.x * -1019f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -969f) * _wgslsmith_f_op_f32(143f * var_0.a.x)), 319f)));
    let var_2 = var_1;
    global1 = firstLeadingBit(~abs(77704u) << (var_2.c.x % 32u));
    var var_3 = vec4<u32>(var_0.c.x, ~u_input.b, reverseBits(var_2.c.x), var_2.c.x);
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_0.d.x, var_2.d.x), _wgslsmith_f_op_f32(-var_2.d.x)))) * _wgslsmith_f_op_f32(ceil(var_0.a.x)))));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: i32, arg_3: bool) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(304f, _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(f32(-1f) * -793f)) + arg_1.a)), select(select(arg_1.b, arg_1.b, true), all(!select(vec2<bool>(true, false), vec2<bool>(true, true), true)), false), global3[_wgslsmith_index_u32(1u >> (~(~(~arg_1.c.x)) % 32u), 8u)], _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(arg_1.d)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.d.x, arg_1.a.x, arg_1.a.x, arg_1.a.x)))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1998f, 1844f, arg_1.d.x, 1379f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(arg_1.d, vec4<f32>(282f, -1469f, 1627f, 224f))) - _wgslsmith_f_op_vec4_f32(-arg_1.d)), vec4<f32>(_wgslsmith_f_op_f32(min(arg_1.a.x, arg_1.a.x)), arg_1.d.x, -237f, -1398f))));
}

fn func_1(arg_0: vec3<bool>) -> vec2<f32> {
    let var_0 = func_2(u_input.b, Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -1000f, -169f), vec3<f32>(731f, 599f, 336f)) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(564f, -596f, -105f)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-485f, 145f, -100f) - vec3<f32>(1395f, 1350f, 691f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1327f, 1745f, -466f) * vec3<f32>(-1000f, -384f, 926f)))))), arg_0.x, vec2<u32>(u_input.b, _wgslsmith_sub_u32(u_input.b, 4992u) << (u_input.b % 32u)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -346f)), _wgslsmith_f_op_f32(651f - _wgslsmith_f_op_f32(f32(-1f) * -102f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-925f * 1271f), _wgslsmith_f_op_f32(max(-1481f, 2182f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -796f)))), u_input.d, false);
    let var_1 = 25934i;
    global2 = array<i32, 10>();
    global2 = array<i32, 10>();
    let var_2 = ~(-(vec3<i32>(_wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(4294967295u, 7u)], vec4<i32>(u_input.c.x, 20537i, 2147483647i, -1i)), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 5028u), 10u)], min(u_input.c.x, var_1)) | _wgslsmith_sub_vec3_i32(vec3<i32>(var_1, -25125i, 1i), _wgslsmith_sub_vec3_i32(vec3<i32>(-40187i, 61474i, global2[_wgslsmith_index_u32(1u, 10u)]), vec3<i32>(1i, 2147483647i, u_input.d)))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(var_0.a.x)), _wgslsmith_f_op_f32(var_0.d.x * -332f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(-417f, -894f)), _wgslsmith_div_f32(var_0.a.x, var_0.a.x))), arg_0.xz)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 10>();
    let var_0 = _wgslsmith_f_op_vec2_f32(func_1(vec3<bool>(true, true, true)));
    let var_1 = func_2(4116u & ~u_input.b, Struct_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(ceil(607f)), _wgslsmith_f_op_f32(sign(var_0.x))), func_2(30046u, func_2(109532u, Struct_1(vec3<f32>(1190f, var_0.x, var_0.x), false, vec2<u32>(u_input.b, 4294967295u), vec4<f32>(-2158f, var_0.x, var_0.x, 328f)), -1i, false), u_input.e, true).d.xww)), any(vec4<bool>(true, true, true, true)), ~global3[_wgslsmith_index_u32(4294967295u, 8u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_0.x, _wgslsmith_div_f32(1418f, var_0.x), var_0.x))), -32162i, true);
    let var_2 = vec2<f32>(-950f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.x * -1100f))) + var_1.d.x)));
    var var_3 = func_2(_wgslsmith_dot_vec3_u32(~(firstLeadingBit(vec3<u32>(u_input.b, 20810u, u_input.b)) << (vec3<u32>(0u, 1u, var_1.c.x) % vec3<u32>(32u))), countOneBits(firstLeadingBit(vec3<u32>(var_1.c.x, var_1.c.x, 16273u)) & ~vec3<u32>(4294967295u, 1u, var_1.c.x))), func_2(var_1.c.x, func_2(~(~var_1.c.x), var_1, global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(14153u, 3046u, 7410u), 10u)], any(select(vec4<bool>(var_1.b, true, false, var_1.b), vec4<bool>(var_1.b, var_1.b, false, false), vec4<bool>(true, false, true, var_1.b)))), countOneBits(global2[_wgslsmith_index_u32(~(~u_input.b), 10u)]), any(!vec2<bool>(false, var_1.b))), -3763i, !var_1.b);
    var var_4 = _wgslsmith_add_i32(-2147483647i, ~(2147483647i | global2[_wgslsmith_index_u32(var_1.c.x, 10u)]));
    let var_5 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(1f))));
    let var_6 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_0.x, 1020f)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_1.d.wxx))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-482f, var_1.a.x)), -1000f, 1473f)), !(var_2.x >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1395f + var_3.a.x))), max(var_3.c, global3[_wgslsmith_index_u32(50161u, 8u)]), vec4<f32>(var_3.a.x, _wgslsmith_f_op_f32(-var_2.x), var_0.x, var_1.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(119f);
}

