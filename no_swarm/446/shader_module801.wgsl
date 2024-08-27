struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
    c: Struct_2,
    d: Struct_2,
    e: vec2<i32>,
}

struct Struct_4 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<u32>,
    c: f32,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
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

var<private> global0: f32;

var<private> global1: array<bool, 6>;

var<private> global2: array<i32, 20> = array<i32, 20>(2635i, i32(-2147483648), 2147483647i, 1i, -8760i, -31024i, 1i, 2147483647i, 0i, -3154i, 21220i, 2147483647i, -45265i, -16441i, -1i, -21524i, 2369i, -62150i, -31838i, 2387i);

var<private> global3: array<vec3<u32>, 24>;

var<private> global4: u32 = 46510u;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<u32>, arg_1: u32, arg_2: vec4<u32>, arg_3: vec3<u32>) -> f32 {
    let var_0 = max(_wgslsmith_dot_vec2_u32(~abs(abs(vec2<u32>(34707u, arg_0.x))), firstLeadingBit(firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.x, 46469u), u_input.d)))), ~(~_wgslsmith_mod_u32(_wgslsmith_mult_u32(arg_3.x, 48619u), _wgslsmith_mod_u32(1u, arg_3.x))));
    let var_1 = Struct_4(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(arg_2.x, 0u), ~arg_2.x) & arg_3.yz, arg_3.xy), vec2<i32>(-_wgslsmith_add_i32(~1i, countOneBits(0i)), -33867i));
    let var_2 = Struct_1(-2092f, _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(var_0, _wgslsmith_clamp_u32(0u, var_0, arg_2.x)), min(_wgslsmith_mult_u32(1u, 24000u), max(arg_2.x, 20624u))), ~(~(~arg_3.xy)), ~_wgslsmith_div_vec2_u32(arg_3.yx, arg_3.yz) >> ((_wgslsmith_div_vec2_u32(u_input.a.xz, arg_3.zz) >> (arg_0.yx % vec2<u32>(32u))) % vec2<u32>(32u))), -271f);
    global4 = _wgslsmith_dot_vec3_u32(firstTrailingBit(select(firstTrailingBit(~vec3<u32>(4294967295u, 1u, 1u)), ~arg_0, false)), select(abs(vec3<u32>(var_1.a, 4294967295u, u_input.a.x)) >> (vec3<u32>(0u, arg_1 >> (1u % 32u), u_input.a.x) % vec3<u32>(32u)), arg_2.xzz >> (~max(vec3<u32>(34485u, arg_3.x, var_0), vec3<u32>(0u, var_0, arg_1)) % vec3<u32>(32u)), select(!vec3<bool>(global1[_wgslsmith_index_u32(arg_0.x, 6u)], global1[_wgslsmith_index_u32(0u, 6u)], false), !vec3<bool>(global1[_wgslsmith_index_u32(arg_3.x, 6u)], global1[_wgslsmith_index_u32(41950u, 6u)], global1[_wgslsmith_index_u32(arg_2.x, 6u)]), global1[_wgslsmith_index_u32(arg_3.x, 6u)])));
    let var_3 = Struct_2(Struct_1(var_2.a, ~(~vec2<u32>(u_input.a.x, arg_3.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-582f))))), var_2, var_2);
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(var_3.c.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)))), global1[_wgslsmith_index_u32(select(_wgslsmith_add_u32(~arg_2.x, 44197u), 0u, global1[_wgslsmith_index_u32(~18267u, 6u)]), 6u)]))));
}

fn func_2(arg_0: Struct_5, arg_1: i32, arg_2: vec4<f32>, arg_3: i32) -> Struct_4 {
    global3 = array<vec3<u32>, 24>();
    let var_0 = _wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(firstTrailingBit(arg_0.b.x ^ u_input.a.x), firstLeadingBit(u_input.d.x) & 80789u), _wgslsmith_mod_u32(~countOneBits(arg_0.b.x), 1u)), ~u_input.b);
    let var_1 = max(arg_0.b.x, countOneBits(~var_0 ^ _wgslsmith_dot_vec4_u32(vec4<u32>(var_0, arg_0.a.b.x, 0u, u_input.b), max(vec4<u32>(var_0, 4048u, arg_0.e.c.b.x, 1u), vec4<u32>(31053u, arg_0.a.b.x, 48293u, 18215u)))));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-523f + arg_0.e.b.c), firstTrailingBit(vec2<u32>(3549u, 15515u)), _wgslsmith_f_op_f32(func_3(vec3<u32>(_wgslsmith_mult_u32(50896u, 49163u), _wgslsmith_add_u32(22947u, var_0), arg_0.a.b.x), ~(~var_0), arg_0.b, vec3<u32>(var_0, u_input.a.x, 29685u) ^ vec3<u32>(var_0, 1u, var_0)))), arg_0.a, Struct_1(977f, _wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(51840u, u_input.d.x) & arg_0.e.a.b), vec2<u32>(~u_input.a.x, u_input.d.x)), -398f));
    let var_3 = arg_0.c;
    return Struct_4(abs(var_0), reverseBits(_wgslsmith_add_vec2_i32(abs(-vec2<i32>(-2147483647i, 2147483647i)), vec2<i32>(-1i, -1i))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_5, arg_3: i32) -> vec2<f32> {
    let var_0 = vec2<bool>(true, all(select(vec4<bool>(true, true, any(vec3<bool>(arg_2.d, arg_2.d, false)), all(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 6u)], arg_2.d, global1[_wgslsmith_index_u32(u_input.d.x, 6u)]))), !vec4<bool>(global1[_wgslsmith_index_u32(arg_0.a, 6u)], arg_2.d, arg_2.d, true), !select(vec4<bool>(true, true, global1[_wgslsmith_index_u32(1u, 6u)], arg_2.d), vec4<bool>(arg_2.d, global1[_wgslsmith_index_u32(arg_2.a.b.x, 6u)], global1[_wgslsmith_index_u32(4213u, 6u)], false), vec4<bool>(arg_2.d, false, true, arg_2.d)))));
    global1 = array<bool, 6>();
    let var_1 = Struct_5(Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.c, -558f)) * 1f), 507f, any(vec3<bool>(true, true, true)))), arg_1.b, -523f), firstLeadingBit(select(~_wgslsmith_clamp_vec4_u32(vec4<u32>(22281u, 9891u, arg_0.a, 0u), vec4<u32>(arg_0.a, 19487u, 4294967295u, arg_2.b.x), vec4<u32>(112360u, 17148u, 0u, arg_2.e.a.b.x)), vec4<u32>(arg_2.e.c.b.x, arg_1.b.x | 54389u, max(27909u, 0u), arg_0.a), select(!vec4<bool>(arg_2.d, global1[_wgslsmith_index_u32(12580u, 6u)], true, false), !vec4<bool>(false, arg_2.d, global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(arg_2.a.b.x, 6u)]), arg_2.a.a <= -2096f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.c) + _wgslsmith_f_op_f32(1588f + 615f)))) * _wgslsmith_f_op_f32(floor(-131f))), any(select(vec2<bool>(arg_2.d, true), select(vec2<bool>(false, false), vec2<bool>(false, global1[_wgslsmith_index_u32(arg_1.b.x, 6u)]), var_0), !var_0)) && false, Struct_2(Struct_1(arg_1.c, ~u_input.a.xy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c))), Struct_1(_wgslsmith_f_op_f32(-arg_2.c), max(vec2<u32>(arg_1.b.x, 1161u), _wgslsmith_add_vec2_u32(vec2<u32>(arg_0.a, 4294967295u), vec2<u32>(arg_0.a, 1u))), arg_1.a), arg_2.a));
    let var_2 = all(select(!(!select(var_0, vec2<bool>(true, arg_2.d), vec2<bool>(global1[_wgslsmith_index_u32(var_1.a.b.x, 6u)], global1[_wgslsmith_index_u32(60853u, 6u)]))), vec2<bool>(all(!vec3<bool>(var_0.x, false, arg_2.d)), !all(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 6u)], true, true))), !(!var_0)));
    global4 = func_2(Struct_5(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c)), ~_wgslsmith_add_vec2_u32(var_1.e.c.b, u_input.d), arg_2.c), ~vec4<u32>(63628u, arg_1.b.x, ~u_input.a.x, _wgslsmith_add_u32(1668u, 46718u)), _wgslsmith_f_op_f32(arg_2.e.c.a * _wgslsmith_f_op_f32(select(255f, -285f, true))), true, var_1.e), 10326i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.e.a.c, 1000f, arg_2.e.c.c, 1000f))) - vec4<f32>(var_1.a.c, arg_2.a.c, _wgslsmith_f_op_f32(753f * var_1.e.a.a), _wgslsmith_f_op_f32(-843f * 474f)))), _wgslsmith_mult_i32(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(59618i, arg_3, -13733i, -20778i) & vec4<i32>(global2[_wgslsmith_index_u32(arg_1.b.x, 20u)], -2136i, 0i, -2147483647i), vec4<i32>(-1i, u_input.c, -2147483647i, arg_0.b.x))), arg_0.b.x)).a;
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_3(~firstLeadingBit(vec3<u32>(23271u, 1u, 1u)), 43095u, _wgslsmith_sub_vec4_u32(vec4<u32>(112667u, 0u, arg_0.a, 4294967295u), select(vec4<u32>(25581u, var_1.a.b.x, 10678u, arg_1.b.x), arg_2.b, vec4<bool>(var_2, true, var_2, var_1.d))), ~vec3<u32>(4294967295u, 26375u, u_input.d.x))), 1159f));
}

fn func_5(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_5, arg_3: vec4<i32>) -> bool {
    var var_0 = arg_2.e;
    global2 = array<i32, 20>();
    let var_1 = vec4<i32>(27601i, global2[_wgslsmith_index_u32(abs(54619u), 20u)], ~(~2147483647i) & ((1i >> (u_input.d.x % 32u)) | (-2147483647i ^ arg_3.x)), -func_2(arg_2, i32(-1i) * -6319i, vec4<f32>(-2050f, 539f, -131f, arg_2.a.a), countOneBits(704i)).b.x) ^ ~(-vec4<i32>(~u_input.c, ~(-35465i), -global2[_wgslsmith_index_u32(var_0.b.b.x, 20u)], u_input.c));
    let var_2 = _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(-var_1, vec4<i32>(~4333i, _wgslsmith_sub_i32(var_1.x ^ u_input.c, u_input.c), _wgslsmith_dot_vec2_i32(arg_3.wy, arg_3.xz) & ~(-2147483647i), arg_3.x)), vec4<i32>(-1i) * -vec4<i32>(~arg_3.x, abs(arg_3.x), -u_input.c, _wgslsmith_add_i32(var_1.x, -2147483647i)));
    var var_3 = Struct_2(arg_2.a, Struct_1(-437f, min(reverseBits(vec2<u32>(arg_2.e.a.b.x, u_input.b)), vec2<u32>(var_0.a.b.x, 4294967295u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, arg_1)) + var_0.b.c)), var_0.a);
    return !(_wgslsmith_dot_vec3_i32(vec3<i32>(6462i, _wgslsmith_div_i32(-18509i, var_1.x), -2147483647i), arg_3.yyx) < func_2(arg_2, 0i, vec4<f32>(580f, -428f, _wgslsmith_f_op_f32(min(var_3.b.a, -103f)), var_3.b.a), -1i).b.x);
}

fn func_6(arg_0: i32, arg_1: bool) -> Struct_5 {
    var var_0 = Struct_5(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-790f + 423f)) * _wgslsmith_f_op_f32(sign(-930f))), u_input.a.zw, -2072f), vec4<u32>(u_input.a.x, 0u, ~(~5966u) | abs(max(u_input.b, 13638u)), ~u_input.a.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_4(Struct_4(u_input.d.x, vec2<i32>(arg_0, arg_0)), Struct_1(1111f, u_input.a.xw, -360f), Struct_5(Struct_1(-190f, u_input.a.xx, 2223f), vec4<u32>(1u, u_input.b, 67267u, u_input.a.x), -577f, arg_1, Struct_2(Struct_1(-1574f, vec2<u32>(u_input.a.x, 1u), 1092f), Struct_1(-1000f, u_input.d, 574f), Struct_1(-1323f, vec2<u32>(u_input.b, 25113u), 2337f))), 1i)).x - _wgslsmith_f_op_f32(1000f - _wgslsmith_div_f32(-580f, -1309f))))), true, Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(372f)) + _wgslsmith_f_op_f32(f32(-1f) * -1057f)), ~(u_input.a.zz | u_input.a.yy), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(785f, 1086f))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-700f)) - _wgslsmith_div_f32(2051f, -1736f)), u_input.a.xw, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -861f)))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-412f, -186f)), 650f), _wgslsmith_div_vec2_u32(u_input.a.zw, vec2<u32>(u_input.d.x, 4294967295u)) ^ u_input.a.xx, 289f)));
    var var_1 = !(!(!select(vec4<bool>(false, global1[_wgslsmith_index_u32(var_0.a.b.x, 6u)], true, var_0.d), select(vec4<bool>(arg_1, var_0.d, arg_1, true), vec4<bool>(var_0.d, true, true, var_0.d), vec4<bool>(arg_1, false, var_0.d, false)), !global1[_wgslsmith_index_u32(u_input.a.x, 6u)])));
    var var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1395f, _wgslsmith_f_op_f32(var_0.c * _wgslsmith_f_op_f32(sign(-1000f))), -747f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.c), var_0.c)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-405f, var_0.a.c, var_0.c, var_0.e.a.c) * vec4<f32>(var_0.c, -149f, var_0.e.b.c, var_0.c))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(892f, var_0.e.c.a, var_0.c, var_0.c)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.a, var_0.c, -1413f, var_0.a.c))))))))));
    var var_3 = var_0.b;
    var var_4 = _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(-vec2<i32>(arg_0, ~2147483647i), _wgslsmith_mult_vec2_i32(select(_wgslsmith_mult_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(0u, 20u)], 0i), vec2<i32>(u_input.c, 44662i)), ~vec2<i32>(16270i, u_input.c), !var_1.zy), vec2<i32>(~arg_0, u_input.c))), vec2<i32>(~(abs(2147483647i) | _wgslsmith_div_i32(-2147483647i, global2[_wgslsmith_index_u32(var_0.a.b.x, 20u)])), arg_0));
    return Struct_5(Struct_1(_wgslsmith_f_op_f32(var_0.e.c.c - var_0.a.c), var_3.wy, _wgslsmith_f_op_f32(ceil(608f))), _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(max(vec4<u32>(var_0.e.a.b.x, var_0.b.x, 41529u, var_3.x), ~var_0.b), ~(~vec4<u32>(var_0.a.b.x, 33599u, 83453u, var_3.x))), u_input.a | min(vec4<u32>(var_3.x, 55385u, var_3.x, var_3.x) ^ u_input.a, ~u_input.a), ~(~u_input.a & u_input.a)), var_0.e.b.c, false, Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2.x, 2294f)) - _wgslsmith_f_op_f32(select(var_2.x, 158f, var_1.x))), u_input.a.zz, -766f), var_0.e.a, var_0.e.a));
}

fn func_1(arg_0: bool) -> Struct_1 {
    global2 = array<i32, 20>();
    var var_0 = ~_wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(global2[_wgslsmith_index_u32(1u, 20u)], global2[_wgslsmith_index_u32(49988u, 20u)], global2[_wgslsmith_index_u32(10613u, 20u)], global2[_wgslsmith_index_u32(u_input.b, 20u)]) & vec4<i32>(0i, global2[_wgslsmith_index_u32(4294967295u, 20u)], 1i, u_input.c)), ((vec4<i32>(-18712i, 0i, 1i, u_input.c) | vec4<i32>(global2[_wgslsmith_index_u32(102790u, 20u)], -1i, global2[_wgslsmith_index_u32(1u, 20u)], 23417i)) << (u_input.a % vec4<u32>(32u))) << ((vec4<u32>(0u, u_input.d.x, u_input.a.x, u_input.b) | (vec4<u32>(u_input.d.x, 0u, u_input.d.x, 11315u) << (u_input.a % vec4<u32>(32u)))) % vec4<u32>(32u)));
    let var_1 = _wgslsmith_f_op_f32(348f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-874f)) + _wgslsmith_f_op_f32(f32(-1f) * -990f)));
    let var_2 = func_6(var_0.x, func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(func_2(Struct_5(Struct_1(1442f, vec2<u32>(1u, u_input.b), 577f), vec4<u32>(76080u, 22509u, 4294967295u, u_input.b), var_1, true, Struct_2(Struct_1(var_1, u_input.d, var_1), Struct_1(var_1, u_input.d, -1068f), Struct_1(1253f, vec2<u32>(u_input.b, u_input.d.x), var_1))), u_input.c, vec4<f32>(-2459f, -904f, var_1, var_1), global2[_wgslsmith_index_u32(u_input.a.x, 20u)]), Struct_1(-1800f, u_input.d, var_1), Struct_5(Struct_1(var_1, u_input.a.yz, 1134f), u_input.a, var_1, global1[_wgslsmith_index_u32(4294967295u, 6u)], Struct_2(Struct_1(332f, u_input.a.yy, var_1), Struct_1(-1656f, vec2<u32>(26855u, 4294967295u), var_1), Struct_1(var_1, u_input.d, var_1))), ~u_input.c)) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1, 1334f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1), -774f)) - -483f), Struct_5(Struct_1(var_1, ~vec2<u32>(0u, 17568u), _wgslsmith_f_op_f32(-var_1)), min(u_input.a, vec4<u32>(1u, 15532u, u_input.a.x, 4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(851f, 108f))), any(!vec2<bool>(true, arg_0)), Struct_2(Struct_1(var_1, u_input.d, -1395f), Struct_1(-2311f, vec2<u32>(u_input.d.x, u_input.a.x), var_1), Struct_1(-2022f, u_input.d, var_1))), vec4<i32>(-58269i, 0i, ~abs(var_0.x), 1i)));
    var var_3 = _wgslsmith_f_op_f32(-var_2.c);
    return Struct_1(_wgslsmith_f_op_f32(trunc(var_2.e.c.c)), ~u_input.d, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-1000f, -2024f, var_2.d)))))))));
}

fn func_7(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_2) -> Struct_4 {
    let var_0 = select(vec2<bool>(select(any(select(vec4<bool>(global1[_wgslsmith_index_u32(0u, 6u)], global1[_wgslsmith_index_u32(arg_2.a.b.x, 6u)], true, global1[_wgslsmith_index_u32(arg_1.b.x, 6u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 6u)], false, global1[_wgslsmith_index_u32(arg_1.b.x, 6u)], global1[_wgslsmith_index_u32(u_input.a.x, 6u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.d.x, 6u)], global1[_wgslsmith_index_u32(0u, 6u)], global1[_wgslsmith_index_u32(u_input.d.x, 6u)]))), arg_1.b.x > ~4294967295u, global1[_wgslsmith_index_u32(30931u, 6u)]), true), select(vec2<bool>(true, any(vec3<bool>(false, false, true))), vec2<bool>(true, !(global2[_wgslsmith_index_u32(104074u, 20u)] < 11594i)), !any(select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 6u)], global1[_wgslsmith_index_u32(u_input.b, 6u)], true), vec3<bool>(global1[_wgslsmith_index_u32(32739u, 6u)], false, global1[_wgslsmith_index_u32(arg_2.b.b.x, 6u)]), false))), func_6(countOneBits(-reverseBits(2147483647i)), global1[_wgslsmith_index_u32(firstLeadingBit(max(1810u, 2199u) >> (func_6(u_input.c, true).e.b.b.x % 32u)), 6u)]).d);
    var var_1 = Struct_2(func_6(13796i, _wgslsmith_mod_u32(~arg_2.b.b.x, arg_2.a.b.x) <= (countOneBits(1u) << ((35710u & arg_1.b.x) % 32u))).a, arg_2.c, Struct_1(348f, arg_2.b.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(vec3<u32>(48576u, arg_2.b.b.x, u_input.b), ~1u, ~vec4<u32>(u_input.d.x, arg_1.b.x, 22256u, arg_2.c.b.x), vec3<u32>(7086u, arg_1.b.x, arg_2.b.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.c)) - _wgslsmith_f_op_f32(-arg_2.c.a))))));
    var var_2 = u_input.c;
    var var_3 = countOneBits(u_input.c);
    var var_4 = _wgslsmith_dot_vec3_i32(-firstTrailingBit(~vec3<i32>(-40550i, -25702i, u_input.c)), vec3<i32>(-firstTrailingBit(global2[_wgslsmith_index_u32(1u, 20u)] << (u_input.a.x % 32u)), -max(global2[_wgslsmith_index_u32(77458u, 20u)], -1207i) >> (arg_1.b.x % 32u), i32(-1i) * -_wgslsmith_add_i32(u_input.c, 1i)));
    return func_2(Struct_5(arg_1, ~abs(max(vec4<u32>(arg_2.c.b.x, u_input.d.x, 1u, arg_1.b.x), u_input.a)), 114f, global1[_wgslsmith_index_u32(func_2(func_6(_wgslsmith_dot_vec4_i32(vec4<i32>(-29251i, global2[_wgslsmith_index_u32(4294967295u, 20u)], global2[_wgslsmith_index_u32(arg_1.b.x, 20u)], 63269i), vec4<i32>(2147483647i, -2147483647i, 22631i, global2[_wgslsmith_index_u32(u_input.b, 20u)])), false), 33783i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-733f, -1559f, arg_0.x, -1000f), vec4<f32>(1624f, -213f, arg_1.c, 674f), true)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -702f, -101f, 2571f) + vec4<f32>(arg_0.x, 936f, arg_0.x, arg_1.c))), -global2[_wgslsmith_index_u32(1u, 20u)]).a, 6u)], func_6(u_input.c, all(select(vec4<bool>(false, true, global1[_wgslsmith_index_u32(arg_2.c.b.x, 6u)], global1[_wgslsmith_index_u32(57460u, 6u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 6u)], true, false, var_0.x), true))).e), (global2[_wgslsmith_index_u32(~34391u, 20u)] << (~43542u % 32u)) >> (~10458u % 32u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2525f, arg_0.x, 590f, arg_0.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(592f, -848f, arg_0.x, 2432f), vec4<f32>(751f, 754f, -767f, -2337f)))))), ~max(2147483647i, _wgslsmith_mult_i32(~0i, ~(-52456i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(vec2<f32>(-677f, _wgslsmith_f_op_f32(-704f - _wgslsmith_f_op_f32(373f * _wgslsmith_f_op_f32(f32(-1f) * -629f)))), func_1(global1[_wgslsmith_index_u32(countOneBits(u_input.b), 6u)]), Struct_2(Struct_1(1756f, ~(u_input.a.wx << (vec2<u32>(u_input.b, 81709u) % vec2<u32>(32u))), -872f), func_6(u_input.c, !(!global1[_wgslsmith_index_u32(52069u, 6u)])).a, func_6(1i, true).a));
    let var_1 = Struct_4(~_wgslsmith_dot_vec3_u32(u_input.a.wyz, vec3<u32>(func_7(vec2<f32>(404f, 1033f), Struct_1(-546f, u_input.a.zz, -170f), Struct_2(Struct_1(467f, vec2<u32>(var_0.a, u_input.b), 288f), Struct_1(-1404f, u_input.d, -715f), Struct_1(1000f, u_input.d, -300f))).a, 1u, 0u << (var_0.a % 32u))), min(var_0.b, var_0.b));
    var var_2 = true;
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec2_f32(func_4(var_1, Struct_1(-663f, vec2<u32>(77657u, 16728u), 818f), Struct_5(Struct_1(1094f, vec2<u32>(u_input.d.x, var_1.a), -588f), vec4<u32>(var_1.a, 0u, u_input.b, u_input.d.x), -879f, global1[_wgslsmith_index_u32(7749u, 6u)], Struct_2(Struct_1(600f, vec2<u32>(4294967295u, 4294967295u), 120f), Struct_1(-1000f, vec2<u32>(4294967295u, 1u), 551f), Struct_1(-642f, vec2<u32>(0u, var_1.a), 735f))), -977i)).x))), -137f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(373f + 1157f))), _wgslsmith_f_op_f32(func_1(!global1[_wgslsmith_index_u32(var_1.a, 6u)]).a * -194f)));
    global2 = array<i32, 20>();
    let var_4 = abs(func_7(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(870f, -945f))), func_6(-2147483647i, global1[_wgslsmith_index_u32(~var_1.a, 6u)]).a, Struct_2(func_1(global1[_wgslsmith_index_u32(4294967295u, 6u)]), Struct_1(var_3.x, vec2<u32>(u_input.b, var_1.a), var_3.x), func_6(u_input.c, global1[_wgslsmith_index_u32(1u, 6u)]).a)).a) ^ u_input.b;
    let var_5 = _wgslsmith_dot_vec4_i32(vec4<i32>(max(firstTrailingBit(~var_0.b.x), u_input.c), 1i, var_0.b.x, u_input.c), select(~(~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, 0i, u_input.c, 1i), vec4<i32>(-2147483647i, -1756i, 2147483647i, 0i), vec4<i32>(global2[_wgslsmith_index_u32(var_1.a, 20u)], var_1.b.x, u_input.c, 1i))), max(max(vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 20u)], 33614i, var_1.b.x, u_input.c), vec4<i32>(var_0.b.x, -2147483647i, 2147483647i, var_1.b.x)), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(-52858i, var_0.b.x, u_input.c, -2147483647i), vec4<i32>(-3701i, global2[_wgslsmith_index_u32(var_4, 20u)], 2147483647i, -3693i), vec4<i32>(5263i, -3193i, -2147483647i, 2147483647i))), vec4<bool>(all(vec3<bool>(false, global1[_wgslsmith_index_u32(0u, 6u)], false)), global1[_wgslsmith_index_u32(~countOneBits(u_input.a.x), 6u)], all(select(vec3<bool>(true, global1[_wgslsmith_index_u32(72785u, 6u)], true), vec3<bool>(false, global1[_wgslsmith_index_u32(var_0.a, 6u)], global1[_wgslsmith_index_u32(0u, 6u)]), false)), any(!vec3<bool>(true, global1[_wgslsmith_index_u32(49230u, 6u)], true)))));
    var var_6 = ~var_4 << (~((4294967295u ^ func_2(Struct_5(Struct_1(1107f, vec2<u32>(22209u, u_input.b), -1436f), u_input.a, -519f, true, Struct_2(Struct_1(202f, vec2<u32>(33131u, 21945u), var_3.x), Struct_1(var_3.x, vec2<u32>(var_0.a, 14175u), var_3.x), Struct_1(-1000f, vec2<u32>(41696u, 2783u), var_3.x))), global2[_wgslsmith_index_u32(4294967295u, 20u)], vec4<f32>(427f, var_3.x, var_3.x, var_3.x), -14079i).a) ^ max(u_input.b, 4294967295u)) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

