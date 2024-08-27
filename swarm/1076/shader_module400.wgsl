struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec4<i32>,
    d: i32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<f32>,
    d: u32,
    e: u32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: vec4<u32>,
    d: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: Struct_2,
    d: Struct_4,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 27>;

var<private> global1: array<vec4<f32>, 26>;

var<private> global2: i32;

var<private> global3: array<Struct_3, 11>;

var<private> global4: array<f32, 6>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_4, arg_3: f32) -> bool {
    let var_0 = Struct_5(arg_2.a.b.b.c, !arg_2.a.d, Struct_2(arg_3, Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a.b.a, 343f, -1015f) * _wgslsmith_f_op_vec3_f32(-arg_2.a.b.c.xww)), true, reverseBits(arg_2.a.b.b.c), ~(~2147483647i), vec2<u32>(firstTrailingBit(85627u), 1u)), vec4<f32>(_wgslsmith_f_op_f32(-arg_2.a.b.b.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-683f, global4[_wgslsmith_index_u32(4294967295u, 6u)])) - _wgslsmith_div_f32(347f, global4[_wgslsmith_index_u32(16937u, 6u)])), _wgslsmith_div_f32(487f, _wgslsmith_f_op_f32(trunc(arg_2.a.b.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 + global4[_wgslsmith_index_u32(arg_2.a.c.x, 6u)]) * arg_2.a.b.b.a.x)), 0u >> (~(~1u) % 32u), 1u), Struct_4(arg_2.a), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(100f, -1818f, true)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(arg_2.a.b.b.e.x, 6u)] + global4[_wgslsmith_index_u32(arg_2.a.b.e, 6u)]))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(select(arg_2.a.b.b.a.x, -1264f, arg_1)), _wgslsmith_f_op_f32(ceil(arg_2.a.b.c.x)), _wgslsmith_f_op_f32(1470f * arg_3)), all(select(vec4<bool>(arg_2.a.b.b.b, arg_2.a.d.x, true, false), vec4<bool>(arg_2.a.d.x, arg_2.a.d.x, arg_2.a.d.x, arg_2.a.d.x), vec4<bool>(arg_1, arg_1, false, false))), vec4<i32>(_wgslsmith_clamp_i32(2147483647i, 34364i, 71568i), 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, arg_2.a.a.x, u_input.a.x), vec3<i32>(arg_2.a.b.b.d, u_input.a.x, -2147483647i)), _wgslsmith_mod_i32(1i, 2147483647i)), -1i & u_input.a.x, _wgslsmith_div_vec2_u32(u_input.b.zz << (vec2<u32>(u_input.d, arg_2.a.c.x) % vec2<u32>(32u)), arg_2.a.b.b.e)), vec4<f32>(-370f, _wgslsmith_f_op_f32(-1325f * arg_3), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(509f - -1000f)), _wgslsmith_f_op_f32(select(arg_3, _wgslsmith_div_f32(1344f, -349f), all(vec3<bool>(true, true, arg_1))))), ~(~11104u), ~28621u));
    return any(var_0.b);
}

fn func_2(arg_0: Struct_4, arg_1: u32, arg_2: Struct_2) -> vec4<bool> {
    let var_0 = _wgslsmith_div_f32(-198f, arg_0.a.b.b.a.x);
    var var_1 = -(i32(-1i) * -(~u_input.a.x));
    let var_2 = func_3(arg_0.a.b.b.e, _wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.c << (arg_2.d % 32u), 27536u), 4294967295u, ~arg_2.b.e.x) < ~28039u, Struct_4(arg_0.a), arg_0.a.b.a);
    global2 = _wgslsmith_sub_i32(select(_wgslsmith_mod_i32(2147483647i, _wgslsmith_add_i32(u_input.a.x, arg_2.b.c.x) << (_wgslsmith_div_u32(4294967295u, 4920u) % 32u)), 0i, true), ~(-(~_wgslsmith_dot_vec3_i32(vec3<i32>(33521i, u_input.a.x, -12609i), vec3<i32>(-2604i, 0i, arg_2.b.c.x)))));
    global2 = -2147483647i;
    return vec4<bool>(true, true, true, arg_0.a.b.b.b);
}

fn func_1(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_3) -> vec3<bool> {
    global3 = array<Struct_3, 11>();
    let var_0 = vec3<bool>(!(_wgslsmith_f_op_f32(abs(arg_2.b.b.a.x)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1086f * arg_2.b.c.x) * _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(arg_0.x, 6u)]))), all(!(!func_2(Struct_4(Struct_3(vec3<i32>(arg_2.b.b.c.x, -2147483647i, -2147483647i), arg_2.b, arg_2.c, arg_2.d)), arg_2.b.d, Struct_2(global4[_wgslsmith_index_u32(arg_2.c.x, 6u)], Struct_1(arg_2.b.c.wzw, true, vec4<i32>(u_input.a.x, -41306i, -7435i, u_input.a.x), arg_2.a.x, vec2<u32>(9824u, arg_2.c.x)), global1[_wgslsmith_index_u32(arg_2.c.x, 26u)], 65725u, 25657u)))), ((arg_2.b.b.b != arg_2.d.x) | all(func_2(Struct_4(global0[_wgslsmith_index_u32(0u, 27u)]), u_input.b.x, arg_2.b).xx)) & false);
    let var_1 = Struct_5(arg_2.b.b.c, vec2<bool>(!arg_1, !all(!vec2<bool>(arg_2.d.x, var_0.x))), arg_2.b, Struct_4(global3[_wgslsmith_index_u32(~(~(~3423u)), 11u)]), Struct_2(-1748f, arg_2.b.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(-837f, 1000f, -382f, -413f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1261f, 839f, arg_2.b.a, arg_2.b.a) * vec4<f32>(global4[_wgslsmith_index_u32(u_input.d, 6u)], 569f, -1024f, arg_2.b.c.x)))), ~arg_0.x, 1u | u_input.c));
    global4 = array<f32, 6>();
    var var_2 = select(vec4<i32>(-1i) * -arg_2.b.b.c, _wgslsmith_mod_vec4_i32(max(_wgslsmith_div_vec4_i32(select(var_1.c.b.c, vec4<i32>(u_input.a.x, var_1.e.b.c.x, u_input.a.x, arg_2.a.x), vec4<bool>(var_0.x, true, arg_2.b.b.b, true)), arg_2.b.b.c), arg_2.b.b.c), firstLeadingBit(firstLeadingBit(arg_2.b.b.c) & _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 7691i, arg_2.b.b.c.x), arg_2.b.b.c))), any(var_0));
    return select(var_0, func_2(Struct_4(Struct_3(vec3<i32>(arg_2.a.x, -15775i, 0i), var_1.e, vec4<u32>(arg_2.c.x, 62819u, 71172u, 1u) << (u_input.b % vec4<u32>(32u)), var_0.yz)), u_input.b.x, Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global4[_wgslsmith_index_u32(var_1.e.e, 6u)], 256f), arg_2.b.c.x, func_2(Struct_4(Struct_3(var_1.a.yxx, Struct_2(arg_2.b.a, Struct_1(arg_2.b.c.yzx, true, var_1.e.b.c, arg_2.a.x, vec2<u32>(19948u, u_input.d)), global1[_wgslsmith_index_u32(arg_0.x, 26u)], 4294967295u, 59269u), vec4<u32>(74199u, 1u, 4294967295u, 88358u), vec2<bool>(true, true))), 66972u, Struct_2(727f, arg_2.b.b, vec4<f32>(-1223f, -753f, -380f, arg_2.b.b.a.x), 8058u, u_input.c)).x)), Struct_1(vec3<f32>(global4[_wgslsmith_index_u32(91491u, 6u)], var_1.c.a, -1451f), var_1.c.b.b, select(vec4<i32>(-17607i, arg_2.a.x, var_2.x, arg_2.b.b.c.x), var_1.c.b.c, vec4<bool>(false, true, arg_2.d.x, arg_2.b.b.b)), arg_2.a.x << (1u % 32u), select(vec2<u32>(26300u, 1u), var_1.e.b.e, vec2<bool>(var_1.b.x, arg_1))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 415f, arg_2.b.c.x, 1204f)), _wgslsmith_div_u32(arg_0.x << (var_1.e.e % 32u), 11447u << (arg_2.b.e % 32u)), ~75313u)).xzx, var_0);
}

fn func_4(arg_0: u32, arg_1: vec3<bool>, arg_2: bool) -> Struct_1 {
    var var_0 = u_input.a.x << (4294967295u % 32u);
    var var_1 = Struct_4(global0[_wgslsmith_index_u32(114844u, 27u)]);
    var var_2 = var_1.a;
    var var_3 = Struct_3(vec3<i32>(_wgslsmith_clamp_i32(var_1.a.b.b.d, var_1.a.b.b.d, -reverseBits(u_input.a.x)), ~u_input.a.x, -reverseBits(var_2.b.b.d & -1i)), var_1.a.b, u_input.b, select(!func_1(var_1.a.c.zxz, false, var_1.a).zy, !(!var_1.a.d), select(!(!var_1.a.d), vec2<bool>(false, var_2.d.x | false), !var_2.d.x)));
    let var_4 = !arg_1;
    return var_2.b.b;
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: bool) -> Struct_2 {
    global4 = array<f32, 6>();
    var var_0 = vec4<bool>(false, arg_2, arg_0.b.b, !arg_0.b.b);
    var var_1 = Struct_3(arg_0.b.c.zxw & ~_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(arg_0.b.c.zzy, vec3<i32>(37042i, u_input.a.x, 5770i)), vec3<i32>(31594i, u_input.a.x, -94477i), vec3<i32>(-1i, u_input.a.x, -33486i)), Struct_2(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(103871u, 73405u), vec2<u32>(arg_1, u_input.b.x)) ^ ~(~u_input.d), 6u)], Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(260f, 147f, -354f)) - _wgslsmith_f_op_vec3_f32(arg_0.b.a + vec3<f32>(-307f, arg_0.b.a.x, global4[_wgslsmith_index_u32(arg_0.b.e.x, 6u)]))), true, vec4<i32>(-11376i, arg_0.b.c.x, -4804i, 28282i) | select(arg_0.b.c, vec4<i32>(0i, arg_0.b.d, -12317i, arg_0.b.d), vec4<bool>(arg_0.b.b, var_0.x, var_0.x, arg_2)), 0i, vec2<u32>(max(arg_1, 10079u), _wgslsmith_mod_u32(arg_0.d, 33793u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(1887u, 26u)] * vec4<f32>(-526f, 477f, global4[_wgslsmith_index_u32(1u, 6u)], arg_0.c.x)), _wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(40133u, 26u)])) - vec4<f32>(global4[_wgslsmith_index_u32(~1u, 6u)], 596f, 1017f, -1761f)), arg_1, countOneBits(~81227u)), vec4<u32>(select(40529u, u_input.c | arg_0.b.e.x, false), _wgslsmith_clamp_u32(~u_input.d ^ 0u, ~37271u, u_input.c), arg_1, _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.b.x, 4294967295u), 45937u)), !select(!(!var_0.yw), vec2<bool>(func_1(vec3<u32>(u_input.d, 29393u, 1u), arg_0.b.b, Struct_3(vec3<i32>(u_input.a.x, arg_0.b.d, 1i), arg_0, u_input.b, vec2<bool>(arg_2, arg_2))).x, !arg_0.b.b), func_1(_wgslsmith_mult_vec3_u32(u_input.b.yyz, vec3<u32>(2281u, arg_0.e, 12810u)), var_0.x, global3[_wgslsmith_index_u32(arg_1, 11u)]).zy));
    global4 = array<f32, 6>();
    let var_2 = vec3<u32>(_wgslsmith_dot_vec4_u32(~u_input.b, u_input.b), min(~abs(arg_0.b.e.x), 1u ^ _wgslsmith_sub_u32(var_1.b.d, 46595u)), arg_0.d) >> (var_1.c.zwz % vec3<u32>(32u));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(u_input.a.x, -1211i);
    global3 = array<Struct_3, 11>();
    var var_1 = _wgslsmith_div_f32(-187f, global4[_wgslsmith_index_u32(abs(17303u), 6u)]);
    let var_2 = countOneBits(52421i);
    global3 = array<Struct_3, 11>();
    let var_3 = Struct_3((~(~vec3<i32>(2147483647i, 15176i, u_input.a.x)) >> (_wgslsmith_div_vec3_u32(vec3<u32>(0u, 3702u, u_input.c) << (vec3<u32>(u_input.c, 4294967295u, u_input.d) % vec3<u32>(32u)), ~vec3<u32>(10613u, u_input.c, 26857u)) % vec3<u32>(32u))) ^ ~(~vec3<i32>(10786i, var_0.x, u_input.a.x)), func_5(Struct_2(-653f, func_4(~u_input.b.x, func_1(u_input.b.yzy, true, global0[_wgslsmith_index_u32(u_input.d, 27u)]), true), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global4[_wgslsmith_index_u32(1u, 6u)], 700f, global4[_wgslsmith_index_u32(4294967295u, 6u)], 330f), vec4<f32>(global4[_wgslsmith_index_u32(u_input.c, 6u)], global4[_wgslsmith_index_u32(u_input.c, 6u)], global4[_wgslsmith_index_u32(4294967295u, 6u)], global4[_wgslsmith_index_u32(0u, 6u)]), true)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global4[_wgslsmith_index_u32(u_input.d, 6u)], 407f, 362f, 571f)))), _wgslsmith_add_u32(func_4(1u, vec3<bool>(false, false, true), false).e.x, ~u_input.d), u_input.d), 5756u, func_4(1u, !select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false), 4294967295u != _wgslsmith_mult_u32(u_input.b.x, u_input.d)).b), ~u_input.b, select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), !func_1(vec3<u32>(50466u, u_input.d, u_input.d), false, global0[_wgslsmith_index_u32(u_input.b.x, 27u)]).yx), select(vec2<bool>(u_input.b.x < u_input.b.x, u_input.a.x != var_2), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), _wgslsmith_f_op_f32(sign(global4[_wgslsmith_index_u32(u_input.b.x, 6u)])) == global4[_wgslsmith_index_u32(~u_input.d, 6u)])));
    let var_4 = var_3.b.b.c.zy;
    var var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x);
}

