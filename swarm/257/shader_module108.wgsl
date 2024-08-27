struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
    c: f32,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: vec4<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<f32>(298f, -116f, -229f, 1190f), 1u, 494f);

var<private> global1: array<Struct_3, 17> = array<Struct_3, 17>(Struct_3(false, 1u, vec4<i32>(566i, 1i, i32(-2147483648), 0i), Struct_1(vec2<u32>(19674u, 4294967295u))), Struct_3(true, 34187u, vec4<i32>(-43738i, i32(-2147483648), -52221i, 69065i), Struct_1(vec2<u32>(44723u, 4294967295u))), Struct_3(false, 14364u, vec4<i32>(i32(-2147483648), 0i, -26779i, -65018i), Struct_1(vec2<u32>(52867u, 108u))), Struct_3(true, 46258u, vec4<i32>(48234i, -4075i, -49890i, 0i), Struct_1(vec2<u32>(59292u, 4294967295u))), Struct_3(false, 73698u, vec4<i32>(3274i, -1i, -47195i, -1312i), Struct_1(vec2<u32>(1u, 0u))), Struct_3(false, 75106u, vec4<i32>(2147483647i, -30725i, 39671i, 3304i), Struct_1(vec2<u32>(0u, 1u))), Struct_3(true, 0u, vec4<i32>(i32(-2147483648), i32(-2147483648), 17726i, -1i), Struct_1(vec2<u32>(4294967295u, 4294967295u))), Struct_3(false, 1u, vec4<i32>(-12279i, i32(-2147483648), -5501i, 2147483647i), Struct_1(vec2<u32>(0u, 53396u))), Struct_3(false, 0u, vec4<i32>(-9005i, -5244i, -59599i, -26963i), Struct_1(vec2<u32>(37019u, 0u))), Struct_3(true, 19978u, vec4<i32>(-22673i, 2147483647i, 17018i, 35776i), Struct_1(vec2<u32>(0u, 0u))), Struct_3(false, 62500u, vec4<i32>(0i, 34973i, -18627i, -1i), Struct_1(vec2<u32>(1u, 4294967295u))), Struct_3(false, 1u, vec4<i32>(0i, -1i, 2147483647i, 0i), Struct_1(vec2<u32>(5761u, 4294967295u))), Struct_3(true, 75404u, vec4<i32>(-1i, 1i, 1i, 1i), Struct_1(vec2<u32>(4294967295u, 25444u))), Struct_3(true, 0u, vec4<i32>(1i, 0i, i32(-2147483648), -15830i), Struct_1(vec2<u32>(1u, 56994u))), Struct_3(false, 83587u, vec4<i32>(-1i, 19589i, -5520i, 1i), Struct_1(vec2<u32>(22925u, 25905u))), Struct_3(true, 43592u, vec4<i32>(1i, 2147483647i, 0i, -46001i), Struct_1(vec2<u32>(4294967295u, 35085u))), Struct_3(false, 11083u, vec4<i32>(3472i, -3763i, 29345i, -41973i), Struct_1(vec2<u32>(77767u, 13731u))));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_3) -> f32 {
    var var_0 = !any(vec4<bool>(false, true, select(any(vec4<bool>(arg_3.a, true, arg_3.a, true)), true, global0.b >= global0.b), arg_3.a));
    let var_1 = arg_3.b;
    var var_2 = any(vec4<bool>(arg_3.a, all(!vec4<bool>(true, arg_3.a, arg_3.a, false)), !((arg_2.x | global0.b) <= 17300u), true));
    var var_3 = ((~vec2<i32>(-5264i, 54549i) ^ vec2<i32>(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_3.c.x, -31856i), vec2<i32>(1i, u_input.a.x)))) | -vec2<i32>(-2147483647i, min(arg_3.c.x, 22373i))) | _wgslsmith_mod_vec2_i32(vec2<i32>(arg_3.c.x, ~82i), -abs(countOneBits(u_input.a.yy)));
    var var_4 = vec3<bool>(arg_3.a, arg_3.a, select(arg_3.a, any(vec3<bool>(true, arg_3.a, true)), !all(vec2<bool>(arg_3.a, arg_3.a))) && arg_3.a);
    return -1041f;
}

fn func_2() -> vec3<bool> {
    var var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.a.x))), 1461f), -600f, -823f, global0.a.x);
    var var_1 = global0.b;
    global1 = array<Struct_3, 17>();
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.c + _wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) - var_0.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global0.a.ywz, Struct_1(vec2<u32>(4294967295u, 4294967295u)), ~vec3<u32>(global0.b, 4294967295u, global0.b), global1[_wgslsmith_index_u32(4294967295u, 17u)]))), _wgslsmith_f_op_f32(sign(var_0.x)), true)), _wgslsmith_f_op_f32(global0.c * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1235f - 1208f)))));
    var_1 = _wgslsmith_mod_u32(~(global0.b << (global0.b % 32u)), ~global0.b);
    return select(select(select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true)), vec3<bool>(false, true, true), vec3<bool>(any(vec4<bool>(true, true, true, true)), false, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), u_input.b != ((0i << (global0.b % 32u)) | _wgslsmith_add_i32(-37953i, 14192i))), !select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), true), !select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true), vec3<bool>(var_0.x == global0.a.x, select(false, false, false), false)));
}

fn func_1(arg_0: vec4<u32>) -> Struct_3 {
    var var_0 = select(func_2(), vec3<bool>(true, true, true), !vec3<bool>(_wgslsmith_f_op_f32(global0.a.x - 1000f) == 519f, true, true));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(680f, global0.a.x) - _wgslsmith_f_op_f32(global0.c * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1172f))), _wgslsmith_f_op_f32(global0.a.x - _wgslsmith_f_op_f32(-global0.a.x)))));
    var_0 = vec3<bool>(false, var_0.x && var_0.x, global0.b <= abs(arg_0.x));
    var var_2 = global1[_wgslsmith_index_u32(2228u, 17u)];
    let var_3 = _wgslsmith_div_i32(var_2.c.x & 1i, 1i);
    return Struct_3(arg_0.x < 4294967295u, ~(countOneBits(_wgslsmith_add_u32(global0.b, arg_0.x)) | 30138u), vec4<i32>(_wgslsmith_dot_vec4_i32(var_2.c, var_2.c), -1i, 57938i, -13504i), Struct_1(~var_2.d.a));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: f32) -> vec3<bool> {
    global0 = Struct_2(_wgslsmith_f_op_vec4_f32(sign(global0.a)), 57175u | (abs(global0.b) ^ abs(select(54994u, arg_0.d.a.x, true))), global0.a.x);
    global0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a))) + global0.a), firstTrailingBit(~1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2), 2427f))))));
    let var_0 = Struct_1(vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_0.d.a, vec2<u32>(global0.b, arg_0.d.a.x), vec2<u32>(93784u, arg_0.b)), reverseBits(vec2<u32>(72875u, global0.b))), ~1u));
    global1 = array<Struct_3, 17>();
    global1 = array<Struct_3, 17>();
    return vec3<bool>(arg_0.a, !func_2().x, any(select(vec3<bool>(arg_0.a, 86528u == global0.b, true), !select(vec3<bool>(true, arg_1, arg_1), vec3<bool>(arg_0.a, arg_0.a, arg_0.a), true), select(func_2(), select(vec3<bool>(false, false, true), vec3<bool>(arg_1, false, arg_0.a), arg_0.a), true))));
}

fn func_5(arg_0: vec3<bool>) -> i32 {
    global1 = array<Struct_3, 17>();
    var var_0 = _wgslsmith_f_op_vec3_f32(global0.a.yyz - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.c, -1234f, -816f))) + _wgslsmith_f_op_vec3_f32(-global0.a.www))));
    let var_1 = Struct_3(true, ~global0.b, -vec4<i32>(u_input.a.x, _wgslsmith_mod_i32(u_input.b, 11322i), -(~(-1i)), 1i), func_1(vec4<u32>(global0.b, 71296u, reverseBits(_wgslsmith_sub_u32(31420u, global0.b)), global0.b)).d);
    global1 = array<Struct_3, 17>();
    global0 = Struct_2(vec4<f32>(328f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1601f, var_0.x), -1250f, 4294967295u > _wgslsmith_clamp_u32(0u, 14838u, 111175u))), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x))))), _wgslsmith_sub_u32(39959u, global0.b), _wgslsmith_f_op_f32(-2452f * var_0.x));
    return -13556i << (((~4294967295u & global0.b) ^ abs(select(global0.b, var_1.b, arg_0.x) & (1u >> (1u % 32u)))) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(global0.b);
    let var_1 = func_5(select(select(vec3<bool>(true, true, select(true, true, false)), vec3<bool>(false, true, any(vec2<bool>(true, true))), true), vec3<bool>(true, true, true), !func_4(func_1(vec4<u32>(global0.b, 70924u, 36071u, global0.b)), true, _wgslsmith_f_op_f32(trunc(global0.c)))));
    var var_2 = func_1(~(firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.b, global0.b, 45677u, global0.b), vec4<u32>(55042u, global0.b, global0.b, global0.b))) ^ _wgslsmith_div_vec4_u32(vec4<u32>(global0.b, 4294967295u, global0.b, global0.b) >> (vec4<u32>(global0.b, global0.b, global0.b, 28403u) % vec4<u32>(32u)), ~vec4<u32>(1u, 4294967295u, global0.b, 56159u))));
    let var_3 = var_2.c.ww;
    global0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(global0.c - 1204f), _wgslsmith_div_f32(992f, global0.c), _wgslsmith_f_op_f32(ceil(684f))), vec4<f32>(_wgslsmith_f_op_f32(-1000f + global0.c), _wgslsmith_f_op_f32(round(global0.c)), -727f, _wgslsmith_f_op_f32(-global0.c)))) + vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.c + global0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1008f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.a.x))), global0.c)), global0.b, 1791f);
    global1 = array<Struct_3, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(337f)), _wgslsmith_dot_vec3_i32(countOneBits(select(var_2.c.yww, reverseBits(vec3<i32>(var_1, u_input.b, -2147483647i)), vec3<bool>(var_2.a, var_2.a, var_2.a))), vec3<i32>(_wgslsmith_mod_i32(0i, -12764i), -_wgslsmith_mod_i32(1i, var_1), 16461i)), _wgslsmith_f_op_f32(-global0.a.x));
}

