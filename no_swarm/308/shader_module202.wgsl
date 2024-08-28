struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: bool,
    d: vec3<f32>,
    e: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_5, arg_2: Struct_2) -> vec2<f32> {
    let var_0 = any(!vec4<bool>(true, arg_2.a, !arg_2.a, true));
    var var_1 = Struct_4(~vec4<i32>(_wgslsmith_div_i32(-2147483647i, ~(-14534i)), _wgslsmith_dot_vec3_i32(vec3<i32>(22878i, -2785i, -1i), vec3<i32>(-24754i, -2147483647i, 2147483647i)) << (4294967295u % 32u), -1i, select(-11740i, 7798i, arg_2.a) ^ _wgslsmith_sub_i32(2147483647i, 49881i)));
    let var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(770f - 699f), _wgslsmith_f_op_f32(max(554f, 1738f))), vec2<f32>(_wgslsmith_f_op_f32(-975f + -1309f), -100f)))))));
    var_1 = Struct_4(~select(-_wgslsmith_mult_vec4_i32(var_1.a, var_1.a), var_1.a, vec4<bool>(true, all(vec4<bool>(arg_2.a, arg_2.a, arg_2.a, true)), any(vec2<bool>(var_0, false)), false)));
    let var_3 = ~_wgslsmith_clamp_vec3_u32(u_input.d, vec3<u32>(4757u, ~_wgslsmith_mod_u32(arg_0.x, arg_1.a), select(arg_0.x & 0u, arg_1.a, arg_2.a)), ~(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.x, 12106u, arg_1.a), u_input.a.xwy) ^ vec3<u32>(1u, 24826u, 4294967295u)));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(var_2, vec2<f32>(1440f, var_2.x)))))))) + vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(732f)), -1092f, (i32(-1i) * -2147483647i) > abs(var_1.a.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-897f - var_2.x))))));
}

fn func_2(arg_0: i32) -> f32 {
    var var_0 = u_input.a | (u_input.a ^ countOneBits(min(u_input.b, vec4<u32>(u_input.a.x, u_input.c, u_input.d.x, 69388u))));
    let var_1 = _wgslsmith_f_op_vec2_f32(func_3(reverseBits(vec3<u32>(155706u, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(u_input.d, u_input.b.wyz), firstTrailingBit(1u)), 54052u)), Struct_5(u_input.a.x), Struct_2(false)));
    var var_2 = min(select(_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(~vec4<i32>(-23516i, -2147483647i, arg_0, arg_0), vec4<i32>(-2147483647i, arg_0, arg_0, -2147483647i) >> (vec4<u32>(u_input.b.x, var_0.x, 701u, u_input.c) % vec4<u32>(32u)), vec4<i32>(-100334i, arg_0, arg_0, 0i)), vec4<i32>(-arg_0, ~arg_0, -89441i, arg_0 | -2147483647i)), _wgslsmith_sub_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(arg_0, -20350i, arg_0, arg_0), vec4<i32>(-5980i, arg_0, arg_0, 1i)), (vec4<i32>(arg_0, arg_0, 0i, 2845i) >> (u_input.b % vec4<u32>(32u))) | _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 11630i, 2147483647i, -74427i), vec4<i32>(arg_0, -4546i, arg_0, arg_0))), all(vec2<bool>(true, true))), -(~abs(vec4<i32>(2147483647i, -2147483647i, arg_0, arg_0) >> (vec4<u32>(u_input.c, 0u, 16634u, 4294967295u) % vec4<u32>(32u)))));
    let var_3 = var_2.x;
    let var_4 = Struct_5(_wgslsmith_dot_vec3_u32(var_0.xyw, select(var_0.zzx & var_0.yyz, var_0.yzw, all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))))));
    return var_1.x;
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: Struct_4) -> Struct_1 {
    var var_0 = 1f;
    let var_1 = u_input.a;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(1i)) + -408f)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(arg_2.a.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -819f))));
    var var_3 = select(vec4<bool>(all(select(vec2<bool>(var_2.a, true), vec2<bool>(false, var_2.a), var_2.a)) | var_2.a, select(true, _wgslsmith_f_op_f32(floor(219f)) >= 217f, true), true, var_2.a), !vec4<bool>(!all(vec3<bool>(true, var_2.a, var_2.a)), true, _wgslsmith_div_f32(274f, -1000f) >= _wgslsmith_f_op_f32(floor(522f)), var_2.a), true);
    let var_4 = arg_2.a.x;
    return Struct_1(~var_1, arg_0, all(!(!(!vec4<bool>(false, true, var_3.x, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(2408f, 643f, -125f), vec3<f32>(-252f, -1345f, 819f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(237f, -634f, -407f) - vec3<f32>(1828f, 1000f, -301f))))), var_2.a | any(select(vec2<bool>(true, true), vec2<bool>(true, var_3.x), !vec2<bool>(var_2.a, var_3.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_1(_wgslsmith_clamp_u32(~17875u, u_input.c, 41765u), 20077i, Struct_4(_wgslsmith_add_vec4_i32(vec4<i32>(63435i, -1i, -1i, 2147483647i) >> (u_input.a % vec4<u32>(32u)), vec4<i32>(1i, 1i, 1i, 1i)))), 57999u, _wgslsmith_f_op_f32(min(-1139f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(845f + 103f) * _wgslsmith_f_op_f32(f32(-1f) * -325f)), _wgslsmith_f_op_f32(min(-1184f, _wgslsmith_f_op_f32(f32(-1f) * -779f))))))), Struct_1(vec4<u32>(u_input.c, u_input.c, 1u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 35499u, 1u), vec4<u32>(u_input.a.x, 4714u, u_input.b.x, 4294967295u)) >> (1u % 32u), true, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(func_2(16189i)), _wgslsmith_f_op_f32(max(1000f, -1000f)), -882f))), true));
    let var_1 = var_0.d.c;
    var_0 = Struct_3(func_1(reverseBits(_wgslsmith_dot_vec4_u32(var_0.d.a, vec4<u32>(u_input.c, u_input.b.x, u_input.a.x, u_input.a.x))), (-69377i >> (u_input.b.x % 32u)) & abs(1i), Struct_4(vec4<i32>(-1i, _wgslsmith_mult_i32(1i, 0i), 36948i, abs(1i)))), u_input.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1281f), Struct_1(~(vec4<u32>(u_input.b.x, 52742u, 4294967295u, 0u) << (vec4<u32>(var_0.d.a.x, 0u, var_0.a.a.x, 56086u) % vec4<u32>(32u))) >> (~vec4<u32>(u_input.b.x, u_input.a.x, u_input.d.x, 28579u) % vec4<u32>(32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(~var_0.a.a.x, 1u, 0u), var_0.d.a.yxx), select(true, func_1(4294967295u, 1i, Struct_4(vec4<i32>(55499i, 1i, -2147483647i, 0i))).c, all(!vec2<bool>(var_0.a.c, false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a.d * var_0.a.d) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.d.x, var_0.a.d.x, -436f) - var_0.d.d)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.d.x, var_0.a.d.x, var_0.c))), var_0.a.e));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(u_input.d, Struct_5(u_input.b.x), Struct_2(var_0.d.e))))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -178f)), var_0.c) * var_0.a.d.xy));
    var_0 = Struct_3(var_0.a, 23624u, var_0.d.d.x, Struct_1(u_input.b, 18532u, true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.d.d - _wgslsmith_f_op_vec3_f32(-vec3<f32>(536f, var_0.c, var_2.x)))), var_0.d.e));
    var_0 = Struct_3(var_0.a, ~(~_wgslsmith_dot_vec2_u32(var_0.d.a.zy, vec2<u32>(59399u, 8528u)) << (_wgslsmith_mult_u32(max(u_input.c, 0u), countOneBits(var_0.b)) % 32u)), _wgslsmith_f_op_vec2_f32(func_3(abs(u_input.d), Struct_5(~50358u), Struct_2(true))).x, func_1(~(~1u), ~(~_wgslsmith_sub_i32(-78805i, 0i)), Struct_4(~vec4<i32>(6949i, 0i, 1i, -1i))));
    var var_3 = vec4<i32>(-1i) * -min(-vec4<i32>(-27144i, -1i, 5270i, 1i), vec4<i32>(1i, 1i, 1i, 1i));
    let var_4 = var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(-21660i, ~(-23537i), 14248u);
}

