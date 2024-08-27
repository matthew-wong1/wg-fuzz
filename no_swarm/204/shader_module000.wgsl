struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: vec3<u32>) -> vec2<f32> {
    let var_0 = Struct_1(93291u, -725f, arg_0.zw, _wgslsmith_f_op_f32(-485f + _wgslsmith_f_op_f32(floor(arg_0.x))), max(~13510u, ~arg_2.x));
    let var_1 = Struct_1(_wgslsmith_sub_u32(~(arg_2.x | _wgslsmith_add_u32(var_0.a, arg_2.x)), _wgslsmith_sub_u32(firstLeadingBit(0u), ~arg_2.x)), 1000f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_0.xw, var_0.c) - vec2<f32>(var_0.c.x, var_0.c.x)) + vec2<f32>(-103f, _wgslsmith_f_op_f32(max(240f, 139f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_0.c.x, 1000f))), ~_wgslsmith_sub_u32(min(_wgslsmith_div_u32(u_input.b, 22608u), var_0.a), ~4294967295u));
    let var_2 = Struct_1(abs(104835u), arg_0.x, var_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.c.x, _wgslsmith_f_op_f32(max(-983f, var_0.c.x)))))), select(1u, ~var_1.e, true));
    var var_3 = var_0.c.x;
    var_3 = arg_0.x;
    return _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1516f) - _wgslsmith_f_op_f32(-var_2.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))) + _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(1526f + -1979f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(var_1.c - _wgslsmith_f_op_vec2_f32(step(arg_0.wx, var_0.c))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(584f, var_0.b), _wgslsmith_f_op_f32(arg_0.x + -1000f)))));
}

fn func_2(arg_0: bool, arg_1: vec4<u32>, arg_2: vec3<bool>) -> vec4<u32> {
    let var_0 = Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(~arg_1.x, ~u_input.c, 4294967295u), u_input.a.yyw), -1638f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(654f, -499f))))), -1248f, 1980u);
    let var_1 = select(arg_2.zx, vec2<bool>(arg_0, arg_0), false);
    let var_2 = select(~(~(~firstTrailingBit(vec4<u32>(u_input.a.x, u_input.a.x, u_input.e, arg_1.x)))), abs(arg_1) << (select(u_input.a, _wgslsmith_add_vec4_u32(~u_input.a, vec4<u32>(37786u, var_0.a, u_input.b, 38961u)), (arg_1.x < 0u) && any(vec4<bool>(false, arg_0, false, false))) % vec4<u32>(32u)), var_1.x);
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.c, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, -297f)), _wgslsmith_f_op_vec2_f32(func_3(vec4<f32>(var_0.d, 226f, -974f, 308f), vec4<i32>(-22898i, u_input.d, 1i, u_input.d), u_input.a.xyw))))))));
    var var_4 = var_0;
    return var_2;
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: i32, arg_3: vec4<i32>) -> vec3<i32> {
    let var_0 = _wgslsmith_div_u32(4294967295u, _wgslsmith_add_u32(u_input.c, _wgslsmith_dot_vec4_u32(~u_input.a, func_2(true, u_input.a, vec3<bool>(true, true, true)))));
    let var_1 = ~(~(~u_input.a.x));
    let var_2 = all(vec3<bool>(!select(select(true, true, false), any(vec2<bool>(true, true)), false), true, (_wgslsmith_clamp_i32(arg_3.x, arg_3.x, u_input.d) & arg_2) > 2147483647i));
    var var_3 = -230f;
    var var_4 = Struct_1(4294967295u, arg_0.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.c - vec2<f32>(arg_1, 1119f)) - vec2<f32>(_wgslsmith_f_op_f32(-arg_1), -1054f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.c)) + arg_0.c)), -1623f, min(~_wgslsmith_dot_vec4_u32(firstLeadingBit(u_input.a), u_input.a), _wgslsmith_mod_u32(u_input.e & var_1, ~16955u) >> (4294967295u % 32u)));
    return -vec3<i32>(u_input.d, _wgslsmith_dot_vec2_i32(vec2<i32>(-4996i, arg_2) | arg_3.zx, ~vec2<i32>(u_input.d, u_input.d)), max(1i, _wgslsmith_mult_i32(arg_2, 13200i))) >> (select(firstLeadingBit(~vec3<u32>(4294967295u, 1u, 26394u)), u_input.a.yzz, true) % vec3<u32>(32u));
}

fn func_4(arg_0: vec3<i32>, arg_1: u32) -> StorageBuffer {
    let var_0 = select(vec4<bool>(true, !all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))), select(true, true, any(vec4<bool>(false, true, false, false))), !(!any(vec4<bool>(false, true, true, false)))), select(vec4<bool>(!all(vec3<bool>(true, true, false)), all(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false))), true, true), select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false)), vec4<bool>(true, false, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false))), select(true, true, false) | any(vec2<bool>(false, false))), !(!any(vec4<bool>(true, false, false, true)))), vec4<bool>(false || select(any(vec3<bool>(true, true, true)), false, false), true, _wgslsmith_sub_i32(_wgslsmith_mult_i32(0i, -1i), i32(-1i) * -52337i) < countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(17698i, arg_0.x, u_input.d), arg_0)), false));
    let var_1 = ~vec4<i32>(_wgslsmith_div_i32(arg_0.x, u_input.d), u_input.d, 17834i, -u_input.d >> (~48128u % 32u)) | _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.x, u_input.d, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, arg_0.x, -1i, 0i) ^ vec4<i32>(-38339i, 0i, 35711i, -2147483647i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.d, 3332i, arg_0.x, -786i), vec4<i32>(u_input.d, -12070i, -38121i, arg_0.x))), _wgslsmith_dot_vec2_i32(arg_0.yx, arg_0.yy)), countOneBits(-firstTrailingBit(vec4<i32>(-2147483647i, 55997i, arg_0.x, -10072i))));
    var var_2 = Struct_1(54274u, 1044f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(494f, 582f) + vec2<f32>(194f, -1000f)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-724f, -423f), _wgslsmith_div_f32(-1638f, 455f), var_0.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1129f, -614f))))))), 1624u);
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(-var_2.d), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d)), _wgslsmith_f_op_f32(var_2.b * _wgslsmith_f_op_f32(-2108f + _wgslsmith_f_op_f32(-var_2.b)))));
    var_2 = Struct_1(_wgslsmith_mod_u32(4294967295u, var_2.a), -1970f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_2.c)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(-1662f, var_3.x)), var_2.b) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(var_2.c, vec2<f32>(879f, 1125f)))))), var_2.c.x, ~1u >> (_wgslsmith_dot_vec3_u32((u_input.a.yxy >> (u_input.a.yzy % vec3<u32>(32u))) | (vec3<u32>(var_2.e, arg_1, 0u) >> (u_input.a.wyw % vec3<u32>(32u))), ~vec3<u32>(arg_1, 4294967295u, arg_1) << (~u_input.a.zxz % vec3<u32>(32u))) % 32u));
    return StorageBuffer(~(u_input.a.x & 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4((~func_1(Struct_1(u_input.e, 1000f, vec2<f32>(-284f, -544f), 1291f, u_input.e), -998f, u_input.d, vec4<i32>(-1i, -1i, 1i, u_input.d)) ^ vec3<i32>(1i, 0i, -45749i >> (u_input.c % 32u))) | (select(~vec3<i32>(u_input.d, u_input.d, -3365i), select(vec3<i32>(0i, -19656i, u_input.d), vec3<i32>(-8970i, u_input.d, u_input.d), false), false) & ((vec3<i32>(u_input.d, -34071i, u_input.d) | vec3<i32>(-19637i, -81076i, u_input.d)) << (_wgslsmith_clamp_vec3_u32(u_input.a.wyw, vec3<u32>(31447u, 1u, u_input.e), u_input.a.zwz) % vec3<u32>(32u)))), 72351u);
}

