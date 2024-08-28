struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: bool,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> vec2<bool> {
    let var_0 = u_input.c;
    var var_1 = vec4<bool>(true, !any(vec2<bool>(true, true)), true, true & (select(firstLeadingBit(0u), 25u >> (var_0 % 32u), any(vec4<bool>(true, true, false, false))) < _wgslsmith_add_u32(~38314u, abs(6564u))));
    var var_2 = Struct_2(Struct_1(u_input.a.x, ~var_0, u_input.e.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-392f, -2081f, !var_1.x)))), u_input.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-179f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(674f)) * _wgslsmith_f_op_f32(f32(-1f) * -1117f)))), -612f, var_1.zyw);
    var_2 = Struct_2(var_2.a, var_2.a.d, var_2.a.d, vec3<bool>(any(var_2.d), true & select(!var_1.x, true, select(true, var_1.x, var_1.x)), true));
    let var_3 = Struct_1(~var_2.a.b, _wgslsmith_add_u32(~4294967295u, var_0 >> (~(var_0 & 0u) % 32u)), _wgslsmith_sub_i32(u_input.d.x, reverseBits(max(0i, u_input.b & var_2.a.c))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-601f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-494f, var_2.b))))))), ~select(0i, 1i, var_2.d.x));
    return select(select(select(vec2<bool>(true, true), !select(vec2<bool>(var_1.x, true), vec2<bool>(var_1.x, true), vec2<bool>(true, true)), vec2<bool>(!var_2.d.x, !var_2.d.x)), !(!var_2.d.zx), vec2<bool>(true, var_2.d.x)), var_2.d.yx, select(vec2<bool>(var_1.x, true), !select(vec2<bool>(true, var_1.x), !vec2<bool>(false, var_1.x), var_2.d.xx), -(1i >> (var_0 % 32u)) >= firstTrailingBit(_wgslsmith_div_i32(var_2.a.c, 21819i))));
}

fn func_4(arg_0: bool, arg_1: vec4<i32>, arg_2: bool, arg_3: u32) -> i32 {
    return (select(arg_1.x, i32(-1i) * -arg_1.x, arg_0) << (1u % 32u)) | select(-firstTrailingBit(-528i), _wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.e.x, arg_1.x, u_input.b), u_input.d, vec3<bool>(false, false, arg_2)), u_input.e), 1i != arg_1.x);
}

fn func_2(arg_0: Struct_4, arg_1: vec3<bool>) -> vec3<u32> {
    let var_0 = Struct_1(u_input.a.x, 4294967295u, -countOneBits(-(~(-22523i))), 313f, -func_4(arg_1.x && true, vec4<i32>(u_input.b, -arg_0.a, arg_0.a, arg_0.a), any(func_3()), ~(~u_input.c)));
    var var_1 = Struct_3(Struct_2(Struct_1(35530u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, 0u, 2722u, 4294967295u), vec4<u32>(1u, var_0.a, u_input.c, 3409u)) ^ u_input.a.x, _wgslsmith_clamp_i32(1i, -20145i, firstLeadingBit(arg_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.d))), 17394i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-817f * -884f)), _wgslsmith_div_f32(-290f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1323f) + _wgslsmith_f_op_f32(-var_0.d))), arg_1));
    var var_2 = var_1.a.a;
    var_2 = var_1.a.a;
    let var_3 = abs(~min(vec4<u32>(var_0.a ^ 54633u, var_2.a, ~var_0.a, 28532u), min(~vec4<u32>(50267u, 1u, u_input.a.x, 4294967295u), vec4<u32>(1u, 10951u, var_2.b, var_0.b) | vec4<u32>(var_1.a.a.a, u_input.c, 0u, 0u))));
    return _wgslsmith_mod_vec3_u32(vec3<u32>(93214u, 1u, _wgslsmith_dot_vec3_u32(~var_3.ywz, abs(vec3<u32>(50709u, var_3.x, 1u)))), firstTrailingBit(var_3.yxy));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(func_2(Struct_4(-45555i, any(vec3<bool>(true, false, true))), vec3<bool>(true, true, true)), ~vec3<u32>(0u << (u_input.c % 32u), u_input.c, ~631u)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c >> (abs(1u) % 32u), u_input.a.x >> (~4294967295u % 32u), ~_wgslsmith_sub_u32(u_input.c, 39326u)), _wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a.x, u_input.c, 13926u), _wgslsmith_mult_vec3_u32(vec3<u32>(51172u, 4294967295u, 0u), vec3<u32>(u_input.c, 4294967295u, u_input.a.x))) >> (((vec3<u32>(u_input.c, u_input.a.x, u_input.a.x) ^ vec3<u32>(u_input.a.x, u_input.a.x, 1u)) | ~vec3<u32>(u_input.a.x, 4294967295u, 98514u)) % vec3<u32>(32u))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(879f))), _wgslsmith_f_op_f32(trunc(347f)), !all(vec3<bool>(false, false, true))))) != _wgslsmith_f_op_f32(486f - -841f);
    var var_2 = min(abs(1i) >> (u_input.a.x % 32u), u_input.e.x);
    var_2 = _wgslsmith_clamp_i32(u_input.d.x, u_input.b, 2147483647i) >> (~(~u_input.a.x) % 32u);
    var var_3 = _wgslsmith_f_op_f32(1050f * -2485f);
    return Struct_1(abs(u_input.a.x), 71032u, func_4(var_1, vec4<i32>(u_input.d.x, -u_input.d.x, _wgslsmith_sub_i32(u_input.d.x, 23114i) & 1i, -u_input.b), func_3().x & var_1, firstLeadingBit(_wgslsmith_dot_vec2_u32(min(u_input.a, vec2<u32>(var_0, 0u)), abs(vec2<u32>(var_0, 1u))))), 1f, reverseBits(-1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = ~14510u;
    var var_2 = vec3<bool>(select(true, all(func_3()), _wgslsmith_div_u32(1u, var_1) == u_input.a.x), true, true);
    var var_3 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.d, -370f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.d, var_0.d), vec2<f32>(-3591f, var_0.d), var_2.x)))))));
    var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(375f, var_0.d))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.d, 323f)))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(ceil(-244f)), _wgslsmith_f_op_f32(var_3.x * var_0.d)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-490f, -1000f))))));
    var var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(u_input.e.zy, abs(u_input.d.yy)), _wgslsmith_add_vec2_i32(u_input.e.zy, u_input.d.yx)), func_2(Struct_4(_wgslsmith_add_i32(abs(-2147483647i), func_4(false, vec4<i32>(var_0.e, 1i, u_input.b, -2597i), var_2.x, 9904u)), all(var_2.zz)), vec3<bool>(any(!vec4<bool>(false, var_2.x, false, false)), var_2.x, !(var_2.x || var_2.x))).yy, var_4.c, _wgslsmith_div_vec3_u32(~select(vec3<u32>(var_1, 60455u, u_input.c), vec3<u32>(u_input.a.x, u_input.c, var_1), vec3<bool>(var_2.x, var_2.x, var_2.x)), vec3<u32>(var_1, ~var_4.b, ~6127u)) ^ ~vec3<u32>(~var_0.a, _wgslsmith_div_u32(0u, u_input.a.x), countOneBits(var_4.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1215f + _wgslsmith_f_op_f32(max(-317f, var_3.x))) + _wgslsmith_f_op_f32(var_0.d - -304f)));
}

