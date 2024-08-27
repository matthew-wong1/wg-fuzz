struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec3<f32>,
    d: vec3<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 25>;

var<private> global1: array<f32, 11>;

var<private> global2: array<f32, 9> = array<f32, 9>(570f, 1000f, 553f, -734f, -659f, 733f, -129f, 1558f, -310f);

var<private> global3: vec2<i32> = vec2<i32>(-49843i, i32(-2147483648));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = vec4<bool>(true, true, true, true);
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(59149u, u_input.c), 11u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 11u)] - global2[_wgslsmith_index_u32(u_input.c, 9u)]) * arg_0.x), _wgslsmith_f_op_f32(-907f * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c, 11u)])), -524f)))));
    global0 = array<i32, 25>();
    global0 = array<i32, 25>();
    global3 = _wgslsmith_add_vec2_i32(select(select(reverseBits(~vec2<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 25u)], global3.x)), vec2<i32>(1i, 1i), all(vec2<bool>(false, false))), _wgslsmith_div_vec2_i32(abs(vec2<i32>(global0[_wgslsmith_index_u32(28662u, 25u)], global3.x)), _wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, global3.x), vec2<i32>(-3465i, u_input.a))) ^ -(~vec2<i32>(global3.x, global3.x)), !var_0.x & true), _wgslsmith_mod_vec2_i32(~vec2<i32>(~(-63211i), ~global0[_wgslsmith_index_u32(u_input.b.x, 25u)]), vec2<i32>(countOneBits(global0[_wgslsmith_index_u32(~u_input.c, 25u)]), global3.x)));
    return Struct_1(vec2<bool>(!select(var_0.x && var_0.x, u_input.b.x < u_input.c, var_0.x), !var_0.x), var_0);
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: f32) -> u32 {
    let var_0 = vec4<f32>(-907f, -162f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(u_input.c, 9u)])), arg_2))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2596f, -849f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 11u)] + 784f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-327f, 215f)))))));
    global2 = array<f32, 9>();
    global0 = array<i32, 25>();
    let var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1339f * arg_0) + -1225f), Struct_1(!vec2<bool>(any(arg_1.b), func_2(vec2<f32>(-762f, global1[_wgslsmith_index_u32(45950u, 11u)])).a.x), arg_1.b), _wgslsmith_f_op_vec3_f32(-var_0.zwy));
    global2 = array<f32, 9>();
    return max(abs(~u_input.b.x), _wgslsmith_add_u32(u_input.c, ~_wgslsmith_add_u32(firstTrailingBit(u_input.b.x), 0u)));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<i32>) -> bool {
    let var_0 = ~global0[_wgslsmith_index_u32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(8458u, 9u)] + global2[_wgslsmith_index_u32(u_input.b.x, 9u)])), func_2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-552f, arg_0.x)))), -997f), 25u)] < _wgslsmith_add_i32(reverseBits(-_wgslsmith_add_i32(u_input.d, -1i)), 1i);
    let var_1 = func_2(arg_0.zw);
    var var_2 = abs(_wgslsmith_div_vec4_i32(select(min(vec4<i32>(1i, arg_1.x, u_input.d, u_input.d), vec4<i32>(2147483647i, global3.x, 1i, global0[_wgslsmith_index_u32(u_input.c, 25u)])), ~vec4<i32>(global3.x, 2259i, global0[_wgslsmith_index_u32(4294967295u, 25u)], -12817i), true) ^ ~countOneBits(vec4<i32>(-44572i, global3.x, -2087i, u_input.d)), vec4<i32>(~(-2147483647i), 0i ^ -u_input.a, 7021i, ~(~arg_1.x))));
    var var_3 = vec2<i32>(arg_1.x, ~(-abs(_wgslsmith_mult_i32(var_2.x, arg_1.x))));
    global3 = vec2<i32>(_wgslsmith_sub_i32(global3.x, _wgslsmith_mult_i32(25808i, ~22979i)), _wgslsmith_sub_i32((reverseBits(global0[_wgslsmith_index_u32(u_input.b.x, 25u)]) << (_wgslsmith_sub_u32(102527u, 507u) % 32u)) << (_wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.b.x, 0u), ~u_input.b.x) % 32u), _wgslsmith_dot_vec3_i32(var_2.ywy, ~var_2.yxz << (~u_input.b % vec3<u32>(32u)))));
    return !(var_0 && !((var_3.x & global0[_wgslsmith_index_u32(76975u, 25u)]) > ~0i));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec4<u32>, arg_3: u32) -> Struct_1 {
    let var_0 = countOneBits(-((~vec2<i32>(global3.x, 0i) << (arg_2.yw % vec2<u32>(32u))) & (_wgslsmith_sub_vec2_i32(vec2<i32>(global3.x, 0i), vec2<i32>(-1i, -4345i)) | vec2<i32>(global0[_wgslsmith_index_u32(u_input.c, 25u)], -2147483647i))));
    global1 = array<f32, 11>();
    let var_1 = vec2<i32>(0i, global0[_wgslsmith_index_u32(2773u | (35292u | (u_input.c | u_input.c)), 25u)]);
    global3 = vec2<i32>(18184i, ~(~var_1.x));
    let var_2 = ~global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~0u | arg_3, (4294967295u >> (~4294967295u % 32u)) << (0u % 32u)), 25u)];
    return func_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global2[_wgslsmith_index_u32(arg_2.x, 9u)], -2242f))))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(30505u, 9u)], global1[_wgslsmith_index_u32(12181u, 11u)]), global1[_wgslsmith_index_u32(1u ^ u_input.c, 11u)]))), vec2<bool>(true, func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(849f, 783f, global2[_wgslsmith_index_u32(arg_3, 9u)], -1546f)), _wgslsmith_sub_vec2_i32(var_0, vec2<i32>(-1i, -71934i)))))));
}

fn func_5(arg_0: Struct_1) -> bool {
    var var_0 = firstLeadingBit(vec3<u32>(~(u_input.c >> (u_input.b.x % 32u)), min(~u_input.c, u_input.b.x), u_input.c & ~1u) << (~vec3<u32>(4294967295u | u_input.b.x, _wgslsmith_sub_u32(81426u, 42394u), u_input.b.x) % vec3<u32>(32u)));
    let var_1 = all(vec4<bool>(!(!arg_0.a.x) && arg_0.a.x, all(arg_0.b.zxx), countOneBits(_wgslsmith_sub_i32(u_input.d, global0[_wgslsmith_index_u32(u_input.c, 25u)])) == _wgslsmith_dot_vec4_i32(max(vec4<i32>(-7224i, 16329i, 30619i, global3.x), vec4<i32>(global0[_wgslsmith_index_u32(var_0.x, 25u)], 1i, global0[_wgslsmith_index_u32(u_input.b.x, 25u)], global0[_wgslsmith_index_u32(var_0.x, 25u)])), vec4<i32>(2147483647i, -25932i, global3.x, global3.x) ^ vec4<i32>(global0[_wgslsmith_index_u32(var_0.x, 25u)], u_input.a, -42210i, global0[_wgslsmith_index_u32(var_0.x, 25u)])), arg_0.b.x));
    global3 = -vec2<i32>(~36072i, u_input.d);
    let var_2 = (vec3<i32>(-16810i, -21676i, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, global0[_wgslsmith_index_u32(u_input.c, 25u)], 1973i, -2688i), vec4<i32>(global0[_wgslsmith_index_u32(19919u, 25u)], u_input.a, -18925i, u_input.d), vec4<i32>(-2147483647i, u_input.d, u_input.a, global3.x)), vec4<i32>(2147483647i, -23826i, global3.x, global0[_wgslsmith_index_u32(u_input.c, 25u)]))) ^ -_wgslsmith_div_vec3_i32(-vec3<i32>(global3.x, 0i, global0[_wgslsmith_index_u32(var_0.x, 25u)]), ~vec3<i32>(global0[_wgslsmith_index_u32(u_input.c, 25u)], u_input.d, 74462i))) ^ ~_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(106890u, 25u)], u_input.d, -31050i), vec3<i32>(-2335i, global3.x, u_input.a)), _wgslsmith_add_vec3_i32(vec3<i32>(global3.x, u_input.a, 0i), vec3<i32>(u_input.a, u_input.a, global0[_wgslsmith_index_u32(7209u, 25u)]))), abs(vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 25u)], 4684i, 44993i) << (vec3<u32>(var_0.x, u_input.c, 4294967295u) % vec3<u32>(32u))));
    return select(func_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-921f, global2[_wgslsmith_index_u32(var_0.x, 9u)], -417f, 1301f))), -var_2.zx) == func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global2[_wgslsmith_index_u32(53774u, 9u)], global1[_wgslsmith_index_u32(67885u, 11u)], global1[_wgslsmith_index_u32(var_0.x, 11u)], global1[_wgslsmith_index_u32(0u, 11u)])))), _wgslsmith_clamp_vec2_i32(var_2.xx, _wgslsmith_div_vec2_i32(vec2<i32>(-12503i, global0[_wgslsmith_index_u32(78916u, 25u)]), vec2<i32>(u_input.a, 11764i)), abs(var_2.yz))), false, !(!all(func_2(vec2<f32>(global1[_wgslsmith_index_u32(var_0.x, 11u)], 1007f)).b)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 11>();
    var var_0 = vec3<bool>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 9u)]) <= 527f, func_5(func_4(Struct_1(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec4<bool>(true, false, false, true)), vec4<bool>(all(vec2<bool>(false, false)), true, func_1(vec4<f32>(-302f, -692f, -1582f, global2[_wgslsmith_index_u32(u_input.c, 9u)]), vec2<i32>(-6266i, -1i)), false), vec4<u32>(~1u, abs(21618u), func_3(global2[_wgslsmith_index_u32(58914u, 9u)], Struct_1(vec2<bool>(false, false), vec4<bool>(false, true, true, true)), 1000f), u_input.c), _wgslsmith_div_u32(_wgslsmith_add_u32(4294967295u, u_input.c), _wgslsmith_clamp_u32(44524u, u_input.c, u_input.b.x)))), all(!vec4<bool>(false, true, func_2(vec2<f32>(global2[_wgslsmith_index_u32(49086u, 9u)], global1[_wgslsmith_index_u32(4294967295u, 11u)])).b.x, any(vec3<bool>(true, false, false)))));
    global2 = array<f32, 9>();
    global3 = reverseBits(firstLeadingBit(vec2<i32>(~global3.x, min(~global3.x, -global0[_wgslsmith_index_u32(u_input.c, 25u)]))));
    global3 = vec2<i32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.c, 18753u, u_input.c) >> (u_input.b % vec3<u32>(32u))), firstTrailingBit(reverseBits(vec3<u32>(u_input.c, u_input.b.x, u_input.c)))) << (95264u % 32u), 25u)], _wgslsmith_dot_vec4_i32(vec4<i32>(0i ^ global3.x, -countOneBits(u_input.a), ~u_input.a, firstLeadingBit(i32(-1i) * -1i)), reverseBits(-vec4<i32>(u_input.d, -1i, -2147483647i, global0[_wgslsmith_index_u32(u_input.b.x, 25u)]))));
    global2 = array<f32, 9>();
    let var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(320f, global2[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(98228u, 2318u)), 9u)], global1[_wgslsmith_index_u32(~u_input.c, 11u)]), vec3<f32>(1000f, _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.b, u_input.b), _wgslsmith_mult_vec3_u32(vec3<u32>(19204u, u_input.c, u_input.b.x), u_input.b)), 11u)])), _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(u_input.b.x, 11u)]))));
    var_0 = vec3<bool>(var_0.x, var_0.x, var_0.x);
    var var_2 = func_4(Struct_1(select(vec2<bool>(u_input.a >= -20001i, !var_0.x), func_4(Struct_1(var_0.yy, vec4<bool>(var_0.x, var_0.x, var_0.x, true)), select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false)), ~vec4<u32>(u_input.c, 4294967295u, u_input.b.x, u_input.c), u_input.c).b.zz, firstTrailingBit(u_input.a) != max(-1i, 1i)), vec4<bool>(var_0.x, any(!vec4<bool>(false, var_0.x, var_0.x, true)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(71044u, 11u)]) < _wgslsmith_f_op_f32(step(1019f, global1[_wgslsmith_index_u32(10283u, 11u)])), (var_1.x < global2[_wgslsmith_index_u32(4294967295u, 9u)]) || false)), !vec4<bool>(var_0.x, true, true || any(vec4<bool>(var_0.x, false, var_0.x, true)), true), select(_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(u_input.c, 39976u, u_input.c, 0u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(47023u, u_input.c, u_input.c, 0u), vec4<u32>(30543u, 48452u, u_input.c, u_input.c))), min(vec4<u32>(u_input.b.x, 1u, 42902u, u_input.c) >> ((vec4<u32>(u_input.c, u_input.b.x, u_input.b.x, 0u) | vec4<u32>(0u, u_input.c, u_input.b.x, u_input.c)) % vec4<u32>(32u)), (vec4<u32>(1u, 1u, u_input.c, u_input.c) >> (vec4<u32>(u_input.b.x, 57965u, 74143u, 4294967295u) % vec4<u32>(32u))) << (select(vec4<u32>(66055u, 0u, u_input.b.x, u_input.b.x), vec4<u32>(69056u, 4294967295u, u_input.b.x, u_input.c), vec4<bool>(true, true, var_0.x, var_0.x)) % vec4<u32>(32u))), func_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, -554f, -839f, -173f), vec4<f32>(-3780f, 190f, global1[_wgslsmith_index_u32(41551u, 11u)], var_1.x), true)), _wgslsmith_div_vec2_i32(vec2<i32>(global3.x, u_input.d), vec2<i32>(global0[_wgslsmith_index_u32(u_input.c, 25u)], global3.x))) || var_0.x), u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 11u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1644f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.x, -1090f), _wgslsmith_f_op_f32(f32(-1f) * -1003f))), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.b.x, 15125u), _wgslsmith_mult_u32(4294967295u, u_input.b.x)), 9u)], -318f)), vec3<f32>(1799f, global1[_wgslsmith_index_u32(u_input.b.x, 11u)], _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1482f + var_1.x)), _wgslsmith_f_op_f32(-1f), all(func_2(vec2<f32>(var_1.x, global2[_wgslsmith_index_u32(u_input.c, 9u)])).b)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_1, vec3<f32>(global2[_wgslsmith_index_u32(43860u, 9u)], 568f, -1305f), true)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(38835u, 11u)], -1162f, -2531f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(2273f, var_1.x, global2[_wgslsmith_index_u32(8404u, 9u)]) * var_1)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(var_1.xz - var_1.zz), var_1.yz)) - vec2<f32>(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(u_input.b.x, 11u)])), _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(0u, 9u)], global2[_wgslsmith_index_u32(54548u, 9u)])))))));
}

