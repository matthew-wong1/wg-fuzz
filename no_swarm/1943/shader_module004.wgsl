struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec4<f32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: i32,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_2(arg_0: i32) -> Struct_4 {
    global0 = Struct_4(global0.a);
    var var_0 = (((arg_0 >= _wgslsmith_div_i32(0i, arg_0)) && (firstTrailingBit(44353u) > (u_input.a.x | u_input.a.x))) && true) != global0.a;
    let var_1 = 1u;
    var var_2 = var_1;
    global0 = Struct_4(any(!select(vec2<bool>(global0.a, false), select(vec2<bool>(false, true), vec2<bool>(global0.a, global0.a), global0.a), false)));
    return Struct_4(true);
}

fn func_3(arg_0: f32, arg_1: Struct_4) -> Struct_4 {
    global0 = Struct_4(!((global0.a | true) & arg_1.a));
    global0 = Struct_4(any(vec4<bool>(false, true, true, !(2052f < arg_0))));
    let var_0 = vec2<i32>(_wgslsmith_mult_i32(54849i >> (_wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 72015u), 2810u) % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, _wgslsmith_mod_i32(1i, -11808i), firstLeadingBit(2147483647i)), vec3<i32>(-34688i, 1i, 1i))), select(1i, -min(8543i, i32(-1i) * -2147483647i), select(true, false, true) | all(vec3<bool>(arg_1.a, false, global0.a))));
    var var_1 = Struct_1(select(!vec3<bool>(all(vec2<bool>(false, global0.a)), global0.a, !arg_1.a), select(vec3<bool>(!global0.a, !global0.a, all(vec4<bool>(global0.a, true, false, arg_1.a))), !(!vec3<bool>(false, false, arg_1.a)), any(vec3<bool>(global0.a, true, arg_1.a))), 1u <= _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x), ~vec4<u32>(u_input.a.x, 4001u, 0u, u_input.a.x))), 2147483647i, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-782f, 119f, arg_0, arg_0)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(388f, arg_0, arg_0, arg_0) + vec4<f32>(-1364f, arg_0, arg_0, arg_0)), vec4<f32>(1012f, arg_0, arg_0, arg_0))))), _wgslsmith_mult_vec2_i32(abs(abs(var_0)), _wgslsmith_div_vec2_i32(vec2<i32>(countOneBits(-22564i), ~var_0.x), -_wgslsmith_clamp_vec2_i32(var_0, vec2<i32>(-37965i, 0i), var_0))));
    let var_2 = vec3<bool>(any(select(vec2<bool>(!var_1.a.x, false), !vec2<bool>(true, global0.a), var_1.a.xy)), global0.a, true & (true && (_wgslsmith_f_op_f32(-var_1.c.x) >= -1300f)));
    return arg_1;
}

fn func_1() -> vec4<u32> {
    global0 = func_3(-1198f, func_2(i32(-1i) * -48021i));
    global0 = func_3(-950f, func_3(1f, Struct_4(true | global0.a)));
    return _wgslsmith_mod_vec4_u32(~(reverseBits(countOneBits(vec4<u32>(u_input.a.x, u_input.a.x, 1u, 4294967295u))) | min(min(vec4<u32>(u_input.a.x, u_input.a.x, 20598u, 1u), vec4<u32>(29448u, 4294967295u, 0u, u_input.a.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 17488u, 1u, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, 1u, u_input.a.x)))), abs(vec4<u32>(47770u, 43656u >> (_wgslsmith_dot_vec2_u32(u_input.a.zz, vec2<u32>(u_input.a.x, u_input.a.x)) % 32u), ~(~u_input.a.x), ~u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~firstTrailingBit(func_1());
    var var_1 = max(~(~(-4109i)), -20842i) <= ~(~firstTrailingBit(-23006i));
    let var_2 = Struct_1(vec3<bool>(global0.a, !func_3(_wgslsmith_f_op_f32(f32(-1f) * -3336f), func_2(-2233i)).a, global0.a), _wgslsmith_add_i32(-2147483647i, firstTrailingBit(-_wgslsmith_mult_i32(0i, -31649i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(341f, _wgslsmith_div_f32(-1007f, 1889f), _wgslsmith_f_op_f32(f32(-1f) * -880f), -619f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(237f, -1556f, -1195f, -2779f), vec4<f32>(-2186f, -644f, 706f, -275f), vec4<bool>(true, global0.a, global0.a, global0.a)))))), min(vec2<i32>(-2147483647i, -1i), ~(-vec2<i32>(1i, 1i))));
    var var_3 = Struct_3(1i, ~abs(-(2147483647i & var_2.d.x)));
    var_1 = false;
    var_0 = ~countOneBits(vec4<u32>(u_input.a.x >> (u_input.a.x % 32u), _wgslsmith_clamp_u32(16451u, var_0.x, 235u), ~u_input.a.x, ~u_input.a.x)) ^ vec4<u32>(~reverseBits(reverseBits(4294967295u)), _wgslsmith_sub_u32(u_input.a.x, _wgslsmith_sub_u32(_wgslsmith_sub_u32(var_0.x, 0u), ~var_0.x)), firstTrailingBit(57811u), 9044u);
    let var_4 = Struct_3(-var_3.a, -2147483647i);
    var_0 = ~(~(~(select(vec4<u32>(var_0.x, u_input.a.x, u_input.a.x, 1u), vec4<u32>(4294967295u, u_input.a.x, 1u, 4294967295u), var_2.a.x) | ~vec4<u32>(var_0.x, u_input.a.x, 0u, var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_div_f32(var_2.c.x, 1230f), -267f, -898f, var_2.c.x), countOneBits(u_input.a.x), var_2.c.xxx);
}

