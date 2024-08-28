struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: Struct_3,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3) -> u32 {
    var var_0 = arg_0.a;
    var var_1 = vec2<bool>(global1.x, true);
    var var_2 = Struct_1(_wgslsmith_mod_vec2_i32(-vec2<i32>(_wgslsmith_add_i32(global0.c.a.x, global0.d), global0.d), global0.c.a));
    var_2 = Struct_1(vec2<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(arg_0.a.c.a.x, var_2.a.x), -vec2<i32>(arg_0.a.c.a.x, var_2.a.x)), arg_0.a.d) ^ -(vec2<i32>(-1i) * -vec2<i32>(0i, 176i)));
    var var_3 = -_wgslsmith_clamp_vec3_i32(u_input.c.yzw, _wgslsmith_add_vec3_i32(~(~u_input.c.zwy), u_input.c.zyy), vec3<i32>(min(var_2.a.x, var_2.a.x) << ((arg_0.b & u_input.a) % 32u), _wgslsmith_mod_i32(select(var_2.a.x, global0.a.a.x, var_1.x), _wgslsmith_add_i32(var_2.a.x, 54026i)), 2147483647i));
    return ~_wgslsmith_sub_u32(_wgslsmith_mod_u32(68286u & (arg_0.b | u_input.d.x), ~(~0u)), 70246u);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_1) -> u32 {
    let var_0 = ~12836i;
    var var_1 = var_0;
    let var_2 = vec2<bool>(arg_2.a.d != (arg_2.a.c.a.x & global0.d), all(!select(select(vec3<bool>(global1.x, false, global1.x), vec3<bool>(global1.x, global1.x, true), global1.x), vec3<bool>(global1.x, global1.x, false), vec3<bool>(global1.x, true, false))));
    let var_3 = Struct_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(global0.e.x, -444f, 1691f, 1657f), _wgslsmith_f_op_vec4_f32(ceil(global0.e))))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-1316f + arg_0.a.e.x), arg_2.a.e.x, _wgslsmith_f_op_f32(670f - global0.e.x), -431f), vec4<f32>(arg_2.a.e.x, _wgslsmith_f_op_f32(-arg_0.a.e.x), _wgslsmith_f_op_f32(-arg_2.a.e.x), global0.e.x)))), !select(select(vec4<bool>(global1.x, var_2.x, var_2.x, false), vec4<bool>(false, var_2.x, false, global1.x), vec4<bool>(true, false, global1.x, false)), !(!vec4<bool>(true, true, var_2.x, var_2.x)), true), arg_2, -arg_3.a.x, ~1u);
    var var_4 = ~select(~firstLeadingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, arg_2.b), u_input.e)), abs(vec2<u32>(abs(arg_2.b), var_3.c.b)), false);
    return ~(~func_3(var_3.c));
}

fn func_2(arg_0: f32, arg_1: vec4<f32>) -> vec3<bool> {
    var var_0 = ~(~84646u) | func_4(Struct_3(Struct_2(Struct_1(vec2<i32>(-55286i, 1i)), global0.b, global0.c, 2147483647i, _wgslsmith_f_op_vec4_f32(-arg_1)), func_3(Struct_3(Struct_2(Struct_1(vec2<i32>(-34804i, global0.b.a.x)), global0.b, Struct_1(u_input.c.xw), -34461i, arg_1), u_input.a))), global0.a, Struct_3(Struct_2(global0.c, global0.b, Struct_1(global0.a.a), _wgslsmith_div_i32(u_input.c.x, -2147483647i), _wgslsmith_f_op_vec4_f32(step(arg_1, vec4<f32>(652f, -822f, global0.e.x, 519f)))), u_input.a), global0.a);
    let var_1 = -2147483647i;
    global0 = Struct_2(global0.a, Struct_1(vec2<i32>(21213i, firstTrailingBit(_wgslsmith_div_i32(global0.a.a.x, 2147483647i)))), Struct_1(reverseBits(vec2<i32>(-24911i, 1i))), -14447i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global0.e, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-3060f, 543f, 1071f, arg_1.x))))));
    global0 = Struct_2(Struct_1(global0.a.a), Struct_1(vec2<i32>(var_1, firstLeadingBit(-11884i))), global0.b, -(_wgslsmith_mod_i32(-global0.c.a.x, var_1) >> (u_input.e.x % 32u)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1165f, _wgslsmith_div_f32(1000f, arg_0), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(563f, global0.e.x, global1.x)), _wgslsmith_f_op_f32(round(arg_0)))), 1000f))));
    let var_2 = _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, min(func_3(Struct_3(Struct_2(Struct_1(vec2<i32>(var_1, -1i)), Struct_1(u_input.c.zz), Struct_1(global0.b.a), global0.a.a.x, arg_1), 89u)), u_input.d.x), 71047u), vec3<u32>(~(u_input.b >> (u_input.e.x % 32u)), ~0u, u_input.b)), u_input.b);
    return !vec3<bool>(!any(vec2<bool>(true, true)), true, global1.x);
}

fn func_1(arg_0: vec2<i32>) -> StorageBuffer {
    var var_0 = Struct_2(Struct_1(select(select(u_input.c.xx, vec2<i32>(arg_0.x, global0.c.a.x), global1.x), select(vec2<i32>(arg_0.x, global0.b.a.x), ~vec2<i32>(u_input.c.x, global0.d), !vec2<bool>(global1.x, global1.x)), all(func_2(global0.e.x, vec4<f32>(-365f, 233f, -599f, 592f))))), Struct_1(arg_0), Struct_1(vec2<i32>(reverseBits(arg_0.x), -(arg_0.x | -2147483647i))), firstTrailingBit(-1i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2404f, global0.e.x, -1734f, global0.e.x))) - global0.e));
    global0 = Struct_2(Struct_1(abs(u_input.c.zz)), Struct_1((global0.b.a ^ firstLeadingBit(vec2<i32>(57804i, global0.a.a.x))) << (select(vec2<u32>(u_input.a, u_input.e.x), _wgslsmith_div_vec2_u32(u_input.e, vec2<u32>(0u, u_input.b)), true) % vec2<u32>(32u))), Struct_1(abs(arg_0)), global0.c.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global0.e, vec4<f32>(_wgslsmith_f_op_f32(floor(1314f)), _wgslsmith_f_op_f32(global0.e.x + global0.e.x), _wgslsmith_f_op_f32(-global0.e.x), var_0.e.x))));
    var var_1 = Struct_1(u_input.c.wy);
    var var_2 = Struct_2(Struct_1(var_1.a), Struct_1(vec2<i32>(var_0.d, min(0i, 0i))), Struct_1(vec2<i32>(global0.c.a.x, 2147483647i)), ~(-1i), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(var_0.e - vec4<f32>(1165f, var_0.e.x, 688f, 372f)), _wgslsmith_f_op_vec4_f32(-global0.e))))), vec4<f32>(-1090f, var_0.e.x, _wgslsmith_f_op_f32(-271f - var_0.e.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-420f - -1000f) + _wgslsmith_f_op_f32(f32(-1f) * -561f)))));
    var var_3 = !(!(!vec2<bool>(any(vec2<bool>(false, global1.x)), false)));
    return StorageBuffer(var_2.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.e.x)));
    var var_2 = Struct_1(~min(~(vec2<i32>(2147483647i, 0i) | vec2<i32>(u_input.c.x, -3548i)), vec2<i32>(-1i) * -u_input.c.zx));
    let var_3 = global0.c.a.x;
    var_0 = 1u;
    var var_4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-851f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-667f + var_1), global0.e.x)))))));
    let var_5 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-513f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.e.x, -881f)) - var_1)) * _wgslsmith_f_op_f32(-182f - var_1)), 427f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(615f))));
    let var_6 = select(!vec3<bool>(any(!vec3<bool>(true, false, global1.x)), !(!global1.x), global1.x), !(!(!select(vec3<bool>(global1.x, true, global1.x), vec3<bool>(global1.x, global1.x, false), vec3<bool>(global1.x, global1.x, false)))), !(!vec3<bool>(global1.x, any(vec4<bool>(global1.x, false, true, global1.x)), u_input.b <= u_input.b)));
    let var_7 = var_6.x;
    let x = u_input.a;
    s_output = func_1(~vec2<i32>(~(~var_2.a.x), -2147483647i));
}

