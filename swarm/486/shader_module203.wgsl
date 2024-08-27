struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: i32,
    d: f32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<i32>, arg_1: i32, arg_2: Struct_1) -> bool {
    var var_0 = true;
    let var_1 = Struct_1(vec2<i32>(arg_2.a.x, 87599i ^ ((i32(-1i) * -6988i) ^ (arg_0.x << (874u % 32u)))), !(!(!(!vec2<bool>(arg_2.e.x, true)))), 0i, _wgslsmith_div_f32(arg_2.d, _wgslsmith_f_op_f32(arg_2.d + -1000f)), !(!arg_2.b));
    var var_2 = Struct_1(~min(_wgslsmith_mod_vec2_i32(arg_0.xx, vec2<i32>(var_1.a.x, 1i)) | select(vec2<i32>(7997i, arg_2.a.x), var_1.a, vec2<bool>(false, true)), countOneBits(vec2<i32>(u_input.b.x, var_1.a.x)) >> (min(vec2<u32>(29708u, 4294967295u), vec2<u32>(51309u, 1u)) % vec2<u32>(32u))), vec2<bool>(select(arg_2.e.x, arg_2.e.x || true, !(!arg_2.e.x)), all(vec2<bool>(!arg_2.e.x, select(var_1.e.x, arg_2.e.x, false)))), firstTrailingBit(~_wgslsmith_clamp_i32(arg_2.c, _wgslsmith_dot_vec4_i32(vec4<i32>(-30013i, -1i, arg_2.c, var_1.c), vec4<i32>(arg_2.c, arg_0.x, arg_2.a.x, 1i)), u_input.b.x)), 305f, var_1.e);
    let var_3 = -1i;
    var_2 = Struct_1(vec2<i32>(_wgslsmith_dot_vec4_i32(max(-vec4<i32>(var_2.a.x, arg_0.x, 21075i, -24088i), ~vec4<i32>(arg_1, var_1.a.x, 2147483647i, arg_2.c)), vec4<i32>(~arg_2.c, var_2.c, _wgslsmith_clamp_i32(-55858i, -1i, -25075i), 14022i)), -(~(2147483647i ^ var_2.c))), vec2<bool>(all(vec3<bool>(true, arg_2.b.x, true)), !all(vec4<bool>(true, true, true, true))), 36093i, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(1f, arg_2.d)), _wgslsmith_f_op_f32(var_1.d * -1079f), any(vec2<bool>(arg_2.b.x, true)))), vec2<bool>(!var_2.e.x, select(false, false, true)));
    return any(vec4<bool>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_1.c, u_input.a, u_input.a), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, var_3, arg_2.c, 1i), vec4<i32>(0i, 1i, 51544i, var_1.a.x))) != _wgslsmith_dot_vec4_i32(vec4<i32>(36882i, 2147483647i, 10648i, var_1.a.x), vec4<i32>(arg_1, 1i, arg_0.x, arg_0.x)), all(select(vec4<bool>(arg_2.b.x, true, arg_2.e.x, false), vec4<bool>(true, false, var_2.e.x, true), false)) || false, !arg_2.b.x, false));
}

fn func_2() -> i32 {
    let var_0 = Struct_1(vec2<i32>(u_input.b.x, u_input.a), !vec2<bool>(true, func_3(vec3<i32>(u_input.b.x, 1i, u_input.a), -31674i, Struct_1(u_input.b, vec2<bool>(true, false), u_input.a, -2214f, vec2<bool>(false, false)))), u_input.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1777f))) + -1667f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-409f + -518f) * 1721f)), vec2<bool>(_wgslsmith_clamp_i32(1i, 1i, _wgslsmith_clamp_i32(-1i, -34138i, u_input.b.x)) > -2147483647i, false));
    let var_1 = u_input.a;
    var var_2 = var_0.e.x;
    var var_3 = Struct_1(reverseBits(u_input.b), var_0.b, u_input.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(var_0.d, var_0.d)), _wgslsmith_f_op_f32(-var_0.d))), select(!select(!vec2<bool>(var_0.b.x, false), select(var_0.b, vec2<bool>(false, var_0.b.x), vec2<bool>(false, var_0.b.x)), vec2<bool>(true, true)), !vec2<bool>(var_0.e.x, any(vec3<bool>(var_0.e.x, var_0.e.x, true))), !vec2<bool>(var_0.e.x, var_0.b.x)));
    var var_4 = ~var_3.a.x;
    return u_input.a;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec4<u32>) -> vec4<f32> {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(trunc(-794f))));
    var var_2 = Struct_1(vec2<i32>(2147483647i, (_wgslsmith_sub_i32(1i, arg_1.a.x) | _wgslsmith_add_i32(-2147483647i, 1i)) >> (firstLeadingBit(14722u) % 32u)), !arg_1.e, select(1i, _wgslsmith_sub_i32(abs(arg_1.c), 1i) >> (~arg_2.x % 32u), true), arg_0, !select(select(arg_1.b, !vec2<bool>(var_0.b.x, true), !arg_1.b.x), vec2<bool>(var_0.e.x, true), false != all(vec2<bool>(true, var_0.b.x))));
    var var_3 = true;
    var_2 = arg_1;
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(-215f, _wgslsmith_f_op_f32(max(arg_0, 1076f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.d)) + -207f)), _wgslsmith_f_op_f32(step(-1201f, arg_1.d))));
}

fn func_5(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: bool) -> Struct_1 {
    let var_0 = 4294967295u;
    var var_1 = var_0;
    var var_2 = _wgslsmith_f_op_f32(-839f + arg_1.x);
    var var_3 = true;
    let var_4 = Struct_1(_wgslsmith_sub_vec2_i32(abs(firstTrailingBit(vec2<i32>(0i, u_input.b.x))), vec2<i32>(u_input.a, ~(-u_input.a))), !select(vec2<bool>(arg_2, arg_2), vec2<bool>(true, var_0 != arg_0.x), !all(vec2<bool>(true, arg_2))), -35674i, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - arg_1.x) - _wgslsmith_f_op_f32(-arg_1.x)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -120f)))))), select(vec2<bool>(!any(vec2<bool>(false, false)), !(arg_2 || false)), !vec2<bool>(all(vec3<bool>(true, arg_2, true)), true), true));
    return Struct_1(vec2<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(-2147483647i, u_input.a), var_4.a.x), firstTrailingBit(_wgslsmith_sub_i32(u_input.a, var_4.c))), var_4.b, u_input.b.x, _wgslsmith_f_op_f32(-arg_1.x), select(vec2<bool>((arg_2 && arg_2) && func_3(vec3<i32>(40400i, u_input.a, var_4.a.x), -1i, Struct_1(vec2<i32>(2147483647i, var_4.c), var_4.b, u_input.b.x, arg_1.x, vec2<bool>(arg_2, true))), _wgslsmith_f_op_f32(arg_1.x - arg_1.x) <= 139f), var_4.e, var_4.e));
}

fn func_1() -> u32 {
    var var_0 = func_5(vec3<u32>(1u, 1u, 1u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(372f * -559f))), Struct_1(~vec2<i32>(1i, u_input.a), vec2<bool>(true, true), func_2(), _wgslsmith_f_op_f32(754f - 1269f), vec2<bool>(true, true)), ~vec4<u32>(1u, 1u, 1u, 1u)))), any(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))));
    var var_1 = ~(~2147483647i);
    var_1 = _wgslsmith_dot_vec4_i32(select(~(~max(vec4<i32>(-2147483647i, -16695i, var_0.c, u_input.a), vec4<i32>(var_0.c, u_input.b.x, var_0.a.x, 26293i))), firstTrailingBit(select(-vec4<i32>(u_input.b.x, u_input.b.x, var_0.a.x, var_0.c), vec4<i32>(u_input.a, -26781i, -7649i, var_0.c) | vec4<i32>(u_input.b.x, u_input.b.x, -1i, u_input.a), select(vec4<bool>(var_0.b.x, false, false, false), vec4<bool>(var_0.e.x, true, true, var_0.e.x), vec4<bool>(true, var_0.b.x, false, false)))), _wgslsmith_f_op_f32(trunc(var_0.d)) > 1075f), _wgslsmith_mult_vec4_i32(vec4<i32>(max(1i, u_input.b.x), func_2(), reverseBits(var_0.a.x), -1561i), -_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, 28934i, var_0.c, 39831i), vec4<i32>(15274i, 0i, 0i, -2147483647i))) ^ firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(41359i, -36767i, u_input.b.x, u_input.b.x), ~vec4<i32>(u_input.b.x, var_0.c, u_input.b.x, u_input.a))));
    var var_2 = vec4<u32>(1u, 1u, 1u, 1u) & abs(vec4<u32>(~36742u, ~abs(1u), 4294967295u, firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(116986u, 51581u, 35208u), vec3<u32>(0u, 4294967295u, 4294967295u)))));
    let var_3 = Struct_1(vec2<i32>(~_wgslsmith_sub_i32(0i, 1i), ~(~1i)), vec2<bool>(all(var_0.e), !all(!vec4<bool>(var_0.e.x, true, var_0.e.x, true))), 1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.d, _wgslsmith_f_op_f32(-var_0.d))) + -1783f), !(!vec2<bool>(true, !var_0.e.x)));
    return _wgslsmith_dot_vec2_u32(vec2<u32>(max(~(~1u), 4294967295u), ~1822u), ~_wgslsmith_clamp_vec2_u32(var_2.xw, var_2.xy, _wgslsmith_clamp_vec2_u32(var_2.wx, abs(vec2<u32>(45177u, 49666u)), ~vec2<u32>(33263u, var_2.x))));
}

fn func_6(arg_0: u32) -> Struct_1 {
    var var_0 = _wgslsmith_add_vec3_i32(-vec3<i32>(-2147483647i, u_input.a, select(_wgslsmith_div_i32(7197i, u_input.a), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -3626i), vec2<i32>(-9936i, -4978i)), true)), vec3<i32>(1i, u_input.b.x, ~(-32749i)));
    let var_1 = vec3<bool>(false, true, true);
    let var_2 = _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(35540u, 11464u, 0u, arg_0), vec4<u32>(arg_0, arg_0, 4294967295u, arg_0)), ~vec4<u32>(1u, arg_0, arg_0, 0u) | vec4<u32>(arg_0, arg_0, arg_0, 10824u)), firstLeadingBit(vec4<u32>(~arg_0, arg_0, _wgslsmith_dot_vec3_u32(vec3<u32>(50965u, 0u, arg_0), vec3<u32>(arg_0, arg_0, arg_0)), abs(101166u)))), _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(min(vec4<u32>(arg_0, 47380u, 0u, arg_0), vec4<u32>(arg_0, arg_0, 1u, 4294967295u)), ~vec4<u32>(arg_0, arg_0, arg_0, 6989u)), ~vec4<u32>(arg_0, arg_0, arg_0, 1u), ~vec4<u32>(29311u, arg_0, 38435u, 8480u) << (~vec4<u32>(74525u, arg_0, arg_0, arg_0) % vec4<u32>(32u))) >> (vec4<u32>(1u, 4294967295u, 27626u, ~(arg_0 & 0u)) % vec4<u32>(32u)));
    let var_3 = func_5(_wgslsmith_mod_vec3_u32(var_2.wxz, var_2.xwz) << ((_wgslsmith_sub_vec3_u32(reverseBits(var_2.yyw), ~vec3<u32>(31471u, var_2.x, 32766u)) ^ ((var_2.wxy | vec3<u32>(0u, 6623u, arg_0)) >> (~var_2.zzz % vec3<u32>(32u)))) % vec3<u32>(32u)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) - _wgslsmith_f_op_f32(sign(833f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-218f)), _wgslsmith_f_op_f32(f32(-1f) * -292f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-940f + -1093f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(404f + 1271f) + _wgslsmith_f_op_f32(floor(804f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-862f, -1083f, 358f, 1487f) * vec4<f32>(-553f, -491f, 1442f, 1000f)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-834f, -673f, -1052f, -1179f)))))), var_1.x);
    var_0 = _wgslsmith_div_vec3_i32(~((vec3<i32>(-1i) * -vec3<i32>(-2147483647i, -27297i, -1i)) | abs(vec3<i32>(2147483647i, u_input.b.x, -19416i) & vec3<i32>(u_input.b.x, 33579i, -14949i))), select(vec3<i32>(31568i, u_input.b.x | u_input.b.x, _wgslsmith_clamp_i32(2147483647i, var_0.x, 0i)), _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, var_3.c, 0i), vec3<i32>(var_3.a.x, var_3.a.x, 2147483647i)), -vec3<i32>(-2147483647i, -1i, u_input.b.x)), var_2.x > (arg_0 & arg_0)) ^ (_wgslsmith_mod_vec3_i32(~vec3<i32>(-13820i, 13991i, 48772i), vec3<i32>(-1i, 1i, 671i)) | vec3<i32>(countOneBits(-18939i), _wgslsmith_mult_i32(var_3.c, 2147483647i), reverseBits(20289i))));
    return Struct_1(var_0.zy, var_1.xz, -firstTrailingBit(-32954i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.d, -537f)), _wgslsmith_f_op_f32(step(var_3.d, 1163f))), var_1.xx);
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec4<u32> {
    let var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(-_wgslsmith_add_i32(u_input.b.x, arg_3.a.x), select(1i, _wgslsmith_div_i32(2147483647i, arg_1.c), any(vec4<bool>(true, true, arg_1.e.x, true))), -2147483647i, ~6752i), ~(-vec4<i32>(_wgslsmith_add_i32(112208i, arg_1.a.x), -1i, -arg_3.c, _wgslsmith_sub_i32(-1i, arg_2.a.x))));
    var var_1 = Struct_1(arg_0.a, vec2<bool>(arg_2.b.x, !((arg_0.c | 1i) <= 1i)), abs(i32(-1i) * -1i) ^ _wgslsmith_add_i32(_wgslsmith_add_i32(_wgslsmith_sub_i32(22528i, var_0.x), ~arg_2.a.x), countOneBits(_wgslsmith_dot_vec2_i32(var_0.yz, vec2<i32>(arg_3.c, arg_2.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + arg_0.d) - arg_0.d), select(arg_0.b, !(!func_5(vec3<u32>(28047u, 29504u, 21675u), vec4<f32>(arg_3.d, -492f, arg_0.d, -1839f), false).e), arg_0.e.x));
    var_1 = func_5(vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, 80194u, 1u, 1u), firstLeadingBit(vec4<u32>(26717u, 3204u, 0u, 0u))), vec4<u32>(88960u, abs(31119u), _wgslsmith_clamp_u32(0u, 4294967295u, 49874u), ~1u)), ~1u, 1u), vec4<f32>(var_1.d, 2887f, -503f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(126f))) * _wgslsmith_f_op_f32(sign(arg_0.d)))), select(!var_1.b.x, arg_1.e.x || (arg_3.b.x || false), arg_1.e.x));
    var var_2 = -(vec2<i32>(-1i) * -var_0.xz);
    var var_3 = _wgslsmith_add_vec3_i32(vec3<i32>(var_1.a.x, var_2.x, u_input.a), vec3<i32>(abs(-arg_0.a.x) ^ (firstTrailingBit(u_input.b.x) ^ var_0.x), -28558i, _wgslsmith_sub_i32(~max(arg_1.c, -38012i), arg_3.c)));
    return vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u) >> (select(~vec2<u32>(0u, 0u), ~vec2<u32>(69673u, 47572u), var_1.e) % vec2<u32>(32u)), vec2<u32>(0u, ~1u)), 1u | ((11857u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 64295u, 41959u, 0u), vec4<u32>(17971u, 41616u, 1u, 1u)) % 32u)) >> (_wgslsmith_clamp_u32(1u, func_1(), 4294967295u) % 32u)), 102877u, abs(~(select(29586u, 66970u, var_1.b.x) << (_wgslsmith_add_u32(1u, 30354u) % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(~_wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, 60431u, 0u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), min(countOneBits(firstTrailingBit(vec4<u32>(4294967295u, 30131u, 0u, 2078u))), reverseBits(vec4<u32>(1u, 1u, 1u, 1u)))) & func_7(func_6(func_1()), Struct_1(~(u_input.b & vec2<i32>(u_input.b.x, u_input.a)), vec2<bool>(false, any(vec4<bool>(false, true, true, false))), _wgslsmith_clamp_i32(func_5(vec3<u32>(18273u, 0u, 0u), vec4<f32>(-1095f, 685f, 345f, 143f), false).c, -u_input.a, 0i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(629f + 1707f)), vec2<bool>(true, true)), Struct_1(~(vec2<i32>(1i, 32204i) & u_input.b), vec2<bool>(true, u_input.b.x == 42328i), -(i32(-1i) * -21020i), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-276f, 1023f)))), vec2<bool>(true, true)), Struct_1(u_input.b, vec2<bool>(true, true), 1i, _wgslsmith_f_op_f32(-651f * -986f), func_5(min(vec3<u32>(0u, 4294967295u, 38435u), vec3<u32>(5992u, 0u, 0u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1468f, -2244f, -136f, 1578f)), any(vec2<bool>(true, true))).b));
    let var_1 = Struct_1(vec2<i32>(-1i) * -min(u_input.b << (var_0.zy % vec2<u32>(32u)), u_input.b), select(vec2<bool>(true, true), vec2<bool>(true, true), true), max(firstLeadingBit(~_wgslsmith_sub_i32(u_input.a, u_input.a)), u_input.b.x), -1038f, vec2<bool>(func_3(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.b.x, -8827i), vec3<i32>(-1i, 68994i, -6083i)) & abs(vec3<i32>(u_input.a, u_input.a, -2147483647i)), -u_input.a, func_6(countOneBits(var_0.x))), !(!func_6(50724u).b.x)));
    var var_2 = ~(var_0.xx >> (~max(var_0.ww, ~var_0.ww) % vec2<u32>(32u)));
    var var_3 = reverseBits(-u_input.b);
    let var_4 = ~var_2.x;
    var_3 = func_5(vec3<u32>(4294967295u, 1u & var_0.x, var_4), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.d, var_1.d)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.d + var_1.d), 173f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(var_1.d)))), 1f), select(false, true, var_1.b.x)).a;
    var_3 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(firstLeadingBit(vec3<u32>(5217u, var_0.x, var_0.x)) & var_0.xxx) << ((vec3<u32>(~6559u, ~4294967295u, var_2.x) | _wgslsmith_add_vec3_u32(var_0.www << (vec3<u32>(var_4, 11655u, var_4) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(32949u, 4294967295u, 4294967295u), var_0.www))) % vec3<u32>(32u)), 496f, _wgslsmith_f_op_f32(max(204f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.d - var_1.d), _wgslsmith_f_op_f32(-var_1.d))))))), _wgslsmith_mult_u32(87793u, 1u), vec4<i32>(func_2(), _wgslsmith_clamp_i32(max(_wgslsmith_mod_i32(0i, 4373i), -u_input.a), u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.b.x, var_3.x, 36574i), vec4<i32>(1i, -67434i, var_3.x, 10397i))), ~var_1.c, var_1.c));
}

