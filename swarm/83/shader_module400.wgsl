struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 24>;

var<private> global1: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(vec4<f32>(-656f, -1938f, 574f, -824f)), Struct_2(vec4<f32>(-716f, 312f, 322f, 702f)), Struct_2(vec4<f32>(161f, -1783f, 2602f, 455f)));

var<private> global2: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false));

var<private> global3: array<vec3<f32>, 6>;

var<private> global4: array<vec2<bool>, 6> = array<vec2<bool>, 6>(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = ~_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.c, u_input.b, u_input.c), ~vec3<u32>(u_input.c, u_input.b, u_input.b) >> (vec3<u32>(u_input.b, u_input.b, 23344u) % vec3<u32>(32u))), ~_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, u_input.b, 2845u), vec3<u32>(u_input.c, 1u, u_input.b)), vec3<u32>(u_input.c, u_input.c, 4294967295u) >> (vec3<u32>(72823u, u_input.b, 0u) % vec3<u32>(32u))));
    var var_1 = Struct_3(1583f);
    global2 = array<Struct_1, 15>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(481f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a, var_1.a)) + 1680f), arg_0.a)));
    global0 = array<Struct_2, 24>();
    return select(!(!select(!vec3<bool>(false, arg_0.a, true), !vec3<bool>(true, true, arg_0.a), true)), vec3<bool>(arg_0.a, false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.a)) - _wgslsmith_f_op_f32(-var_1.a)) > var_1.a), true);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1) -> vec4<u32> {
    var var_0 = ~countOneBits(~_wgslsmith_mod_vec2_u32(~vec2<u32>(1u, 40277u), vec2<u32>(4294967295u, u_input.b)));
    global0 = array<Struct_2, 24>();
    var_0 = ~vec2<u32>(19910u, 4294967295u);
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 4294967295u, _wgslsmith_div_u32(u_input.b, min(4294967295u, 21975u)), ~32833u), ~countOneBits(~vec4<u32>(var_0.x, 9479u, var_0.x, 4294967295u)), vec4<u32>(u_input.b, abs(1u), firstTrailingBit(51224u), abs(u_input.b)) << (~vec4<u32>(u_input.c, var_0.x, var_0.x, 8915u) % vec4<u32>(32u))), vec4<u32>(abs(636u), _wgslsmith_mod_u32(abs(0u), ~u_input.b), ~_wgslsmith_clamp_u32(~u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(88840u, 25067u, 28612u), vec3<u32>(var_0.x, u_input.c, 10218u)), u_input.c & u_input.c), var_0.x)), 3u)];
    global3 = array<vec3<f32>, 6>();
    return select(vec4<u32>(_wgslsmith_clamp_u32(var_0.x, countOneBits(u_input.c), firstLeadingBit(0u)), var_0.x, var_0.x, 21624u), countOneBits(vec4<u32>(0u, select(u_input.b, 39963u, var_1.a.x == var_1.a.x), ~1u, var_0.x)), select(!(!vec4<bool>(false, false, arg_2.a, arg_2.a)), vec4<bool>(true, arg_2.a, any(arg_0.xx), (arg_1.a | true) | true), !vec4<bool>(!arg_1.a, true, arg_1.a, u_input.c > u_input.b)));
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: Struct_2) -> vec4<u32> {
    let var_0 = arg_3.a.x;
    global2 = array<Struct_1, 15>();
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_3.a.x, _wgslsmith_f_op_f32(-arg_3.a.x), var_0, _wgslsmith_f_op_f32(-arg_1.a.x))));
    global3 = array<vec3<f32>, 6>();
    var var_2 = !(!select(vec4<bool>(arg_2.x, arg_1.a.x <= -1209f, false, !arg_2.x), !select(vec4<bool>(true, true, arg_2.x, arg_2.x), vec4<bool>(true, arg_2.x, arg_2.x, true), arg_2.x), false));
    return firstLeadingBit(func_4(func_3(Struct_1(arg_2.x)), Struct_1(all(var_2.zwz)), global2[_wgslsmith_index_u32((~42699u >> (arg_0 % 32u)) >> (5532u % 32u), 15u)]));
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: f32) -> vec3<bool> {
    global0 = array<Struct_2, 24>();
    let var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_2, arg_0.a.x, -288f), vec3<f32>(-851f, arg_0.a.x, -577f)))))));
    var var_1 = _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(select(max(vec4<u32>(0u, u_input.b, 4294967295u, u_input.b) | vec4<u32>(1u, u_input.c, u_input.b, u_input.b), abs(vec4<u32>(u_input.c, u_input.c, 4294967295u, u_input.c))), ~(vec4<u32>(11459u, u_input.b, u_input.c, 59758u) >> (vec4<u32>(u_input.b, 25381u, 1u, u_input.b) % vec4<u32>(32u))), vec4<bool>(true, arg_1, true, u_input.b > u_input.b)), select(_wgslsmith_add_vec4_u32(~vec4<u32>(18195u, 3504u, u_input.b, 1u), func_2(16498u, arg_0, global4[_wgslsmith_index_u32(u_input.b, 6u)], global0[_wgslsmith_index_u32(80706u, 24u)])), ~vec4<u32>(1u, u_input.c, u_input.c, 30040u) ^ countOneBits(vec4<u32>(u_input.b, u_input.b, u_input.c, u_input.b)), vec4<bool>(arg_0.a.x == arg_0.a.x, arg_1, any(global4[_wgslsmith_index_u32(u_input.b, 6u)]), all(vec4<bool>(false, arg_1, arg_1, false))))), u_input.b);
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1277f, arg_0.a.x, arg_0.a.x, -913f) * arg_0.a) - vec4<f32>(-1303f, 369f, var_0.x, -2271f))) + vec4<f32>(_wgslsmith_f_op_f32(sign(arg_2)), -351f, -423f, arg_2)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))));
    return !(!(!func_3(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(44181u, u_input.b), 15u)])));
}

fn func_5(arg_0: vec4<bool>, arg_1: u32) -> Struct_3 {
    let var_0 = _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(abs(select(vec4<i32>(u_input.d, -28287i, u_input.a, u_input.a), vec4<i32>(20250i, u_input.d, u_input.a, u_input.d), vec4<bool>(false, arg_0.x, false, arg_0.x))), ~vec4<i32>(-1i, 1i, u_input.a, u_input.d)), _wgslsmith_dot_vec4_i32(~select(vec4<i32>(-2147483647i, u_input.d, 0i, u_input.d), vec4<i32>(u_input.d, -2147483647i, u_input.a, 1i), false), vec4<i32>(u_input.a, min(55801i, u_input.a), firstLeadingBit(-31059i), -u_input.a))) <= u_input.a;
    global3 = array<vec3<f32>, 6>();
    global2 = array<Struct_1, 15>();
    global4 = array<vec2<bool>, 6>();
    var var_1 = Struct_3(_wgslsmith_f_op_f32(min(-1260f, -1000f)));
    return Struct_3(var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 3>();
    let var_0 = func_5(vec4<bool>(all(func_1(Struct_2(vec4<f32>(140f, -2230f, -978f, -821f)), u_input.c > 4294967295u, _wgslsmith_f_op_f32(f32(-1f) * -2039f))), any(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(~23233u, _wgslsmith_add_u32(18896u, u_input.b)), 6u)]), func_1(Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-640f, -718f, -1530f, 479f))), (-1i < u_input.a) | false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2507f + -1054f) + _wgslsmith_f_op_f32(714f + -2020f))).x, true), 4294967295u);
    var var_1 = func_5(select(select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true)), vec4<bool>(false, false, false, true), -2147483647i <= u_input.d), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), false)), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), any(global4[_wgslsmith_index_u32(1u, 6u)])), vec4<bool>(true, true, true, true), func_3(global2[_wgslsmith_index_u32(u_input.c, 15u)]).x), select(true, func_3(Struct_1(true)).x, true)), 22378u);
    let var_2 = Struct_1(!((_wgslsmith_mult_u32(76238u, u_input.c) >> (4484u % 32u)) >= ~u_input.b));
    let var_3 = -_wgslsmith_div_i32(~((u_input.d << (u_input.c % 32u)) << (~u_input.b % 32u)), firstLeadingBit(~(-u_input.d)));
    var var_4 = _wgslsmith_f_op_vec3_f32(max(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(max(_wgslsmith_clamp_u32(u_input.c, min(u_input.b, 63560u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 1u, 430u), vec3<u32>(28015u, 84919u, u_input.b))), u_input.c), reverseBits(20575u)), 6u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1143f, var_1.a, var_0.a)))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(2159f, var_1.a, 1892f), _wgslsmith_f_op_vec3_f32(global3[_wgslsmith_index_u32(u_input.b, 6u)] + vec3<f32>(129f, var_0.a, var_0.a)), true))))));
    let var_5 = global1[_wgslsmith_index_u32((u_input.b >> (~(~(~u_input.b)) % 32u)) >> (~_wgslsmith_mod_u32(10365u, 39796u) % 32u), 3u)];
    var_4 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_4.x, var_1.a)))) + _wgslsmith_f_op_f32(f32(-1f) * -1931f)), _wgslsmith_f_op_f32(f32(-1f) * -209f), var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(var_4.x, 1283f)), _wgslsmith_mod_i32(14503i, 23409i));
}

