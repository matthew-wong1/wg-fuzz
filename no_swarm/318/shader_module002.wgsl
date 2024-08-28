struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_2,
    d: vec3<bool>,
    e: u32,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    let var_0 = u_input.a.x;
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1666f)), -1362f);
    let var_2 = Struct_3(var_1, true, Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1119f, var_1, var_1)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, 1199f, 112f) - vec3<f32>(var_1, -1680f, var_1)))), _wgslsmith_sub_i32(_wgslsmith_div_i32(~u_input.a.x, countOneBits(-2147483647i)), -1i), Struct_1(_wgslsmith_add_vec4_i32(-vec4<i32>(var_0, -17349i, var_0, var_0), u_input.a), vec3<f32>(_wgslsmith_f_op_f32(abs(145f)), _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(1258f * -388f)))), vec3<bool>(true, true, true), 3593u);
    var var_3 = -vec4<i32>(u_input.a.x, firstTrailingBit(var_0), _wgslsmith_div_i32(_wgslsmith_div_i32(~var_0, -u_input.a.x), _wgslsmith_add_i32(abs(2147483647i), var_2.c.c.a.x)), var_0);
    var_3 = ~u_input.a;
    return all(select(!(!(!vec4<bool>(false, var_2.d.x, var_2.b, var_2.b))), !(!vec4<bool>(false, var_2.b, var_2.b, true)), true));
}

fn func_2(arg_0: i32) -> vec3<bool> {
    var var_0 = 1000f;
    let var_1 = u_input.a.yxz;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-412f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(216f, -219f, true))))));
    var var_2 = vec4<u32>(1u, ~20487u, _wgslsmith_add_u32(_wgslsmith_clamp_u32(0u, 1u, 93766u), ~_wgslsmith_clamp_u32(~20638u, 4294967295u, 1u)), _wgslsmith_add_u32(countOneBits(73235u), 67538u));
    var var_3 = any(vec4<bool>(!(any(vec3<bool>(false, false, true)) | func_3()), any(vec3<bool>(true, false, false)), true & any(vec4<bool>(true, true, true, true)), (func_3() && true) || all(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true))));
    return !vec3<bool>(firstLeadingBit(54139u) != var_2.x, true, true);
}

fn func_1(arg_0: vec4<f32>) -> bool {
    let var_0 = select(select(!func_2(u_input.a.x ^ u_input.a.x), !vec3<bool>(2147483647i <= u_input.a.x, true, all(vec2<bool>(true, false))), !(1u != _wgslsmith_clamp_u32(1u, 0u, 113000u))), vec3<bool>(any(vec4<bool>(true, true, true, true)), all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true)), true)), false), !(true || (1u == _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 86771u), vec2<u32>(29089u, 121912u)))));
    let var_1 = vec2<u32>(1u, 0u) & select(vec2<u32>(1u, 1u), _wgslsmith_clamp_vec2_u32(~vec2<u32>(4294967295u, 30694u), vec2<u32>(~1u, _wgslsmith_mod_u32(3044u, 16102u)), vec2<u32>(1u, 1u)), var_0.x);
    let var_2 = Struct_1(-vec4<i32>(min(i32(-1i) * -22005i, u_input.a.x | u_input.a.x), 2147483647i, firstLeadingBit(firstTrailingBit(0i)), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 2147483647i) >> (vec2<u32>(0u, var_1.x) % vec2<u32>(32u)), -u_input.a.wx)), _wgslsmith_f_op_vec3_f32(-arg_0.xzw));
    var var_3 = func_3() && var_0.x;
    let var_4 = select(select(func_2(countOneBits(u_input.a.x << (var_1.x % 32u))), !var_0, u_input.a.x >= abs(i32(-1i) * -2147483647i)), !select(var_0, !select(vec3<bool>(var_0.x, true, var_0.x), var_0, var_0), var_0), true || any(!func_2(var_2.a.x).yz));
    return var_0.x & (_wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(var_1.x, 1u), 56210u), ~var_1.x) == var_1.x);
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: vec4<bool>) -> vec4<i32> {
    var var_0 = true;
    var_0 = arg_1.b;
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(arg_1.c.a)) * arg_1.c.c.b))), vec3<f32>(429f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-239f))), _wgslsmith_f_op_f32(-1039f - arg_1.c.c.b.x)), arg_2.wzy)), _wgslsmith_f_op_vec3_f32(-arg_1.c.c.b));
    var var_2 = arg_1.c.c.a.x;
    var var_3 = max(vec2<u32>(abs(arg_1.e), reverseBits(85474u & _wgslsmith_sub_u32(arg_1.e, arg_1.e))), ~_wgslsmith_sub_vec2_u32(vec2<u32>(~4294967295u, ~arg_1.e), firstLeadingBit(max(vec2<u32>(arg_1.e, arg_1.e), vec2<u32>(39641u, arg_1.e)))));
    return select(~((-u_input.a >> (vec4<u32>(31906u, arg_1.e, 0u, var_3.x) % vec4<u32>(32u))) << (~select(vec4<u32>(76660u, var_3.x, var_3.x, 11233u), vec4<u32>(0u, arg_1.e, var_3.x, 4294967295u), false) % vec4<u32>(32u))), abs(~_wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.c.c.a.x, u_input.a.x, u_input.a.x, 0i), vec4<i32>(-2147483647i, arg_1.c.b, 22933i, -1i) << (vec4<u32>(var_3.x, var_3.x, arg_1.e, var_3.x) % vec4<u32>(32u)))), !arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(all(vec2<bool>(u_input.a.x < u_input.a.x, func_1(vec4<f32>(235f, -505f, 288f, 757f)))), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-665f))), all(vec3<bool>(true, true, true)), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1548f, 901f, 709f)), firstTrailingBit(1i), Struct_1(vec4<i32>(-17032i, 2147483647i, u_input.a.x, 16220i), vec3<f32>(-586f, -1823f, 1135f))), vec3<bool>(true, true, true), ~_wgslsmith_div_u32(1u, 59566u)), vec4<bool>(!all(vec3<bool>(false, true, false)), !any(vec2<bool>(false, true)), true, any(vec3<bool>(false, false, false)))) | ((u_input.a & ((vec4<i32>(0i, -49981i, u_input.a.x, -2147483647i) & vec4<i32>(1i, 2147483647i, u_input.a.x, -36717i)) ^ abs(vec4<i32>(-2147483647i, u_input.a.x, 2147483647i, u_input.a.x)))) ^ func_4(true, Struct_3(_wgslsmith_f_op_f32(1277f - -289f), false, Struct_2(vec3<f32>(-129f, -489f, 298f), u_input.a.x, Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, 42i, u_input.a.x), vec3<f32>(798f, 172f, -1727f))), vec3<bool>(true, true, true), min(0u, 4294967295u)), select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(826f, -1567f) * _wgslsmith_f_op_f32(f32(-1f) * -1819f))))), true, Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1636f, -307f))), -676f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -263f), _wgslsmith_f_op_f32(1890f - -312f))), u_input.a.x, Struct_1(abs(u_input.a), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(113f, -1140f, -479f))))), !(!func_2(firstLeadingBit(u_input.a.x))), firstTrailingBit(_wgslsmith_mult_u32(~4294967295u, 1u)) ^ _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 0u), vec2<u32>(_wgslsmith_add_u32(1u, 58524u), select(3859u, 4294967295u, false))));
    let var_2 = Struct_1(_wgslsmith_sub_vec4_i32(u_input.a, func_4(func_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.a, -439f, -416f, -1689f)))), Struct_3(_wgslsmith_f_op_f32(trunc(var_1.a)), all(vec4<bool>(var_1.b, true, true, var_1.d.x)), var_1.c, select(var_1.d, var_1.d, var_1.b), 1u), select(vec4<bool>(var_1.d.x, var_1.b, false, var_1.d.x), vec4<bool>(var_1.d.x, true, false, var_1.d.x), var_1.b))), _wgslsmith_f_op_vec3_f32(vec3<f32>(2184f, 1453f, 511f) - var_1.c.c.b));
    var_0 = u_input.a;
    let var_3 = ~2147483647i;
    var_0 = -var_2.a;
    let var_4 = Struct_3(_wgslsmith_f_op_f32(sign(var_1.a)), (var_2.a.x != var_2.a.x) | true, Struct_2(_wgslsmith_f_op_vec3_f32(floor(var_2.b)), -2147483647i, Struct_1(vec4<i32>(_wgslsmith_clamp_i32(23618i, var_2.a.x, -2920i), ~var_3, var_3, max(17283i, 34458i)), _wgslsmith_div_vec3_f32(var_1.c.a, var_1.c.c.b))), var_1.d, (106580u << (var_1.e % 32u)) ^ 15370u);
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u, i32(-1i) * -15216i, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1005f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.a * _wgslsmith_div_f32(-877f, 1628f))))));
}

