struct Struct_1 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: bool,
}

struct Struct_4 {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: bool,
    e: Struct_2,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_2,
    d: Struct_3,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: i32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-1122f, -196f, 348f);

var<private> global1: vec3<u32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> bool {
    global1 = u_input.d;
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(436f, global0.x, global0.x)) - vec3<f32>(_wgslsmith_f_op_f32(-global0.x), -1127f, _wgslsmith_div_f32(global0.x, global0.x))) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1130f, _wgslsmith_f_op_f32(step(global0.x, 834f)), _wgslsmith_f_op_f32(-global0.x)), vec3<f32>(400f, 1204f, -836f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 1071f, global0.x))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1303f, -737f, -691f))), vec3<f32>(global0.x, global0.x, global0.x))))));
    let var_0 = Struct_2(Struct_1(0u, ~vec3<u32>(0u, 47446u, 35128u) ^ _wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.a, 0u), ~u_input.e)), Struct_1(countOneBits(38889u), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, global1.x, 19192u), u_input.e, abs(u_input.d))), ~firstLeadingBit(59066i));
    var var_1 = _wgslsmith_f_op_f32(trunc(global0.x));
    let var_2 = _wgslsmith_f_op_f32(round(378f)) < _wgslsmith_f_op_f32(-global0.x);
    return var_2;
}

fn func_3(arg_0: vec4<bool>, arg_1: f32, arg_2: f32) -> bool {
    var var_0 = Struct_2(Struct_1(global1.x, _wgslsmith_add_vec3_u32(~(~vec3<u32>(1u, u_input.d.x, u_input.d.x)), ~_wgslsmith_add_vec3_u32(u_input.d, vec3<u32>(global1.x, 4294967295u, global1.x)))), Struct_1(~u_input.b, reverseBits(~vec3<u32>(global1.x, 2966u, global1.x))), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, _wgslsmith_add_i32(u_input.c, ~u_input.c), _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(-1i, -1i)), ~vec2<i32>(79863i, 13245i))), ~firstLeadingBit(vec3<i32>(1i, 1i, -30074i))));
    var var_1 = vec2<bool>(!arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(122f, -1020f) - global0.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))) > -1808f);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(floor(374f)), arg_2, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1010f) + _wgslsmith_f_op_f32(1794f * -1345f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2))))), global0.x);
    var var_3 = Struct_1(6659u, select(select(vec3<u32>(var_0.b.b.x, u_input.d.x, _wgslsmith_mult_u32(1u, 31709u)), vec3<u32>(~1u, _wgslsmith_add_u32(0u, 1u), var_0.b.a), vec3<bool>(func_2(), func_2(), true)), min(u_input.e, var_0.b.b ^ vec3<u32>(var_0.b.b.x, 0u, 4294967295u)), vec3<bool>(var_1.x, all(arg_0), var_1.x)));
    var_3 = var_0.b;
    return true;
}

fn func_1() -> u32 {
    var var_0 = func_3(!select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(-1i == u_input.c, true, true, func_2())), _wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global0.x)), -616f)));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(global0.x * 1106f), _wgslsmith_f_op_f32(step(global0.x, 548f)), _wgslsmith_f_op_f32(-global0.x)), vec3<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    return ~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(select(vec4<u32>(u_input.a, 0u, 55323u, global1.x), vec4<u32>(global1.x, global1.x, 0u, 0u), false) ^ ~vec4<u32>(4294967295u, 10617u, 0u, 49863u), firstTrailingBit(vec4<u32>(global1.x, 5057u, global1.x, u_input.e.x))), _wgslsmith_mult_vec4_u32(~select(vec4<u32>(global1.x, 0u, 1u, 0u), vec4<u32>(19386u, u_input.e.x, 39388u, u_input.e.x), vec4<bool>(true, false, false, false)), abs(abs(vec4<u32>(44797u, 95874u, 27684u, u_input.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~(vec3<u32>(_wgslsmith_dot_vec3_u32(abs(u_input.e), vec3<u32>(u_input.e.x, 4294967295u, 51907u)), u_input.a, _wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.e.x, global1.x), 1u, func_1())) | u_input.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-110f * -710f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-968f))), 854f), vec4<f32>(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(trunc(-194f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(global0.x, global0.x, true)), global0.x, false)), _wgslsmith_f_op_f32(f32(-1f) * -1452f))), select(~abs(~1i), firstTrailingBit(abs(u_input.c)), true), u_input.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(2199f))))), -21483i);
}

