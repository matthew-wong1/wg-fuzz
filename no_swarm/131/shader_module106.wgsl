struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: i32,
    d: vec2<bool>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: f32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(2147483647i, -1i);

var<private> global1: f32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: bool) -> vec4<i32> {
    let var_0 = abs(-vec4<i32>(max(0i & global0.x, -1773i), -2147483647i, _wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.c, global0.x), -2147483647i), 1i));
    let var_1 = countOneBits(abs(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u << (u_input.a % 32u), abs(u_input.a), 14578u), ~vec3<u32>(u_input.a, u_input.a, 0u))));
    global0 = ~(vec2<i32>(abs(-50338i), -1i) & _wgslsmith_mod_vec2_i32(~(vec2<i32>(1i, u_input.c) << (vec2<u32>(u_input.a, var_1.x) % vec2<u32>(32u))), vec2<i32>(~0i, 0i)));
    let var_2 = !(!vec3<bool>(!arg_1, !(1i == global0.x), !arg_0));
    let var_3 = all(vec3<bool>(var_1.x <= 1u, !(_wgslsmith_dot_vec3_i32(var_0.zyz, var_0.ywx) < (global0.x << (1u % 32u))), arg_0 | (true & all(var_2.xx))));
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> vec2<bool> {
    let var_0 = countOneBits(~arg_0.e.x) | ((arg_0.e.x ^ ~u_input.b.x) << (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.e.x, u_input.b.x) & _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(arg_0.e.x, 55170u), arg_0.e), ~_wgslsmith_mod_vec2_u32(u_input.b.zx, u_input.b.zx)) % 32u));
    global1 = arg_0.b;
    var var_1 = func_3(1i > (arg_1.a.x ^ arg_0.c), false).x;
    let var_2 = Struct_1(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-523f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.b)) - arg_0.b)))), select(_wgslsmith_mult_i32(arg_1.a.x, 2147483647i), abs(func_3(false, false).x), !(!arg_0.d.x)), !arg_0.d, u_input.b.zx);
    var var_3 = select(!vec4<bool>(var_2.d.x, true & any(vec3<bool>(true, arg_0.d.x, false)), arg_0.d.x, ~var_2.a.x != (20572i << (var_2.e.x % 32u))), !vec4<bool>(true, all(vec3<bool>(true, true, true)), true, _wgslsmith_f_op_f32(1739f - 214f) < var_2.b), !(!select(select(vec4<bool>(false, true, true, var_2.d.x), vec4<bool>(true, true, false, false), arg_0.d.x), select(vec4<bool>(true, arg_0.d.x, false, arg_0.d.x), vec4<bool>(true, false, true, false), true), select(vec4<bool>(var_2.d.x, true, arg_0.d.x, false), vec4<bool>(arg_0.d.x, var_2.d.x, false, true), arg_0.d.x))));
    return vec2<bool>(any(vec4<bool>(arg_0.d.x, (1u > arg_0.e.x) & true, arg_1.a.x < -45744i, true)), any(select(!vec3<bool>(true, false, arg_0.d.x), select(vec3<bool>(true, true, arg_0.d.x), vec3<bool>(var_2.d.x, arg_0.d.x, var_3.x), false && var_3.x), !(!var_3.yxw))));
}

fn func_2(arg_0: u32, arg_1: vec2<u32>) -> Struct_2 {
    let var_0 = ~(u_input.b & vec4<u32>(arg_1.x, ~1u, (arg_1.x & 61271u) & abs(8778u), arg_1.x));
    let var_1 = Struct_1(vec2<i32>(abs(global0.x >> (1u % 32u)), global0.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -585f), _wgslsmith_f_op_f32(round(-709f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1053f, -872f))))), global0.x, func_4(Struct_1(vec2<i32>(-1i) * -vec2<i32>(u_input.c, -21467i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(889f + 1337f), _wgslsmith_f_op_f32(abs(1559f))), i32(-1i) * -10822i, select(vec2<bool>(true, true), vec2<bool>(true, true), true), ~vec2<u32>(4294967295u, arg_0)), Struct_2(_wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(47416i, 0i, 11374i, u_input.c)), func_3(false, true), vec4<i32>(u_input.c, -2147483647i, 0i, 20658i)))), select(vec2<u32>(0u, ~_wgslsmith_sub_u32(arg_0, 64618u)), _wgslsmith_mod_vec2_u32(vec2<u32>(1u ^ var_0.x, countOneBits(24274u)), _wgslsmith_sub_vec2_u32(arg_1, _wgslsmith_mod_vec2_u32(vec2<u32>(21864u, var_0.x), vec2<u32>(var_0.x, 0u)))), vec2<bool>(any(select(vec2<bool>(false, false), vec2<bool>(false, false), false)), _wgslsmith_f_op_f32(f32(-1f) * -996f) <= _wgslsmith_f_op_f32(sign(934f)))));
    let var_2 = (0i << (arg_0 % 32u)) & min(min(global0.x & (2147483647i << (0u % 32u)), -2807i), -11093i);
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -606f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b))));
    let var_3 = var_0.ywx;
    return Struct_2(_wgslsmith_mod_vec4_i32(~(~vec4<i32>(u_input.c, 1i, var_1.c, -2147483647i)) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.e.x, var_0.x, var_1.e.x, 55558u) | u_input.b, _wgslsmith_mod_vec4_u32(var_0, u_input.b)) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(select(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, var_2, var_2, -1i), vec4<i32>(2147483647i, var_1.c, 0i, 1i)), vec4<i32>(21954i, 0i, 1i, u_input.c), vec4<bool>(true, var_1.d.x, true, var_1.d.x)), min(-vec4<i32>(global0.x, var_2, 1i, 39462i), vec4<i32>(var_2, u_input.c, -33408i, var_1.a.x)), vec4<i32>(17150i, -2147483647i | u_input.c, 21996i, global0.x))));
}

fn func_1(arg_0: vec2<bool>, arg_1: i32, arg_2: vec4<f32>, arg_3: i32) -> i32 {
    var var_0 = Struct_2(vec4<i32>(2147483647i, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_3, 0i), vec2<i32>(arg_1, u_input.c) ^ vec2<i32>(26248i, 30048i)), _wgslsmith_sub_vec2_i32(vec2<i32>(arg_1, global0.x), vec2<i32>(arg_3, global0.x)) << (~u_input.b.xx % vec2<u32>(32u))), -max(-12751i >> (u_input.b.x % 32u), i32(-1i) * -26179i), 31564i));
    global0 = var_0.a.yx;
    var var_1 = _wgslsmith_f_op_f32(arg_2.x * arg_2.x);
    var var_2 = func_2(~firstLeadingBit(~select(u_input.a, u_input.b.x, arg_0.x)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a & u_input.b.x, 4294967295u), u_input.b.zx >> (select(u_input.b.yz, vec2<u32>(1u, 8608u), false) % vec2<u32>(32u))) << (~(u_input.b.wz >> (reverseBits(vec2<u32>(51744u, u_input.b.x)) % vec2<u32>(32u))) % vec2<u32>(32u)));
    let var_3 = _wgslsmith_add_vec4_u32(select(firstTrailingBit(min(_wgslsmith_div_vec4_u32(u_input.b, u_input.b), _wgslsmith_div_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, 24040u, 1u, u_input.a)))), firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.a), vec4<u32>(u_input.b.x, u_input.a, 4294967295u, 49332u))) | vec4<u32>(min(0u, 4294967295u), u_input.b.x, u_input.a << (u_input.b.x % 32u), 1u ^ u_input.a), !(!(!vec4<bool>(false, arg_0.x, arg_0.x, false)))), ~select(u_input.b, vec4<u32>(u_input.a, _wgslsmith_dot_vec3_u32(u_input.b.wwx, u_input.b.wzx), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 38583u, u_input.a), u_input.b.xyx), firstTrailingBit(u_input.a)), !arg_0.x));
    return arg_1;
}

fn func_5(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: i32) -> vec2<i32> {
    let var_0 = Struct_1(_wgslsmith_div_vec2_i32(firstTrailingBit(abs(vec2<i32>(u_input.c, arg_2))), arg_1.yz), _wgslsmith_f_op_f32(-460f - 947f), ~arg_2, !select(!arg_0.zx, !select(vec2<bool>(false, arg_0.x), vec2<bool>(true, arg_0.x), vec2<bool>(true, arg_0.x)), arg_0.xy), u_input.b.zw);
    var var_1 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(867f, var_0.b, var_0.b)));
    let var_2 = _wgslsmith_clamp_i32(-_wgslsmith_sub_i32(-global0.x, countOneBits(arg_2) & var_0.a.x), countOneBits(abs(1i)), arg_2);
    global0 = abs(vec2<i32>(u_input.c, reverseBits(func_3(true, u_input.b.x == var_0.e.x).x)));
    let var_3 = ~var_0.e.x;
    return -arg_1.zx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>((_wgslsmith_dot_vec2_i32(abs(vec2<i32>(1i, 502i)), vec2<i32>(13055i, u_input.c) | vec2<i32>(44341i, u_input.c)) < _wgslsmith_div_i32(~global0.x, 38438i)) || (true != (~4294967295u <= (u_input.a & u_input.a))), !all(vec3<bool>(select(false, false, false), true, true)), true);
    global1 = 895f;
    var var_1 = ~u_input.a;
    var var_2 = var_0.yz;
    var_1 = 0u;
    var var_3 = 2147483647i;
    var var_4 = func_5(!var_0, ~vec3<i32>(u_input.c, func_1(vec2<bool>(var_2.x, false), _wgslsmith_sub_i32(-70148i, global0.x), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(467f, -1335f, 1155f, 684f))), u_input.c | -2147483647i), abs(-1i)), global0.x);
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1167f, 745f))), 501f, var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~(vec2<i32>(u_input.c, global0.x) | vec2<i32>(func_1(var_0.yy, -2683i, vec4<f32>(-404f, var_5, var_5, var_5), 0i), var_4.x | var_4.x)), countOneBits(u_input.b), -602f, 351f, _wgslsmith_mod_i32(-6425i, global0.x));
}

