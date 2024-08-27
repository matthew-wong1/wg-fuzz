struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: vec4<bool>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: u32, arg_3: vec4<f32>) -> bool {
    let var_0 = 1047f;
    var var_1 = vec4<i32>(2935i, 1i, u_input.b, _wgslsmith_sub_i32(~(-arg_0.d), reverseBits(53301i)));
    return false;
}

fn func_3(arg_0: bool) -> vec2<u32> {
    var var_0 = firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_clamp_vec3_u32(~vec3<u32>(32010u, 108000u, 0u), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 25365u, 19234u), vec3<u32>(164557u, 34877u, 0u)), min(vec3<u32>(5337u, 1u, 3333u), vec3<u32>(4294967295u, 14621u, 22511u)))), 4294967295u));
    return ~_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(48079u, 8733u, 42192u, 31931u), vec4<u32>(4294967295u, 12900u, 54104u, 35823u)), ~1u), ~(~vec2<u32>(6310u, 34440u)), ~vec2<u32>(0u, 4294967295u)) ^ (firstLeadingBit(~vec2<u32>(1u, 1u) & select(vec2<u32>(5586u, 16165u), vec2<u32>(0u, 29685u), arg_0)) | vec2<u32>(1u, 1u));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2) -> vec2<i32> {
    let var_0 = func_3(any(vec3<bool>(func_2(Struct_2(false, 20029u, vec4<bool>(arg_1.c.x, arg_1.c.x, arg_0.a, arg_0.c.x), arg_1.d), arg_0.b, 0u, vec4<f32>(-485f, 486f, -1816f, 728f)) & false, !arg_1.a, !arg_1.c.x)));
    let var_1 = ~_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(abs(u_input.a), u_input.a), vec2<i32>(arg_1.d & (arg_0.d << (arg_1.b % 32u)), ~2147483647i ^ u_input.b));
    var var_2 = true & arg_1.c.x;
    var_2 = arg_0.c.x;
    var_2 = !(!(!any(select(arg_1.c.xxz, arg_1.c.yyy, arg_1.c.x))));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(firstTrailingBit(-46253i), abs(1i)), -_wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(u_input.a.x, 0i)), func_1(Struct_2(true, 49439u, vec4<bool>(true, true, false, false), u_input.a.x), Struct_2(true, 139157u, vec4<bool>(true, false, false, false), -2147483647i))), -u_input.a));
    var var_1 = _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(-(var_0 << (vec2<u32>(5278u, 29186u) % vec2<u32>(32u))), ~(~var_0)) | _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(max(u_input.a, vec2<i32>(13557i, 2147483647i)), u_input.a), _wgslsmith_mod_vec2_i32(var_0 ^ var_0, reverseBits(vec2<i32>(-9311i, var_0.x)))), ~firstLeadingBit(~(~var_0)));
    let var_2 = _wgslsmith_sub_i32(var_0.x, _wgslsmith_sub_i32(39321i, ~var_0.x));
    var var_3 = _wgslsmith_dot_vec4_u32((reverseBits(~vec4<u32>(16830u, 2807u, 0u, 1u)) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 44102u, 0u, 16463u), _wgslsmith_clamp_vec4_u32(vec4<u32>(36052u, 1u, 42768u, 4294967295u), vec4<u32>(4294967295u, 70850u, 3127u, 40654u), vec4<u32>(51684u, 7846u, 2679u, 0u)), vec4<u32>(0u, 0u, 39330u, 79741u)) % vec4<u32>(32u))) ^ firstTrailingBit(vec4<u32>(select(78955u, 4294967295u, true), 0u, 1u, 1u)), vec4<u32>(1u, 1u, 1u, 1u));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -265f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -643f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(435f + 1912f), _wgslsmith_f_op_f32(trunc(1539f))))), vec4<f32>(_wgslsmith_f_op_f32(-3045f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-532f)), _wgslsmith_f_op_f32(f32(-1f) * -406f), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -345f) + _wgslsmith_f_op_f32(f32(-1f) * -1575f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-874f, _wgslsmith_f_op_f32(f32(-1f) * -809f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -605f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1870f))) - 696f)), -2787i ^ u_input.a.x);
    let var_5 = -2147483647i;
    var_3 = ~91945u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(~(~vec2<i32>(2147483647i, -1i)), abs(reverseBits(var_0))), -min(u_input.a, func_1(Struct_2(true, 1u, vec4<bool>(false, true, true, true), 0i), Struct_2(true, 4354u, vec4<bool>(false, false, true, true), u_input.b)))), vec3<i32>(var_0.x, -2147483647i, var_2), -vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_4.d, -52721i, var_2), vec3<i32>(var_0.x, -62410i, var_1.x)), _wgslsmith_div_vec3_i32(vec3<i32>(var_0.x, 2147483647i, var_4.d), vec3<i32>(var_5, -2147483647i, u_input.b))), var_4.d, 2147483647i), 207f);
}

