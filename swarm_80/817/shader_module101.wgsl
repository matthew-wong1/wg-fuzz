struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 25>;

var<private> global1: array<f32, 24>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> vec2<u32> {
    var var_0 = ~(~(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.d, 19323u), vec2<u32>(4294967295u, 43254u)) << (arg_1.a.yy % vec2<u32>(32u))));
    global1 = array<f32, 24>();
    var var_1 = 41721i;
    let var_2 = _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(3157u, 24u)] - global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(~u_input.a, ~max(var_0.x, 1u)), 24u)]);
    let var_3 = arg_1;
    return ~max(_wgslsmith_sub_vec2_u32(var_3.e, vec2<u32>(reverseBits(u_input.d), 30960u)), _wgslsmith_mod_vec2_u32(~var_3.e ^ max(arg_1.a.zx, vec2<u32>(arg_1.c, 50336u)), _wgslsmith_sub_vec2_u32(~arg_1.e, ~var_3.e)));
}

fn func_2(arg_0: vec4<i32>, arg_1: u32, arg_2: vec2<f32>) -> Struct_1 {
    global0 = array<i32, 25>();
    var var_0 = ~(_wgslsmith_add_u32(u_input.d, _wgslsmith_add_u32(u_input.d, 30401u)) >> ((~arg_1 << (u_input.d % 32u)) % 32u)) < u_input.a;
    var var_1 = Struct_1(vec3<u32>(0u, 44996u, arg_1), true, 45084u, ~29020u, max(func_3(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), false), Struct_1(vec3<u32>(arg_1, 4294967295u, arg_1), true, arg_1, 4294967295u, vec2<u32>(63704u, 0u))), min(vec2<u32>(arg_1, arg_1), vec2<u32>(1u, arg_1) ^ vec2<u32>(37090u, 15435u))) << (vec2<u32>(~(2997u & arg_1), 0u) % vec2<u32>(32u)));
    var var_2 = Struct_1(var_1.a, var_1.b, ~arg_1, (1u >> (~_wgslsmith_dot_vec3_u32(var_1.a, vec3<u32>(0u, var_1.a.x, u_input.a)) % 32u)) >> (var_1.d % 32u), ~((abs(vec2<u32>(7689u, var_1.e.x)) >> (firstTrailingBit(var_1.e) % vec2<u32>(32u))) << (~abs(var_1.a.yx) % vec2<u32>(32u))));
    global1 = array<f32, 24>();
    return Struct_1(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(~u_input.a, var_2.e.x ^ u_input.d, select(var_2.a.x, var_1.c, true)), vec3<u32>(~1u, ~23410u, ~arg_1)), ~vec3<u32>(var_1.d ^ 41604u, select(var_2.e.x, u_input.d, true), var_1.d)), !var_1.b, var_1.e.x & 0u, u_input.d, ~var_2.e);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: u32, arg_3: Struct_1) -> f32 {
    global0 = array<i32, 25>();
    global0 = array<i32, 25>();
    let var_0 = ~0u != arg_0.c;
    let var_1 = vec3<u32>(arg_0.e.x, _wgslsmith_clamp_u32(func_3(vec4<bool>(true, true, true, true), arg_3).x, arg_2, ~(_wgslsmith_add_u32(19216u, 0u) >> (func_3(vec4<bool>(false, false, false, arg_0.b), arg_0).x % 32u))), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.e.x, ~arg_0.a.x ^ 4294967295u, _wgslsmith_mod_u32(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.a, 4294967295u), vec4<u32>(arg_2, 2218u, 1u, 22582u)))), ~_wgslsmith_mod_vec3_u32(vec3<u32>(76127u, 1u, 25505u), ~arg_3.a)));
    global0 = array<i32, 25>();
    return _wgslsmith_div_f32(-680f, -1109f);
}

fn func_5(arg_0: i32, arg_1: f32) -> bool {
    global1 = array<f32, 24>();
    let var_0 = func_2(max(-vec4<i32>(-50542i, global0[_wgslsmith_index_u32(u_input.d, 25u)], u_input.b, global0[_wgslsmith_index_u32(45920u, 25u)]), vec4<i32>(arg_0, ~global0[_wgslsmith_index_u32(74191u, 25u)], 1i, -31491i)) >> (~(~(~vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a))) % vec4<u32>(32u)), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.d, u_input.a, u_input.a), vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.a)) | abs(_wgslsmith_mult_u32(u_input.a, u_input.a))), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_4(func_2(vec4<i32>(arg_0, 1i, global0[_wgslsmith_index_u32(44316u, 25u)], 23480i), u_input.d, vec2<f32>(arg_1, 1263f)), true, _wgslsmith_add_u32(1u, 47988u), func_2(vec4<i32>(u_input.b, -2147483647i, -20135i, arg_0), u_input.d, vec2<f32>(1330f, -281f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(674f - global1[_wgslsmith_index_u32(u_input.a, 24u)]) + _wgslsmith_div_f32(arg_1, 332f)))), arg_1));
    var var_1 = func_2(_wgslsmith_add_vec4_i32(~_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, u_input.c, u_input.b, 41736i), vec4<i32>(1i, global0[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(var_0.d, 25u)], u_input.b)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, 0i, global0[_wgslsmith_index_u32(11454u, 25u)], global0[_wgslsmith_index_u32(1u, 25u)]), vec4<i32>(global0[_wgslsmith_index_u32(5143u, 25u)], -72433i, -1i, global0[_wgslsmith_index_u32(30691u, 25u)]))), max(~(~vec4<i32>(-1i, -46370i, 1i, -50360i)), reverseBits(firstLeadingBit(vec4<i32>(2147483647i, u_input.c, 9761i, global0[_wgslsmith_index_u32(4294967295u, 25u)]))))), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, ~26108u, firstTrailingBit(76285u)), select(~vec4<u32>(0u, 27278u, u_input.a, 29548u), firstTrailingBit(vec4<u32>(34013u, 4294967295u, u_input.d, u_input.a)), !vec4<bool>(var_0.b, var_0.b, var_0.b, false))) << (u_input.a % 32u), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1066f, _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(u_input.a, 24u)], arg_1))) * -572f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(var_0, true | var_0.b, _wgslsmith_sub_u32(u_input.d, u_input.a), func_2(vec4<i32>(44949i, global0[_wgslsmith_index_u32(6028u, 25u)], 2147483647i, 67669i), 3749u, vec2<f32>(460f, arg_1)))))));
    let var_2 = _wgslsmith_mod_vec4_i32(abs(min(vec4<i32>(arg_0, u_input.b, global0[_wgslsmith_index_u32(var_1.a.x, 25u)], 16378i) << (vec4<u32>(u_input.d, var_0.c, 4294967295u, 4294967295u) % vec4<u32>(32u)), firstTrailingBit(vec4<i32>(u_input.c, 30310i, u_input.b, 1i))) & ~firstLeadingBit(vec4<i32>(1i, -26501i, arg_0, 9686i))), ~(~(-vec4<i32>(1i, 2147483647i, 7563i, -75088i)) >> (vec4<u32>(var_1.a.x ^ 26847u, 27957u, firstLeadingBit(var_1.a.x), 1u) % vec4<u32>(32u))));
    let var_3 = any(vec3<bool>(var_0.a.x <= 4294967295u, !(!any(vec2<bool>(var_0.b, true))), true));
    return any(select(!vec3<bool>(!var_3, true, true), vec3<bool>(!var_3, var_3, _wgslsmith_f_op_f32(355f - -112f) <= global1[_wgslsmith_index_u32(20925u, 24u)]), true));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = select(!(_wgslsmith_div_f32(-790f, 497f) != arg_2.x), func_5(u_input.b, _wgslsmith_f_op_f32(func_4(func_2(~vec4<i32>(-24133i, -16405i, arg_1.x, -2147483647i), _wgslsmith_sub_u32(u_input.a, arg_0.x), vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 24u)], arg_2.x)), true, ~4294967295u, Struct_1(arg_0, any(vec4<bool>(true, false, false, true)), 1u, func_3(vec4<bool>(true, false, false, false), Struct_1(arg_0, false, arg_0.x, u_input.d, vec2<u32>(20284u, 37651u))).x, ~vec2<u32>(u_input.a, u_input.a))))), !(all(vec3<bool>(true, true, true)) | all(vec3<bool>(true, true, true))));
    let var_1 = arg_0.x;
    global0 = array<i32, 25>();
    global1 = array<f32, 24>();
    let var_2 = Struct_1(arg_0, var_0, arg_0.x, _wgslsmith_div_u32(var_1, 0u), select(vec2<u32>(_wgslsmith_div_u32(4294967295u, var_1), firstTrailingBit(var_1)), vec2<u32>(func_2(vec4<i32>(29309i, arg_1.x, u_input.c, arg_1.x), _wgslsmith_sub_u32(arg_0.x, var_1), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-175f, global1[_wgslsmith_index_u32(4294967295u, 24u)]))).d, ~(~4294967295u)), vec2<bool>((1u & var_1) <= ~u_input.d, false)));
    return func_2(firstLeadingBit(vec4<i32>(select(u_input.b, -1i, true), -74148i, arg_1.x, firstLeadingBit(arg_1.x)) & vec4<i32>(select(-1i, 4651i, var_0), reverseBits(1i), arg_1.x & -2137i, _wgslsmith_div_i32(global0[_wgslsmith_index_u32(60975u, 25u)], 1i))), 1u, arg_2.zy);
}

fn func_6(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: bool) -> vec3<f32> {
    global0 = array<i32, 25>();
    global0 = array<i32, 25>();
    let var_0 = _wgslsmith_sub_u32(reverseBits(u_input.d), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, ~4294967295u, max(arg_0.c, u_input.d), arg_0.d), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, arg_0.c, 1u), vec4<u32>(4294967295u, u_input.a, u_input.d, u_input.a)), _wgslsmith_add_u32(u_input.d, u_input.d), _wgslsmith_sub_u32(4294967295u, 45427u), 1708u | arg_0.c) ^ abs(vec4<u32>(481u, u_input.a, 0u, 0u) << (vec4<u32>(u_input.d, 4294967295u, 38904u, 0u) % vec4<u32>(32u)))));
    let var_1 = true;
    let var_2 = arg_0;
    return _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(692f, 1000f, arg_1.x) - arg_1.wxw)));
}

fn func_7(arg_0: bool, arg_1: vec3<f32>) -> Struct_1 {
    return func_2(select(abs(select(vec4<i32>(u_input.c, global0[_wgslsmith_index_u32(u_input.d, 25u)], 23016i, -13456i), vec4<i32>(u_input.c, global0[_wgslsmith_index_u32(u_input.d, 25u)], -6181i, 1i), true) << ((vec4<u32>(22803u, 34300u, u_input.a, u_input.d) >> (vec4<u32>(1u, 56291u, u_input.d, u_input.d) % vec4<u32>(32u))) % vec4<u32>(32u))), vec4<i32>(firstLeadingBit(1i), u_input.c, _wgslsmith_dot_vec4_i32(-vec4<i32>(1i, u_input.b, -27480i, global0[_wgslsmith_index_u32(u_input.d, 25u)]), -vec4<i32>(global0[_wgslsmith_index_u32(u_input.d, 25u)], 19992i, u_input.c, u_input.c)), -(global0[_wgslsmith_index_u32(4294967295u, 25u)] << (u_input.d % 32u))), select(vec4<bool>(false, !arg_0, false, false), vec4<bool>(true, !arg_0, arg_0, any(vec3<bool>(arg_0, true, arg_0))), true)), u_input.d, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1997f), arg_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 24>();
    let var_0 = _wgslsmith_sub_u32(~_wgslsmith_mod_u32(u_input.d, u_input.a), u_input.d);
    var var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(118244u, 24u)], 335f, global1[_wgslsmith_index_u32(u_input.d, 24u)])) - vec3<f32>(global1[_wgslsmith_index_u32(1u, 24u)], 1000f, 719f)), vec3<f32>(1581f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 24u)] - -323f), -568f)))), vec3<f32>(_wgslsmith_f_op_f32(-468f - 1420f), 225f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~(~u_input.d), 24u)]))));
    var var_2 = func_7(any(select(vec2<bool>(true, u_input.a < 0u), vec2<bool>(true, true), any(vec2<bool>(true, true)))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -813f), -1000f, global1[_wgslsmith_index_u32(select(u_input.a, var_0, true) << (~var_0 % 32u), 24u)]), _wgslsmith_f_op_vec3_f32(func_6(func_1(countOneBits(vec3<u32>(var_0, 1u, 72564u)), vec4<i32>(global0[_wgslsmith_index_u32(93170u, 25u)], u_input.c, -15124i, u_input.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(var_0, 24u)], -1976f, -1815f) + vec3<f32>(154f, 211f, global1[_wgslsmith_index_u32(22831u, 24u)]))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(723f, 112f, global1[_wgslsmith_index_u32(1u, 24u)], 354f) * vec4<f32>(var_1.x, global1[_wgslsmith_index_u32(7598u, 24u)], -310f, 938f)))), true)))));
    let var_3 = !(!vec3<bool>(var_2.b, true, true));
    var var_4 = Struct_1(~vec3<u32>(0u, var_0, _wgslsmith_sub_u32(var_0 | 22929u, firstTrailingBit(var_0))), !(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(u_input.a, 24u)], -149f, true)), 769f)) == _wgslsmith_f_op_f32(-var_1.x)), ~abs(_wgslsmith_dot_vec3_u32(abs(var_2.a), _wgslsmith_div_vec3_u32(var_2.a, vec3<u32>(1u, 1u, 0u)))), _wgslsmith_mod_u32(4294967295u, ~_wgslsmith_sub_u32(~4898u, var_2.e.x)), var_2.e);
    var var_5 = Struct_1(var_2.a << (~abs(var_2.a) % vec3<u32>(32u)), !((var_4.b || !var_4.b) && true), 4294967295u, 4294967295u, firstLeadingBit(~var_2.a.yz));
    global1 = array<f32, 24>();
    let var_6 = Struct_1(firstLeadingBit(var_2.a) & vec3<u32>(firstLeadingBit(4294967295u) & max(var_4.a.x, var_4.c), _wgslsmith_dot_vec2_u32(var_4.a.xz, var_5.a.xx) ^ ~u_input.d, _wgslsmith_div_u32(var_0, max(u_input.d, 4294967295u))), true, _wgslsmith_sub_u32(reverseBits(~(var_0 | var_4.d)), var_0), ~4294967295u, vec2<u32>(func_1(var_4.a, vec4<i32>(~u_input.b, u_input.c, _wgslsmith_mult_i32(-1i, u_input.c), ~6183i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, global1[_wgslsmith_index_u32(u_input.a, 24u)]))).e.x, 10292u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_i32(-(~(vec3<i32>(-33933i, global0[_wgslsmith_index_u32(81846u, 25u)], u_input.c) | vec3<i32>(-41541i, u_input.c, u_input.c))), max(vec3<i32>(-u_input.b, ~u_input.b, -2147483647i), ~vec3<i32>(u_input.b, u_input.c, -15272i))), reverseBits(vec3<i32>(_wgslsmith_mult_i32(0i, 2147483647i), -(0i | u_input.c), 9198i)), min(_wgslsmith_mod_u32(_wgslsmith_div_u32(var_6.c >> (1u % 32u), _wgslsmith_mod_u32(26535u, var_6.e.x)), 1u), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_4.d, var_2.c, 26894u, 1u) ^ ~vec4<u32>(var_4.a.x, var_6.e.x, 2786u, var_6.a.x), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 16708u, var_6.c, 16504u), vec4<u32>(var_5.a.x, var_2.d, u_input.a, 1u)) | _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, var_4.d, 1u, 15979u), vec4<u32>(u_input.a, var_4.e.x, var_5.e.x, 0u)))), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(abs(~var_2.c) | (u_input.a << (~var_0 % 32u)), 24u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_5.a.yy, vec2<u32>(var_4.a.x, 1u)), 24u)]))));
}

