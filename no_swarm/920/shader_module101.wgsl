struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(1i, -5650i);

var<private> global1: Struct_1;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec2<u32> {
    var var_0 = global0.x;
    let var_1 = select(vec3<bool>(true, global1.b.x, true), vec3<bool>(true, true, global1.b.x), true);
    global0 = max(vec2<i32>(~firstTrailingBit(u_input.a.x) << (min(~92784u, 4294967295u) % 32u), abs(u_input.a.x)), vec2<i32>(abs(global0.x), ~(abs(global0.x) << (_wgslsmith_mod_u32(32457u, 49501u) % 32u))));
    global0 = reverseBits(firstLeadingBit(max(u_input.a.xz, _wgslsmith_sub_vec2_i32(u_input.a.zx ^ vec2<i32>(u_input.a.x, global0.x), u_input.a.xx))));
    let var_2 = vec3<u32>(1u, 1u, 1u);
    return select(~(~var_2.zx), select(firstLeadingBit((var_2.yy & vec2<u32>(var_2.x, var_2.x)) ^ ~vec2<u32>(var_2.x, 4294967295u)), _wgslsmith_sub_vec2_u32(~_wgslsmith_sub_vec2_u32(var_2.yy, var_2.zz), var_2.zx), select(vec2<bool>(any(vec2<bool>(false, true)), true), vec2<bool>(false, false), vec2<bool>(!var_1.x, all(vec3<bool>(true, false, false))))), !any(select(var_1.zy, !global1.b, var_1.xy)));
}

fn func_2(arg_0: vec3<f32>, arg_1: i32, arg_2: u32) -> bool {
    global1 = Struct_1(-abs(~(~36624i)), select(!global1.b, vec2<bool>(arg_0.x != _wgslsmith_f_op_f32(min(-452f, arg_0.x)), !(arg_2 == arg_2)), global1.b));
    global1 = Struct_1(_wgslsmith_mult_i32(~(arg_1 & abs(-1i)), 1i), vec2<bool>(true, global1.b.x));
    var var_0 = -1240f;
    var var_1 = global1.a;
    var var_2 = func_3();
    return false;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = Struct_1(countOneBits(-1i), select(select(vec2<bool>(true, select(arg_1.x, global1.b.x, false)), arg_1.xx, select(func_2(arg_0, global0.x, 1u), false, all(vec3<bool>(true, true, global1.b.x)))), vec2<bool>(true, true), global1.b));
    global0 = -vec2<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(2147483647i, global0.x ^ 53255i), var_0.a), abs(global0.x));
    var var_1 = abs(6405u);
    return var_0;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: f32, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_mult_i32(global1.a ^ _wgslsmith_clamp_i32(-arg_3.x, 1i, _wgslsmith_div_i32(1i, global0.x)), arg_3.x), !(!arg_1.b));
    var var_1 = select(_wgslsmith_mod_vec3_u32(max(vec3<u32>(17413u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_0), vec2<u32>(4294967295u, 15868u)), ~4294967295u), vec3<u32>(105284u, ~arg_0, reverseBits(arg_0))), ~vec3<u32>(~arg_0, 4294967295u, arg_0)), _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(1u, arg_0, 4294967295u)), reverseBits(abs(vec3<u32>(arg_0, 35964u, 0u)))), ~reverseBits(~vec3<u32>(101922u, 21769u, arg_0))), vec3<bool>(arg_1.b.x, any(select(vec4<bool>(false, arg_1.b.x, false, false), vec4<bool>(false, true, global1.b.x, true), vec4<bool>(true, true, true, false))) != true, true));
    var var_2 = _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(arg_1.a, arg_1.a), 1i) | _wgslsmith_dot_vec3_i32(-u_input.a, ~u_input.a), 0i, abs(var_0.a)), ~_wgslsmith_sub_vec3_i32(vec3<i32>(global0.x, max(global0.x, 0i), -var_0.a), u_input.a));
    let var_3 = abs(32589u);
    let var_4 = func_1(vec3<f32>(arg_2, _wgslsmith_f_op_f32(trunc(-1367f)), -1763f), vec3<bool>(false, all(select(select(vec3<bool>(var_0.b.x, global1.b.x, false), vec3<bool>(var_0.b.x, global1.b.x, false), false), select(vec3<bool>(global1.b.x, global1.b.x, var_0.b.x), vec3<bool>(arg_1.b.x, true, var_0.b.x), vec3<bool>(true, false, global1.b.x)), true)), arg_1.b.x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1224f, arg_2, 1000f)))))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-arg_2), -1000f, _wgslsmith_f_op_f32(trunc(arg_2))))), vec3<bool>(true, ~14604u == var_3, (u_input.a.x != var_2.x) | any(vec4<bool>(var_0.b.x, false, false, arg_1.b.x))))));
    return func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(320f, 1033f)), 1008f, _wgslsmith_f_op_f32(284f - arg_2)) + vec3<f32>(-957f, -276f, _wgslsmith_f_op_f32(-arg_2))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(arg_2)), _wgslsmith_f_op_f32(max(1536f, arg_2)), _wgslsmith_f_op_f32(-arg_2)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-157f, -1509f, 715f) * vec3<f32>(arg_2, -647f, 745f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, 453f, arg_2) + vec3<f32>(arg_2, -1214f, -2335f))))), vec3<bool>(false, true, false), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, _wgslsmith_f_op_f32(round(arg_2)), arg_2)))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_clamp_vec2_i32(vec2<i32>(global0.x, arg_3.a), u_input.a.yy, u_input.a.yx);
    let var_1 = _wgslsmith_mult_vec4_u32(min(_wgslsmith_div_vec4_u32(max(_wgslsmith_clamp_vec4_u32(vec4<u32>(1889u, 0u, 85585u, 1u), vec4<u32>(54471u, 1u, 12774u, 0u), vec4<u32>(4294967295u, 20743u, 68461u, 0u)), ~vec4<u32>(0u, 1u, 32877u, 0u)), _wgslsmith_sub_vec4_u32(~vec4<u32>(41758u, 60158u, 30434u, 9405u), firstLeadingBit(vec4<u32>(1u, 42879u, 0u, 0u)))), vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(~1u, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), abs(vec2<u32>(6865u, 26745u))) | _wgslsmith_dot_vec3_u32(vec3<u32>(4663u, 80563u, 1u), max(vec3<u32>(9885u, 21702u, 1u), vec3<u32>(36235u, 4294967295u, 1u))), ~(~0u)));
    let var_2 = func_4(~((~var_1.x & 71073u) | 0u), func_4(42284u, Struct_1(u_input.a.x, arg_1.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(984f)) - -1394f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1148f) * _wgslsmith_f_op_f32(f32(-1f) * -2217f))), u_input.a.xz), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1101f * -279f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-421f * 1139f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -399f) * -337f))), ~vec2<i32>(~2147483647i >> (var_1.x % 32u), arg_3.a));
    var var_3 = arg_3;
    global0 = _wgslsmith_clamp_vec2_i32(u_input.a.yx, u_input.a.yx, vec2<i32>(global0.x, -abs(84916i)));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.a.yz;
    let var_0 = ~2147483647i;
    global0 = firstTrailingBit(_wgslsmith_mult_vec2_i32(u_input.a.xz >> (vec2<u32>(1u, ~75688u) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(abs(vec2<i32>(-2147483647i, global1.a) >> (vec2<u32>(59070u, 4294967295u) % vec2<u32>(32u))), vec2<i32>(-var_0, u_input.a.x), -reverseBits(u_input.a.yy))));
    global1 = func_5(Struct_1(_wgslsmith_mod_i32(-2147483647i, global0.x) | -4916i, global1.b), func_4(~63741u, func_1(vec3<f32>(-815f, _wgslsmith_f_op_f32(f32(-1f) * -277f), 198f), !select(vec3<bool>(global1.b.x, true, false), vec3<bool>(true, global1.b.x, global1.b.x), global1.b.x), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1602f, 268f, -675f), vec3<f32>(-703f, 880f, -726f)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1802f + 2120f) - _wgslsmith_f_op_f32(-1116f + 598f)))), vec2<i32>(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(1i, var_0)), -vec2<i32>(var_0, 2147483647i)), 0i)), !any(func_1(vec3<f32>(253f, 1488f, 1000f), vec3<bool>(true, global1.b.x, global1.b.x), _wgslsmith_div_vec3_f32(vec3<f32>(542f, -2624f, -1829f), vec3<f32>(-752f, 1023f, 853f))).b), Struct_1(~(~(global1.a | global1.a)), vec2<bool>(global1.b.x, any(vec2<bool>(global1.b.x, true)))));
    var var_1 = vec4<f32>(-1056f, 1000f, _wgslsmith_f_op_f32(f32(-1f) * -229f), _wgslsmith_f_op_f32(-737f * _wgslsmith_div_f32(-1797f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(668f + -380f) - 1f))));
    var var_2 = func_4(35655u, func_5(func_5(Struct_1(var_0, vec2<bool>(false, true)), func_5(func_1(var_1.xzz, vec3<bool>(true, global1.b.x, global1.b.x), vec3<f32>(var_1.x, var_1.x, -2091f)), Struct_1(11455i, global1.b), !global1.b.x, func_4(26993u, Struct_1(-33766i, global1.b), -769f, u_input.a.xx)), any(vec4<bool>(global1.b.x, false, global1.b.x, true)), Struct_1(var_0, vec2<bool>(global1.b.x, global1.b.x))), func_4(_wgslsmith_mod_u32(37569u, _wgslsmith_sub_u32(47878u, 14796u)), func_1(vec3<f32>(178f, var_1.x, var_1.x), select(vec3<bool>(false, global1.b.x, false), vec3<bool>(global1.b.x, true, global1.b.x), true), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.x, 929f, 227f), var_1.www, false))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -240f), _wgslsmith_f_op_f32(-var_1.x))), (u_input.a.yz | vec2<i32>(2315i, global1.a)) >> (~vec2<u32>(4294967295u, 66042u) % vec2<u32>(32u))), false, Struct_1(-2147483647i, func_4(0u, Struct_1(var_0, vec2<bool>(global1.b.x, global1.b.x)), _wgslsmith_f_op_f32(766f + -2490f), countOneBits(u_input.a.yx)).b)), _wgslsmith_f_op_f32(-var_1.x), select(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, countOneBits(-55107i)), -vec2<i32>(-20885i, 21532i) & (vec2<i32>(global0.x, u_input.a.x) | vec2<i32>(global1.a, -2147483647i))), _wgslsmith_div_vec2_i32(abs(-vec2<i32>(u_input.a.x, var_0)), firstTrailingBit(vec2<i32>(global0.x, global1.a))), global1.b.x));
    var var_3 = _wgslsmith_f_op_f32(391f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1388f)) + -1179f));
    var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -885f), 694f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - -1000f))), _wgslsmith_f_op_f32(f32(-1f) * -2004f), -2196f));
    let var_4 = select(!(!vec3<bool>(true, any(vec3<bool>(false, var_2.b.x, false)), global1.b.x)), !select(select(!vec3<bool>(var_2.b.x, global1.b.x, false), vec3<bool>(var_2.b.x, true, false), var_2.b.x), vec3<bool>(func_5(Struct_1(global1.a, vec2<bool>(var_2.b.x, false)), Struct_1(var_0, var_2.b), true, Struct_1(var_0, global1.b)).b.x, var_2.b.x, global1.b.x || global1.b.x), vec3<bool>(global1.b.x, !global1.b.x, true)), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(3350f, 814f)));
}

