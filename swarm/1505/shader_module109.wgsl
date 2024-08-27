struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: u32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_2) -> i32 {
    var var_0 = _wgslsmith_clamp_vec3_i32(abs(vec3<i32>(arg_0.a.a.x, 1i, u_input.b)), ~reverseBits(_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.a.a.x, -127178i, arg_0.a.a.x), vec3<i32>(arg_0.a.a.x, 0i, arg_0.a.a.x)), -vec3<i32>(37038i, u_input.b, 1i), vec3<i32>(2147483647i, u_input.b, -2147483647i) >> (vec3<u32>(0u, u_input.a, 4294967295u) % vec3<u32>(32u)))), vec3<i32>(arg_0.a.a.x, _wgslsmith_dot_vec4_i32(-min(vec4<i32>(u_input.b, -31108i, arg_0.a.a.x, u_input.b), vec4<i32>(-44945i, -15878i, -1i, 31313i)), vec4<i32>(reverseBits(u_input.b), -40396i, max(arg_0.a.a.x, u_input.b), -u_input.b)), _wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.b, 2147483647i) << (firstLeadingBit(32109u) % 32u), _wgslsmith_mod_i32(-9650i, u_input.b))));
    var var_1 = arg_0.b;
    var_1 = -347f;
    var var_2 = Struct_2(arg_0.a, -135f, vec4<bool>(!all(!arg_0.c.yzy), true, all(vec2<bool>(!arg_0.c.x, -27326i == u_input.b)), all(arg_0.c)));
    var_0 = ~abs(~(~vec3<i32>(var_0.x, u_input.b, -51808i)) >> (countOneBits(~vec3<u32>(4294967295u, u_input.a, u_input.a)) % vec3<u32>(32u)));
    return ~var_2.a.a.x;
}

fn func_2() -> i32 {
    let var_0 = -808f;
    let var_1 = Struct_1(_wgslsmith_clamp_vec2_i32(-reverseBits(firstTrailingBit(vec2<i32>(9808i, -4603i))), vec2<i32>(func_3(Struct_2(Struct_1(vec2<i32>(u_input.b, 37374i), vec4<f32>(var_0, -1830f, -296f, -103f), var_0), var_0, vec4<bool>(true, true, false, true))), 61936i), _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(~vec2<i32>(u_input.b, u_input.b), ~vec2<i32>(u_input.b, u_input.b)), vec2<i32>(_wgslsmith_div_i32(u_input.b, u_input.b), func_3(Struct_2(Struct_1(vec2<i32>(68423i, -63898i), vec4<f32>(-1212f, var_0, -185f, var_0), var_0), 728f, vec4<bool>(false, true, false, true)))), vec2<i32>(firstLeadingBit(u_input.b), ~0i))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0, 668f, var_0, -1581f))), vec4<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(f32(-1f) * -2077f), _wgslsmith_f_op_f32(1471f + 1371f), -179f)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0, -1392f, var_0, 1769f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, var_0, var_0)))))), 1602f);
    let var_2 = -1i;
    var var_3 = _wgslsmith_add_vec3_u32(~_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(94973u, 433u, u_input.a), vec3<u32>(4294967295u, u_input.a, 0u)), vec3<u32>(~u_input.a, u_input.a, 0u)), ~(~(vec3<u32>(39900u, 50325u, 4294967295u) & _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 4294967295u, u_input.a)))));
    let var_4 = Struct_2(Struct_1(-var_1.a, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + -307f)), _wgslsmith_f_op_f32(var_0 + -491f), var_1.b.x, _wgslsmith_f_op_f32(trunc(var_1.c))), var_1.c), var_1.c, select(select(vec4<bool>(var_2 >= -43265i, u_input.b < var_2, false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, all(vec2<bool>(true, false)), all(vec4<bool>(false, false, true, false)), true)), vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec4<bool>(true, true, true, true)), true, true)));
    return _wgslsmith_div_i32(_wgslsmith_clamp_i32(8495i, _wgslsmith_dot_vec3_i32(vec3<i32>(14078i, max(1i, var_4.a.a.x), countOneBits(-2147483647i)), ~(-vec3<i32>(var_4.a.a.x, -17100i, var_1.a.x))), abs(-(~u_input.b))), var_1.a.x);
}

fn func_1(arg_0: bool, arg_1: vec2<u32>, arg_2: vec3<u32>) -> StorageBuffer {
    let var_0 = Struct_1(~vec2<i32>(func_2(), -u_input.b), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(463f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1020f * _wgslsmith_div_f32(260f, 799f)), 142f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(857f, 1027f, false)) - _wgslsmith_f_op_f32(f32(-1f) * -366f)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(860f, -197f)), -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(485f, _wgslsmith_f_op_f32(round(517f)), any(vec3<bool>(true, false, arg_0)))))), -347f);
    var var_1 = Struct_1(~(-(~(~vec2<i32>(46755i, var_0.a.x)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.b.x)))), var_0.c, var_0.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.c + var_0.c), _wgslsmith_f_op_f32(f32(-1f) * -730f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-909f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.c), var_0.b.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.x, var_0.b.x)) - 1685f)));
    let var_2 = _wgslsmith_sub_vec4_i32(-vec4<i32>(-2147483647i, ~var_1.a.x, ~u_input.b, func_2()), _wgslsmith_sub_vec4_i32(countOneBits(reverseBits(vec4<i32>(-2147483647i, 2147483647i, -2147483647i, var_0.a.x)) << (vec4<u32>(arg_1.x, arg_2.x, 4294967295u, arg_2.x) % vec4<u32>(32u))), vec4<i32>(i32(-1i) * -2147483647i, select(40235i, u_input.b, true) & firstTrailingBit(var_1.a.x), var_0.a.x, var_1.a.x)));
    let var_3 = Struct_1(_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(var_1.a.x, -var_2.x), ~_wgslsmith_mod_vec2_i32(vec2<i32>(var_2.x, var_1.a.x), var_1.a)), var_0.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.c)))));
    var var_4 = Struct_2(var_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_1.c, var_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.b.x))))) + _wgslsmith_f_op_f32(f32(-1f) * -1406f)), vec4<bool>(any(!(!vec4<bool>(arg_0, arg_0, arg_0, arg_0))), all(vec3<bool>(all(vec4<bool>(arg_0, false, arg_0, false)), arg_0, true)), true, var_3.a.x < abs(-var_3.a.x)));
    return StorageBuffer(_wgslsmith_sub_vec2_u32(~vec2<u32>(0u, 9847u), arg_1), var_0.b.x, ~40082u, ~var_2.yzw, _wgslsmith_f_op_f32(step(var_4.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.c))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(!all(select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(false, false), vec2<bool>(true, false))), _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(1u, u_input.a)) >> (vec2<u32>(u_input.a, 46551u) % vec2<u32>(32u)), ~vec2<u32>(1u, u_input.a)) | firstTrailingBit(vec2<u32>(~24382u, 1u)), reverseBits(vec3<u32>(u_input.a, u_input.a, 0u >> (1u % 32u)) & vec3<u32>(~6217u, 21006u, u_input.a)));
}

