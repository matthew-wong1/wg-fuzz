struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<u32>,
    c: vec3<bool>,
    d: vec3<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: Struct_4,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec2<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(66193u, vec3<u32>(4294967295u, 18037u, 4294967295u)), Struct_2(4294967295u, vec3<u32>(91225u, 79631u, 4294967295u)), Struct_2(4294967295u, vec3<u32>(63097u, 61699u, 0u)), Struct_2(19317u, vec3<u32>(36049u, 1u, 93732u)), Struct_2(5098u, vec3<u32>(2133u, 34827u, 14990u)), Struct_2(64016u, vec3<u32>(44808u, 1u, 4294967295u)), Struct_2(4294967295u, vec3<u32>(43838u, 83888u, 4294967295u)), Struct_2(47856u, vec3<u32>(1u, 4294967295u, 17573u)), Struct_2(0u, vec3<u32>(4643u, 1255u, 36083u)), Struct_2(47683u, vec3<u32>(1u, 20809u, 0u)), Struct_2(11954u, vec3<u32>(0u, 48049u, 0u)), Struct_2(63584u, vec3<u32>(11787u, 38391u, 9381u)), Struct_2(0u, vec3<u32>(4294967295u, 37143u, 0u)), Struct_2(0u, vec3<u32>(29997u, 20560u, 5623u)), Struct_2(1u, vec3<u32>(1u, 23288u, 103301u)), Struct_2(0u, vec3<u32>(0u, 1u, 1u)), Struct_2(0u, vec3<u32>(0u, 0u, 4294967295u)), Struct_2(1u, vec3<u32>(0u, 12229u, 45954u)));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>, arg_1: i32, arg_2: vec4<bool>) -> i32 {
    global0 = array<Struct_2, 18>();
    global0 = array<Struct_2, 18>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(384f + _wgslsmith_f_op_f32(f32(-1f) * -1537f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1718f), 1355f))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(204f, 1591f)))))))));
    let var_2 = Struct_5(Struct_1(reverseBits(-_wgslsmith_add_vec3_i32(vec3<i32>(-2714i, arg_1, u_input.c.x), vec3<i32>(u_input.c.x, 0i, 0i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * 1f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(330f)))), -min(u_input.c.x, ~(-2147483647i)), vec3<f32>(-415f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.x * var_1.x))), -523f)), 4294967295u, _wgslsmith_div_i32(abs(arg_1), i32(-1i) * -(~2147483647i)), Struct_4(Struct_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(var_1.x, var_1.x, arg_2.x)))), 13024i, ~924i), _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.d, 0u), u_input.a.zx ^ ~vec2<u32>(arg_0.x, arg_0.x)), !vec3<bool>(!arg_2.x, !arg_2.x, arg_2.x), -vec3<i32>(firstTrailingBit(u_input.c.x), _wgslsmith_clamp_i32(-76197i, 0i, 10172i), ~u_input.c.x)), firstTrailingBit(~_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(0i, 0i)), -u_input.c)));
    return -1i;
}

fn func_2() -> Struct_5 {
    global0 = array<Struct_2, 18>();
    global0 = array<Struct_2, 18>();
    let var_0 = _wgslsmith_add_i32(u_input.c.x ^ ~u_input.c.x, func_3(vec2<u32>(_wgslsmith_mod_u32(~20026u, 1u), 1u), ~min(12803i, i32(-1i) * -46724i), vec4<bool>(true, true, true, true)));
    var var_1 = select(select(!vec3<bool>(any(vec3<bool>(false, true, false)), true, any(vec3<bool>(false, true, true))), vec3<bool>(any(vec3<bool>(true, true, true)), true, false), !select(true, true, true)), !vec3<bool>(true, all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true))), select(any(vec3<bool>(false, false, false)), true, u_input.c.x == var_0)), vec3<bool>(false, true, any(vec4<bool>(true, true, true, true))));
    global0 = array<Struct_2, 18>();
    return Struct_5(Struct_1(abs(-vec3<i32>(1i, var_0, -2147483647i)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-691f, 460f))))), ~(i32(-1i) * -u_input.c.x), vec3<f32>(_wgslsmith_div_f32(-212f, _wgslsmith_f_op_f32(step(602f, 1641f))), -519f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-598f))))), ~min(firstLeadingBit(1u), _wgslsmith_mod_u32(70449u, u_input.d)), var_0 >> (abs(_wgslsmith_add_u32(4294967295u, 0u)) % 32u), Struct_4(Struct_3(-412f, i32(-1i) * -u_input.c.x, _wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(u_input.c.x, var_0) ^ vec2<i32>(u_input.c.x, var_0))), u_input.a.zz, select(!select(vec3<bool>(true, var_1.x, false), vec3<bool>(false, true, false), vec3<bool>(false, false, var_1.x)), select(select(vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(var_1.x, var_1.x, false), var_1.x), select(vec3<bool>(var_1.x, true, false), vec3<bool>(false, var_1.x, true), var_1.x), all(vec3<bool>(false, var_1.x, false))), any(select(vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(true, false, var_1.x, var_1.x), vec4<bool>(true, true, true, var_1.x)))), _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-24434i, 24831i, var_0), vec3<i32>(var_0, 0i, u_input.c.x)), min(vec3<i32>(u_input.c.x, var_0, -5616i), vec3<i32>(93189i, var_0, u_input.c.x)), -vec3<i32>(var_0, var_0, u_input.c.x)), firstTrailingBit(vec3<i32>(u_input.c.x, u_input.c.x, var_0)))), func_3(max(vec2<u32>(32696u, u_input.d), u_input.a.wy), -_wgslsmith_mod_i32(var_0, u_input.c.x), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, var_1.x), true)) << (1u % 32u));
}

fn func_1() -> Struct_4 {
    var var_0 = func_2();
    global0 = array<Struct_2, 18>();
    let var_1 = -11618i;
    var var_2 = !vec3<bool>(false, any(vec3<bool>(true, any(var_0.d.c.xx), var_0.d.c.x)), var_0.d.c.x);
    var_0 = Struct_5(var_0.a, 1u, -2147483647i, var_0.d, -9647i);
    return func_2().d;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 18>();
    let var_0 = func_1();
    global0 = array<Struct_2, 18>();
    global0 = array<Struct_2, 18>();
    global0 = array<Struct_2, 18>();
    let var_1 = !vec4<bool>(false, var_0.c.x, true, all(vec2<bool>(u_input.c.x == 10691i, var_0.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(func_2().d.b.x, -1i, var_0.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.a, var_0.a.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(549f, 550f))))))), ~u_input.a.wyz);
}

