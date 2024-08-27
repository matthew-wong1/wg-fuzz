struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: Struct_2,
    d: vec3<i32>,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(-1i, vec3<u32>(0u, 1u, 42529u), true, true), Struct_1(14781i, vec3<u32>(4294967295u, 64335u, 4294967295u), false, false), Struct_1(i32(-2147483648), vec3<u32>(47396u, 1968u, 4294967295u), false, false), Struct_1(2147483647i, vec3<u32>(18300u, 0u, 1u), false, true), Struct_1(-1i, vec3<u32>(0u, 0u, 2902u), false, true), Struct_1(0i, vec3<u32>(95344u, 1u, 1u), true, false), Struct_1(-36503i, vec3<u32>(51170u, 1u, 4781u), true, true), Struct_1(23389i, vec3<u32>(4294967295u, 1u, 63626u), false, true), Struct_1(34870i, vec3<u32>(12936u, 29634u, 10507u), false, false), Struct_1(i32(-2147483648), vec3<u32>(13451u, 0u, 15574u), true, true), Struct_1(651i, vec3<u32>(1u, 1u, 1u), false, false), Struct_1(46448i, vec3<u32>(0u, 36314u, 1u), false, true), Struct_1(-40248i, vec3<u32>(0u, 64409u, 39851u), false, false), Struct_1(-2734i, vec3<u32>(1u, 0u, 0u), true, false), Struct_1(0i, vec3<u32>(4294967295u, 0u, 1u), false, false), Struct_1(-23292i, vec3<u32>(51611u, 1u, 43087u), true, false), Struct_1(2720i, vec3<u32>(12923u, 63443u, 18474u), false, true), Struct_1(6147i, vec3<u32>(37739u, 4294967295u, 0u), false, true), Struct_1(1i, vec3<u32>(4294967295u, 1u, 9260u), true, false), Struct_1(i32(-2147483648), vec3<u32>(4294967295u, 18664u, 0u), true, true), Struct_1(-25165i, vec3<u32>(0u, 64257u, 14863u), false, true), Struct_1(-74263i, vec3<u32>(4062u, 0u, 46872u), true, true), Struct_1(46286i, vec3<u32>(15823u, 21401u, 19310u), true, true));

var<private> global1: array<f32, 24> = array<f32, 24>(-1314f, 137f, 879f, 1272f, 2142f, 551f, 2351f, -1120f, 1031f, 279f, -1255f, -1745f, 809f, 328f, 1046f, 1878f, -306f, 439f, 1070f, 336f, -1214f, 695f, 294f, 1000f);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1) -> u32 {
    let var_0 = arg_1;
    global0 = array<Struct_1, 23>();
    let var_1 = var_0.d;
    global1 = array<f32, 24>();
    let var_2 = !all(select(select(vec3<bool>(arg_1.c, arg_0.a, false), vec3<bool>(var_0.d, true, false), vec3<bool>(arg_1.d, arg_0.a, false)), select(vec3<bool>(true, true, true), vec3<bool>(arg_1.d, false, var_0.c), true), select(!vec3<bool>(true, arg_1.c, var_0.c), select(vec3<bool>(arg_0.b, var_1, false), vec3<bool>(true, true, true), vec3<bool>(arg_0.b, false, true)), true)));
    return var_0.b.x;
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_3) -> Struct_4 {
    var var_0 = !all(arg_0.yw);
    var var_1 = vec3<u32>(func_3(Struct_4(false == any(arg_0), true, u_input.a), arg_1.c.b), firstTrailingBit(1u), _wgslsmith_sub_u32(firstLeadingBit(_wgslsmith_clamp_u32(1u, arg_1.c.b.b.x >> (1u % 32u), ~arg_1.c.b.b.x)), 1u));
    let var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.a)), _wgslsmith_f_op_vec2_f32(arg_1.a * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.a.x * -311f)), _wgslsmith_f_op_f32(select(arg_1.a.x, _wgslsmith_f_op_f32(784f - -1480f), true)))), true));
    let var_3 = arg_0.zzz;
    var var_4 = Struct_2(arg_1.c.a, global0[_wgslsmith_index_u32(u_input.c, 23u)]);
    return Struct_4(arg_0.x & false, arg_0.x, select(_wgslsmith_dot_vec3_i32(-arg_1.d, abs(vec3<i32>(-9798i, u_input.a, -15839i))) >> (~var_4.b.b.x % 32u), abs(u_input.a), any(arg_0)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(25059u, 24u)]));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b, arg_0.b.x), 24u)] + -323f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -641f) * _wgslsmith_div_f32(324f, -2606f)))))), -740f);
    var var_2 = select(vec2<u32>(max(u_input.c, abs(abs(arg_0.b.x))), arg_0.b.x), ~(~vec2<u32>(~1u, u_input.b & 59959u)), arg_0.c);
    var var_3 = ~arg_0.b.x;
    var var_4 = 0i;
    return ~arg_0.b.x;
}

fn func_1() -> Struct_3 {
    let var_0 = vec4<u32>(6389u, ~(u_input.c << (~(~24975u) % 32u)), 37898u, ~(~_wgslsmith_mod_u32(u_input.b, u_input.c)));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(12349u, func_4(Struct_1(u_input.a, vec3<u32>(u_input.c, u_input.b, u_input.b), false, false), func_2(vec4<bool>(false, false, true, true), Struct_3(vec2<f32>(global1[_wgslsmith_index_u32(var_0.x, 24u)], 548f), Struct_2(vec2<f32>(702f, -1000f), global0[_wgslsmith_index_u32(23762u, 23u)]), Struct_2(vec2<f32>(global1[_wgslsmith_index_u32(0u, 24u)], 880f), global0[_wgslsmith_index_u32(u_input.c, 23u)]), vec3<i32>(21279i, u_input.a, u_input.a))))), abs(firstLeadingBit(_wgslsmith_mult_vec2_u32(var_0.yy, var_0.zy)))), abs(var_0.zy)), 23u)];
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1[_wgslsmith_index_u32(var_1.b.x, 24u)], global1[_wgslsmith_index_u32(4294967295u, 24u)]), vec2<f32>(global1[_wgslsmith_index_u32(43821u, 24u)], global1[_wgslsmith_index_u32(var_1.b.x, 24u)]))), _wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(0u, 24u)], global1[_wgslsmith_index_u32(39526u, 24u)]), vec2<f32>(global1[_wgslsmith_index_u32(1u, 24u)], -129f))))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(503f, global1[_wgslsmith_index_u32(1u, 24u)])))))))), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(32815u, 24u)], -1316f))), Struct_1(var_1.a, ~(vec3<u32>(17499u, 26917u, 35478u) >> (var_1.b % vec3<u32>(32u))), true, all(select(vec4<bool>(var_1.c, var_1.c, true, true), vec4<bool>(var_1.d, false, true, true), var_1.c)))), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1198f + global1[_wgslsmith_index_u32(u_input.c, 24u)]), global1[_wgslsmith_index_u32(80786u, 24u)])), global0[_wgslsmith_index_u32(~95294u >> (0u % 32u), 23u)]), abs(-_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, var_1.a, u_input.a), vec3<i32>(1i, -61609i, 12933i), vec3<i32>(var_1.a, -1i, -15846i))) >> (~vec3<u32>(~1u, ~17217u, ~1u) % vec3<u32>(32u)));
    global0 = array<Struct_1, 23>();
    let var_3 = var_2.c;
    return Struct_3(var_2.b.a, var_2.c, var_2.b, abs(reverseBits(vec3<i32>(2147483647i, i32(-1i) * -2147483647i, -1i))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 23>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(u_input.c, 24u)])), global1[_wgslsmith_index_u32(u_input.b, 24u)]) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(893f, -1574f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -386f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 24u)]))), all(select(vec2<bool>(true, true), vec2<bool>(true, true), true)))), global0[_wgslsmith_index_u32(select(u_input.c ^ countOneBits(51303u), u_input.c, all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)))) & 0u, 23u)]);
    let var_1 = func_1();
    var var_2 = vec4<i32>(-2147483647i, -12282i, _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(1811i, var_0.b.a, -25535i)) & select(vec3<i32>(-2147483647i, 0i, -6714i), vec3<i32>(1i, 31682i, 0i), var_1.c.b.d), var_1.d), 2147483647i) ^ -min(-select(vec4<i32>(var_1.b.b.a, -34570i, 56986i, var_0.b.a), vec4<i32>(0i, u_input.a, var_0.b.a, var_1.c.b.a), true), abs(-vec4<i32>(21425i, var_0.b.a, -6952i, -1i)));
    global0 = array<Struct_1, 23>();
    let var_3 = reverseBits(select(24921u, var_0.b.b.x, true));
    let x = u_input.a;
    s_output = StorageBuffer(-1i, ~(~firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(66422u, var_1.b.b.b.x, 2325u, 32961u), vec4<u32>(var_0.b.b.x, var_1.b.b.b.x, 36591u, 1u)))), _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(-2147483647i, var_2.x & var_2.x, var_0.b.a, var_0.b.a & var_0.b.a)), _wgslsmith_div_vec4_i32(-vec4<i32>(-63089i, u_input.a, 2147483647i, var_1.c.b.a), -(vec4<i32>(var_1.d.x, 102598i, u_input.a, var_1.b.b.a) << (vec4<u32>(16673u, var_0.b.b.x, var_3, var_3) % vec4<u32>(32u)))), -(~vec4<i32>(var_1.c.b.a, var_2.x, var_2.x, var_1.d.x) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(var_3, var_3, u_input.c, var_1.c.b.b.x), vec4<u32>(91503u, 6888u, u_input.c, u_input.c), vec4<u32>(47889u, 45600u, 72344u, 13861u)) % vec4<u32>(32u)))));
}

