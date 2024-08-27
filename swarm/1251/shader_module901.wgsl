struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: vec4<u32>,
    d: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec3<f32>,
}

struct Struct_5 {
    a: bool,
    b: vec2<bool>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-208f, 263f);

var<private> global1: Struct_2;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: Struct_5) -> vec2<i32> {
    let var_0 = u_input.b.x;
    global1 = Struct_2(select(global1.a, !vec2<bool>(all(vec3<bool>(global1.a.x, arg_0.b.x, false)), all(vec4<bool>(global1.b.d, global1.b.d, arg_0.b.x, global1.b.b.x))), !arg_0.a), Struct_1(global1.b.c.wwx, global1.b.b, global1.b.c | global1.b.c, _wgslsmith_dot_vec4_i32(min(vec4<i32>(-1i, 29012i, u_input.e.x, 4264i), vec4<i32>(u_input.d, u_input.e.x, u_input.d, u_input.d)), vec4<i32>(u_input.d, -11493i, u_input.e.x, -2426i)) != _wgslsmith_mod_i32(u_input.d, ~1i)));
    var var_1 = u_input.b;
    var var_2 = vec2<bool>(global1.b.d, !all(vec3<bool>(286f >= arg_0.c, arg_0.b.x, global1.a.x)));
    var_1 = vec2<u32>(max(var_1.x, u_input.a ^ (u_input.a | 75072u)), 65321u);
    return vec2<i32>(1i, u_input.e.x & -1i);
}

fn func_3() -> i32 {
    let var_0 = min(abs(vec4<i32>(select(max(17516i, u_input.e.x), u_input.d, false), func_2(Struct_5(true, vec2<bool>(false, true), global0.x)).x, -u_input.e.x << (24014u % 32u), _wgslsmith_mod_i32(0i, u_input.d))), ~(~reverseBits(vec4<i32>(u_input.d, u_input.e.x, 0i, -8021i))) ^ vec4<i32>(u_input.e.x, u_input.d, max(_wgslsmith_add_i32(u_input.d, u_input.e.x), i32(-1i) * -11748i), 64726i));
    let var_1 = _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), global0.x)));
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -461f, _wgslsmith_f_op_f32(floor(337f)), -1000f) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(global0.x, -1159f, global1.b.b.x)))), _wgslsmith_f_op_f32(-1f), global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1111f)), global0.x)))));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1216f, 1000f, global0.x, global0.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1762f, var_1, -424f, -1308f))))));
    let var_3 = -1052f;
    return reverseBits(~(~max(-u_input.d, -var_0.x)));
}

fn func_1(arg_0: Struct_4, arg_1: i32) -> vec3<i32> {
    return ~(~vec3<i32>(_wgslsmith_dot_vec2_i32(func_2(Struct_5(false, vec2<bool>(true, global1.b.d), global0.x)), max(u_input.e, vec2<i32>(u_input.d, -54986i))), func_3(), -1i));
}

fn func_4(arg_0: bool, arg_1: vec3<i32>) -> i32 {
    var var_0 = global1.b.a;
    var var_1 = Struct_4(var_0.xx & countOneBits(u_input.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-1210f)), global0.x, arg_0)), _wgslsmith_f_op_f32(372f + _wgslsmith_f_op_f32(-global0.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(453f, -2228f, global0.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -377f, -527f))))));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 1957f)))))) * _wgslsmith_f_op_vec2_f32(sign(var_1.b.xz))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.x), var_1.b.x)));
    var var_3 = var_0.x;
    return _wgslsmith_dot_vec2_i32(-vec2<i32>(abs(-2147483647i), arg_1.x | (37207i | arg_1.x)), _wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(func_2(Struct_5(global1.b.d, global1.a, -1179f)), _wgslsmith_mod_vec2_i32(select(u_input.e, vec2<i32>(2147483647i, u_input.d), vec2<bool>(true, arg_0)), vec2<i32>(-2147483647i, u_input.d)), vec2<i32>(countOneBits(arg_1.x), -35257i)), u_input.e));
}

fn func_5(arg_0: i32) -> Struct_2 {
    let var_0 = Struct_3(abs(reverseBits(_wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.d, -1i, -31237i), -vec3<i32>(2147483647i, 2147483647i, 2147483647i)))), global1.b, Struct_2(vec2<bool>(false, false), global1.b), Struct_2(!(!global1.a), Struct_1(abs(firstTrailingBit(vec3<u32>(u_input.a, global1.b.a.x, 1u))), !select(vec4<bool>(global1.a.x, true, false, false), global1.b.b, global1.b.b), (global1.b.c & global1.b.c) | global1.b.c, (global1.b.c.x > 1u) | (31758i <= arg_0))), Struct_1(vec3<u32>(u_input.a, abs(~global1.b.a.x), ~u_input.c), select(select(select(vec4<bool>(true, false, global1.b.d, false), vec4<bool>(global1.a.x, global1.b.d, global1.b.b.x, global1.b.d), vec4<bool>(global1.b.b.x, true, true, false)), vec4<bool>(global1.a.x, true, true, global1.a.x), true), vec4<bool>(true, true, true, true), true | all(vec3<bool>(global1.a.x, global1.b.d, global1.a.x))), global1.b.c, global1.b.d));
    global1 = var_0.c;
    var var_1 = u_input.b.x;
    let var_2 = var_0;
    var var_3 = ~vec4<u32>(_wgslsmith_clamp_u32(0u, u_input.b.x, u_input.c) >> (var_2.d.b.a.x % 32u), _wgslsmith_add_u32(~1u, var_2.b.c.x), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(58823u, 16990u, var_2.b.c.x), global1.b.a), _wgslsmith_add_u32(u_input.a, var_0.c.b.c.x)), 4294967295u) | (~(~vec4<u32>(4294967295u, 4294967295u, global1.b.a.x, u_input.b.x)) ^ global1.b.c);
    return Struct_2(global1.a, global1.b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(func_4(global1.b.d | (global1.a.x || global1.a.x), func_1(Struct_4(u_input.b | vec2<u32>(1u, 1u), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, 121f, global0.x)))), 2147483647i)));
    let var_0 = global1.b.d;
    let var_1 = ~global1.b.a.x;
    global1 = Struct_2(vec2<bool>(!(global0.x > _wgslsmith_f_op_f32(abs(global0.x))), !all(!global1.a)), func_5(-2147483647i).b);
    global1 = Struct_2(global1.a, Struct_1(~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, global1.b.a.x, 22885u), countOneBits(global1.b.a)), vec4<bool>(true, true, !(!global1.b.d), false), global1.b.c, _wgslsmith_mod_u32(45619u ^ var_1, var_1) >= _wgslsmith_mod_u32(u_input.b.x, var_1)));
    global1 = func_5(14184i);
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1039f, _wgslsmith_div_f32(global0.x, global0.x)) * vec2<f32>(global0.x, _wgslsmith_f_op_f32(select(-688f, -1173f, false)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1062f, _wgslsmith_f_op_f32(sign(global0.x))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(277f, 1383f))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(805f, _wgslsmith_f_op_f32(-1f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(441f, -1107f)))));
    let x = u_input.a;
    s_output = StorageBuffer(70512u, vec3<f32>(_wgslsmith_f_op_f32(-566f * 1f), _wgslsmith_f_op_f32(-796f * global0.x), -609f), 4294967295u);
}

