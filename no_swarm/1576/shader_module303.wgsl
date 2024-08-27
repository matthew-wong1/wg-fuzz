struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
    c: f32,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: i32) -> vec3<u32> {
    return vec3<u32>(u_input.a.x, firstLeadingBit(0u), 4294967295u);
}

fn func_2(arg_0: f32) -> Struct_4 {
    let var_0 = Struct_1(1i);
    var var_1 = ~select(func_3(Struct_3(vec2<bool>(true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true)), Struct_1(var_0.a)), ~1i), ~vec3<u32>(countOneBits(u_input.a.x), ~4294967295u, 37229u), vec3<bool>(true, true, true));
    let var_2 = Struct_1(54658i);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0, -1172f, arg_0, arg_0)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(arg_0, arg_0, true)), arg_0, _wgslsmith_f_op_f32(-arg_0), -219f) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-263f, arg_0, arg_0, -760f)))))));
    let var_4 = vec3<u32>(~61876u | ~(~abs(u_input.a.x)), u_input.a.x, _wgslsmith_mod_u32(37860u, ~u_input.a.x));
    return Struct_4(Struct_2(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(608f - 1225f))), _wgslsmith_f_op_f32(ceil(1177f))), var_1.x | (1u & ~u_input.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1766f), ~_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(38352u, 70638u, 4294967295u, var_4.x), vec4<u32>(67616u, 61092u, 0u, 0u)), ~vec4<u32>(0u, var_4.x, var_1.x, 44156u), max(vec4<u32>(var_1.x, var_1.x, 1u, 1u), vec4<u32>(0u, 0u, 4294967295u, u_input.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(f32(-1f) * -203f)) + _wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(var_3.x, arg_0)))), any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false))))));
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: i32, arg_3: vec4<u32>) -> vec3<i32> {
    var var_0 = func_2(-416f);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1097f)))))));
    var var_2 = !(!arg_1.a.x);
    var_0 = Struct_4(var_0.a, _wgslsmith_f_op_f32(step(499f, -818f)));
    let var_3 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -401f)))));
    return ~abs(~vec3<i32>(-24388i, arg_2, -2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_vec3_i32(abs(vec3<i32>(~(i32(-1i) * -2147483647i), 1i << (u_input.a.x % 32u), -1i)), _wgslsmith_mult_vec3_i32((func_1(-827f, Struct_3(vec2<bool>(false, false), vec4<bool>(false, true, false, true), Struct_1(-25650i)), 1i, vec4<u32>(39355u, u_input.a.x, u_input.a.x, u_input.a.x)) & select(vec3<i32>(46527i, -31671i, -27309i), vec3<i32>(-1155i, 2147483647i, -54731i), vec3<bool>(true, false, true))) | vec3<i32>(firstLeadingBit(58992i), ~2147483647i, i32(-1i) * -1i), select(-vec3<i32>(0i, 17373i, 1i), _wgslsmith_sub_vec3_i32(vec3<i32>(0i, -2147483647i, 0i), vec3<i32>(1i, 1i, 1i)), true)), vec3<i32>(_wgslsmith_mod_i32(1i, abs(48887i)) << (max(func_3(Struct_3(vec2<bool>(true, true), vec4<bool>(false, true, false, false), Struct_1(-55227i)), 2147483647i).x, min(720u, u_input.a.x)) % 32u), abs(-firstTrailingBit(-16109i)), ~(-62393i)));
    let var_1 = Struct_3(!vec2<bool>(false, select(true, true, true) | true), select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !vec4<bool>(true, all(vec3<bool>(false, false, true)), any(vec2<bool>(false, false)), all(vec2<bool>(false, true))), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), any(vec3<bool>(true, false, false)))), Struct_1(var_0.x));
    let var_2 = var_1.c;
    let var_3 = ~vec4<u32>(1u, ~u_input.a.x, 4294967295u, u_input.a.x);
    let var_4 = _wgslsmith_add_vec2_u32(var_3.yz, _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(select(var_3.zw, vec2<u32>(0u, u_input.a.x), var_1.a.x), u_input.a), min(vec2<u32>(1u, var_3.x) << (var_3.ww % vec2<u32>(32u)), vec2<u32>(48768u, u_input.a.x))) ^ var_3.wx);
    let var_5 = Struct_2(vec2<f32>(265f, _wgslsmith_f_op_f32(-1612f + -494f)), 0u, -551f, countOneBits(vec4<u32>(var_3.x, var_4.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_4.x, var_4.x, 0u, var_4.x), vec4<u32>(0u, 49449u, var_3.x, var_3.x) | vec4<u32>(u_input.a.x, var_3.x, 4294967295u, var_4.x)), _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 24778u, 58494u), vec3<u32>(4294967295u, 65312u, u_input.a.x)))));
    var var_6 = firstTrailingBit(_wgslsmith_sub_vec3_i32(abs(~var_0), abs(func_1(_wgslsmith_f_op_f32(var_5.a.x - -2010f), Struct_3(var_1.a, var_1.b, Struct_1(0i)), _wgslsmith_add_i32(var_1.c.a, var_0.x), var_3))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_add_vec4_u32(var_5.d, vec4<u32>(_wgslsmith_sub_u32(var_4.x, 1971u), _wgslsmith_mod_u32(var_4.x, 29880u), 1u, ~var_4.x))));
}

