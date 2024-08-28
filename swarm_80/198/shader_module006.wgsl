struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: i32,
    d: f32,
    e: vec2<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: i32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 15> = array<u32, 15>(17001u, 48161u, 60316u, 30722u, 4294967295u, 4294967295u, 4294967295u, 4446u, 12409u, 1u, 70871u, 48197u, 77373u, 4294967295u, 4294967295u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: vec2<i32>) -> vec2<i32> {
    global0 = array<u32, 15>();
    global0 = array<u32, 15>();
    global0 = array<u32, 15>();
    global0 = array<u32, 15>();
    global0 = array<u32, 15>();
    return arg_2;
}

fn func_3(arg_0: vec2<bool>) -> f32 {
    global0 = array<u32, 15>();
    global0 = array<u32, 15>();
    global0 = array<u32, 15>();
    var var_0 = _wgslsmith_add_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(min(u_input.a, 30247u), 15u)], 15u)] << (0u % 32u), (_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 15u)], 15u)]), _wgslsmith_clamp_vec3_u32(vec3<u32>(105905u, 0u, u_input.a), vec3<u32>(0u, global0[_wgslsmith_index_u32(11313u, 15u)], 1u), vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 15u)], global0[_wgslsmith_index_u32(12651u, 15u)], u_input.a))) | global0[_wgslsmith_index_u32(1u, 15u)]) | (u_input.a ^ ~_wgslsmith_sub_u32(u_input.a, u_input.a)));
    var_0 = global0[_wgslsmith_index_u32(u_input.a, 15u)] ^ _wgslsmith_mult_u32(u_input.a, _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.a, 4294967295u), 15u)], _wgslsmith_mod_u32(~u_input.a, u_input.a)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1047f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1241f), 2068f, true))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1629f * -301f)))));
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(func_3(vec2<bool>(true, true))), 119f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(sign(1058f)), _wgslsmith_f_op_f32(f32(-1f) * -901f)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1390f, -206f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1872f, -707f), vec2<f32>(-2076f, -759f), false))))));
    global0 = array<u32, 15>();
    let var_1 = ~u_input.b.x;
    let var_2 = Struct_1(55762u, select(~vec3<u32>(u_input.a, 0u, 4294967295u), ~(~vec3<u32>(0u, u_input.a, u_input.a)), select(select(vec3<bool>(true, true, arg_0), vec3<bool>(false, arg_0, arg_0), vec3<bool>(false, false, true)), vec3<bool>(arg_0, true, arg_0), vec3<bool>(true, true, arg_0))) | reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 7968u, 1u), select(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(u_input.a, 4294967295u, 20451u), vec3<bool>(arg_0, arg_0, true)))), vec2<i32>(var_1, -10211i));
    var var_3 = firstLeadingBit(vec4<u32>(9127u, 1u, 38186u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(33332u, var_2.a, u_input.a, u_input.a), vec4<u32>(global0[_wgslsmith_index_u32(108465u, 15u)], 1u, 0u, global0[_wgslsmith_index_u32(u_input.a, 15u)]))));
    return _wgslsmith_f_op_f32(var_0.x + 557f);
}

fn func_4(arg_0: f32, arg_1: vec2<f32>, arg_2: vec3<u32>) -> Struct_4 {
    global0 = array<u32, 15>();
    global0 = array<u32, 15>();
    global0 = array<u32, 15>();
    var var_0 = ~(-2818i);
    let var_1 = _wgslsmith_clamp_i32(12604i, countOneBits(~(~reverseBits(1i))), 2527i);
    return Struct_4(-u_input.b.x, Struct_2(Struct_1(select(~arg_2.x, firstLeadingBit(87618u), any(vec2<bool>(false, false))), firstLeadingBit(arg_2) << (vec3<u32>(arg_2.x, 4294967295u, arg_2.x) % vec3<u32>(32u)), abs(vec2<i32>(-2147483647i, 2147483647i) | vec2<i32>(2147483647i, var_1))), Struct_1(arg_2.x, ~(~arg_2), vec2<i32>(21751i, 1i)), vec4<i32>(u_input.b.x, u_input.b.x, var_1, (-38229i | var_1) ^ 58i), _wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(0i, u_input.b.x, 16567i, -44268i) & vec4<i32>(var_1, 0i, var_1, -2147483647i)), -vec4<i32>(40486i, -32884i, var_1, -15035i)), ~max(arg_2, vec3<u32>(27544u, 56335u, 4294967295u))), _wgslsmith_mod_i32(firstLeadingBit(_wgslsmith_sub_i32(-var_1, u_input.b.x)), u_input.b.x), -276f, arg_2.zx);
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: bool) -> Struct_2 {
    var var_0 = ~vec2<u32>(~arg_1.b.a.b.x, reverseBits(4294967295u));
    return arg_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec3<i32>(u_input.b.x, _wgslsmith_add_i32(1i, ~_wgslsmith_mult_i32(u_input.b.x, 20898i)), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x) << (vec2<u32>(1u, 16379u) % vec2<u32>(32u)), func_1(Struct_3(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(17486u, 15u)], 15u)], 15u)]), true, vec2<i32>(u_input.b.x, u_input.b.x))), ~_wgslsmith_div_i32(u_input.b.x, u_input.b.x))), func_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1016f, -454f)), 260f)), vec2<f32>(2314f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(true)))), select(vec3<u32>(countOneBits(4294967295u), ~u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(1u, 15u)], global0[_wgslsmith_index_u32(24807u, 15u)], 1u), vec4<u32>(7915u, 4294967295u, u_input.a, global0[_wgslsmith_index_u32(u_input.a, 15u)]))), _wgslsmith_div_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 15u)], 65155u, 45656u), ~vec3<u32>(0u, global0[_wgslsmith_index_u32(u_input.a, 15u)], 1u)), vec3<bool>(true, true, true))), all(vec3<bool>(true, !(u_input.b.x > -2147483647i), select(any(vec4<bool>(true, false, false, false)), true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-260f * 1949f)), _wgslsmith_f_op_f32(815f * -706f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(137f - 1000f)))), func_5(~_wgslsmith_mod_vec3_i32(var_0.c.ywz, var_0.d.zyy), Struct_4(15479i, func_4(_wgslsmith_f_op_f32(-636f - -168f), _wgslsmith_f_op_vec2_f32(vec2<f32>(564f, 312f) - vec2<f32>(2159f, 380f)), _wgslsmith_mult_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 15u)], u_input.a, var_0.a.b.x), vec3<u32>(global0[_wgslsmith_index_u32(0u, 15u)], 1u, 0u))).b, _wgslsmith_dot_vec2_i32(firstLeadingBit(u_input.b.zz), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), var_0.c.wx)), _wgslsmith_f_op_f32(func_3(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)))), vec2<u32>(~4294967295u, ~14402u)), all(vec2<bool>(true, all(vec2<bool>(true, false))))).b.b.x, min(vec4<u32>(~u_input.a, 0u, 7316u, _wgslsmith_div_u32(~u_input.a, ~62123u)), vec4<u32>(_wgslsmith_add_u32(~4596u, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.b.b.x, u_input.a), 15u)]), u_input.a, abs(67808u), countOneBits(min(4294967295u, 1u)))), _wgslsmith_dot_vec4_i32(select(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(-1i, u_input.b.x, -23175i, u_input.b.x)), vec4<i32>(var_0.d.x, -22874i, var_0.b.c.x, 1i), var_0.c), var_0.c, all(vec4<bool>(false, false, true, true)) || true), min(var_0.c, -vec4<i32>(u_input.b.x, 0i, u_input.b.x, 2147483647i))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -174f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-438f * 882f), _wgslsmith_f_op_f32(select(-1000f, 398f, false))))) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(360f, _wgslsmith_f_op_f32(446f + 1629f)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(295f, 1590f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-571f, 1172f)))))))));
}

