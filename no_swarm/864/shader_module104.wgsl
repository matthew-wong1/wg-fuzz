struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec2<bool>,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: u32,
    c: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
    c: vec4<bool>,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec2<u32>,
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

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_3) -> vec2<bool> {
    var var_0 = Struct_2(arg_1.b.a, arg_1.b.c, arg_1.b.e, _wgslsmith_sub_i32(~(-_wgslsmith_div_i32(u_input.a.x, 63977i)), 0i ^ select(max(-1i, -1i), -arg_0.x, arg_1.b.c.c.x)), Struct_1(_wgslsmith_div_vec4_u32(abs(vec4<u32>(arg_1.b.e.a.x, 0u, arg_1.b.e.a.x, arg_1.b.c.a.x)), countOneBits(arg_1.b.c.a)), ~arg_1.a.b, vec2<bool>(!all(arg_1.a.c), arg_1.a.c.x), !(!arg_1.a.c.x)));
    var var_1 = Struct_4(!vec2<bool>(all(!vec3<bool>(arg_1.b.e.d, true, false)), true), 1u, false);
    var_1 = Struct_4(vec2<bool>(any(vec3<bool>(var_1.c, arg_1.b.b.c.x || false, var_0.a > arg_1.b.a)), var_1.c), 1u, arg_1.b.e.c.x);
    var_1 = Struct_4(!(!var_0.c.c), ~(select(var_0.c.a.x, var_1.b, true) ^ 1u), (arg_1.b.b.b < 57072u) | true);
    var_1 = Struct_4(select(arg_1.b.b.c, var_0.c.c, arg_1.a.c), countOneBits(~(~var_1.b) | (select(1u, arg_1.a.a.x, false) << (~12189u % 32u))), !var_1.c);
    return arg_1.b.e.c;
}

fn func_2(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_2) -> bool {
    var var_0 = Struct_5(arg_2.e, Struct_4(func_3(vec4<i32>(arg_2.d, -21223i, 10611i, _wgslsmith_add_i32(0i, -18633i)), Struct_3(arg_2.c, Struct_2(arg_2.a, arg_2.b, Struct_1(vec4<u32>(91671u, arg_0.x, arg_2.e.a.x, 35976u), arg_0.x, vec2<bool>(true, false), false), 14018i, Struct_1(vec4<u32>(arg_0.x, arg_0.x, 1u, arg_2.e.b), arg_0.x, arg_2.b.c, arg_2.b.d)))), _wgslsmith_mult_u32(arg_2.e.a.x, 1u), false), select(select(!(!vec4<bool>(true, false, arg_2.e.c.x, arg_2.e.c.x)), select(select(vec4<bool>(arg_2.b.d, true, arg_2.e.d, arg_2.e.d), vec4<bool>(false, arg_2.e.d, false, arg_2.c.d), vec4<bool>(true, arg_2.b.d, true, arg_2.e.c.x)), !vec4<bool>(arg_2.c.c.x, arg_2.b.d, arg_2.c.d, arg_2.e.d), vec4<bool>(false, arg_2.c.c.x, arg_2.e.d, false)), false && any(vec4<bool>(true, arg_2.b.d, arg_2.b.d, arg_2.c.d))), vec4<bool>(arg_2.d == (u_input.a.x | u_input.a.x), true, false, all(vec3<bool>(false, arg_2.c.d, arg_2.b.c.x)) && any(arg_2.c.c)), true == !(arg_2.a >= arg_2.a)), Struct_3(Struct_1(select(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.x, arg_2.b.a.x, 4089u, arg_0.x), arg_0), ~vec4<u32>(23947u, 1u, 40463u, arg_2.b.a.x), vec4<bool>(arg_2.b.d, false, true, false)), ~(~arg_2.e.a.x), !vec2<bool>(arg_2.b.d, arg_2.b.c.x), arg_2.e.d), Struct_2(_wgslsmith_div_f32(arg_2.a, _wgslsmith_f_op_f32(ceil(240f))), Struct_1(vec4<u32>(7070u, 6023u, arg_0.x, 28053u), ~0u, vec2<bool>(false, arg_2.b.d), !arg_2.e.c.x), arg_2.e, u_input.a.x, Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(28995u, 4294967295u, 8983u, arg_2.c.a.x), arg_2.e.a), 26760u, !arg_2.e.c, false))));
    var var_1 = ~var_0.a.a.x;
    var_0 = Struct_5(Struct_1(arg_0, ~_wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec3_u32(arg_0.yzx, var_0.a.a.wyx)), vec2<bool>(true, 637f >= _wgslsmith_f_op_f32(arg_2.a * arg_2.a)), !(_wgslsmith_f_op_f32(min(-1000f, var_0.d.b.a)) >= _wgslsmith_f_op_f32(933f * 1146f))), Struct_4(vec2<bool>(arg_2.e.c.x, false), _wgslsmith_mod_u32(1u, arg_0.x), !any(!var_0.c)), var_0.c, var_0.d);
    var var_2 = arg_2;
    let var_3 = Struct_3(Struct_1(vec4<u32>(~arg_0.x, 4294967295u, 49632u, 1u), 40320u, select(select(!var_2.e.c, func_3(u_input.a, var_0.d), !arg_2.b.d), !vec2<bool>(true, var_0.d.a.d), true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-965f)), -288f) > _wgslsmith_f_op_f32(-var_0.d.b.a)), arg_2);
    return !var_3.a.d;
}

fn func_4(arg_0: bool, arg_1: vec2<bool>, arg_2: vec2<i32>, arg_3: Struct_3) -> i32 {
    let var_0 = !select(arg_3.b.b.c, select(arg_1, vec2<bool>(true, !arg_1.x), func_3(u_input.a >> (arg_3.b.c.a % vec4<u32>(32u)), arg_3)), true);
    let var_1 = Struct_4(!vec2<bool>(-241f > _wgslsmith_f_op_f32(-arg_3.b.a), true), firstTrailingBit(~min(arg_3.b.c.b, 4294967295u)), all(!(!vec3<bool>(false, true, arg_3.b.b.d))));
    var var_2 = _wgslsmith_mod_u32(var_1.b, ~(~arg_3.a.a.x));
    return (1508i & u_input.a.x) | firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(select(arg_2.x, arg_2.x, true), _wgslsmith_mod_i32(25412i, arg_2.x)), vec2<i32>(2147483647i, arg_2.x) & arg_2));
}

fn func_1(arg_0: Struct_2) -> vec3<i32> {
    let var_0 = vec2<u32>(0u, firstTrailingBit(arg_0.b.a.x));
    var var_1 = Struct_4(arg_0.e.c, select(109829u, arg_0.b.b, arg_0.b.c.x), all(!select(select(vec3<bool>(arg_0.e.d, true, false), vec3<bool>(false, arg_0.c.d, arg_0.e.c.x), vec3<bool>(arg_0.c.c.x, false, true)), select(vec3<bool>(arg_0.e.c.x, arg_0.b.c.x, arg_0.b.d), vec3<bool>(arg_0.e.c.x, arg_0.b.c.x, false), vec3<bool>(true, arg_0.e.c.x, arg_0.b.c.x)), true)));
    var var_2 = firstTrailingBit(firstLeadingBit(func_4(true, vec2<bool>(true, func_2(arg_0.c.a, arg_0.d, Struct_2(arg_0.a, Struct_1(vec4<u32>(arg_0.e.a.x, arg_0.b.b, var_0.x, arg_0.c.a.x), 4294967295u, vec2<bool>(true, arg_0.c.c.x), var_1.c), Struct_1(arg_0.e.a, 11389u, var_1.a, true), u_input.a.x, Struct_1(arg_0.c.a, 1u, arg_0.b.c, true)))), vec2<i32>(-28539i, firstLeadingBit(u_input.a.x)), Struct_3(Struct_1(vec4<u32>(var_1.b, arg_0.c.b, 1u, 4294967295u), 62131u, var_1.a, arg_0.c.d), arg_0))));
    var var_3 = vec4<bool>(var_1.a.x | true, !(arg_0.b.c.x && select(true, true, true)), true, any(!select(vec4<bool>(arg_0.b.c.x, true, arg_0.b.c.x, var_1.a.x), vec4<bool>(true, var_1.a.x, var_1.a.x, arg_0.e.d), false)) | true);
    var var_4 = _wgslsmith_f_op_f32(476f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)));
    return _wgslsmith_clamp_vec3_i32(u_input.a.zyy, ~u_input.a.xwy, u_input.a.yyz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec3_i32(u_input.a.xzy, func_1(Struct_2(1162f, Struct_1(vec4<u32>(4294967295u, 53390u, 8006u, 1u), 4294967295u, vec2<bool>(false, true), false), Struct_1(vec4<u32>(0u, 88859u, 4024u, 1u), 39720u, vec2<bool>(false, false), false), u_input.a.x ^ -5751i, Struct_1(vec4<u32>(27921u, 8635u, 1u, 71853u), 85786u, vec2<bool>(false, true), true))) | ~u_input.a.zxy);
    var var_1 = true;
    var var_2 = reverseBits(_wgslsmith_dot_vec3_i32(~max(abs(vec3<i32>(-35941i, u_input.a.x, 0i)), u_input.a.zyz), _wgslsmith_mult_vec3_i32(var_0, u_input.a.zwy)));
    var_1 = !(!all(vec2<bool>(false, true)));
    var_1 = !any(vec4<bool>(true, true, true, all(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false)))));
    let var_3 = firstLeadingBit(abs(1u));
    var_2 = 44351i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1233f + _wgslsmith_f_op_f32(select(971f, 1000f, false))), _wgslsmith_f_op_f32(trunc(-1683f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * -505f), -1217f)) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + vec3<f32>(1000f, 820f, 1233f)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2253f, 1000f, 353f) * vec3<f32>(985f, 694f, -933f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1262f, -386f, -2222f) * vec3<f32>(1360f, 318f, -1000f)))), true))), vec4<i32>(~(-firstLeadingBit(u_input.a.x)), ~20447i, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, -11282i), vec2<i32>(u_input.a.x, var_0.x), vec2<i32>(50942i, -1i)), ~u_input.a.yz), ~min(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(-32273i, u_input.a.x))), -1i), firstLeadingBit(~max(-vec3<i32>(-51602i, u_input.a.x, u_input.a.x), vec3<i32>(29818i, -17411i, 14647i))), vec2<u32>(var_3, ~_wgslsmith_mod_u32(~10831u, _wgslsmith_mult_u32(1u, 36556u))));
}

