struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: Struct_3) -> vec3<u32> {
    global0 = false;
    let var_0 = true | (true & !any(!vec3<bool>(false, arg_1, true)));
    let var_1 = select(u_input.b, u_input.d.x, arg_1);
    var var_2 = arg_2.a;
    var var_3 = _wgslsmith_f_op_vec2_f32(arg_2.b.c * arg_2.a.a.c);
    return vec3<u32>(~(u_input.c & abs(abs(4294967295u))), u_input.d.x, u_input.d.x);
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    global0 = arg_0.x;
    let var_0 = ~vec2<u32>(0u, 0u);
    let var_1 = Struct_4(vec3<bool>(arg_0.x, arg_0.x, true), vec2<u32>(5683u, ~_wgslsmith_sub_u32(4294967295u, u_input.c)) ^ (firstLeadingBit(abs(u_input.d.wx)) << (firstLeadingBit(var_0 & u_input.d.zx) % vec2<u32>(32u))), u_input.d);
    let var_2 = countOneBits(var_1.c.zyy ^ vec3<u32>(18939u, ~u_input.c, firstTrailingBit(22692u))) >> (firstLeadingBit(max(var_1.c.yxw, abs(func_3(24116i, var_1.a.x, Struct_3(Struct_2(Struct_1(vec4<i32>(-1i, 11030i, 6545i, -80805i), vec4<f32>(1000f, -494f, 268f, -604f), vec2<f32>(776f, -274f))), Struct_1(vec4<i32>(-2147483647i, -2147483647i, u_input.a.x, u_input.a.x), vec4<f32>(-764f, -1542f, -1098f, 992f), vec2<f32>(120f, 1215f))))))) % vec3<u32>(32u));
    global0 = false;
    return Struct_1(abs(vec4<i32>(-6524i, 40880i, max(u_input.a.x, 37138i), _wgslsmith_clamp_i32(u_input.a.x, 1i, u_input.a.x)) | -(~vec4<i32>(u_input.a.x, u_input.a.x, 1i, u_input.a.x))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1635f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -675f), -657f)), _wgslsmith_div_f32(-715f, _wgslsmith_f_op_f32(-796f + -848f)), 2057f), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-461f - _wgslsmith_f_op_f32(426f + -1706f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -358f))) + 304f)));
}

fn func_1() -> bool {
    var var_0 = Struct_3(Struct_2(func_2(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true))), Struct_1(vec4<i32>(u_input.a.x ^ u_input.a.x, -u_input.a.x, u_input.a.x, abs(-72320i)) >> ((~u_input.d << ((u_input.d >> (vec4<u32>(1u, 23472u, 35795u, u_input.c) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-936f, -463f, -995f, 1533f), vec4<f32>(-417f, -1480f, -203f, -1919f)) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-628f, -1000f, 642f, 861f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1927f), _wgslsmith_f_op_f32(trunc(810f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1192f, 266f)))));
    var var_1 = Struct_2(var_0.b);
    global0 = !(!((min(var_1.a.a.x, u_input.a.x) <= ~u_input.a.x) & (any(vec2<bool>(true, false)) && select(false, false, true))));
    global0 = select(true, all(select(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), any(vec3<bool>(false, true, false))))), !(!any(vec4<bool>(false, true, true, false))));
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-1328f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-792f + var_0.b.b.x)))), 489f)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = (true && !func_1()) || all(vec4<bool>(true, true, u_input.a.x == ~20022i, true));
    let var_0 = u_input.a.x;
    var var_1 = func_3(1i, all(vec3<bool>(true, false, !select(false, false, false))), Struct_3(Struct_2(Struct_1(vec4<i32>(0i, var_0, -1i, u_input.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1433f, 249f, -415f, -326f)), vec2<f32>(-646f, 1000f))), Struct_1(~(vec4<i32>(-93503i, var_0, u_input.a.x, 12402i) << (vec4<u32>(u_input.b, u_input.d.x, 4294967295u, 10158u) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-598f, -108f, 526f, 2151f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1605f, 1084f), vec2<f32>(1661f, 772f)) * func_2(vec3<bool>(true, false, true)).b.xx)))).yz;
    var_1 = select(u_input.d.ww, _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(~u_input.d.x, 3164u), u_input.d.wz), ~select(u_input.d.zx, ~u_input.d.zz, vec2<bool>(true, true))), false);
    var_1 = vec2<u32>(~_wgslsmith_mult_u32(~u_input.d.x, _wgslsmith_mod_u32(~47005u, ~0u)), min(~firstTrailingBit(1u), u_input.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-2634f, -947f, -569f, -802f));
}

