struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(false, true), vec3<bool>(true, false, true), 4294967295u);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32) -> vec2<bool> {
    global0 = Struct_1(vec2<bool>(global0.b.x, true), !global0.b, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0, arg_0), min(_wgslsmith_add_vec2_u32(vec2<u32>(global0.c, global0.c), vec2<u32>(1u, 4294967295u)), firstLeadingBit(vec2<u32>(4294967295u, global0.c)))), arg_0));
    global0 = Struct_1(!(!select(vec2<bool>(false, false), select(global0.b.xy, vec2<bool>(global0.a.x, false), global0.b.x), select(vec2<bool>(true, false), vec2<bool>(global0.b.x, true), global0.a))), global0.b, _wgslsmith_add_u32(~global0.c, ~1u));
    var var_0 = Struct_2(0i, ((global0.c & 59386u) & 76u) & ~(~_wgslsmith_add_u32(35174u, arg_0)), Struct_1(select(global0.b.zz, global0.b.zz, vec2<bool>(global0.a.x || global0.b.x, global0.b.x & false)), select(global0.b, !global0.b, global0.a.x), _wgslsmith_mod_u32(global0.c, max(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, global0.c), vec2<u32>(arg_0, 0u)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 37658u), vec2<u32>(9781u, 10290u))))), ~(vec3<u32>(~arg_0, ~global0.c, ~global0.c) >> (~(vec3<u32>(global0.c, arg_0, 17143u) | vec3<u32>(47210u, 1u, 4756u)) % vec3<u32>(32u))), Struct_1(select(select(global0.b.zy, vec2<bool>(global0.b.x, global0.a.x), vec2<bool>(false, global0.b.x)), select(global0.a, global0.a, true), !(arg_0 >= global0.c)), !(!global0.b), _wgslsmith_mult_u32(0u, _wgslsmith_clamp_u32(global0.c, _wgslsmith_mult_u32(521u, arg_0), 4294967295u))));
    var_0 = Struct_2(_wgslsmith_sub_i32(var_0.a, -18728i), global0.c, var_0.e, ~(~reverseBits(var_0.d)), Struct_1(vec2<bool>(true, !all(var_0.c.b.yz)), !vec3<bool>(true, var_0.e.b.x && var_0.c.a.x, false), 0u));
    let var_1 = select(!(!vec4<bool>(false, select(global0.b.x, true, var_0.c.b.x), true, true)), select(vec4<bool>(1i != _wgslsmith_sub_i32(u_input.a, 21910i), all(select(vec2<bool>(global0.b.x, true), vec2<bool>(true, global0.b.x), var_0.c.b.zz)), (var_0.d.x << (47416u % 32u)) != ~1u, true), vec4<bool>(!global0.a.x, !(!var_0.c.a.x), true, ~var_0.a < (i32(-1i) * -14605i)), select(select(vec4<bool>(var_0.e.b.x, false, true, true), vec4<bool>(false, false, false, false), all(vec4<bool>(var_0.c.a.x, var_0.c.b.x, false, true))), !select(vec4<bool>(false, true, false, true), vec4<bool>(var_0.c.b.x, var_0.e.a.x, true, var_0.c.b.x), false), true)), true || (all(select(vec4<bool>(true, var_0.c.a.x, false, var_0.c.b.x), vec4<bool>(var_0.e.a.x, true, global0.b.x, false), true)) || !any(vec2<bool>(false, true))));
    return select(var_1.zw, global0.a, false);
}

fn func_2(arg_0: i32, arg_1: vec4<bool>) -> Struct_1 {
    global0 = Struct_1(select(!select(!global0.a, vec2<bool>(true, true), func_3(7222u)), !func_3(1u), arg_1.wx), select(arg_1.xyw, arg_1.yyz, vec3<bool>(!global0.b.x && true, true, global0.a.x)), select(global0.c, firstTrailingBit(13731u), global0.a.x));
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1052f) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(963f - 625f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(511f, -1647f) * -561f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(293f, -642f), vec2<f32>(409f, -405f)))), vec2<f32>(_wgslsmith_f_op_f32(ceil(1390f)), _wgslsmith_div_f32(954f, -582f)), !select(arg_1.xx, arg_1.xw, vec2<bool>(global0.a.x, arg_1.x)))) + vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(659f, 955f))), -579f)));
    let var_1 = Struct_2(0i, 77571u, Struct_1(global0.b.yy, !vec3<bool>(arg_1.x & false, global0.a.x, true), ~1u), firstTrailingBit(vec3<u32>(0u, global0.c, _wgslsmith_add_u32(~4294967295u, 39318u >> (global0.c % 32u)))), Struct_1(arg_1.xx, select(!select(vec3<bool>(global0.a.x, false, global0.a.x), global0.b, false), select(!global0.b, select(vec3<bool>(arg_1.x, true, global0.b.x), arg_1.yyz, vec3<bool>(global0.b.x, true, global0.a.x)), arg_1.yzx), vec3<bool>(true, !global0.a.x, any(vec2<bool>(false, true)))), abs(max(global0.c, global0.c))));
    let var_2 = var_1.d;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x)))) - _wgslsmith_f_op_f32(f32(-1f) * -260f));
    return var_1.e;
}

fn func_1() -> vec3<bool> {
    let var_0 = ~(~4294967295u);
    global0 = func_2(_wgslsmith_add_i32(-2147483647i, 28901i), vec4<bool>(global0.b.x, any(vec2<bool>(global0.a.x, false)), global0.b.x, all(!vec2<bool>(global0.a.x, false)) || (global0.a.x | all(vec2<bool>(false, false)))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1050f, -638f))))) + 1000f) + -347f);
    var var_2 = true;
    global0 = Struct_1(select(vec2<bool>(false, global0.b.x), !vec2<bool>(global0.a.x, all(vec3<bool>(global0.a.x, false, global0.b.x))), global0.b.xy), global0.b, max(firstLeadingBit(4294967295u) >> (var_0 % 32u), _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(48649u, 19735u, var_0)), vec3<u32>(4294967295u, global0.c, abs(1u)))));
    return !global0.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(vec2<bool>(global0.b.x, !global0.b.x), func_1(), _wgslsmith_dot_vec4_u32(((vec4<u32>(global0.c, global0.c, 4294967295u, 42469u) << (vec4<u32>(global0.c, global0.c, global0.c, global0.c) % vec4<u32>(32u))) | abs(vec4<u32>(40395u, 4294967295u, global0.c, 4294967295u))) >> (~vec4<u32>(global0.c, 1u, 91558u, 1u) % vec4<u32>(32u)), vec4<u32>(40711u, global0.c, 11468u, ~8453u)));
    var var_0 = 2147483647i;
    let var_1 = firstLeadingBit(vec3<u32>(~1u << (abs(global0.c) % 32u), min(13925u, ~(~global0.c)), 4294967295u));
    let var_2 = select(-_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(22746i, -36424i, u_input.a, 0i), vec4<i32>(u_input.a, u_input.a, 39027i, u_input.a)) << ((vec4<u32>(4294967295u, global0.c, 52335u, 0u) >> (vec4<u32>(var_1.x, var_1.x, global0.c, 1u) % vec4<u32>(32u))) % vec4<u32>(32u)), firstLeadingBit(max(vec4<i32>(53541i, u_input.a, u_input.a, 0i), vec4<i32>(-931i, u_input.a, 1i, u_input.a)))), firstLeadingBit(vec4<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a, u_input.a, u_input.a), _wgslsmith_sub_vec3_i32(vec3<i32>(-35653i, u_input.a, u_input.a), vec3<i32>(u_input.a, 2513i, -1691i))), select(u_input.a, u_input.a >> (4294967295u % 32u), all(global0.b.zz)), max(-1i, -50i << (global0.c % 32u)), u_input.a)), true);
    var var_3 = func_2(var_2.x, select(!vec4<bool>(!global0.a.x, all(vec4<bool>(false, global0.a.x, false, global0.a.x)), global0.a.x && true, global0.b.x), !vec4<bool>(global0.a.x || global0.a.x, false, true, global0.b.x), 17228i > var_2.x));
    let var_4 = Struct_1(global0.b.yy, vec3<bool>(!(u_input.a > ~var_2.x), func_2(8539i >> (func_2(1i, vec4<bool>(var_3.b.x, false, false, true)).c % 32u), vec4<bool>(true, true, func_1().x, true)).a.x, true), var_1.x);
    var var_5 = firstTrailingBit(vec4<u32>(var_4.c, 38422u, 1u, 4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(-978f, vec2<u32>(var_3.c, global0.c), reverseBits(u_input.a), ~_wgslsmith_mod_vec3_u32(min(var_5.yzy, var_1) << (firstLeadingBit(var_1) % vec3<u32>(32u)), select(var_1, var_5.wzz, true) | vec3<u32>(0u, var_4.c, var_1.x)), var_1.x);
}

