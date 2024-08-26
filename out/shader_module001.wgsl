struct Struct_1 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec3<i32>(6729i, -18129i, -18636i), 0i), Struct_1(vec3<i32>(-26133i, -37400i, 19600i), -15086i), Struct_1(vec3<i32>(-1i, -91288i, -21843i), -45755i), Struct_1(vec3<i32>(-17745i, 14500i, -38087i), i32(-2147483648)), Struct_1(vec3<i32>(18527i, 1i, 0i), -1i), Struct_1(vec3<i32>(-1i, 0i, 13221i), 0i), Struct_1(vec3<i32>(0i, i32(-2147483648), 1i), -5442i), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, 55172i), -95724i), Struct_1(vec3<i32>(0i, -3049i, i32(-2147483648)), -1i), Struct_1(vec3<i32>(0i, 38826i, -5780i), 2147483647i));

var<private> global1: array<vec2<i32>, 15> = array<vec2<i32>, 15>(vec2<i32>(i32(-2147483648), 0i), vec2<i32>(1i, 1i), vec2<i32>(-6936i, -1i), vec2<i32>(-20339i, 87797i), vec2<i32>(2147483647i, -1i), vec2<i32>(53775i, 22880i), vec2<i32>(1i, 1i), vec2<i32>(-32845i, 0i), vec2<i32>(-32132i, 7734i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-1197i, 20509i), vec2<i32>(-22446i, 31410i), vec2<i32>(-23866i, 2147483647i), vec2<i32>(-1i, -73932i), vec2<i32>(9739i, -5174i));

var<private> global2: array<vec4<f32>, 4> = array<vec4<f32>, 4>(vec4<f32>(275f, -1371f, 493f, 1310f), vec4<f32>(-806f, -1000f, 1281f, -171f), vec4<f32>(-712f, -1792f, -343f, -537f), vec4<f32>(-977f, -1141f, 818f, 918f));

var<private> global3: Struct_3 = Struct_3(vec3<f32>(-791f, 870f, -496f), -1005f);

var<private> global4: array<vec4<bool>, 24> = array<vec4<bool>, 24>(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec2<u32>, arg_3: vec4<u32>) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -337f)))))));
    global2 = array<vec4<f32>, 4>();
    global1 = array<vec2<i32>, 15>();
    let var_1 = Struct_2(u_input.d.ww ^ _wgslsmith_sub_vec2_i32(~vec2<i32>(25114i, arg_0.b), vec2<i32>(arg_1.x & arg_1.x, arg_0.b)));
    global0 = array<Struct_1, 10>();
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-246f, -362f, -1000f), vec3<f32>(-277f, var_0, -544f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(356f * -1299f), _wgslsmith_f_op_f32(ceil(global3.a.x)), -942f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.a.x, -1500f, var_0) * global3.a)), true)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(global3.a, vec3<f32>(177f, 503f, 1116f))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-946f, 1514f, _wgslsmith_f_op_f32(var_0 * 1957f)))), select(true, true, all(vec4<bool>(true, all(vec4<bool>(true, false, false, true)), true, all(vec2<bool>(false, false)))))));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_3(Struct_1(~vec3<i32>(1i, 28622i, -2995i) << (abs(select(vec3<u32>(0u, 79901u, u_input.c.x), vec3<u32>(u_input.c.x, u_input.e, 51672u), true)) % vec3<u32>(32u)), -51452i), _wgslsmith_mod_vec4_i32(abs(vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x) & u_input.d), -u_input.d) & vec4<i32>(u_input.a, 1i, _wgslsmith_dot_vec3_i32(u_input.d.wzw, vec3<i32>(u_input.d.x, u_input.a, u_input.d.x) << (vec3<u32>(6838u, 36389u, 1u) % vec3<u32>(32u))), (-1i ^ u_input.d.x) >> (~70625u % 32u)), ~u_input.c, vec4<u32>(55298u, 51560u, u_input.c.x, 1u)));
    let var_1 = Struct_3(global3.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -507f) * var_0.x));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(491f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b)), 543f);
    global2 = array<vec4<f32>, 4>();
    global4 = array<vec4<bool>, 24>();
    return global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.b, 4294967295u), 10u)];
}

fn func_1() -> i32 {
    var var_0 = ~reverseBits(u_input.c.x);
    let var_1 = func_2();
    var_0 = 7038u >> (~4294967295u % 32u);
    let var_2 = func_2();
    let var_3 = Struct_2(reverseBits(var_2.a.zx));
    return abs(u_input.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<f32>, 4>();
    let var_0 = vec3<i32>(u_input.a, -40592i, func_1());
    let var_1 = _wgslsmith_sub_vec4_i32(~(~(~u_input.d)), -vec4<i32>(u_input.d.x, _wgslsmith_div_i32(abs(u_input.a), ~u_input.d.x), var_0.x ^ ~0i, -(~u_input.d.x)));
    global1 = array<vec2<i32>, 15>();
    global0 = array<Struct_1, 10>();
    global4 = array<vec4<bool>, 24>();
    global3 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b, 1543f, _wgslsmith_div_f32(global3.b, 604f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global3.b), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-898f * 1176f)))), true)));
    global2 = array<vec4<f32>, 4>();
    let var_2 = _wgslsmith_div_u32(80980u, 24013u) != ~u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(2318f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1674f * _wgslsmith_f_op_f32(sign(global3.a.x))), _wgslsmith_f_op_f32(-2527f - global3.a.x))), _wgslsmith_dot_vec3_i32(func_2().a, ~(-vec3<i32>(var_0.x, -1i, u_input.d.x))) << ((u_input.e & ~32751u) % 32u), global3.b, -1262f);
}

