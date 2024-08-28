struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
    c: f32,
    d: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> vec4<f32> {
    let var_0 = Struct_1(any(vec3<bool>(true, all(vec4<bool>(false, false, false, false)), any(vec3<bool>(true, true, false)) | false)), all(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1474f)) - _wgslsmith_f_op_f32(min(-1564f, 172f))), -1933f)), _wgslsmith_f_op_f32(sign(-701f)), !var_0.b)) + _wgslsmith_f_op_f32(-1038f + 1280f));
    let var_2 = select(-7932i == u_input.a, false, any(vec2<bool>(false, !(!var_0.b))));
    var_1 = -731f;
    var_1 = _wgslsmith_f_op_f32(min(899f, -1034f));
    return vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -746f), 811f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -893f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -258f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-298f, 287f, true))))));
}

fn func_2(arg_0: vec4<i32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-1666f - 1000f), _wgslsmith_div_f32(623f, 1689f), _wgslsmith_f_op_f32(-974f + 1457f), 116f), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(func_3()))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(659f)) - 552f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -356f)), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-841f + 883f)), 540f))));
    let var_1 = any(vec2<bool>((_wgslsmith_f_op_f32(trunc(var_0.x)) != _wgslsmith_f_op_f32(-1350f - var_0.x)) & true, any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)))));
    let var_2 = -469f;
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3()).x))), _wgslsmith_f_op_f32(-var_2), 546f, _wgslsmith_f_op_f32(-var_0.x));
    let var_3 = countOneBits(vec2<i32>(_wgslsmith_mod_i32(firstLeadingBit(arg_0.x << (25095u % 32u)), _wgslsmith_dot_vec4_i32(~vec4<i32>(-20350i, 0i, 2147483647i, arg_0.x), abs(vec4<i32>(0i, -2147483647i, u_input.a, -24229i)))), reverseBits(u_input.a & -u_input.a)));
    return firstLeadingBit(_wgslsmith_add_i32(~_wgslsmith_dot_vec2_i32(-var_3, _wgslsmith_add_vec2_i32(arg_0.yz, var_3)), var_3.x));
}

fn func_1(arg_0: vec3<u32>, arg_1: f32) -> StorageBuffer {
    let var_0 = 1i;
    var var_1 = select(-vec3<i32>(func_2(vec4<i32>(30638i, u_input.a, var_0, 2173i)), ~var_0, _wgslsmith_mod_i32(var_0, 0i)) ^ max(abs(-vec3<i32>(u_input.a, u_input.a, var_0)), vec3<i32>(i32(-1i) * -14266i, _wgslsmith_add_i32(0i, 2147483647i), -13424i)), _wgslsmith_clamp_vec3_i32(~(-(~vec3<i32>(var_0, 9127i, u_input.a))), vec3<i32>(-_wgslsmith_add_i32(204i, var_0), u_input.a, countOneBits(u_input.a) >> (_wgslsmith_dot_vec2_u32(arg_0.yz, vec2<u32>(arg_0.x, arg_0.x)) % 32u)), vec3<i32>(u_input.a, i32(-1i) * -var_0, -52457i)), all(vec4<bool>(arg_1 == _wgslsmith_f_op_f32(floor(829f)), any(vec3<bool>(false, false, false)) | true, false, true)));
    var_1 = firstLeadingBit(vec3<i32>(~(-27045i), -1i, 27680i));
    var_1 = vec3<i32>(u_input.a, -2147483647i, 1i);
    var var_2 = _wgslsmith_div_vec4_i32(firstLeadingBit(~min(vec4<i32>(var_1.x, var_1.x, 1i, u_input.a), vec4<i32>(var_0, var_1.x, 1i, var_0))) >> ((vec4<u32>(select(arg_0.x, arg_0.x, false), _wgslsmith_clamp_u32(17750u, arg_0.x, 23331u), arg_0.x, ~arg_0.x) << (_wgslsmith_add_vec4_u32(~vec4<u32>(arg_0.x, 0u, 2393u, arg_0.x), vec4<u32>(1u, 3410u, 26147u, 4294967295u)) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<i32>((i32(-1i) * -1i) >> (min(arg_0.x, arg_0.x) % 32u), 1i, var_1.x, -51901i) ^ select(-(vec4<i32>(-2147483647i, u_input.a, -29649i, -30308i) & vec4<i32>(-2133i, 2147483647i, -1i, var_1.x)), _wgslsmith_add_vec4_i32(~vec4<i32>(-1i, var_0, 1i, -12824i), ~vec4<i32>(-45550i, 5641i, u_input.a, u_input.a)), true));
    return StorageBuffer(-vec4<i32>(2147483647i, _wgslsmith_mult_i32(var_2.x, -62787i ^ var_1.x), ~var_0, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 0i, 44956i), vec3<i32>(32476i, var_1.x, var_1.x)), 1i)), ~arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(vec3<u32>(countOneBits(_wgslsmith_mult_u32(1u, abs(41589u))), 28799u, 46099u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1525f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-985f + -501f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-575f))))));
}

