struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_3,
    c: i32,
    d: f32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 4>;

var<private> global1: i32 = -15828i;

var<private> global2: array<vec4<f32>, 9> = array<vec4<f32>, 9>(vec4<f32>(-444f, 109f, -440f, 845f), vec4<f32>(468f, 532f, 931f, 1225f), vec4<f32>(-191f, -1000f, 630f, -163f), vec4<f32>(536f, 338f, 505f, 1497f), vec4<f32>(576f, -791f, 496f, 105f), vec4<f32>(1273f, -1276f, 659f, -987f), vec4<f32>(-816f, -529f, 420f, 667f), vec4<f32>(1270f, 629f, 1000f, 464f), vec4<f32>(661f, 2283f, -1000f, 1014f));

var<private> global3: array<vec4<bool>, 12> = array<vec4<bool>, 12>(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<f32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x)), false))));
    global0 = array<Struct_3, 4>();
    let var_1 = -_wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, -14440i, -1i, 2147483647i), vec4<i32>(-1i >> (u_input.a % 32u), abs(1i), -77199i, i32(-1i) * -52582i)) | -17719i;
    var var_2 = select(!select(vec3<bool>(all(vec2<bool>(true, true)), true, true), vec3<bool>(true, any(global3[_wgslsmith_index_u32(36881u, 12u)]), all(vec4<bool>(true, false, true, true))), any(vec4<bool>(true, true, true, true))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, any(vec3<bool>(true, true, true))), vec3<bool>(true, true, false)), vec3<bool>(true | all(vec2<bool>(false, true)), false, !all(vec3<bool>(true, true, true))), select(all(!global3[_wgslsmith_index_u32(u_input.a, 12u)]), true, any(vec2<bool>(false, false)) | true)), false);
    var var_3 = 2363u;
    return _wgslsmith_dot_vec2_i32(vec2<i32>(((var_1 | -39724i) | var_1) >> (10347u % 32u), reverseBits(21227i)), countOneBits(vec2<i32>(abs(var_1), ~var_1) & vec2<i32>(11437i, countOneBits(var_1))));
}

fn func_2(arg_0: Struct_3, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_2.a.xz;
    global1 = func_3(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(-245f, -1939f, 256f), vec3<f32>(207f, 1184f, -443f)))));
    var var_1 = vec3<bool>(false, any(select(vec3<bool>(!arg_0.a, all(vec4<bool>(true, arg_2.a.x, true, var_0.x)), u_input.a <= 0u), select(arg_0.b.a, select(arg_0.b.a, vec3<bool>(true, true, var_0.x), arg_0.b.a.x), any(arg_2.a.zx)), vec3<bool>(!arg_0.a, true, arg_0.b.a.x))), any(!(!arg_2.a)));
    let var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(max(-873f, -1056f)), _wgslsmith_f_op_f32(2263f * 664f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(497f, -332f))), var_0)))), arg_0, _wgslsmith_mult_i32(-_wgslsmith_div_i32(0i, 1i), arg_1), _wgslsmith_f_op_f32(min(159f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(729f + -375f))), _wgslsmith_f_op_f32(-384f + _wgslsmith_f_op_f32(round(1000f)))))), !(!select(!vec2<bool>(arg_0.a, var_1.x), vec2<bool>(true, false), false)));
    let var_3 = var_2.a.x;
    return Struct_1(select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(true, any(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.d.x, 11607u), 12u)]), true), vec3<bool>(!(u_input.a == u_input.b.x), true, var_1.x)));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: f32, arg_3: u32) -> i32 {
    global3 = array<vec4<bool>, 12>();
    let var_0 = Struct_2(arg_0.a, func_2(global0[_wgslsmith_index_u32(arg_3, 4u)], _wgslsmith_add_i32(~_wgslsmith_add_i32(arg_0.c.x, arg_0.c.x), arg_0.c.x), Struct_1(select(vec3<bool>(arg_0.b.a.x, true, true), func_2(Struct_3(arg_0.b.a.x, Struct_1(vec3<bool>(arg_0.b.a.x, true, true))), arg_0.c.x, Struct_1(vec3<bool>(arg_0.a.a.x, arg_0.b.a.x, false))).a, true))), abs(_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(arg_0.c.x, arg_0.c.x), arg_0.c) | ~arg_0.c, arg_0.c)));
    let var_1 = Struct_1(!select(!vec3<bool>(arg_0.a.a.x, false, var_0.a.a.x), select(func_2(Struct_3(false, Struct_1(vec3<bool>(arg_0.a.a.x, true, var_0.a.a.x))), arg_0.c.x, Struct_1(var_0.b.a)).a, var_0.a.a, arg_0.a.a.x), arg_0.b.a.x));
    let var_2 = -2147483647i;
    var var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(u_input.d.x, 9u)] + global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_3, 57611u, 49985u), vec3<u32>(arg_3, arg_3, u_input.b.x)), 9u)]) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(0u, 9u)])), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(3004f, -1000f, -1129f, 1658f)), _wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(93793u, 9u)] + vec4<f32>(400f, arg_2, arg_2, -275f))), select(global3[_wgslsmith_index_u32(~17971u, 12u)], select(global3[_wgslsmith_index_u32(0u, 12u)], vec4<bool>(arg_0.b.a.x, var_0.a.a.x, true, var_1.a.x), vec4<bool>(false, var_0.b.a.x, false, var_1.a.x)), select(vec4<bool>(var_1.a.x, var_0.b.a.x, true, true), global3[_wgslsmith_index_u32(0u, 12u)], global3[_wgslsmith_index_u32(u_input.d.x, 12u)]))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -130f) * arg_1.x), -2226f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.x)))), 1802f)));
    return _wgslsmith_dot_vec3_i32(~vec3<i32>(var_0.c.x, -13216i, 1i), vec3<i32>(var_2, arg_0.c.x, 1i)) ^ (_wgslsmith_add_i32(arg_0.c.x, _wgslsmith_div_i32(19078i, arg_0.c.x ^ arg_0.c.x)) >> (1u % 32u));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: i32, arg_3: vec4<bool>) -> Struct_1 {
    let var_0 = select(arg_1.b.a.xz, !arg_1.b.a.zy, arg_3.x);
    let var_1 = arg_1;
    var var_2 = -vec2<i32>(-(~arg_2), ~1i);
    let var_3 = vec4<i32>(func_4(Struct_2(func_2(Struct_3(var_1.a, arg_1.b), select(0i, var_2.x, arg_3.x), Struct_1(vec3<bool>(var_0.x, true, false))), arg_1.b, vec2<i32>(-12438i, var_2.x)), _wgslsmith_f_op_vec3_f32(-arg_0), arg_0.x, u_input.a), ~_wgslsmith_add_i32(firstLeadingBit(var_2.x), var_2.x), 62491i, -2147483647i);
    var var_4 = var_1.b;
    return func_2(Struct_3(true, arg_1.b), firstLeadingBit(~(-(-15068i ^ arg_2))), Struct_1(select(vec3<bool>(true, !var_1.a, any(vec2<bool>(arg_3.x, var_1.a))), var_1.b.a, any(vec3<bool>(true, arg_3.x, var_4.a.x)))));
}

fn func_5(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(vec3<bool>(true, true != func_1(vec3<f32>(-224f, 647f, 378f), Struct_3(arg_1.a.x, arg_1), countOneBits(2147483647i), global3[_wgslsmith_index_u32(~124066u, 12u)]).a.x, arg_1.a.x));
    var_0 = arg_1;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(0u, func_1(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(320f - 1851f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(655f)) - 200f), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(step(2144f, 549f)))), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.d.x & firstLeadingBit(15366u), _wgslsmith_dot_vec3_u32(vec3<u32>(3106u, 1u, 0u) & vec3<u32>(29580u, 127997u, u_input.a), ~vec3<u32>(u_input.c.x, u_input.c.x, u_input.a))), 4u)], 1i >> (u_input.a % 32u), select(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(21680u, u_input.d.x), 12u)], vec4<bool>(select(false, false, true), u_input.d.x == 4294967295u, true, true), select(!global3[_wgslsmith_index_u32(u_input.b.x, 12u)], vec4<bool>(true, false, true, true), any(global3[_wgslsmith_index_u32(u_input.b.x, 12u)])))));
    let var_1 = vec4<i32>(-16665i, firstLeadingBit(firstLeadingBit(reverseBits(2147483647i))), ~func_3(vec3<f32>(-1914f, -662f, -253f)), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(-1i, 1i, -(-1i << (0u % 32u)))));
    var var_2 = Struct_3(!var_0.a.x, Struct_1(var_0.a));
    var var_3 = _wgslsmith_dot_vec3_i32(vec3<i32>(~_wgslsmith_sub_i32(-var_1.x, ~(-19816i)), firstTrailingBit(17987i), 2147483647i), _wgslsmith_clamp_vec3_i32(firstLeadingBit(abs(-vec3<i32>(17476i, var_1.x, var_1.x))), -_wgslsmith_div_vec3_i32(vec3<i32>(var_1.x, -1i, var_1.x) << (vec3<u32>(u_input.b.x, 4294967295u, 4294967295u) % vec3<u32>(32u)), var_1.yyx), vec3<i32>(var_1.x, 2147483647i, var_1.x)));
    var var_4 = Struct_2(var_0, Struct_1(!vec3<bool>(true, var_2.b.a.x, 0u > u_input.c.x)), vec2<i32>(_wgslsmith_dot_vec3_i32(var_1.wxy, var_1.wyw), func_3(vec3<f32>(_wgslsmith_f_op_f32(1000f * -730f), _wgslsmith_f_op_f32(-336f * 1299f), _wgslsmith_f_op_f32(min(-753f, 1013f))))));
    let var_5 = Struct_2(var_2.b, Struct_1(var_4.b.a), -vec2<i32>(-104005i, 29173i) << (~max(vec2<u32>(47571u, 1u), vec2<u32>(73662u, u_input.d.x)) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_4.c.x, _wgslsmith_div_i32(-_wgslsmith_div_i32(var_5.c.x, 0i), func_4(var_5, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, 900f, -789f))), _wgslsmith_f_op_f32(f32(-1f) * -196f), u_input.a)), -24674i), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-313f, 258f, var_4.b.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-750f, _wgslsmith_f_op_f32(1219f - -134f), var_0.a.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-419f)), _wgslsmith_f_op_f32(select(-1447f, -1540f, var_5.b.a.x)))))), var_1.x & (i32(-1i) * -9434i));
}

