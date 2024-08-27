struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec3<u32>,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -22186i;

var<private> global1: vec4<f32>;

var<private> global2: array<vec4<u32>, 14>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_1, arg_3: i32) -> i32 {
    global1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(320f, 312f, global1.x, 1100f) - vec4<f32>(795f, global1.x, arg_2.d, -1148f)))))));
    let var_0 = arg_2;
    global2 = array<vec4<u32>, 14>();
    global0 = _wgslsmith_mod_i32(arg_2.b, -_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_3, arg_3, var_0.e), vec3<i32>(22053i, arg_2.e, -38833i)) >> (firstLeadingBit(44450u) % 32u), abs(arg_3) | ~0i));
    global2 = array<vec4<u32>, 14>();
    return -2147483647i;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec4<bool>) -> bool {
    global1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.d, _wgslsmith_f_op_f32(f32(-1f) * -1164f)))), _wgslsmith_f_op_f32(f32(-1f) * -702f), _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-366f - 2192f))), _wgslsmith_f_op_f32(min(-620f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))));
    var var_0 = arg_1.a.xz;
    var var_1 = Struct_1(vec4<bool>(_wgslsmith_dot_vec3_i32(arg_0.wyx, -arg_0.zwx) > arg_1.b, !(global1.x != _wgslsmith_f_op_f32(global1.x - 318f)), true, arg_2.x), func_3(~firstTrailingBit(~vec3<u32>(u_input.c.x, 0u, 11593u)), !(!(!arg_2.x)), arg_1, ~(~arg_1.b)), vec3<u32>(arg_1.c.x, max(~1u, _wgslsmith_mult_u32(~0u, min(u_input.a.x, u_input.b.x))), ~0u), global1.x, abs(arg_1.b) >> (0u % 32u));
    let var_2 = arg_1;
    var var_3 = _wgslsmith_f_op_f32(arg_1.d * _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1000f, global1.x))));
    return ~0u < u_input.c.x;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global0 = select(arg_0.e, -73594i, false);
    var var_0 = -(~vec2<i32>(_wgslsmith_mod_i32(arg_0.b, arg_0.e), _wgslsmith_add_i32(-24187i, arg_0.e))) << (u_input.c.xz % vec2<u32>(32u));
    var var_1 = u_input.a.xz;
    let var_2 = Struct_1(!arg_0.a, ~reverseBits(_wgslsmith_mod_i32(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, arg_0.e), vec2<i32>(var_0.x, var_0.x)))), _wgslsmith_sub_vec3_u32(u_input.c.yyw, _wgslsmith_clamp_vec3_u32(countOneBits(~u_input.c.zwz), arg_0.c, vec3<u32>(0u, 1u, u_input.a.x) << (arg_0.c % vec3<u32>(32u)))), -256f, _wgslsmith_mult_i32(-select(42203i, -10018i, !arg_0.a.x), arg_0.e));
    global2 = array<vec4<u32>, 14>();
    return arg_0;
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    let var_0 = 1i;
    let var_1 = func_4(Struct_1(select(vec4<bool>(true, all(vec2<bool>(false, true)), false, any(vec3<bool>(true, true, false))), vec4<bool>(true, true, true, true), true), 28878i, abs(min(u_input.c.zzx, u_input.a)), global1.x, ~select(-37203i, var_0 ^ 1i, func_2(vec4<i32>(-51773i, 65893i, var_0, 25979i), Struct_1(vec4<bool>(true, true, false, true), -1i, u_input.a, arg_0.x, var_0), vec4<bool>(false, true, false, true)))));
    var var_2 = Struct_1(!vec4<bool>(!var_1.a.x, var_1.e < func_3(var_1.c, false, Struct_1(vec4<bool>(var_1.a.x, false, true, var_1.a.x), -18148i, vec3<u32>(u_input.b.x, 7309u, var_1.c.x), -871f, var_0), var_0), _wgslsmith_f_op_f32(exp2(arg_0.x)) >= func_4(var_1).d, !var_1.a.x), 1i, ~firstTrailingBit(vec3<u32>(_wgslsmith_mult_u32(40281u, 0u), _wgslsmith_mod_u32(var_1.c.x, u_input.a.x), 1704u)), -1183f, max(~var_0 ^ _wgslsmith_add_i32(_wgslsmith_mod_i32(var_0, var_0), var_0), countOneBits(-2147483647i)));
    let var_3 = var_1.c.zy;
    return var_1;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    global1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1137f) + _wgslsmith_f_op_f32(min(1000f, -314f))), func_1(global1.yzx).d), _wgslsmith_f_op_f32(f32(-1f) * -733f), global1.x));
    global1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d, arg_1.d, 748f, 405f) + vec4<f32>(1046f, arg_0.d, arg_1.d, arg_1.d)))))))));
    let var_0 = 918f;
    global2 = array<vec4<u32>, 14>();
    let var_1 = _wgslsmith_f_op_f32(round(-365f)) >= _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec3_f32(-global1.wwz)).d + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.d), _wgslsmith_f_op_f32(abs(2082f)))));
    return min(arg_1.b, i32(-1i) * -1i);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<u32>, 14>();
    var var_0 = 476f;
    let var_1 = ~func_5(Struct_1(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false)), -2315i, u_input.c.zwy, 560f, _wgslsmith_div_i32(countOneBits(1i), ~(-42073i))), func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, global1.x) + vec3<f32>(1364f, -606f, 1390f))));
    var var_2 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(max(930f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + _wgslsmith_f_op_f32(-global1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.x))))));
    let var_3 = Struct_1(select(func_1(vec3<f32>(_wgslsmith_f_op_f32(sign(global1.x)), var_2.x, -489f)).a, !(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), true)), vec4<bool>(true, true, true, !any(vec4<bool>(false, false, false, true)))), func_3(~(~reverseBits(u_input.c.wwz)), false, Struct_1(vec4<bool>(true, func_4(Struct_1(vec4<bool>(true, true, true, false), var_1, vec3<u32>(33838u, 30031u, 88187u), 401f, var_1)).a.x, global1.x > var_2.x, func_4(Struct_1(vec4<bool>(true, true, false, true), 1i, u_input.c.zwy, var_2.x, var_1)).a.x), max(var_1 ^ 23938i, -16097i), ~u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-675f, var_2.x, true)) + _wgslsmith_f_op_f32(-1939f + global1.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -1i, 1i, var_1), -vec4<i32>(-1i, 1i, 46572i, var_1))), ~(-_wgslsmith_mod_i32(var_1, -1i))), u_input.a, var_2.x, func_3(abs(u_input.a), false, func_1(global1.zwz), -var_1));
    let var_4 = all(func_1(vec3<f32>(_wgslsmith_f_op_f32(-1707f * _wgslsmith_f_op_f32(var_3.d + -555f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), var_3.d)).a);
    let var_5 = var_4;
    var var_6 = Struct_1(select(select(vec4<bool>(select(var_4, var_4, true), var_3.a.x, true, var_3.a.x), select(var_3.a, vec4<bool>(false, var_5, var_3.a.x, var_4), false), var_3.a), func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.yzy * global1.xww))).a, _wgslsmith_f_op_f32(min(global1.x, -1000f)) != _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -250f), 1000f))), 43205i | -(firstLeadingBit(var_1) << ((u_input.c.x >> (0u % 32u)) % 32u)), firstTrailingBit(var_3.c) >> (func_4(func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-721f, var_2.x, var_2.x)))).c % vec3<u32>(32u)), _wgslsmith_f_op_f32(min(1722f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-194f, var_2.x)))))), var_3.e);
    let var_7 = _wgslsmith_f_op_f32(exp2(var_3.d));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, u_input.a.zx << (~func_4(func_1(global1.xzz)).c.zz % vec2<u32>(32u)), _wgslsmith_sub_u32(select(0u, ~(~94783u), var_6.b >= ~var_3.b), u_input.c.x & ~reverseBits(0u)));
}

