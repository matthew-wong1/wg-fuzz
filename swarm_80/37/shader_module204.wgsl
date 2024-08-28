struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: bool,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: f32,
    d: vec4<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_4) -> bool {
    var var_0 = Struct_2(Struct_1(arg_2.e.a.a, -205f, any(arg_2.d.wwz), u_input.b, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(arg_2.e.a.a.zx, arg_1.yx) | arg_1.xy, arg_1.yx)));
    var_0 = Struct_2(var_0.a);
    let var_1 = true;
    let var_2 = _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(38455i, countOneBits(u_input.d.x)), u_input.c.x, -1i), u_input.d);
    let var_3 = !(all(arg_2.d) || arg_2.e.a.c);
    return all(!arg_2.d);
}

fn func_2() -> Struct_4 {
    global0 = true;
    global0 = !((func_3(0u, vec3<u32>(1u, u_input.a, u_input.a), Struct_4(-1099f, Struct_3(-821f, u_input.b), -1000f, vec4<bool>(false, false, false, true), Struct_2(Struct_1(vec3<u32>(u_input.a, u_input.a, 4294967295u), 369f, false, 2147483647i, u_input.a)))) | (any(vec4<bool>(true, true, false, true)) | false)) || (countOneBits(_wgslsmith_div_i32(-2147483647i, u_input.b)) <= -1i));
    var var_0 = _wgslsmith_sub_i32(-(u_input.c.x | firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, u_input.d.x, -46551i), u_input.c.xxy))), -15405i);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -554f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(518f, 566f, true)), _wgslsmith_f_op_f32(f32(-1f) * -617f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-203f * -293f)))))));
    var var_2 = Struct_2(Struct_1(vec3<u32>(~abs(52907u), reverseBits(u_input.a), _wgslsmith_add_u32(4294967295u, u_input.a) | ~0u), _wgslsmith_f_op_f32(-var_1.x), true, u_input.b, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 43598u), vec2<u32>(u_input.a, u_input.a)), ~vec2<u32>(54159u, u_input.a)), vec2<u32>(18707u, _wgslsmith_clamp_u32(4294967295u, 92234u, u_input.a)))));
    return Struct_4(_wgslsmith_f_op_f32(-819f * _wgslsmith_div_f32(var_2.a.b, 1f)), Struct_3(_wgslsmith_f_op_f32(-var_1.x), 45463i), _wgslsmith_f_op_f32(trunc(var_1.x)), !(!select(select(vec4<bool>(var_2.a.c, true, var_2.a.c, var_2.a.c), vec4<bool>(false, var_2.a.c, var_2.a.c, false), false), vec4<bool>(var_2.a.c, var_2.a.c, var_2.a.c, var_2.a.c), !vec4<bool>(true, var_2.a.c, true, false))), Struct_2(Struct_1(~(~var_2.a.a), var_1.x, var_2.a.d <= firstTrailingBit(var_2.a.d), abs(-4389i << (u_input.a % 32u)), ~u_input.a)));
}

fn func_1() -> bool {
    let var_0 = abs(vec2<u32>(16304u, ~(~(~0u))));
    let var_1 = u_input.c.x;
    var var_2 = func_2();
    let var_3 = _wgslsmith_sub_i32(var_2.e.a.d, firstTrailingBit(~_wgslsmith_sub_i32(var_2.b.b, reverseBits(0i))));
    var var_4 = !(!select(var_2.d.wyy, var_2.d.xzx, _wgslsmith_div_u32(var_0.x, var_2.e.a.a.x) <= _wgslsmith_clamp_u32(0u, var_0.x, u_input.a)));
    return func_2().e.a.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1() & all(vec2<bool>(!all(vec3<bool>(true, true, false)), false));
    let var_0 = 67095u;
    let var_1 = any(!select(vec4<bool>(true, false, true, all(vec4<bool>(true, true, false, true))), vec4<bool>(func_3(u_input.a, vec3<u32>(u_input.a, var_0, var_0), Struct_4(407f, Struct_3(-597f, 2147483647i), 1023f, vec4<bool>(false, false, true, false), Struct_2(Struct_1(vec3<u32>(u_input.a, u_input.a, 99192u), 849f, true, u_input.b, u_input.a)))), true, func_2().e.a.c, true), true));
    var var_2 = 2147483647i;
    var var_3 = func_2().e.a;
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.d.x, 62259i, -(~(~max(u_input.d, u_input.d))), var_3.b);
}

