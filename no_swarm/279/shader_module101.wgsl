struct Struct_1 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = Struct_1(-1000f, ~(~u_input.a.x));
    var var_1 = Struct_1(var_0.a, _wgslsmith_mult_u32(var_0.b, arg_0.b));
    var var_2 = true;
    let var_3 = -153f;
    var var_4 = var_0;
    return !any(vec2<bool>(true, true));
}

fn func_2(arg_0: vec2<f32>, arg_1: i32) -> i32 {
    var var_0 = vec3<i32>(1i, -67130i, arg_1);
    let var_1 = abs(_wgslsmith_sub_vec2_i32(var_0.zy, min(var_0.yz, _wgslsmith_mult_vec2_i32(~vec2<i32>(var_0.x, 47821i), ~var_0.xy))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-arg_0.x), ~u_input.a.x);
    let var_3 = countOneBits(_wgslsmith_sub_i32(13459i, -18577i));
    let var_4 = !(!(!(!func_3(Struct_1(var_2.a, var_2.b)))));
    return ~(-(~(var_3 & 0i))) & -_wgslsmith_add_i32(-9364i, ~var_1.x);
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> u32 {
    var var_0 = ~(~arg_1);
    var var_1 = abs(select(_wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(arg_1, arg_1, 1810i, arg_1)), vec4<i32>(arg_1, 0i, arg_1, -2147483647i)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, -24161i, -26034i, arg_1), vec4<i32>(-1i, 1i, arg_1, -52772i)), 1i, -29033i, ~arg_1), (u_input.a.x ^ 62868u) >= 1u)) >> (_wgslsmith_add_vec4_u32(max(reverseBits(vec4<u32>(arg_0.b, 1u, arg_0.b, 6271u)), ~vec4<u32>(4294967295u, arg_0.b, u_input.a.x, arg_0.b)), vec4<u32>(1u, _wgslsmith_div_u32(4294967295u, ~1u), ~arg_0.b, max(0u, arg_0.b) | ~u_input.a.x)) % vec4<u32>(32u));
    let var_2 = ~_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(39328i, _wgslsmith_clamp_i32(var_1.x, 2147483647i, var_1.x), var_1.x), -reverseBits(var_1.wxw)), vec3<i32>(~var_1.x, reverseBits(_wgslsmith_div_i32(var_1.x, 287i)), 1i));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(abs(arg_0.a)), u_input.a.x);
    var_0 = ~var_1.x;
    return u_input.a.x;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.a))), var_0.a, var_0.a);
    let var_2 = ~(~(~vec4<u32>(47721u, arg_0.b, var_0.b, arg_0.b)) << (abs(reverseBits(vec4<u32>(var_0.b, 78595u, 4294967295u, u_input.a.x))) % vec4<u32>(32u))) | vec4<u32>(~(~(~16635u)), u_input.a.x, ~arg_0.b, func_4(arg_0, func_2(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.a, arg_0.a), var_1.zz), ~60647i)));
    let var_3 = !select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), vec3<bool>(false, false, false))), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true))));
    var var_4 = true;
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)))) - var_1.x), ~_wgslsmith_mod_u32(~var_2.x, ~1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_dot_vec2_i32(~vec2<i32>(_wgslsmith_mult_i32(16549i, 0i), i32(-1i) * -7027i), countOneBits(firstTrailingBit(select(vec2<i32>(1616i, 39232i), vec2<i32>(-1i, 2147483647i), vec2<bool>(false, true)))));
    var_0 = 0i;
    var_0 = 15641i;
    let var_1 = ~u_input.a.x;
    let var_2 = 1187f;
    let var_3 = ~select(~vec3<u32>(var_1, 4294967295u, 0u), vec3<u32>(var_1, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), vec2<u32>(u_input.a.x, u_input.a.x)), firstLeadingBit(u_input.a.x)), vec3<bool>(true, true, true)) & ~(~(vec3<u32>(u_input.a.x, 4294967295u, 0u) ^ ~vec3<u32>(4294967295u, u_input.a.x, 0u)));
    var var_4 = func_1(Struct_1(var_2, ~var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(var_3.yx & select(vec2<u32>(47486u, var_4.b), var_3.yx, vec2<bool>(false, false)))), ~max(vec3<u32>(func_1(Struct_1(-765f, 0u)).b, ~var_4.b, _wgslsmith_mult_u32(var_3.x, 22064u)), ~abs(vec3<u32>(var_4.b, var_1, u_input.a.x))));
}

