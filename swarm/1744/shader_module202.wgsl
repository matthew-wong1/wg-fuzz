struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9>;

var<private> global1: i32;

var<private> global2: array<vec3<u32>, 32> = array<vec3<u32>, 32>(vec3<u32>(0u, 17877u, 1u), vec3<u32>(36264u, 0u, 49076u), vec3<u32>(21217u, 4294967295u, 4294967295u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(1u, 71228u, 96149u), vec3<u32>(11004u, 0u, 4294967295u), vec3<u32>(0u, 4294967295u, 21090u), vec3<u32>(4294967295u, 25250u, 7491u), vec3<u32>(0u, 1u, 29717u), vec3<u32>(4294967295u, 1u, 36200u), vec3<u32>(4294967295u, 36052u, 0u), vec3<u32>(411u, 1u, 1144u), vec3<u32>(57555u, 63206u, 1u), vec3<u32>(43584u, 10577u, 54051u), vec3<u32>(4294967295u, 3704u, 30998u), vec3<u32>(1241u, 0u, 59548u), vec3<u32>(41609u, 1u, 69039u), vec3<u32>(6757u, 1u, 1662u), vec3<u32>(21571u, 1u, 6077u), vec3<u32>(1u, 48217u, 0u), vec3<u32>(0u, 4294967295u, 63367u), vec3<u32>(51811u, 4294967295u, 3692u), vec3<u32>(0u, 1u, 4092u), vec3<u32>(12414u, 6158u, 5780u), vec3<u32>(1u, 0u, 30496u), vec3<u32>(19463u, 27920u, 4294967295u), vec3<u32>(50413u, 14629u, 51204u), vec3<u32>(1u, 4294967295u, 73509u), vec3<u32>(24175u, 71668u, 0u), vec3<u32>(0u, 1u, 1u), vec3<u32>(90992u, 15467u, 0u), vec3<u32>(0u, 29248u, 0u));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> f32 {
    global2 = array<vec3<u32>, 32>();
    global2 = array<vec3<u32>, 32>();
    global1 = max((min(abs(u_input.d), _wgslsmith_div_i32(u_input.d, 30434i)) ^ (i32(-1i) * -15554i)) ^ ~_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.e, -37192i, u_input.e), vec3<i32>(u_input.e, u_input.d, u_input.d)), -vec3<i32>(u_input.d, u_input.d, 0i)), u_input.e);
    let var_0 = all(!select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(true, true), false), u_input.b.x < u_input.c.x)));
    var var_1 = !(!(!vec4<bool>(var_0 && var_0, var_0 & var_0, true, true)));
    return 1219f;
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = 1i;
    global1 = var_0;
    let var_1 = all(select(!vec4<bool>(arg_0.a.c.c, arg_0.a.c.a.x & true, arg_2.c, !arg_2.c), vec4<bool>(!any(vec3<bool>(false, true, arg_2.c)), arg_0.a.c.c, !arg_0.a.c.a.x, true), !select(vec4<bool>(false, true, arg_0.a.c.c, arg_0.a.b.c), !vec4<bool>(false, arg_0.a.b.a.x, arg_2.a.x, arg_2.a.x), vec4<bool>(true, arg_0.a.c.a.x, true, false))));
    var var_2 = vec3<i32>(-arg_0.a.a.x, i32(-1i) * -arg_3.x, firstLeadingBit(45935i));
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.a.d, -1578f, arg_0.a.d, -607f), vec4<f32>(-405f, global0[_wgslsmith_index_u32(arg_2.d, 9u)], arg_0.a.d, global0[_wgslsmith_index_u32(arg_1, 9u)]), arg_2.c))) - vec4<f32>(437f, 447f, _wgslsmith_f_op_f32(f32(-1f) * -1551f), arg_0.a.d)))), vec4<f32>(_wgslsmith_f_op_f32(ceil(-574f)), _wgslsmith_f_op_f32(func_3()), global0[_wgslsmith_index_u32(~(~4294967295u >> (arg_2.d % 32u)), 9u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.d + -1484f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1425f))))));
    return arg_2;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>) -> vec2<f32> {
    var var_0 = any(vec3<bool>(select(!any(vec4<bool>(arg_0.c, arg_1.x, false, false)), any(vec4<bool>(arg_1.x, true, arg_1.x, true)), true & !arg_0.a.x), arg_0.a.x, false));
    var_0 = arg_1.x || true;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(7346u, 9u)])), global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(11425u, arg_0.d, 59324u), 9u)]) * -461f) > _wgslsmith_f_op_f32(f32(-1f) * -1656f);
    global0 = array<f32, 9>();
    var var_2 = arg_1.x;
    return vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1527f + global0[_wgslsmith_index_u32(1379u, 9u)]))) + _wgslsmith_f_op_f32(f32(-1f) * -2731f)))), global0[_wgslsmith_index_u32(arg_0.d, 9u)]);
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: vec2<f32>) -> Struct_2 {
    let var_0 = Struct_4(abs(vec3<u32>(~u_input.b.x | u_input.a.x, firstLeadingBit(_wgslsmith_mod_u32(1u, 9063u)), 1u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_0) + vec2<f32>(1000f, arg_2.x))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(func_2(Struct_3(Struct_2(vec2<i32>(-21340i, u_input.d), Struct_1(vec3<bool>(true, false, false), u_input.d, true, u_input.c.x), Struct_1(vec3<bool>(true, false, true), u_input.e, true, 4294967295u), global0[_wgslsmith_index_u32(1u, 9u)])), 67793u, Struct_1(vec3<bool>(false, true, false), u_input.d, false, 4294967295u), vec3<i32>(2147483647i, u_input.d, -48125i)), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)))))));
    let var_1 = Struct_3(Struct_2(vec2<i32>(-(~u_input.e), 5325i), func_2(Struct_3(Struct_2(vec2<i32>(-8023i, u_input.d), Struct_1(vec3<bool>(true, false, false), -7515i, true, 15927u), Struct_1(vec3<bool>(false, false, false), 38477i, true, 49512u), -719f)), firstTrailingBit(4294967295u), Struct_1(vec3<bool>(true, true, true), u_input.d, true, 1u), vec3<i32>(-1i) * -vec3<i32>(-1i, u_input.d, -2147483647i)), func_2(Struct_3(Struct_2(vec2<i32>(-10125i, 1i), Struct_1(vec3<bool>(false, true, true), 13646i, true, 11938u), Struct_1(vec3<bool>(true, true, false), u_input.d, true, u_input.c.x), global0[_wgslsmith_index_u32(var_0.a.x, 9u)])), 9604u, Struct_1(vec3<bool>(true, true, true), firstLeadingBit(2147483647i), true, 38970u), select(vec3<i32>(39861i, u_input.d, 5858i), vec3<i32>(-1i, -19347i, 1i), vec3<bool>(false, true, true)) ^ vec3<i32>(u_input.d, u_input.d, u_input.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.b.x)) + global0[_wgslsmith_index_u32(var_0.a.x, 9u)]))));
    let var_2 = var_0.a.yy;
    let var_3 = var_0;
    let var_4 = ~u_input.c.x;
    return var_1.a;
}

fn func_5(arg_0: i32, arg_1: Struct_3, arg_2: u32) -> Struct_2 {
    let var_0 = arg_1;
    var var_1 = Struct_4(_wgslsmith_sub_vec3_u32(~(~(~global2[_wgslsmith_index_u32(arg_2, 32u)])), vec3<u32>(_wgslsmith_dot_vec3_u32(select(vec3<u32>(arg_1.a.b.d, var_0.a.b.d, var_0.a.b.d), u_input.c, true), select(global2[_wgslsmith_index_u32(arg_2, 32u)], vec3<u32>(u_input.c.x, var_0.a.c.d, var_0.a.c.d), arg_1.a.b.a)), firstTrailingBit(var_0.a.c.d), ~1u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(65130u, 9u)], global0[_wgslsmith_index_u32(arg_2, 9u)]))) + vec2<f32>(_wgslsmith_f_op_f32(trunc(var_0.a.d)), _wgslsmith_f_op_f32(round(868f))))));
    let var_2 = ~_wgslsmith_clamp_vec3_u32(vec3<u32>(17836u, 22670u, countOneBits(47893u)), reverseBits(abs(_wgslsmith_clamp_vec3_u32(global2[_wgslsmith_index_u32(arg_2, 32u)], var_1.a, vec3<u32>(14626u, arg_2, 1u)))), abs(~vec3<u32>(0u, arg_2, arg_1.a.b.d)));
    var_1 = Struct_4(~_wgslsmith_mod_vec3_u32(abs(reverseBits(global2[_wgslsmith_index_u32(var_0.a.b.d, 32u)])), ~(~global2[_wgslsmith_index_u32(var_2.x, 32u)])), vec2<f32>(arg_1.a.d, _wgslsmith_f_op_f32(var_1.b.x - -2168f)));
    let var_3 = firstLeadingBit(-27151i);
    return Struct_2(arg_1.a.a, func_2(Struct_3(Struct_2(vec2<i32>(var_0.a.b.b, -2147483647i), arg_1.a.c, var_0.a.c, 1000f)), ~41943u, var_0.a.c, -reverseBits(-vec3<i32>(13859i, 2147483647i, arg_1.a.b.b))), func_1(var_0.a.d, arg_1.a.d, var_1.b).c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2529f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-709f, 404f)) - -2609f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(u_input.e, Struct_3(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 9u)] + 498f)), _wgslsmith_f_op_f32(f32(-1f) * -2039f), vec2<f32>(-949f, _wgslsmith_f_op_f32(-591f - global0[_wgslsmith_index_u32(u_input.a.x, 9u)])))), _wgslsmith_clamp_u32(~(~func_2(Struct_3(Struct_2(vec2<i32>(23554i, 15323i), Struct_1(vec3<bool>(true, false, true), -40146i, true, u_input.c.x), Struct_1(vec3<bool>(true, false, false), 2147483647i, false, u_input.c.x), global0[_wgslsmith_index_u32(u_input.a.x, 9u)])), u_input.b.x, Struct_1(vec3<bool>(true, false, true), 2170i, false, u_input.c.x), vec3<i32>(-50014i, 17657i, u_input.d)).d), u_input.c.x & u_input.c.x, ~u_input.a.x));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.d, -543f, global0[_wgslsmith_index_u32(var_0.b.d, 9u)]), vec3<f32>(global0[_wgslsmith_index_u32(var_0.c.d, 9u)], var_0.d, global0[_wgslsmith_index_u32(0u, 9u)])))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(943f, global0[_wgslsmith_index_u32(u_input.b.x, 9u)], global0[_wgslsmith_index_u32(var_0.b.d, 9u)]), vec3<f32>(1433f, -932f, 805f), var_0.c.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d, var_0.d, var_0.d) * vec3<f32>(var_0.d, -294f, global0[_wgslsmith_index_u32(var_0.c.d, 9u)]))))));
    global2 = array<vec3<u32>, 32>();
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -207f);
    global1 = u_input.d ^ ~(~u_input.e);
    let var_3 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~4294967295u, 0u), 32u)];
    global2 = array<vec3<u32>, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(2309f, -183f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2 * -1000f)))), firstTrailingBit(vec3<u32>(var_3.x, 0u, ~u_input.c.x)), u_input.a.x, -firstLeadingBit(~(-13212i)), u_input.a);
}

