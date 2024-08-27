struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7>;

var<private> global1: array<vec4<u32>, 20> = array<vec4<u32>, 20>(vec4<u32>(1u, 75085u, 107082u, 24963u), vec4<u32>(36879u, 4294967295u, 22367u, 10296u), vec4<u32>(10611u, 0u, 24421u, 1u), vec4<u32>(1u, 0u, 63346u, 19395u), vec4<u32>(4294967295u, 1u, 4294967295u, 48166u), vec4<u32>(1u, 1u, 75404u, 0u), vec4<u32>(60516u, 36660u, 0u, 1u), vec4<u32>(0u, 102927u, 1u, 1u), vec4<u32>(0u, 1u, 41211u, 1u), vec4<u32>(44193u, 53684u, 37100u, 4294967295u), vec4<u32>(43474u, 0u, 1u, 50329u), vec4<u32>(55783u, 50380u, 1u, 23516u), vec4<u32>(13533u, 1u, 1u, 39219u), vec4<u32>(0u, 13888u, 17713u, 4294967295u), vec4<u32>(0u, 5186u, 2715u, 4294967295u), vec4<u32>(23573u, 19107u, 28300u, 4294967295u), vec4<u32>(1u, 4294967295u, 98256u, 1u), vec4<u32>(0u, 1u, 1u, 23657u), vec4<u32>(12402u, 46403u, 8909u, 0u), vec4<u32>(27371u, 4294967295u, 4294967295u, 25976u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_4, arg_3: u32) -> vec4<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(arg_1.xz - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.zy))))), arg_2.a.b);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.x, arg_2.a.a.x), vec2<f32>(arg_1.x, arg_1.x), var_0.b)))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_0.a)) - arg_2.b.a.a), _wgslsmith_f_op_vec2_f32(step(arg_2.a.a, _wgslsmith_f_op_vec2_f32(arg_1.zz - var_0.a)))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_0.a, arg_1.xx)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b.a.a.x, 394f)) - _wgslsmith_f_op_vec2_f32(var_0.a + vec2<f32>(929f, 1000f)))));
    let var_2 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(2370f, var_1.x), vec2<f32>(var_0.a.x, arg_1.x), !var_0.b.x)), !select(var_0.b, vec2<bool>(true, true), var_0.b)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(557f, _wgslsmith_f_op_f32(sign(var_1.x))))), _wgslsmith_add_vec4_i32(vec4<i32>(~(-17070i), abs(0i), firstLeadingBit(-2147483647i), _wgslsmith_clamp_i32(arg_2.b.c.x, 29152i, arg_2.b.c.x)), _wgslsmith_mod_vec4_i32(arg_2.b.c, u_input.b) << (firstLeadingBit(vec4<u32>(5686u, 16002u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(5876u, 7u)], 7u)], arg_3)) % vec4<u32>(32u)))));
    var var_3 = var_2.a.a.b;
    var var_4 = vec3<i32>(1225i, -firstLeadingBit(var_2.a.c.x), 34165i);
    return arg_2.b.c;
}

fn func_2() -> u32 {
    global1 = array<vec4<u32>, 20>();
    let var_0 = Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(783f, -597f) - vec2<f32>(-320f, 2271f)), vec2<f32>(-944f, 462f)))), vec2<bool>(true, !select(true, false, true))), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(452f, 1000f))), vec2<bool>(false, true)), 168f, func_3(true, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -3035f), _wgslsmith_f_op_f32(f32(-1f) * -738f), -216f), Struct_4(Struct_1(vec2<f32>(-1379f, 134f), vec2<bool>(true, false)), Struct_2(Struct_1(vec2<f32>(-2529f, 332f), vec2<bool>(true, false)), -193f, vec4<i32>(-2147483647i, -1i, 9298i, -13746i))), _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 21016u), abs(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(42269u, 7u)], 7u)], 7u)], 7u)], 7u)], 7u)], 128193u))))));
    global0 = array<u32, 7>();
    var var_1 = vec4<bool>(false, any(vec2<bool>(!var_0.b.a.b.x, var_0.a.b.x)) & (~4294967295u < global0[_wgslsmith_index_u32(~(~1u), 7u)]), true, var_0.b.a.b.x);
    let var_2 = var_0.b.c;
    return _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~(vec2<u32>(83850u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 7u)]) << (_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 40520u), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 7u)], 7u)], 53152u)) % vec2<u32>(32u))), abs(select(vec2<u32>(58684u, 0u), vec2<u32>(global0[_wgslsmith_index_u32(65873u, 7u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1341u, 7u)], 7u)]), var_0.a.b.x) & select(vec2<u32>(global0[_wgslsmith_index_u32(105271u, 7u)], 10516u), vec2<u32>(14392u, 21944u), true))), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(global1[_wgslsmith_index_u32(28886u, 20u)], global1[_wgslsmith_index_u32(0u, 20u)]), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 1u, global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 7u)], 7u)]), vec4<u32>(global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(28866u, 7u)], 0u, 1u))) << (0u % 32u), 7u)], 7u)], 7u)], 7u)]);
}

fn func_1() -> u32 {
    global0 = array<u32, 7>();
    var var_0 = any(vec3<bool>(true, true, true));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -546f) != _wgslsmith_f_op_f32(trunc(-683f));
    let var_2 = u_input.a;
    return _wgslsmith_clamp_u32(func_2(), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(4294967295u, 20u)], vec4<u32>(0u, 24491u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22636u, 7u)], 7u)])) & 35209u), 7u)] | abs(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 7u)]), 7u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~4294967295u, 7u)], 7u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 7>();
    global0 = array<u32, 7>();
    var var_0 = ~abs(global0[_wgslsmith_index_u32(78414u, 7u)]);
    var_0 = ~_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~(1568u & global0[_wgslsmith_index_u32(12009u, 7u)]), 7u)], 7u)], 7u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(func_1(), 7u)], 7u)]) | _wgslsmith_mult_u32(1350u ^ (_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 7u)], 7u)], 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 7u)], 7u)]) | (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 7u)], 7u)] ^ 4294967295u)), firstLeadingBit(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 57546u, 11711u, 1u), vec4<u32>(35859u, 1u, global0[_wgslsmith_index_u32(35560u, 7u)], 43907u)))));
    var var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(497f * _wgslsmith_f_op_f32(step(-868f, _wgslsmith_f_op_f32(ceil(-604f))))), _wgslsmith_f_op_f32(f32(-1f) * -873f)), !select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), 1u < global0[_wgslsmith_index_u32(5783u, 7u)])));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(12809u, 7u)], global0[_wgslsmith_index_u32(20839u, 7u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 7u)], 7u)], 7u)], 7u)], 0u), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24978u, 7u)], 7u)], 7u)], 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 7u)], 7u)], 7u)])), 7u)]), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(55028u, 7u)], 7u)], global0[_wgslsmith_index_u32(82259u, 7u)]) & vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(39342u, 7u)], 7u)], 7u)]), _wgslsmith_add_vec2_u32(vec2<u32>(72454u, 1u), vec2<u32>(12945u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(8847u, 7u)], 7u)], 7u)]))));
}

