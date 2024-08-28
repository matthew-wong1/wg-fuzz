struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: f32,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: vec2<bool>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1211f);
    var var_1 = -abs(_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, -1i), vec2<i32>(-1i, u_input.d)) >> (_wgslsmith_sub_vec2_u32(u_input.c, vec2<u32>(u_input.b, u_input.a.x)) % vec2<u32>(32u)));
    var var_2 = _wgslsmith_sub_u32(_wgslsmith_mult_u32(~(_wgslsmith_clamp_u32(u_input.b, u_input.c.x, u_input.a.x) ^ u_input.b), _wgslsmith_clamp_u32(22269u, countOneBits(_wgslsmith_add_u32(0u, u_input.b)), 46510u)), 13427u);
    var_2 = reverseBits(~min(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.a.x, 0u, 29999u), ~u_input.a), u_input.b));
    var_2 = abs(_wgslsmith_div_u32(23607u, u_input.b)) & u_input.a.x;
    return _wgslsmith_add_i32(_wgslsmith_mod_i32(~0i, -1i), u_input.d);
}

fn func_3() -> vec2<bool> {
    var var_0 = !(any(vec3<bool>(any(vec2<bool>(true, true)), all(vec2<bool>(true, true)), any(vec3<bool>(false, false, false)))) && all(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false)));
    var_0 = false;
    let var_1 = select(select(select(vec4<bool>(any(vec4<bool>(true, false, true, true)), true, true, false), select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true)), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), true), !(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false)), all(vec4<bool>(false, false, false, true)))), !any(vec2<bool>(any(vec4<bool>(true, false, false, true)), false)));
    let var_2 = Struct_1(var_1.yzx, vec4<bool>(true, (_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, u_input.d, 47013i, u_input.d), vec4<i32>(-2147483647i, 34321i, u_input.d, u_input.d)) <= -u_input.d) || all(!var_1), false, var_1.x), _wgslsmith_sub_u32(44431u, _wgslsmith_mult_u32(0u, u_input.a.x | 4294967295u)) | min(_wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_div_u32(4294967295u, 7896u), 1u), u_input.c.x));
    var var_3 = abs(u_input.a);
    return var_1.xw;
}

fn func_1() -> Struct_3 {
    let var_0 = func_2();
    let var_1 = u_input.d >> (select(u_input.c.x, ~(4294967295u >> (u_input.a.x % 32u)), all(select(vec2<bool>(true, true), vec2<bool>(false, true), func_3()))) % 32u);
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(min(497f, -2033f)), _wgslsmith_div_f32(-2138f, -284f), -1131f, _wgslsmith_f_op_f32(-1061f - -935f)))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-745f))), _wgslsmith_f_op_f32(-845f - _wgslsmith_f_op_f32(-773f + 1503f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(808f * -486f) * _wgslsmith_f_op_f32(ceil(539f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(542f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-138f, -1252f), _wgslsmith_f_op_f32(f32(-1f) * -765f), -928f, 182f)) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1467f, -325f) - 987f), 404f, -464f, -1208f)), vec4<bool>(any(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false)), true, false, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-1192f, -1020f, false)))) <= _wgslsmith_f_op_f32(-170f * _wgslsmith_div_f32(-801f, -320f)))));
    var var_3 = vec4<bool>(false, false, any(select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true))), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), true)), true | any(vec2<bool>(func_3().x, false)));
    var var_4 = -1i;
    return Struct_3(var_3.x, _wgslsmith_mod_i32(1i, _wgslsmith_sub_i32(firstTrailingBit(abs(-26853i)), var_1)), var_2.x, abs(~abs(firstTrailingBit(u_input.a.x))), Struct_2(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-594f, _wgslsmith_f_op_f32(f32(-1f) * -611f)))), Struct_1(!vec3<bool>(var_3.x, true, false), vec4<bool>(false, any(vec2<bool>(var_3.x, true)), var_3.x, false), ~u_input.a.x ^ _wgslsmith_sub_u32(4294967295u, u_input.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -107f, _wgslsmith_f_op_f32(select(var_2.x, 448f, var_3.x)), var_2.x)), Struct_1(!select(vec3<bool>(false, true, var_3.x), vec3<bool>(var_3.x, false, true), var_3.x), select(!vec4<bool>(var_3.x, false, var_3.x, false), vec4<bool>(var_3.x, false, true, true), var_3.x), ~(~4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = vec3<f32>(var_0.c, _wgslsmith_f_op_f32(round(907f)), var_0.c);
    let var_2 = Struct_4(!(!any(var_0.e.c.a)), var_0.a, vec2<bool>(var_0.a, var_0.a));
    let var_3 = !(!(!var_2.c));
    var var_4 = !(!(!var_2.c));
    var_4 = var_0.e.e.a.xz;
    let var_5 = ~_wgslsmith_add_u32(~114681u, 36428u);
    let var_6 = Struct_1(func_1().e.e.a, var_0.e.c.b, ~var_0.d);
    let var_7 = func_1().d;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.e.d.zw);
}

