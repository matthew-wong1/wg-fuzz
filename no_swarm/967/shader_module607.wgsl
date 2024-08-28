struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: vec4<bool>,
    d: vec3<i32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
    c: i32,
    d: bool,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec2<bool> {
    var var_0 = -689f;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-401f))) + _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(275f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-690f, 572f)))), -445f));
    var_0 = -218f;
    let var_1 = Struct_4(vec2<u32>(0u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.d), vec2<u32>(35023u, u_input.c) << (vec2<u32>(1u, u_input.d) % vec2<u32>(32u)))), Struct_3(vec2<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), true)), all(vec4<bool>(true, true, true, true))), Struct_2(Struct_1(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.c, u_input.d, 851u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, u_input.d)), _wgslsmith_sub_vec4_i32(u_input.b, u_input.b), u_input.d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(331f, -147f))), min(~34167u, 1u), all(vec3<bool>(true, true, true)) & true, Struct_1(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false), ~u_input.d, abs(u_input.b), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 6479u, u_input.c), vec3<u32>(u_input.d, u_input.d, u_input.d)), _wgslsmith_div_vec2_f32(vec2<f32>(310f, -1000f), vec2<f32>(1180f, -224f))), reverseBits(u_input.d)), vec4<bool>(!any(vec4<bool>(false, false, false, true)), true, true, false), u_input.b.ywy), u_input.b.x, u_input.d >= abs(76551u), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(892f, _wgslsmith_f_op_f32(-371f + -290f))))));
    let var_2 = var_1.e.x;
    return vec2<bool>(!all(vec4<bool>(true, var_1.d, all(var_1.b.c.zw), any(var_1.b.b.a.a))), true);
}

fn func_4(arg_0: Struct_3, arg_1: u32) -> vec2<u32> {
    let var_0 = arg_0;
    var var_1 = Struct_4(vec2<u32>(~51166u, firstTrailingBit(abs(~4294967295u))), Struct_3(!arg_0.a, arg_0.b, arg_0.c, vec3<i32>(21662i, _wgslsmith_div_i32(_wgslsmith_div_i32(2147483647i, 14735i), ~var_0.d.x), min(u_input.b.x, var_0.d.x) & 1i)), select(var_0.d.x, arg_0.d.x, false), true, var_0.b.d.e);
    var var_2 = var_1.b.d.x;
    var var_3 = Struct_4(_wgslsmith_sub_vec2_u32(countOneBits(var_1.a), var_1.a) << (select(~(~vec2<u32>(4294967295u, 4294967295u)), countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 0u), var_1.a)), !(!arg_0.b.d.a.yx)) % vec2<u32>(32u)), Struct_3(func_3(), Struct_2(Struct_1(var_0.c.wzx, ~var_1.b.b.a.d, reverseBits(var_1.b.b.d.c), 0u & var_0.b.d.b, vec2<f32>(var_0.b.a.e.x, -339f)), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.x, arg_0.b.d.b), var_1.a), 0u), true, Struct_1(var_0.c.wzx, 4294967295u, arg_0.b.d.c, ~arg_1, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.e.x, var_1.b.b.d.e.x))), 4294967295u << (arg_1 % 32u)), var_1.b.c, _wgslsmith_div_vec3_i32(-vec3<i32>(var_1.b.d.x, var_1.b.d.x, -52168i) & var_1.b.d, -vec3<i32>(52235i, u_input.a, 19359i))), -firstLeadingBit(~1i), all(arg_0.c.zww), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.b.a.e.x, _wgslsmith_div_f32(-515f, var_0.b.d.e.x))), _wgslsmith_f_op_vec2_f32(sign(arg_0.b.a.e)), true)));
    let var_4 = Struct_1(vec3<bool>(true, func_3().x, all(!var_0.c.zy) | (reverseBits(var_1.c) > 0i)), ~1u << ((u_input.d | min(countOneBits(45128u), var_0.b.a.b << (var_1.b.b.a.b % 32u))) % 32u), -vec4<i32>(-290i, firstLeadingBit(1i), 2147483647i, abs(-86390i)) | -vec4<i32>(2147483647i, var_1.b.d.x, 1i, _wgslsmith_mult_i32(var_3.c, var_0.b.a.c.x)), select(_wgslsmith_mult_u32(~var_3.a.x, 41407u), 23723u, _wgslsmith_div_f32(var_1.e.x, -252f) <= _wgslsmith_f_op_f32(var_0.b.d.e.x + _wgslsmith_div_f32(arg_0.b.a.e.x, var_0.b.d.e.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(861f, -308f)));
    return min(var_3.a, _wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(~var_3.b.b.d.d, var_0.b.d.b)), ~var_3.a));
}

fn func_2(arg_0: f32) -> f32 {
    let var_0 = Struct_4(func_4(Struct_3(func_3(), Struct_2(Struct_1(vec3<bool>(true, false, true), u_input.d, u_input.b, u_input.c, vec2<f32>(arg_0, -122f)), ~12106u, false, Struct_1(vec3<bool>(false, false, true), u_input.c, vec4<i32>(3511i, u_input.b.x, u_input.b.x, 1i), 1u, vec2<f32>(-935f, arg_0)), ~4294967295u), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true), ~vec3<i32>(u_input.a, 14324i, u_input.b.x)), u_input.d), Struct_3(vec2<bool>(!all(vec2<bool>(false, true)), true), Struct_2(Struct_1(vec3<bool>(true, true, true), u_input.c, -vec4<i32>(u_input.b.x, u_input.b.x, u_input.a, -14551i), 4294967295u << (u_input.d % 32u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-888f, arg_0))), u_input.c, all(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, true, false), ~72298u, u_input.b, ~48002u, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0, -1483f), vec2<f32>(168f, -479f), vec2<bool>(true, true)))), 59328u), !select(vec4<bool>(true, true, true, false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), false), true), vec3<i32>(countOneBits(u_input.a), -u_input.b.x, abs(18153i))), i32(-1i) * -22222i, func_3().x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -267f)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-342f, arg_0))))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0, arg_0), vec2<f32>(-2812f, -424f), vec2<bool>(true, false)))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-249f, 718f), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.b.b.a.e.x, 443f))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.e.x, var_0.e.x)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.b.b.d.e.x, 1200f), vec2<f32>(var_0.e.x, arg_0)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-190f, var_0.e.x))), vec2<bool>(var_0.b.b.a.a.x, false))), (var_0.b.b.d.a.x && false) | select(var_0.b.b.d.a.x, var_0.b.b.d.a.x, var_0.d))), var_0.b.b.d.a.x)));
    let var_2 = var_0.b.b.a;
    let var_3 = var_1.x;
    var var_4 = var_0.b.b;
    return var_0.b.b.d.e.x;
}

fn func_1() -> f32 {
    let var_0 = false == (!any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true)) | any(vec4<bool>(true, true, true, select(true, true, true))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -644f) - 581f) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(-1612f)), _wgslsmith_f_op_f32(f32(-1f) * -2800f))))), -424f, 1572f, _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-554f)) + _wgslsmith_f_op_f32(max(-993f, -1006f))), -254f))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(var_1.x + 148f), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(floor(var_1.x)), _wgslsmith_f_op_f32(-982f - -2438f)), vec4<f32>(_wgslsmith_f_op_f32(-112f * var_1.x), _wgslsmith_f_op_f32(sign(var_1.x)), _wgslsmith_f_op_f32(-282f + var_1.x), var_1.x), !vec4<bool>(var_0, var_0, var_0, var_0)))));
    var_1 = vec4<f32>(-762f, _wgslsmith_f_op_f32(select(-1000f, -2345f, !any(vec2<bool>(true, true)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * 154f)), var_1.x), 750f);
    var var_2 = ~u_input.b.zzw;
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2305f * var_1.x)))) - 1000f), -1000f, var_0));
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: Struct_4, arg_3: vec4<bool>) -> Struct_3 {
    var var_0 = vec2<u32>(~u_input.d, abs(33047u));
    let var_1 = arg_2.b.b.d.e.x;
    var var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1347f, var_1, arg_0)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1, -122f, 113f)))))))));
    var var_3 = !(!all(arg_2.b.b.d.a.yx)) || !any(vec3<bool>(true, true, arg_3.x | arg_3.x));
    var var_4 = var_0.x ^ ~abs(0u);
    return Struct_3(arg_3.zz, Struct_2(Struct_1(vec3<bool>(arg_3.x, func_3().x, !arg_1), countOneBits(firstTrailingBit(u_input.d)), ~(arg_2.b.b.d.c | u_input.b), ~_wgslsmith_clamp_u32(104196u, u_input.c, 0u), vec2<f32>(_wgslsmith_f_op_f32(-1000f - var_1), -1448f)), 4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-145f)) - 282f) != var_1, arg_2.b.b.d, arg_2.b.b.e), !(!arg_3), -vec3<i32>(arg_2.c, 30324i, _wgslsmith_dot_vec2_i32(u_input.b.yx, max(vec2<i32>(-22067i, arg_2.c), u_input.b.ww))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = func_5(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(step(1f, 1f)), var_0)), min(_wgslsmith_mult_u32(firstTrailingBit(u_input.c), ~4294967295u), ~36776u) <= u_input.d, Struct_4(firstLeadingBit(max(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, u_input.d), vec2<u32>(1542u, 4294967295u)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d, 2138u), vec2<u32>(48288u, 24600u)))), Struct_3(vec2<bool>(select(var_0, var_0, var_0), !var_0), Struct_2(Struct_1(vec3<bool>(true, var_0, true), u_input.c, u_input.b, u_input.d, vec2<f32>(1468f, -1538f)), 4294967295u, true, Struct_1(vec3<bool>(false, false, true), u_input.c, vec4<i32>(u_input.b.x, u_input.a, 0i, u_input.a), u_input.c, vec2<f32>(890f, 922f)), u_input.d), select(!vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(var_0, var_0, true, false), select(vec4<bool>(var_0, var_0, true, false), vec4<bool>(var_0, var_0, false, false), var_0)), abs(_wgslsmith_div_vec3_i32(u_input.b.wxx, u_input.b.yzz))), min(select(u_input.a | u_input.a, ~u_input.b.x, var_0), u_input.a), (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c, 68879u, 114987u), vec4<u32>(70228u, u_input.c, u_input.d, 47918u)) & u_input.c) == _wgslsmith_add_u32(26075u >> (u_input.c % 32u), ~u_input.d), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(-437f, -352f), vec2<f32>(1535f, -1369f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-379f, 433f) - vec2<f32>(675f, 1001f)) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(662f, -397f)))))), vec4<bool>(var_0, var_0, var_0 & all(vec4<bool>(true, var_0, var_0, false)), countOneBits(_wgslsmith_mult_u32(u_input.c, 4834u)) <= abs(3012u)));
    var var_2 = any(func_5(var_1.b.a.e.x, select(false, func_5(-1264f, false, Struct_4(vec2<u32>(4544u, 1u), Struct_3(var_1.b.a.a.yy, var_1.b, vec4<bool>(var_1.a.x, var_0, false, var_0), var_1.d), -35390i, var_0, var_1.b.d.e), vec4<bool>(var_1.b.c, false, true, var_0)).b.d.b == _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 12239u, 0u), vec3<u32>(var_1.b.a.d, 1u, u_input.d)), !(var_1.b.c == true)), Struct_4(select(vec2<u32>(var_1.b.d.b, 0u), vec2<u32>(u_input.d, 1u), vec2<bool>(var_1.c.x, false)) ^ ~vec2<u32>(var_1.b.d.b, 40077u), func_5(_wgslsmith_f_op_f32(-var_1.b.a.e.x), any(vec4<bool>(var_0, var_0, true, false)), Struct_4(vec2<u32>(var_1.b.a.d, 16839u), Struct_3(vec2<bool>(var_1.b.a.a.x, var_1.b.c), Struct_2(Struct_1(vec3<bool>(false, true, false), 1u, vec4<i32>(var_1.d.x, u_input.a, u_input.a, -1i), u_input.d, vec2<f32>(1471f, 782f)), 57096u, false, var_1.b.d, u_input.d), var_1.c, u_input.b.zyy), 1i, true, vec2<f32>(var_1.b.d.e.x, var_1.b.a.e.x)), !vec4<bool>(false, var_0, false, var_0)), countOneBits(-2723i), false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b.a.e.x, -1589f) - var_1.b.a.e))), var_1.c).c.zw);
    var_1 = Struct_3(var_1.b.d.a.xy, var_1.b, select(vec4<bool>(all(select(var_1.c, var_1.c, vec4<bool>(true, false, false, false))), !(!var_0), _wgslsmith_f_op_f32(step(var_1.b.a.e.x, -775f)) > func_5(-1094f, false, Struct_4(vec2<u32>(u_input.c, 20607u), Struct_3(vec2<bool>(var_0, var_1.b.d.a.x), var_1.b, var_1.c, vec3<i32>(1i, u_input.b.x, 62829i)), -1i, var_1.b.a.a.x, var_1.b.d.e), var_1.c).b.a.e.x, true), vec4<bool>(false & !var_1.c.x, _wgslsmith_f_op_f32(select(1636f, var_1.b.d.e.x, true)) <= func_5(-1105f, var_0, Struct_4(vec2<u32>(u_input.d, 6419u), Struct_3(var_1.a, var_1.b, vec4<bool>(false, var_0, var_1.a.x, false), vec3<i32>(u_input.b.x, var_1.d.x, u_input.a)), var_1.b.d.c.x, var_0, var_1.b.d.e), var_1.c).b.d.e.x, !(var_0 != var_0), var_0), var_1.c), var_1.d);
    let var_3 = min((u_input.b.x ^ -2147483647i) | _wgslsmith_mult_i32(abs(max(var_1.d.x, var_1.d.x)), var_1.b.d.c.x), -1i);
    var_1 = func_5(-565f, all(!func_5(var_1.b.a.e.x, false, Struct_4(vec2<u32>(2488u, var_1.b.e), Struct_3(var_1.a, Struct_2(var_1.b.d, var_1.b.a.d, var_1.b.d.a.x, var_1.b.d, u_input.d), vec4<bool>(var_1.a.x, var_0, true, var_0), vec3<i32>(u_input.a, 0i, var_1.d.x)), var_3, false, var_1.b.d.e), vec4<bool>(false, var_0, var_1.b.d.a.x, false)).c) & (44531u <= func_5(var_1.b.a.e.x, all(var_1.c.ww), Struct_4(vec2<u32>(19830u, 53949u), Struct_3(vec2<bool>(true, var_0), var_1.b, vec4<bool>(var_1.c.x, var_0, true, var_1.b.d.a.x), vec3<i32>(1i, -63266i, 12507i)), u_input.b.x, true, var_1.b.d.e), !var_1.c).b.d.d), Struct_4(vec2<u32>(~(u_input.d & 29389u), _wgslsmith_sub_u32(~6121u, ~15359u)), Struct_3(vec2<bool>(var_1.a.x, false), Struct_2(Struct_1(vec3<bool>(var_1.b.c, var_0, var_0), 0u, vec4<i32>(u_input.b.x, u_input.a, -27970i, 2147483647i), 19489u, vec2<f32>(var_1.b.d.e.x, var_1.b.a.e.x)), 1u, func_5(395f, var_1.c.x, Struct_4(vec2<u32>(1u, 1u), Struct_3(var_1.c.wx, var_1.b, var_1.c, u_input.b.xwz), 0i, var_1.c.x, vec2<f32>(var_1.b.d.e.x, var_1.b.d.e.x)), vec4<bool>(true, var_0, var_0, var_0)).c.x, func_5(var_1.b.a.e.x, false, Struct_4(vec2<u32>(40154u, var_1.b.e), Struct_3(vec2<bool>(var_1.b.a.a.x, true), Struct_2(Struct_1(var_1.b.d.a, var_1.b.b, vec4<i32>(52922i, 12595i, u_input.a, var_3), var_1.b.d.d, var_1.b.a.e), 0u, var_1.c.x, var_1.b.d, 1u), vec4<bool>(var_0, false, var_1.a.x, var_1.c.x), var_1.d), -4690i, var_1.c.x, var_1.b.a.e), vec4<bool>(true, var_0, true, var_1.b.a.a.x)).b.a, ~79459u), var_1.c, vec3<i32>(~4707i, ~u_input.b.x, var_1.b.a.c.x)), u_input.a, !(var_1.b.c && var_1.c.x), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.a.e.x) + _wgslsmith_f_op_f32(-1282f * -1131f)), var_1.b.a.e.x)), select(select(!(!vec4<bool>(true, false, var_1.b.c, var_1.c.x)), !select(var_1.c, var_1.c, var_1.c), var_0), !func_5(_wgslsmith_f_op_f32(min(var_1.b.d.e.x, 2092f)), var_1.d.x > var_3, Struct_4(vec2<u32>(u_input.d, u_input.c), Struct_3(var_1.b.a.a.yz, var_1.b, var_1.c, vec3<i32>(u_input.b.x, var_3, var_3)), u_input.a, true, var_1.b.a.e), !var_1.c).c, all(!vec3<bool>(false, true, var_1.c.x))));
    var_2 = var_1.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(max(var_1.b.b, 46880u), _wgslsmith_f_op_vec2_f32(min(var_1.b.a.e, var_1.b.d.e)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.a.e.x, 518f)));
}

