struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: bool,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 6>;

var<private> global1: vec2<i32>;

var<private> global2: array<vec2<f32>, 15>;

var<private> global3: Struct_2 = Struct_2(Struct_1(vec4<u32>(12175u, 11384u, 4294967295u, 17066u), false, false, -584f, vec2<u32>(4294967295u, 5325u)), Struct_1(vec4<u32>(57973u, 4294967295u, 32737u, 1u), true, true, 674f, vec2<u32>(0u, 0u)), Struct_1(vec4<u32>(2477u, 4294967295u, 9585u, 4294967295u), false, true, -119f, vec2<u32>(0u, 58394u)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<u32>) -> vec4<u32> {
    let var_0 = global1.x;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(arg_1.d - _wgslsmith_f_op_f32(abs(arg_2.b.d))))), arg_1.d);
    var var_2 = arg_2.b.d;
    global1 = _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(-(~vec2<i32>(-19081i, arg_0)), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(4971i, 1i), vec2<i32>(arg_0, arg_0)), min(-176i, 2147483647i)), _wgslsmith_div_vec2_i32(vec2<i32>(31641i, global1.x), vec2<i32>(arg_0, -2147483647i)) ^ vec2<i32>(global1.x, arg_0)), firstLeadingBit(firstLeadingBit(~vec2<i32>(0i, global1.x)))) >> (_wgslsmith_div_vec2_u32((vec2<u32>(global3.b.a.x, 0u) | arg_3) | _wgslsmith_clamp_vec2_u32(firstLeadingBit(arg_2.b.e), arg_1.a.yw, abs(arg_3)), ~(~global3.a.e | global3.b.a.wy)) % vec2<u32>(32u));
    let var_3 = true;
    return ~vec4<u32>(_wgslsmith_clamp_u32(u_input.b, _wgslsmith_dot_vec3_u32(~global3.b.a.wzw, global3.a.a.wxw), 30619u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.c.e.x, u_input.a), vec2<u32>(global3.c.e.x, 28695u)) % 32u)), _wgslsmith_dot_vec4_u32(arg_2.c.a >> (arg_1.a % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(9072u, 3576u, 12364u, arg_1.a.x), arg_1.a)), min(arg_2.c.e.x, ~arg_1.a.x) ^ ~(~27229u), ~min(0u, 54058u));
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = max(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 4294967295u), global3.c.a.zw)), vec2<u32>(_wgslsmith_sub_u32(firstLeadingBit(_wgslsmith_div_u32(4343u, 59162u)), u_input.a), _wgslsmith_div_u32(~4294967295u, global3.b.e.x ^ global3.a.a.x) | 1u));
    var_0 = ~reverseBits(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(4294967295u, 1u), u_input.a), 1u));
    global2 = array<vec2<f32>, 15>();
    let var_1 = global3.c.c;
    let var_2 = Struct_1(func_3(_wgslsmith_mod_i32(24003i, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, 19737i, global1.x, -19402i) & vec4<i32>(-1i, global1.x, global1.x, 2147483647i), vec4<i32>(global1.x, global1.x, global1.x, global1.x))), global3.c, Struct_2(global3.a, Struct_1(_wgslsmith_div_vec4_u32(global3.b.a, global3.c.a), any(vec4<bool>(global3.a.b, arg_0, arg_0, global3.b.b)), arg_0, global3.a.d, vec2<u32>(u_input.b, 0u) | vec2<u32>(14310u, 1166u)), global3.a), global3.c.a.xy), global3.a.d != _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1598f - global3.a.d), _wgslsmith_f_op_f32(-434f * 1764f)), -383f)), true, _wgslsmith_f_op_f32(-global3.a.d), ~_wgslsmith_mult_vec2_u32(global3.b.a.zz, global3.c.e));
    return Struct_1(global3.a.a, all(vec3<bool>(7475u > ~u_input.b, !all(vec2<bool>(arg_0, var_2.b)), all(vec3<bool>(true, true, true)))), true, -125f, var_2.a.yz);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec4<u32>) -> Struct_2 {
    global2 = array<vec2<f32>, 15>();
    global3 = Struct_2(Struct_1(vec4<u32>(arg_2.x, 1281u, ~arg_1.x, 16033u), all(select(select(vec4<bool>(global3.c.b, true, false, false), vec4<bool>(true, global3.c.c, arg_0.c, true), vec4<bool>(true, global3.b.b, true, true)), vec4<bool>(true, global3.c.c, false, global3.c.c), select(vec4<bool>(arg_0.b, arg_0.b, true, true), vec4<bool>(arg_0.c, true, false, global3.b.b), vec4<bool>(false, false, true, false)))), true, global3.b.d, global3.b.a.wz), global3.c, Struct_1(~(~func_2(global3.b.b).a), all(vec2<bool>(false, true)), !select(all(vec4<bool>(global3.a.b, true, global3.c.b, false)), global3.b.b, false), _wgslsmith_f_op_f32(trunc(global3.b.d)), min(~(~vec2<u32>(global3.b.a.x, u_input.b)), vec2<u32>(arg_0.e.x, 71329u) ^ ~vec2<u32>(arg_1.x, 7173u))));
    var var_0 = ~(~_wgslsmith_dot_vec4_u32(~(vec4<u32>(global3.b.a.x, arg_0.a.x, arg_2.x, arg_0.a.x) & vec4<u32>(arg_0.a.x, 4294967295u, 15909u, 35044u)), vec4<u32>(countOneBits(arg_1.x), 1u, arg_2.x, ~global3.c.e.x)));
    var_0 = _wgslsmith_dot_vec3_u32(arg_0.a.wxy, vec3<u32>(59168u, _wgslsmith_dot_vec4_u32(arg_0.a, arg_0.a), min(47291u, _wgslsmith_dot_vec4_u32(arg_1, vec4<u32>(19079u, arg_0.e.x, u_input.a, global3.a.a.x))) >> (~_wgslsmith_dot_vec4_u32(arg_2, global3.a.a) % 32u)));
    var var_1 = _wgslsmith_dot_vec3_i32(abs(reverseBits(-firstLeadingBit(vec3<i32>(global1.x, -33278i, 64106i)))), vec3<i32>(-1i) * -select(~vec3<i32>(global1.x, global1.x, global1.x), countOneBits(vec3<i32>(global1.x, -1i, -45743i)), select(vec3<bool>(arg_0.b, global3.a.b, false), vec3<bool>(arg_0.b, global3.a.b, global3.c.b), vec3<bool>(arg_0.b, false, arg_0.c))));
    return Struct_2(Struct_1(vec4<u32>(4294967295u, _wgslsmith_mult_u32(arg_0.a.x, _wgslsmith_sub_u32(arg_2.x, arg_1.x)), global3.a.a.x << (71617u % 32u), ~_wgslsmith_add_u32(arg_1.x, 44837u)), !arg_0.b, global3.c.c, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d + 409f)))), abs(vec2<u32>(_wgslsmith_mult_u32(0u, arg_0.a.x), ~12808u))), Struct_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(~1u, global3.a.a.x, abs(global3.b.e.x), 4294967295u), (arg_2 >> (vec4<u32>(global3.b.e.x, arg_2.x, arg_1.x, arg_0.a.x) % vec4<u32>(32u))) << (vec4<u32>(1u, 36287u, arg_0.a.x, 0u) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(firstLeadingBit(global3.a.a), global3.b.a, abs(global3.a.a))), func_2(arg_0.c == global3.a.c).c != true, u_input.a > arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.d))), func_2(false).a.yw), Struct_1(arg_1, any(vec2<bool>(func_2(arg_0.b).b, all(vec2<bool>(global3.a.c, true)))), arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -421f)), vec2<u32>(arg_0.a.x, abs(abs(0u)))));
}

fn func_5(arg_0: Struct_2, arg_1: vec2<i32>) -> Struct_1 {
    return arg_0.b;
}

fn func_1(arg_0: vec2<bool>, arg_1: u32) -> Struct_2 {
    var var_0 = global3.c;
    var var_1 = ~_wgslsmith_sub_vec3_u32(var_0.a.xzz ^ abs(~vec3<u32>(1u, u_input.a, global3.c.e.x)), vec3<u32>(864u, global3.c.e.x, var_0.e.x | var_0.e.x) | ~global3.b.a.yxy);
    var var_2 = 90561u;
    var_2 = 42407u & _wgslsmith_sub_u32(u_input.b, 21294u);
    let var_3 = arg_0;
    return Struct_2(func_5(func_4(func_2(arg_0.x), _wgslsmith_add_vec4_u32(min(vec4<u32>(global3.c.e.x, var_1.x, 8554u, global3.b.e.x), vec4<u32>(var_1.x, 26835u, 73934u, 49449u)), firstLeadingBit(global3.b.a)), ~var_0.a), select(vec2<i32>(global1.x ^ 1410i, global1.x | global1.x), _wgslsmith_mod_vec2_i32(~vec2<i32>(57449i, -2147483647i), select(vec2<i32>(1i, -1i), vec2<i32>(-52254i, 21248i), vec2<bool>(var_0.c, true))), all(vec2<bool>(true, true)))), func_5(Struct_2(Struct_1(vec4<u32>(arg_1, 4294967295u, 4294967295u, 1u), !var_3.x, global3.b.c, 1f, vec2<u32>(49419u, global3.a.e.x)), func_2(false != arg_0.x), func_4(Struct_1(var_0.a, var_3.x, var_3.x, -1615f, global3.a.a.zz), func_2(true).a, vec4<u32>(arg_1, 4294967295u, arg_1, var_0.e.x)).a), _wgslsmith_mod_vec2_i32(~abs(vec2<i32>(global1.x, global1.x)), countOneBits(vec2<i32>(-1i, -1i)))), Struct_1(vec4<u32>(9816u, ~(~27389u), func_3(global1.x, Struct_1(vec4<u32>(0u, global3.a.a.x, var_0.e.x, 70425u), false, true, -460f, var_1.xx), func_4(global3.c, global3.b.a, var_0.a), _wgslsmith_sub_vec2_u32(var_0.a.zx, vec2<u32>(var_0.e.x, 4294967295u))).x, arg_1), _wgslsmith_div_i32(52764i, _wgslsmith_mod_i32(global1.x, global1.x)) < -1i, false, var_0.d, ~(~vec2<u32>(var_1.x, global3.c.a.x) & ~vec2<u32>(1u, 14164u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = ~countOneBits(0u);
    let var_2 = global3.a;
    global3 = func_1(select(!select(select(vec2<bool>(true, var_0), vec2<bool>(true, false), vec2<bool>(true, var_0)), vec2<bool>(false, true), select(vec2<bool>(false, global3.c.c), vec2<bool>(false, var_2.b), false)), vec2<bool>(true, any(!vec3<bool>(global3.a.b, false, true))), !(!var_2.b)), global3.c.a.x);
    var var_3 = Struct_2(func_2(true), Struct_1(~vec4<u32>(~global3.a.e.x, ~var_1, countOneBits(18126u), u_input.a), var_0, func_4(func_4(global3.b, vec4<u32>(var_1, 0u, global3.a.a.x, 0u), global3.b.a).c, _wgslsmith_sub_vec4_u32(select(global3.b.a, var_2.a, true), vec4<u32>(78693u, 73434u, var_1, global3.c.a.x)), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(475u, var_1, 32826u, 4294967295u), vec4<u32>(4294967295u, u_input.b, 0u, var_2.e.x)), var_2.a)).c.c, _wgslsmith_f_op_f32(-237f + -1000f), func_3(-29771i, Struct_1(var_2.a, true, 4794u < var_2.a.x, global3.a.d, vec2<u32>(global3.c.a.x, 1u)), Struct_2(func_2(global3.a.b), Struct_1(vec4<u32>(var_2.a.x, 57300u, var_1, u_input.b), false, global3.c.b, var_2.d, var_2.e), global3.b), min(_wgslsmith_mod_vec2_u32(var_2.e, var_2.e), abs(var_2.a.zy))).xz), Struct_1(vec4<u32>(reverseBits(countOneBits(0u)), _wgslsmith_add_u32(~global3.a.a.x, ~u_input.b), 2575u, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(global3.a.a.xyy, global3.a.a.yyz), ~vec3<u32>(global3.c.a.x, 0u, global3.c.a.x))), (false || (true && var_0)) || ((global3.a.c | global3.c.c) || (global3.a.d != -426f)), (global1.x == 1i) && true, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-func_5(Struct_2(global3.a, global3.c, global3.c), vec2<i32>(2147483647i, global1.x)).d))), ~_wgslsmith_sub_vec2_u32(global3.a.a.xw, vec2<u32>(0u, 0u))));
    let var_4 = func_3(-2147483647i, var_3.a, Struct_2(Struct_1(_wgslsmith_add_vec4_u32(func_3(36857i, var_3.b, Struct_2(var_3.b, var_3.c, Struct_1(vec4<u32>(global3.c.a.x, var_1, u_input.a, 0u), true, var_0, var_2.d, vec2<u32>(4294967295u, 50317u))), var_3.c.a.xy), _wgslsmith_clamp_vec4_u32(var_3.c.a, var_3.c.a, vec4<u32>(4002u, 0u, 0u, u_input.b))), var_2.b, !var_3.b.b, var_3.c.d, vec2<u32>(u_input.a, 24855u)), func_1(select(vec2<bool>(global3.c.b, true), vec2<bool>(global3.a.c, true), !vec2<bool>(true, var_3.c.c)), func_5(func_4(Struct_1(var_3.a.a, var_0, false, var_3.a.d, var_3.a.e), var_3.c.a, var_3.b.a), vec2<i32>(global1.x, -2147483647i)).e.x).c, func_4(func_5(func_4(Struct_1(vec4<u32>(61875u, global3.b.e.x, 39175u, 0u), var_2.c, var_0, -906f, vec2<u32>(58500u, var_2.e.x)), vec4<u32>(global3.c.a.x, u_input.b, var_3.a.a.x, var_1), var_3.a.a), abs(vec2<i32>(global1.x, 49063i))), ~vec4<u32>(0u, 0u, 66881u, var_3.c.e.x), ~vec4<u32>(u_input.b, 28972u, 4294967295u, 0u)).b), firstLeadingBit(var_3.b.a.yx | ~firstLeadingBit(vec2<u32>(global3.b.e.x, 69072u)))).xww;
    var var_5 = select(!vec4<bool>(!(global1.x != 43959i), ~(-11920i) >= -global1.x, !select(true, true, global3.b.c), func_1(!vec2<bool>(false, global3.c.c), _wgslsmith_add_u32(4294967295u, var_3.b.e.x)).a.b), select(select(vec4<bool>(func_1(vec2<bool>(false, global3.b.c), 0u).a.c, all(vec2<bool>(true, false)), true, true), vec4<bool>(true & var_3.c.b, all(vec4<bool>(true, false, false, global3.c.b)), !var_2.b, !var_0), var_3.c.c), select(select(vec4<bool>(var_2.b, true, true, global3.a.b), select(vec4<bool>(true, var_3.a.c, var_2.b, var_3.a.b), vec4<bool>(global3.a.c, var_2.b, false, true), true), true), select(select(vec4<bool>(var_0, var_3.c.b, var_0, false), vec4<bool>(false, var_3.a.b, true, true), false), select(vec4<bool>(true, global3.a.c, true, global3.b.b), vec4<bool>(var_2.c, var_0, var_0, true), vec4<bool>(true, false, false, var_3.a.b)), select(vec4<bool>(true, true, var_0, false), vec4<bool>(true, var_0, var_2.c, true), vec4<bool>(global3.c.c, true, false, false))), select(vec4<bool>(false, false, var_0, var_3.c.b), select(vec4<bool>(true, true, false, global3.b.c), vec4<bool>(var_2.b, false, false, global3.c.c), false), !vec4<bool>(true, var_0, global3.b.c, true))), true), var_3.c.c);
    let var_6 = Struct_1(~vec4<u32>(abs(~var_3.a.a.x), ~_wgslsmith_clamp_u32(u_input.a, 50737u, 4294967295u), _wgslsmith_div_u32(var_2.e.x, global3.b.a.x), var_3.b.e.x), !any(!(!vec4<bool>(var_2.c, var_5.x, global3.c.b, var_2.b))), firstLeadingBit(var_4.x) > (u_input.b ^ ~(~var_4.x)), 404f, ~vec2<u32>(~u_input.a, func_4(Struct_1(vec4<u32>(u_input.b, 9327u, global3.b.e.x, 1u), var_3.b.b, global3.c.c, global3.a.d, var_4.xx), vec4<u32>(4294967295u, 0u, 36920u, 4294967295u), global3.c.a).c.a.x) << (~vec2<u32>(func_4(Struct_1(vec4<u32>(global3.a.e.x, 41547u, global3.c.a.x, 1u), true, true, var_2.d, var_4.zy), vec4<u32>(u_input.b, u_input.b, var_3.b.e.x, 21028u), var_3.a.a).a.a.x, select(global3.b.a.x, var_1, global3.a.c)) % vec2<u32>(32u)));
    var_3 = func_4(var_6, _wgslsmith_mod_vec4_u32(countOneBits(var_2.a), func_4(func_2(false), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_1, var_4.x, 14324u), ~vec4<u32>(21269u, u_input.a, 48825u, 13846u)), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global3.b.e.x, global3.b.e.x, global3.c.e.x, 67166u), vec4<u32>(0u, 0u, global3.b.a.x, 44431u)), vec4<u32>(60003u, 9036u, 4294967295u, 0u))).c.a), global3.a.a | vec4<u32>(51808u, ~(var_4.x >> (global3.b.e.x % 32u)), var_1, ~(~var_2.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.d))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(214f, global3.b.d, -272f) - _wgslsmith_div_vec3_f32(vec3<f32>(global3.b.d, var_6.d, var_6.d), vec3<f32>(-1299f, -1794f, -620f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(181f, var_2.d, 719f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(419f, var_2.d, -821f)), vec3<bool>(false, var_3.a.b, true))))), 1u >> (func_2(_wgslsmith_f_op_f32(-var_2.d) < -1000f).a.x % 32u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1110f, global3.a.d, 313f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_6.d, global3.a.d, 1425f) - vec3<f32>(771f, var_2.d, 998f))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -296f), _wgslsmith_f_op_f32(f32(-1f) * -1215f), _wgslsmith_f_op_f32(round(global3.a.d)))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-var_2.d), -491f, _wgslsmith_f_op_f32(global3.a.d + -561f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-622f, var_6.d, var_6.d)))), true))), _wgslsmith_f_op_f32(max(-577f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-1883f, var_3.a.d), _wgslsmith_f_op_f32(round(global3.c.d))) * _wgslsmith_f_op_f32(-var_6.d)))));
}

