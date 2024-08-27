struct Struct_1 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
    c: bool,
    d: f32,
    e: i32,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(i32(-2147483648), i32(-2147483648), 25906i);

var<private> global1: array<vec2<bool>, 16>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec4<i32> {
    global1 = array<vec2<bool>, 16>();
    let var_0 = Struct_2(select(vec4<bool>(_wgslsmith_mult_i32(global0.x, 1i) == ~global0.x, global0.x < abs(4779i), all(vec4<bool>(true, true, true, true)), true), !vec4<bool>(true, true, u_input.b.x > 13975u, true), true), Struct_1((~vec4<u32>(25799u, 63869u, 6857u, 39336u) | max(vec4<u32>(u_input.b.x, u_input.b.x, 1u, 1u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x))) ^ ~(vec4<u32>(18857u, u_input.b.x, 96305u, u_input.b.x) << (vec4<u32>(u_input.b.x, 4294967295u, 2353u, u_input.b.x) % vec4<u32>(32u))), true | select(true, false, true)), -global0.x);
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-417f)), -2071f)), _wgslsmith_div_f32(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-607f)), -708f)), _wgslsmith_f_op_f32(-1545f - -1000f))));
    var var_2 = Struct_2(var_0.a, var_0.b, -10051i);
    let var_3 = !(!select(!(!var_0.a.wyw), vec3<bool>(true, var_2.a.x, var_1.x != -593f), vec3<bool>(any(vec4<bool>(var_0.b.b, var_2.a.x, true, false)), select(false, false, var_0.a.x), var_0.b.b != true)));
    return abs(vec4<i32>(-(u_input.a << (var_2.b.a.x % 32u)) | u_input.a, _wgslsmith_dot_vec2_i32(~abs(vec2<i32>(global0.x, 1i)), ~global0.yy << (firstLeadingBit(vec2<u32>(u_input.b.x, u_input.b.x)) % vec2<u32>(32u))), -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(~var_2.c, select(-2147483647i, global0.x, var_3.x)), vec2<i32>(1i, ~var_2.c))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec4<i32>, arg_3: vec2<f32>) -> vec2<u32> {
    let var_0 = global0.zz;
    var var_1 = vec2<u32>(1u, _wgslsmith_sub_u32(min(min(35398u, 1u), 0u), u_input.b.x));
    var var_2 = arg_1.c;
    let var_3 = arg_0.b;
    var_1 = ~_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(reverseBits(u_input.b), max(~arg_1.c.b, ~var_3.a.yz)), _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_2.b.x, u_input.b.x), select(vec2<u32>(4294967295u, arg_1.b.b.a.x), vec2<u32>(0u, arg_1.a), global1[_wgslsmith_index_u32(var_2.b.x, 16u)]), ~vec2<u32>(var_1.x, var_1.x)), vec2<u32>(~arg_1.a, 1u)));
    return var_3.a.yx;
}

fn func_2(arg_0: u32) -> i32 {
    let var_0 = func_4(Struct_2(vec4<bool>(true, true, true, true), Struct_1(reverseBits(vec4<u32>(u_input.b.x, 4294967295u, arg_0, 4294967295u)), false), 1i), Struct_4(arg_0, Struct_2(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), true), Struct_1(vec4<u32>(19207u, 47687u, arg_0, 14733u), false), ~(-27410i)), Struct_3(_wgslsmith_clamp_u32(arg_0, u_input.b.x, arg_0), _wgslsmith_mod_vec2_u32(u_input.b, vec2<u32>(u_input.b.x, arg_0)), true, _wgslsmith_f_op_f32(1605f * -1315f), 1i & u_input.a)), func_3(), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-767f, -1601f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1000f, 438f), vec2<f32>(607f, -1117f))))) ^ vec2<u32>(~(~arg_0), arg_0 & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, arg_0), select(vec4<u32>(10513u, 4294967295u, 1u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, 1u, 1u), true)));
    var var_1 = _wgslsmith_div_vec4_i32(firstLeadingBit(select(-_wgslsmith_mod_vec4_i32(vec4<i32>(global0.x, u_input.a, u_input.a, u_input.a), vec4<i32>(22248i, u_input.a, u_input.a, u_input.a)), vec4<i32>(0i, func_3().x, -11510i & global0.x, u_input.a), all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true))))), reverseBits(~_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.a, -29340i, global0.x), vec4<i32>(global0.x, global0.x, global0.x, global0.x)), min(vec4<i32>(u_input.a, global0.x, global0.x, 0i), vec4<i32>(global0.x, 0i, -8482i, -19339i)), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, u_input.a, -2147483647i, global0.x), vec4<i32>(global0.x, 0i, 2147483647i, u_input.a)))));
    let var_2 = ~(~_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, var_0.x), vec3<u32>(37162u, var_0.x, u_input.b.x)), abs(vec3<u32>(arg_0, 46370u, 5105u)))) >> (vec3<u32>(77051u, ~arg_0, reverseBits(arg_0 << (0u % 32u)) & _wgslsmith_add_u32(select(arg_0, var_0.x, false), 69852u)) % vec3<u32>(32u));
    var var_3 = ~reverseBits(-2147483647i) | _wgslsmith_dot_vec4_i32(vec4<i32>(1i, firstTrailingBit(-2147483647i) ^ ~u_input.a, ~_wgslsmith_div_i32(2147483647i, -1i), 1i), vec4<i32>(0i, _wgslsmith_div_i32(var_1.x << (var_0.x % 32u), u_input.a), func_3().x, u_input.a));
    var_1 = _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(~abs(_wgslsmith_add_vec4_i32(vec4<i32>(16184i, var_1.x, -41508i, u_input.a), vec4<i32>(-7979i, 2147483647i, global0.x, var_1.x))), _wgslsmith_clamp_vec4_i32(~vec4<i32>(-48921i, -1i, var_1.x, var_1.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, global0.x, var_1.x, u_input.a), -vec4<i32>(u_input.a, global0.x, global0.x, global0.x), vec4<i32>(var_1.x, 1i, 0i, 0i)), func_3())), select(vec4<i32>(select(-9188i, -8129i, any(vec2<bool>(false, true))), var_1.x, global0.x, -1i), -vec4<i32>(global0.x, u_input.a, ~0i, firstTrailingBit(var_1.x)), arg_0 >= select(1u, u_input.b.x & var_2.x, true)));
    return func_3().x >> (_wgslsmith_mod_u32(~var_0.x, _wgslsmith_sub_u32(_wgslsmith_mult_u32(arg_0, 62173u), _wgslsmith_mult_u32(arg_0, 1u)) | min(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, var_0.x, 27680u, 130413u), vec4<u32>(u_input.b.x, u_input.b.x, arg_0, 52544u)), 26440u)) % 32u);
}

fn func_1(arg_0: f32) -> Struct_2 {
    var var_0 = min(_wgslsmith_mod_i32(countOneBits(19568i), u_input.a), -(abs(u_input.a) << (~u_input.b.x % 32u))) | func_2(~u_input.b.x);
    var var_1 = Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(~(u_input.b.x & 1u), 0u, select(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b.x, 0u, 29554u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 102533u)), ~2193u, select(false, true, true)), u_input.b.x), ~max(vec4<u32>(0u, u_input.b.x, 1u, 1u), select(vec4<u32>(0u, u_input.b.x, 0u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 1u), true))), true);
    var var_2 = Struct_1(~reverseBits(var_1.a), true);
    global1 = array<vec2<bool>, 16>();
    var_0 = global0.x;
    return Struct_2(select(select(!(!vec4<bool>(false, var_2.b, true, false)), vec4<bool>(4294967295u < var_1.a.x, var_2.b, u_input.a <= -85140i, !var_2.b), any(vec4<bool>(var_1.b, true, true, var_2.b))), select(!select(vec4<bool>(var_2.b, false, var_1.b, var_1.b), vec4<bool>(var_2.b, var_1.b, var_2.b, true), vec4<bool>(false, false, var_1.b, true)), select(!vec4<bool>(var_2.b, false, var_1.b, var_2.b), select(vec4<bool>(var_2.b, false, var_2.b, true), vec4<bool>(var_1.b, var_2.b, var_2.b, var_1.b), var_1.b), select(vec4<bool>(var_1.b, var_1.b, var_1.b, var_2.b), vec4<bool>(true, false, var_2.b, var_1.b), false)), !var_1.b), !(!select(vec4<bool>(var_1.b, false, var_2.b, var_2.b), vec4<bool>(true, false, var_2.b, false), var_2.b))), Struct_1(~(~(vec4<u32>(0u, 14299u, var_1.a.x, u_input.b.x) & vec4<u32>(1u, 5635u, 22525u, 0u))), select(!(u_input.a <= u_input.a), any(vec3<bool>(var_1.b, false, var_1.b)), false)), global0.x);
}

fn func_5(arg_0: u32, arg_1: Struct_2) -> Struct_1 {
    var var_0 = select(!(!func_1(-840f).a.xzx), vec3<bool>(any(!(!vec4<bool>(true, false, true, arg_1.a.x))), arg_1.a.x, true), arg_1.a.wyy);
    var var_1 = Struct_4(arg_1.b.a.x, arg_1, Struct_3(_wgslsmith_div_u32(_wgslsmith_div_u32(1u, arg_1.b.a.x) ^ 46640u, max(arg_0, 12705u) ^ firstLeadingBit(u_input.b.x)), arg_1.b.a.wx << (vec2<u32>(~0u, arg_1.b.a.x) % vec2<u32>(32u)), all(vec3<bool>(true, !var_0.x, false)), 429f, -2147483647i));
    var var_2 = all(!func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.d))).a);
    var_2 = !(797f == _wgslsmith_f_op_f32(sign(1f)));
    let var_3 = _wgslsmith_mult_vec4_i32(~(-_wgslsmith_mod_vec4_i32(vec4<i32>(86592i, u_input.a, 1i, var_1.c.e), ~vec4<i32>(9474i, arg_1.c, 2147483647i, 17579i))), vec4<i32>(arg_1.c, global0.x, _wgslsmith_sub_i32(-26961i, var_1.b.c), func_3().x ^ u_input.a));
    return func_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-450f, 1f) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-336f)))))))).b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(1u, func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1663f * -251f)))));
    var_0 = Struct_1(countOneBits(~(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 17872u, u_input.b.x, 4294967295u), var_0.a) | vec4<u32>(u_input.b.x, 60343u, 11450u, u_input.b.x))), !(1233f == _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -283f)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-411f - -585f), _wgslsmith_div_f32(1000f, -1000f)))));
    let var_2 = false;
    global0 = select(~vec3<i32>(u_input.a, global0.x, -10611i), select(~vec3<i32>(-28478i, _wgslsmith_sub_i32(-51563i, 15168i), -13415i), max(func_3().yzx, vec3<i32>(u_input.a, global0.x, func_3().x)), select(!(!vec3<bool>(var_0.b, true, false)), !vec3<bool>(var_2, false, var_2), select(!vec3<bool>(var_0.b, true, false), vec3<bool>(true, true, true), true))), true);
    var_0 = Struct_1(reverseBits(vec4<u32>(var_0.a.x, reverseBits(abs(60482u)), u_input.b.x, func_1(-1298f).b.a.x)), var_0.b & true);
    var var_3 = vec2<u32>(_wgslsmith_mod_u32(1u, var_0.a.x) << (_wgslsmith_div_u32(abs(25361u), u_input.b.x) % 32u), func_4(func_1(3392f), Struct_4(var_0.a.x, Struct_2(vec4<bool>(var_2, false, false, true), Struct_1(vec4<u32>(var_0.a.x, 50408u, var_0.a.x, 58022u), true), 2147483647i), Struct_3(var_0.a.x, u_input.b, var_2, -1000f, global0.x)), vec4<i32>(global0.x, global0.x, 2147483647i, u_input.a), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(686f, -666f), vec2<f32>(-1258f, -667f)))).x ^ reverseBits(86576u)) & ~vec2<u32>(4294967295u, var_0.a.x >> (max(var_0.a.x, u_input.b.x) % 32u));
    var var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(89224u));
}

