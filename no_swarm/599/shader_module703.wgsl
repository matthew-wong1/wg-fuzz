struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<f32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: bool,
    d: f32,
    e: bool,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>) -> f32 {
    global0 = 0u;
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.a))) * _wgslsmith_f_op_f32(f32(-1f) * -235f)), 1339f, arg_0.c.x);
    var var_1 = vec4<i32>(firstLeadingBit(i32(-1i) * -90592i) & u_input.d, countOneBits(1i), -select(u_input.e.x << (u_input.b % 32u), countOneBits(u_input.d), select(arg_0.b, arg_0.b, arg_0.b)), ~_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(u_input.e.yy, u_input.e.yw), countOneBits(u_input.d))) >> (~(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.b, 1u, 29108u), vec4<u32>(76933u, 0u, arg_1.x, 1u)), ~u_input.c.x, u_input.c.x, countOneBits(arg_1.x)) ^ _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, 0u, 73945u, 9502u) >> (vec4<u32>(43516u, 18842u, 4294967295u, 8671u) % vec4<u32>(32u)), vec4<u32>(21152u, 4294967295u, u_input.c.x, 92158u) & vec4<u32>(arg_1.x, 6485u, u_input.c.x, 0u))) % vec4<u32>(32u));
    let var_2 = -1i;
    let var_3 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-2338f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-1459f, 2821f)))) - 841f), -2774f, _wgslsmith_f_op_f32(-445f * arg_0.a))));
    return -1236f;
}

fn func_2() -> u32 {
    let var_0 = 1u;
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(644f, -736f, -474f, 108f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(802f, -1000f, 1000f, 1000f) + vec4<f32>(946f, 1351f, 1102f, -480f)))))), vec4<f32>(863f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 616f)) * _wgslsmith_f_op_f32(func_3(Struct_1(-803f, true, vec2<f32>(-820f, 292f), vec3<bool>(false, true, false)), ~vec3<u32>(u_input.b, 1u, 4294967295u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1892f - _wgslsmith_f_op_f32(f32(-1f) * -343f))), -2089f), vec4<bool>(all(select(vec2<bool>(true, false), vec2<bool>(false, true), false)) || all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false))), !all(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true))), any(vec2<bool>(true, true)), true)));
    var var_2 = ~u_input.a.yxy;
    var_2 = select(select(vec3<u32>(select(4294967295u, u_input.a.x, any(vec4<bool>(true, false, true, false))), var_2.x, ~var_2.x), countOneBits(vec3<u32>(~var_0, ~var_0, var_0)), any(select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), any(vec2<bool>(false, false))))), _wgslsmith_mod_vec3_u32(~(~(u_input.c.zzw | vec3<u32>(4294967295u, u_input.a.x, 4294967295u))), ~u_input.c.yww), select(select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), any(vec2<bool>(true, true))), vec3<bool>(any(vec3<bool>(true, false, false)), any(vec4<bool>(true, false, false, false)), true)), vec3<bool>(true, true, true), select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false))), vec3<bool>(true, var_1.x <= -897f, true), select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))));
    var var_3 = !(!vec3<bool>(any(vec4<bool>(false, false, true, true)), any(vec4<bool>(true, true, true, true)), select(false, true, 38898u <= var_2.x)));
    return u_input.c.x;
}

fn func_1() -> StorageBuffer {
    let var_0 = -1000f;
    let var_1 = i32(-1i) * -u_input.e.x;
    global0 = ~(max(u_input.b, u_input.a.x) | u_input.c.x);
    global0 = _wgslsmith_dot_vec2_u32(firstLeadingBit(_wgslsmith_mod_vec2_u32(select(u_input.c.xw, vec2<u32>(u_input.a.x, 4294967295u), vec2<bool>(true, true)), vec2<u32>(80590u, 3037u))), min(firstLeadingBit(vec2<u32>(u_input.a.x, u_input.b)), u_input.a.xy)) & max(func_2(), func_2());
    var var_2 = select(select(vec2<bool>(true, all(vec2<bool>(true, false))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec3<bool>(true, false, false))), vec2<bool>(true, true), true), any(vec4<bool>(true, true, true, true))), !select(select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(false, false)), select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true)), 2147483647i <= _wgslsmith_div_i32(var_1, 25353i)), select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), ~u_input.b == 1u), select(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), u_input.b >= u_input.b), vec2<bool>(any(vec3<bool>(false, true, true)), var_0 != -1152f)), true));
    return StorageBuffer(var_0, vec2<u32>(1u, 40009u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 4204u;
    let x = u_input.a;
    s_output = func_1();
}

