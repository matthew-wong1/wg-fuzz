struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: u32,
    b: u32,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 31>;

var<private> global1: Struct_1 = Struct_1(vec4<f32>(184f, 1386f, 382f, -279f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: vec3<bool>, arg_3: f32) -> vec4<i32> {
    global0 = array<Struct_2, 31>();
    global0 = array<Struct_2, 31>();
    let var_0 = Struct_4(u_input.b.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(min(u_input.e.x, 8358u), 0u, u_input.c.x), _wgslsmith_add_vec3_u32(firstTrailingBit(u_input.e), _wgslsmith_clamp_vec3_u32(u_input.c, u_input.a, u_input.e))), vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.d, 24969u), ~u_input.e.x) & u_input.a.x, u_input.c.x, u_input.c.x));
    var var_1 = global0[_wgslsmith_index_u32(var_0.c.x, 31u)];
    var_1 = global0[_wgslsmith_index_u32(var_0.c.x, 31u)];
    return vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_div_i32(countOneBits(countOneBits(-33460i)), -2147483647i), max(~1i, _wgslsmith_div_i32(firstLeadingBit(19618i), 2147483647i & var_1.a))), -2147483647i, select(-1i, var_1.a, all(vec4<bool>(false, arg_2.x, false, false))) ^ arg_1, arg_1);
}

fn func_2(arg_0: f32) -> Struct_1 {
    global0 = array<Struct_2, 31>();
    let var_0 = vec3<i32>(~(-2147483647i << (abs(u_input.e.x) % 32u)), -(~_wgslsmith_dot_vec4_i32(func_3(false, -29060i, vec3<bool>(true, true, true), arg_0), vec4<i32>(30472i, -2147483647i, -11457i, -2147483647i))), _wgslsmith_div_i32(firstTrailingBit(firstTrailingBit(~36800i)), 1i));
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.x, 1000f, _wgslsmith_f_op_f32(trunc(global1.a.x)), global1.a.x) + global1.a))));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.d, _wgslsmith_clamp_u32(1319u, u_input.b.x, 33797u)), u_input.e.x), _wgslsmith_mod_u32(11188u, _wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.e.x, 30200u, u_input.b.x) & vec4<u32>(u_input.e.x, 0u, u_input.a.x, 44921u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, u_input.d, 30488u, u_input.b.x), vec4<u32>(u_input.d, u_input.c.x, u_input.c.x, u_input.e.x)))))), 31u)];
    let var_2 = var_0.x;
    return Struct_1(vec4<f32>(-1089f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0, arg_0)) - _wgslsmith_f_op_f32(select(arg_0, -881f, true)))), arg_0, _wgslsmith_f_op_f32(f32(-1f) * -738f)));
}

fn func_1(arg_0: vec3<bool>) -> i32 {
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-global1.a))));
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(global1.a)) - _wgslsmith_f_op_vec4_f32(global1.a + vec4<f32>(1136f, global1.a.x, global1.a.x, 1134f))))), global1.a) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(global1.a)) - vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(global1.a.x, global1.a.x)))), _wgslsmith_f_op_f32(global1.a.x * _wgslsmith_f_op_f32(exp2(global1.a.x))), 1000f, _wgslsmith_f_op_f32(-global1.a.x))));
    var var_1 = vec3<f32>(var_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(global1.a.x))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1249f, 939f, arg_0.x)) + var_0.x), _wgslsmith_f_op_f32(sign(global1.a.x)))), arg_0.x)), global1.a.x);
    global1 = func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(step(297f, var_1.x)))))));
    global1 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a.x), global1.a.x))));
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(1i, (firstLeadingBit(abs(0i)) >> (0u % 32u)) >> (countOneBits(~_wgslsmith_sub_u32(21946u, u_input.a.x)) % 32u), 40670i, ~_wgslsmith_clamp_i32(func_1(vec3<bool>(true, false, true)), countOneBits(2147483647i), countOneBits(1i)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-454f, _wgslsmith_f_op_f32(max(-437f, -687f)), global1.a.x));
    let var_2 = global1.a;
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.x, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-global1.a.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_2.x, _wgslsmith_f_op_f32(exp2(var_1.x)))), any(vec2<bool>(var_1.x != -1548f, var_0.x != -20230i)))) - _wgslsmith_f_op_vec3_f32(-var_2.xyx));
    global0 = array<Struct_2, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(abs(u_input.e.x), ~countOneBits(~u_input.c.x), select(~u_input.a.x, ~u_input.b.x, !all(vec2<bool>(true, true)))), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_mult_i32(var_0.x, _wgslsmith_dot_vec2_i32(var_0.xx, vec2<i32>(93625i, var_0.x))), -(var_0.x ^ var_0.x)), var_0.x, ~(-2147483647i), var_0.x), reverseBits(var_0.x), var_2.wy, ~max(24308u, ~_wgslsmith_mod_u32(u_input.b.x, u_input.e.x)));
}

