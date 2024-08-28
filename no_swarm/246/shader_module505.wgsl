struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: bool,
    d: vec3<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: vec4<i32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(false, 45909i, Struct_1(vec4<f32>(-812f, 167f, -2057f, -372f), -705f, false, vec3<bool>(true, true, true), vec4<u32>(88964u, 29097u, 0u, 17584u)), vec4<i32>(22241i, 0i, -1i, -29824i), 4294967295u), Struct_2(true, 0i, Struct_1(vec4<f32>(1000f, 425f, -1403f, -247f), -189f, true, vec3<bool>(false, false, true), vec4<u32>(1u, 40138u, 36419u, 58373u)), vec4<i32>(0i, i32(-2147483648), -4765i, 1i), 4294967295u), Struct_2(true, 2147483647i, Struct_1(vec4<f32>(325f, -585f, 930f, -295f), 724f, false, vec3<bool>(false, true, false), vec4<u32>(0u, 62269u, 1u, 30690u)), vec4<i32>(0i, 7810i, 0i, i32(-2147483648)), 54562u), Struct_2(true, 0i, Struct_1(vec4<f32>(-420f, 1648f, -2530f, 1535f), 167f, true, vec3<bool>(false, false, true), vec4<u32>(17708u, 4294967295u, 4294967295u, 0u)), vec4<i32>(-7143i, -1i, -13111i, 2147483647i), 0u), Struct_2(false, -1i, Struct_1(vec4<f32>(1529f, -1755f, 903f, 1012f), 1000f, false, vec3<bool>(false, false, false), vec4<u32>(29993u, 31209u, 4294967295u, 0u)), vec4<i32>(i32(-2147483648), 41537i, -20426i, -14830i), 13647u), Struct_2(false, 1i, Struct_1(vec4<f32>(488f, -314f, -1034f, -1000f), -432f, true, vec3<bool>(false, true, true), vec4<u32>(1u, 0u, 1u, 3653u)), vec4<i32>(0i, 2147483647i, 1i, 2147483647i), 4294967295u), Struct_2(true, -1i, Struct_1(vec4<f32>(-1327f, -618f, -199f, 874f), 986f, true, vec3<bool>(false, false, false), vec4<u32>(35376u, 18991u, 64685u, 19994u)), vec4<i32>(-15505i, 0i, 2147483647i, -6820i), 0u), Struct_2(false, 2147483647i, Struct_1(vec4<f32>(-1620f, 1799f, -2066f, -1000f), 1525f, true, vec3<bool>(false, false, false), vec4<u32>(1u, 14256u, 43884u, 1u)), vec4<i32>(9224i, i32(-2147483648), 5323i, 1i), 0u), Struct_2(false, 2147483647i, Struct_1(vec4<f32>(2435f, 616f, 982f, -355f), 988f, false, vec3<bool>(true, false, false), vec4<u32>(1u, 0u, 83172u, 7010u)), vec4<i32>(0i, 8570i, -32804i, 15247i), 52197u), Struct_2(true, i32(-2147483648), Struct_1(vec4<f32>(-677f, -405f, 406f, -251f), 539f, false, vec3<bool>(true, false, false), vec4<u32>(1u, 0u, 62046u, 68927u)), vec4<i32>(1i, 0i, 8989i, 62332i), 0u));

var<private> global1: Struct_2 = Struct_2(true, 2147483647i, Struct_1(vec4<f32>(366f, 804f, 636f, -1194f), 802f, false, vec3<bool>(true, false, false), vec4<u32>(0u, 19621u, 15649u, 129858u)), vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, 2147483647i), 1u);

var<private> global2: u32 = 19188u;

var<private> global3: array<Struct_2, 7>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_1) -> u32 {
    let var_0 = countOneBits(-15591i);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_3.a.x, -402f)) + _wgslsmith_f_op_f32(-arg_3.b));
    global2 = arg_1.e.x >> (~arg_3.e.x % 32u);
    let var_2 = 0i;
    let var_3 = _wgslsmith_f_op_f32(-global1.c.a.x);
    return global1.e;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> vec2<bool> {
    var var_0 = ~(~(~((arg_2.c.e.x & arg_2.e) << (arg_1.e.x % 32u))));
    let var_1 = Struct_1(arg_1.a, arg_1.b, true, !(!vec3<bool>(true, true, global1.c.c | arg_0.d.x)), firstTrailingBit(vec4<u32>(global1.c.e.x, ~63521u, arg_0.e.x, 0u)));
    let var_2 = var_1;
    let var_3 = min(arg_2.c.e, var_2.e);
    var var_4 = vec2<u32>(func_2(arg_0, Struct_1(arg_1.a, var_1.b, var_1.c, !global1.c.d, _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 5889u, var_3.x, 4294967295u), var_3)), global1.d.zy, Struct_1(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.c.a.x, -348f, -773f, -401f))), 1f, arg_0.d.x, select(vec3<bool>(false, var_2.c, true), vec3<bool>(false, global1.a, var_1.c), true), vec4<u32>(4294967295u, 0u, 4294967295u, 1u))) << (4294967295u % 32u), var_1.e.x);
    return select(vec2<bool>(true, false), vec2<bool>(var_2.c, any(vec2<bool>(true, !var_2.c))), vec2<bool>(true, true));
}

fn func_1() -> vec2<bool> {
    var var_0 = ~(~(_wgslsmith_div_vec4_u32(vec4<u32>(global1.e, global1.c.e.x, 4294967295u, 14739u), global1.c.e) << (_wgslsmith_div_vec4_u32(global1.c.e, vec4<u32>(global1.c.e.x, 0u, 18831u, global1.c.e.x)) % vec4<u32>(32u)))) >> (vec4<u32>(30992u, reverseBits(global1.c.e.x), firstTrailingBit(~1u ^ func_2(global1.c, global1.c, global1.d.xy, global1.c)), global1.e) % vec4<u32>(32u));
    var var_1 = true;
    let var_2 = _wgslsmith_mod_vec4_u32(min(select(_wgslsmith_add_vec4_u32(global1.c.e, ~global1.c.e), vec4<u32>(_wgslsmith_dot_vec2_u32(var_0.yz, var_0.zx), ~37481u, 1u, global1.c.e.x), vec4<bool>(global1.c.c, any(vec4<bool>(true, global1.a, global1.c.d.x, global1.c.c)), all(vec4<bool>(global1.c.c, global1.c.c, global1.a, global1.c.d.x)), all(vec4<bool>(global1.c.c, true, true, false)))), ~(~vec4<u32>(4294967295u, 4338u, 85791u, var_0.x))), _wgslsmith_div_vec4_u32(global1.c.e, _wgslsmith_clamp_vec4_u32(~vec4<u32>(var_0.x, 0u, 5459u, 1u), abs(~vec4<u32>(0u, 0u, 88776u, 0u)), vec4<u32>(select(0u, var_0.x, false), _wgslsmith_mod_u32(global1.c.e.x, var_0.x), abs(global1.c.e.x), _wgslsmith_add_u32(46072u, 517u)))));
    var var_3 = false;
    let var_4 = global1.d.xzy;
    return func_3(global1.c, global1.c, Struct_2(all(vec2<bool>(false, global1.a)) && all(vec4<bool>(global1.c.c, true, global1.c.c, true)), -min(0i, 2147483647i), Struct_1(_wgslsmith_f_op_vec4_f32(-global1.c.a), _wgslsmith_f_op_f32(global1.c.a.x * -120f), _wgslsmith_mod_i32(u_input.a, var_4.x) > global1.d.x, vec3<bool>(true, global1.d.x > -39913i, var_2.x < global1.e), ~(~global1.c.e)), _wgslsmith_div_vec4_i32(global1.d, global1.d), 23161u << (firstLeadingBit(4294967295u) % 32u)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: u32) -> u32 {
    global1 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(_wgslsmith_dot_vec3_u32(arg_2.c.e.xxz, vec3<u32>(arg_1.e.x, 27853u, global1.e) | arg_2.c.e.xxx) << (arg_0.e.x % 32u)), ~4294967295u), 7u)];
    return 1386u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~func_4(global1.c, Struct_1(_wgslsmith_f_op_vec4_f32(-global1.c.a), _wgslsmith_f_op_f32(global1.c.a.x - _wgslsmith_f_op_f32(sign(-1135f))), any(func_1()), vec3<bool>(global1.a, func_1().x, !global1.a), ~vec4<u32>(16128u, global1.c.e.x, 0u, 0u)), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(25333u, 0u, global1.e), vec3<u32>(global1.c.e.x, global1.c.e.x, global1.e)), global1.c.e.zyy) | _wgslsmith_mult_u32(global1.e, min(1u, global1.c.e.x)), 7u)], global1.c.e.x ^ 1u);
    let var_1 = global1.d;
    let var_2 = ~(~_wgslsmith_mod_u32(select(3412u, global1.c.e.x, func_3(global1.c, Struct_1(global1.c.a, global1.c.a.x, global1.a, global1.c.d, vec4<u32>(4294967295u, var_0, 10008u, global1.e)), global3[_wgslsmith_index_u32(4294967295u, 7u)]).x), ~global1.e & 1u));
    var var_3 = global1.c;
    let var_4 = _wgslsmith_add_u32(43197u, _wgslsmith_mod_u32(~func_4(Struct_1(var_3.a, var_3.a.x, var_3.d.x, global1.c.d, global1.c.e), Struct_1(vec4<f32>(global1.c.a.x, global1.c.b, -453f, 604f), -3276f, var_3.c, var_3.d, vec4<u32>(0u, var_2, 57096u, 1u)), Struct_2(true, global1.b, Struct_1(vec4<f32>(var_3.a.x, -1352f, -304f, global1.c.a.x), 1000f, global1.a, var_3.d, vec4<u32>(54301u, 20080u, var_0, var_2)), global1.d, global1.e), var_0), ~(~1177u))) != _wgslsmith_mult_u32(_wgslsmith_mult_u32(global1.e, global1.e), _wgslsmith_add_u32(_wgslsmith_div_u32(4294967295u, var_3.e.x), reverseBits(var_2)) ^ _wgslsmith_clamp_u32(74265u, 32339u, ~var_0));
    var var_5 = vec4<i32>(var_1.x, _wgslsmith_dot_vec3_i32(~global1.d.yzy, var_1.ywy), -28219i, global1.d.x) >> (_wgslsmith_mult_vec4_u32(global1.c.e, ~var_3.e) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.e, _wgslsmith_div_u32(~((var_0 >> (var_2 % 32u)) | _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_2, 4294967295u), vec3<u32>(global1.e, 53851u, var_3.e.x))), 60580u), _wgslsmith_div_f32(2016f, -224f));
}

