struct Struct_1 {
    a: u32,
    b: bool,
    c: i32,
    d: vec3<i32>,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<f32>,
    d: vec4<u32>,
    e: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<f32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: f32,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 314f;

var<private> global1: array<vec3<i32>, 17> = array<vec3<i32>, 17>(vec3<i32>(2147483647i, 0i, -55317i), vec3<i32>(2147483647i, 0i, 2147483647i), vec3<i32>(2147483647i, 0i, 2147483647i), vec3<i32>(-44052i, 38469i, 47947i), vec3<i32>(1568i, 2147483647i, 2147483647i), vec3<i32>(32009i, 1i, 4353i), vec3<i32>(-1559i, 0i, 20485i), vec3<i32>(35210i, -7134i, 1i), vec3<i32>(11870i, -10107i, 0i), vec3<i32>(2147483647i, 2147483647i, 13425i), vec3<i32>(-9447i, 0i, -1i), vec3<i32>(39393i, -1i, i32(-2147483648)), vec3<i32>(1i, 2147483647i, 1i), vec3<i32>(31586i, -13783i, 61193i), vec3<i32>(1i, 57470i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 48581i, 0i), vec3<i32>(-1i, 1i, i32(-2147483648)));

var<private> global2: array<u32, 18>;

var<private> global3: array<bool, 28>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> f32 {
    var var_0 = reverseBits(vec4<i32>(u_input.a.x, -_wgslsmith_mult_i32(~1i, _wgslsmith_mod_i32(u_input.a.x, u_input.b.x)), abs(countOneBits(u_input.b.x)) & _wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.b.x, -1i), _wgslsmith_add_i32(u_input.b.x, u_input.b.x)), abs(_wgslsmith_mult_i32(u_input.b.x, -14486i)) ^ u_input.b.x));
    let var_1 = Struct_3(vec2<bool>(all(vec4<bool>(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(48138u, 1u), 28u)], select(false, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 18u)], 28u)], global3[_wgslsmith_index_u32(0u, 28u)]), global3[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(10702u, 18u)], 28u)], all(vec2<bool>(true, true)))), !any(select(vec3<bool>(false, true, global3[_wgslsmith_index_u32(u_input.d, 28u)]), vec3<bool>(true, false, global3[_wgslsmith_index_u32(6789u, 28u)]), false))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-212f, 1632f))))), vec2<f32>(-827f, 229f))))));
    let var_2 = Struct_5(Struct_4(_wgslsmith_f_op_f32(2211f * _wgslsmith_f_op_f32(step(286f, var_1.b.x))), Struct_3(select(!var_1.a, !vec2<bool>(var_1.a.x, var_1.a.x), true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_1.b)) * _wgslsmith_f_op_vec2_f32(select(var_1.b, vec2<f32>(var_1.b.x, var_1.b.x), vec2<bool>(true, true)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.b.x, var_1.b.x), vec2<f32>(928f, var_1.b.x), false)))));
    var var_3 = var_2;
    var var_4 = Struct_2(61779u, Struct_1(4294967295u, !all(!vec4<bool>(false, true, var_3.a.b.a.x, var_3.a.b.a.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x ^ 63368i, ~(-1i), -u_input.b.x), vec3<i32>(_wgslsmith_clamp_i32(11621i, -1i, 22688i), 1i, i32(-1i) * -1i)), _wgslsmith_mult_vec3_i32(-(~global1[_wgslsmith_index_u32(12379u, 17u)]), _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, u_input.b.x, var_0.x), var_0.yyz), _wgslsmith_clamp_vec3_i32(global1[_wgslsmith_index_u32(17162u, 17u)], global1[_wgslsmith_index_u32(25651u, 17u)], vec3<i32>(var_0.x, var_0.x, 0i)))), -555f), vec4<f32>(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(683f, var_2.b.x, var_3.a.b.a.x)) - _wgslsmith_f_op_f32(var_2.a.a - 1051f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_3.a.a))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.b.x * 1033f)))), 1214f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-645f + var_3.b.x) * 1363f)))), _wgslsmith_add_vec4_u32(~firstLeadingBit(vec4<u32>(70101u, u_input.c.x, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(43442u, 18u)], 18u)])), abs(u_input.c)), min(global2[_wgslsmith_index_u32(~min(u_input.d, u_input.d), 18u)], ~global2[_wgslsmith_index_u32(firstTrailingBit(~59372u), 18u)]));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -112f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.b.x)) + var_2.b.x)), var_1.b.x)), _wgslsmith_f_op_f32(-662f - 346f), true));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: f32) -> Struct_2 {
    global2 = array<u32, 18>();
    let var_0 = !vec2<bool>(true, !arg_1.b.b);
    global1 = array<vec3<i32>, 17>();
    var var_1 = arg_1.b;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-329f - _wgslsmith_f_op_f32(-var_1.e)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3()))) * arg_1.b.e));
    return Struct_2(arg_1.d.x, Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(53781u, 18u)], arg_0.x)), vec2<u32>(var_1.a, _wgslsmith_mult_u32(20017u, 40777u))), any(!select(vec3<bool>(true, global3[_wgslsmith_index_u32(arg_1.e, 28u)], var_0.x), vec3<bool>(true, global3[_wgslsmith_index_u32(0u, 28u)], false), vec3<bool>(arg_1.b.b, false, false))), -(~1i), -_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, -2147483647i, u_input.b.x), arg_1.b.d, min(var_1.d, vec3<i32>(var_1.c, u_input.a.x, u_input.b.x))), _wgslsmith_f_op_f32(-arg_2)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(arg_1.c - arg_1.c))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.e), _wgslsmith_f_op_f32(var_1.e - -505f), arg_1.c.x, arg_1.b.e) * vec4<f32>(-329f, -362f, var_1.e, _wgslsmith_f_op_f32(select(var_1.e, 152f, var_0.x))))), vec4<u32>(~1u, 1282u, _wgslsmith_mod_u32(~select(1u, 1828u, global3[_wgslsmith_index_u32(27886u, 28u)]), countOneBits(u_input.d) | countOneBits(6492u)), u_input.d), _wgslsmith_mod_u32(~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(123382u, 4294967295u, 0u, var_1.a), vec4<u32>(12038u, 2949u, 1u, var_1.a)), ~var_1.a), ((9024u << (global2[_wgslsmith_index_u32(11941u, 18u)] % 32u)) | (arg_1.a << (u_input.d % 32u))) | 4294967295u));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec3<bool>) -> bool {
    global2 = array<u32, 18>();
    var var_0 = Struct_5(Struct_4(_wgslsmith_div_f32(arg_1.b.e, -912f), Struct_3(!arg_2.zz, vec2<f32>(1f, 1f))), arg_1.c.wy);
    global3 = array<bool, 28>();
    let var_1 = func_2(vec4<u32>(~arg_0.x, ~_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(24308u, 1u, global2[_wgslsmith_index_u32(45953u, 18u)]), _wgslsmith_mult_u32(0u, 4156u), _wgslsmith_mult_u32(arg_0.x, 10646u)), ~countOneBits(u_input.c.x), u_input.c.x), func_2(~select(u_input.c, vec4<u32>(17876u, 0u, arg_0.x, arg_0.x), select(vec4<bool>(var_0.a.b.a.x, arg_2.x, var_0.a.b.a.x, arg_1.b.b), vec4<bool>(global3[_wgslsmith_index_u32(1u, 28u)], var_0.a.b.a.x, global3[_wgslsmith_index_u32(u_input.d, 28u)], false), arg_1.b.b)), func_2(u_input.c, func_2(vec4<u32>(arg_1.b.a, 4294967295u, 0u, arg_0.x), arg_1, _wgslsmith_f_op_f32(-var_0.a.b.b.x)), _wgslsmith_div_f32(var_0.b.x, 1109f)), arg_1.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.c.x))))).a;
    let var_2 = func_2(vec4<u32>(u_input.c.x, 1u, _wgslsmith_sub_u32(arg_1.a, ~(~4294967295u)), ~4294967295u), Struct_2(~0u, func_2(u_input.c, arg_1, var_0.a.a).b, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-108f, var_0.a.a, 684f, arg_1.c.x)))), vec4<f32>(_wgslsmith_div_f32(1000f, -1175f), arg_1.c.x, _wgslsmith_f_op_f32(select(var_0.b.x, -1600f, var_0.a.b.a.x)), -214f))), vec4<u32>(u_input.c.x, 1u, ~1u, abs(~11734u)), ~1u), var_0.a.b.b.x).b;
    return !var_0.a.b.a.x;
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: vec2<bool>) -> u32 {
    let var_0 = Struct_3(vec2<bool>(select(any(vec3<bool>(true, true, true)), !any(vec2<bool>(true, arg_2.x)), arg_2.x && arg_2.x), false), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) * vec2<f32>(arg_0, arg_0))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-953f, 3004f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -799f) - vec2<f32>(arg_0, -2341f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(166f, arg_0) + _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, arg_0), vec2<f32>(arg_0, arg_0)))), vec2<bool>(any(vec3<bool>(arg_2.x, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(34772u, 18u)], 28u)], global3[_wgslsmith_index_u32(5860u, 28u)])), func_4(~vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(0u, 18u)], arg_1), func_2(u_input.c, Struct_2(global2[_wgslsmith_index_u32(arg_1, 18u)], Struct_1(32685u, true, 0i, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(5770u, 18u)], 18u)], 17u)], -1893f), vec4<f32>(1283f, 1482f, arg_0, arg_0), u_input.c, 0u), -862f), select(vec3<bool>(arg_2.x, true, false), vec3<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 28u)], true, global3[_wgslsmith_index_u32(41946u, 28u)]), arg_2.x))))));
    let var_1 = Struct_5(Struct_4(-2005f, var_0), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(783f * 1221f))), _wgslsmith_f_op_f32(f32(-1f) * -332f)));
    var var_2 = u_input.c.wzx;
    global2 = array<u32, 18>();
    var var_3 = !select(vec2<bool>(true, var_1.a.b.a.x), vec2<bool>(true, true), var_0.a);
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(_wgslsmith_mod_u32(~(global2[_wgslsmith_index_u32(1u, 18u)] >> (global2[_wgslsmith_index_u32(u_input.d, 18u)] % 32u)), 1u), 25922u) << ((min(global2[_wgslsmith_index_u32(~1u, 18u)] ^ func_1(1000f, global2[_wgslsmith_index_u32(44275u, 18u)], vec2<bool>(false, global3[_wgslsmith_index_u32(0u, 28u)])), 29570u) | 39786u) % 32u);
    let var_1 = global2[_wgslsmith_index_u32(func_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -257f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, 667f)) - _wgslsmith_f_op_f32(-520f - _wgslsmith_f_op_f32(step(339f, -943f)))), true | (all(vec3<bool>(global3[_wgslsmith_index_u32(80160u, 28u)], global3[_wgslsmith_index_u32(u_input.e, 28u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.e, 18u)], 28u)])) || false))), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~(~u_input.c), vec4<u32>(abs(global2[_wgslsmith_index_u32(1u, 18u)]), 73416u, _wgslsmith_dot_vec2_u32(u_input.c.wy, u_input.c.yw), 1u)), ~_wgslsmith_sub_vec4_u32(u_input.c, u_input.c & vec4<u32>(global2[_wgslsmith_index_u32(1u, 18u)], u_input.c.x, global2[_wgslsmith_index_u32(u_input.d, 18u)], 7280u))), vec2<bool>(true, true)), 18u)];
    var var_2 = vec4<f32>(-1429f, 556f, -623f, -288f);
    global2 = array<u32, 18>();
    let var_3 = select(func_2(min(u_input.c, u_input.c << (u_input.c % vec4<u32>(32u))) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 18u)], global2[_wgslsmith_index_u32(1u, 18u)], 4294967295u, u_input.e), u_input.c | u_input.c) % vec4<u32>(32u)), Struct_2(26803u, Struct_1(abs(u_input.e), !global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 18u)], 28u)], -41944i, u_input.a | vec3<i32>(u_input.b.x, -1i, u_input.a.x), _wgslsmith_f_op_f32(min(-466f, var_2.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, -993f, 579f))), vec4<u32>(_wgslsmith_clamp_u32(21165u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 18u)], 18u)], 18u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(11084u, 18u)], 18u)]), _wgslsmith_dot_vec2_u32(u_input.c.yx, u_input.c.xy), ~8256u, global2[_wgslsmith_index_u32(38664u, 18u)] << (u_input.c.x % 32u)), 31073u), _wgslsmith_f_op_f32(step(1797f, -763f))).b.b, !(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~u_input.c.x, 18u)], 28u)] && global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), u_input.c.xw), 28u)]), true);
    var var_4 = any(vec4<bool>(!var_3, true || (var_2.x >= -2443f), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(4159u, 18u)] ^ 4926u, firstLeadingBit(_wgslsmith_div_u32(4294967295u, u_input.c.x))), 28u)], _wgslsmith_f_op_f32(_wgslsmith_div_f32(1322f, 1582f) - _wgslsmith_f_op_f32(var_2.x - 584f)) > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, var_2.x))));
    var_0 = _wgslsmith_dot_vec2_u32(u_input.c.zz | _wgslsmith_sub_vec2_u32(firstTrailingBit(_wgslsmith_div_vec2_u32(vec2<u32>(60605u, 39327u), vec2<u32>(global2[_wgslsmith_index_u32(14308u, 18u)], global2[_wgslsmith_index_u32(2407u, 18u)]))), select(~u_input.c.zy, select(vec2<u32>(1u, 48199u), u_input.c.xw, vec2<bool>(true, true)), var_3)), func_2(~_wgslsmith_clamp_vec4_u32(u_input.c, vec4<u32>(7137u, global2[_wgslsmith_index_u32(2502u, 18u)], u_input.e, 0u), u_input.c), Struct_2(1u, func_2(u_input.c, Struct_2(55904u, Struct_1(u_input.d, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(43974u, 18u)], 28u)], u_input.b.x, global1[_wgslsmith_index_u32(4294967295u, 17u)], var_2.x), vec4<f32>(-926f, 114f, 1181f, 799f), u_input.c, 27201u), var_2.x).b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(999f, 189f, var_2.x, 2183f)), func_2(u_input.c, Struct_2(23410u, Struct_1(global2[_wgslsmith_index_u32(14774u, 18u)], var_3, u_input.b.x, vec3<i32>(-1i, u_input.a.x, u_input.b.x), var_2.x), vec4<f32>(-120f, -121f, 584f, var_2.x), vec4<u32>(0u, 88918u, u_input.e, global2[_wgslsmith_index_u32(4294967295u, 18u)]), 48416u), var_2.x).d, 1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-183f)) + var_2.x)).d.yz | u_input.c.ww);
    var var_5 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, -348f, 213f, var_2.x) + vec4<f32>(var_2.x, 779f, -771f, var_2.x)), vec4<f32>(1479f, 883f, var_2.x, var_2.x))))), select(reverseBits(u_input.c.xx), vec2<u32>(reverseBits(u_input.e), 4294967295u ^ _wgslsmith_sub_u32(u_input.e, global2[_wgslsmith_index_u32(3193u, 18u)])), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.c.xwx, ~u_input.c.zzz), 28u)]), var_2.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, select(38503u, 4294967295u, true), 69744u, ~0u), u_input.c), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(func_3()), -407f)), vec4<f32>(_wgslsmith_f_op_f32(-374f + _wgslsmith_f_op_f32(round(var_2.x))), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(var_2.x + var_2.x)), global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(2442u, 18u)] >> (~_wgslsmith_dot_vec3_u32(u_input.c.xwy, u_input.c.xww) % 32u), 28u)])));
}

