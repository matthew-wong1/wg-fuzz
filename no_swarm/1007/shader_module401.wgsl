struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec4<bool>,
    d: f32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: bool,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: Struct_2,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec3<bool>) -> bool {
    let var_0 = vec4<bool>(arg_1.a, false, arg_3.x, !all(!select(arg_2.b.b, arg_2.b.b, vec4<bool>(arg_2.c, arg_2.c, arg_0.x, arg_0.x))));
    let var_1 = ~(-6443i);
    let var_2 = vec2<i32>(reverseBits(abs(var_1)), -(~(-var_1) >> (~_wgslsmith_dot_vec4_u32(u_input.a, u_input.a) % 32u)));
    let var_3 = vec2<u32>(~_wgslsmith_mod_u32(_wgslsmith_add_u32(15585u, 1u), u_input.a.x), _wgslsmith_mult_u32(arg_2.a, u_input.a.x));
    var var_4 = arg_1.b;
    return all(vec4<bool>(true, select(true, arg_3.x, select(true, true, true)), false, true));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<f32>) -> vec3<i32> {
    let var_0 = reverseBits(u_input.a.zy);
    let var_1 = -(~1i);
    var var_2 = Struct_5(Struct_1(true, vec4<bool>(true, true, func_3(vec2<bool>(true, true), Struct_1(false, vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), -1588f, arg_0), Struct_3(var_0.x, Struct_1(false, vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), -572f, vec4<f32>(arg_1.x, -784f, arg_0.x, arg_0.x)), true), vec3<bool>(true, true, true)), true), vec4<bool>(true, any(vec3<bool>(true, true, true)), false, (var_1 >> (var_0.x % 32u)) < var_1), _wgslsmith_div_f32(arg_1.x, 877f), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.x, -233f, -563f, arg_1.x), arg_0)), arg_0))))), var_0.x, Struct_3(_wgslsmith_add_u32(~var_0.x, u_input.a.x), Struct_1(select(true, true, all(vec4<bool>(true, true, true, false))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), 1184f, _wgslsmith_f_op_vec4_f32(arg_0 - _wgslsmith_f_op_vec4_f32(select(arg_0, vec4<f32>(341f, -232f, arg_1.x, arg_0.x), true)))), true));
    var_2 = Struct_5(var_2.c.b, reverseBits(~(~_wgslsmith_add_u32(var_0.x, 8905u))), var_2.c);
    var var_3 = Struct_2(_wgslsmith_mod_u32(u_input.a.x, ~u_input.a.x), 783f, -vec2<i32>(_wgslsmith_mod_i32(var_1, -1624i), -15653i));
    return -(~(~select(reverseBits(vec3<i32>(14816i, var_3.c.x, 1233i)), vec3<i32>(var_1, -42282i, var_3.c.x), var_2.a.b.x)));
}

fn func_1(arg_0: vec3<bool>, arg_1: f32, arg_2: vec3<i32>, arg_3: vec4<u32>) -> Struct_3 {
    let var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(arg_1, arg_1, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-411f, arg_1, arg_0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(773f + -1998f), arg_1)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(566f * 1000f)))), -159f));
    let var_1 = _wgslsmith_clamp_vec3_i32(arg_2, vec3<i32>(2147483647i, 1i, _wgslsmith_add_i32(arg_2.x, (-2147483647i | arg_2.x) & -arg_2.x)), arg_2);
    var var_2 = -abs(func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1698f, 631f, arg_1, arg_1)), vec4<f32>(1000f, var_0.x, 1064f, var_0.x)), var_0.xy));
    var var_3 = Struct_2(max(abs(_wgslsmith_mult_u32(reverseBits(4294967295u), u_input.a.x ^ u_input.a.x)), 28993u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(-var_0.x), !arg_0.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(363f - 400f))), _wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(_wgslsmith_mult_i32(-16934i, var_1.x), -2147483647i)), vec2<i32>(0i, _wgslsmith_add_i32(0i, min(2147483647i, var_1.x)))));
    var_3 = Struct_2(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(arg_3.zxz, arg_3.wzw | min(arg_3.zwz, vec3<u32>(24992u, var_3.a, u_input.a.x))), countOneBits(arg_3.x << (abs(6899u) % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_3.b))), vec2<i32>(-1i, 1i));
    return Struct_3(~(1u << ((u_input.a.x << (_wgslsmith_add_u32(16580u, u_input.a.x) % 32u)) % 32u)), Struct_1(!all(vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x)), select(select(vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), select(vec4<bool>(false, false, true, true), vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), true), select(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), vec4<bool>(arg_0.x, false, false, true), vec4<bool>(false, arg_0.x, arg_0.x, true))), vec4<bool>(any(vec4<bool>(arg_0.x, true, arg_0.x, false)), func_3(vec2<bool>(true, arg_0.x), Struct_1(arg_0.x, vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), vec4<bool>(false, false, true, arg_0.x), -846f, vec4<f32>(arg_1, 1299f, -638f, 1000f)), Struct_3(29720u, Struct_1(arg_0.x, vec4<bool>(arg_0.x, arg_0.x, false, true), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), var_3.b, vec4<f32>(-1006f, 1037f, var_0.x, arg_1)), false), arg_0), arg_0.x, select(true, arg_0.x, arg_0.x)), !select(vec4<bool>(true, arg_0.x, true, false), vec4<bool>(false, arg_0.x, arg_0.x, true), arg_0.x)), !vec4<bool>(true, any(vec4<bool>(arg_0.x, false, arg_0.x, false)), false, true), -614f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(730f, var_3.b, 388f, -1000f)))), arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_i32(_wgslsmith_mod_i32(_wgslsmith_sub_i32(-35182i, firstLeadingBit(1i)), 1i), _wgslsmith_mult_i32(-_wgslsmith_clamp_i32(i32(-1i) * -29210i, abs(32442i), _wgslsmith_clamp_i32(0i, 22973i, -1i)), select(_wgslsmith_add_i32(1i, -26732i), ~(~(-25869i)), false)));
    var var_1 = Struct_4(true, func_1(vec3<bool>(true, true, all(vec4<bool>(true, true, true, true))), -722f, _wgslsmith_sub_vec3_i32(-firstLeadingBit(vec3<i32>(var_0, -30042i, 2147483647i)), -vec3<i32>(var_0, var_0, var_0) | -vec3<i32>(var_0, var_0, var_0)), ~min(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), u_input.a), ~vec4<u32>(0u, u_input.a.x, u_input.a.x, 0u))), Struct_2(u_input.a.x, -128f, vec2<i32>(-(-2147483647i >> (1u % 32u)), 39162i)), vec3<i32>(~(-1i), firstTrailingBit(var_0), var_0 ^ var_0), _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(1i, ~0i, var_0), vec3<i32>(~(-2147483647i), 0i, -var_0)), vec3<i32>(-1i) * -(vec3<i32>(0i, var_0, -2147483647i) | vec3<i32>(-1i, 19928i, var_0))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_div_vec3_u32(u_input.a.xzw, vec3<u32>(var_1.c.a, 56249u, u_input.a.x))) ^ u_input.a.wyz);
}

