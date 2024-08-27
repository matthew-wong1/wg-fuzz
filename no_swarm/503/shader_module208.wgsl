struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 11> = array<vec2<u32>, 11>(vec2<u32>(27857u, 0u), vec2<u32>(1u, 8505u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(37574u, 81000u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(75315u, 4294967295u), vec2<u32>(57970u, 2768u), vec2<u32>(0u, 27790u), vec2<u32>(36330u, 31147u));

var<private> global1: u32 = 54518u;

var<private> global2: array<i32, 7> = array<i32, 7>(-1i, -92540i, -1i, 0i, 1i, -1i, i32(-2147483648));

var<private> global3: u32 = 36075u;

var<private> global4: array<Struct_2, 8>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: vec2<bool>) -> i32 {
    global1 = ~14988u;
    var var_0 = true;
    global1 = 4294967295u;
    let var_1 = ~u_input.a;
    let var_2 = vec2<i32>(u_input.c.x, global2[_wgslsmith_index_u32(var_1.x, 7u)]);
    return -global2[_wgslsmith_index_u32(4294967295u, 7u)];
}

fn func_3(arg_0: f32) -> vec4<i32> {
    global3 = ~1u;
    var var_0 = !(true || any(vec2<bool>(true, false)));
    global2 = array<i32, 7>();
    global4 = array<Struct_2, 8>();
    var var_1 = Struct_1(u_input.c.wxw, vec3<bool>(-1i != _wgslsmith_div_i32(global2[_wgslsmith_index_u32(4294967295u, 7u)], 2147483647i), !(!all(vec4<bool>(false, false, true, true))), !(!all(vec3<bool>(true, true, false)))), 26233u, global2[_wgslsmith_index_u32(u_input.d.x ^ _wgslsmith_div_u32(~(1u << (u_input.d.x % 32u)), u_input.a.x), 7u)]);
    return u_input.b;
}

fn func_2(arg_0: vec3<f32>, arg_1: i32, arg_2: vec4<bool>) -> Struct_2 {
    let var_0 = global4[_wgslsmith_index_u32(57885u, 8u)];
    let var_1 = u_input.a.x;
    var var_2 = ~(~(~(~u_input.d.x)));
    var var_3 = _wgslsmith_mult_vec4_i32(vec4<i32>(countOneBits(1i), -(~_wgslsmith_dot_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 7u)], 0i, -2147483647i), u_input.b.yzx)), arg_1, 0i), func_3(-1273f));
    var var_4 = var_0.c;
    return global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(u_input.a, select(u_input.a, vec4<u32>(var_0.a.c, var_4.x, var_0.c.x, var_4.x), arg_2)), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 114395u, ~var_0.c.x, 0u), ~vec4<u32>(4294967295u, 41414u, 26581u, var_4.x))), 8u)];
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> vec3<u32> {
    var var_0 = func_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-303f, _wgslsmith_f_op_f32(1152f - -1024f), _wgslsmith_f_op_f32(-2038f - -188f)))))), ~func_1(vec2<bool>(select(arg_0.b.b.x, false, arg_1.b.x), 1i > arg_1.a.x)), select(!select(select(vec4<bool>(true, arg_0.b.b.x, false, arg_0.a.b.x), vec4<bool>(arg_0.b.b.x, true, arg_0.b.b.x, arg_0.b.b.x), vec4<bool>(true, arg_1.b.x, arg_0.a.b.x, arg_0.b.b.x)), !vec4<bool>(true, arg_0.b.b.x, arg_1.b.x, arg_0.b.b.x), !vec4<bool>(arg_1.b.x, arg_0.b.b.x, true, true)), select(vec4<bool>(any(arg_1.b.xz), true, arg_1.b.x, arg_0.a.b.x), !select(vec4<bool>(false, arg_0.a.b.x, true, true), vec4<bool>(false, arg_0.b.b.x, arg_1.b.x, false), vec4<bool>(arg_0.a.b.x, arg_1.b.x, true, false)), arg_1.b.x), select(vec4<bool>(arg_1.b.x, arg_1.b.x, arg_0.a.b.x, arg_0.a.b.x), !(!vec4<bool>(arg_1.b.x, arg_0.b.b.x, arg_0.a.b.x, false)), all(!vec4<bool>(arg_1.b.x, false, false, true)))));
    let var_1 = !arg_1.b.x || ((-_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b.d, arg_1.d, global2[_wgslsmith_index_u32(var_0.c.x, 7u)]), arg_1.a) >> (u_input.d.x % 32u)) <= (var_0.a.a.x | _wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(var_0.b.c << (arg_1.c % 32u), 7u)], -2147483647i >> (u_input.a.x % 32u), -arg_1.a.x)));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -192f);
    var_0 = func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -217f, 999f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2, -1684f, 805f), vec3<f32>(754f, var_2, -2352f), arg_1.b))))), max(-4253i, arg_0.a.a.x), !vec4<bool>(true, true, 586f != _wgslsmith_div_f32(var_2, -1167f), true));
    var var_3 = var_2;
    return ~var_0.c;
}

fn func_5(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_1) -> Struct_1 {
    return Struct_1(u_input.c.yyx, !arg_0.b.b, arg_2.c, -35864i);
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    global1 = _wgslsmith_sub_u32(~_wgslsmith_add_u32(~abs(86135u), countOneBits(0u)), ~arg_1);
    let var_0 = vec3<i32>(reverseBits(arg_0.a.x), 2147483647i, max(u_input.b.x, -arg_2.a.x << (_wgslsmith_mult_u32(1u, u_input.d.x ^ 72244u) % 32u)));
    global3 = 4294967295u;
    let var_1 = !vec2<bool>(true, arg_0.b.x);
    var var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(arg_3)))), _wgslsmith_f_op_f32(f32(-1f) * -2041f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_3, arg_3))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3, arg_3) + vec2<f32>(2647f, 1449f)), vec2<f32>(1f, 1f), func_5(Struct_2(arg_0, Struct_1(var_0, arg_2.b, 54009u, u_input.b.x), u_input.a.yzy), u_input.a.wxx, arg_2).b.x))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-699f, -1383f)))), vec2<f32>(_wgslsmith_f_op_f32(-arg_3), -1000f))), any(func_5(global4[_wgslsmith_index_u32(u_input.d.x ^ arg_0.c, 8u)], u_input.a.wzw, arg_0).b.yz))));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_2, 8>();
    var var_0 = Struct_2(Struct_1(_wgslsmith_sub_vec3_i32(u_input.b.ywy, vec3<i32>(_wgslsmith_sub_i32(0i, global2[_wgslsmith_index_u32(u_input.d.x, 7u)]), ~1i, u_input.c.x & u_input.c.x)), vec3<bool>(true, ~0u > u_input.a.x, true), u_input.a.x >> (u_input.d.x % 32u), func_1(vec2<bool>(true, true))), func_6(func_5(global4[_wgslsmith_index_u32((u_input.d.x ^ u_input.d.x) | _wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], global0[_wgslsmith_index_u32(15535u, 11u)]), 8u)], func_4(func_2(vec3<f32>(-224f, 500f, 284f), -2147483647i, vec4<bool>(false, false, true, true)), func_2(vec3<f32>(-1730f, 655f, -779f), global2[_wgslsmith_index_u32(u_input.a.x, 7u)], vec4<bool>(true, false, false, false)).a), Struct_1(min(vec3<i32>(u_input.b.x, 2147483647i, 0i), u_input.b.xyx), vec3<bool>(false, false, true), ~u_input.a.x, firstTrailingBit(-36395i))), ~35070u, Struct_1(func_3(_wgslsmith_f_op_f32(trunc(-1000f))).yzx, vec3<bool>(false, true, true), 0u, u_input.c.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f)))))), ~(u_input.a.zzy | u_input.a.wxz));
    global3 = u_input.d.x;
    var var_1 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(121f, 1286f, 1000f)))))))), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.b.c, 4294967295u) >> (8315u % 32u), 7u)], !(!vec4<bool>(true, !var_0.b.b.x, true, var_0.b.b.x))).b;
    var var_2 = _wgslsmith_div_i32(func_3(-1319f).x, 4584i & global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(var_1.c, 0u, var_1.c, var_0.c.x), vec4<u32>(var_0.a.c, u_input.a.x, 32818u, 4294967295u)), select(u_input.a, u_input.a, vec4<bool>(true, var_1.b.x, var_1.b.x, true)) ^ ~u_input.a), 7u)]);
    var var_3 = global4[_wgslsmith_index_u32(4294967295u, 8u)];
    let var_4 = true;
    global2 = array<i32, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(vec4<u32>(~0u, 17346u & (var_1.c >> (4294967295u % 32u)), 2711u, _wgslsmith_mod_u32(37833u, var_3.b.c) ^ var_3.b.c), ~_wgslsmith_sub_vec4_u32(u_input.a, ~u_input.a)), vec4<u32>(func_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-542f, -1975f, -2180f), vec3<f32>(-862f, 941f, -263f))))), -select(global2[_wgslsmith_index_u32(0u, 7u)], 0i, true), select(!vec4<bool>(false, false, var_1.b.x, var_3.b.b.x), select(vec4<bool>(var_4, true, var_4, false), vec4<bool>(var_0.a.b.x, var_3.b.b.x, var_0.a.b.x, true), false), !vec4<bool>(false, false, false, var_4))).c.x, min(44707u, abs(reverseBits(var_1.c))), 29117u, _wgslsmith_clamp_u32(~var_0.b.c, select(53622u, 0u, var_1.b.x), ~u_input.d.x)), global0[_wgslsmith_index_u32(firstLeadingBit(1u), 11u)] << (var_3.c.yx % vec2<u32>(32u)), abs(~1u));
}

