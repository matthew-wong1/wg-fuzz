struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<f32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: u32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<f32>(1154f, -703f), vec4<u32>(0u, 38623u, 63472u, 0u), vec3<i32>(-1i, -21023i, 0i), 24797u, vec4<f32>(-2082f, -1478f, 1083f, -336f));

var<private> global1: vec2<i32>;

var<private> global2: vec3<u32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2() -> Struct_1 {
    let var_0 = -1015f;
    global1 = firstLeadingBit(_wgslsmith_div_vec2_i32(~global0.c.xz, -_wgslsmith_add_vec2_i32(min(vec2<i32>(0i, -9075i), vec2<i32>(-2147483647i, -2147483647i)), firstTrailingBit(global0.c.zx))));
    var var_1 = -1000f;
    return Struct_1(false, global0.d, vec3<f32>(_wgslsmith_div_f32(global0.e.x, _wgslsmith_f_op_f32(sign(global0.e.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(212f, _wgslsmith_f_op_f32(step(1457f, global0.a.x))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0)))), var_0), u_input.b.x, true);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> bool {
    let var_0 = Struct_2(31151u);
    global1 = firstTrailingBit(_wgslsmith_mult_vec2_i32(-_wgslsmith_div_vec2_i32(vec2<i32>(global0.c.x, global1.x), vec2<i32>(1i, 1i)), min(abs(countOneBits(global0.c.yz)), min(firstTrailingBit(global0.c.xx), -global0.c.xy))));
    global2 = vec3<u32>(var_0.a, func_2().b, abs(countOneBits(62469u) << ((u_input.a >> (~var_0.a % 32u)) % 32u)));
    let var_1 = Struct_3(arg_1.c.yy, _wgslsmith_mod_vec4_u32(select(global0.b, arg_0, any(!vec2<bool>(arg_1.e, arg_1.e))), vec4<u32>(_wgslsmith_sub_u32(531u, arg_1.b) | ~0u, var_0.a, abs(1u) >> (countOneBits(global2.x) % 32u), abs(u_input.b.x))), max(firstLeadingBit(vec3<i32>(_wgslsmith_div_i32(global1.x, -1i), 1i, abs(global1.x))), global0.c), u_input.b.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1450f, global0.a.x, arg_1.c.x, -1321f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(global0.e, global0.e)) - global0.e))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(global0.e, vec4<f32>(global0.e.x, arg_1.c.x, -1600f, global0.a.x))) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-422f, global0.e.x, -1000f, -1456f), global0.e))))));
    var var_2 = var_1;
    return true;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: Struct_2) -> Struct_2 {
    global1 = _wgslsmith_mult_vec2_i32(vec2<i32>(countOneBits(48901i), 1i), max(global0.c.zz, _wgslsmith_div_vec2_i32(vec2<i32>(-12015i, global1.x), select(reverseBits(vec2<i32>(30653i, global0.c.x)), ~global0.c.yy, true))));
    global1 = ~_wgslsmith_div_vec2_i32(-_wgslsmith_mod_vec2_i32(global0.c.xy | global0.c.yz, vec2<i32>(global0.c.x, global0.c.x) >> (vec2<u32>(12839u, arg_3.a) % vec2<u32>(32u))), max(_wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(global1.x, -29131i), global0.c.zz, global0.c.zy), ~global0.c.xx, firstLeadingBit(vec2<i32>(4508i, 2147483647i))), global0.c.yz));
    var var_0 = reverseBits(select(global0.c, vec3<i32>(-1i) * -global0.c, select(arg_1, !arg_1, !any(vec3<bool>(arg_0.a, arg_1.x, arg_1.x)))));
    var var_1 = _wgslsmith_sub_i32(select(62320i, -_wgslsmith_div_i32(abs(global1.x), _wgslsmith_mod_i32(global0.c.x, var_0.x)), false), _wgslsmith_mult_i32(1i, _wgslsmith_clamp_i32(0i, global1.x, global1.x)));
    var_0 = vec3<i32>(abs((global0.c.x & _wgslsmith_mod_i32(var_0.x, -23182i)) >> (_wgslsmith_sub_u32(7535u, arg_3.a & 3184u) % 32u)), 35459i, global0.c.x);
    return arg_3;
}

fn func_1() -> Struct_2 {
    var var_0 = func_4(func_2(), select(select(vec3<bool>(true, true, true), vec3<bool>(any(vec4<bool>(true, false, false, true)), func_3(vec4<u32>(0u, global0.d, 33671u, global2.x), Struct_1(false, u_input.b.x, vec3<f32>(-1141f, 1000f, global0.e.x), global0.b.x, true)), false), true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true)), vec3<bool>(false, true, false), true), true), Struct_2(u_input.b.x), Struct_2(global2.x));
    global1 = global0.c.zy;
    global2 = ((firstTrailingBit(u_input.b) << (u_input.b % vec3<u32>(32u))) ^ _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(31387u, u_input.a), firstLeadingBit(11615u), 80112u), ~_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 0u, var_0.a), vec3<u32>(var_0.a, 4294967295u, 0u)))) & vec3<u32>(global0.b.x, u_input.b.x, _wgslsmith_add_u32(_wgslsmith_add_u32(0u, max(4294967295u, 11812u)), u_input.b.x));
    var var_1 = _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_add_u32(48863u, countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0.a, global0.d, 1u), global0.b))), u_input.b.x), firstTrailingBit(~u_input.b.yx));
    let var_2 = true;
    return func_4(func_2(), select(select(select(select(vec3<bool>(false, var_2, true), vec3<bool>(var_2, var_2, var_2), vec3<bool>(var_2, var_2, true)), !vec3<bool>(var_2, var_2, var_2), var_2), vec3<bool>(var_2, var_2, true), vec3<bool>(func_2().e, var_2, true)), vec3<bool>(false, var_2, var_2 | (var_2 == false)), select(vec3<bool>(!var_2, any(vec4<bool>(true, var_2, true, var_2)), var_1.x > 4294967295u), !vec3<bool>(true, var_2, false), vec3<bool>(func_2().a, all(vec3<bool>(true, var_2, false)), var_2))), func_4(Struct_1(any(vec3<bool>(true, false, false)), u_input.b.x | 1u, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.e.zyx + global0.e.xyy), global0.e.wwx), var_1.x, true == (true | var_2)), !vec3<bool>(true, var_2 || var_2, global1.x >= -2634i), func_4(func_2(), !(!vec3<bool>(var_2, true, false)), func_4(func_2(), vec3<bool>(false, false, var_2), Struct_2(global2.x), Struct_2(global2.x)), func_4(Struct_1(true, 12865u, global0.e.zzw, 9196u, false), select(vec3<bool>(var_2, true, false), vec3<bool>(var_2, true, true), vec3<bool>(var_2, var_2, false)), func_4(Struct_1(true, global0.d, global0.e.wxx, 75026u, true), vec3<bool>(false, var_2, true), Struct_2(global2.x), Struct_2(0u)), func_4(Struct_1(true, 29402u, global0.e.zzy, var_0.a, false), vec3<bool>(var_2, true, var_2), Struct_2(72054u), Struct_2(global2.x)))), Struct_2(firstTrailingBit(global0.d))), func_4(Struct_1(true, global2.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, global0.a.x, 264f) + vec3<f32>(global0.e.x, -247f, global0.a.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(473f, 1268f, global0.e.x))), global2.x, u_input.b.x >= (4294967295u & global2.x)), !select(vec3<bool>(true, var_2, var_2), select(vec3<bool>(var_2, var_2, var_2), vec3<bool>(true, var_2, var_2), var_2), !vec3<bool>(var_2, false, var_2)), Struct_2(~reverseBits(u_input.b.x)), Struct_2(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 47433u), ~u_input.b.xy))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32, arg_3: u32) -> f32 {
    global1 = -global0.c.yy;
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.c.x, arg_1.c.x) + vec2<f32>(global0.a.x, global0.e.x)))), ~global0.b, _wgslsmith_clamp_vec3_i32(vec3<i32>(-_wgslsmith_clamp_i32(global0.c.x, arg_2, global1.x), -43089i, ~2147483647i), vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.c.x, arg_2, global0.c.x, arg_2), vec4<i32>(arg_2, global1.x, arg_2, arg_2)), -arg_2), _wgslsmith_add_i32(global1.x | global1.x, -2147483647i), -63459i), ~abs(-global0.c)), select(0u, u_input.a, !any(select(vec2<bool>(false, arg_1.a), vec2<bool>(true, false), vec2<bool>(false, arg_1.a)))), global0.e);
    var var_1 = arg_1.e;
    var var_2 = func_1();
    var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.a - vec2<f32>(1607f, var_0.a.x))), _wgslsmith_f_op_vec2_f32(-var_0.a)))), _wgslsmith_mult_vec4_u32(~(var_0.b ^ firstLeadingBit(vec4<u32>(arg_3, 0u, var_0.d, global0.d))), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(29266u, global2.x, arg_3, 52361u)), _wgslsmith_mult_vec4_u32(~vec4<u32>(24163u, 4294967295u, u_input.a, var_2.a), global0.b))), var_0.c, ~1u, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1598f), arg_1.c.x, 584f, -312f) * _wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.x, var_0.a.x, arg_1.c.x, global0.e.x), vec4<f32>(global0.a.x, global0.e.x, arg_1.c.x, global0.a.x))))));
    return -656f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_5(func_1(), Struct_1(false != (true & (global0.a.x > global0.a.x)), firstLeadingBit(max(_wgslsmith_mod_u32(47395u, 5380u), firstLeadingBit(global2.x))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.e.x, -1226f, -1989f))))), ~_wgslsmith_dot_vec4_u32(firstLeadingBit(global0.b), _wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.b.x, 31138u, 18912u), vec4<u32>(6791u, 91727u, 47752u, 0u))), all(vec4<bool>(true, true, true, true))), abs(-42619i), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(~global0.b.zxx, abs(global0.b.yzw), reverseBits(u_input.b)), vec3<u32>(~0u, u_input.a, ~global2.x), ~(~global0.b.zzy)), ~(_wgslsmith_sub_vec3_u32(u_input.b, vec3<u32>(global0.b.x, 53382u, u_input.a)) ^ select(u_input.b, vec3<u32>(8642u, 17694u, u_input.a), vec3<bool>(false, true, false))))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a.x), -1488f);
    global2 = global0.b.xyw;
    global2 = ~(~_wgslsmith_mod_vec3_u32(global0.b.zzy, _wgslsmith_sub_vec3_u32(u_input.b ^ global0.b.xzz, ~u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.e.xyw) - vec3<f32>(580f, 444f, 1680f)) * global0.e.xzz))), _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(global0.e.x + 1160f)));
}

