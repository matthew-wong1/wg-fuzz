struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: bool,
    d: vec2<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: bool = false;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2) -> bool {
    global1 = u_input.a < ~54864u;
    global0 = Struct_2(arg_0.a, -u_input.b, arg_0.c);
    var var_0 = 0u;
    var var_1 = Struct_1(abs(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(u_input.b, -906i, 2147483647i, 2147483647i)), ~vec4<i32>(0i, -47644i, u_input.b, u_input.b)), vec4<i32>(5313i, ~(-2147483647i), ~u_input.b, global0.b))), vec3<i32>(_wgslsmith_add_i32(-1i, abs(u_input.b) ^ -global0.b), -1i, u_input.b), global0.c.x, _wgslsmith_mod_vec2_u32(select(~vec2<u32>(4294967295u, u_input.a), reverseBits(vec2<u32>(u_input.a, u_input.a)), vec2<bool>(false, true)), vec2<u32>(0u, 4294967295u) & (vec2<u32>(u_input.a, 50887u) & vec2<u32>(24856u, u_input.a))) | select(vec2<u32>(1u, 1u) | firstLeadingBit(vec2<u32>(u_input.a, u_input.a)), abs(vec2<u32>(u_input.a, 39264u)), global0.c.x), arg_0.c.xz);
    global1 = global0.a.x != abs(~firstLeadingBit(~9630i));
    return true;
}

fn func_2() -> i32 {
    var var_0 = vec2<bool>(u_input.b == u_input.b, func_3(Struct_2(global0.a, global0.b, !global0.c)));
    var_0 = select(vec2<bool>(false, !(!(!global0.c.x))), !global0.c.xw, select(!global0.c.yw, !select(vec2<bool>(true, true), global0.c.zz, vec2<bool>(global0.c.x, false)), !vec2<bool>(true, !global0.c.x)));
    var var_1 = 0i & global0.a.x;
    var var_2 = Struct_1(-vec4<i32>(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 2147483647i, global0.a.x, global0.b), vec4<i32>(4301i, global0.a.x, u_input.b, global0.a.x))), -2147483647i, _wgslsmith_dot_vec3_i32(-vec3<i32>(global0.b, -2147483647i, u_input.b), -global0.a), ~global0.b), vec3<i32>(_wgslsmith_sub_i32(-min(0i, 25955i), -1i), -global0.a.x, -_wgslsmith_dot_vec4_i32(min(vec4<i32>(0i, 4915i, 61092i, u_input.b), vec4<i32>(-1i, u_input.b, global0.a.x, global0.a.x)), vec4<i32>(u_input.b, 0i, global0.b, global0.a.x))), global0.c.x, vec2<u32>(~firstLeadingBit(54202u) & (1601u >> (~u_input.a % 32u)), ~(_wgslsmith_add_u32(u_input.a, u_input.a) & (u_input.a ^ 136703u))), vec2<bool>(!func_3(Struct_2(vec3<i32>(-12595i, 1i, u_input.b), -1i, vec4<bool>(false, false, false, true))), false));
    var var_3 = countOneBits(~vec3<u32>(firstLeadingBit(abs(4294967295u)), ~abs(var_2.d.x), var_2.d.x));
    return -var_2.b.x;
}

fn func_4(arg_0: i32, arg_1: vec4<i32>) -> Struct_2 {
    let var_0 = ~arg_1.x;
    let var_1 = _wgslsmith_add_i32(-(~(-17377i) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, u_input.a, 4294967295u) >> (vec4<u32>(u_input.a, 4294967295u, 1867u, 1u) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(u_input.a, u_input.a, 0u, 7102u))) % 32u)), _wgslsmith_sub_i32(global0.a.x, ~(-global0.a.x) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a) >> (vec3<u32>(67913u, u_input.a, u_input.a) % vec3<u32>(32u)), reverseBits(vec3<u32>(0u, 4294967295u, 4294967295u))) % 32u)));
    var var_2 = Struct_2(~abs(global0.a), 29215i, vec4<bool>(!global0.c.x, !(!global0.c.x != (false & global0.c.x)), 4294967295u == firstTrailingBit(u_input.a >> (27123u % 32u)), all(select(vec2<bool>(global0.c.x, true), global0.c.xx, true))));
    var var_3 = 0u;
    global0 = Struct_2(~(-var_2.a), -var_1, global0.c);
    return Struct_2(vec3<i32>(_wgslsmith_dot_vec2_i32(arg_1.xy, vec2<i32>(_wgslsmith_add_i32(2147483647i, u_input.b), 0i)), i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 31414i), vec2<i32>(0i, -12041i)), i32(-1i) * -37306i), -5395i, !select(var_2.c, global0.c, vec4<bool>(any(var_2.c.zxx), any(vec3<bool>(true, true, false)), all(global0.c.zxz), true)));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: i32, arg_3: Struct_3) -> vec3<u32> {
    let var_0 = vec4<bool>(false, any(vec2<bool>(true, arg_1.b.e.x)), false, false);
    global0 = func_4(arg_1.b.a.x, vec4<i32>(arg_3.b.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(abs(global0.b), 1i, func_2()), ~arg_1.b.a.wzz << (~vec3<u32>(76227u, arg_3.b.d.x, 47918u) % vec3<u32>(32u))), countOneBits(1i), arg_1.b.a.x));
    let var_1 = Struct_3(arg_3.a, arg_1.b, u_input.a);
    global1 = var_0.x;
    global1 = any(vec4<bool>(true, true == !all(var_0), true, true));
    return _wgslsmith_mult_vec3_u32(~(~(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 0u, 59432u), vec3<u32>(var_1.b.d.x, var_1.b.d.x, var_1.c)) << (_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.c, 4294967295u, arg_1.b.d.x), vec3<u32>(34472u, 32333u, 4294967295u)) % vec3<u32>(32u)))), _wgslsmith_div_vec3_u32(~vec3<u32>(arg_1.c, 0u, u_input.a), _wgslsmith_mult_vec3_u32(~(vec3<u32>(88900u, u_input.a, 67222u) & vec3<u32>(u_input.a, arg_0.x, u_input.a)), _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(15479u, 0u, arg_1.c), vec3<u32>(arg_1.b.d.x, arg_1.c, 0u)), ~vec3<u32>(arg_1.b.d.x, 1u, var_1.b.d.x)))));
}

fn func_5(arg_0: u32, arg_1: vec4<bool>) -> Struct_2 {
    global0 = func_4(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(-select(vec3<i32>(1i, -518i, global0.a.x), global0.a, vec3<bool>(global0.c.x, arg_1.x, arg_1.x)), -(vec3<i32>(74469i, global0.a.x, global0.a.x) ^ global0.a)), abs(-1i)), vec4<i32>(_wgslsmith_dot_vec4_i32(min(-vec4<i32>(global0.b, u_input.b, -9273i, u_input.b), vec4<i32>(13660i, 22908i, u_input.b, -18449i) & vec4<i32>(-6302i, 19312i, u_input.b, -74741i)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, u_input.b, global0.b, -26088i), vec4<i32>(-61979i, -2147483647i, u_input.b, u_input.b)) ^ countOneBits(vec4<i32>(2147483647i, 51142i, -1i, global0.a.x))), 2147483647i, u_input.b, ~(u_input.b << (abs(0u) % 32u))));
    var var_0 = false;
    var_0 = !global0.c.x;
    var var_1 = u_input.b;
    let var_2 = !arg_1.yy;
    return Struct_2(global0.a, func_4(~_wgslsmith_div_i32(_wgslsmith_add_i32(-27987i, -1i), 6959i), ~vec4<i32>(_wgslsmith_div_i32(u_input.b, u_input.b), u_input.b, func_2(), global0.a.x)).a.x, global0.c);
}

fn func_6(arg_0: bool, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: vec2<f32>) -> Struct_3 {
    let var_0 = Struct_3(1000f, Struct_1(_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, arg_2.a.x, 39567i, 22432i), vec4<i32>(global0.a.x, u_input.b, 77543i, arg_2.b)) << (~vec4<u32>(4294967295u, u_input.a, 4294967295u, 1u) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_clamp_i32(1i, 2147483647i, u_input.b), ~arg_2.b, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.a.x, 0i, -1i, arg_2.a.x), vec4<i32>(arg_2.a.x, 2147483647i, 1i, arg_2.a.x)), 1i)), -reverseBits(vec3<i32>(-22762i, -2147483647i, global0.b)) | arg_2.a, false, ~firstLeadingBit(vec2<u32>(u_input.a, u_input.a) >> (vec2<u32>(u_input.a, 1u) % vec2<u32>(32u))), arg_2.c.ww), ~4294967295u);
    global0 = func_5(8385u, !select(vec4<bool>(true, false, true, true), func_5(~var_0.c, arg_2.c).c, !(!vec4<bool>(arg_0, true, true, true))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(arg_3.x))))));
    global1 = !(_wgslsmith_f_op_f32(-var_0.a) > -220f);
    var var_2 = vec4<f32>(_wgslsmith_div_f32(-688f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_3.x)), _wgslsmith_f_op_f32(arg_3.x - 1700f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.a * -510f))) + _wgslsmith_f_op_f32(trunc(arg_3.x))), _wgslsmith_f_op_f32(exp2(arg_3.x)), false)), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -996f)));
    return var_0;
}

fn func_7(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: Struct_3) -> Struct_3 {
    let var_0 = func_6(arg_2.b.c, vec2<bool>(false, !(!(u_input.a <= 17637u))), Struct_2(-vec3<i32>(i32(-1i) * -1i, max(-32171i, global0.a.x), ~u_input.b), 29409i, func_4(global0.a.x, ~arg_2.b.a | (arg_2.b.a << (vec4<u32>(0u, u_input.a, 15616u, 32531u) % vec4<u32>(32u)))).c), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(arg_2.a)), arg_2.a))))).b.e;
    global1 = any(select(!func_4(-arg_2.b.b.x, -vec4<i32>(arg_0.x, -1i, arg_2.b.a.x, arg_2.b.b.x)).c.zy, arg_1.zz, any(vec3<bool>(!global0.c.x, any(var_0), !global0.c.x))));
    var var_1 = 1099f;
    let var_2 = func_5(arg_2.c, select(!(!(!vec4<bool>(arg_2.b.e.x, arg_2.b.e.x, var_0.x, false))), global0.c, select(!select(vec4<bool>(var_0.x, global0.c.x, global0.c.x, false), global0.c, true), select(global0.c, global0.c, vec4<bool>(arg_2.b.e.x, true, false, global0.c.x)), !(!vec4<bool>(var_0.x, false, arg_1.x, true)))));
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -1123f) >= _wgslsmith_f_op_f32(step(arg_2.a, _wgslsmith_f_op_f32(f32(-1f) * -1146f)));
    return Struct_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2.a + arg_2.a))), arg_2.b, _wgslsmith_dot_vec4_u32(vec4<u32>(~abs(106092u), func_6(any(global0.c.ywy), !global0.c.wx, Struct_2(vec3<i32>(u_input.b, 2147483647i, -1i), 0i, var_2.c), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2.a, -1000f), vec2<f32>(arg_2.a, arg_2.a), global0.c.xx))).c, 9049u, _wgslsmith_div_u32(arg_2.c, ~1u)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, arg_2.c, arg_2.b.d.x, u_input.a), vec4<u32>(arg_2.c, arg_2.b.d.x, u_input.a, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(abs(-(~global0.a.yz) | _wgslsmith_clamp_vec2_i32(-global0.a.xz, global0.a.xy & vec2<i32>(global0.a.x, 7676i), _wgslsmith_sub_vec2_i32(global0.a.xx, global0.a.zz))), select(!vec3<bool>(true, global0.c.x, true), global0.c.wxx, true), func_6(!(!global0.c.x), vec2<bool>(all(!vec3<bool>(true, global0.c.x, true)), true), func_5(_wgslsmith_dot_vec3_u32(func_1(vec2<u32>(4294967295u, u_input.a), Struct_3(-1979f, Struct_1(vec4<i32>(global0.a.x, -511i, 1i, u_input.b), vec3<i32>(global0.a.x, global0.b, -43303i), global0.c.x, vec2<u32>(0u, 51955u), global0.c.zx), 48414u), 23251i, Struct_3(-1779f, Struct_1(vec4<i32>(3007i, global0.b, -1i, -30255i), vec3<i32>(-1i, global0.b, -1i), false, vec2<u32>(51181u, 0u), global0.c.yy), 0u)), vec3<u32>(34168u, u_input.a, u_input.a)), select(global0.c, select(vec4<bool>(false, global0.c.x, false, false), vec4<bool>(global0.c.x, global0.c.x, false, global0.c.x), true), global0.c.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-430f, 965f)))) * vec2<f32>(-1000f, _wgslsmith_f_op_f32(max(1000f, 966f))))));
    let var_1 = -1000f;
    global1 = true;
    let var_2 = var_0.a;
    global0 = Struct_2(_wgslsmith_add_vec3_i32(~(~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, u_input.b, -7549i), global0.a, vec3<i32>(-55576i, var_0.b.b.x, var_0.b.a.x))), _wgslsmith_add_vec3_i32(~func_6(global0.c.x, vec2<bool>(false, false), Struct_2(global0.a, -2147483647i, vec4<bool>(false, var_0.b.e.x, false, global0.c.x)), vec2<f32>(var_1, -480f)).b.a.zzz, -select(vec3<i32>(37338i, 41118i, global0.b), vec3<i32>(60046i, global0.a.x, -2147483647i), var_0.b.c))), u_input.b, !func_5(0u, !global0.c).c);
    let var_3 = true;
    let var_4 = countOneBits(var_0.c);
    var var_5 = !vec2<bool>(var_0.b.b.x <= 0i, all(!(!var_0.b.e)));
    let x = u_input.a;
    s_output = StorageBuffer(0u, var_0.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_2), 1084f, -1685f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-161f, var_2, var_2)))), var_0.b.d);
}

