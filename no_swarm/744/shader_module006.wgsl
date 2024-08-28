struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<i32>,
    d: vec4<u32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<bool>,
    c: f32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec4<u32> {
    let var_0 = ~min(~u_input.b, _wgslsmith_dot_vec2_u32(~select(u_input.d, vec2<u32>(0u, 4294967295u), false), ~vec2<u32>(29094u, u_input.d.x) & _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 4294967295u), u_input.d)));
    let var_1 = -_wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.a.x, -30368i) | -80683i, -2147483647i);
    var var_2 = !vec4<bool>(!any(vec4<bool>(false, false, false, false)), any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false))) && all(vec3<bool>(true, true, true)), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), 34589i < u_input.c.x)), all(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), false)) || any(vec2<bool>(true, true)));
    var_2 = select(select(select(select(vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<bool>(true, true, var_2.x, var_2.x), !vec4<bool>(true, false, var_2.x, true)), !(!vec4<bool>(true, true, var_2.x, var_2.x)), any(select(vec4<bool>(var_2.x, var_2.x, false, var_2.x), vec4<bool>(false, false, false, var_2.x), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x)))), vec4<bool>(true, var_2.x, true, all(!vec4<bool>(false, var_2.x, var_2.x, true))), !select(vec4<bool>(false, var_2.x, var_2.x, var_2.x), !vec4<bool>(false, true, var_2.x, false), !var_2.x)), vec4<bool>(all(var_2.wzw), all(var_2.zw), (_wgslsmith_sub_u32(48041u, var_0) << (u_input.b % 32u)) == (63524u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(var_0, 389u, var_0), vec3<u32>(u_input.b, 102569u, u_input.b))), !(!any(vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x)))), vec4<bool>(true, var_2.x, any(!vec4<bool>(var_2.x, true, var_2.x, true)), select(false, all(select(vec2<bool>(true, var_2.x), var_2.zz, true)), var_2.x)));
    let var_3 = var_0;
    return _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(~abs(vec4<u32>(13273u, 44761u, u_input.d.x, 34402u)), abs(vec4<u32>(0u, 58358u, 1438u, var_3)) & _wgslsmith_mod_vec4_u32(vec4<u32>(var_0, u_input.d.x, u_input.b, var_0), vec4<u32>(u_input.b, 32757u, var_0, 4294967295u))) | (vec4<u32>(max(2253u, 4294967295u), 0u, var_0 & 16898u, var_3) | _wgslsmith_sub_vec4_u32(~vec4<u32>(var_0, var_0, 0u, u_input.b), _wgslsmith_div_vec4_u32(vec4<u32>(var_0, var_0, 0u, 4294967295u), vec4<u32>(408u, var_0, u_input.d.x, u_input.b)))), _wgslsmith_div_vec4_u32(~abs(vec4<u32>(var_0, 40595u, var_3, 4294967295u) & vec4<u32>(var_3, 4294967295u, var_3, var_3)), abs(vec4<u32>(var_0, u_input.d.x, 18058u, var_0) >> (firstLeadingBit(vec4<u32>(69157u, 78653u, u_input.d.x, u_input.d.x)) % vec4<u32>(32u)))));
}

fn func_2(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_1, arg_3: vec3<u32>) -> i32 {
    var var_0 = all(!select(vec3<bool>(true, !arg_2.b, !arg_0.x), vec3<bool>(arg_0.x || false, !arg_2.b, !arg_0.x), vec3<bool>(any(arg_0), arg_0.x, arg_2.b)));
    var var_1 = Struct_4(-arg_2.c.zz, Struct_2(Struct_1(arg_2.a, any(!arg_0), u_input.c, func_3(), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-1000f)))))));
    var var_2 = select(arg_0, !(!vec2<bool>(arg_2.d.x == arg_3.x, all(vec3<bool>(false, arg_2.b, true)))), false);
    var var_3 = var_1.b;
    let var_4 = vec4<u32>(u_input.d.x, arg_2.d.x, _wgslsmith_mult_u32(1u, 52991u) | max(~reverseBits(1u), ~firstTrailingBit(var_1.b.a.d.x)), var_1.b.a.d.x);
    return _wgslsmith_dot_vec3_i32(vec3<i32>(abs(1i), var_1.b.a.c.x, _wgslsmith_dot_vec4_i32(abs(max(vec4<i32>(1i, u_input.c.x, arg_2.c.x, 2147483647i), vec4<i32>(arg_2.c.x, var_3.a.c.x, arg_2.c.x, arg_2.c.x))), abs(vec4<i32>(arg_2.c.x, 14828i, -41137i, -11995i)))), vec3<i32>(_wgslsmith_div_i32(i32(-1i) * -2938i, 1i) | -(~var_1.a.x), _wgslsmith_add_i32(-(~(-1i)), max(i32(-1i) * -1i, firstTrailingBit(arg_1))), _wgslsmith_dot_vec3_i32(u_input.c, ~_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, -2147483647i, arg_2.c.x), u_input.c))));
}

fn func_1(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_4) -> Struct_1 {
    var var_0 = Struct_3(arg_0, vec2<bool>(arg_2.b.a.b, !arg_1.x), _wgslsmith_f_op_f32(sign(arg_2.b.a.e)));
    var_0 = Struct_3(arg_0 ^ ~_wgslsmith_add_u32(arg_2.b.a.d.x, arg_0), !select(var_0.b, !var_0.b, vec2<bool>(any(vec4<bool>(var_0.b.x, arg_1.x, true, true)), true)), _wgslsmith_f_op_f32(-arg_2.b.a.e));
    var var_1 = func_2(vec2<bool>(true, true), -1i, arg_2.b.a, arg_2.b.a.d.zxw);
    let var_2 = Struct_3(~49232u, select(vec2<bool>(true, !(!var_0.b.x)), vec2<bool>(all(vec4<bool>(var_0.b.x, true, arg_1.x, arg_2.b.a.a)), var_0.b.x), all(vec3<bool>(true, arg_1.x, 1u != arg_2.b.a.d.x))), _wgslsmith_f_op_f32(-var_0.c));
    var var_3 = abs(-arg_2.b.a.c >> (~vec3<u32>(~u_input.d.x, func_3().x, ~4294967295u) % vec3<u32>(32u)));
    return arg_2.b.a;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec2<bool>) -> vec2<u32> {
    var var_0 = ~(-countOneBits(~min(vec4<i32>(u_input.e.x, 2147483647i, u_input.c.x, u_input.a.x), vec4<i32>(arg_1.c.x, 3668i, 0i, 112i))));
    var_0 = max(-vec4<i32>(_wgslsmith_sub_i32(abs(var_0.x), var_0.x), var_0.x, 2147483647i, _wgslsmith_sub_i32(var_0.x, -49855i)), abs(vec4<i32>(i32(-1i) * -1812i, _wgslsmith_dot_vec3_i32(vec3<i32>(-7063i, 10909i, -1i), u_input.c), var_0.x & u_input.c.x, var_0.x)) >> (select(vec4<u32>(arg_1.d.x, 41520u, 8734u, arg_1.d.x) & _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.d.x, u_input.b, 41004u, u_input.b), vec4<u32>(0u, u_input.d.x, u_input.d.x, u_input.b), vec4<u32>(u_input.b, 4294967295u, u_input.d.x, u_input.d.x)), (arg_1.d << (vec4<u32>(55149u, 0u, u_input.b, arg_1.d.x) % vec4<u32>(32u))) << (_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 0u, u_input.b, arg_1.d.x), arg_1.d) % vec4<u32>(32u)), any(!arg_2)) % vec4<u32>(32u)));
    let var_1 = Struct_3(reverseBits(u_input.d.x), !vec2<bool>(any(select(vec2<bool>(false, false), arg_2, arg_2)), arg_2.x), func_1(0u, vec2<bool>(func_1(abs(0u), arg_2, Struct_4(var_0.xz, Struct_2(arg_1))).b, (u_input.a.x < -6737i) && false), Struct_4(vec2<i32>(u_input.e.x, -arg_1.c.x), Struct_2(Struct_1(true, false, var_0.yxz, arg_1.d, arg_1.e)))).e);
    let var_2 = 0u;
    var var_3 = _wgslsmith_mod_vec2_i32(select(vec2<i32>(_wgslsmith_div_i32(0i, arg_1.c.x), -13789i) & abs(select(var_0.zz, arg_1.c.zz, vec2<bool>(true, arg_1.a))), _wgslsmith_sub_vec2_i32(max(-vec2<i32>(u_input.a.x, var_0.x), ~vec2<i32>(var_0.x, -22207i)), -var_0.xz), select(var_1.b, select(select(vec2<bool>(true, arg_1.b), arg_2, vec2<bool>(arg_2.x, var_1.b.x)), select(vec2<bool>(true, var_1.b.x), var_1.b, var_1.b.x), !var_1.b.x), true)), -_wgslsmith_sub_vec2_i32(arg_1.c.xx, arg_1.c.xz) | firstTrailingBit(~countOneBits(vec2<i32>(u_input.c.x, -14826i))));
    return arg_1.d.zy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-699f, -813f))))), 293f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1018f + -432f))), -1023f)));
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.c.x, _wgslsmith_add_i32(-2147483647i, u_input.a.x)), _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(u_input.c, u_input.c), reverseBits(vec3<i32>(u_input.a.x, 16119i, u_input.e.x)))), _wgslsmith_clamp_i32(-(~(-1i)), _wgslsmith_mult_i32(u_input.a.x, abs(u_input.e.x)), -1i), (true || any(vec3<bool>(false, false, false))) & !(u_input.a.x > 5446i)), func_4(var_0.xy, func_1(4294967295u, vec2<bool>(true, select(false, false, false)), Struct_4(~u_input.c.zx, Struct_2(Struct_1(false, true, vec3<i32>(u_input.c.x, u_input.e.x, -1i), vec4<u32>(4294967295u, u_input.b, u_input.d.x, u_input.b), var_0.x)))), select(vec2<bool>(true, true), vec2<bool>(true, true), u_input.c.x <= ~u_input.e.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) + -1284f), var_0.x)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-178f + var_0.x)))), -251f));
}

