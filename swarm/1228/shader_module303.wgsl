struct Struct_1 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> bool {
    var var_0 = Struct_2(u_input.a.x, Struct_1(_wgslsmith_f_op_f32(-576f - -2064f), vec3<u32>(_wgslsmith_sub_u32(~75635u, _wgslsmith_clamp_u32(global0.b.x, 93169u, global0.b.x)), ~18723u << ((45530u ^ global0.b.x) % 32u), global0.b.x)), vec4<u32>(~global0.b.x, ~(~(~global0.b.x)), countOneBits(_wgslsmith_clamp_u32(global0.b.x, global0.b.x, 1u)), ~(~(~13792u))));
    return arg_0;
}

fn func_2(arg_0: Struct_3, arg_1: bool) -> f32 {
    var var_0 = vec4<bool>(all(select(vec2<bool>(any(vec2<bool>(arg_1, false)), any(vec4<bool>(true, arg_1, arg_1, true))), vec2<bool>(arg_1, true), vec2<bool>(!arg_1, func_3(arg_1)))), !(!(!(false | arg_1))), false, true);
    global0 = arg_0;
    var var_1 = _wgslsmith_f_op_f32(-arg_0.c);
    let var_2 = all(var_0.yzy);
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.c)));
    return global0.a;
}

fn func_1(arg_0: vec3<i32>) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_3(global0.a, global0.b, global0.c), true)) + -1010f))) + global0.a);
    let var_1 = vec2<bool>(true, all(vec4<bool>(true, false, true, true)));
    var var_2 = Struct_3(global0.a, vec2<u32>(~(~1u), firstTrailingBit(_wgslsmith_dot_vec2_u32(global0.b, global0.b)) << (1u % 32u)), var_0);
    global0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(818f - var_2.a) + -430f), var_2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)) * _wgslsmith_f_op_f32(func_2(Struct_3(-318f, vec2<u32>(4294967295u, var_2.b.x), var_2.a), true))) + var_0));
    var var_3 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(max(~0u, max(1u, var_2.b.x)), _wgslsmith_div_u32(34145u, global0.b.x) & ~var_2.b.x, 1u), ~_wgslsmith_mult_vec3_u32(vec3<u32>(10915u, var_2.b.x, global0.b.x), ~vec3<u32>(0u, 1u, 49997u)));
    return vec3<u32>(~(~global0.b.x), ~global0.b.x, ~firstLeadingBit(global0.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_div_i32(~(~abs(16213i)), 2147483647i), Struct_1(-1000f, select(~countOneBits(vec3<u32>(1u, global0.b.x, global0.b.x)), vec3<u32>(global0.b.x, global0.b.x, global0.b.x) & func_1(vec3<i32>(u_input.a.x, u_input.a.x, 25878i)), vec3<bool>(true, true, true))), abs(firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(global0.b.x, global0.b.x, 4294967295u, global0.b.x) ^ vec4<u32>(32507u, 92980u, 4294967295u, 27967u), _wgslsmith_div_vec4_u32(vec4<u32>(0u, global0.b.x, global0.b.x, global0.b.x), vec4<u32>(global0.b.x, global0.b.x, global0.b.x, 0u))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -392f) * _wgslsmith_f_op_f32(1736f * var_0.b.a)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a, global0.c) + global0.a)), _wgslsmith_f_op_f32(f32(-1f) * -280f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1019f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.b.a, global0.c, true)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.a)) * var_0.b.a)))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1976f, -266f, -750f, global0.a) * vec4<f32>(-1231f, global0.c, var_0.b.a, -604f))))))));
    var var_2 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, var_0.b.a) - _wgslsmith_f_op_f32(2531f - 2219f)))), _wgslsmith_f_op_f32(ceil(-932f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(1066f)), _wgslsmith_f_op_f32(var_0.b.a + -1690f))), (global0.b.x <= 25029u) && all(vec4<bool>(false, false, false, false)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-217f)))));
    var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(var_0.b.a, 3116f, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-475f))) + var_1.x)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.x - global0.a))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -435f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(145f * var_2.x) - _wgslsmith_f_op_f32(abs(1426f))))), -1531f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.x)))))));
    var var_3 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(abs(~reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, var_0.a), vec3<i32>(-45520i, -5430i, 31477i), vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x)))), vec2<f32>(-476f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a + -288f)) - _wgslsmith_f_op_f32(-1217f - _wgslsmith_f_op_f32(231f - var_2.x)))));
}

