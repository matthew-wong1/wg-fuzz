struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: bool,
    d: vec2<u32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec4<u32>,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: bool,
    d: vec2<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_3,
    c: vec3<bool>,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec4<u32>,
    e: vec4<i32>,
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

var<private> global0: i32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: i32, arg_1: vec3<i32>, arg_2: vec3<i32>, arg_3: bool) -> f32 {
    let var_0 = _wgslsmith_mult_u32(~0u, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 4294967295u << (u_input.a % 32u), 0u >> (u_input.d.x % 32u), ~u_input.a), select(~(u_input.d >> (u_input.d % vec4<u32>(32u))), select(u_input.d, ~u_input.d, !arg_3), true)));
    var var_1 = Struct_1(u_input.d, true, !all(!vec4<bool>(true, false, true, arg_3)), ~(~abs(_wgslsmith_mult_vec2_u32(u_input.d.xz, vec2<u32>(u_input.a, u_input.d.x)))), select(select(select(vec3<bool>(true, true, true), !vec3<bool>(true, true, arg_3), !vec3<bool>(arg_3, arg_3, false)), select(select(vec3<bool>(arg_3, arg_3, arg_3), vec3<bool>(arg_3, arg_3, true), false), vec3<bool>(arg_3, arg_3, false), !arg_3), arg_3), !vec3<bool>(false, all(vec3<bool>(arg_3, false, arg_3)), arg_1.x <= 1i), any(vec2<bool>(true, !arg_3))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -666f)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-946f * _wgslsmith_f_op_f32(abs(-389f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f - 1528f), _wgslsmith_f_op_f32(sign(-603f)), !var_1.b)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_div_f32(1000f, 468f))))), 380f);
    global0 = ~(~u_input.b.x);
    let var_3 = ~select(20927u, 1u, false);
    return 834f;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_4) -> Struct_4 {
    let var_0 = 1u;
    global0 = ~_wgslsmith_mod_i32(-2147483647i, -1i);
    var var_1 = arg_1.a;
    let var_2 = _wgslsmith_f_op_f32(func_3(reverseBits(u_input.c), ~(-select(vec3<i32>(u_input.b.x, u_input.c, 2147483647i), u_input.b, true)) >> (u_input.d.wxw % vec3<u32>(32u)), u_input.b, true));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(153f, 168f)) + _wgslsmith_f_op_f32(-var_1.d.x)), _wgslsmith_div_f32(-365f, _wgslsmith_f_op_f32(round(-1604f))))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(979f * -1490f) + _wgslsmith_f_op_f32(-var_2)));
    return arg_1;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: Struct_1, arg_3: u32) -> i32 {
    let var_0 = func_2(arg_1.a, arg_1).a;
    let var_1 = reverseBits(u_input.d.x);
    var var_2 = func_2(func_2(arg_1.a, func_2(Struct_3(arg_1.a.a, !vec3<bool>(arg_2.e.x, true, true), var_0.b.x, vec2<f32>(1000f, var_0.d.x)), arg_1)).a, Struct_4(arg_1.a, select(_wgslsmith_dot_vec3_i32(abs(u_input.b), firstTrailingBit(u_input.e.xzz)), 41851i, !any(var_0.b.zy)))).a;
    var_2 = func_2(var_0, arg_1).a;
    let var_3 = ~var_1 << (1u % 32u);
    return arg_1.b;
}

fn func_1(arg_0: bool) -> vec4<i32> {
    global0 = min(_wgslsmith_add_i32(func_4(select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(arg_0, true, true), vec3<bool>(arg_0, true, true)), func_2(Struct_3(Struct_2(Struct_1(u_input.d, false, arg_0, vec2<u32>(22445u, u_input.a), vec3<bool>(arg_0, false, true)), vec4<bool>(false, arg_0, arg_0, arg_0), vec4<u32>(u_input.a, 15492u, u_input.d.x, 4294967295u), 22092u), vec3<bool>(arg_0, true, true), arg_0, vec2<f32>(-210f, 1680f)), Struct_4(Struct_3(Struct_2(Struct_1(vec4<u32>(u_input.a, u_input.a, u_input.d.x, 0u), false, true, vec2<u32>(u_input.a, u_input.a), vec3<bool>(arg_0, arg_0, false)), vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<u32>(0u, 4294967295u, u_input.d.x, u_input.d.x), 15029u), vec3<bool>(true, arg_0, arg_0), arg_0, vec2<f32>(-1680f, 649f)), u_input.b.x)), Struct_1(u_input.d, true, true, vec2<u32>(4294967295u, u_input.a), vec3<bool>(arg_0, arg_0, arg_0)), u_input.a) >> (~u_input.a % 32u), 18952i), u_input.e.x);
    let var_0 = vec4<u32>(1u, _wgslsmith_dot_vec4_u32(~(~(vec4<u32>(u_input.d.x, u_input.a, 4294967295u, 0u) & vec4<u32>(4294967295u, u_input.d.x, 0u, 11100u))), vec4<u32>(~_wgslsmith_clamp_u32(u_input.d.x, u_input.d.x, 35100u), u_input.d.x, abs(~u_input.a), (0u >> (u_input.d.x % 32u)) & u_input.a)), 72150u, _wgslsmith_sub_u32(13146u ^ ~u_input.d.x, ~(~u_input.a)));
    let var_1 = -749f;
    let var_2 = Struct_5(u_input.b.xy, Struct_3(func_2(Struct_3(func_2(Struct_3(Struct_2(Struct_1(var_0, true, arg_0, u_input.d.xx, vec3<bool>(arg_0, true, arg_0)), vec4<bool>(false, false, arg_0, true), vec4<u32>(u_input.d.x, u_input.d.x, 0u, 0u), 33276u), vec3<bool>(false, false, arg_0), arg_0, vec2<f32>(639f, -726f)), Struct_4(Struct_3(Struct_2(Struct_1(vec4<u32>(u_input.a, 4294967295u, var_0.x, var_0.x), arg_0, arg_0, u_input.d.zy, vec3<bool>(true, false, false)), vec4<bool>(false, true, true, true), vec4<u32>(4294967295u, 4294967295u, u_input.a, u_input.a), 13540u), vec3<bool>(false, arg_0, arg_0), arg_0, vec2<f32>(745f, 203f)), u_input.b.x)).a.a, vec3<bool>(true, true, true), func_2(Struct_3(Struct_2(Struct_1(var_0, arg_0, false, vec2<u32>(20918u, u_input.a), vec3<bool>(false, false, false)), vec4<bool>(false, false, true, false), var_0, var_0.x), vec3<bool>(true, false, arg_0), arg_0, vec2<f32>(-1054f, -992f)), Struct_4(Struct_3(Struct_2(Struct_1(vec4<u32>(43835u, var_0.x, u_input.a, 0u), false, false, vec2<u32>(92570u, u_input.d.x), vec3<bool>(arg_0, arg_0, arg_0)), vec4<bool>(arg_0, true, arg_0, arg_0), vec4<u32>(34015u, var_0.x, 1u, u_input.a), u_input.a), vec3<bool>(arg_0, false, true), true, vec2<f32>(-1665f, -1853f)), u_input.e.x)).a.b.x, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1, 969f), vec2<f32>(var_1, var_1)))), Struct_4(func_2(Struct_3(Struct_2(Struct_1(u_input.d, arg_0, false, var_0.ww, vec3<bool>(true, arg_0, false)), vec4<bool>(arg_0, true, false, arg_0), var_0, 15917u), vec3<bool>(false, false, true), true, vec2<f32>(-1299f, -1000f)), Struct_4(Struct_3(Struct_2(Struct_1(u_input.d, false, true, vec2<u32>(u_input.d.x, u_input.a), vec3<bool>(true, false, arg_0)), vec4<bool>(arg_0, arg_0, true, arg_0), vec4<u32>(var_0.x, 15211u, 0u, var_0.x), u_input.a), vec3<bool>(false, arg_0, arg_0), arg_0, vec2<f32>(-1000f, var_1)), u_input.b.x)).a, 1i)).a.a, select(select(!vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, arg_0, arg_0), false), func_2(Struct_3(Struct_2(Struct_1(vec4<u32>(53318u, u_input.d.x, 91164u, u_input.d.x), arg_0, true, u_input.d.xy, vec3<bool>(arg_0, true, arg_0)), vec4<bool>(arg_0, false, arg_0, false), vec4<u32>(var_0.x, var_0.x, 17898u, 49883u), 4294967295u), vec3<bool>(arg_0, arg_0, arg_0), arg_0, vec2<f32>(280f, 1697f)), func_2(Struct_3(Struct_2(Struct_1(var_0, arg_0, true, u_input.d.xz, vec3<bool>(false, false, false)), vec4<bool>(false, false, arg_0, true), var_0, 1u), vec3<bool>(true, arg_0, true), arg_0, vec2<f32>(-1660f, 1655f)), Struct_4(Struct_3(Struct_2(Struct_1(vec4<u32>(1u, u_input.d.x, 8771u, 24342u), arg_0, arg_0, var_0.xx, vec3<bool>(true, arg_0, arg_0)), vec4<bool>(arg_0, true, arg_0, false), u_input.d, 1u), vec3<bool>(arg_0, false, false), arg_0, vec2<f32>(-742f, var_1)), u_input.e.x))).a.b, select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(arg_0, false, arg_0), arg_0)), ((u_input.e.x >> (var_0.x % 32u)) > ~u_input.e.x) == any(select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(true, arg_0, false), arg_0)), vec2<f32>(-1168f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1, 215f))))), !(!select(vec3<bool>(arg_0, arg_0, arg_0), select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(true, arg_0, true), true), vec3<bool>(true, true, true))), arg_0, all(func_2(func_2(Struct_3(Struct_2(Struct_1(vec4<u32>(u_input.a, 1u, 1u, 23391u), arg_0, arg_0, u_input.d.zx, vec3<bool>(arg_0, arg_0, true)), vec4<bool>(false, true, arg_0, arg_0), vec4<u32>(u_input.a, 25614u, 4294967295u, 14066u), 58473u), vec3<bool>(true, arg_0, arg_0), true, vec2<f32>(var_1, -1560f)), func_2(Struct_3(Struct_2(Struct_1(u_input.d, true, arg_0, var_0.yy, vec3<bool>(false, arg_0, false)), vec4<bool>(false, true, arg_0, arg_0), u_input.d, 39127u), vec3<bool>(arg_0, false, arg_0), arg_0, vec2<f32>(-179f, -489f)), Struct_4(Struct_3(Struct_2(Struct_1(vec4<u32>(var_0.x, 4294967295u, var_0.x, 17610u), arg_0, false, u_input.d.yw, vec3<bool>(arg_0, arg_0, true)), vec4<bool>(arg_0, arg_0, false, true), vec4<u32>(0u, var_0.x, 51177u, u_input.d.x), 43005u), vec3<bool>(true, arg_0, arg_0), arg_0, vec2<f32>(115f, 490f)), u_input.e.x))).a, func_2(func_2(Struct_3(Struct_2(Struct_1(vec4<u32>(var_0.x, 45912u, 12520u, 65105u), arg_0, arg_0, u_input.d.zy, vec3<bool>(arg_0, true, true)), vec4<bool>(false, arg_0, arg_0, true), u_input.d, var_0.x), vec3<bool>(arg_0, arg_0, arg_0), arg_0, vec2<f32>(781f, var_1)), Struct_4(Struct_3(Struct_2(Struct_1(vec4<u32>(1u, u_input.a, var_0.x, u_input.d.x), arg_0, true, vec2<u32>(11123u, u_input.a), vec3<bool>(false, false, true)), vec4<bool>(true, arg_0, arg_0, false), vec4<u32>(var_0.x, u_input.d.x, u_input.d.x, var_0.x), 44592u), vec3<bool>(false, false, arg_0), false, vec2<f32>(var_1, var_1)), u_input.e.x)).a, func_2(Struct_3(Struct_2(Struct_1(u_input.d, true, arg_0, var_0.zx, vec3<bool>(false, true, arg_0)), vec4<bool>(true, arg_0, arg_0, arg_0), u_input.d, 42882u), vec3<bool>(arg_0, true, true), arg_0, vec2<f32>(var_1, var_1)), Struct_4(Struct_3(Struct_2(Struct_1(vec4<u32>(26201u, 1u, 1u, 49944u), false, true, var_0.yy, vec3<bool>(true, arg_0, true)), vec4<bool>(true, arg_0, false, arg_0), vec4<u32>(13334u, var_0.x, 1u, u_input.a), u_input.a), vec3<bool>(true, arg_0, false), false, vec2<f32>(-1008f, -1646f)), -69490i)))).a.a.b));
    let var_3 = ~reverseBits(u_input.d.wxz);
    return vec4<i32>(1210i, _wgslsmith_mult_i32(var_2.a.x << (_wgslsmith_mult_u32(52339u, var_3.x) % 32u), select(2147483647i, ~u_input.b.x, any(var_2.c.zx))), var_2.a.x, u_input.c);
}

fn func_5(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: vec4<bool>) -> bool {
    let var_0 = vec4<f32>(400f, 1307f, _wgslsmith_f_op_f32(func_3(u_input.e.x, ~firstTrailingBit(u_input.b) ^ ~arg_0.ywy, _wgslsmith_clamp_vec3_i32(select(-vec3<i32>(2147483647i, u_input.c, u_input.c), arg_0.zxz & u_input.e.ywz, true), -vec3<i32>(arg_0.x, u_input.b.x, -1i), _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, arg_0.x, arg_0.x), arg_0.wyx), arg_0.xxw)), !arg_2.x)), 1283f);
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.x)) + -309f) + _wgslsmith_f_op_f32(f32(-1f) * -2181f)))));
    global0 = abs(arg_0.x);
    global0 = -max(abs(13636i), arg_0.x);
    global0 = _wgslsmith_add_i32(~arg_0.x, -2147483647i ^ u_input.b.x);
    return (u_input.d.x >> (~(~15439u) % 32u)) < 114741u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(select(!select(vec2<bool>(false, false), vec2<bool>(false, true), true), select(vec2<bool>(false, true), vec2<bool>(true, true), any(vec3<bool>(true, true, false)) || true), func_5(select(func_1(false), u_input.e, vec4<bool>(true, true, true, true)), abs(firstTrailingBit(vec2<u32>(1556u, u_input.d.x))), vec4<bool>(true, true, true, true))));
    var var_1 = u_input.e.wyw;
    var_1 = ~(-_wgslsmith_sub_vec3_i32(-(vec3<i32>(-8764i, -2147483647i, -2147483647i) & vec3<i32>(1i, var_1.x, -38504i)), u_input.b));
    let var_2 = func_2(func_2(func_2(Struct_3(Struct_2(Struct_1(vec4<u32>(40036u, u_input.d.x, u_input.d.x, 0u), var_0, var_0, vec2<u32>(u_input.d.x, u_input.d.x), vec3<bool>(var_0, var_0, false)), vec4<bool>(false, var_0, true, true), vec4<u32>(u_input.a, u_input.a, u_input.d.x, 4294967295u), u_input.a), !vec3<bool>(var_0, false, true), false, _wgslsmith_div_vec2_f32(vec2<f32>(-353f, 2551f), vec2<f32>(-2053f, 901f))), func_2(Struct_3(Struct_2(Struct_1(u_input.d, var_0, var_0, vec2<u32>(u_input.a, u_input.d.x), vec3<bool>(true, true, var_0)), vec4<bool>(var_0, var_0, false, var_0), vec4<u32>(10923u, u_input.d.x, 4294967295u, u_input.d.x), u_input.a), vec3<bool>(var_0, true, false), var_0, vec2<f32>(-696f, -573f)), func_2(Struct_3(Struct_2(Struct_1(vec4<u32>(u_input.d.x, u_input.a, u_input.d.x, u_input.d.x), var_0, false, u_input.d.yx, vec3<bool>(var_0, false, false)), vec4<bool>(var_0, var_0, false, var_0), u_input.d, 10904u), vec3<bool>(false, var_0, var_0), var_0, vec2<f32>(1000f, 988f)), Struct_4(Struct_3(Struct_2(Struct_1(u_input.d, var_0, var_0, vec2<u32>(u_input.a, 0u), vec3<bool>(false, true, var_0)), vec4<bool>(var_0, true, var_0, false), vec4<u32>(85611u, 4294967295u, 1u, u_input.d.x), u_input.d.x), vec3<bool>(var_0, false, var_0), var_0, vec2<f32>(418f, 430f)), 69335i)))).a, Struct_4(func_2(func_2(Struct_3(Struct_2(Struct_1(vec4<u32>(63938u, 0u, u_input.a, u_input.a), false, false, u_input.d.zw, vec3<bool>(false, true, var_0)), vec4<bool>(false, false, var_0, true), vec4<u32>(14482u, u_input.a, u_input.a, u_input.d.x), 0u), vec3<bool>(false, false, var_0), true, vec2<f32>(2349f, -803f)), Struct_4(Struct_3(Struct_2(Struct_1(vec4<u32>(3198u, u_input.a, u_input.a, u_input.a), var_0, var_0, u_input.d.yw, vec3<bool>(var_0, true, false)), vec4<bool>(true, var_0, true, false), vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x), u_input.d.x), vec3<bool>(var_0, var_0, false), var_0, vec2<f32>(-1051f, 862f)), u_input.b.x)).a, Struct_4(Struct_3(Struct_2(Struct_1(vec4<u32>(4294967295u, u_input.a, 57829u, u_input.a), false, false, u_input.d.yx, vec3<bool>(var_0, true, var_0)), vec4<bool>(false, true, var_0, var_0), u_input.d, 56742u), vec3<bool>(var_0, var_0, var_0), true, vec2<f32>(-1181f, 424f)), var_1.x)).a, _wgslsmith_mod_i32(~u_input.c, u_input.b.x))).a, func_2(func_2(func_2(Struct_3(Struct_2(Struct_1(u_input.d, false, false, vec2<u32>(53951u, 34338u), vec3<bool>(true, true, var_0)), vec4<bool>(var_0, var_0, var_0, var_0), u_input.d, 4294967295u), vec3<bool>(false, false, false), var_0, vec2<f32>(-2230f, -1455f)), Struct_4(Struct_3(Struct_2(Struct_1(vec4<u32>(u_input.d.x, u_input.a, 4294967295u, 39287u), var_0, var_0, u_input.d.zy, vec3<bool>(var_0, var_0, false)), vec4<bool>(false, true, var_0, var_0), u_input.d, 70875u), vec3<bool>(false, true, false), var_0, vec2<f32>(-1158f, -445f)), 1i)).a, func_2(Struct_3(Struct_2(Struct_1(vec4<u32>(0u, 77447u, 0u, 78432u), false, var_0, u_input.d.wz, vec3<bool>(true, false, true)), vec4<bool>(var_0, true, var_0, var_0), u_input.d, u_input.d.x), vec3<bool>(var_0, var_0, var_0), var_0, vec2<f32>(-116f, 324f)), Struct_4(Struct_3(Struct_2(Struct_1(vec4<u32>(u_input.d.x, 25477u, u_input.a, 1u), true, true, u_input.d.xz, vec3<bool>(true, false, true)), vec4<bool>(true, false, false, var_0), vec4<u32>(27654u, u_input.d.x, u_input.d.x, 4294967295u), u_input.a), vec3<bool>(var_0, var_0, true), var_0, vec2<f32>(688f, -456f)), var_1.x))).a, Struct_4(func_2(func_2(Struct_3(Struct_2(Struct_1(u_input.d, var_0, var_0, u_input.d.zw, vec3<bool>(true, false, var_0)), vec4<bool>(var_0, var_0, var_0, var_0), vec4<u32>(u_input.a, u_input.a, 0u, u_input.a), u_input.d.x), vec3<bool>(var_0, var_0, var_0), var_0, vec2<f32>(-130f, -143f)), Struct_4(Struct_3(Struct_2(Struct_1(vec4<u32>(39895u, 1u, u_input.a, u_input.d.x), false, false, u_input.d.yx, vec3<bool>(false, var_0, var_0)), vec4<bool>(var_0, false, var_0, var_0), u_input.d, u_input.d.x), vec3<bool>(var_0, var_0, true), var_0, vec2<f32>(1000f, 1104f)), var_1.x)).a, func_2(Struct_3(Struct_2(Struct_1(vec4<u32>(u_input.d.x, 4294967295u, 4294967295u, 1u), var_0, var_0, vec2<u32>(0u, u_input.a), vec3<bool>(var_0, true, true)), vec4<bool>(var_0, var_0, var_0, var_0), vec4<u32>(u_input.d.x, 63797u, u_input.a, 10634u), 1u), vec3<bool>(true, false, false), true, vec2<f32>(821f, 525f)), Struct_4(Struct_3(Struct_2(Struct_1(vec4<u32>(1u, u_input.d.x, 6428u, u_input.a), var_0, false, u_input.d.wx, vec3<bool>(true, var_0, var_0)), vec4<bool>(var_0, var_0, true, var_0), vec4<u32>(0u, 1u, 67176u, u_input.a), u_input.a), vec3<bool>(var_0, var_0, var_0), var_0, vec2<f32>(-511f, -1309f)), var_1.x))).a, var_1.x))).a;
    let var_3 = Struct_5(-firstLeadingBit(reverseBits(vec2<i32>(u_input.c, u_input.e.x) & u_input.b.yz)), var_2, !vec3<bool>(false, var_2.c, true), true, true);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.d.x)));
    var var_5 = var_3.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.d);
}

