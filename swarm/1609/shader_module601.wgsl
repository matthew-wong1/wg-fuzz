struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: f32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: u32 = 13720u;

var<private> global2: bool;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    global0 = vec4<bool>(false, true, true, all(!(!vec4<bool>(global0.x, global0.x, global0.x, global0.x))));
    global2 = global0.x;
    global2 = global0.x;
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -717f)), 136f, _wgslsmith_f_op_f32(max(-1144f, 1204f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-476f, _wgslsmith_f_op_f32(min(157f, -1061f))))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(363f, 423f)))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(1168f, 1275f)), 1129f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -865f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(340f + -1000f), -136f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -715f))))));
    global0 = vec4<bool>(true, all(select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, global0.x, true, true), vec4<bool>(true, false, global0.x, true)), !vec4<bool>(global0.x, global0.x, global0.x, global0.x), global0.x), vec4<bool>(true, true, global0.x, true), select(vec4<bool>(false, true, global0.x, global0.x), !vec4<bool>(global0.x, true, false, true), true))), !(!(global0.x & true)), false);
    return _wgslsmith_f_op_f32(trunc(var_0.x));
}

fn func_2() -> Struct_2 {
    global1 = 4294967295u;
    let var_0 = Struct_1(min(~vec3<u32>(1u, u_input.a << (u_input.a % 32u), ~u_input.a), vec3<u32>(0u, reverseBits(~0u), 9772u)));
    let var_1 = ~countOneBits(63453u);
    global0 = vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2759f, _wgslsmith_f_op_f32(f32(-1f) * -102f))) >= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(Struct_1(var_0.a), Struct_1(vec3<u32>(4294967295u, 0u, var_0.a.x)))), -1000f)), global0.x, global0.x, !(true && global0.x));
    global0 = select(select(vec4<bool>(true, !select(false, global0.x, global0.x), false, true), select(vec4<bool>(global0.x && false, global0.x, true, 0u > var_1), vec4<bool>(any(vec4<bool>(global0.x, global0.x, false, global0.x)), global0.x && true, global0.x | global0.x, global0.x), vec4<bool>(true, false, 1u <= var_1, all(vec2<bool>(true, global0.x)))), false), vec4<bool>(!all(!global0.yxw), all(vec4<bool>(true, true, global0.x, false)), 0u >= u_input.a, true), select(vec4<bool>(true, true, true && global0.x, any(!vec4<bool>(true, global0.x, false, true))), !(!(!vec4<bool>(global0.x, global0.x, global0.x, global0.x))), select(select(vec4<bool>(global0.x, false, false, global0.x), !vec4<bool>(false, true, global0.x, global0.x), !vec4<bool>(true, global0.x, global0.x, global0.x)), !(!vec4<bool>(true, global0.x, global0.x, true)), true)));
    return Struct_2(Struct_1(~_wgslsmith_add_vec3_u32(var_0.a, vec3<u32>(1u, var_0.a.x, 39111u))), vec4<bool>(global0.x & true, true, false, global0.x), _wgslsmith_f_op_f32(abs(-493f)), !select(!select(vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(true, global0.x, false, global0.x), vec4<bool>(true, true, global0.x, global0.x)), select(!vec4<bool>(false, false, global0.x, global0.x), vec4<bool>(true, global0.x, global0.x, true), !vec4<bool>(global0.x, global0.x, false, global0.x)), global0.x));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>) -> Struct_2 {
    let var_0 = ~u_input.a != ~(~63779u);
    global1 = u_input.a;
    let var_1 = func_2();
    let var_2 = _wgslsmith_mod_i32(abs(-_wgslsmith_clamp_i32(1i, select(arg_1.x, arg_1.x, false), _wgslsmith_mult_i32(12975i, 1i))), _wgslsmith_div_i32(arg_1.x, -2147483647i));
    var var_3 = var_1.a;
    return Struct_2(Struct_1(vec3<u32>(arg_0.a.a.x, _wgslsmith_clamp_u32(~39750u, 1u, 0u), firstLeadingBit(arg_0.a.a.x & u_input.a))), var_1.d, var_1.c, select(!select(arg_0.d, !vec4<bool>(var_0, true, arg_0.b.x, global0.x), !var_1.d.x), vec4<bool>(!global0.x, var_0, all(arg_0.d.yx), global0.x), arg_0.d));
}

fn func_1(arg_0: i32) -> vec3<u32> {
    let var_0 = func_4(func_2(), _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_div_i32(select(-14664i, arg_0, true), select(arg_0, 1i, global0.x)), -26919i), vec2<i32>(-arg_0, arg_0) >> (reverseBits(~vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u))));
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(min(var_0.c, 1000f)), var_0.c, 1486f, _wgslsmith_f_op_f32(max(1083f, 481f))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(var_0.c)), -475f, _wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(-var_0.c))))));
    global1 = _wgslsmith_div_u32(~firstLeadingBit(u_input.a), 42039u);
    global1 = var_0.a.a.x;
    global1 = _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(~select(var_0.a.a.zx, var_0.a.a.yx, var_0.b.wz), vec2<u32>(u_input.a, var_0.a.a.x)), vec2<u32>(abs(var_0.a.a.x), ~4294967295u), countOneBits(vec2<u32>(0u, _wgslsmith_mod_u32(u_input.a, 0u)))), vec2<u32>(u_input.a, var_0.a.a.x));
    return firstTrailingBit(var_0.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(vec3<u32>(89014u, u_input.a, u_input.a) ^ vec3<u32>(u_input.a, 26693u, u_input.a), vec3<u32>(_wgslsmith_div_u32(u_input.a, 23099u), 7168u, 87782u), !global0.x || false) << (func_1(_wgslsmith_mult_i32(1i, select(-43i, 21131i, true))) % vec3<u32>(32u)));
    var_0 = func_4(func_2(), min(firstTrailingBit(_wgslsmith_clamp_vec2_i32(~vec2<i32>(0i, 1i), _wgslsmith_div_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(-1i, 26006i)), vec2<i32>(1i, -29880i))), ~vec2<i32>(~34548i, i32(-1i) * -1i))).a;
    let var_1 = all(global0.yzz);
    let var_2 = _wgslsmith_sub_i32(-_wgslsmith_dot_vec3_i32(abs(vec3<i32>(1i, 1i, 53280i)), vec3<i32>(-6116i, -11847i, -1052i)), countOneBits(i32(-1i) * -1i)) >> (u_input.a % 32u);
    let var_3 = 0u < _wgslsmith_clamp_u32(~_wgslsmith_dot_vec2_u32(min(var_0.a.zz, vec2<u32>(92216u, u_input.a)), vec2<u32>(56397u, var_0.a.x)), 3839u, u_input.a);
    var var_4 = abs(-vec3<i32>(var_2, _wgslsmith_add_i32(var_2 | var_2, _wgslsmith_mult_i32(var_2, -3063i)), _wgslsmith_clamp_i32(2147483647i, _wgslsmith_clamp_i32(var_2, 1i, var_2), _wgslsmith_div_i32(var_2, var_2))));
    var_0 = func_4(func_4(Struct_2(func_2().a, vec4<bool>(!var_1, u_input.a >= var_0.a.x, !global0.x, true & global0.x), _wgslsmith_f_op_f32(f32(-1f) * -269f), func_4(Struct_2(Struct_1(var_0.a), vec4<bool>(global0.x, true, global0.x, true), -835f, vec4<bool>(var_3, var_1, var_1, false)), firstLeadingBit(var_4.zz)).b), -_wgslsmith_add_vec2_i32(var_4.xy, var_4.xy >> (vec2<u32>(var_0.a.x, 0u) % vec2<u32>(32u)))), vec2<i32>(2147483647i, max(firstLeadingBit(-2147483647i), var_4.x)) ^ _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(var_4.x, var_4.x, 59817i), 53384i), ~(~var_4.zx))).a;
    var var_5 = _wgslsmith_div_i32(select(-2147483647i, var_4.x, true) >> (~4294967295u % 32u), var_2);
    let x = u_input.a;
    s_output = StorageBuffer(select(func_1(~var_4.x).x, abs(~abs(43033u)), global0.x), _wgslsmith_sub_i32(8571i, 3617i), func_4(func_4(func_4(Struct_2(Struct_1(var_0.a), vec4<bool>(var_1, var_1, var_1, false), -1306f, vec4<bool>(false, false, false, global0.x)), var_4.zy | var_4.xx), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_4.x, var_2), var_4.yz, var_4.zz & vec2<i32>(2147483647i, var_4.x))), select(abs(_wgslsmith_clamp_vec2_i32(var_4.yz, vec2<i32>(var_2, var_2), vec2<i32>(6627i, var_4.x))), vec2<i32>(var_4.x, 1i), !(!global0.wy))).c);
}

