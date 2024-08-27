struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
    d: vec4<i32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: vec3<bool>,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<f32>,
    c: Struct_1,
    d: i32,
    e: bool,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<bool>) -> u32 {
    var var_0 = countOneBits(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(5470i, u_input.a, u_input.a, u_input.a)), vec4<i32>(u_input.a, _wgslsmith_mult_i32(firstTrailingBit(u_input.a), countOneBits(u_input.a)), ~1i, u_input.a)));
    var var_1 = _wgslsmith_mult_i32(~(u_input.a | u_input.a), _wgslsmith_sub_i32(select(-(u_input.a << (0u % 32u)), ~u_input.a | 0i, true), 2147483647i));
    var var_2 = reverseBits(43777u);
    let var_3 = _wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(_wgslsmith_add_u32(52056u, ~98357u), ~1u, abs(~50728u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(21005u, 4294967295u)) << (1u % 32u))), vec4<u32>(~17525u, ~(~abs(1u)), ~0u, 1u & (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 9423u), vec3<u32>(63578u, 0u, 1u)) >> (1u % 32u))));
    let var_4 = Struct_5(4294967295u, Struct_4(Struct_3(Struct_2(Struct_1(u_input.a, 733f, arg_0.x, vec4<i32>(u_input.a, -16457i, u_input.a, u_input.a), false), arg_0.x == arg_0.x, Struct_1(u_input.a, 111f, true, vec4<i32>(2147483647i, 2147483647i, 2147483647i, -8020i), false)), ~(vec2<i32>(u_input.a, u_input.a) << (vec2<u32>(var_3.x, 1u) % vec2<u32>(32u))), arg_0.zxw, Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(-9756i, 21957i), vec2<i32>(u_input.a, u_input.a)), 488f, true, countOneBits(vec4<i32>(33090i, u_input.a, 2147483647i, u_input.a)), any(arg_0.wz)), -7233i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(907f, -802f, -398f, -726f), vec4<f32>(1f, 1f, 1f, 1f), !vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x)))), Struct_1(-35751i, 201f, !(arg_0.x | arg_0.x), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(17456i, 1i, -15656i, 13234i), vec4<i32>(u_input.a, u_input.a, u_input.a, -41575i)), ~27808i, _wgslsmith_add_i32(1i, u_input.a), -u_input.a), false), ~_wgslsmith_dot_vec3_i32(vec3<i32>(59079i, -7801i, -1i), vec3<i32>(0i, u_input.a, 56213i)), arg_0.x));
    return ~1u;
}

fn func_2() -> Struct_4 {
    var var_0 = Struct_5(firstLeadingBit(func_3(vec4<bool>(true, true, true, true))), Struct_4(Struct_3(Struct_2(Struct_1(u_input.a, 642f, false, vec4<i32>(14487i, -27544i, u_input.a, -45525i), false), false, Struct_1(28229i, 617f, true, vec4<i32>(-2528i, 1i, 68611i, u_input.a), false)), vec2<i32>(max(-21491i, 1206i), select(u_input.a, u_input.a, false)), vec3<bool>(true, true, true), Struct_1(2147483647i, -1000f, false, abs(vec4<i32>(-2147483647i, u_input.a, 0i, -2147483647i)), true), 16104i), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-680f, -174f, -836f, 145f))))), Struct_1(28896i, _wgslsmith_f_op_f32(f32(-1f) * -1634f), true && all(vec2<bool>(false, false)), ~vec4<i32>(-2147483647i, u_input.a, u_input.a, -12146i) | -vec4<i32>(u_input.a, -2147483647i, 2147483647i, 4070i), false), firstTrailingBit(2147483647i), true));
    var_0 = Struct_5(min(~abs(_wgslsmith_mod_u32(18179u, var_0.a)), 30524u), Struct_4(Struct_3(var_0.b.a.a, var_0.b.c.d.zw, !var_0.b.a.c, Struct_1(2147483647i, _wgslsmith_f_op_f32(1238f - -1000f), 4294967295u < var_0.a, _wgslsmith_mod_vec4_i32(var_0.b.a.d.d, vec4<i32>(11178i, -14111i, -60353i, u_input.a)), true), var_0.b.a.d.d.x), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.b.b.x, -1264f, var_0.b.a.d.b, var_0.b.b.x))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1435f, 649f, 383f, -303f), var_0.b.b))))), var_0.b.a.d, var_0.b.d, all(select(select(vec2<bool>(var_0.b.e, var_0.b.c.c), vec2<bool>(var_0.b.e, var_0.b.e), vec2<bool>(false, true)), select(var_0.b.a.c.zx, vec2<bool>(var_0.b.e, true), var_0.b.c.c), !var_0.b.a.c.yz))));
    let var_1 = Struct_5(~25516u, Struct_4(var_0.b.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(346f, _wgslsmith_f_op_f32(f32(-1f) * -1046f), 1686f, -1040f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1302f, 1296f, var_0.b.b.x, -533f)))), var_0.b.a.a.c, 1i, var_0.b.a.a.c.c && true));
    let var_2 = var_0.b.c.b;
    var_0 = Struct_5(4294967295u, var_0.b);
    return var_0.b;
}

fn func_4(arg_0: Struct_4) -> vec3<f32> {
    var var_0 = vec2<i32>(u_input.a, 1i);
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1125f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, arg_0.b.x)))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.b.ww - _wgslsmith_div_vec2_f32(arg_0.b.yy, arg_0.b.xz)) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-arg_0.b.xw)))), arg_0.b.yx, any(select(!vec4<bool>(false, arg_0.a.c.x, false, true), !vec4<bool>(arg_0.a.c.x, arg_0.a.a.c.e, arg_0.a.a.b, arg_0.c.e), select(vec4<bool>(false, true, true, true), vec4<bool>(true, arg_0.a.d.c, false, arg_0.c.e), vec4<bool>(true, arg_0.c.c, arg_0.c.c, true)))))));
    global0 = any(!(!select(!vec4<bool>(true, false, arg_0.a.d.c, false), select(vec4<bool>(arg_0.a.a.c.c, true, true, false), vec4<bool>(false, arg_0.a.c.x, arg_0.e, true), vec4<bool>(false, arg_0.c.c, arg_0.e, false)), arg_0.c.c & true)));
    var var_2 = 9074u;
    var var_3 = func_2().a.a.a;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-1181f, arg_0.a.d.b), -2308f, _wgslsmith_f_op_f32(floor(-1858f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.d.b, -184f, var_1.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, arg_0.b.x, var_3.b)) - _wgslsmith_f_op_vec3_f32(abs(arg_0.b.wxy))))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-203f + var_1.x), var_1.x, -702f))), arg_0.b.ywz)));
}

fn func_1() -> vec3<i32> {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(710f)) * _wgslsmith_f_op_f32(min(338f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1281f + 601f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))))) >= -695f;
    global0 = true;
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-149f + _wgslsmith_f_op_f32(f32(-1f) * -1369f)))), 442f);
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(func_2())), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x))), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(584f - 281f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -851f, 336f) * vec3<f32>(var_0.x, -842f, -155f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_0.x, var_0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 618f))))), false)), vec3<bool>(any(vec2<bool>(true, select(false, true, false))), true, false)));
    global0 = true;
    return _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(6551i, reverseBits(u_input.a), _wgslsmith_sub_i32(u_input.a ^ 0i, ~(-34966i))), _wgslsmith_mod_vec3_i32(vec3<i32>(~u_input.a, -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(9052i, 16699i, 11468i, 21869i), vec4<i32>(-42679i, -1i, u_input.a, -4007i))), _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, -61508i, -1968i), vec3<i32>(19984i, u_input.a, 1i)), vec3<i32>(u_input.a, 20971i, u_input.a) << (vec3<u32>(31102u, 15564u, 1u) % vec3<u32>(32u))))), select(vec3<i32>(_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(u_input.a, u_input.a)), -vec2<i32>(u_input.a, -11411i)), u_input.a, (-5010i << (1u % 32u)) | u_input.a), vec3<i32>(-1i >> (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(0u, 4294967295u)) % 32u), _wgslsmith_add_i32(reverseBits(229i), -u_input.a), 2138i), vec3<bool>(true, true, true & any(vec2<bool>(false, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = Struct_3(func_2().a.a, vec2<i32>(-var_0.x << (1u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, -2147483647i), reverseBits(var_0.xz))) & _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(28492i, 16342i), vec2<i32>(var_0.x, var_0.x)) >> (abs(vec2<u32>(71775u, 9389u)) % vec2<u32>(32u)), var_0.yx), func_2().a.c, func_2().c, firstLeadingBit(1i));
    let var_2 = ~vec4<u32>(abs(47628u), _wgslsmith_sub_u32(~43239u, 0u), ~0u, ~(~select(4294967295u, 1u, false)));
    global0 = var_1.a.a.e;
    let var_3 = vec4<bool>(all(!var_1.c.xz), true, true, !var_1.d.c);
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.d.b)) * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1767f * -1625f), -749f))));
    let var_5 = vec4<u32>(~5827u, ~(~(~17907u)), ~20787u, ~(~(~var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(abs(vec4<i32>(_wgslsmith_dot_vec4_i32(var_1.d.d, var_1.a.c.d), func_1().x, ~var_0.x, var_1.d.d.x ^ var_1.e))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(741f)) - _wgslsmith_f_op_f32(max(var_1.d.b, -986f))), var_1.a.a.b, var_4, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d.b * var_1.d.b)))));
}

