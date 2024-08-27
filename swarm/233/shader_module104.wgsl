struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: i32,
    c: u32,
    d: f32,
    e: vec4<u32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: vec3<bool>,
    d: Struct_1,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_5) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)) + arg_2.e.d);
}

fn func_2() -> Struct_2 {
    let var_0 = true;
    var var_1 = !(!(!select(select(vec4<bool>(var_0, true, var_0, var_0), vec4<bool>(var_0, var_0, true, var_0), vec4<bool>(false, true, var_0, var_0)), !vec4<bool>(var_0, true, false, var_0), !vec4<bool>(false, false, var_0, true))));
    var var_2 = vec3<f32>(696f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1440f) * _wgslsmith_f_op_f32(1369f - -873f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1051f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-749f, -266f)) - _wgslsmith_f_op_f32(func_3(1u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(257f, -908f, 184f, -1000f)), Struct_5(true, Struct_3(Struct_2(Struct_1(vec2<u32>(17138u, u_input.d.x)))), var_1.yzx, Struct_1(vec2<u32>(24916u, 4294967295u)), Struct_4(vec2<bool>(var_0, var_0), u_input.b.x, 1u, 1514f, vec4<u32>(u_input.c, 13311u, u_input.d.x, 71008u)))))));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.x, var_2.x, -1353f, -130f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-353f, var_2.x, 304f, -2618f) * vec4<f32>(var_2.x, var_2.x, -1227f, var_2.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -206f, -997f, var_2.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-596f, var_2.x, var_2.x, 478f)))))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, 837f, -110f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(990f, -810f, var_2.x, var_2.x)))))))));
    let var_4 = Struct_2(Struct_1(~(~(~u_input.d.zx))));
    return Struct_2(Struct_1(_wgslsmith_clamp_vec2_u32(~(var_4.a.a ^ vec2<u32>(21387u, 101158u)), vec2<u32>(~u_input.d.x, _wgslsmith_add_u32(var_4.a.a.x, u_input.d.x)), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 0u), var_4.a.a))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>) -> vec2<bool> {
    var var_0 = 2836f;
    var var_1 = Struct_1(firstLeadingBit(vec2<u32>(_wgslsmith_mod_u32(u_input.c, firstTrailingBit(u_input.d.x)), _wgslsmith_add_u32(~u_input.c, _wgslsmith_mult_u32(66168u, 33062u)))));
    var_1 = func_2().a;
    let var_2 = func_2();
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1129f, arg_1.x, -1172f)))))));
    return vec2<bool>(all(vec2<bool>(true, u_input.a.x < 0u)), false);
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: vec3<f32>, arg_3: vec4<f32>) -> Struct_2 {
    var var_0 = ~22315u;
    var_0 = 90707u;
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_3.x)), _wgslsmith_f_op_f32(-176f + arg_2.x)))))), any(!func_4(func_2(), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.x, arg_2.x, -1065f))))));
    let var_2 = Struct_4(!vec2<bool>(!all(vec3<bool>(false, false, true)), any(func_4(Struct_2(Struct_1(u_input.a.zy)), arg_2))), arg_0, 71325u, arg_3.x, abs(_wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(u_input.c, u_input.a.x, u_input.d.x, min(1u, u_input.c)))));
    let var_3 = 36279u;
    return func_2();
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec2<f32>) -> Struct_4 {
    let var_0 = vec2<f32>(1533f, 1449f);
    let var_1 = vec4<bool>(all(vec4<bool>(any(vec2<bool>(false, true)) | any(vec4<bool>(true, true, false, true)), func_4(Struct_2(Struct_1(vec2<u32>(1u, arg_0.x))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(484f, -713f, -1000f), vec3<f32>(-233f, 342f, var_0.x)))).x, true, reverseBits(u_input.b.x) < 5397i)), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), !func_4(arg_1, _wgslsmith_div_vec3_f32(vec3<f32>(618f, -1662f, arg_2.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, arg_2.x, arg_2.x) + vec3<f32>(625f, var_0.x, arg_2.x)))).x, any(vec2<bool>(true, true)));
    var var_2 = vec2<i32>(firstTrailingBit(u_input.b.x), max(-67789i, 31769i));
    let var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-978f - var_0.x), var_0.x, false));
    var_2 = _wgslsmith_sub_vec2_i32(~abs(~u_input.b.xw << (u_input.a.yy % vec2<u32>(32u))), u_input.b.xy);
    return Struct_4(!select(vec2<bool>(false, true & var_1.x), var_1.yw, any(func_4(arg_1, vec3<f32>(arg_2.x, arg_2.x, arg_2.x)))), var_2.x, ~(~1u), 139f, firstLeadingBit(firstLeadingBit(vec4<u32>(~1074u, ~1u, arg_0.x | 0u, arg_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~select(max(1i, _wgslsmith_sub_i32(_wgslsmith_mod_i32(1i, u_input.b.x), max(u_input.b.x, -1i))), u_input.e, true);
    var var_1 = 113109u;
    var var_2 = func_5(u_input.d, func_1(0i, -_wgslsmith_div_i32(u_input.e, _wgslsmith_sub_i32(30150i, u_input.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(604f, 1557f, 1329f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-573f, -286f, 244f) - vec3<f32>(1970f, -447f, -982f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1723f, -614f, 359f, 1206f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1369f), _wgslsmith_f_op_f32(-1000f - 695f))) - vec2<f32>(_wgslsmith_div_f32(676f, _wgslsmith_f_op_f32(round(-1830f))), _wgslsmith_f_op_f32(-1f))));
    var_2 = Struct_4(func_5(vec3<u32>(_wgslsmith_mod_u32(1u | var_2.c, u_input.d.x), ~reverseBits(u_input.a.x), 4294967295u & func_1(u_input.b.x, var_2.b, vec3<f32>(341f, var_2.d, -254f), vec4<f32>(var_2.d, -527f, var_2.d, var_2.d)).a.a.x), Struct_2(Struct_1(var_2.e.zx)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-168f * 143f), var_2.d))).a, -u_input.b.x, ~(~0u), -124f, var_2.e);
    var_0 = _wgslsmith_dot_vec3_i32(-(~(vec3<i32>(var_2.b, 1i, -1i) | vec3<i32>(-5569i, -2951i, -21523i))), vec3<i32>(-(~abs(var_2.b)), _wgslsmith_add_i32(reverseBits(-22823i), ~(-2147483647i)), u_input.e & select(i32(-1i) * -1i, var_2.b, var_2.a.x & var_2.a.x)));
    var_0 = reverseBits(2147483647i);
    var var_3 = _wgslsmith_mod_u32(max(~(~u_input.c) & _wgslsmith_mod_u32(u_input.c, 7383u << (0u % 32u)), 4294967295u), ~u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.d * var_2.d)), -var_2.b, 2147483647i, ~var_2.e.x, func_5(abs(vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(u_input.d.x, var_2.e.x, 62250u)), ~var_2.c, var_2.c)), Struct_2(Struct_1(var_2.e.wz | u_input.a.xy)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(-983f, 1909f), vec2<f32>(-1392f, var_2.d)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-172f, var_2.d)))))).e);
}

