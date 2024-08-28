struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec3<u32>,
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2(arg_0: vec3<u32>) -> vec2<u32> {
    return u_input.e.yz;
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: Struct_1, arg_3: vec2<f32>) -> vec2<bool> {
    var var_0 = arg_2.a;
    var var_1 = min(firstTrailingBit(~vec3<u32>(u_input.c, arg_2.a, arg_2.a)) ^ ~(vec3<u32>(arg_2.a, arg_2.a, arg_2.a) << (u_input.a % vec3<u32>(32u))), max(firstLeadingBit(u_input.e) & vec3<u32>(u_input.c, 1u, 1u), ~(~vec3<u32>(59715u, 4294967295u, arg_2.a)))) << (abs(vec3<u32>(reverseBits(u_input.a.x), firstTrailingBit(_wgslsmith_add_u32(0u, 56882u)), ~u_input.e.x)) % vec3<u32>(32u));
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1097f, 789f) - _wgslsmith_f_op_f32(f32(-1f) * -1368f)), 112f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1, arg_1)) - _wgslsmith_f_op_f32(545f + -257f)), 429f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-714f - _wgslsmith_f_op_f32(trunc(130f)))), _wgslsmith_f_op_f32(arg_3.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1061f, -945f)))), arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_3.x))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(arg_3.x, arg_1)))))), arg_2);
    let var_3 = u_input.b;
    var var_4 = var_2.b.x;
    return vec2<bool>(arg_0, arg_0);
}

fn func_1() -> bool {
    let var_0 = 1f;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-285f, var_0), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-631f, var_0)))))));
    var var_2 = 0i;
    var var_3 = !(!all(vec4<bool>(true, true, true, true)));
    var var_4 = _wgslsmith_mult_vec2_u32(vec2<u32>(~(45373u | u_input.d), _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, u_input.c, 25275u), vec3<u32>(6474u, u_input.e.x, u_input.d) >> (vec3<u32>(u_input.d, u_input.c, u_input.d) % vec3<u32>(32u)))), vec2<u32>(0u, 4294967295u)) >> (select(func_2(firstTrailingBit(u_input.e)), ~u_input.e.xx, !select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), func_3(false, -433f, Struct_1(29132u), var_1))) % vec2<u32>(32u));
    return !(!all(vec4<bool>(false, true, select(true, false, true), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-210f))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -709f) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -3276f), _wgslsmith_f_op_f32(trunc(676f)), true))));
    let var_1 = !vec3<bool>(!func_1(), func_3(true, -396f, Struct_1(u_input.a.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(634f, -2315f))).x, true);
    var_0 = var_1.x & (var_1.x || var_1.x);
    var var_2 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-404f, -1527f, 181f, 412f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -766f), _wgslsmith_div_f32(661f, 511f), _wgslsmith_f_op_f32(-314f * 1076f), _wgslsmith_f_op_f32(-401f * -600f))), Struct_1(_wgslsmith_dot_vec3_u32(~u_input.e, u_input.a))), abs(~_wgslsmith_dot_vec3_u32(select(u_input.a, vec3<u32>(17098u, u_input.a.x, 31677u), true), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.c, 4294967295u), vec3<u32>(u_input.c, 4294967295u, 0u)))), abs(reverseBits(-1i)), Struct_1(u_input.e.x));
    var var_3 = var_2.a;
    var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_3.b, _wgslsmith_f_op_vec4_f32(-var_2.a.b)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(426f, -703f, -296f, var_2.a.b.x), vec4<f32>(-1831f, var_2.a.a.x, var_2.a.b.x, 607f), var_1.x)))), var_3.c);
    let x = u_input.a;
    s_output = StorageBuffer(9798i);
}

