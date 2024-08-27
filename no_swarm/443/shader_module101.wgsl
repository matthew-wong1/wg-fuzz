struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: Struct_1,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

var<private> global1: bool = false;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> u32 {
    var var_0 = Struct_2(Struct_1(!(!(!vec3<bool>(global0.x, false, true))), vec3<u32>(u_input.d ^ ~0u, u_input.d, _wgslsmith_mult_u32(57653u ^ u_input.d, _wgslsmith_mult_u32(u_input.e, 4294967295u))), select(!(!vec4<bool>(true, global0.x, global0.x, global0.x)), select(select(vec4<bool>(true, global0.x, true, true), vec4<bool>(false, false, false, true), global0.x), select(vec4<bool>(false, false, true, global0.x), vec4<bool>(true, global0.x, true, true), vec4<bool>(global0.x, global0.x, true, true)), !vec4<bool>(global0.x, global0.x, global0.x, global0.x)), !select(vec4<bool>(true, false, global0.x, true), vec4<bool>(global0.x, global0.x, global0.x, global0.x), global0.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(734f, -1051f) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1238f, -1543f), vec2<f32>(1540f, 827f), vec2<bool>(true, true)))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -770f), _wgslsmith_f_op_f32(993f * 727f))) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(select(135f, 1219f, global0.x)), _wgslsmith_f_op_f32(1021f - 924f))))), vec4<i32>(-u_input.b, _wgslsmith_sub_i32(u_input.a, _wgslsmith_mult_i32(0i | u_input.b, 13609i)), ~firstTrailingBit(-24122i), _wgslsmith_div_i32(-abs(u_input.b), 40168i)));
    var_0 = Struct_2(var_0.a, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.b.x, 352f), vec2<f32>(var_0.b.x, 2245f)))))), var_0.c);
    let var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-565f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b.x, var_0.b.x) * var_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-335f + var_0.b.x)), -185f), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(327f, var_0.b.x, var_0.b.x, 616f), vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, -716f), var_0.a.c.x)))))), vec4<bool>(all(vec3<bool>(false, false, global0.x)), any(!vec4<bool>(false, var_0.a.c.x, true, global0.x)), any(select(vec2<bool>(global0.x, global0.x), var_0.a.a.yz, global0.x)), var_0.a.b.x < _wgslsmith_add_u32(var_0.a.b.x, 1u))))));
    let var_2 = Struct_2(Struct_1(vec3<bool>(any(vec2<bool>(global0.x, true)), !global0.x, true), vec3<u32>(4294967295u, 46229u, ~(~526u)), vec4<bool>(global0.x, true, any(vec2<bool>(true, true)), true || global0.x)), _wgslsmith_div_vec2_f32(var_1.ww, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(var_0.b, var_0.b)), var_1.yw)), vec2<f32>(576f, 819f)))), vec4<i32>(_wgslsmith_sub_i32(-u_input.b, -abs(2147483647i)), _wgslsmith_add_i32(~(-u_input.c), u_input.a), _wgslsmith_mult_i32(1i, firstTrailingBit(2147483647i)) & _wgslsmith_mod_i32(select(-2147483647i, 1i, true), -u_input.a), _wgslsmith_mod_i32(~var_0.c.x, countOneBits(-u_input.c))));
    let var_3 = var_2.a;
    return ~17781u;
}

fn func_2(arg_0: vec2<f32>) -> Struct_2 {
    var var_0 = Struct_1(vec3<bool>(all(vec4<bool>(true, all(vec4<bool>(global0.x, true, false, true)), true, true)), global0.x, global0.x), abs(vec3<u32>(u_input.d, _wgslsmith_add_u32(4294967295u, ~u_input.d), _wgslsmith_div_u32(u_input.e, 27695u))), vec4<bool>(select(1u, func_3(), global0.x) == ~reverseBits(u_input.d), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x + arg_0.x), arg_0.x) == _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.x), -593f)), !any(select(vec2<bool>(false, false), vec2<bool>(global0.x, global0.x), true)), true));
    var var_1 = var_0.b.yz;
    var_0 = Struct_1(select(var_0.a, select(vec3<bool>(!var_0.a.x, false, false), var_0.c.zwx, vec3<bool>(!global0.x, global0.x, 566f >= arg_0.x)), (1i != _wgslsmith_div_i32(u_input.b, -20133i)) && global0.x), _wgslsmith_div_vec3_u32(abs(~var_0.b), vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(97568u, var_1.x, u_input.d, u_input.e), select(vec4<u32>(var_0.b.x, u_input.d, u_input.d, u_input.e), vec4<u32>(1u, 33926u, var_0.b.x, 33323u), global0.x)), ~abs(0u), _wgslsmith_div_u32(var_0.b.x, ~13914u))), select(var_0.c, select(select(select(var_0.c, var_0.c, false), select(var_0.c, var_0.c, false), var_0.a.x), select(!vec4<bool>(false, false, global0.x, var_0.c.x), select(var_0.c, vec4<bool>(true, global0.x, false, true), vec4<bool>(false, false, var_0.c.x, true)), !global0.x), vec4<bool>(var_0.a.x | global0.x, !var_0.a.x, true, global0.x || true)), !(!(!var_0.c))));
    var var_2 = any(vec4<bool>(!all(vec2<bool>(false, false)), var_0.c.x, all(var_0.c.yx), global0.x));
    var var_3 = false;
    return Struct_2(Struct_1(select(!var_0.a, !(!var_0.a), true), _wgslsmith_sub_vec3_u32(var_0.b, ~vec3<u32>(u_input.e, 66674u, 4294967295u)) & vec3<u32>(var_1.x, ~u_input.e, abs(var_0.b.x)), vec4<bool>(global0.x, !var_0.a.x, (u_input.b | 1i) > u_input.c, all(vec3<bool>(true, false, var_0.a.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0)), _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(~u_input.b, -6424i, 2147483647i, max(-2147483647i, -21527i)), vec4<i32>(u_input.a, 20546i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.c, 2147483647i, u_input.c), vec4<i32>(u_input.a, u_input.b, u_input.b, u_input.c)), u_input.c)), firstLeadingBit(-(~vec4<i32>(u_input.c, u_input.c, 0i, u_input.a)))));
}

fn func_1(arg_0: f32, arg_1: u32) -> Struct_3 {
    global0 = !vec2<bool>(global0.x, true);
    global1 = any(!(!select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x), global0.x)));
    global0 = !(!select(vec2<bool>(!global0.x, u_input.e < 1u), vec2<bool>(true, !global0.x), !(global0.x && true)));
    global1 = false;
    let var_0 = _wgslsmith_f_op_f32(sign(-1138f));
    return Struct_3(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1272f), 1595f, var_0), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)))), func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_0)) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0, arg_0)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0, 1107f))) - vec2<f32>(932f, var_0)))).a, u_input.c & (((2147483647i >> (arg_1 % 32u)) | -u_input.b) >> (~28759u % 32u)), reverseBits(u_input.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-559f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(1379f, -613f)), _wgslsmith_f_op_f32(f32(-1f) * -810f), global0.x || false)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1755f))))), _wgslsmith_add_u32(~22828u, 16472u));
    let var_1 = vec4<u32>(abs(_wgslsmith_clamp_u32(0u, abs(~u_input.e), _wgslsmith_div_u32(var_0.c.b.x, 19617u))), _wgslsmith_div_u32(func_1(var_0.b.b.x, select(1u, min(var_0.c.b.x, 1u), false)).b.a.b.x, func_1(_wgslsmith_f_op_f32(step(2411f, _wgslsmith_f_op_f32(-var_0.a.x))), 4294967295u).e), ~10251u, u_input.e);
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -571f)))), 1000f);
    let var_3 = countOneBits(~(-12128i));
    global1 = false & (any(var_0.c.c) | var_0.b.a.a.x);
    let var_4 = func_1(2009f, func_1(var_2, max(_wgslsmith_mod_u32(var_0.b.a.b.x, 42616u), _wgslsmith_add_u32(28753u, var_1.x))).e >> (abs(~(~var_1.x)) % 32u)).b;
    global0 = !var_0.b.a.c.wy;
    let var_5 = abs(var_0.b.c) & _wgslsmith_sub_vec4_i32(-_wgslsmith_clamp_vec4_i32(func_2(vec2<f32>(-1450f, var_0.b.b.x)).c, vec4<i32>(-1i, 20200i, 28251i, -31674i), -var_0.b.c), ~vec4<i32>(2147483647i, var_4.c.x, -28302i, var_4.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(~var_4.c, _wgslsmith_div_vec4_i32(vec4<i32>(var_4.c.x, 42834i, min(var_5.x, var_0.d), 2147483647i), func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(1654f, var_0.b.b.x) - vec2<f32>(282f, var_2))).c)), -firstLeadingBit(vec2<i32>(-var_3, countOneBits(0i))));
}

