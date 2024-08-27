struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: bool,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
    c: vec2<f32>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 14> = array<vec3<f32>, 14>(vec3<f32>(246f, 606f, 328f), vec3<f32>(-116f, 881f, -982f), vec3<f32>(693f, 1364f, -673f), vec3<f32>(-461f, -318f, 417f), vec3<f32>(906f, -111f, 1051f), vec3<f32>(-766f, 319f, -253f), vec3<f32>(1004f, -1486f, -2016f), vec3<f32>(900f, -670f, -346f), vec3<f32>(-604f, 427f, 443f), vec3<f32>(1283f, -341f, 1000f), vec3<f32>(-1152f, 1032f, -1571f), vec3<f32>(1364f, 646f, 1587f), vec3<f32>(652f, 786f, 396f), vec3<f32>(-1989f, 960f, -1023f));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec3<u32>) -> f32 {
    var var_0 = 143f;
    var_0 = _wgslsmith_f_op_f32(1000f - 567f);
    let var_1 = 23541u;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1630f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-567f, -1808f) + vec2<f32>(708f, 906f))))));
    var var_3 = Struct_4(any(vec4<bool>(!any(arg_0), any(arg_0.yz), arg_0.x, reverseBits(arg_1.c.x) <= abs(-2147483647i))));
    return -594f;
}

fn func_3(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: vec4<f32>, arg_3: vec3<bool>) -> bool {
    global0 = array<vec3<f32>, 14>();
    let var_0 = vec3<f32>(193f, arg_2.x, _wgslsmith_f_op_f32(-493f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x))));
    let var_1 = !vec3<bool>(arg_3.x, true, arg_3.x == (true || (5991i <= arg_0.a)));
    global0 = array<vec3<f32>, 14>();
    var var_2 = true;
    return true;
}

fn func_1() -> Struct_1 {
    global0 = array<vec3<f32>, 14>();
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -444f);
    var_0 = -1771f;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2462f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(384f)))) - _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), false), Struct_1(u_input.a, 137351u, u_input.b.xy, false), ~vec3<u32>(0u, 1931u, 4294967295u)))), -831f));
    let var_1 = Struct_1(_wgslsmith_add_i32(0i, abs(0i)), 25898u, u_input.b.zz, !func_3(Struct_3(firstLeadingBit(-1i), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.b.x, u_input.b.x), vec3<i32>(u_input.a, u_input.b.x, 1i)), _wgslsmith_f_op_vec2_f32(vec2<f32>(849f, 1654f) * vec2<f32>(532f, -811f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(758f, 246f)) - vec2<f32>(-977f, -1039f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1080f, 374f, 494f, -191f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-209f, -1763f, -410f, -1271f) - vec4<f32>(-1591f, -535f, -447f, -134f))), vec3<bool>(all(vec3<bool>(true, false, true)), true, any(vec4<bool>(true, false, false, false)))));
    return var_1;
}

fn func_4(arg_0: Struct_1) -> Struct_4 {
    global0 = array<vec3<f32>, 14>();
    global0 = array<vec3<f32>, 14>();
    let var_0 = 9765u;
    let var_1 = arg_0.c.x >> (8401u % 32u);
    global0 = array<vec3<f32>, 14>();
    return Struct_4(select(!all(vec2<bool>(false, false)), true, true) & (false && arg_0.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1());
    let var_1 = ~0u;
    var var_2 = abs(_wgslsmith_mod_i32(u_input.a, u_input.b.x));
    var var_3 = 43650i;
    let var_4 = Struct_2(~_wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, var_1, 1u), max(vec3<u32>(1u, 3202u, 4294967295u), vec3<u32>(17921u, var_1, var_1)) << (vec3<u32>(0u, 33817u, 2767u) % vec3<u32>(32u)), firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(34288u, 5784u, 0u), vec3<u32>(var_1, var_1, 29428u), vec3<u32>(17191u, var_1, var_1)))));
    let var_5 = Struct_2(vec3<u32>(~select(var_4.a.x | 4294967295u, 1u, !var_0.a), ~_wgslsmith_clamp_u32(var_4.a.x, var_4.a.x, _wgslsmith_add_u32(0u, var_4.a.x)), 29336u));
    let var_6 = _wgslsmith_add_i32(-u_input.b.x, u_input.a);
    let var_7 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(!select(select(vec4<bool>(var_0.a, true, true, var_0.a), vec4<bool>(var_0.a, false, var_0.a, var_0.a), vec4<bool>(true, var_0.a, var_0.a, false)), select(vec4<bool>(false, var_0.a, false, var_0.a), vec4<bool>(false, var_0.a, true, false), true), true), Struct_1(-55328i, 1u, ~u_input.b.yy, !var_0.a), ~(~(~vec3<u32>(var_5.a.x, 14275u, var_5.a.x)))))));
    var_3 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(2147483647i, min(firstTrailingBit(_wgslsmith_clamp_i32(var_6, u_input.b.x, u_input.b.x)), u_input.b.x)), _wgslsmith_mod_i32(u_input.a, u_input.b.x));
}

