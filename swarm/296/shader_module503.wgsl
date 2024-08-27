struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec3<bool>,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> i32 {
    let var_0 = any(!vec4<bool>(true, true, all(vec4<bool>(false, false, false, true)) | any(vec3<bool>(true, false, false)), true));
    return u_input.d;
}

fn func_2(arg_0: Struct_2) -> vec3<f32> {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(arg_0.a.a, -1136f, !arg_0.b)), _wgslsmith_f_op_f32(756f + _wgslsmith_f_op_f32(-arg_0.a.a)), false))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + -1000f))))), all(vec4<bool>(func_3() <= -u_input.d, var_0.a == 2021f, true, any(select(vec3<bool>(false, false, arg_0.b), vec3<bool>(arg_0.b, arg_0.b, arg_0.b), arg_0.b)))), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(min(u_input.e, vec4<u32>(10335u, 1u, arg_0.d, u_input.e.x)), countOneBits(vec4<u32>(1u, 1u, arg_0.d, arg_0.d))), vec4<u32>(1u, 24942u, 44018u, 39083u) | vec4<u32>(u_input.e.x, u_input.e.x, u_input.c.x, u_input.c.x)), ~(~u_input.e.x) << (_wgslsmith_mod_u32(2945u, u_input.c.x) % 32u)), arg_0.c);
    var_1 = arg_0;
    let var_2 = Struct_4(_wgslsmith_f_op_f32(179f + var_0.a));
    let var_3 = _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(~_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d, -1i), vec2<i32>(u_input.b, u_input.b)), -vec2<i32>(u_input.d, u_input.d)), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.d, u_input.a), countOneBits(vec2<i32>(10054i, -4592i)), -vec2<i32>(-2147483647i, u_input.a)) ^ _wgslsmith_sub_vec2_i32(vec2<i32>(1i, u_input.a), countOneBits(vec2<i32>(u_input.a, u_input.b)))), -2147483647i);
    return _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.a.a, var_1.a.a, var_2.a), vec3<f32>(-1000f, 466f, arg_0.a.a)))), vec3<f32>(_wgslsmith_f_op_f32(min(var_0.a, arg_0.a.a)), _wgslsmith_f_op_f32(round(arg_0.a.a)), var_0.a)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(var_1.a.a)), _wgslsmith_f_op_f32(exp2(var_2.a)), _wgslsmith_f_op_f32(round(-150f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1883f, 103f, var_0.a))) * vec3<f32>(var_2.a, arg_0.a.a, arg_0.a.a))))));
}

fn func_1(arg_0: vec3<i32>, arg_1: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -657f)), false, arg_1, u_input.c.x))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(var_0.x - -200f)) * 1f), true)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(805f + _wgslsmith_f_op_f32(var_0.x * 780f)));
    let var_3 = vec4<u32>(u_input.c.x, ~38696u, _wgslsmith_mod_u32(0u, ~64861u), 0u);
    let var_4 = ~firstTrailingBit(u_input.e);
    return _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(-var_0.x))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-951f * 124f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_vec3_f32(func_2(Struct_2(Struct_1(var_2), any(vec2<bool>(false, false)), var_4.x & 4294967295u, ~var_4.x))).x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(f32(-1f) * -680f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, u_input.b, -45783i), vec3<i32>(-15731i, u_input.d, -2147483647i), vec3<i32>(2147483647i, 54789i, u_input.a)), 21658u)))));
    let var_1 = -385f;
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<u32>(_wgslsmith_add_u32(u_input.e.x, 4294967295u), firstTrailingBit(4294967295u), u_input.c.x, u_input.e.x), vec4<u32>(u_input.e.x, u_input.c.x, select(u_input.e.x, u_input.c.x, true), _wgslsmith_mod_u32(0u, u_input.e.x)), vec4<bool>(any(vec3<bool>(true, false, true)), u_input.b != 1i, true, false)) | countOneBits(_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, u_input.c.x, u_input.e.x, 0u)), u_input.e ^ vec4<u32>(u_input.e.x, 46752u, 1u, 4294967295u))), -countOneBits(u_input.a), u_input.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1, -1259f, 623f, var_0.a))))), _wgslsmith_dot_vec4_u32(min(vec4<u32>(0u, 0u, 0u, 5253u) ^ u_input.e, firstTrailingBit(~u_input.e)), u_input.e));
}

