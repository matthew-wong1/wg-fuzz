struct Struct_1 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32, arg_1: vec3<i32>) -> vec4<bool> {
    return vec4<bool>(any(vec4<bool>(true, true, true, true)), false, !(_wgslsmith_f_op_f32(148f - -1333f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(688f)))), all(select(vec3<bool>(u_input.e.x < 10754u, all(vec4<bool>(true, false, true, false)), true), select(vec3<bool>(true, true, false), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true), vec3<bool>(false, true, true)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false))));
}

fn func_2(arg_0: vec3<bool>, arg_1: f32, arg_2: i32) -> Struct_1 {
    let var_0 = !select(arg_0, vec3<bool>(any(!arg_0.xy), !arg_0.x, false), vec3<bool>(all(arg_0), any(select(arg_0.yx, vec2<bool>(true, arg_0.x), false)), true));
    var var_1 = Struct_1(arg_2, _wgslsmith_add_vec4_u32(vec4<u32>(u_input.d & ~8312u, u_input.b.x, 20577u | _wgslsmith_div_u32(u_input.d, u_input.d), ~(~u_input.d)), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.e.x, 0u, u_input.a), _wgslsmith_mod_vec4_u32(vec4<u32>(62725u, 15966u, u_input.b.x, 1u), vec4<u32>(u_input.e.x, 18392u, u_input.a, u_input.b.x)))));
    var_1 = Struct_1(-var_1.a | -1i, ~u_input.b);
    let var_2 = vec4<bool>(false, any(select(!(!vec4<bool>(var_0.x, false, arg_0.x, arg_0.x)), func_3(var_1.a << (u_input.a % 32u), u_input.c.xzx), true)), all(select(arg_0.yy, !select(vec2<bool>(true, arg_0.x), var_0.zx, vec2<bool>(true, arg_0.x)), vec2<bool>(!var_0.x, false))), true);
    var_1 = Struct_1(_wgslsmith_dot_vec2_i32(select(u_input.c.yx, ~u_input.c.ww, vec2<bool>(true, false)), -max(_wgslsmith_sub_vec2_i32(u_input.c.yy, u_input.c.zz), vec2<i32>(8689i, -20830i))), vec4<u32>(~(~_wgslsmith_clamp_u32(var_1.b.x, var_1.b.x, u_input.b.x)), min(3280u, select(4294967295u, 4294967295u, var_0.x)), countOneBits(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b.x, u_input.a), ~vec2<u32>(4294967295u, 4294967295u))), ~firstTrailingBit(_wgslsmith_add_u32(u_input.a, 1u))));
    return Struct_1(arg_2, ~max(select(~vec4<u32>(25515u, u_input.a, var_1.b.x, u_input.b.x), _wgslsmith_div_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, 25210u, 1u, var_1.b.x)), vec4<bool>(var_2.x, false, true, false)), _wgslsmith_add_vec4_u32(~u_input.b, _wgslsmith_sub_vec4_u32(var_1.b, vec4<u32>(0u, 1u, u_input.e.x, var_1.b.x)))));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: i32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-996f - -1561f) * -851f), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(f32(-1f) * -1657f)))));
    let var_1 = !vec3<bool>(all(vec4<bool>(true, arg_0.x, var_0.x >= var_0.x, true)), all(vec4<bool>(true, var_0.x > var_0.x, arg_0.x, func_3(arg_1.a, vec3<i32>(-2147483647i, -1i, u_input.c.x)).x)), _wgslsmith_sub_u32(~arg_1.b.x, _wgslsmith_sub_u32(arg_1.b.x, 34481u)) > 1u);
    let var_2 = !arg_0.x;
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -2844f) + vec2<f32>(-220f, var_0.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 2311f)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(523f, 372f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 808f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 404f) + vec2<f32>(var_0.x, var_0.x))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(325f, 1097f))))));
    let var_3 = Struct_1(arg_1.a, select((~u_input.b & vec4<u32>(0u, arg_1.b.x, u_input.b.x, 22239u)) | countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.b.x, u_input.e.x, 1u, u_input.e.x), u_input.b)), u_input.b, select(vec4<bool>(!arg_0.x, false, any(vec3<bool>(arg_0.x, arg_0.x, true)), true), select(vec4<bool>(true, false, false, var_2), vec4<bool>(arg_0.x, var_1.x, false, false), select(vec4<bool>(var_1.x, arg_0.x, false, var_2), vec4<bool>(true, var_2, false, arg_0.x), true)), !var_2 && all(var_1))));
    return Struct_2(vec4<u32>(var_3.b.x, _wgslsmith_add_u32(var_3.b.x, 4294967295u), ~1u, firstLeadingBit(57997u)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: i32) -> vec3<bool> {
    var var_0 = u_input.e.xy;
    var_0 = ~(~(arg_2.a.xy & u_input.e.xz));
    let var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(484f, 531f) - vec2<f32>(-1044f, -1000f)), vec2<f32>(192f, 2512f), vec2<bool>(true, true))))))));
    return vec3<bool>(false, (arg_1.b.x | 7501u) >= ~(1u >> ((0u >> (0u % 32u)) % 32u)), false);
}

fn func_1() -> i32 {
    let var_0 = u_input.b.x;
    var var_1 = !select(func_5(func_4(vec2<bool>(true, true), func_2(vec3<bool>(true, false, true), -710f, -8964i), ~10668i), func_2(vec3<bool>(false, false, false), _wgslsmith_f_op_f32(220f + 897f), u_input.c.x), func_4(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), func_2(vec3<bool>(true, true, false), 606f, 20179i), u_input.c.x), u_input.c.x | _wgslsmith_dot_vec3_i32(u_input.c.wwx, vec3<i32>(2147483647i, 1i, 12955i))), vec3<bool>(!(-10129i < u_input.c.x), true, firstLeadingBit(u_input.b.x) < _wgslsmith_div_u32(0u, 20775u)), vec3<bool>(true, true, select(false, -18331i == u_input.c.x, all(vec2<bool>(false, false)))));
    var var_2 = abs(var_0);
    let var_3 = vec4<bool>(var_1.x, true, var_1.x, false);
    var var_4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1047f, -810f) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(128f, -803f)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1224f, -1278f))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(433f, -208f)))))));
    return 1i;
}

fn func_6(arg_0: i32, arg_1: f32, arg_2: Struct_2) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(min(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.a.x, 4294967295u, arg_2.a.x, arg_2.a.x), vec4<u32>(4294967295u, u_input.d, 23475u, arg_2.a.x)), firstTrailingBit(u_input.b)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(15058u, arg_2.a.x, 94468u), vec3<u32>(41552u, u_input.b.x, arg_2.a.x)), firstLeadingBit(50273u), _wgslsmith_sub_u32(1u, 1u), 576u)), arg_2.a));
    return func_2(!vec3<bool>(!any(vec4<bool>(false, false, true, true)), true, false | any(vec4<bool>(false, true, true, true))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)) * -1093f), _wgslsmith_f_op_f32(round(arg_1)))), i32(-1i) * -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_i32(reverseBits(-1i), -12719i);
    var var_1 = func_6(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(-u_input.c, ~_wgslsmith_mult_vec4_i32(u_input.c, vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 1077i))), vec4<i32>(u_input.c.x, func_1(), ~u_input.c.x >> (reverseBits(u_input.b.x) % 32u), (u_input.c.x | 2142i) ^ _wgslsmith_mod_i32(u_input.c.x, u_input.c.x))), _wgslsmith_f_op_f32(f32(-1f) * -1361f), func_4(select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false))), vec2<bool>(true, true)), func_2(vec3<bool>(true, true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-384f - -761f) - _wgslsmith_f_op_f32(select(-580f, 591f, false))), -1i), u_input.c.x));
    let var_2 = _wgslsmith_f_op_f32(-1003f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-529f, -1425f)))));
    var_0 = -_wgslsmith_mod_i32(_wgslsmith_add_i32(var_1.a, (var_1.a ^ 0i) << (~var_1.b.x % 32u)), u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(~(~(var_1.b.x | 73628u)), var_1.b.x, reverseBits(func_4(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), Struct_1(1i, u_input.b), 17525i).a.x)), ~u_input.b.x);
}

