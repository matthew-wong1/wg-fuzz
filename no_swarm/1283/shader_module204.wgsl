struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec4<bool>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: u32,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: u32,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 12>;

var<private> global1: vec3<i32> = vec3<i32>(-14421i, 2147483647i, -32077i);

var<private> global2: array<f32, 8>;

var<private> global3: u32;

var<private> global4: array<i32, 5>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>) -> bool {
    var var_0 = select(arg_0.c, !arg_0.c, true);
    global3 = firstTrailingBit(29113u);
    var var_1 = vec2<i32>(~62555i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -abs(global4[_wgslsmith_index_u32(1u, 5u)]), max(max(global1.x, -2147483647i), global4[_wgslsmith_index_u32(~arg_1.x, 5u)]), -1i), vec4<i32>(countOneBits(global4[_wgslsmith_index_u32(~arg_1.x, 5u)]), i32(-1i) * -43642i, global1.x, global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, arg_1.x), 5u)])));
    global3 = _wgslsmith_div_u32(arg_1.x, _wgslsmith_div_u32(81614u, arg_1.x));
    let var_2 = arg_0.d.x;
    return any(select(arg_0.c.wzw, select(select(arg_0.a.a, !vec3<bool>(false, true, arg_0.a.a.x), !var_0.x), global0[_wgslsmith_index_u32(min(reverseBits(0u), arg_1.x), 12u)], true), all(var_0.yw)));
}

fn func_2(arg_0: i32, arg_1: vec4<f32>, arg_2: vec4<bool>, arg_3: Struct_1) -> u32 {
    global2 = array<f32, 8>();
    let var_0 = vec2<bool>(!arg_2.x || !arg_2.x, !arg_2.x);
    var var_1 = min(~abs(4294967295u), 4294967295u);
    var var_2 = 0i;
    var var_3 = Struct_2(Struct_1(vec3<bool>(func_3(Struct_2(arg_3, vec2<bool>(arg_2.x, true), arg_2, arg_1), reverseBits(vec4<u32>(u_input.a, u_input.a, 10696u, 3633u))), arg_2.x, any(arg_2)), -2007f), !(!select(!vec2<bool>(var_0.x, var_0.x), !vec2<bool>(arg_3.a.x, true), !vec2<bool>(var_0.x, false))), !select(select(!vec4<bool>(false, true, var_0.x, false), !arg_2, vec4<bool>(true, var_0.x, true, arg_3.a.x)), arg_2, false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1)));
    return countOneBits(u_input.a);
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: Struct_1) -> i32 {
    let var_0 = Struct_3(~(~func_2(250i, vec4<f32>(-260f, -1608f, -2542f, 1000f), vec4<bool>(false, arg_1, false, true), Struct_1(vec3<bool>(false, true, arg_2.a.x), -272f))) >> ((func_2(1i, _wgslsmith_f_op_vec4_f32(vec4<f32>(503f, global2[_wgslsmith_index_u32(u_input.a, 8u)], arg_2.b, arg_2.b) + vec4<f32>(-1106f, 788f, -1523f, -897f)), !vec4<bool>(true, false, arg_2.a.x, false), Struct_1(vec3<bool>(true, true, arg_1), 934f)) | 0u) % 32u));
    let var_1 = -1000f;
    let var_2 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-397f + var_1) * _wgslsmith_f_op_f32(max(var_1, var_1))) * -1000f), 840f, _wgslsmith_f_op_f32(abs(-1092f)), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.a << (var_0.a % 32u), ~abs(u_input.a)), 8u)]), global1.zz, 111820u, Struct_3(var_0.a));
    let var_3 = ~(~(_wgslsmith_add_u32(53796u, 44188u) | var_0.a) ^ ~1u);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(1648f, var_2.a.x)))));
    return var_2.b.x & global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(16816u & var_2.c, ~(var_0.a & var_3)), 5u)];
}

fn func_4(arg_0: i32, arg_1: vec3<u32>, arg_2: vec2<i32>) -> Struct_4 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-461f, -1025f, 373f, global2[_wgslsmith_index_u32(1u, 8u)]))), _wgslsmith_f_op_vec4_f32(vec4<f32>(682f, -401f, -1540f, global2[_wgslsmith_index_u32(arg_1.x, 8u)]) + vec4<f32>(global2[_wgslsmith_index_u32(u_input.a, 8u)], global2[_wgslsmith_index_u32(u_input.a, 8u)], global2[_wgslsmith_index_u32(4294967295u, 8u)], 383f))) - vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 8u)], _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a, 8u)] * global2[_wgslsmith_index_u32(43026u, 8u)]), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 8u)]), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 8u)]))))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2[_wgslsmith_index_u32((u_input.a | 72580u) >> (u_input.a % 32u), 8u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-953f)) - global2[_wgslsmith_index_u32(~3618u, 8u)]), global2[_wgslsmith_index_u32((arg_1.x ^ 30777u) ^ u_input.a, 8u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(55284u, 8u)]))))));
    let var_1 = Struct_2(Struct_1(!(!(!global0[_wgslsmith_index_u32(u_input.a, 12u)])), var_0.x), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), !select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true))), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), !(true & any(vec4<bool>(true, false, true, true)))), select(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), false), any(vec4<bool>(true, true, false, false))), select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true)), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false)), true), vec4<bool>(global1.x != -34956i, true, 4294967295u == arg_1.x, global1.x != arg_0)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(false, false, any(vec3<bool>(false, false, true)), true)), select(vec4<bool>(true, arg_1.x != u_input.a, false, true), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), true)))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(248f - 1811f)), 1628f)), var_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(1344f)), _wgslsmith_f_op_f32(-var_0.x))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(890f * _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(arg_1.x, 8u)])))))));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 8u)] - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(721f, _wgslsmith_f_op_f32(abs(499f)))))), 3206f);
    global2 = array<f32, 8>();
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(67995u, 8u)] - -1277f), _wgslsmith_f_op_f32(var_1.d.x + var_1.d.x), var_1.a.a.x)))), -385f);
    return Struct_4(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(select(-413f, global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, arg_1.x), vec4<u32>(19591u, 0u, 24674u, 58490u))), 8u)], select(var_1.b.x, func_3(var_1, vec4<u32>(u_input.a, 6994u, 1u, 0u)), var_1.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) * _wgslsmith_f_op_f32(min(804f, -201f))) - var_1.d.x), -537f), reverseBits(~(~arg_2 | ~vec2<i32>(-57212i, 11209i))), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(~_wgslsmith_clamp_u32(4294967295u, u_input.a, u_input.a), abs(_wgslsmith_sub_u32(arg_1.x, 50606u))), firstTrailingBit(~u_input.a & ~arg_1.x), 59796u), Struct_3(_wgslsmith_mult_u32((1u >> (0u % 32u)) | u_input.a, arg_1.x)));
}

fn func_5(arg_0: f32, arg_1: vec3<u32>, arg_2: bool, arg_3: Struct_4) -> StorageBuffer {
    let var_0 = 13132i;
    global1 = vec3<i32>(_wgslsmith_div_i32(0i, -16646i), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -global4[_wgslsmith_index_u32(u_input.a, 5u)], _wgslsmith_clamp_i32(global4[_wgslsmith_index_u32(103308u, 5u)], -13039i, global4[_wgslsmith_index_u32(arg_1.x, 5u)])), ~vec3<i32>(global4[_wgslsmith_index_u32(0u, 5u)], global1.x, 46871i) | firstTrailingBit(vec3<i32>(arg_3.b.x, -16817i, global4[_wgslsmith_index_u32(56504u, 5u)]))), _wgslsmith_clamp_i32(var_0, ~0i, ~0i)) | ~select(vec3<i32>(select(-5635i, global1.x, true), _wgslsmith_sub_i32(-35108i, -14374i), var_0), max(_wgslsmith_mult_vec3_i32(vec3<i32>(global1.x, arg_3.b.x, global1.x), vec3<i32>(global1.x, -1i, var_0)), vec3<i32>(-63919i, arg_3.b.x, -13770i) << (arg_1 % vec3<u32>(32u))), false);
    global0 = array<vec3<bool>, 12>();
    global0 = array<vec3<bool>, 12>();
    global0 = array<vec3<bool>, 12>();
    return StorageBuffer(_wgslsmith_dot_vec2_i32(firstTrailingBit(-(~global1.yy)), firstTrailingBit(select(max(global1.yx, vec2<i32>(54093i, arg_3.b.x)), vec2<i32>(arg_3.b.x, global1.x), true))), _wgslsmith_f_op_vec2_f32(arg_3.a.yx * arg_3.a.wy), ~(min(47639u, reverseBits(u_input.a)) & 0u), -_wgslsmith_dot_vec4_i32(~(-vec4<i32>(13094i, arg_3.b.x, 14605i, 0i)), _wgslsmith_clamp_vec4_i32(~vec4<i32>(var_0, arg_3.b.x, 0i, global4[_wgslsmith_index_u32(u_input.a, 5u)]), vec4<i32>(0i, var_0, arg_3.b.x, 17654i), vec4<i32>(0i, -57776i, 17704i, global4[_wgslsmith_index_u32(38846u, 5u)]))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, -385f, arg_3.a.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(1491f, arg_0, arg_3.a.x) * vec3<f32>(global2[_wgslsmith_index_u32(0u, 8u)], arg_0, arg_3.a.x))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(149f, arg_0, arg_0), vec3<f32>(1189f, -698f, 462f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.a.x, arg_0, arg_0))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 12>();
    global0 = array<vec3<bool>, 12>();
    let var_0 = vec3<i32>(-16501i, _wgslsmith_mult_i32(reverseBits(global1.x), 2147483647i), global4[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(u_input.a, 4294967295u, 53450u)), ~vec3<u32>(u_input.a, u_input.a, 1u))) ^ ~u_input.a, 5u)]);
    global1 = vec3<i32>(~global4[_wgslsmith_index_u32(u_input.a, 5u)], global4[_wgslsmith_index_u32(u_input.a, 5u)], var_0.x) << (firstTrailingBit(vec3<u32>(4294967295u, ~8740u, ~25519u) & vec3<u32>(4923u ^ u_input.a, u_input.a, _wgslsmith_sub_u32(1u, u_input.a))) % vec3<u32>(32u));
    global2 = array<f32, 8>();
    let x = u_input.a;
    s_output = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(30565u, 8u)]) + _wgslsmith_div_f32(-157f, 1444f)))) - _wgslsmith_f_op_f32(-310f + _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~u_input.a, 8u)]))), ~_wgslsmith_sub_vec3_u32(reverseBits(vec3<u32>(u_input.a, 18580u, u_input.a)), ~select(vec3<u32>(2937u, 59575u, 41444u), vec3<u32>(u_input.a, 3514u, 1u), true)), (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(770f - global2[_wgslsmith_index_u32(4294967295u, 8u)])) <= global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, 0u, u_input.a) >> (vec4<u32>(4294967295u, 5423u, 4294967295u, 35409u) % vec4<u32>(32u)), ~vec4<u32>(52353u, 0u, 0u, 40270u)), 8u)]) & true, func_4(func_1(_wgslsmith_clamp_i32(var_0.x, 0i, var_0.x) << (34753u % 32u), true, Struct_1(vec3<bool>(true, true, true), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a, 8u)] * 1249f))), firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(36921u, u_input.a, u_input.a), ~vec3<u32>(70214u, u_input.a, u_input.a))), _wgslsmith_clamp_vec2_i32(global1.zy ^ ~global1.zz, var_0.yx, ~(~var_0.yx))));
}

