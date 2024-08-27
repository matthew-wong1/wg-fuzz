struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: bool,
    d: vec2<f32>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
    c: Struct_2,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec4<i32> {
    var var_0 = Struct_2(vec3<f32>(-805f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-166f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-116f))))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1111f, -275f))), any(vec2<bool>(true, true)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1635f), _wgslsmith_f_op_f32(-1990f + 522f)), _wgslsmith_f_op_f32(step(200f, -1222f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1589f)) - _wgslsmith_f_op_f32(min(-859f, 749f))))), select(!vec3<bool>(u_input.b.x > 10585u, false, false), select(vec3<bool>(false, all(vec2<bool>(true, true)), true), vec3<bool>(true, true, select(true, false, true)), !select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false))), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), true)));
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, var_0.d.x, var_0.d.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-556f, 1776f, var_0.b.x))) + _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, -1195f, 2956f), vec3<f32>(175f, 385f, 446f)), _wgslsmith_f_op_vec3_f32(-var_0.a))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_0.b, var_0.b, vec2<bool>(true, true)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_0.b))), all(!vec4<bool>(var_0.e.x, var_0.e.x, true, true)))), vec2<f32>(_wgslsmith_f_op_f32(-1000f * -1672f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.d.x, var_0.d.x)))), var_0.c)), false, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(var_0.b.x, -1438f)), -121f, true)), var_0.d.x), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.b.x))), -1418f)), var_0.e);
    var var_2 = true;
    let var_3 = Struct_3(i32(-1i) * -2147483647i, Struct_1(~(i32(-1i) * -10939i), ~_wgslsmith_sub_u32(~u_input.b.x, 34213u)));
    var var_4 = Struct_3(u_input.c, Struct_1(var_3.a & ~(~64301i), min(~0u, var_3.b.b)));
    return _wgslsmith_sub_vec4_i32(select(vec4<i32>(var_4.a, 46257i, _wgslsmith_dot_vec2_i32(vec2<i32>(11494i, var_4.b.a), vec2<i32>(u_input.c, var_3.a)), var_4.b.a), vec4<i32>(max(u_input.c, 41045i), _wgslsmith_mult_i32(u_input.c, u_input.c), -var_4.b.a, _wgslsmith_add_i32(39333i, var_4.a)), !var_0.e.x), ~abs(max(vec4<i32>(2147483647i, 51973i, 2147483647i, var_4.a), vec4<i32>(-2147483647i, 0i, var_3.a, var_3.b.a)))) ^ ~(-(~(~vec4<i32>(var_3.b.a, var_4.a, var_3.b.a, var_3.a))));
}

fn func_4(arg_0: u32, arg_1: vec4<i32>) -> i32 {
    var var_0 = -_wgslsmith_div_i32(-4105i, _wgslsmith_add_i32(-_wgslsmith_dot_vec3_i32(arg_1.xxy, arg_1.zxx), ~(-8992i)));
    let var_1 = Struct_2(vec3<f32>(-504f, -327f, 1f), vec2<f32>(-249f, 228f), !(u_input.a.x >= arg_0), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))))), !vec3<bool>(arg_0 == u_input.a.x, firstTrailingBit(150892u) <= arg_0, all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true)))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(578f * var_1.d.x), _wgslsmith_f_op_f32(exp2(var_1.a.x)), all(var_1.e))), _wgslsmith_f_op_f32(exp2(var_1.a.x)), 1196f), var_1.a)), var_1.a.yz, _wgslsmith_div_f32(-228f, -331f) < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(1148f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(var_1.b.x)))))), var_1.d, vec3<bool>(!(!var_1.e.x), select(select(var_1.e.x, all(vec3<bool>(false, true, var_1.e.x)), true), var_1.c, var_1.c), all(var_1.e.zy)));
    let var_3 = Struct_3(arg_1.x, Struct_1(20539i, _wgslsmith_div_u32(7606u, min(u_input.d.x, reverseBits(arg_0)))));
    var_0 = abs(-1i);
    return u_input.c;
}

fn func_2(arg_0: bool, arg_1: vec3<u32>) -> Struct_3 {
    var var_0 = u_input.c;
    var var_1 = ~_wgslsmith_add_vec2_i32(firstTrailingBit(vec2<i32>(-29832i, -7793i)), _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, -40543i), vec2<i32>(-1i, u_input.c)), min(vec2<i32>(u_input.c, 22965i), vec2<i32>(-1i, 50456i)))) ^ vec2<i32>(func_4(1u, func_3()), select(abs(0i), firstTrailingBit(-25145i), true));
    let var_2 = 4294967295u << (0u % 32u);
    let var_3 = 928f;
    var var_4 = true;
    return Struct_3(~(2767i ^ -var_1.x), Struct_1(i32(-1i) * -func_3().x, abs(~var_2) | var_2));
}

fn func_1(arg_0: i32) -> Struct_3 {
    return func_2(false, select(abs(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a.x, 4294967295u, u_input.b.x), u_input.b)), u_input.d, !any(vec3<bool>(false, true, false))));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: i32) -> Struct_1 {
    var var_0 = ~firstTrailingBit(~abs(~1u));
    let var_1 = -21815i;
    var var_2 = countOneBits(vec4<i32>(~54696i, var_1 >> (1u % 32u), ~_wgslsmith_clamp_i32(-arg_2, -var_1, -2147483647i), 2147483647i));
    var_2 = ~vec4<i32>(var_2.x, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(max(vec3<i32>(arg_2, 33231i, arg_2), vec3<i32>(19521i, -1i, 1i)), func_3().wxz, vec3<i32>(1i, arg_2, var_2.x)), vec3<i32>(-36902i, 39097i, var_2.x)), countOneBits(~(-1i)), _wgslsmith_add_i32(-u_input.c, -_wgslsmith_mult_i32(arg_2, var_1)));
    var var_3 = select(~_wgslsmith_sub_vec2_u32(u_input.b.zz, vec2<u32>(~u_input.d.x, ~10988u)), _wgslsmith_div_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(1u, _wgslsmith_mod_u32(1u, arg_1.b.b)) ^ _wgslsmith_div_vec2_u32(arg_0.xy, arg_0.yy)), !vec2<bool>(all(vec3<bool>(true, false, true)) | true, true));
    return func_2(all(vec2<bool>(true, true)), vec3<u32>(arg_1.b.b, arg_1.b.b, ~23772u)).b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -432f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -536f))), -301f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(trunc(-493f))), -104f)), false, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-514f + -154f)))), -143f), !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true)));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.d.x, 1123f), var_0.b), var_0.d), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(617f * -1000f)), _wgslsmith_f_op_f32(-1599f * var_0.a.x))) * vec2<f32>(-401f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-953f, var_0.b.x), _wgslsmith_f_op_f32(-var_0.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.x, var_0.b.x)))));
    var var_2 = _wgslsmith_add_i32(~(-countOneBits(u_input.c) ^ 35698i), ~_wgslsmith_dot_vec4_i32(firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, 10824i), vec4<i32>(2147483647i, 1i, 3817i, 12265i))), _wgslsmith_add_vec4_i32(vec4<i32>(1i, u_input.c, u_input.c, 12951i), vec4<i32>(u_input.c, 2147483647i, -20611i, 1i) | vec4<i32>(u_input.c, -1i, -53692i, u_input.c))));
    var var_3 = 210f;
    var_2 = 1i;
    let var_4 = u_input.b.x;
    let var_5 = false;
    var var_6 = vec3<bool>(true, select(false, var_5, true) | false, false & (~1u >= ~u_input.b.x));
    var var_7 = func_5(~u_input.a, func_1(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, ~0i), vec2<i32>(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(6570i, u_input.c, 1i, u_input.c), vec4<i32>(u_input.c, 2147483647i, -29034i, u_input.c))))), countOneBits(_wgslsmith_clamp_i32(-u_input.c, _wgslsmith_clamp_i32(-u_input.c, _wgslsmith_sub_i32(-8208i, -14181i), u_input.c), _wgslsmith_sub_i32(-u_input.c, 16355i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(abs(-vec3<i32>(var_7.a, -1i, -2147483647i)), vec3<i32>(-25500i, _wgslsmith_mod_i32(26631i, var_7.a), func_2(var_0.e.x, u_input.b).b.a)) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x & var_7.b, 1u, 43864u), _wgslsmith_add_vec3_u32(~vec3<u32>(var_7.b, 4294967295u, 39073u), vec3<u32>(u_input.a.x, 0u, u_input.d.x) >> (u_input.b % vec3<u32>(32u)))) % vec3<u32>(32u)), u_input.a & u_input.a, 29305u, vec4<u32>(~(~(~1u)), ~(~select(var_7.b, 11241u, var_6.x)), ~func_2(true, firstLeadingBit(vec3<u32>(var_7.b, var_7.b, 0u))).b.b, ~84267u), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~u_input.d.yy, firstTrailingBit(vec2<u32>(20363u, var_7.b)) >> (u_input.b.yz % vec2<u32>(32u))), ~(firstTrailingBit(var_7.b) << (~var_7.b % 32u))));
}

