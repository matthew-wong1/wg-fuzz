struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<i32>(2147483647i, i32(-2147483648), 0i, 2147483647i), vec4<u32>(0u, 1u, 453u, 9212u), vec2<bool>(true, false));

var<private> global1: bool;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    var var_0 = Struct_1(!select(vec3<bool>(any(vec3<bool>(global0.c.x, false, true)), !global0.c.x, global0.c.x && global0.c.x), vec3<bool>(true, true, global0.b.x == u_input.c.x), true), firstLeadingBit(-vec4<i32>(select(global0.a.x, global0.a.x, true), global0.a.x, ~global0.a.x, 1i << (arg_0.x % 32u))));
    let var_1 = Struct_1(select(vec3<bool>(any(vec3<bool>(true, true, global0.c.x)) & (59078u >= global0.b.x), select(global0.c.x, true, true), !global0.c.x), !var_0.a, !(~u_input.e <= _wgslsmith_add_u32(4294967295u, arg_0.x))), global0.a);
    let var_2 = vec4<bool>(true, !(!global0.c.x), !(!any(!vec4<bool>(global0.c.x, true, var_0.a.x, var_1.a.x))), var_0.a.x);
    var var_3 = any(select(select(!vec4<bool>(var_1.a.x, true, var_0.a.x, global0.c.x), select(select(vec4<bool>(var_1.a.x, global0.c.x, true, false), var_2, var_2.x), select(var_2, vec4<bool>(false, true, false, var_2.x), vec4<bool>(var_2.x, var_2.x, true, var_2.x)), select(vec4<bool>(global0.c.x, var_2.x, false, var_0.a.x), vec4<bool>(true, var_0.a.x, var_2.x, true), vec4<bool>(true, false, global0.c.x, var_0.a.x))), !(global0.a.x < -1i)), !(!select(var_2, var_2, var_0.a.x)), !(!(!vec4<bool>(var_2.x, true, global0.c.x, var_2.x)))));
    let var_4 = Struct_2(-vec4<i32>(var_1.b.x, -5033i, global0.a.x, var_0.b.x), (abs(global0.b) | ~vec4<u32>(global0.b.x, 32155u, 40774u, arg_0.x)) << (vec4<u32>(arg_0.x, _wgslsmith_div_u32(2936u, reverseBits(1u)), _wgslsmith_dot_vec4_u32(global0.b, ~u_input.a), firstLeadingBit(global0.b.x)) % vec4<u32>(32u)), vec2<bool>(true, var_2.x));
    return _wgslsmith_f_op_f32(f32(-1f) * -407f);
}

fn func_2() -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global0.b)) - _wgslsmith_f_op_f32(f32(-1f) * -2194f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-583f)))), _wgslsmith_f_op_f32(-1604f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(482f * -1559f))))));
    let var_1 = -228i;
    global1 = !(!(u_input.a.x != 0u));
    global0 = Struct_2(u_input.d, ~u_input.a | vec4<u32>(global0.b.x, u_input.e, ~_wgslsmith_dot_vec3_u32(u_input.c.zyw, vec3<u32>(8640u, u_input.c.x, global0.b.x)), ~_wgslsmith_add_u32(u_input.c.x, 28405u)), global0.c);
    let var_2 = -7091i;
    return vec3<i32>(abs(u_input.d.x >> (((global0.b.x | global0.b.x) & ~4294967295u) % 32u)), -107i, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(max(var_1, _wgslsmith_mult_i32(-2147483647i, global0.a.x)), -1i), global0.a.x, 24849i));
}

fn func_1() -> Struct_3 {
    let var_0 = Struct_3(Struct_2(global0.a, _wgslsmith_mod_vec4_u32(~abs(vec4<u32>(62317u, 0u, global0.b.x, 4561u)), vec4<u32>(u_input.c.x, 69865u, global0.b.x << (global0.b.x % 32u), 11544u)), select(!select(global0.c, vec2<bool>(global0.c.x, global0.c.x), global0.c.x), global0.c, vec2<bool>(global0.c.x || true, global0.c.x))), true, global0.b.xz);
    var var_1 = select(min(~vec3<i32>(firstLeadingBit(global0.a.x), var_0.a.a.x, _wgslsmith_add_i32(global0.a.x, u_input.d.x)), -(func_2() << (abs(vec3<u32>(0u, var_0.c.x, u_input.a.x)) % vec3<u32>(32u)))), ~var_0.a.a.wyx, !(!all(vec3<bool>(global0.c.x, global0.c.x, var_0.b))));
    var var_2 = var_0.a;
    var_2 = var_0.a;
    return Struct_3(Struct_2(vec4<i32>(28653i, ~(-15586i) >> (max(var_0.a.b.x, global0.b.x) % 32u), ~countOneBits(u_input.b.x), _wgslsmith_dot_vec4_i32(~vec4<i32>(1i, 0i, u_input.d.x, var_1.x), abs(vec4<i32>(u_input.d.x, -39727i, u_input.d.x, var_1.x)))), ~u_input.c, vec2<bool>(var_2.c.x, true)), true, global0.b.ww);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_3) -> Struct_1 {
    let var_0 = -684f;
    var var_1 = _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(~arg_0.x, 4294967295u, _wgslsmith_dot_vec4_u32(countOneBits(arg_1.a.b), vec4<u32>(global0.b.x, 0u, arg_1.c.x, arg_1.c.x))), vec3<u32>(arg_1.c.x, 22440u, 28831u)), vec3<u32>(_wgslsmith_dot_vec2_u32(~u_input.c.wy, vec2<u32>(u_input.e, arg_1.a.b.x)), arg_1.c.x, ~(~4294967295u)) & countOneBits(arg_0.zzx));
    let var_2 = select(select(select(vec4<bool>(true, true, true, select(true, global0.c.x, global0.c.x)), select(select(vec4<bool>(true, global0.c.x, arg_1.a.c.x, arg_1.a.c.x), vec4<bool>(false, true, global0.c.x, global0.c.x), global0.c.x), vec4<bool>(arg_1.a.c.x, global0.c.x, false, false), global0.c.x), select(true | global0.c.x, !global0.c.x, true)), vec4<bool>(global0.c.x, true, any(vec4<bool>(global0.c.x, true, false, true)) || (arg_1.a.b.x <= 15408u), arg_1.b || select(global0.c.x, arg_1.b, arg_1.a.c.x)), select(select(!vec4<bool>(false, true, arg_1.a.c.x, arg_1.a.c.x), select(vec4<bool>(arg_1.b, global0.c.x, global0.c.x, arg_1.b), vec4<bool>(true, true, arg_1.a.c.x, false), arg_1.a.c.x), arg_1.b), !vec4<bool>(global0.c.x, true, false, false), false)), !(!(!(!vec4<bool>(true, arg_1.b, global0.c.x, arg_1.b)))), select(select(vec4<bool>(true, !arg_1.b, true, false), vec4<bool>(any(vec4<bool>(arg_1.b, false, true, arg_1.a.c.x)), true, arg_1.a.c.x & true, true), any(vec2<bool>(global0.c.x, false))), vec4<bool>(false, false, arg_1.a.c.x, u_input.b.x > ~(-24426i)), select(!(!vec4<bool>(false, arg_1.a.c.x, false, arg_1.b)), select(!vec4<bool>(true, false, arg_1.a.c.x, global0.c.x), vec4<bool>(arg_1.a.c.x, false, false, arg_1.b), false), _wgslsmith_f_op_f32(min(516f, var_0)) >= _wgslsmith_f_op_f32(-var_0))));
    global1 = all(var_2);
    global1 = func_1().a.c.x;
    return Struct_1(vec3<bool>(!any(vec4<bool>(global0.c.x, arg_1.a.c.x, var_2.x, true)) && any(var_2.yyy), all(!vec3<bool>(global0.c.x, var_2.x, var_2.x)) || (var_0 == _wgslsmith_f_op_f32(f32(-1f) * -313f)), _wgslsmith_div_f32(var_0, 978f) < _wgslsmith_f_op_f32(172f * _wgslsmith_f_op_f32(var_0 + 1715f))), select(vec4<i32>(-arg_1.a.a.x, reverseBits(-2147483647i), -27307i, 0i), u_input.d ^ min(vec4<i32>(global0.a.x, 16559i, -1i, u_input.b.x), vec4<i32>(arg_1.a.a.x, arg_1.a.a.x, 1i, 41782i)), true));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    global0 = func_1().a;
    var var_0 = func_4(abs(~vec4<u32>(1u, u_input.a.x, 34210u, 7548u)) | vec4<u32>(global0.b.x, func_1().c.x ^ 23245u, 20487u, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.a.x, 1814u, 0u), global0.b.x)), Struct_3(Struct_2(_wgslsmith_clamp_vec4_i32(select(global0.a, vec4<i32>(-36120i, global0.a.x, 3984i, 0i), global0.c.x), reverseBits(arg_0.b), vec4<i32>(-43645i, u_input.b.x, arg_0.b.x, -32189i) ^ vec4<i32>(u_input.d.x, global0.a.x, global0.a.x, u_input.b.x)), _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(global0.b.x, 4294967295u, global0.b.x, global0.b.x)), select(vec4<u32>(1u, 4294967295u, 0u, global0.b.x), vec4<u32>(90496u, global0.b.x, 0u, u_input.a.x), vec4<bool>(arg_0.a.x, arg_0.a.x, global0.c.x, false)), vec4<u32>(global0.b.x, global0.b.x, 32083u, 0u)), !global0.c), (!global0.c.x || func_4(global0.b, Struct_3(Struct_2(arg_0.b, vec4<u32>(1u, 4294967295u, 32548u, global0.b.x), arg_0.a.yx), global0.c.x, vec2<u32>(global0.b.x, 0u))).a.x) || (true && global0.c.x), ~(~global0.b.wy | vec2<u32>(0u, 28071u))));
    return func_4(global0.b, func_1());
}

fn func_6(arg_0: Struct_1, arg_1: f32, arg_2: Struct_3) -> Struct_3 {
    var var_0 = func_1();
    var var_1 = -37676i;
    var var_2 = vec3<i32>(-1i) * -(~func_1().a.a.xyx);
    let var_3 = ~4294967295u;
    var var_4 = var_0.a.a.yw;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(func_4(_wgslsmith_clamp_vec4_u32(u_input.a, global0.b, vec4<u32>(4294967295u, global0.b.x, 19950u, 7855u)) >> (_wgslsmith_sub_vec4_u32(u_input.c, u_input.c) % vec4<u32>(32u)), func_1())), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(420f * -380f))), func_1());
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-179f * 852f), _wgslsmith_f_op_f32(trunc(324f)), global0.c.x))))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-109f, -1780f)) + -885f))), -443f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(trunc(var_1))) + -988f) + -660f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-386f - var_1))))) + var_1));
    let var_3 = all(select(vec4<bool>(any(vec3<bool>(true, global0.c.x, global0.c.x)) & true, global0.c.x, all(vec2<bool>(var_0.b, true)), var_1 != var_2.x), !select(!vec4<bool>(false, true, var_0.b, true), select(vec4<bool>(false, true, global0.c.x, var_0.a.c.x), vec4<bool>(true, global0.c.x, true, true), var_0.b), global0.c.x), vec4<bool>(global0.c.x, global0.c.x, true, global0.c.x | func_5(Struct_1(vec3<bool>(false, false, false), u_input.d)).a.x)));
    global0 = Struct_2(global0.a, vec4<u32>(countOneBits(firstTrailingBit(global0.b.x << (4294967295u % 32u))), _wgslsmith_dot_vec3_u32(global0.b.ywy, ~var_0.a.b.wwz), 73326u, global0.b.x), global0.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_add_u32(0u, 4294967295u), ~60524u, u_input.a.x >> (58253u % 32u)), (vec3<u32>(3212u, global0.b.x, 4294967295u) ^ var_0.a.b.yxx) >> (u_input.a.wxz % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, var_0.a.b.x, 96518u), vec3<u32>(global0.b.x, 4294967295u, 103972u), vec3<u32>(var_0.c.x, 0u, 1u)) >> (_wgslsmith_sub_vec3_u32(var_0.a.b.ywy, var_0.a.b.wwz) % vec3<u32>(32u))), vec3<u32>(~(~u_input.a.x), _wgslsmith_add_u32(countOneBits(var_0.a.b.x), _wgslsmith_dot_vec2_u32(u_input.c.zw, global0.b.wx)), var_0.c.x)), global0.a.yzx, global0.b, 0u, vec2<i32>(-38458i, -2147483647i));
}

