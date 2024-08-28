struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<u32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_4) -> u32 {
    let var_0 = vec2<u32>(_wgslsmith_add_u32(u_input.a, 1u), ~max(~_wgslsmith_div_u32(1u, 1u), min(~u_input.a, 85331u)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)) + 2788f);
    let var_2 = _wgslsmith_f_op_f32(622f * var_1);
    let var_3 = vec2<i32>(-(~(~_wgslsmith_dot_vec2_i32(u_input.e, vec2<i32>(u_input.c, u_input.c)))), _wgslsmith_mod_i32(-u_input.e.x, -min(u_input.e.x, firstLeadingBit(-8472i))));
    var var_4 = Struct_3(~var_3.x);
    return 76926u;
}

fn func_2(arg_0: Struct_2) -> i32 {
    var var_0 = ~(~arg_0.b);
    let var_1 = arg_0;
    var_0 = func_3(true, Struct_1(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), 0i != var_1.c.x)), Struct_4(!(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true)))));
    let var_2 = Struct_1(vec4<bool>(!(any(vec4<bool>(true, false, false, false)) | true), !(_wgslsmith_add_u32(arg_0.b, u_input.a) < arg_0.b), all(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), true)), false));
    var var_3 = vec4<bool>(any(!select(var_2.a, select(vec4<bool>(true, false, true, var_2.a.x), vec4<bool>(false, true, var_2.a.x, var_2.a.x), vec4<bool>(var_2.a.x, var_2.a.x, var_2.a.x, var_2.a.x)), !var_2.a)), var_2.a.x, true, !(!all(vec2<bool>(false, false))));
    return var_1.a;
}

fn func_1() -> Struct_4 {
    let var_0 = Struct_3(~func_2(Struct_2(u_input.d.x, 76289u, ~u_input.d.zy)));
    var var_1 = Struct_2(u_input.e.x, func_3(true, Struct_1(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true)), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), true))), Struct_4(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), false), vec4<bool>(true, true, true, false), any(vec2<bool>(true, false))))), vec2<i32>(-6429i, -2772i));
    let var_2 = Struct_3(_wgslsmith_mult_i32(-u_input.e.x, -8962i));
    var var_3 = min(~reverseBits(vec4<i32>(13450i, var_1.c.x, u_input.e.x, 0i)) & (vec4<i32>(2147483647i, 2147483647i, var_1.a, 30832i) | vec4<i32>(var_1.a, 16459i, 1163i, -1i)), vec4<i32>(reverseBits(1i), 1i, max(~var_1.a, firstLeadingBit(var_2.a)), ~(i32(-1i) * -23314i))) | (-firstTrailingBit(vec4<i32>(0i, var_2.a, var_2.a, var_1.c.x)) & max(~vec4<i32>(u_input.e.x, 0i, var_1.a, -1i), ~_wgslsmith_add_vec4_i32(vec4<i32>(12227i, u_input.d.x, var_2.a, var_1.a), vec4<i32>(-1i, -18652i, 26795i, var_1.a))));
    var var_4 = Struct_1(!select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec4<bool>(false, false, false, true)), true, true, all(vec3<bool>(true, true, false))), vec4<bool>(false, u_input.a > 38204u, true, true)));
    return Struct_4(vec4<bool>(false, true, var_4.a.x, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(-22180i, _wgslsmith_mod_u32(u_input.a, u_input.a << (46997u % 32u)), ~_wgslsmith_add_vec2_i32(vec2<i32>(4226i >> (u_input.a % 32u), u_input.d.x), vec2<i32>(~0i, u_input.b)));
    var var_1 = func_1();
    let var_2 = var_1.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-1542f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1639f) + -932f), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(f32(-1f) * -1809f)), -1000f), var_0.b, vec3<u32>(1u, max(0u, var_0.b), var_0.b & _wgslsmith_add_u32(1u, ~var_0.b)), -1000f, 52482u);
}

