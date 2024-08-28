struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_2,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<u32, 23> = array<u32, 23>(1u, 21311u, 0u, 0u, 7757u, 1u, 9404u, 0u, 0u, 0u, 29425u, 0u, 0u, 66069u, 83304u, 17098u, 18075u, 5832u, 59479u, 1u, 0u, 4918u, 1u);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(select(-731f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * 725f)))))), false));
    var var_1 = Struct_2(Struct_1(~(~reverseBits(1i)), global1[_wgslsmith_index_u32(countOneBits(95567u), 23u)] | global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(5922u, u_input.b.x), u_input.c.zy), global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(u_input.a, 23u)], 23u)]), 23u)], _wgslsmith_clamp_u32(~1716u, 6952u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(4294967295u, global1[_wgslsmith_index_u32(62583u, 23u)]), 1u)), u_input.c.x));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -156f))), _wgslsmith_f_op_f32(arg_0.x * arg_0.x))) - arg_0.x);
    let var_3 = var_1.a;
    let var_4 = _wgslsmith_add_vec3_i32(firstTrailingBit(~(vec3<i32>(11814i, -12755i, var_3.a) | vec3<i32>(var_1.a.a, var_1.a.a, 50787i)) >> (_wgslsmith_sub_vec3_u32(select(u_input.c.xzx, vec3<u32>(u_input.b.x, 136345u, 0u), vec3<bool>(true, true, true)), ~vec3<u32>(var_1.a.b, global1[_wgslsmith_index_u32(var_1.a.b, 23u)], var_1.a.d)) % vec3<u32>(32u))), min(firstTrailingBit(countOneBits(vec3<i32>(var_1.a.a, 0i, -2147483647i)) ^ -vec3<i32>(-2147483647i, var_3.a, var_1.a.a)), (vec3<i32>(-1i, -3500i, var_1.a.a) << (~vec3<u32>(53554u, global1[_wgslsmith_index_u32(4294967295u, 23u)], global1[_wgslsmith_index_u32(1u, 23u)]) % vec3<u32>(32u))) >> (_wgslsmith_mult_vec3_u32(u_input.c.zwz, ~u_input.c.zxw) % vec3<u32>(32u))));
    return true;
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: vec2<u32>) -> Struct_2 {
    let var_0 = arg_1;
    global0 = _wgslsmith_mod_u32(reverseBits(_wgslsmith_mod_u32(min(arg_0, firstTrailingBit(0u)), abs(~14370u))), max(arg_3.x & ~(~var_0.a.d), 385u));
    let var_1 = select(true, all(vec3<bool>(true, true, true)) || (_wgslsmith_f_op_f32(-arg_2.x) <= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.x)))), func_3(_wgslsmith_f_op_vec4_f32(abs(arg_2))));
    var var_2 = select(u_input.c, reverseBits(vec4<u32>(~(arg_1.a.b & arg_0), firstTrailingBit(u_input.c.x), arg_3.x, ~abs(u_input.b.x))), vec4<bool>(var_1, !any(select(vec2<bool>(var_1, false), vec2<bool>(var_1, var_1), true)), true, all(select(!vec2<bool>(false, var_1), select(vec2<bool>(true, var_1), vec2<bool>(var_1, var_1), true), select(vec2<bool>(var_1, var_1), vec2<bool>(var_1, var_1), false)))));
    let var_3 = arg_2.zx;
    return var_0;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec4<i32>) -> vec3<u32> {
    global0 = arg_1.b;
    var var_0 = !vec3<bool>(true, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~0u, ~arg_2.x), 23u)] == select(min(5350u, 4294967295u), ~0u, arg_0.a.d > 4294967295u), select(true, all(vec2<bool>(false, false)), true));
    global0 = arg_0.a.d;
    return ~select(vec3<u32>(arg_2.x, ~(arg_1.c >> (0u % 32u)), func_2(~60629u, func_2(arg_2.x, arg_0, vec4<f32>(-866f, 757f, -778f, -574f), u_input.c.zy), _wgslsmith_div_vec4_f32(vec4<f32>(514f, -592f, -2098f, -280f), vec4<f32>(-1753f, -906f, -1462f, 120f)), u_input.b).a.d), u_input.c.xyy, all(select(var_0.zx, select(var_0.zy, vec2<bool>(false, var_0.x), var_0.zx), vec2<bool>(false, true))));
}

fn func_1() -> Struct_2 {
    global0 = _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.c.xzy, vec3<u32>(min(36456u, u_input.c.x), 32658u, ~u_input.a) & func_4(func_2(4341u, Struct_2(Struct_1(1i, u_input.b.x, 38756u, 35761u)), vec4<f32>(-1000f, -261f, 2419f, 1000f), u_input.b), func_2(u_input.c.x, Struct_2(Struct_1(-2147483647i, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(43311u, 23u)], 23u)], u_input.a, 66008u)), vec4<f32>(179f, 692f, -476f, -767f), vec2<u32>(4294967295u, 17690u)).a, select(vec2<u32>(77595u, 25262u), u_input.b, vec2<bool>(false, true)), abs(vec4<i32>(0i, -20308i, 2147483647i, 2795i)))), firstLeadingBit(~vec3<u32>(1613u, abs(global1[_wgslsmith_index_u32(52184u, 23u)]), 4676u)));
    var var_0 = firstLeadingBit(firstTrailingBit(vec4<u32>(abs(u_input.b.x | global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 23u)], 23u)]), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(firstLeadingBit(~u_input.b.x), 23u)], 23u)], 23u)], _wgslsmith_dot_vec4_u32(vec4<u32>(2855u, u_input.b.x, 37593u, u_input.a), abs(u_input.c)), _wgslsmith_add_u32(global1[_wgslsmith_index_u32(~81760u, 23u)], _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(0u, 23u)], u_input.c.x)))));
    let var_1 = ~vec2<i32>(~abs(~(-637i)), ~_wgslsmith_add_i32(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -2147483647i, 31084i, -1i), vec4<i32>(2147483647i, -2147483647i, 531i, 64206i))));
    var_0 = ~_wgslsmith_mod_vec4_u32(reverseBits(~(vec4<u32>(u_input.c.x, 4294967295u, global1[_wgslsmith_index_u32(1u, 23u)], 23379u) ^ u_input.c)), u_input.c);
    let var_2 = func_2(select(var_0.x, 36619u, select(true, true, _wgslsmith_mod_i32(var_1.x, var_1.x) == var_1.x)), Struct_2(func_2(firstLeadingBit(_wgslsmith_sub_u32(u_input.b.x, 1u)), Struct_2(func_2(15923u, Struct_2(Struct_1(20110i, global1[_wgslsmith_index_u32(u_input.c.x, 23u)], 0u, global1[_wgslsmith_index_u32(12930u, 23u)])), vec4<f32>(-1000f, -1984f, 1000f, 875f), var_0.zy).a), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(404f, 131f, -858f, -1178f))), u_input.c.zz).a), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2227f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-693f, 882f))), _wgslsmith_f_op_f32(round(1818f)), -1801f), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(325f - -1767f), _wgslsmith_f_op_f32(abs(-308f)), -1597f, 500f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1166f, -424f, -645f, -335f) + vec4<f32>(484f, -1163f, -2697f, -324f)))), _wgslsmith_mod_i32(22867i, _wgslsmith_sub_i32(2147483647i, var_1.x)) < max(_wgslsmith_div_i32(-14841i, var_1.x), min(1i, 1i)))), ~max(~vec2<u32>(0u, global1[_wgslsmith_index_u32(1u, 23u)]), reverseBits(vec2<u32>(0u, u_input.b.x)))).a;
    return Struct_2(func_2(0u, func_2(9044u, func_2(~4294967295u, func_2(37664u, Struct_2(var_2), vec4<f32>(-1286f, -1000f, 408f, -820f), vec2<u32>(var_2.d, 86754u)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(788f, -849f, -754f, -2042f), vec4<f32>(-929f, -688f, 715f, 1686f))), countOneBits(var_0.zz)), vec4<f32>(-188f, 1f, -1000f, _wgslsmith_f_op_f32(max(245f, -476f))), ~_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, var_0.x), vec2<u32>(0u, var_0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(652f, 1000f, 1822f, 270f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-306f, -336f, -913f, 397f))), _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(~u_input.b, vec2<u32>(15621u, 4294967295u)), vec2<u32>(52169u >> (0u % 32u), 1u))).a);
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: i32, arg_3: u32) -> Struct_2 {
    var var_0 = Struct_2(func_2(~_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(select(arg_1.b.d, u_input.a, true), 23u)], 33767u), func_2(~(~1u), Struct_2(func_2(global1[_wgslsmith_index_u32(0u, 23u)], Struct_2(Struct_1(23491i, arg_3, arg_1.c.a.d, 7015u)), vec4<f32>(1121f, 1000f, -1017f, -1000f), vec2<u32>(global1[_wgslsmith_index_u32(arg_3, 23u)], 1u)).a), vec4<f32>(_wgslsmith_f_op_f32(746f * -2106f), _wgslsmith_f_op_f32(-1000f * 1874f), 1f, -173f), ~_wgslsmith_mod_vec2_u32(u_input.b, vec2<u32>(global1[_wgslsmith_index_u32(arg_1.b.b, 23u)], 38693u))), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(689f, -121f)))), _wgslsmith_f_op_f32(-1222f + _wgslsmith_f_op_f32(575f + -951f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-337f)) - _wgslsmith_f_op_f32(f32(-1f) * -1284f)), 371f), vec2<u32>(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3, u_input.c.x, 28478u, 4294967295u), vec4<u32>(6501u, arg_3, 0u, arg_3))), max(min(u_input.a, 4294967295u), func_1().a.c))).a);
    global1 = array<u32, 23>();
    let var_1 = ~(~_wgslsmith_mult_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.c.x), u_input.b))) <= 4294967295u;
    var var_2 = _wgslsmith_mod_u32(~arg_3, 46526u);
    let var_3 = u_input.c.wxx;
    return Struct_2(var_0.a);
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: bool, arg_3: vec4<bool>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-262f, 538f, -504f, 363f))))));
    global1 = array<u32, 23>();
    let var_1 = Struct_3(vec2<i32>(func_2(87849u & _wgslsmith_dot_vec3_u32(u_input.c.wxy, u_input.c.xwy), arg_1, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.x, 750f, var_0.x, var_0.x))), vec4<f32>(1623f, var_0.x, var_0.x, var_0.x), arg_2)), vec2<u32>(_wgslsmith_div_u32(55110u, global1[_wgslsmith_index_u32(u_input.c.x, 23u)]), 13836u)).a.a, _wgslsmith_sub_i32(91651i, arg_0.x << (58973u % 32u))), arg_1.a, func_1(), vec2<i32>(func_2(func_1().a.c ^ _wgslsmith_dot_vec2_u32(u_input.c.wx, vec2<u32>(0u, global1[_wgslsmith_index_u32(73996u, 23u)])), Struct_2(Struct_1(arg_1.a.a, 15974u, arg_1.a.d, u_input.b.x)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-var_0))), u_input.c.yw).a.a, _wgslsmith_div_i32(-1i, arg_0.x)));
    var var_2 = var_1.a >> (abs(u_input.c.xy) % vec2<u32>(32u));
    global0 = var_1.c.a.b;
    return var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 23>();
    var var_0 = 2582f;
    var var_1 = func_6(vec2<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 47374i, 20662i, 2147483647i), vec4<i32>(-4428i, -2147483647i, -8852i, -2147483647i)), (i32(-1i) * -21026i) << (~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(16128u, 23u)], 23u)], 23u)], 23u)] % 32u)) | countOneBits(vec2<i32>(_wgslsmith_div_i32(-2147483647i, -26418i), ~1394i)), func_5(vec3<i32>(_wgslsmith_mod_i32(-25719i, i32(-1i) * -2147483647i), _wgslsmith_mod_i32(-3434i, _wgslsmith_add_i32(-15291i, -11182i)), _wgslsmith_dot_vec4_i32(~vec4<i32>(36792i, 21537i, -51747i, -2147483647i), vec4<i32>(19407i, 2147483647i, -1i, -28437i))), Struct_3(vec2<i32>(-1i, abs(-16786i)), Struct_1(abs(-1i), 40150u ^ global1[_wgslsmith_index_u32(u_input.b.x, 23u)], _wgslsmith_mult_u32(u_input.b.x, 4294967295u), ~global1[_wgslsmith_index_u32(51225u, 23u)]), func_1(), vec2<i32>(firstLeadingBit(-28007i), reverseBits(2147483647i))), -8928i, global1[_wgslsmith_index_u32(67493u, 23u)]), true, vec4<bool>(_wgslsmith_mult_i32(0i, -30812i) == reverseBits(select(2147483647i, 1i, true)), all(vec4<bool>(false, true, true, true)), all(vec2<bool>(all(vec3<bool>(true, true, false)), any(vec2<bool>(true, true)))), select(false, all(select(vec2<bool>(false, false), vec2<bool>(false, true), true)), true)));
    var_0 = -1275f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(736f, 675f))))))), ~(countOneBits(min(vec4<i32>(var_1.a.a, -5601i, 0i, var_1.a.a), vec4<i32>(-17541i, var_1.a.a, -35325i, 0i))) << (u_input.c % vec4<u32>(32u))));
}

