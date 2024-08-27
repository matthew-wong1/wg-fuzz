struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 30> = array<vec3<u32>, 30>(vec3<u32>(4294967295u, 0u, 14654u), vec3<u32>(0u, 23301u, 20362u), vec3<u32>(98468u, 78007u, 68552u), vec3<u32>(18109u, 4294967295u, 0u), vec3<u32>(4294967295u, 0u, 4937u), vec3<u32>(7987u, 11569u, 20980u), vec3<u32>(1u, 4294967295u, 17928u), vec3<u32>(51807u, 0u, 1u), vec3<u32>(0u, 13768u, 38037u), vec3<u32>(35137u, 0u, 0u), vec3<u32>(30415u, 0u, 74450u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(0u, 0u, 0u), vec3<u32>(59042u, 16984u, 0u), vec3<u32>(86421u, 11268u, 18336u), vec3<u32>(24428u, 585u, 48023u), vec3<u32>(79458u, 4294967295u, 107428u), vec3<u32>(0u, 1u, 5685u), vec3<u32>(4294967295u, 4294967295u, 77297u), vec3<u32>(9030u, 26087u, 1u), vec3<u32>(1u, 1u, 1u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(45574u, 4294967295u, 34607u), vec3<u32>(27730u, 22118u, 8571u), vec3<u32>(14324u, 23399u, 0u), vec3<u32>(4294967295u, 26586u, 1u), vec3<u32>(54082u, 21954u, 45062u), vec3<u32>(4294967295u, 9795u, 5657u), vec3<u32>(11984u, 89009u, 23600u), vec3<u32>(11242u, 4294967295u, 789u));

var<private> global1: array<vec2<u32>, 18>;

var<private> global2: Struct_1;

var<private> global3: vec3<bool>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> Struct_1 {
    global1 = array<vec2<u32>, 18>();
    var var_0 = vec2<u32>(global2.b, min(_wgslsmith_add_u32(_wgslsmith_clamp_u32(global2.b, u_input.c | 24025u, ~global2.b), 1u), countOneBits(u_input.b)));
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-283f, 996f))), 296f, -139f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1173f, -1859f, 1000f, global2.c) * vec4<f32>(988f, global2.c, global2.c, global2.c)), vec4<f32>(1797f, global2.c, global2.c, 1136f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 561f, 776f, -1340f)))));
    var var_2 = Struct_2(1191f);
    let var_3 = 0u;
    return Struct_1(global2.a, 76207u, _wgslsmith_f_op_f32(-var_1.a.x));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: u32) -> vec3<bool> {
    var var_0 = true;
    let var_1 = _wgslsmith_add_vec3_u32(vec3<u32>(~33273u, _wgslsmith_add_u32(abs(~1u), 1u), _wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(34440u, ~global2.b), 30u)], ~global0[_wgslsmith_index_u32(global2.b, 30u)])), _wgslsmith_mod_vec3_u32(global0[_wgslsmith_index_u32(func_2().b, 30u)], ~_wgslsmith_sub_vec3_u32(vec3<u32>(global2.b, arg_2, arg_2), ~vec3<u32>(global2.b, 3174u, u_input.b))));
    global2 = func_2();
    let var_2 = true;
    let var_3 = all(select(!(!vec4<bool>(global2.a.x, true, var_2, false)), !select(select(vec4<bool>(false, var_2, false, global2.a.x), vec4<bool>(global3.x, false, global2.a.x, global2.a.x), vec4<bool>(true, global3.x, false, global2.a.x)), select(vec4<bool>(true, global3.x, false, false), vec4<bool>(global3.x, global3.x, global3.x, false), true), vec4<bool>(global2.a.x, global2.a.x, true, true)), vec4<bool>(false, global3.x, !(global3.x & true), var_2)));
    return vec3<bool>(var_2, true, select(global3.x, false, _wgslsmith_f_op_f32(floor(722f)) == global2.c));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: vec4<i32>) -> Struct_4 {
    var var_0 = any(select(vec4<bool>(global2.a.x, all(vec4<bool>(true, global2.a.x, true, false)), arg_0.x, true), !(!vec4<bool>(true, false, global3.x, false)), vec4<bool>(arg_0.x, u_input.d.x < -1i, global3.x, arg_0.x || !global2.a.x)));
    let var_1 = func_2();
    var var_2 = select(vec2<u32>(~0u, ~1u >> (select(0u, 6519u, var_1.a.x) % 32u)) & ~(_wgslsmith_div_vec2_u32(global1[_wgslsmith_index_u32(var_1.b, 18u)], global1[_wgslsmith_index_u32(var_1.b, 18u)]) << (~global1[_wgslsmith_index_u32(1u, 18u)] % vec2<u32>(32u))), _wgslsmith_clamp_vec2_u32(abs(vec2<u32>(_wgslsmith_div_u32(u_input.b, 14501u), 1u)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(global0[_wgslsmith_index_u32(reverseBits(0u), 30u)], vec3<u32>(9977u, var_1.b, 26966u)), ~vec3<u32>(4294967295u, 10804u, 4294967295u)), 18u)], global1[_wgslsmith_index_u32(~4294967295u, 18u)]), global2.a.x);
    global3 = select(func_3(arg_2.x, Struct_2(_wgslsmith_f_op_f32(sign(var_1.c))), _wgslsmith_dot_vec4_u32(vec4<u32>(func_2().b, var_1.b, _wgslsmith_div_u32(0u, 1u), _wgslsmith_add_u32(0u, 14509u)), vec4<u32>(u_input.c ^ global2.b, ~var_2.x, max(var_1.b, var_2.x), var_2.x))), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, global3.x, true), select(vec3<bool>(global2.a.x, global2.a.x, var_1.a.x), vec3<bool>(false, global2.a.x, global3.x), global3.x)), select(vec3<bool>(arg_2.x < u_input.a, true, arg_0.x), vec3<bool>(global2.a.x, !global2.a.x, arg_2.x == -1i), !func_3(arg_2.x, Struct_2(278f), 48714u)), vec3<bool>(all(select(vec2<bool>(arg_0.x, true), global3.yx, global2.a.x)), global3.x, !(!arg_0.x))), true);
    let var_3 = u_input.c;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global2.a, Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global2.c), _wgslsmith_f_op_f32(global2.c * 290f), _wgslsmith_f_op_f32(f32(-1f) * -574f), _wgslsmith_f_op_f32(f32(-1f) * -780f)))), max(select(-(~vec4<i32>(u_input.d.x, -1i, u_input.a, 2147483647i)), ~_wgslsmith_add_vec4_i32(vec4<i32>(-1i, 4219i, u_input.d.x, u_input.d.x), vec4<i32>(-19673i, -2147483647i, u_input.d.x, 2147483647i)), all(select(vec4<bool>(global2.a.x, global3.x, true, global3.x), vec4<bool>(global2.a.x, true, false, global2.a.x), vec4<bool>(global3.x, global3.x, true, global3.x)))), vec4<i32>(i32(-1i) * -36742i, u_input.d.x, 71807i, -u_input.a) | ((vec4<i32>(27857i, -90390i, 13008i, -2147483647i) >> (vec4<u32>(18219u, u_input.e, 66104u, u_input.e) % vec4<u32>(32u))) >> (_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.b, 0u, 1u), vec4<u32>(global2.b, u_input.c, 16048u, 26391u)) % vec4<u32>(32u)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.c, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-3120f))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.c, -569f)), vec2<f32>(1f, 1f))))));
    var_2 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(ceil(-1257f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * global2.c) - global2.c))))));
    global1 = array<vec2<u32>, 18>();
    var_2 = var_0.a.zx;
    global3 = vec3<bool>(u_input.a > u_input.d.x, !global2.a.x, global3.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(316f, _wgslsmith_f_op_f32(floor(-242f)))), vec2<u32>(global2.b, 0u), -_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(~u_input.d, reverseBits(vec3<i32>(2147483647i, u_input.a, u_input.a)), ~vec3<i32>(1i, u_input.a, -39876i)), u_input.d), reverseBits(-(~(vec4<i32>(-1i, u_input.d.x, u_input.a, -30214i) & vec4<i32>(u_input.a, u_input.a, -24666i, -1i)))));
}

