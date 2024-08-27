struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec2<f32>,
    c: u32,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: vec2<f32>, arg_3: bool) -> vec4<bool> {
    let var_0 = -31854i;
    let var_1 = i32(-1i) * -max(select(arg_1, 0i >> (0u % 32u), true), arg_1);
    let var_2 = abs(select(vec3<u32>(_wgslsmith_mod_u32(~u_input.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 0u, u_input.c.x, u_input.d), vec4<u32>(u_input.c.x, u_input.c.x, 17597u, 4294967295u))), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 67177u), u_input.c) | u_input.c.x, max(~u_input.d, firstTrailingBit(u_input.d))), vec3<u32>(27561u, 1u, u_input.c.x), !(_wgslsmith_f_op_f32(-arg_2.x) == _wgslsmith_f_op_f32(arg_2.x * 107f))));
    var var_3 = u_input.d;
    let var_4 = _wgslsmith_mult_u32(1u, firstTrailingBit(14893u));
    return vec4<bool>(arg_0, arg_3 || true, true, all(!vec2<bool>(arg_0, arg_3)));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<f32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2709f), 903f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(191f, arg_1.x)))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-407f + arg_1.x) + -655f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(549f - arg_1.x)))));
    var var_1 = ~(~_wgslsmith_add_u32(abs(4294967295u), _wgslsmith_div_u32(49834u, 4294967295u)));
    let var_2 = Struct_3(arg_0.a, arg_0.b);
    var_1 = u_input.d & ~_wgslsmith_add_u32(firstTrailingBit(~40672u), u_input.c.x);
    return false;
}

fn func_2(arg_0: vec4<i32>) -> vec2<bool> {
    var var_0 = Struct_5(reverseBits(firstTrailingBit(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(arg_0.yxz, vec3<i32>(u_input.a.x, 0i, -2147483647i)), ~u_input.a.zzx))), Struct_2(all(vec3<bool>(any(vec3<bool>(true, true, false)), true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(sign(-2224f))), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(1345f * -821f)), true)) + _wgslsmith_f_op_f32(max(-758f, 574f))));
    let var_1 = !(var_0.b.a & false);
    let var_2 = i32(-1i) * -2147483647i;
    let var_3 = Struct_4(1433f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c, -1245f) * vec2<f32>(604f, 403f)), vec2<f32>(var_0.c, -2319f))))), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(~2083u | _wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, u_input.c.x), u_input.c.x, firstLeadingBit(~25227u)), (2523u ^ u_input.d) << (1u % 32u)));
    return vec2<bool>(select(true, all(!(!vec4<bool>(var_0.b.a, var_0.b.a, true, false))), func_4(Struct_3(func_3(true, var_0.a.x, vec2<f32>(-456f, var_3.a), false), var_0.b), vec2<f32>(1f, 1f))), true);
}

fn func_1() -> Struct_3 {
    let var_0 = func_2(~vec4<i32>(u_input.a.x, min(-u_input.a.x, ~12133i), firstTrailingBit(~u_input.e), -(i32(-1i) * -93924i)));
    let var_1 = -1000f;
    let var_2 = -_wgslsmith_dot_vec4_i32(u_input.a, u_input.a);
    var var_3 = vec2<bool>(true, true);
    var_3 = func_2(_wgslsmith_sub_vec4_i32(u_input.a, vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_2, 18663i), vec2<i32>(22877i, -2147483647i)), min(var_2, -1i), var_2, 31110i)) & abs(u_input.a));
    return Struct_3(!vec4<bool>(true, var_0.x, var_0.x, true), Struct_2(true));
}

fn func_5(arg_0: Struct_3, arg_1: vec3<u32>) -> vec4<bool> {
    var var_0 = !(!arg_0.b.a);
    let var_1 = any(vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(485f)) * _wgslsmith_f_op_f32(sign(329f))) < -1761f, !func_3(!arg_0.a.x, u_input.b & 46280i, vec2<f32>(-1171f, 281f), arg_0.b.a).x, arg_0.b.a));
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(0i);
    let var_1 = i32(-1i) * -1i;
    let var_2 = ~(-25981i);
    let var_3 = Struct_3(func_5(func_1(), select(reverseBits(vec3<u32>(u_input.c.x, u_input.c.x, 20532u)), vec3<u32>(u_input.d, u_input.d, 19858u) & max(vec3<u32>(2075u, 4294967295u, u_input.c.x), vec3<u32>(u_input.c.x, u_input.d, 44007u)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true))), Struct_2(!(~5502u != u_input.d)));
    let var_4 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(408f)) + _wgslsmith_f_op_f32(select(-557f, -434f, true))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1696f))))), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-1000f * -739f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1333f)))))), ~(~(~1562u)) << (_wgslsmith_dot_vec4_u32(max(vec4<u32>(4294967295u, u_input.c.x, 1u, 0u) << (vec4<u32>(4092u, 1u, 29359u, 1u) % vec4<u32>(32u)), ~vec4<u32>(1u, 74751u, u_input.d, u_input.d)), firstLeadingBit(min(vec4<u32>(u_input.d, 4294967295u, 61449u, u_input.d), vec4<u32>(u_input.d, 1u, 4294967295u, 68135u)))) % 32u));
    let var_5 = 55546u;
    var var_6 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(2147483647i, abs(_wgslsmith_div_i32(u_input.a.x, firstTrailingBit(var_0))), max(~abs(2118i), firstTrailingBit(i32(-1i) * -1i)), var_1), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_4.b.x))), _wgslsmith_f_op_f32(max(373f, _wgslsmith_f_op_f32(-377f - var_4.a)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_4.a)), 1258f)), ~(~(max(var_5, var_5) | (var_4.c << (0u % 32u)))), vec4<i32>(-1i) * -(countOneBits(vec4<i32>(0i, -2147483647i, 4881i, 2147483647i)) ^ select(vec4<i32>(2147483647i, var_2, 0i, var_0), vec4<i32>(-2147483647i, var_1, u_input.e, -44480i), true)));
}

