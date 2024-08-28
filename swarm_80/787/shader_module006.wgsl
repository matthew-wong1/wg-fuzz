struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 6>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -679f), _wgslsmith_f_op_f32(f32(-1f) * -930f)) * _wgslsmith_f_op_f32(-1f))));
    let var_1 = all(!select(vec2<bool>(true, true), vec2<bool>(true, true), var_0 >= var_0)) & !all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)));
    global0 = array<Struct_3, 6>();
    var var_2 = firstTrailingBit(~u_input.b);
    var var_3 = Struct_1(~(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 11207u, 18982u, u_input.d.x), select(u_input.e, u_input.e, vec4<bool>(var_1, var_1, var_1, true))) << (u_input.e % vec4<u32>(32u))), u_input.c.x);
    return ~24295i;
}

fn func_2() -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(max(~41127u, ~(~u_input.a.x)), 6u)];
    return Struct_1(~u_input.e | ~(~vec4<u32>(21190u, u_input.e.x, var_0.b.c.a.x, u_input.a.x)), func_3() >> (var_0.b.b % 32u));
}

fn func_1(arg_0: vec3<f32>) -> Struct_2 {
    global0 = array<Struct_3, 6>();
    global0 = array<Struct_3, 6>();
    global0 = array<Struct_3, 6>();
    let var_0 = vec3<bool>(!((_wgslsmith_dot_vec2_i32(u_input.c.yz, vec2<i32>(u_input.c.x, 2147483647i)) > _wgslsmith_dot_vec4_i32(vec4<i32>(47764i, 30828i, u_input.b, u_input.b), vec4<i32>(18735i, 5532i, 2147483647i, 2147483647i))) | (_wgslsmith_f_op_f32(454f + arg_0.x) >= -685f)), any(!vec2<bool>(true, any(vec3<bool>(true, true, true)))), !(!(_wgslsmith_clamp_u32(463u, u_input.d.x, 0u) > _wgslsmith_div_u32(10907u, 58639u))));
    let var_1 = vec2<i32>(2147483647i, ~(-reverseBits(2147483647i)));
    return Struct_2(func_2(), ~u_input.e.x, func_2(), vec2<u32>(firstTrailingBit(firstTrailingBit(_wgslsmith_mult_u32(u_input.e.x, 25932u))), 7356u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_u32(min(abs(u_input.d.x) | 47180u, ~(_wgslsmith_div_u32(u_input.d.x, u_input.a.x) >> (_wgslsmith_dot_vec3_u32(u_input.e.yxz, u_input.d) % 32u))), ~u_input.d.x << (((u_input.e.x ^ select(u_input.a.x, u_input.a.x, false)) | u_input.e.x) % 32u), ~firstLeadingBit(~11786u));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-568f, -787f, 627f), vec3<f32>(-521f, 435f, 1273f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(671f, -388f, 1483f) + vec3<f32>(-177f, 1000f, -283f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -480f) + -110f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1420f, -513f)), -729f), all(vec2<bool>(true, true)))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-390f, 1055f, 700f)))))))));
    global0 = array<Struct_3, 6>();
    var var_2 = func_1(vec3<f32>(1391f, -1231f, var_1.x));
    var var_3 = vec2<f32>(-151f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1923f * -488f), _wgslsmith_f_op_f32(-673f - _wgslsmith_f_op_f32(-194f - var_1.x)))) * _wgslsmith_f_op_f32(942f + 1f)));
    let var_4 = _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.d.xy, u_input.d.xx), firstLeadingBit(var_2.c.a.xy));
    var_2 = func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-715f, -148f, 474f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, 1761f, var_3.x)))) - _wgslsmith_f_op_vec3_f32(sign(var_1))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-120f, -1196f, var_1.x), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_1.zx))), abs(~vec4<i32>(-var_2.a.b, 2147483647i, u_input.b, ~u_input.c.x)), 481f, _wgslsmith_f_op_f32(var_1.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(1336f - _wgslsmith_f_op_f32(-2861f * 491f)), var_1.x)));
}

