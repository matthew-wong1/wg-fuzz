struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<i32>) -> vec4<f32> {
    let var_0 = Struct_2(true, vec3<bool>(true, select(!(arg_0.x >= -867f), true, (4294967295u > u_input.a) && true), ((u_input.c & -16652i) | arg_1.x) < -arg_1.x), _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1040f))));
    var var_1 = ~select(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(u_input.a, u_input.b.x), abs(u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.d.x), vec4<u32>(u_input.d.x, u_input.e.x, 0u, u_input.a)), 23557u), _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 56204u, 4294967295u, u_input.b.x), vec4<u32>(4294967295u, u_input.e.x, 61350u, u_input.a), vec4<u32>(0u, u_input.d.x, 1u, u_input.b.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(7976u, 4294967295u, 7224u, u_input.b.x), vec4<u32>(u_input.a, 4294967295u, 27444u, u_input.a)))), _wgslsmith_mult_vec4_u32(~(vec4<u32>(u_input.e.x, u_input.b.x, 1u, u_input.d.x) >> (vec4<u32>(u_input.a, 6227u, 19932u, 4294967295u) % vec4<u32>(32u))), ~vec4<u32>(58189u, u_input.e.x, u_input.a, 57326u)), !select(!vec4<bool>(true, var_0.a, false, true), !vec4<bool>(var_0.a, var_0.b.x, false, true), !vec4<bool>(true, var_0.a, false, var_0.b.x)));
    let var_2 = Struct_1(arg_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.xzx + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-718f, arg_0.x, 1000f) + vec3<f32>(-1148f, var_0.c, 1784f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(655f, var_0.c, var_0.c)))) + arg_0.xwx));
    var var_3 = var_2;
    let var_4 = var_0;
    return var_3.a;
}

fn func_2() -> vec3<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(568f, 228f, -589f, -1366f), vec4<f32>(310f, -616f, 1196f, -150f), true))), max(~vec3<i32>(2147483647i, u_input.c, u_input.c), vec3<i32>(u_input.c, u_input.c, u_input.c))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-208f, 454f, -1000f)) + vec3<f32>(1323f, -1743f, 1121f)))))));
    let var_1 = _wgslsmith_mult_vec2_u32(~vec2<u32>(abs(1u) | u_input.b.x, u_input.b.x), ~_wgslsmith_mult_vec2_u32(abs(vec2<u32>(1u, 4294967295u)) ^ vec2<u32>(u_input.d.x, u_input.b.x), u_input.d));
    let var_2 = _wgslsmith_clamp_i32(-2147483647i, min(1i ^ u_input.c, _wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.c, u_input.c), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.c, u_input.c), vec3<i32>(-16437i, u_input.c, u_input.c)))), u_input.c & -1i) | ~firstLeadingBit(-1592i);
    let var_3 = select(!(!(!select(vec2<bool>(true, true), vec2<bool>(false, true), false))), select(vec2<bool>(true, select(all(vec3<bool>(false, false, true)), all(vec3<bool>(true, false, false)), 1u < u_input.a)), select(select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), var_0.b.x <= -660f), false), ~(~u_input.b.x) != 4294967295u), vec2<bool>(!any(vec2<bool>(false, true)), false));
    return select(select(vec3<bool>(~(-2147483647i) >= _wgslsmith_mod_i32(var_2, 2147483647i), !(18602i < u_input.c), true), select(!select(vec3<bool>(true, var_3.x, var_3.x), vec3<bool>(var_3.x, var_3.x, var_3.x), vec3<bool>(false, true, false)), !select(vec3<bool>(var_3.x, var_3.x, var_3.x), vec3<bool>(var_3.x, true, false), vec3<bool>(true, false, true)), !(!vec3<bool>(true, var_3.x, var_3.x))), select(!(!vec3<bool>(false, var_3.x, false)), !select(vec3<bool>(var_3.x, true, var_3.x), vec3<bool>(false, true, true), false), var_3.x)), !vec3<bool>(var_3.x, !any(vec2<bool>(var_3.x, var_3.x)), false), vec3<bool>(!all(vec4<bool>(var_3.x, true, var_3.x, var_3.x)), var_3.x, var_3.x));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>) -> Struct_2 {
    var var_0 = true;
    var var_1 = Struct_2(arg_0.b.x, arg_0.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-141f * arg_0.c), 103f));
    var var_2 = !select(select(select(vec4<bool>(arg_0.b.x, true, var_1.b.x, arg_0.a), vec4<bool>(arg_0.a, arg_0.a, var_1.b.x, false), !vec4<bool>(arg_0.b.x, var_1.a, true, var_1.b.x)), vec4<bool>(arg_0.b.x, select(var_1.b.x, arg_0.b.x, false), !arg_0.a, any(var_1.b.yz)), select(!vec4<bool>(false, false, var_1.a, var_1.b.x), select(vec4<bool>(arg_0.a, arg_0.b.x, var_1.a, true), vec4<bool>(arg_0.a, arg_0.b.x, var_1.b.x, var_1.b.x), var_1.b.x), !vec4<bool>(false, var_1.a, arg_0.a, false))), vec4<bool>(all(vec3<bool>(var_1.a, var_1.a, true)), select(false, arg_0.a, all(vec4<bool>(true, true, false, true))), ~u_input.d.x != ~0u, true), all(arg_0.b));
    let var_3 = firstTrailingBit(vec4<u32>(~max(firstTrailingBit(u_input.e.x), _wgslsmith_sub_u32(u_input.d.x, u_input.b.x)), 4294967295u, u_input.b.x, u_input.a));
    var_2 = !vec4<bool>(true, firstTrailingBit(firstLeadingBit(u_input.c)) == _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, -11829i), vec2<i32>(u_input.c, 15110i)), vec2<i32>(u_input.c, u_input.c) >> (var_3.wy % vec2<u32>(32u))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.c + var_1.c))) == -477f, true);
    return Struct_2(!all(vec2<bool>(true, arg_0.a)), !func_2(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.c))));
}

fn func_1() -> Struct_2 {
    let var_0 = func_4(Struct_2(true, !func_2(), -1000f), vec2<u32>(countOneBits(u_input.a), _wgslsmith_dot_vec3_u32(select(u_input.b, u_input.b, vec3<bool>(true, false, false)), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.a, 0u), u_input.b)) | u_input.d.x));
    let var_1 = !(!select(select(vec3<bool>(var_0.b.x, var_0.b.x, var_0.a), var_0.b, vec3<bool>(true, true, true)), func_4(Struct_2(var_0.a, var_0.b, var_0.c), u_input.b.xx).b, func_4(var_0, vec2<u32>(u_input.b.x, 0u)).b));
    let var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1726f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(2203f + var_0.c), 340f, 11387u > u_input.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, -1078f, 613f) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.c, -1175f, var_0.c)))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -244f), _wgslsmith_div_f32(var_0.c, var_0.c), _wgslsmith_f_op_f32(select(330f, var_0.c, true)))))));
    var var_3 = abs(u_input.d.x);
    var_3 = u_input.e.x;
    return func_4(func_4(Struct_2(!all(vec4<bool>(var_0.a, true, true, true)), !var_1, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(var_2.x))))), vec2<u32>(abs(u_input.a), _wgslsmith_clamp_u32(u_input.e.x << (16668u % 32u), ~u_input.e.x, u_input.a))), _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(firstLeadingBit(u_input.b.yy), ~vec2<u32>(34333u, u_input.d.x)) << (u_input.b.xz % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(~vec2<u32>(u_input.a, u_input.e.x) & _wgslsmith_mod_vec2_u32(u_input.d, vec2<u32>(u_input.e.x, 6755u)), ~vec2<u32>(0u, 11968u))));
}

fn func_5(arg_0: Struct_2) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c, 790f) + vec2<f32>(arg_0.c, -1127f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c, arg_0.c) - vec2<f32>(arg_0.c, arg_0.c)))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c + -552f) + _wgslsmith_f_op_f32(floor(arg_0.c))), -1263f))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -110f), 364f), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-117f)))), 1014f))));
    var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-125f, 736f), vec2<f32>(var_0.x, 1448f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-438f, arg_0.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) - vec2<f32>(-776f, arg_0.c))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 356f) * vec2<f32>(701f, 1230f)) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.x, 395f), vec2<f32>(arg_0.c, -291f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.c, 1569f), vec2<f32>(431f, var_0.x), arg_0.b.yz)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.x, arg_0.c))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1423f, -1002f), vec2<f32>(-3565f, -892f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(2150f, -1545f)))))));
    let var_1 = arg_0;
    let var_2 = var_1;
    return !all(!vec2<bool>(var_2.a | arg_0.b.x, arg_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1054f, -1000f, -568f, -570f), vec4<f32>(-1074f, 1210f, -569f, 745f), true)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1349f, 1575f, -1070f, 194f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2125f, _wgslsmith_f_op_f32(ceil(1085f)), -776f) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-739f, -1266f, -281f), _wgslsmith_div_vec3_f32(vec3<f32>(-657f, 412f, 1000f), vec3<f32>(-904f, -1104f, 1246f)), true))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-367f, 1424f, -1091f) * vec3<f32>(-955f, -1772f, -2337f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1314f), -323f, _wgslsmith_f_op_f32(f32(-1f) * -252f))))));
    var var_1 = ~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 4294967295u, u_input.a, 91144u), ~vec4<u32>(u_input.b.x, 89783u, u_input.d.x, u_input.a))), ~((vec2<u32>(u_input.e.x, u_input.e.x) & vec2<u32>(15809u, 1u)) << (select(vec2<u32>(4294967295u, 111100u), u_input.e, false) % vec2<u32>(32u))));
    let var_2 = _wgslsmith_f_op_f32(step(-1000f, var_0.a.x));
    var var_3 = Struct_2(func_5(func_1()), vec3<bool>(!func_4(Struct_2(true, vec3<bool>(true, false, true), 288f), vec2<u32>(20768u, u_input.e.x)).a, true, (1u & ~u_input.a) < ~4294967295u), var_2);
    var_1 = u_input.e;
    var_3 = func_1();
    var var_4 = var_0;
    var var_5 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(var_0.a))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_4.a)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(325f + _wgslsmith_f_op_f32(-var_0.a.x)), var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_3.c, var_0.b.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<u32>(4294967295u, min(var_1.x >> (87800u % 32u), ~u_input.b.x), 8782u, _wgslsmith_div_u32(min(45601u, var_1.x), _wgslsmith_sub_u32(1u, u_input.e.x))), ~vec4<u32>(1u, abs(9687u), min(58448u, var_1.x), abs(var_1.x)), vec4<bool>(var_3.a, false & (var_3.b.x && var_3.a), var_3.a, !(!var_3.b.x))), u_input.a, select(~select(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, u_input.c), vec2<i32>(-1i, 10990i)), vec2<i32>(-27371i, u_input.c), var_3.a), max(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, -2147483647i) & vec2<i32>(-1i, 1i), ~vec2<i32>(-52807i, u_input.c)), vec2<i32>(-55042i, u_input.c)), all(func_2())), -(~firstTrailingBit(~vec2<i32>(u_input.c, u_input.c))), _wgslsmith_add_vec2_u32(firstTrailingBit(~u_input.b.xx), abs(abs(u_input.b.xy))));
}

