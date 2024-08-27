struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> f32 {
    let var_0 = Struct_3(_wgslsmith_dot_vec3_i32(-firstTrailingBit(vec3<i32>(2147483647i, -9702i, 0i)), ~vec3<i32>(-u_input.e, 19397i >> (u_input.d.x % 32u), max(u_input.b.x, 0i))), 1u, Struct_2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1942f, -1180f, _wgslsmith_div_f32(804f, 140f), _wgslsmith_div_f32(-1708f, 1217f)))), u_input.e, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-165f, 355f, true))))), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-723f - _wgslsmith_f_op_f32(-191f + -1239f))))));
    let var_1 = _wgslsmith_f_op_f32(var_0.c.c.a + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1830f, _wgslsmith_f_op_f32(trunc(var_0.c.c.a)))), var_0.d.a)));
    var var_2 = var_0.d;
    var var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-419f, -1000f)), var_1));
    let var_4 = Struct_4(var_0.c.c, _wgslsmith_div_vec2_i32(u_input.b, _wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, 2147483647i) << (~vec2<u32>(3803u, u_input.d.x) % vec2<u32>(32u)), select(_wgslsmith_add_vec2_i32(u_input.b, vec2<i32>(var_0.c.b, -27199i)), u_input.b, vec2<bool>(true, true)))));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_4.a.a)) - _wgslsmith_f_op_f32(-724f + 736f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(340f + var_2.a))), _wgslsmith_f_op_f32(step(var_0.c.a.x, var_1)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.a.a) + var_0.c.a.x)));
}

fn func_2(arg_0: f32, arg_1: i32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_0)), 1000f), _wgslsmith_div_f32(-183f, _wgslsmith_f_op_f32(func_3())))), _wgslsmith_f_op_f32(-arg_0)));
    let var_1 = Struct_1(746f);
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(750f, arg_0), vec2<f32>(arg_0, -412f)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(165f, var_1.a), vec2<f32>(242f, -104f), true))))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), 575f);
    var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(sign(-258f)), _wgslsmith_div_f32(182f, -1812f)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -2415f) * vec2<f32>(var_1.a, 156f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1272f, -471f))))))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.x, arg_0))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-726f, -1552f), vec2<f32>(arg_0, -628f))))))))));
    return Struct_3(_wgslsmith_mod_i32(countOneBits(_wgslsmith_add_i32(~arg_1, 38414i << (0u % 32u))), -16422i), 1u & u_input.d.x, Struct_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2170f, var_1.a, -497f, -1000f) - vec4<f32>(var_1.a, -965f, -145f, -464f))))), _wgslsmith_div_i32(_wgslsmith_mult_i32(min(58073i, u_input.e), u_input.e), u_input.a), Struct_1(arg_0)), var_1);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec4<i32>) -> vec4<bool> {
    var var_0 = Struct_4(func_2(arg_0.c.a, -_wgslsmith_dot_vec2_i32(-vec2<i32>(1i, u_input.e), -vec2<i32>(56560i, arg_2.x))).d, _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(abs(u_input.b), arg_2.zy), vec2<i32>(-(i32(-1i) * -41971i), 0i)));
    var_0 = Struct_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3()))))), arg_2.zw);
    var_0 = Struct_4(arg_1.d, var_0.b);
    var var_1 = _wgslsmith_div_vec3_f32(arg_1.c.a.xzz, arg_1.c.a.zwz);
    let var_2 = abs(firstLeadingBit(_wgslsmith_div_vec2_u32(firstTrailingBit(u_input.d.xz), u_input.d.zx ^ vec2<u32>(4294967295u, 46695u)))) ^ _wgslsmith_add_vec2_u32(firstLeadingBit(~(vec2<u32>(80823u, arg_1.b) | vec2<u32>(2730u, arg_1.b))), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.b, arg_1.b, u_input.d.x, arg_1.b), vec4<u32>(25603u, u_input.d.x, arg_1.b, u_input.d.x)), func_2(var_0.a.a, -7174i).b) << (reverseBits(vec2<u32>(0u, arg_1.b)) % vec2<u32>(32u)));
    return vec4<bool>(all(vec4<bool>(true, true, ~arg_1.b > ~var_2.x, true)), any(vec2<bool>(true, true)), any(!vec3<bool>(true, arg_0.c.a > var_0.a.a, any(vec3<bool>(true, false, true)))), false);
}

fn func_5(arg_0: vec4<bool>) -> vec3<bool> {
    let var_0 = Struct_3(~firstLeadingBit(1i), 1u, func_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1179f * 2535f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + -616f), 1f))), firstTrailingBit(u_input.c)).c, func_2(1989f, reverseBits(u_input.a)).d);
    var var_1 = Struct_4(var_0.d, _wgslsmith_div_vec2_i32(abs(u_input.b), vec2<i32>(u_input.b.x, ~u_input.e >> (~u_input.d.x % 32u))));
    var_1 = Struct_4(Struct_1(_wgslsmith_f_op_f32(step(var_1.a.a, 788f))), u_input.b ^ u_input.b);
    var var_2 = ~countOneBits(_wgslsmith_mod_u32(_wgslsmith_mod_u32(abs(0u), ~1u), var_0.b | ~12616u));
    let var_3 = vec3<f32>(675f, _wgslsmith_f_op_f32(sign(var_1.a.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.a))));
    return arg_0.yzz;
}

fn func_1(arg_0: vec4<u32>, arg_1: i32, arg_2: bool, arg_3: i32) -> u32 {
    var var_0 = !(-(~(-1i)) != u_input.b.x);
    let var_1 = !func_5(select(select(vec4<bool>(false, false, arg_2, true), !vec4<bool>(true, true, false, arg_2), vec4<bool>(arg_2, arg_2, arg_2, arg_2)), select(select(vec4<bool>(true, true, arg_2, arg_2), vec4<bool>(arg_2, arg_2, true, false), vec4<bool>(false, arg_2, false, true)), !vec4<bool>(true, false, arg_2, arg_2), all(vec2<bool>(arg_2, arg_2))), func_4(Struct_2(vec4<f32>(-201f, 123f, -1052f, 1642f), u_input.e, Struct_1(890f)), func_2(-1179f, u_input.b.x), vec4<i32>(u_input.b.x, u_input.c, 18812i, 38740i))));
    let var_2 = _wgslsmith_mult_u32(79233u, u_input.d.x);
    let var_3 = Struct_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-896f)))), reverseBits(-u_input.b));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~func_1(vec4<u32>(~1u, ~0u, u_input.d.x, ~4294967295u), ~0i, true, -79452i);
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1255f, 103f, 1001f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(681f, -1729f, -448f)))), func_2(_wgslsmith_f_op_f32(sign(-1697f)), func_2(-907f, u_input.a).a).c.a.yzw), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1142f * 211f)), abs(select(-1i, u_input.c, true))).c.a.xyx)));
    let var_2 = ~abs(vec3<i32>(u_input.b.x, _wgslsmith_mod_i32(u_input.e, -32415i), i32(-1i) * -1i) & -min(vec3<i32>(u_input.b.x, u_input.c, u_input.e), vec3<i32>(u_input.a, 28229i, -21971i)));
    let var_3 = u_input.d.x;
    let var_4 = select(~(~(~min(vec3<u32>(var_3, 29037u, 4294967295u), vec3<u32>(var_3, u_input.d.x, 4294967295u)))), ~(min(select(vec3<u32>(4294967295u, var_3, 36640u), u_input.d, false), _wgslsmith_mult_vec3_u32(u_input.d, u_input.d)) | u_input.d), vec3<bool>(true, true, true));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -415f), _wgslsmith_f_op_f32(abs(-143f)), var_1.x), 67823i, _wgslsmith_f_op_f32(func_3()), var_1.x);
}

