struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec3<f32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: Struct_1 = Struct_1(vec4<bool>(false, true, true, true), -1i, vec3<f32>(904f, 549f, -2040f), vec4<i32>(13086i, 1i, 9035i, 2147483647i));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_3) -> vec4<i32> {
    var var_0 = vec2<i32>(u_input.a.x, u_input.a.x);
    global1 = Struct_1(!(!global1.a), ~(-2147483647i), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(trunc(global1.c.x)), global0.x, -219f))), _wgslsmith_f_op_vec3_f32(select(arg_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(587f, arg_0.x, -691f) - vec3<f32>(arg_0.x, global0.x, -264f)) * _wgslsmith_f_op_vec3_f32(-global1.c)), global1.a.ywz)))), max(-max(vec4<i32>(u_input.a.x, u_input.a.x, -1i, global1.b), -vec4<i32>(global1.b, 0i, 2147483647i, 1i)), _wgslsmith_div_vec4_i32(reverseBits(~global1.d), max(vec4<i32>(var_0.x, global1.d.x, u_input.a.x, 2147483647i), vec4<i32>(-1i, var_0.x, u_input.a.x, 1i)))));
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(arg_0.x))));
    var_0 = global1.d.wx;
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1465f), _wgslsmith_f_op_f32(arg_1.a - arg_1.a), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - arg_1.a))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 1219f, global1.c.x, -786f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.x, arg_0.x, 915f, -321f)), vec4<f32>(307f, global0.x, -103f, global0.x))))));
    return max(vec4<i32>(-2315i, 2147483647i, var_0.x, var_0.x | u_input.a.x), global1.d);
}

fn func_2() -> Struct_1 {
    var var_0 = false;
    var var_1 = Struct_1(global1.a, -2147483647i, vec3<f32>(global0.x, _wgslsmith_f_op_f32(global1.c.x - global0.x), _wgslsmith_f_op_f32(f32(-1f) * -1662f)), ~max(~func_3(global0.xxw, Struct_3(-154f)), u_input.a));
    var var_2 = true;
    var_1 = Struct_1(!vec4<bool>(all(vec3<bool>(var_1.a.x, false, false)), false, !(true | var_1.a.x), true), -(~_wgslsmith_clamp_i32(-4247i, global1.b, u_input.a.x << (u_input.b % 32u))), _wgslsmith_f_op_vec3_f32(ceil(var_1.c)), ~var_1.d | vec4<i32>(u_input.a.x, _wgslsmith_add_i32(global1.b & -2147483647i, ~global1.b), global1.d.x, var_1.d.x));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) * -1048f)))) + -1889f);
    return Struct_1(!select(select(select(vec4<bool>(global1.a.x, true, var_1.a.x, global1.a.x), vec4<bool>(true, var_1.a.x, false, true), true), !global1.a, !var_1.a.x), global1.a, var_1.a), global1.d.x | -(~_wgslsmith_dot_vec4_i32(global1.d, vec4<i32>(u_input.a.x, var_1.d.x, u_input.a.x, 0i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1824f, var_1.c.x, global1.c.x) * vec3<f32>(1016f, global0.x, global1.c.x)))) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_div_f32(675f, -1291f), 940f, _wgslsmith_div_f32(global0.x, global1.c.x)), vec3<f32>(499f, _wgslsmith_f_op_f32(floor(-328f)), 654f)))), -vec4<i32>(2147483647i, -(~(-1i)), 34515i, countOneBits(~global1.d.x)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(max(arg_0.c, _wgslsmith_f_op_vec3_f32(-arg_0.c)));
    var var_1 = Struct_3(-1546f);
    let var_2 = Struct_3(2520f);
    var_1 = var_2;
    let var_3 = func_2();
    return ~u_input.a;
}

fn func_1() -> Struct_1 {
    var var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -518f), -198f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-1f))));
    let var_1 = global0.x;
    var var_2 = _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, 4294967295u, 15103u, 4294967295u) << (vec4<u32>(u_input.c, 1u, u_input.b, 4294967295u) % vec4<u32>(32u)), vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.c)), firstTrailingBit(~(vec4<u32>(4294967295u, 49611u, 0u, 0u) >> (vec4<u32>(0u, u_input.b, 4294967295u, u_input.b) % vec4<u32>(32u))))), u_input.b);
    var var_3 = Struct_2(Struct_1(!select(global1.a, !global1.a, select(true, global1.a.x, global1.a.x)), 10581i, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, global0.x, -172f) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1.c.x, -1457f, global0.x), vec3<f32>(-331f, var_0.x, 687f)))), global0.yyz)), func_4(func_2(), ~select(vec2<u32>(u_input.b, u_input.c), vec2<u32>(u_input.c, 4294967295u), vec2<bool>(global1.a.x, false)))), _wgslsmith_clamp_i32(7509i, -(0i & ~global1.d.x), 31236i));
    global1 = Struct_1(var_3.a.a, -1i, _wgslsmith_f_op_vec3_f32(var_3.a.c + var_3.a.c), func_3(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.c.x, var_0.x, _wgslsmith_f_op_f32(round(global1.c.x))), _wgslsmith_f_op_vec3_f32(max(global0.wxw, vec3<f32>(global0.x, var_3.a.c.x, -354f))))), Struct_3(var_3.a.c.x)));
    return var_3.a;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = arg_2.d;
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(arg_3.c.x * global0.x), arg_2.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(step(global0.x, global0.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-525f, -1000f, arg_3.c.x, arg_2.c.x))), vec4<f32>(arg_1.a.c.x, 676f, global0.x, -1829f), vec4<bool>(global1.a.x, global1.a.x, true, true)))))));
    global1 = arg_1.a;
    var var_1 = select(arg_3.a, select(arg_1.a.a, func_2().a, !arg_2.a), 423f >= arg_0.a);
    var_1 = arg_2.a;
    return var_1.yyw;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(global1.d.x ^ -11957i, firstTrailingBit(-(reverseBits(u_input.a.x) | (u_input.a.x >> (u_input.b % 32u)))), false || (false && any(!global1.a.zx)));
    global0 = vec4<f32>(_wgslsmith_div_f32(global0.x, _wgslsmith_div_f32(1000f, -1000f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(round(global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.c.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -665f) - _wgslsmith_f_op_f32(-global1.c.x)))), -313f);
    var var_1 = !func_5(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.c.x)) - global1.c.x)), Struct_2(func_1(), ~(-61082i)), Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_dot_vec3_i32(global1.d.zxw, global1.d.yxz) ^ (global1.d.x >> (u_input.b % 32u)), func_1().c, vec4<i32>(-1i) * -global1.d), Struct_1(func_1().a, -2147483647i, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.xyx), vec3<f32>(global0.x, global0.x, global1.c.x)), global1.d));
    var var_2 = Struct_1(func_2().a, _wgslsmith_clamp_i32(max(u_input.a.x, _wgslsmith_mod_i32(countOneBits(global1.d.x), 6851i)), global1.b, _wgslsmith_dot_vec4_i32(vec4<i32>(func_1().b, -1i, abs(2147483647i), countOneBits(-54578i)), -(vec4<i32>(-34842i, u_input.a.x, 0i, 22070i) ^ vec4<i32>(1i, -1i, 22279i, var_0)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global0.zxx, vec3<f32>(-1000f, _wgslsmith_f_op_f32(448f * 167f), global1.c.x))), u_input.a);
    let var_3 = _wgslsmith_div_vec3_i32(~_wgslsmith_add_vec3_i32(var_2.d.ywx, vec3<i32>(u_input.a.x, 2147483647i, -2147483647i)), abs(reverseBits(select(vec3<i32>(1i, var_2.b, global1.b), u_input.a.wzz, global1.a.x)))) ^ _wgslsmith_add_vec3_i32(vec3<i32>(1i, 9940i & var_2.d.x, _wgslsmith_sub_i32(u_input.a.x, 0i)) >> (~reverseBits(vec3<u32>(1u, u_input.b, 1u)) % vec3<u32>(32u)), vec3<i32>(var_0, -u_input.a.x, -1i));
    let var_4 = Struct_2(func_2(), -func_4(Struct_1(!vec4<bool>(var_1.x, global1.a.x, false, true), _wgslsmith_dot_vec4_i32(var_2.d, u_input.a), vec3<f32>(-1231f, global1.c.x, -1730f), firstLeadingBit(var_2.d)), select(~vec2<u32>(4294967295u, 8000u), vec2<u32>(u_input.b, u_input.b) | vec2<u32>(4294967295u, u_input.c), vec2<bool>(true, var_2.a.x))).x);
    var var_5 = var_4.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~(abs(u_input.c) >> (_wgslsmith_add_u32(u_input.b, u_input.c) % 32u)), 4294967295u, u_input.b, ~(~4294967295u)), vec2<i32>(-2147483647i, -11600i), firstLeadingBit(_wgslsmith_div_i32(var_4.b, _wgslsmith_mod_i32(u_input.a.x << (15285u % 32u), -2147483647i))), -32295i);
}

