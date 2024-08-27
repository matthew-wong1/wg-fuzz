struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec3<u32>) -> f32 {
    var var_0 = abs(-((select(vec2<i32>(u_input.d, 1i), u_input.a.yy, false) >> (vec2<u32>(arg_2.x, u_input.c.x) % vec2<u32>(32u))) >> (~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c.x, 19156u), arg_1.zw, vec2<u32>(0u, 33151u)) % vec2<u32>(32u))));
    let var_1 = firstTrailingBit(abs(arg_1.xxz)) & _wgslsmith_sub_vec3_u32(u_input.c, arg_2);
    var_0 = u_input.a.zy;
    var_0 = _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(var_0.x, -6936i), 1i), firstTrailingBit(vec2<i32>(~u_input.e.x, 2147483647i))) << (((~firstLeadingBit(u_input.c.zx) & (_wgslsmith_mod_vec2_u32(var_1.xx, arg_2.xz) | var_1.yy)) & vec2<u32>(abs(var_1.x), var_1.x)) % vec2<u32>(32u));
    let var_2 = arg_0;
    return -833f;
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(func_3(Struct_1(749f, global0.b), vec4<u32>(u_input.c.x, u_input.b, ~_wgslsmith_mod_u32(u_input.c.x, 1u), max(75874u, ~countOneBits(arg_0.x))), ~(~(~vec3<u32>(14822u, 1434u, 43656u)))));
    global0 = Struct_1(_wgslsmith_f_op_f32(ceil(-754f)), vec4<bool>(!global0.b.x, !all(global0.b) & global0.b.x, all(global0.b.yx), select(!any(global0.b), true, !select(true, global0.b.x, true))));
    var_0 = _wgslsmith_f_op_f32(ceil(-1000f));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(global0.a)), vec4<bool>(any(select(vec3<bool>(global0.b.x, false, true), !global0.b.xzz, select(vec3<bool>(global0.b.x, global0.b.x, false), global0.b.yxy, vec3<bool>(true, false, false)))), global0.a > 194f, true, global0.b.x));
    global0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1288f), select(vec4<bool>(var_1.b.x, var_1.b.x, false, !any(global0.b.zwy)), select(vec4<bool>(global0.b.x, false, false, true), var_1.b, !any(var_1.b.zw)), select(global0.b, vec4<bool>(var_1.b.x, true | var_1.b.x, false, global0.b.x), global0.b.x)));
    return Struct_1(global0.a, !global0.b);
}

fn func_1() -> Struct_1 {
    let var_0 = global0.a;
    let var_1 = func_2(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(u_input.b, 1u, u_input.c.x, 1u)) >> (~(vec4<u32>(26400u, u_input.b, u_input.c.x, 4294967295u) ^ vec4<u32>(u_input.c.x, 4294967295u, 10780u, u_input.b)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, 54811u, 4294967295u), ~vec4<u32>(96227u, 0u, u_input.b, u_input.c.x))));
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(299f, global0.a))), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(global0.a)), _wgslsmith_f_op_f32(floor(-533f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.a, var_1.a)) - _wgslsmith_f_op_f32(max(var_1.a, var_1.a)))), vec2<bool>(!var_1.b.x, all(var_1.b.yw)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -486f), -1429f))), vec2<bool>(false, any(func_2(~vec4<u32>(u_input.b, u_input.c.x, 76186u, 32992u)).b))));
    var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(func_2(vec4<u32>(u_input.b, u_input.c.x, u_input.c.x, u_input.c.x) & vec4<u32>(u_input.b, 83673u, u_input.b, u_input.b)).a))), _wgslsmith_f_op_f32(-var_1.a));
    var_2 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -455f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - -477f))))));
    return func_2(_wgslsmith_clamp_vec4_u32(min(vec4<u32>(_wgslsmith_div_u32(20019u, u_input.c.x), u_input.b, u_input.b, reverseBits(u_input.b)), vec4<u32>(u_input.c.x, 89070u, 4294967295u, 0u) << (~vec4<u32>(4294967295u, 0u, u_input.c.x, 19872u) % vec4<u32>(32u))), ~countOneBits(~vec4<u32>(u_input.c.x, u_input.b, u_input.c.x, 36765u)), vec4<u32>(u_input.b, 61952u >> (~u_input.b % 32u), 24705u, 26494u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    global0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -283f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1366f * _wgslsmith_f_op_f32(ceil(-459f)))))), select(func_2(~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 4294967295u)).b, func_2(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(1u, u_input.b, 1u, u_input.c.x)), vec4<u32>(1u, u_input.c.x, 0u, u_input.b) | vec4<u32>(u_input.b, 1u, 1u, u_input.c.x))).b, true));
    global0 = Struct_1(_wgslsmith_f_op_f32(func_3(Struct_1(global0.a, select(select(vec4<bool>(global0.b.x, global0.b.x, global0.b.x, global0.b.x), vec4<bool>(global0.b.x, global0.b.x, global0.b.x, true), vec4<bool>(false, false, global0.b.x, false)), !global0.b, true)), select(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 60575u, u_input.c.x, 39999u), vec4<u32>(u_input.c.x, u_input.b, 0u, 28697u)), min(vec4<u32>(u_input.c.x, u_input.b, u_input.b, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 42481u)), !vec4<bool>(global0.b.x, global0.b.x, false, false)) & min(_wgslsmith_add_vec4_u32(vec4<u32>(7417u, 0u, 72442u, u_input.b), vec4<u32>(0u, 46081u, 7453u, u_input.c.x)), ~vec4<u32>(u_input.c.x, 50931u, 1u, 24773u)), u_input.c)), !global0.b);
    let var_0 = _wgslsmith_div_vec2_u32(vec2<u32>(~u_input.b, u_input.b), _wgslsmith_mult_vec2_u32(~abs(vec2<u32>(u_input.b, 53374u)) ^ u_input.c.yy, ~select(~vec2<u32>(u_input.c.x, u_input.b), u_input.c.zx, select(global0.b.zx, global0.b.zy, true))));
    var var_1 = global0.b;
    let var_2 = min(~reverseBits(_wgslsmith_clamp_vec4_i32(u_input.a, vec4<i32>(15631i, -4730i, u_input.d, 1868i), u_input.a)) & abs(u_input.a | u_input.a), u_input.e);
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(-global0.a))), select(vec4<bool>(func_1().b.x, false || global0.b.x, false, func_2(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 0u, 32588u, 70986u), vec4<u32>(1u, 4294967295u, 4294967295u, u_input.b), vec4<u32>(0u, u_input.c.x, 1u, 16654u))).b.x), select(vec4<bool>(!global0.b.x, global0.b.x, any(vec2<bool>(global0.b.x, false)), all(vec2<bool>(false, var_1.x))), global0.b, vec4<bool>(any(vec2<bool>(var_1.x, var_1.x)), var_1.x, var_1.x, false)), !(var_1.x || func_2(vec4<u32>(var_0.x, 4294967295u, u_input.b, u_input.c.x)).b.x)));
    let var_3 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(max(global0.a, global0.a)), func_1().a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global0.a, global0.a)))), global0.a)));
    var var_4 = -((_wgslsmith_div_i32(-u_input.d, _wgslsmith_dot_vec4_i32(var_2, var_2)) >> (~var_0.x % 32u)) & _wgslsmith_clamp_i32(_wgslsmith_div_i32(-1i, var_2.x | -4503i), 14081i, var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(i32(-1i) * -1i, 2147483647i), u_input.d);
}

