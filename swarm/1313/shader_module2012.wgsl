struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: bool;

var<private> global2: vec2<i32>;

var<private> global3: array<vec2<u32>, 7>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> vec4<u32> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-538f, 1758f)), _wgslsmith_div_f32(-428f, -997f)))), _wgslsmith_f_op_f32(435f - -573f), 1f, 303f);
    let var_1 = Struct_1(_wgslsmith_add_vec4_u32(firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.c, 30189u, u_input.c), ~vec4<u32>(4294967295u, 0u, 50500u, 4775u))), vec4<u32>(0u, u_input.c, ~u_input.c, firstTrailingBit(_wgslsmith_mult_u32(u_input.c, u_input.c)))), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + -665f))), u_input.c);
    var var_2 = select(true, !(((var_1.c | u_input.c) ^ u_input.c) == 15609u), true);
    let var_3 = firstLeadingBit(u_input.a.yz);
    global3 = array<vec2<u32>, 7>();
    return abs(var_1.a);
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: f32, arg_3: u32) -> bool {
    var var_0 = Struct_1(func_3(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - arg_2), ~u_input.c);
    global0 = vec3<bool>(arg_0 >= arg_2, !(!(all(vec3<bool>(false, true, false)) && global0.x)), true);
    var var_1 = select(_wgslsmith_add_u32(u_input.c, u_input.c >> (u_input.c % 32u)), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_3, 0u, var_0.a.x, var_0.a.x), ~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 24913u, 87295u, 1u), vec4<u32>(var_0.a.x, arg_3, 32616u, var_0.a.x) & var_0.a)), (true & all(!vec3<bool>(global0.x, false, true))) | true);
    let var_2 = false;
    var var_3 = -843f;
    return var_2;
}

fn func_1(arg_0: Struct_1) -> bool {
    global1 = global0.x;
    global0 = !select(vec3<bool>(func_2(arg_0.b, u_input.d ^ u_input.d, _wgslsmith_f_op_f32(ceil(-1838f)), u_input.c), true, global0.x), select(select(!vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(true, true, true), vec3<bool>(global0.x, global0.x, global0.x)), select(!vec3<bool>(global0.x, global0.x, global0.x), !vec3<bool>(true, global0.x, false), vec3<bool>(false, true, global0.x)), global0.x), false);
    let var_0 = arg_0;
    let var_1 = arg_0;
    var var_2 = Struct_2(var_1, firstLeadingBit(global2.x), _wgslsmith_sub_vec3_u32(countOneBits(select(min(var_1.a.zzx, arg_0.a.zwx), ~vec3<u32>(28636u, 4294967295u, 1u), vec3<bool>(true, global0.x, false))), vec3<u32>(~4294967295u, arg_0.c, abs(func_3().x))), var_0);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-1i, global2.x, _wgslsmith_add_i32(~global2.x, min(-1i, global2.x))), -global2.x) >= min(global2.x, 2076i);
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-547f, -1333f, -172f, 1050f), vec4<f32>(1196f, -679f, -364f, -1356f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(215f, -1063f, -1869f, 586f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1829f, 375f, 549f, -679f))), vec4<bool>(true, 0i < global2.x, true & global0.x, true))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1000f - 655f), _wgslsmith_f_op_f32(abs(723f)), -112f, _wgslsmith_f_op_f32(f32(-1f) * -554f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(803f, -1000f, 1194f, -184f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(835f, 635f, 209f, 1431f)), func_1(Struct_1(vec4<u32>(u_input.c, u_input.c, u_input.c, 36506u), 1000f, 0u))))), !(!(!vec4<bool>(global0.x, false, true, global0.x))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -723f) * _wgslsmith_f_op_f32(select(103f, 204f, true)))), 835f, -210f, _wgslsmith_f_op_f32(select(350f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -401f), _wgslsmith_f_op_f32(f32(-1f) * -2476f)), func_2(_wgslsmith_f_op_f32(-133f * 401f), _wgslsmith_mult_i32(global2.x, -2147483647i), _wgslsmith_f_op_f32(-155f * -1000f), ~10322u)))));
    var var_1 = select(countOneBits(~reverseBits(vec3<u32>(u_input.c, u_input.c, 56918u)) << (~(~vec3<u32>(11073u, u_input.c, u_input.c)) % vec3<u32>(32u))), _wgslsmith_div_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 1u, u_input.c), vec3<u32>(u_input.c, u_input.c, u_input.c)), ~vec3<u32>(0u, u_input.c, u_input.c) & (vec3<u32>(u_input.c, u_input.c, u_input.c) & vec3<u32>(103866u, u_input.c, 4294967295u))) ^ vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, 4294967295u, 38969u), select(vec4<u32>(34021u, 0u, u_input.c, u_input.c), vec4<u32>(u_input.c, 17453u, u_input.c, u_input.c), true)), 51074u, u_input.c), any(!(!(!vec4<bool>(true, false, false, global0.x)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

