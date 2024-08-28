struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec4<u32>,
    d: bool,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: bool,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<f32>,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 18>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_4) -> vec2<bool> {
    let var_0 = _wgslsmith_div_i32(_wgslsmith_add_i32(abs(_wgslsmith_mod_i32(_wgslsmith_sub_i32(arg_2.a.d.b, 33307i), -25667i)), -_wgslsmith_dot_vec2_i32(~u_input.c.yz, firstTrailingBit(vec2<i32>(arg_2.a.d.b, u_input.a)))), reverseBits(arg_2.a.d.b));
    global0 = array<u32, 18>();
    let var_1 = u_input.b.xxx;
    var var_2 = _wgslsmith_clamp_i32(_wgslsmith_mult_i32(firstTrailingBit(u_input.b.x << (86805u % 32u)), ~min(~(-2147483647i), -arg_2.a.a.b)), 2147483647i, -(~1i));
    global0 = array<u32, 18>();
    return select(arg_0.xy, select(vec2<bool>(!arg_2.a.a.e.x, any(vec2<bool>(arg_0.x, arg_0.x))), vec2<bool>(false, true), true), vec2<bool>(true, arg_2.a.a.e.x));
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_3(Struct_1(vec3<f32>(-749f, 204f, 494f), ~u_input.c.x, _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.d.x, u_input.d.x, 9336u), vec4<u32>(40034u, u_input.d.x, global0[_wgslsmith_index_u32(0u, 18u)], u_input.d.x), vec4<u32>(1u, 0u, 4294967295u, 0u)), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 44422u, 0u, u_input.d.x), vec4<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(60983u, 18u)], 18u)], 46574u, global0[_wgslsmith_index_u32(4294967295u, 18u)]))) << (_wgslsmith_add_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(33835u, 18u)], u_input.e, global0[_wgslsmith_index_u32(1u, 18u)], 1u), vec4<u32>(0u, 1u, u_input.e, u_input.d.x) << (vec4<u32>(39220u, global0[_wgslsmith_index_u32(u_input.d.x, 18u)], 62262u, 2044u) % vec4<u32>(32u))) % vec4<u32>(32u)), true, vec3<bool>(true, any(vec4<bool>(true, true, true, true)), all(func_3(vec3<bool>(true, true, false), 938f, Struct_4(Struct_3(Struct_1(vec3<f32>(-1794f, -1803f, 1000f), u_input.b.x, vec4<u32>(u_input.e, 117905u, 1u, 1u), false, vec3<bool>(true, false, true)), 329f, true, Struct_1(vec3<f32>(1356f, 1338f, 362f), -2147483647i, vec4<u32>(28591u, 51632u, global0[_wgslsmith_index_u32(u_input.d.x, 18u)], 44206u), true, vec3<bool>(true, true, false)))))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(171f)) + _wgslsmith_f_op_f32(456f + 928f)) * _wgslsmith_f_op_f32(trunc(-488f))))), -1i >= max(-1i, ~_wgslsmith_mult_i32(u_input.b.x, -2147483647i)), Struct_1(vec3<f32>(1f, _wgslsmith_f_op_f32(floor(1172f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -519f))), u_input.b.x, vec4<u32>(u_input.e, max(_wgslsmith_add_u32(1u, 25435u), ~29219u), 1u, 1u), all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), true)), vec3<bool>(true, true, (global0[_wgslsmith_index_u32(u_input.d.x, 18u)] > 43808u) && false)));
    let var_1 = _wgslsmith_sub_vec2_u32(select(u_input.d, countOneBits(_wgslsmith_sub_vec2_u32(min(vec2<u32>(0u, global0[_wgslsmith_index_u32(26074u, 18u)]), u_input.d), vec2<u32>(1u, var_0.a.c.x))), var_0.d.e.zz), firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(~5800u, u_input.e << (36098u % 32u)), ~(~var_0.d.c.ww))));
    var var_2 = _wgslsmith_mod_i32(_wgslsmith_sub_i32(firstLeadingBit(-2147483647i), -1i), ~((i32(-1i) * -1i) ^ _wgslsmith_sub_i32(var_0.a.b, u_input.a)));
    var var_3 = 419f;
    global0 = array<u32, 18>();
    return Struct_4(Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.a.x, var_0.d.a.x, var_0.b) * _wgslsmith_f_op_vec3_f32(var_0.a.a - vec3<f32>(var_0.b, var_0.a.a.x, var_0.d.a.x))), ~1i ^ var_0.a.b, var_0.a.c, false, vec3<bool>(!var_0.a.e.x, var_0.a.a.x >= -386f, var_0.d.d)), _wgslsmith_div_f32(var_0.d.a.x, _wgslsmith_f_op_f32(-var_0.d.a.x)), select(true, true, !(var_1.x <= 4294967295u)), var_0.a));
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> Struct_1 {
    let var_0 = arg_0.c.x;
    global0 = array<u32, 18>();
    global0 = array<u32, 18>();
    let var_1 = func_2();
    return Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1.a.a.a.x), _wgslsmith_f_op_f32(select(arg_0.b.x, 658f, var_0)), _wgslsmith_f_op_f32(-var_1.a.b)) * var_1.a.d.a))), -12671i, (_wgslsmith_sub_vec4_u32(abs(vec4<u32>(60679u, u_input.d.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(32894u, 18u)], 18u)], 0u)), ~vec4<u32>(10666u, 1u, arg_0.a.x, 4294967295u)) & abs(func_2().a.d.c)) >> (vec4<u32>(arg_0.a.x, _wgslsmith_mult_u32(1u, 31186u), arg_0.a.x, 58369u) % vec4<u32>(32u)), select(true, arg_0.c.x, ~_wgslsmith_dot_vec3_u32(var_1.a.d.c.xwz, vec3<u32>(arg_0.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(45463u, 18u)], 18u)], 16372u)) < global0[_wgslsmith_index_u32(~arg_0.a.x << (22999u % 32u), 18u)]), vec3<bool>(func_2().a.d.b != arg_1, func_2().a.a.d, -56894i == select(firstTrailingBit(var_1.a.d.b), 28107i, var_1.a.a.e.x == var_0)));
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    global0 = array<u32, 18>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.x - arg_0) - 107f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(690f, arg_1.a.x)))));
    var var_1 = arg_1;
    let var_2 = var_1.b;
    var var_3 = u_input.d;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-1f), 1381f);
    let var_1 = func_4(1000f, func_1(Struct_2(~_wgslsmith_add_vec2_u32(u_input.d, vec2<u32>(0u, 1u)), vec2<f32>(-452f, _wgslsmith_f_op_f32(var_0.x * -1569f)), vec3<bool>(28912u < u_input.e, select(true, false, true), any(vec3<bool>(false, true, false)))), u_input.a));
    var var_2 = func_2().a;
    var_2 = Struct_3(var_1, _wgslsmith_f_op_f32(abs(-1161f)), var_2.c, func_2().a.a);
    var var_3 = ~(~vec3<u32>(_wgslsmith_mod_u32(1u, ~global0[_wgslsmith_index_u32(var_2.a.c.x, 18u)]), ~4294967295u, 27144u));
    var_3 = func_2().a.a.c.yxz;
    var var_4 = Struct_4(Struct_3(var_1, var_1.a.x, func_1(Struct_2(_wgslsmith_div_vec2_u32(var_3.zy, vec2<u32>(84410u, 47630u)), vec2<f32>(-1946f, var_0.x), var_1.e), ~(-1i) & _wgslsmith_div_i32(u_input.b.x, u_input.b.x)).e.x, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2157f, var_2.a.a.x, var_2.d.a.x)), 0i, vec4<u32>(~var_1.c.x, ~25227u, u_input.e, func_4(-106f, Struct_1(vec3<f32>(1509f, var_0.x, -926f), -1i, vec4<u32>(8813u, 46033u, global0[_wgslsmith_index_u32(u_input.d.x, 18u)], var_2.d.c.x), true, vec3<bool>(true, var_2.a.d, true))).c.x), !var_1.d, vec3<bool>(func_3(var_1.e, 550f, Struct_4(Struct_3(Struct_1(var_2.a.a, 0i, var_2.d.c, false, vec3<bool>(false, var_2.d.d, var_2.a.e.x)), var_2.b, true, Struct_1(vec3<f32>(1000f, var_0.x, var_0.x), 0i, var_2.d.c, true, var_1.e)))).x, any(var_1.e.yx), false | var_1.e.x))));
    var var_5 = !(!(1i < abs(var_2.d.b)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(global0[_wgslsmith_index_u32(0u, 18u)]), max(u_input.b.zz, ~vec2<i32>(_wgslsmith_sub_i32(var_2.a.b, var_1.b), u_input.c.x)), _wgslsmith_add_u32(~abs(~0u), ~_wgslsmith_add_u32(var_1.c.x, ~global0[_wgslsmith_index_u32(var_3.x, 18u)])));
}

