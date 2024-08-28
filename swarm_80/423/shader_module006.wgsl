struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    return _wgslsmith_div_u32(u_input.c.x ^ ~57556u, 11589u);
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    var var_0 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(arg_1.a)))), vec3<f32>(_wgslsmith_div_f32(arg_1.c, _wgslsmith_f_op_f32(f32(-1f) * -233f)), 1034f, -1399f)), func_3(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1099f, arg_1.a.x, arg_2.a.x)), _wgslsmith_mod_u32(arg_2.b, 4294967295u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -231f) - _wgslsmith_f_op_f32(f32(-1f) * -170f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.x + -398f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c + arg_1.c)))));
    var var_1 = reverseBits(vec2<i32>(arg_0, 2147483647i));
    var_0 = arg_2;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, arg_1.a.x, arg_1.a.x, 695f)) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.c, arg_1.a.x, var_0.c, arg_2.c), vec4<f32>(1329f, -292f, arg_1.c, -773f)))))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(min(arg_1.a.x, -283f)), arg_2.c, _wgslsmith_f_op_f32(560f * 1183f), _wgslsmith_f_op_f32(min(var_0.a.x, -1371f)))))));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1201f, 1252f, 896f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, _wgslsmith_f_op_f32(arg_1.a.x + 537f), _wgslsmith_f_op_f32(arg_2.c * arg_2.a.x)))), u_input.c.x, -184f);
    return any(!(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = !vec3<bool>(!(all(vec4<bool>(false, true, true, true)) | true), true, false);
    var_0 = !vec3<bool>(any(vec3<bool>(false, true, !var_0.x)), true | !func_2(1i, arg_2, Struct_1(vec3<f32>(-186f, arg_2.a.x, 152f), 69407u, 272f)), false);
    var_0 = !select(select(select(select(vec3<bool>(var_0.x, true, true), vec3<bool>(var_0.x, false, true), true), vec3<bool>(true, false, var_0.x), vec3<bool>(true, var_0.x, false)), select(select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, false, var_0.x), false), vec3<bool>(true, var_0.x, var_0.x), all(vec3<bool>(true, var_0.x, false))), select(select(vec3<bool>(true, false, var_0.x), vec3<bool>(var_0.x, var_0.x, false), true), vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, false, false))), vec3<bool>(61007i > u_input.a, !(var_0.x && true), true), !select(true, !var_0.x, false));
    return select(vec4<bool>(var_0.x, all(vec2<bool>(false, false & var_0.x)), !(u_input.b < (i32(-1i) * -1i)), -38182i >= firstLeadingBit(-68379i >> (arg_1.b % 32u))), select(!select(select(vec4<bool>(var_0.x, var_0.x, false, false), vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(false, var_0.x, var_0.x, false)), vec4<bool>(true, var_0.x, true, var_0.x), true), vec4<bool>(_wgslsmith_div_f32(arg_1.c, -1315f) > _wgslsmith_div_f32(arg_1.a.x, arg_0), func_2(-2147483647i, arg_2, arg_1), !any(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), !all(vec2<bool>(false, true))), any(!select(vec4<bool>(var_0.x, false, false, var_0.x), vec4<bool>(var_0.x, false, true, var_0.x), false))), false);
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_2;
    let var_1 = -_wgslsmith_sub_vec3_i32(~vec3<i32>(-7908i, _wgslsmith_clamp_i32(1i, u_input.b, arg_0.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-31486i, u_input.b, u_input.a, 9004i), vec4<i32>(arg_0.x, u_input.b, arg_0.x, -1i))), arg_0.yxw);
    var_0 = Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-565f * var_0.a.x)), -1283f, _wgslsmith_f_op_f32(f32(-1f) * -169f)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_0.a)))), var_0.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x + 742f)))))));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, -1012f, var_0.a.x))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, 2031f, 340f)) - vec3<f32>(-2267f, arg_2.a.x, 1106f)))), true)), firstLeadingBit(_wgslsmith_sub_u32(abs(func_3(arg_2)), arg_2.b)), arg_2.a.x);
    var_0 = Struct_1(var_0.a, ~(~(~(~arg_2.b))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(var_0.a.x)), -1893f, all(arg_1.xz))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -864f) - _wgslsmith_div_f32(var_0.c, arg_2.a.x)))))));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(arg_2.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1425f, -739f, var_0.a.x)))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -715f), _wgslsmith_f_op_f32(var_0.a.x - -881f), _wgslsmith_f_op_f32(min(var_0.c, var_0.c))))), ~98114u, 244f);
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    var var_0 = arg_1;
    var var_1 = func_3(arg_1);
    let var_2 = func_4(vec4<i32>(_wgslsmith_clamp_i32(firstLeadingBit(_wgslsmith_clamp_i32(22032i, arg_0.x, u_input.a)), abs(-2147483647i), arg_0.x), i32(-1i) * -max(arg_2, arg_0.x), abs(_wgslsmith_add_i32(0i, arg_0.x)), _wgslsmith_dot_vec2_i32(arg_0.xz, vec2<i32>(arg_0.x, _wgslsmith_sub_i32(-30425i, 31414i)))), !vec4<bool>(_wgslsmith_mult_i32(9673i, arg_2) >= arg_2, abs(15760i) > countOneBits(arg_2), false, func_2(_wgslsmith_sub_i32(-74191i, 1i), func_4(vec4<i32>(2147483647i, arg_2, -13230i, 2147483647i), vec4<bool>(false, false, true, false), Struct_1(arg_1.a, arg_1.b, -1458f)), Struct_1(vec3<f32>(var_0.a.x, var_0.a.x, 1002f), 78342u, arg_1.c))), Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(max(var_0.c, 231f)), var_0.a.x, arg_1.a.x), var_0.a, func_2(_wgslsmith_sub_i32(u_input.a, 1i), Struct_1(vec3<f32>(-1235f, var_0.a.x, var_0.c), arg_1.b, arg_1.a.x), arg_1))), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(0u, 3496u, arg_1.b, 4294967295u)), ~vec4<u32>(70707u, 1u, arg_1.b, arg_1.b)), vec4<u32>(max(arg_1.b, u_input.c.x), countOneBits(4294967295u), _wgslsmith_clamp_u32(1u, arg_1.b, 4294967295u), ~var_0.b)), arg_1.a.x));
    let var_3 = arg_2;
    var var_4 = _wgslsmith_add_i32(abs(_wgslsmith_dot_vec3_i32(-select(vec3<i32>(u_input.a, -2147483647i, -2147483647i), vec3<i32>(-2147483647i, arg_2, 28838i), vec3<bool>(false, false, true)), ~vec3<i32>(u_input.b, arg_2, 0i))), _wgslsmith_mult_i32((i32(-1i) * -32004i) ^ select(1i, arg_0.x, false), -70287i) >> (func_3(var_2) % 32u));
    return arg_1;
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    let var_0 = true;
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.a)), arg_1.b, arg_1.c);
    let var_2 = arg_1;
    var var_3 = func_5(_wgslsmith_mult_vec4_i32(vec4<i32>(~u_input.b, ~(~u_input.a), -40252i, i32(-1i) * -u_input.b), max(vec4<i32>(u_input.a, -12463i, _wgslsmith_clamp_i32(-20348i, u_input.b, 4143i), -2147483647i), min(vec4<i32>(u_input.b, u_input.a, -5664i, 1i), abs(vec4<i32>(u_input.b, u_input.a, u_input.a, 2147483647i))))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.x, -835f, arg_1.a.x))), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.b, _wgslsmith_sub_u32(arg_0, 23064u)), vec2<u32>(97069u, var_1.b & 0u)), _wgslsmith_f_op_f32(exp2(var_2.a.x))), 1i << (_wgslsmith_sub_u32(1u, firstLeadingBit(~arg_2.b)) % 32u));
    return select(0u, var_2.b & firstTrailingBit(0u), var_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -359f;
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0, var_0, -718f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_0, -1000f) - vec3<f32>(var_0, var_0, var_0))), vec3<f32>(_wgslsmith_f_op_f32(trunc(var_0)), 1288f, _wgslsmith_f_op_f32(var_0 * 1415f)))), func_6(u_input.c.x, func_5(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, u_input.a, u_input.b, 2147483647i), vec4<i32>(u_input.b, u_input.a, u_input.b, u_input.b)), vec4<i32>(u_input.b, -1i, u_input.b, u_input.a) >> (vec4<u32>(1u, u_input.c.x, u_input.c.x, 38870u) % vec4<u32>(32u))), func_4(~vec4<i32>(u_input.b, -2147483647i, u_input.a, u_input.b), func_1(var_0, Struct_1(vec3<f32>(var_0, -1911f, var_0), 0u, var_0), Struct_1(vec3<f32>(var_0, var_0, 614f), u_input.c.x, -1429f)), Struct_1(vec3<f32>(var_0, -1047f, 1350f), u_input.c.x, 503f)), min(-u_input.a, 1i)), Struct_1(_wgslsmith_f_op_vec3_f32(-func_5(vec4<i32>(u_input.a, u_input.a, u_input.a, 25544i), Struct_1(vec3<f32>(-677f, var_0, -1236f), 4294967295u, var_0), -1i).a), reverseBits(~20251u), var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -514f))) * _wgslsmith_f_op_f32(-var_0)));
    var_1 = func_4(-max(_wgslsmith_sub_vec4_i32(select(vec4<i32>(u_input.b, 8323i, u_input.b, -2147483647i), vec4<i32>(u_input.a, 0i, 15725i, u_input.a), false), vec4<i32>(u_input.a, -1i, -33707i, -2147483647i)), -vec4<i32>(u_input.b, u_input.b, u_input.a, u_input.a)), !vec4<bool>(any(vec3<bool>(true, true, true)), true, false, _wgslsmith_f_op_f32(select(var_0, -457f, true)) >= _wgslsmith_f_op_f32(-var_1.a.x)), Struct_1(_wgslsmith_f_op_vec3_f32(-var_1.a), ~0u, var_1.c));
    var var_2 = func_4(~(~abs(vec4<i32>(u_input.b, u_input.a, 2147483647i, -2147483647i) ^ vec4<i32>(-32130i, 2714i, 18422i, u_input.b))), vec4<bool>(any(vec4<bool>(true, true, all(vec2<bool>(false, false)), true)), true, false != (true || any(vec3<bool>(true, false, true))), true), Struct_1(_wgslsmith_f_op_vec3_f32(ceil(var_1.a)), u_input.c.x, func_4(vec4<i32>(2275i, u_input.a, u_input.a, -2147483647i), vec4<bool>(true, true, false, true), func_4(~vec4<i32>(u_input.b, 0i, -2147483647i, -1i), vec4<bool>(false, false, true, false), Struct_1(vec3<f32>(1000f, 1971f, var_0), u_input.c.x, -1000f))).c));
    let var_3 = !any(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)));
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(var_2.a)), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.c.x, 8064u, 6925u, var_1.b) >> (vec4<u32>(28668u, 11561u, 0u, 11166u) % vec4<u32>(32u)), vec4<u32>(var_1.b, 0u, u_input.c.x, 1u) & vec4<u32>(u_input.c.x, 0u, 19317u, 67759u), var_3), ~vec4<u32>(u_input.c.x, 0u, var_2.b, 158528u)), ~18484u), var_0);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-var_2.a.yx), 4294967295u, max(vec2<u32>(~var_2.b, _wgslsmith_mod_u32(var_1.b, firstTrailingBit(44094u))), ~_wgslsmith_add_vec2_u32(vec2<u32>(var_2.b, var_1.b), u_input.c) << (~(~u_input.c) % vec2<u32>(32u))), ~abs(vec4<u32>(1u, u_input.c.x, 0u, var_1.b) & vec4<u32>(0u, 29343u, 4294967295u, 0u)) ^ vec4<u32>((64324u << (var_2.b % 32u)) ^ var_1.b, ~var_1.b | (var_1.b & u_input.c.x), ~var_1.b, var_1.b));
}

