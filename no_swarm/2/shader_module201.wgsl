struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: Struct_2,
    d: i32,
    e: vec3<u32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: Struct_3,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: Struct_4 = Struct_4(Struct_3(Struct_1(0u, true)), -193f, Struct_2(Struct_1(0u, true)), 77856i, vec3<u32>(40567u, 561u, 48529u));

var<private> global2: Struct_2 = Struct_2(Struct_1(0u, true));

var<private> global3: array<vec2<u32>, 19>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: vec3<i32>) -> vec4<f32> {
    var var_0 = Struct_5(global1.c.a.b, global1.a, Struct_3(Struct_1(63083u, ~global1.a.a.a <= _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 105264u, 4294967295u, 60828u), vec4<u32>(arg_0.e.x, global1.e.x, u_input.b.x, global1.a.a.a)))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.b))), arg_0.b, 1077f, 1f))));
    global2 = arg_0.c;
    global0 = false;
    let var_1 = Struct_1(global1.e.x, false);
    let var_2 = global1.c.a;
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.d * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.b, -231f, var_0.d.x, global1.b)))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(var_0.d * var_0.d)))) + var_0.d)));
}

fn func_2() -> vec3<bool> {
    global1 = Struct_4(Struct_3(global2.a), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b))))), Struct_2(Struct_1(global1.a.a.a, true)), global1.d, ~u_input.b);
    let var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_4(Struct_3(Struct_1(u_input.b.x, global2.a.b)), global1.b, global1.c, u_input.a, global1.e), abs(vec3<i32>(u_input.a, u_input.a, global1.d)), vec3<i32>(-982i, u_input.a, -8481i) ^ vec3<i32>(u_input.a, global1.d, -7566i))) - vec4<f32>(global1.b, _wgslsmith_f_op_f32(f32(-1f) * -1430f), _wgslsmith_f_op_vec4_f32(func_3(Struct_4(global1.a, global1.b, global1.c, global1.d, vec3<u32>(70903u, u_input.b.x, global1.c.a.a)), vec3<i32>(global1.d, -61156i, u_input.a), vec3<i32>(-28226i, u_input.a, global1.d))).x, _wgslsmith_f_op_f32(f32(-1f) * -321f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, -503f, -1000f, global1.b))))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -333f), 179f, global1.b, _wgslsmith_f_op_f32(abs(-423f))))));
    let var_1 = _wgslsmith_sub_i32(_wgslsmith_clamp_i32(abs(select(~0i, 0i >> (0u % 32u), any(vec2<bool>(true, true)))), i32(-1i) * -firstLeadingBit(u_input.a), global1.d), 1i);
    global0 = global2.a.b;
    let var_2 = global2.a;
    return !vec3<bool>(false, all(vec2<bool>(true, select(true, global1.c.a.b, true))), global2.a.b);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_3) -> Struct_2 {
    global1 = Struct_4(global1.a, arg_2, global1.c, 2147483647i, vec3<u32>(_wgslsmith_sub_u32(global2.a.a, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a, 1u, u_input.b.x, 1u), vec4<u32>(global1.c.a.a, arg_3.a.a, 19475u, 23223u))), 14034u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global2.a.a, arg_3.a.a) | vec3<u32>(0u, arg_3.a.a, arg_3.a.a), _wgslsmith_div_vec3_u32(vec3<u32>(global1.c.a.a, global1.a.a.a, global1.e.x), vec3<u32>(18652u, 86634u, 1u)))) << (global1.e % vec3<u32>(32u)));
    var var_0 = arg_3.a;
    global3 = array<vec2<u32>, 19>();
    var var_1 = vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(global1.d, global1.d), i32(-1i) * -(i32(-1i) * -2147483647i)), u_input.a);
    var var_2 = -3774i;
    return Struct_2(Struct_1(global2.a.a >> (min(~28228u, 2888u) % 32u), true));
}

fn func_1(arg_0: vec2<u32>) -> f32 {
    var var_0 = func_4(!func_2(), global2.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(abs(257f))), global1.a);
    global2 = global1.c;
    global3 = array<vec2<u32>, 19>();
    let var_1 = Struct_2(Struct_1(max(min(var_0.a.a, ~0u), ~73861u & ~global1.c.a.a), false));
    global0 = any(!vec2<bool>(select(global1.a.a.b, var_0.a.b, false), func_2().x));
    return _wgslsmith_f_op_f32(374f * global1.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.b))), -292f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec2<u32>(90493u, 14870u))), -761f) * -621f))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(114f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-196f + _wgslsmith_f_op_f32(ceil(1414f)))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(abs(var_0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)));
    var_0 = vec3<f32>(global1.b, var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-907f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(global1.b, 1000f)), _wgslsmith_f_op_f32(-var_0.x)))) * _wgslsmith_f_op_f32(var_0.x - var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(abs(640f)))), vec2<u32>(~_wgslsmith_mult_u32(53930u, global1.c.a.a), global2.a.a) & ~vec2<u32>(global2.a.a, _wgslsmith_mult_u32(u_input.b.x, u_input.b.x)), vec4<i32>(global1.d, global1.d, 0i ^ u_input.a, ~(i32(-1i) * -33750i)) | countOneBits(firstTrailingBit(firstTrailingBit(vec4<i32>(global1.d, 22674i, u_input.a, global1.d)))));
}

