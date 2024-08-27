struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 29> = array<vec2<bool>, 29>(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false));

var<private> global1: vec4<i32>;

var<private> global2: vec4<i32> = vec4<i32>(-49942i, i32(-2147483648), -1i, 24339i);

var<private> global3: array<u32, 27> = array<u32, 27>(90714u, 1u, 1u, 47136u, 1u, 51975u, 68974u, 4294967295u, 97549u, 4294967295u, 53913u, 1u, 0u, 11912u, 1u, 1u, 49505u, 31748u, 116233u, 0u, 22281u, 4294967295u, 1u, 21228u, 9460u, 0u, 36987u);

var<private> global4: array<i32, 31>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_2() -> Struct_4 {
    var var_0 = true;
    return Struct_4(u_input.c.xx);
}

fn func_3() -> bool {
    var var_0 = Struct_4(vec2<i32>(u_input.b, _wgslsmith_mod_i32(global2.x, -(-1i | global4[_wgslsmith_index_u32(4294967295u, 31u)]))));
    global0 = array<vec2<bool>, 29>();
    let var_1 = Struct_3(_wgslsmith_f_op_f32(round(-1693f)), Struct_2(_wgslsmith_mult_vec2_u32(~u_input.a, vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.e | u_input.e, 27u)], 27u)], _wgslsmith_sub_u32(global3[_wgslsmith_index_u32(u_input.a.x, 27u)], u_input.a.x))), Struct_1(select(vec4<bool>(false, true, true, false), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), true), any(global0[_wgslsmith_index_u32(1u, 29u)])), vec4<u32>(u_input.a.x, select(47918u, 1u, true), ~u_input.d.x, u_input.a.x), select(all(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], 27u)], 29u)]), true, any(global0[_wgslsmith_index_u32(0u, 29u)]))), Struct_1(vec4<bool>(true, true, true, true), reverseBits(vec4<u32>(4294967295u, u_input.a.x, 1u, global3[_wgslsmith_index_u32(23819u, 27u)])), !any(vec2<bool>(true, true)))), _wgslsmith_mult_u32(_wgslsmith_mod_u32(~_wgslsmith_clamp_u32(u_input.e, u_input.a.x, u_input.a.x), 27645u ^ u_input.d.x), _wgslsmith_dot_vec4_u32(vec4<u32>(~2407u, global3[_wgslsmith_index_u32(u_input.e << (global3[_wgslsmith_index_u32(u_input.d.x, 27u)] % 32u), 27u)], 4294967295u, 1u << (0u % 32u)), max(vec4<u32>(global3[_wgslsmith_index_u32(107293u, 27u)], 4294967295u, u_input.a.x, u_input.d.x), vec4<u32>(global3[_wgslsmith_index_u32(29139u, 27u)], 65675u, 63082u, 4294967295u) << (vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 27u)], 24876u, 2134u, 65366u) % vec4<u32>(32u))))));
    let var_2 = ~vec2<u32>(12504u, _wgslsmith_clamp_u32(select(var_1.c, global3[_wgslsmith_index_u32(15699u, 27u)], false), abs(1u) & (4294967295u >> (var_1.b.a.x % 32u)), _wgslsmith_add_u32(min(u_input.d.x, u_input.a.x), 4294967295u & var_1.b.b.b.x)));
    global2 = ~countOneBits(~select(vec4<i32>(-1i, global4[_wgslsmith_index_u32(u_input.d.x, 31u)], global4[_wgslsmith_index_u32(32497u, 31u)], var_0.a.x), vec4<i32>(global4[_wgslsmith_index_u32(4294967295u, 31u)], -30646i, 2147483647i, global4[_wgslsmith_index_u32(var_2.x, 31u)]), !vec4<bool>(false, true, true, var_1.b.c.a.x)));
    return var_1.b.b.a.x;
}

fn func_4(arg_0: Struct_4, arg_1: vec3<bool>) -> Struct_2 {
    global0 = array<vec2<bool>, 29>();
    let var_0 = 1u;
    var var_1 = ~_wgslsmith_div_vec4_i32(vec4<i32>(arg_0.a.x, arg_0.a.x >> (u_input.d.x % 32u), func_2().a.x >> (55067u % 32u), select(~global2.x, -10837i, any(arg_1))), vec4<i32>(1i, -global2.x >> (~var_0 % 32u), 0i, _wgslsmith_mult_i32(~global2.x, abs(global4[_wgslsmith_index_u32(43090u, 31u)]))));
    let var_2 = ~14863u ^ u_input.a.x;
    return Struct_2(vec2<u32>(~(~abs(0u)), 24225u), Struct_1(select(vec4<bool>(1u >= u_input.e, select(arg_1.x, true, arg_1.x), !arg_1.x, arg_1.x), !vec4<bool>(false, arg_1.x, arg_1.x, true), vec4<bool>(arg_1.x, all(vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x)), true, all(vec4<bool>(false, arg_1.x, true, false)))), vec4<u32>(global3[_wgslsmith_index_u32(u_input.a.x, 27u)], var_0, _wgslsmith_sub_u32(~var_2, ~0u), var_0), arg_1.x), Struct_1(select(select(select(vec4<bool>(arg_1.x, true, true, false), vec4<bool>(true, false, arg_1.x, true), false), vec4<bool>(arg_1.x, arg_1.x, false, false), !vec4<bool>(true, false, arg_1.x, false)), select(!vec4<bool>(arg_1.x, arg_1.x, true, true), vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x)), (true || arg_1.x) | true), vec4<u32>(4294967295u ^ var_2, 14980u, ~global3[_wgslsmith_index_u32(max(38819u, 2098u), 27u)], 1u), true));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_3, arg_2: u32) -> Struct_2 {
    return func_4(func_2(), !vec3<bool>(!func_3(), func_3(), false));
}

fn func_5(arg_0: Struct_2) -> bool {
    global2 = max(vec4<i32>(_wgslsmith_mod_i32(global1.x, 64531i) ^ firstTrailingBit(0i), _wgslsmith_sub_i32(-52938i, 1i) & global1.x, firstTrailingBit(-17338i), global2.x), vec4<i32>(2147483647i, -global2.x, -89277i, -2147483647i) ^ -vec4<i32>(-54821i, 2147483647i, global2.x, -44983i)) ^ (_wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(global1.x, global2.x, global2.x, -735i)), vec4<i32>(-1i, 1i, min(0i, 0i), i32(-1i) * -26800i)) | abs(vec4<i32>(42805i, 2559i, ~global2.x, u_input.c.x)));
    var var_0 = func_1(arg_0, Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1000f, 193f, arg_0.c.c)), _wgslsmith_f_op_f32(floor(885f)))), func_1(arg_0, Struct_3(1188f, arg_0, 0u), 18682u), ~min(arg_0.b.b.x | u_input.d.x, select(u_input.d.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(67580u, 27u)], 27u)], true))), ~(~(~abs(8098u))));
    global3 = array<u32, 27>();
    var var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1458f, -106f)), _wgslsmith_f_op_f32(f32(-1f) * -169f)))), 1f));
    return !(!func_3());
}

fn func_6(arg_0: bool) -> bool {
    global2 = vec4<i32>(-(~(-1i)) >> (global3[_wgslsmith_index_u32(~_wgslsmith_add_u32(19998u, global3[_wgslsmith_index_u32(u_input.d.x, 27u)]), 27u)] % 32u), select(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, 1i, global4[_wgslsmith_index_u32(1u, 31u)], global2.x), abs(vec4<i32>(2766i, u_input.b, 1i, 800i))), global2.x, arg_0 || (arg_0 && arg_0)), global2.x, -_wgslsmith_sub_i32(26296i, i32(-1i) * -2147483647i)) & select(abs(vec4<i32>(-1i) * -vec4<i32>(-2147483647i, u_input.b, global2.x, -1i)), vec4<i32>(~_wgslsmith_dot_vec2_i32(global2.wx, global1.zx), max(func_2().a.x, 2147483647i), u_input.c.x | (global4[_wgslsmith_index_u32(u_input.e, 31u)] >> (u_input.e % 32u)), abs(~u_input.b)), 0i <= u_input.c.x);
    let var_0 = 0u;
    var var_1 = !(!(!func_1(func_1(Struct_2(u_input.d, Struct_1(vec4<bool>(arg_0, false, false, true), vec4<u32>(var_0, 4048u, 38980u, 1u), arg_0), Struct_1(vec4<bool>(true, false, arg_0, true), vec4<u32>(67433u, 26606u, 2396u, 0u), true)), Struct_3(637f, Struct_2(vec2<u32>(0u, 4256u), Struct_1(vec4<bool>(arg_0, arg_0, true, arg_0), vec4<u32>(30636u, 0u, u_input.d.x, var_0), false), Struct_1(vec4<bool>(false, arg_0, arg_0, arg_0), vec4<u32>(global3[_wgslsmith_index_u32(u_input.a.x, 27u)], 53982u, 4294967295u, 1u), false)), var_0), 1714u), Struct_3(-1083f, Struct_2(u_input.a, Struct_1(vec4<bool>(false, arg_0, true, true), vec4<u32>(4294967295u, 1u, 64655u, 1u), true), Struct_1(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<u32>(global3[_wgslsmith_index_u32(var_0, 27u)], u_input.a.x, var_0, 33040u), true)), var_0), max(0u, 0u)).c.a.wxz));
    let var_2 = Struct_4(vec2<i32>(~(~global4[_wgslsmith_index_u32(var_0, 31u)]), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global2.x, global2.x, 2147483647i), u_input.c), global1.yyx)) ^ global1.yz);
    var var_3 = var_2.a.x;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 29>();
    var var_0 = func_6(!(!func_5(func_1(Struct_2(u_input.d, Struct_1(vec4<bool>(false, true, true, true), vec4<u32>(u_input.d.x, u_input.e, global3[_wgslsmith_index_u32(4294967295u, 27u)], 0u), true), Struct_1(vec4<bool>(true, false, false, true), vec4<u32>(u_input.e, 57772u, 1u, u_input.a.x), true)), Struct_3(105f, Struct_2(u_input.a, Struct_1(vec4<bool>(false, false, false, true), vec4<u32>(33447u, 0u, 4294967295u, 17069u), true), Struct_1(vec4<bool>(true, true, true, false), vec4<u32>(u_input.d.x, u_input.a.x, 0u, 70305u), false)), 11035u), 4294967295u))));
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))));
    global1 = ~firstLeadingBit(abs(reverseBits(vec4<i32>(2147483647i, global1.x, -7087i, 23592i)) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, global2.x, -20506i, 1i), vec4<i32>(25309i, u_input.c.x, u_input.b, global2.x))));
    global4 = array<i32, 31>();
    let var_2 = u_input.e;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1606f));
}

