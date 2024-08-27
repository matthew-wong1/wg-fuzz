struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: f32,
    b: u32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 2>;

var<private> global1: array<u32, 24>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
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

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = vec3<u32>(max(26568u, u_input.a.x), u_input.a.x, _wgslsmith_mult_u32(firstTrailingBit(global1[_wgslsmith_index_u32(u_input.b | global1[_wgslsmith_index_u32(1u, 24u)], 24u)] ^ u_input.b), 0u));
    let var_1 = Struct_2(arg_1, false);
    let var_2 = select(!select(vec2<bool>(arg_0.x, any(vec3<bool>(arg_0.x, arg_1.a.x, arg_0.x))), vec2<bool>(var_1.b, false), !select(var_1.a.a.xy, vec2<bool>(arg_0.x, arg_0.x), true)), !(!select(!vec2<bool>(false, var_1.b), arg_1.a.xz, !arg_1.a.xz)), arg_0);
    global0 = array<vec4<f32>, 2>();
    let var_3 = 0u >> (u_input.a.x % 32u);
    return !select(var_1.a.a, !(!select(vec3<bool>(true, arg_1.a.x, false), vec3<bool>(var_1.b, arg_0.x, true), arg_1.a.x)), vec3<bool>(!var_1.a.a.x, all(!vec4<bool>(var_2.x, false, false, arg_0.x)), var_1.a.a.x));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_5, arg_2: f32) -> Struct_1 {
    global0 = array<vec4<f32>, 2>();
    global0 = array<vec4<f32>, 2>();
    var var_0 = _wgslsmith_f_op_f32(-869f * arg_1.a);
    var var_1 = Struct_1(vec3<bool>(!any(vec4<bool>(false, false, false, false)), all(select(select(vec2<bool>(false, true), vec2<bool>(false, false), true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), true)), all(select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), true))));
    global0 = array<vec4<f32>, 2>();
    return Struct_1(func_3(var_1.a.xz, Struct_1(vec3<bool>(all(vec4<bool>(false, var_1.a.x, var_1.a.x, false)), !var_1.a.x, 4294967295u < arg_0.x))));
}

fn func_1(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: vec3<bool>, arg_3: u32) -> Struct_3 {
    let var_0 = Struct_3(Struct_2(func_2(vec3<u32>(min(arg_1.x, 1u), 28717u, 1u), Struct_5(-389f, 0u, _wgslsmith_sub_vec2_u32(arg_1.yw, arg_1.xy)), 2207f), any(vec3<bool>(arg_2.x || arg_0.a.x, arg_2.x, 13131u != u_input.b))), _wgslsmith_mod_vec2_u32(arg_1.wx, vec2<u32>(_wgslsmith_add_u32(57917u, select(arg_3, 21065u, false)), _wgslsmith_sub_u32(arg_1.x, arg_3))), Struct_2(Struct_1(vec3<bool>(arg_2.x, false, true)), select(arg_2.x, true, 4910i == u_input.c)));
    global1 = array<u32, 24>();
    let var_1 = abs(-_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, u_input.c, u_input.c, -44399i), vec4<i32>(2147483647i, -2147483647i, u_input.c, -48948i), vec4<i32>(0i, 0i, 0i, -2147483647i)), -vec4<i32>(u_input.c, 2147483647i, -38354i, u_input.c)) | -min(-8611i, -2147483647i));
    global0 = array<vec4<f32>, 2>();
    global1 = array<u32, 24>();
    return Struct_3(Struct_2(var_0.c.a, var_0.c.a.a.x), reverseBits(_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, 98946u), vec2<u32>(arg_1.x, arg_1.x)), arg_1.yy), (vec2<u32>(global1[_wgslsmith_index_u32(9922u, 24u)], 107830u) ^ vec2<u32>(4294967295u, 1u)) | _wgslsmith_clamp_vec2_u32(vec2<u32>(2827u, 4854u), u_input.a.yx, vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 24u)], 24u)], u_input.a.x)))), var_0.a);
}

fn func_4(arg_0: Struct_3) -> u32 {
    global0 = array<vec4<f32>, 2>();
    var var_0 = func_1(Struct_4(arg_0.c.a.a.xz), ~(~_wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 24u)], 24u)], 25582u, 7197u, 0u)), vec4<u32>(74739u, 85029u, 0u, 0u))), func_2(u_input.a, Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(968f, -1269f)), abs(~arg_0.b.x), countOneBits(~vec2<u32>(arg_0.b.x, 0u))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(856f * 644f)))))).a, countOneBits(80901u)).b;
    let var_1 = Struct_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1116f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1279f * -958f)))), ~2082u, firstTrailingBit(u_input.a.yx));
    var var_2 = !vec4<bool>(select(false, false, all(!vec2<bool>(arg_0.a.a.a.x, arg_0.c.a.a.x))), arg_0.a.a.a.x, func_2(~vec3<u32>(var_1.b, 0u, arg_0.b.x) ^ _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, u_input.b), u_input.a), Struct_5(var_1.a, u_input.a.x, vec2<u32>(global1[_wgslsmith_index_u32(var_0.x, 24u)], 0u)), _wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(-1645f * 131f))).a.x, false);
    var_0 = vec2<u32>(1u, 0u);
    return var_1.c.x;
}

fn func_5(arg_0: u32, arg_1: Struct_5) -> Struct_5 {
    var var_0 = -countOneBits(vec2<i32>(u_input.c, max(_wgslsmith_clamp_i32(32248i, 1i, u_input.c), -7289i)));
    let var_1 = Struct_4(func_3(select(func_1(Struct_4(vec2<bool>(false, true)), min(vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 24u)], 24u)], 65111u, u_input.a.x), vec4<u32>(19819u, 4294967295u, 47812u, arg_1.c.x)), vec3<bool>(true, true, true), 34083u).c.a.a.yy, vec2<bool>(true, true), true), Struct_1(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false), true))).xz);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    let var_1 = !vec2<bool>(!(~0u == global1[_wgslsmith_index_u32(0u, 24u)]), false);
    var var_2 = select(0i, ~(-2147483647i), _wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(u_input.b, 24u)], u_input.a.x, 13026u, 15490u) >> (select(vec4<u32>(37022u, global1[_wgslsmith_index_u32(u_input.b, 24u)], 0u, u_input.b), vec4<u32>(0u, 1u, 1u, global1[_wgslsmith_index_u32(1u, 24u)]), var_1.x) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(vec4<u32>(114313u, 6093u, u_input.b, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(34988u, 24u)], 24u)]), _wgslsmith_sub_vec4_u32(vec4<u32>(32620u, 70649u, u_input.b, global1[_wgslsmith_index_u32(1u, 24u)]), vec4<u32>(23806u, global1[_wgslsmith_index_u32(1u, 24u)], u_input.a.x, 18236u)))) != ~_wgslsmith_mod_u32(~u_input.b, 4294967295u));
    var_2 = _wgslsmith_add_i32(-16826i, i32(-1i) * -u_input.c);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -442f) + _wgslsmith_f_op_f32(1089f * -880f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1128f) - _wgslsmith_f_op_f32(floor(-567f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-151f, -636f)))));
    let var_4 = func_5(abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(func_4(func_1(Struct_4(var_1), ~vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 24u)], 24u)], 14823u, global1[_wgslsmith_index_u32(20046u, 24u)], 35681u), !vec3<bool>(false, false, var_1.x), _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(4294967295u, 24u)], 45183u))), 24u)], 24u)]), Struct_5(1719f, reverseBits(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b, 23518u, 21911u), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, global1[_wgslsmith_index_u32(u_input.b, 24u)])), 44857u)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x ^ global1[_wgslsmith_index_u32(u_input.b, 24u)], 61636u << (1u % 32u)), (vec2<u32>(u_input.a.x, 0u) & vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 24u)], global1[_wgslsmith_index_u32(u_input.b, 24u)])) << (u_input.a.yx % vec2<u32>(32u)))));
    global0 = array<vec4<f32>, 2>();
    let var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_4.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1413f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1676f))))), _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, -2147483647i) & vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.c, 15032i) >> (vec2<u32>(78225u, 26308u) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(vec2<i32>(27575i, 11113i), vec2<i32>(u_input.c, 26307i), vec2<i32>(-19711i, u_input.c))), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.c, 38196i) << (vec2<u32>(var_4.c.x, 1u) % vec2<u32>(32u)))), firstLeadingBit(-_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.c, 6942i)))), 0u, _wgslsmith_clamp_vec4_i32(select(reverseBits(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c) >> (vec4<u32>(var_4.b, 17799u, 1u, 18494u) % vec4<u32>(32u))), vec4<i32>(-1i) * -vec4<i32>(u_input.c, u_input.c, 0i, u_input.c), vec4<bool>(all(vec3<bool>(var_1.x, true, false)), any(vec2<bool>(false, true)), all(vec2<bool>(var_1.x, var_1.x)), true)), -_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, 2862i, u_input.c, 0i), ~vec4<i32>(u_input.c, -1i, -2147483647i, u_input.c)), vec4<i32>(~firstLeadingBit(-36842i), -(~(-35431i)), ~(~(-1i)), 0i)));
}

