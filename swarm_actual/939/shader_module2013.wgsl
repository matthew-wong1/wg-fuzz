struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
    c: vec3<i32>,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_4) -> vec3<bool> {
    var var_0 = Struct_2(!(!vec4<bool>(true, -1i > u_input.a.x, true, true)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(1152f)))), arg_0.a)), vec3<bool>(select(any(vec3<bool>(true, false, true)), any(vec4<bool>(false, true, true, true)), true) && all(vec2<bool>(true, true)), !(!select(true, true, false)), select(true, any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false))), select(true, arg_0.a == arg_0.a, true))));
    var var_1 = Struct_2(var_0.a, var_0.b, !select(!select(var_0.c, var_0.c, var_0.a.wyx), var_0.c, var_0.c.x));
    let var_2 = u_input.a.x ^ 32706i;
    var_0 = Struct_2(var_1.a, var_0.b, vec3<bool>(var_1.a.x, !(!(true & var_1.a.x)), true));
    let var_3 = Struct_3(!(!(!var_1.a.x)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-1490f, var_0.b.a.x), -961f, _wgslsmith_div_f32(arg_0.a, -613f), _wgslsmith_f_op_f32(-295f + -1328f))))), -(~(-abs(u_input.a.ywx))));
    return var_0.a.wzy;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_2) -> bool {
    var var_0 = Struct_2(vec4<bool>(select(any(func_3(Struct_4(arg_0.b.a.x))), arg_1.x | arg_2.c.x, arg_1.x), true, true, arg_0.c.x), arg_0.b, arg_0.a.wwy);
    let var_1 = _wgslsmith_f_op_f32(arg_0.b.a.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1544f)) * 381f), _wgslsmith_div_f32(arg_0.b.a.x, arg_0.b.a.x)));
    let var_2 = abs(countOneBits(vec4<u32>(~u_input.b, ~(~22332u), 1u, u_input.b >> (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(31606u, 4294967295u)) % 32u))));
    let var_3 = Struct_2(select(!vec4<bool>(arg_1.x, !arg_1.x, all(arg_0.a), arg_1.x), var_0.a, true || arg_1.x), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.b.a.x)) + _wgslsmith_f_op_f32(f32(-1f) * -1307f)), -347f)), vec3<bool>(true && !(var_0.a.x || arg_0.c.x), !arg_2.a.x | any(select(arg_1, vec3<bool>(var_0.a.x, arg_1.x, true), vec3<bool>(arg_2.a.x, arg_1.x, false))), (var_2.x | ~var_2.x) != ~u_input.b));
    var_0 = arg_0;
    return true;
}

fn func_4(arg_0: i32, arg_1: Struct_3) -> Struct_1 {
    let var_0 = (arg_1.c >> (~min(min(vec3<u32>(1u, 41335u, u_input.b), vec3<u32>(44611u, 1u, u_input.b)), min(vec3<u32>(u_input.b, 4294967295u, 4294967295u), vec3<u32>(u_input.b, 57124u, 50441u))) % vec3<u32>(32u))) >> (abs(~reverseBits(vec3<u32>(0u, 1u, 8630u)) & max(vec3<u32>(u_input.b, u_input.b, u_input.b), ~vec3<u32>(u_input.b, u_input.b, 10031u))) % vec3<u32>(32u));
    let var_1 = -(u_input.a.x >> (_wgslsmith_div_u32(41574u >> (~u_input.b % 32u), abs(9096u)) % 32u));
    let var_2 = ~min(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(var_1 >> (u_input.b % 32u), min(2778i, var_0.x), i32(-1i) * -28788i), -6189i), arg_1.c.x);
    var var_3 = select(!vec4<bool>(func_2(Struct_2(vec4<bool>(false, false, arg_1.a, false), Struct_1(vec2<f32>(arg_1.b.x, 539f)), vec3<bool>(true, false, arg_1.a)), vec3<bool>(false, true, arg_1.a), Struct_2(vec4<bool>(arg_1.a, arg_1.a, arg_1.a, true), Struct_1(arg_1.b.yw), vec3<bool>(true, arg_1.a, arg_1.a))), min(u_input.a.x, var_2) >= -2147483647i, true, true), !(!select(!vec4<bool>(false, arg_1.a, arg_1.a, true), vec4<bool>(true, false, arg_1.a, false), vec4<bool>(false, false, true, true))), arg_1.a);
    var var_4 = Struct_1(arg_1.b.xx);
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(arg_1.b.zw, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.a.x, arg_1.b.x) - var_4.a)))))));
}

fn func_1(arg_0: u32, arg_1: vec4<f32>, arg_2: u32) -> f32 {
    let var_0 = _wgslsmith_clamp_vec2_u32(abs(~vec2<u32>(2127u, arg_0)) << (firstLeadingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(624u, u_input.b), vec2<u32>(1u, arg_2) ^ vec2<u32>(0u, 0u), countOneBits(vec2<u32>(102940u, 52726u)))) % vec2<u32>(32u)), ~abs(min(vec2<u32>(0u, 76618u), vec2<u32>(0u, 20643u)) >> (vec2<u32>(arg_2, 49326u) % vec2<u32>(32u))), ~max(_wgslsmith_mod_vec2_u32(vec2<u32>(34383u, u_input.b), vec2<u32>(1u, 64595u)), vec2<u32>(u_input.b, arg_2)) >> (_wgslsmith_sub_vec2_u32((vec2<u32>(arg_2, 4294967295u) << (vec2<u32>(arg_2, arg_0) % vec2<u32>(32u))) >> (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)), vec2<u32>(~arg_2, 32816u)) % vec2<u32>(32u)));
    var var_1 = func_4(-1i, Struct_3(any(vec2<bool>(func_2(Struct_2(vec4<bool>(false, true, false, false), Struct_1(vec2<f32>(arg_1.x, arg_1.x)), vec3<bool>(true, true, false)), vec3<bool>(true, false, false), Struct_2(vec4<bool>(true, true, false, false), Struct_1(vec2<f32>(-629f, -381f)), vec3<bool>(true, false, false))), true)), _wgslsmith_f_op_vec4_f32(max(arg_1, arg_1)), select(u_input.a.yyw, abs(vec3<i32>(2147483647i, u_input.a.x, u_input.a.x)), any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true))))));
    var_1 = func_4(u_input.a.x, Struct_3(false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(arg_1 - vec4<f32>(-639f, 298f, 1619f, arg_1.x)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.a.x, 379f, 791f, 734f)))))), _wgslsmith_sub_vec3_i32(u_input.a.www, vec3<i32>(~u_input.a.x, ~u_input.a.x, -22491i))));
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_1.x, arg_1.x), vec2<f32>(405f, var_1.a.x)))), vec2<f32>(494f, -419f), true)) * vec2<f32>(-1000f, -594f)));
    var var_2 = any(func_3(Struct_4(_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_div_f32(var_1.a.x, -2168f)))));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x - 1000f)), var_1.a.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -882f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(321f + -902f) - _wgslsmith_div_f32(-899f, -1753f)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.b, vec4<f32>(var_0.a, _wgslsmith_f_op_f32(-var_0.a), 113f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-239f)) - _wgslsmith_f_op_f32(step(var_0.a, var_0.a)))), u_input.b)));
    var var_2 = Struct_2(select(select(vec4<bool>(false, false, true, false), vec4<bool>(select(true, true, false), true, false, false), all(vec2<bool>(false, false)) | any(vec3<bool>(false, false, false))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec3<bool>(false, true, true)), true, true)), u_input.b != _wgslsmith_clamp_u32(~48852u, u_input.b & 26186u, u_input.b)), func_4(~u_input.a.x << (~_wgslsmith_dot_vec2_u32(vec2<u32>(12923u, u_input.b), vec2<u32>(0u, u_input.b)) % 32u), Struct_3(_wgslsmith_f_op_f32(-1071f - var_0.a) > _wgslsmith_f_op_f32(-620f - 1622f), vec4<f32>(790f, 1000f, -791f, _wgslsmith_f_op_f32(f32(-1f) * -115f)), ~u_input.a.wzz)), !(!vec3<bool>(true, func_3(var_0).x, false)));
    var var_3 = true;
    var var_4 = Struct_3(func_4(u_input.a.x, Struct_3(true, _wgslsmith_f_op_vec4_f32(vec4<f32>(-459f, -295f, var_0.a, var_2.b.a.x) * vec4<f32>(var_1, var_1, -462f, -918f)), vec3<i32>(u_input.a.x, u_input.a.x, 55841i))).a.x != _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(796f)), var_0.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-220f * 171f), var_0.a, var_2.b.a.x, _wgslsmith_f_op_f32(var_0.a * 1041f)))), vec3<i32>(-_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.a.zwy, vec3<i32>(-42595i, 0i, u_input.a.x), vec3<i32>(2147483647i, 96376i, 0i)), u_input.a.wwx), u_input.a.x, _wgslsmith_clamp_i32(firstTrailingBit(37437i), u_input.a.x, 1i << ((0u | u_input.b) % 32u))));
    let var_5 = Struct_2(select(select(var_2.a, !vec4<bool>(var_4.a, true, true, true), var_2.a), vec4<bool>(true, true, true, true), var_2.a), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, _wgslsmith_f_op_f32(var_4.b.x - var_2.b.a.x)))), vec3<bool>(true, var_2.a.x, var_2.a.x));
    let var_6 = !var_4.a;
    var var_7 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_5.b.a.x, var_5.b.a.x))))), _wgslsmith_f_op_vec2_f32(-var_2.b.a)));
    var_7 = Struct_1(_wgslsmith_f_op_vec2_f32(var_4.b.yx - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(var_5.b.a.x, 1307f), var_2.b.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(select(vec4<i32>(-1i, var_4.c.x, 15857i, var_4.c.x), u_input.a, var_2.a), u_input.a), _wgslsmith_mod_u32(max(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b, u_input.b, 602u), vec4<u32>(27519u, u_input.b, 0u, 1u)) >> (~9172u % 32u), 74087u), 39175u));
}

