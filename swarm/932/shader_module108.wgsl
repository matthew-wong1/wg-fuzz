struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec2<u32>,
    d: vec4<i32>,
    e: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: vec3<f32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct Struct_5 {
    a: u32,
    b: Struct_1,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_4) -> vec2<u32> {
    var var_0 = Struct_1(41476u, vec3<u32>(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(global0.b.c.x, u_input.a.x, global0.b.c.x, global0.b.c.x)), ~select(vec4<u32>(4294967295u, 0u, 1u, 50379u), vec4<u32>(1u, 0u, global0.b.c.x, u_input.b), global0.b.a)), _wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.a.c.x, 30422u, global0.b.c.x, 20457u), vec4<u32>(24323u, arg_0.a.c.x, 4294967295u, 0u), vec4<u32>(4294967295u, 0u, global0.b.c.x, 0u)), ~vec4<u32>(global0.b.c.x, 67602u, 25428u, 98647u) & vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 1u)), 4294967295u), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, _wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(global0.a + global0.a)) * vec3<f32>(181f, arg_0.b, _wgslsmith_f_op_f32(-arg_0.b))));
    let var_1 = true;
    var_0 = Struct_1(12413u, abs(vec3<u32>(global0.b.c.x, ~(~u_input.b), countOneBits(4294967295u << (arg_0.d.x % 32u)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.c.x, global0.a, _wgslsmith_f_op_f32(-arg_0.b)), vec3<f32>(_wgslsmith_f_op_f32(-arg_0.b), 583f, _wgslsmith_f_op_f32(547f - arg_0.b))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.c.x, -2000f, _wgslsmith_f_op_f32(f32(-1f) * -767f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-121f, global0.a, -1453f), arg_0.c)), select(vec3<bool>(false, global0.b.e, true), select(vec3<bool>(false, global0.b.b, false), vec3<bool>(arg_0.a.a, global0.b.a, var_1), arg_0.a.a), global0.b.b)))));
    var var_2 = vec2<bool>(var_1, !global0.b.e);
    var_0 = Struct_1(_wgslsmith_add_u32(arg_0.d.x & _wgslsmith_clamp_u32(var_0.b.x, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(arg_0.d.x, arg_0.a.c.x, 11104u, u_input.b)), ~var_0.b.x), ~(4294967295u >> (var_0.b.x % 32u)) << (u_input.b % 32u)), vec3<u32>(0u, 28522u, var_0.a), arg_0.c);
    return arg_0.a.c;
}

fn func_2(arg_0: f32) -> Struct_2 {
    global0 = Struct_3(global0.a, Struct_2(global0.b.a, global0.b.a, func_3(Struct_4(Struct_2(global0.b.b, global0.b.b, global0.b.c, global0.b.d, true), -362f, _wgslsmith_div_vec3_f32(vec3<f32>(arg_0, global0.a, -429f), vec3<f32>(232f, -586f, -512f)), u_input.a.wxy, vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x))), global0.b.d, global0.b.d.x != (_wgslsmith_add_i32(u_input.d.x, global0.b.d.x) << (countOneBits(global0.b.c.x) % 32u))));
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2123f, global0.a, global0.a, -130f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.a, global0.a, arg_0, -215f), vec4<f32>(420f, -133f, global0.a, -945f), true))))))));
    var var_1 = vec4<bool>(all(vec3<bool>(all(select(vec2<bool>(global0.b.b, global0.b.e), vec2<bool>(true, true), global0.b.b)), false, select(global0.b.a, !global0.b.b, global0.b.a))), any(select(!(!vec3<bool>(false, global0.b.e, true)), vec3<bool>(true, global0.b.a, true), false)), true == select(!global0.b.e, all(select(vec2<bool>(global0.b.a, false), vec2<bool>(true, true), true)), global0.b.b), any(!vec2<bool>(false, !global0.b.a)));
    var var_2 = ~countOneBits(13586u) ^ min(~reverseBits(~30953u), u_input.a.x);
    var var_3 = u_input.c.x;
    return Struct_2(true, all(!(!var_1.xxy)) && any(!var_1.zz), ~(~vec2<u32>(global0.b.c.x, select(13125u, 54849u, global0.b.e))), max(_wgslsmith_div_vec4_i32(vec4<i32>(30324i, global0.b.d.x, 1i, -1i), global0.b.d), reverseBits(global0.b.d)), global0.b.e && false);
}

fn func_1() -> Struct_2 {
    let var_0 = global0.b.b;
    var var_1 = 0i;
    global0 = Struct_3(1349f, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)))));
    var var_2 = Struct_1(~(func_3(Struct_4(global0.b, global0.a, vec3<f32>(global0.a, global0.a, global0.a), vec3<u32>(0u, 31573u, u_input.a.x), u_input.d)).x << (func_2(global0.a).c.x % 32u)), u_input.a.wxy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, 210f, global0.a) - vec3<f32>(-183f, global0.a, global0.a)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1326f, global0.a, global0.a), vec3<f32>(global0.a, -247f, -293f))))));
    var_2 = Struct_1(~countOneBits(20399u), var_2.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.c) * vec3<f32>(global0.a, -1000f, _wgslsmith_f_op_f32(578f + -1000f))));
    return Struct_2(global0.b.a, global0.b.b || global0.b.b, select(~func_3(Struct_4(Struct_2(true, global0.b.b, var_2.b.yy, vec4<i32>(-1i, -1i, -2147483647i, 77835i), global0.b.e), -1480f, var_2.c, var_2.b, vec3<i32>(7769i, 2147483647i, global0.b.d.x))), global0.b.c, !((u_input.a.x | u_input.b) != reverseBits(var_2.b.x))), global0.b.d, any(vec2<bool>(true, !global0.b.e)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(global0.a, func_1());
    var var_0 = Struct_2(func_1().b, global0.b.e, vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(35699u, 4294967295u, u_input.a.x, u_input.a.x), vec4<u32>(59459u, global0.b.c.x, 1u, u_input.a.x)), u_input.a & vec4<u32>(29696u, 0u, 1u, 3106u)), ~(~17613u)), global0.b.c.x), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(func_1().d, -global0.b.d | firstLeadingBit(u_input.c)), vec4<i32>(~firstTrailingBit(global0.b.d.x), 2147483647i, firstLeadingBit(~50053i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, global0.b.d.x, 1i, u_input.c.x) << (vec4<u32>(u_input.b, 1u, u_input.b, global0.b.c.x) % vec4<u32>(32u)), -vec4<i32>(23443i, u_input.d.x, -1i, 0i)))), false);
    var var_1 = Struct_2(global0.b.e, true, vec2<u32>(24567u, u_input.b), vec4<i32>(u_input.d.x, _wgslsmith_div_i32(select(func_1().d.x, firstTrailingBit(-1i), var_0.e), global0.b.d.x), -global0.b.d.x | -910i, _wgslsmith_mod_i32(-23367i, _wgslsmith_clamp_i32(~u_input.d.x, u_input.c.x, global0.b.d.x))), !(false && func_2(_wgslsmith_f_op_f32(select(global0.a, global0.a, global0.b.b))).a));
    var_1 = Struct_2(var_0.a, !(!global0.b.a), u_input.a.wy, u_input.c, select(all(vec3<bool>(true, true, var_0.e & true)), !(_wgslsmith_f_op_f32(-global0.a) < _wgslsmith_f_op_f32(-global0.a)), true));
    var var_2 = firstLeadingBit(25557u);
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1028f, global0.a))), vec2<f32>(904f, 1254f)))))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(781f, global0.a))), _wgslsmith_f_op_f32(min(677f, _wgslsmith_div_f32(global0.a, global0.a)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.a, global0.a), vec2<f32>(global0.a, global0.a))))))));
    var_2 = min(func_3(Struct_4(func_1(), var_3.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1815f, global0.a, var_3.x))), ~max(u_input.a.wxz, u_input.a.wxz), reverseBits(~vec3<i32>(var_1.d.x, var_1.d.x, var_0.d.x)))).x, 5508u);
    let var_4 = u_input.a.zz;
    let var_5 = select(vec3<bool>(any(!select(vec4<bool>(global0.b.a, false, global0.b.b, false), vec4<bool>(var_0.e, var_1.a, true, true), false)), global0.b.a, true), select(vec3<bool>(324f < _wgslsmith_f_op_f32(step(var_3.x, -1154f)), false, global0.b.a), select(!(!vec3<bool>(var_0.b, true, var_0.a)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, var_0.a), vec3<bool>(false, var_0.b, var_0.e), global0.b.a), false), select(vec3<bool>(var_1.e, false, false), vec3<bool>(var_0.e, var_1.b, global0.b.a), !vec3<bool>(false, var_1.b, global0.b.a))), select(vec3<bool>(select(global0.b.e, var_0.e, global0.b.a), false, false), select(!vec3<bool>(global0.b.e, var_0.e, global0.b.e), select(vec3<bool>(var_0.b, var_0.e, global0.b.a), vec3<bool>(false, true, var_1.a), global0.b.e), all(vec4<bool>(true, var_1.b, true, var_1.b))), select(select(vec3<bool>(global0.b.b, false, global0.b.b), vec3<bool>(var_0.a, false, false), var_0.b), select(vec3<bool>(false, false, var_1.e), vec3<bool>(var_1.e, true, false), vec3<bool>(global0.b.e, var_0.b, true)), select(vec3<bool>(var_1.e, var_0.a, false), vec3<bool>(var_1.e, false, var_0.e), vec3<bool>(false, false, true))))), vec3<bool>(var_0.c.x < _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 4294967295u), u_input.a.zw), global0.b.a || !(global0.a >= var_3.x), false));
    let x = u_input.a;
    s_output = StorageBuffer(select(~(~var_4.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, 0u, 0u, var_1.c.x), vec4<u32>(abs(var_0.c.x), func_3(Struct_4(global0.b, 477f, vec3<f32>(378f, var_3.x, global0.a), u_input.a.xwx, vec3<i32>(35569i, -2147483647i, var_0.d.x))).x, countOneBits(global0.b.c.x), func_1().c.x)), true), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1507f + global0.a))), var_3.x)), -(~func_1().d), global0.b.d.xzw, ~(~(vec3<u32>(global0.b.c.x, u_input.a.x, var_1.c.x) << (reverseBits(u_input.a.wyz) % vec3<u32>(32u)))));
}

