struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 28>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1987f)));
    global0 = array<vec2<u32>, 28>();
    let var_1 = vec2<f32>(1294f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(f32(-1f) * -292f)) + _wgslsmith_div_f32(-1040f, _wgslsmith_f_op_f32(1867f + -515f))), -955f)));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-1187f * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_1.x, 542f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-600f * var_1.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + var_1.x) - _wgslsmith_div_f32(455f, var_1.x)))))));
    var var_3 = firstTrailingBit(u_input.c);
    return Struct_1(~var_3.zyw, vec4<u32>(~_wgslsmith_mod_u32(var_3.x >> (9270u % 32u), u_input.c.x), _wgslsmith_dot_vec3_u32(u_input.c.yxw, _wgslsmith_sub_vec3_u32(u_input.c.xwy, _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 34293u, var_3.x), var_3.wwx))), 52388u, 107991u), select(true, !(var_3.x == 32828u), false), var_1.x);
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: Struct_1) -> vec3<u32> {
    global0 = array<vec2<u32>, 28>();
    var var_0 = _wgslsmith_clamp_u32(~arg_2.b.x, 4294967295u, arg_2.a.x);
    var var_1 = arg_2;
    var var_2 = u_input.a.x;
    var var_3 = func_2();
    return _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(countOneBits(max(0u, 50227u)), var_3.b.x, ~0u), 4294967295u, ~var_3.a.x), ~vec3<u32>(firstTrailingBit(14566u) & 11666u, 99697u, var_3.a.x));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> bool {
    var var_0 = vec3<u32>(arg_0.a.x, u_input.c.x, arg_1.b.x >> (64649u % 32u)) | _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.b.x >> (4294967295u % 32u), u_input.c.x, arg_0.b.x) << (vec3<u32>(0u | u_input.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(95205u, 10332u), vec2<u32>(38120u, arg_0.b.x)), arg_1.a.x) % vec3<u32>(32u)), u_input.c.xwy);
    var_0 = func_2().a;
    global0 = array<vec2<u32>, 28>();
    var var_1 = 0u;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-2416f)), _wgslsmith_f_op_f32(exp2(arg_1.d)));
    return true;
}

fn func_1(arg_0: vec4<bool>) -> vec3<bool> {
    let var_0 = ((_wgslsmith_mod_u32(4294967295u, _wgslsmith_sub_u32(u_input.c.x, u_input.c.x)) << (~(4294967295u & u_input.c.x) % 32u)) << (u_input.c.x % 32u)) ^ abs(min((u_input.c.x | 4294967295u) << (u_input.c.x % 32u), abs(123620u)));
    let var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, -1000f), vec2<f32>(-568f, -222f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-602f, -1897f), vec2<f32>(511f, 208f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-300f, 2554f)))), !arg_0.x & select(arg_0.x, any(arg_0.zxw), !arg_0.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(279f, _wgslsmith_f_op_f32(-1025f - _wgslsmith_f_op_f32(trunc(-348f)))) * vec2<f32>(_wgslsmith_div_f32(-1000f, -128f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(132f)))))));
    let var_2 = func_2();
    let var_3 = func_2();
    var var_4 = false;
    return select(vec3<bool>(var_2.c, arg_0.x & func_2().c, arg_0.x), select(vec3<bool>(all(vec2<bool>(true, var_3.c)), all(!arg_0.yx), var_3.c), !arg_0.yxy, any(arg_0.yxw)), vec3<bool>(func_4(Struct_1(func_3(vec4<f32>(var_1.x, -515f, 727f, var_3.d), vec3<f32>(1000f, var_3.d, var_1.x), var_3), countOneBits(var_2.b), var_2.c, _wgslsmith_f_op_f32(var_3.d - 339f)), Struct_1(_wgslsmith_mod_vec3_u32(u_input.c.zzw, vec3<u32>(27612u, 30384u, var_3.a.x)), vec4<u32>(4294967295u, 35983u, u_input.c.x, u_input.c.x), func_2().c, var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1422f)))), ~max(u_input.c.x, var_2.a.x) != u_input.c.x, !(!(3678i >= u_input.a.x))));
}

fn func_5(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = Struct_1(u_input.c.wxz | reverseBits(select(vec3<u32>(u_input.c.x, u_input.c.x, 23271u) | u_input.c.xzw, ~u_input.c.wxy, select(vec3<bool>(arg_0.x, true, arg_0.x), arg_0, arg_0))), _wgslsmith_clamp_vec4_u32(max(~(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x) << (vec4<u32>(66657u, 18409u, 15009u, u_input.c.x) % vec4<u32>(32u))), u_input.c), u_input.c, func_2().b), !all(arg_0.zy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -1184f)), _wgslsmith_div_f32(1866f, -359f)))));
    global0 = array<vec2<u32>, 28>();
    global0 = array<vec2<u32>, 28>();
    global0 = array<vec2<u32>, 28>();
    global0 = array<vec2<u32>, 28>();
    return Struct_1(func_3(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d)), var_0.d, _wgslsmith_f_op_f32(sign(-685f)), _wgslsmith_f_op_f32(f32(-1f) * -2272f)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d, 1000f, var_0.d)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-557f, var_0.d, var_0.d))))), var_0), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(26096u, 17405u, u_input.c.x, 1u), vec4<u32>(var_0.b.x, 0u, u_input.c.x, 0u) ^ vec4<u32>(u_input.c.x, var_0.b.x, u_input.c.x, var_0.b.x)), 60116u, ~_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), ~(~var_0.a.x)), ~vec4<u32>(~var_0.a.x, 58201u << (var_0.a.x % 32u), 1u, 4294967295u)), arg_0.x || (~(~u_input.c.x) != firstTrailingBit(~var_0.b.x)), var_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(select(select(vec3<bool>(true, true, true), vec3<bool>(false, any(vec3<bool>(true, false, true)), true), vec3<bool>(true, true, all(vec2<bool>(false, true)))), vec3<bool>(any(vec3<bool>(false, true, false)), false, false), !select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true), func_1(vec4<bool>(false, true, false, false)), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)))));
    global0 = array<vec2<u32>, 28>();
    let var_1 = vec2<u32>(var_0.a.x, var_0.a.x);
    global0 = array<vec2<u32>, 28>();
    global0 = array<vec2<u32>, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(func_5(func_1(vec4<bool>(var_0.c, var_0.c, false, var_0.c))).d, var_0.d, var_0.d));
}

