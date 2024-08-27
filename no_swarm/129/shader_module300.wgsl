struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_2) -> bool {
    let var_0 = _wgslsmith_sub_u32(4294967295u, abs(~0u));
    let var_1 = Struct_4(arg_0.a, Struct_3(any(vec3<bool>(true, true, any(vec2<bool>(true, true)))), u_input.a));
    var var_2 = _wgslsmith_mult_u32(min(4294967295u, 1u), max(var_0, 12428u));
    var_2 = arg_0.a.b.x;
    var var_3 = 432f;
    return var_1.b.a;
}

fn func_4(arg_0: vec3<bool>) -> i32 {
    var var_0 = 2147483647i;
    var var_1 = ~2880i;
    var var_2 = Struct_4(Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 19818i), abs(vec2<i32>(901i, 0i)), vec2<i32>(-7298i, -9491i)) & -vec2<i32>(1i, 1i), ~_wgslsmith_add_vec4_u32(vec4<u32>(54352u, 0u, u_input.d, 51383u), vec4<u32>(33605u, u_input.a.x, 18657u, u_input.a.x) | vec4<u32>(u_input.a.x, u_input.c.x, u_input.b, u_input.d))), Struct_3(arg_0.x, _wgslsmith_mod_vec2_u32(u_input.c.zx, ~(~vec2<u32>(4294967295u, 4294967295u)))));
    var_0 = -_wgslsmith_dot_vec2_i32(var_2.a.a >> (~var_2.b.b % vec2<u32>(32u)), vec2<i32>(var_2.a.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_2.a.a.x, 15789i, var_2.a.a.x), vec4<i32>(42233i, 22600i, var_2.a.a.x, 0i) << (vec4<u32>(u_input.a.x, var_2.b.b.x, var_2.b.b.x, var_2.a.b.x) % vec4<u32>(32u)))));
    var var_3 = var_2.b.b.x;
    return countOneBits(firstLeadingBit(var_2.a.a.x)) & (-1i & abs(~_wgslsmith_clamp_i32(-39046i, -16157i, 12888i)));
}

fn func_2(arg_0: f32) -> bool {
    var var_0 = vec3<i32>(-firstTrailingBit(firstLeadingBit(-8756i)), -67364i, _wgslsmith_mod_i32(~1i, func_4(vec3<bool>(arg_0 >= 1069f, func_3(Struct_2(Struct_1(vec2<i32>(-1i, 2147483647i), vec4<u32>(u_input.c.x, u_input.d, u_input.b, u_input.c.x)))), true))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-771f - arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0)) * _wgslsmith_f_op_f32(-arg_0)), arg_0, _wgslsmith_f_op_f32(-arg_0)));
    var_0 = ~_wgslsmith_add_vec3_i32(firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, var_0.x, 1i), -vec3<i32>(var_0.x, -2147483647i, 2147483647i))), vec3<i32>(_wgslsmith_mod_i32(var_0.x, var_0.x), var_0.x, max(0i, -3273i)) & vec3<i32>(var_0.x, -37701i, var_0.x));
    var_0 = vec3<i32>(_wgslsmith_sub_i32(-12061i, var_0.x), -(~21879i), -13879i);
    let var_2 = Struct_2(Struct_1(vec2<i32>(var_0.x, 24395i), ~abs(vec4<u32>(1u, 1u, u_input.c.x, u_input.d) << (vec4<u32>(u_input.d, u_input.a.x, u_input.a.x, 81267u) % vec4<u32>(32u)))));
    return func_3(Struct_2(Struct_1(vec2<i32>(43213i, var_0.x >> (var_2.a.b.x % 32u)), vec4<u32>(var_2.a.b.x, 119185u, u_input.a.x, u_input.a.x))));
}

fn func_5(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: vec3<u32>, arg_3: vec2<f32>) -> Struct_3 {
    var var_0 = vec2<bool>(true, false);
    let var_1 = 1u;
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1706f, 604f) * _wgslsmith_div_vec2_f32(arg_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, arg_3.x))))));
    var_2 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-511f, -723f)));
    var var_3 = _wgslsmith_f_op_f32(ceil(-1218f));
    return Struct_3(!func_3(Struct_2(Struct_1(vec2<i32>(-41281i, 1i), vec4<u32>(arg_2.x, arg_2.x, arg_2.x, 0u)))), arg_2.xy);
}

fn func_1() -> vec2<i32> {
    var var_0 = -17541i;
    var_0 = ~firstLeadingBit(1i);
    var var_1 = -342f;
    var var_2 = vec3<bool>(~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 21358i, 34780i, 1i), vec4<i32>(1i, 1i, 1i, 1i)) >= abs(reverseBits(-19759i)), false, firstTrailingBit(u_input.d) > min(u_input.a.x, ~_wgslsmith_sub_u32(u_input.b, 44880u)));
    let var_3 = func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1951f, 609f)), !vec4<bool>(var_2.x, func_2(_wgslsmith_f_op_f32(trunc(935f))), false, !all(vec2<bool>(true, var_2.x))), vec3<u32>(u_input.c.x | ~abs(u_input.c.x), 0u, 58264u), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(483f + 540f)))), -1555f));
    return -vec2<i32>(-604i, func_4(!(!vec3<bool>(false, var_3.a, var_2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(abs(~(~vec2<i32>(1i, 1i))), firstLeadingBit(reverseBits(~(~vec4<u32>(0u, 7640u, 1u, u_input.c.x)))));
    var_0 = Struct_1(~_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(max(vec2<i32>(-2147483647i, var_0.a.x), vec2<i32>(var_0.a.x, 27431i)), var_0.a | vec2<i32>(-36565i, -2020i)), reverseBits(func_1())), vec4<u32>(~4294967295u, _wgslsmith_dot_vec2_u32(u_input.c.yz, _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_0.b.x, 31305u), vec2<u32>(u_input.d, u_input.a.x)), var_0.b.zy)), var_0.b.x, (_wgslsmith_sub_u32(u_input.c.x, 1u) << ((74364u >> (u_input.d % 32u)) % 32u)) << (1u % 32u)));
    var var_1 = Struct_2(Struct_1(firstLeadingBit(firstLeadingBit(vec2<i32>(var_0.a.x, var_0.a.x))), select(vec4<u32>(_wgslsmith_div_u32(22985u, u_input.c.x), u_input.a.x, ~0u, u_input.d), ~vec4<u32>(27860u, 676u, 1u, var_0.b.x), select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, false, true)))));
    var_0 = var_1.a;
    var_1 = Struct_2(var_1.a);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1377f, 2177f));
    let var_3 = select(~vec4<i32>(~var_1.a.a.x, -11874i, func_1().x, var_1.a.a.x), vec4<i32>(~(~var_0.a.x), _wgslsmith_clamp_i32(reverseBits(-1i), abs(var_0.a.x) >> (~var_1.a.b.x % 32u), var_1.a.a.x), var_1.a.a.x, i32(-1i) * -2147483647i), !select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, false, false)), vec4<bool>(any(vec4<bool>(true, false, false, false)), 0u == var_0.b.x, 1i == var_0.a.x, true), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false))));
    let var_4 = Struct_4(Struct_1(vec2<i32>(var_3.x ^ _wgslsmith_add_i32(var_3.x, -3063i), var_3.x), firstLeadingBit(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, 0u, 1u, 88652u), var_0.b))), func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(var_2, -265f), vec2<f32>(var_2, var_2)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, -827f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, var_2))), vec4<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false))), true, false, func_3(Struct_2(Struct_1(var_0.a, vec4<u32>(var_1.a.b.x, var_0.b.x, u_input.a.x, var_0.b.x)))) | any(vec2<bool>(false, false))), vec3<u32>((var_0.b.x & u_input.a.x) << (_wgslsmith_add_u32(37927u, 33305u) % 32u), u_input.c.x, firstTrailingBit(var_0.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1534f, var_2)))));
    var_1 = Struct_2(Struct_1(vec2<i32>(var_0.a.x, 27395i), (var_1.a.b >> (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, var_1.a.b.x, var_1.a.b.x, var_1.a.b.x), var_1.a.b) % vec4<u32>(32u))) << (var_0.b % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.b.x, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_2)), var_2) + var_2), 2752f, -516f), abs(var_1.a.a.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(612f - -1319f), 1229f) - vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-575f)))), var_2)));
}

