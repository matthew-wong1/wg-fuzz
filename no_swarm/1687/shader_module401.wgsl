struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> u32 {
    return firstLeadingBit(_wgslsmith_clamp_u32(arg_0, 30454u, arg_1.c));
}

fn func_2() -> i32 {
    var var_0 = Struct_2(-1i, Struct_1(_wgslsmith_div_u32(func_3(~4294967295u, Struct_1(1u, vec4<f32>(408f, -300f, 1232f, -806f), u_input.a.x)), ~u_input.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1304f, 1767f, -1078f, 1649f))), _wgslsmith_dot_vec4_u32(u_input.a, u_input.a)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(var_0.b.b.x)), _wgslsmith_f_op_f32(-var_0.b.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) * -833f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-258f * var_0.b.b.x)))));
    var var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(287f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1613f) - _wgslsmith_f_op_f32(max(var_0.b.b.x, -363f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b.b.wyw))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, var_0.b.b.x, -902f), var_0.b.b.yyx)))));
    var_0 = Struct_2(12904i, Struct_1(0u | _wgslsmith_add_u32(var_0.b.a, select(var_0.b.c, var_0.b.c, false)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2.x, var_2.x, 527f, -684f)))))), 0u));
    let var_3 = false;
    return 0i;
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_dot_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(0i, 0i, -63569i, 0i), select(vec4<i32>(1i, 61126i, 2147483647i, -1i), vec4<i32>(-26270i, 15409i, 1i, -1i), vec4<bool>(false, true, false, false))), firstLeadingBit(~vec4<i32>(1i, 1i, 1i, 1i))) ^ firstLeadingBit(func_2());
    return select(_wgslsmith_dot_vec4_i32(-vec4<i32>(_wgslsmith_mult_i32(1i, var_0), 7922i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -1i, var_0), vec3<i32>(var_0, var_0, var_0)), 38000i), -(~max(vec4<i32>(var_0, var_0, -1i, -2147483647i), vec4<i32>(var_0, var_0, var_0, var_0)))), _wgslsmith_add_i32(var_0, -(_wgslsmith_sub_i32(2147483647i, var_0) ^ var_0)), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = -187f;
    let var_2 = func_1() >> (0u % 32u);
    let var_3 = 1u;
    var var_4 = u_input.a.x;
    var var_5 = vec4<i32>(-(i32(-1i) * -2147483647i), i32(-1i) * -_wgslsmith_add_i32(-var_2, var_2), select(~(-1i), var_2, all(vec2<bool>(any(vec4<bool>(var_0, true, false, var_0)), var_0 | true))), _wgslsmith_mod_i32(max(~(-var_2), ~(var_2 & -6178i)), max(var_2, _wgslsmith_add_i32(-var_2, 0i))));
    var_4 = u_input.a.x;
    let var_6 = _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(var_3, var_3, var_3) | firstLeadingBit(u_input.a.x), _wgslsmith_div_u32(var_3, firstLeadingBit(~9032u)), (abs(u_input.a.x) & firstLeadingBit(u_input.a.x)) | 18851u, _wgslsmith_mod_u32(abs(~var_3), var_3)), abs(u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(var_1, reverseBits(-countOneBits(_wgslsmith_dot_vec3_i32(var_5.xzx, vec3<i32>(var_5.x, 1i, var_2)))));
}

