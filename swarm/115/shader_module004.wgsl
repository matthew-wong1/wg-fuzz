struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: i32,
    d: bool,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
    d: bool,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: Struct_5, arg_1: vec3<u32>, arg_2: Struct_4, arg_3: f32) -> vec4<bool> {
    var var_0 = reverseBits(_wgslsmith_mod_u32(~(~arg_1.x) ^ 1u, abs(71694u)));
    var_0 = firstLeadingBit(~(~u_input.a.x) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(70355u, 27686u, u_input.a.x, u_input.b.x) & vec4<u32>(u_input.b.x, 6933u, u_input.a.x, 40760u), abs(vec4<u32>(0u, u_input.b.x, arg_1.x, u_input.b.x))));
    var var_1 = vec4<f32>(1463f, 257f, _wgslsmith_f_op_f32(1531f * 296f), arg_0.b.x);
    let var_2 = vec2<u32>(~(arg_1.x & 4294967295u), 4294967295u) | (arg_1.zz >> (vec2<u32>(u_input.b.x, ~74752u) % vec2<u32>(32u)));
    var_0 = arg_1.x;
    return !(!(!vec4<bool>(true, all(arg_2.c.a.b), !arg_2.c.a.e.x, arg_2.b.d)));
}

fn func_3(arg_0: bool, arg_1: Struct_4, arg_2: Struct_3) -> bool {
    let var_0 = 0u;
    var var_1 = u_input.a;
    var var_2 = _wgslsmith_mult_vec2_u32(~_wgslsmith_mult_vec2_u32(u_input.b, vec2<u32>(var_0, abs(u_input.b.x))), ~u_input.b);
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(-425f)), -1600f)));
    var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_2.a, arg_2.a), vec2<f32>(-653f, 1000f)))))) - vec2<f32>(-1651f, -758f));
    return true;
}

fn func_1() -> vec4<f32> {
    let var_0 = vec2<u32>(reverseBits(_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a.x, 4294967295u), _wgslsmith_div_u32(abs(u_input.b.x), ~u_input.b.x))), 4294967295u);
    var var_1 = !(!vec3<bool>(all(func_2(Struct_5(vec3<i32>(u_input.c, u_input.c, u_input.c), vec4<f32>(-2114f, -1184f, -1492f, 518f)), vec3<u32>(u_input.a.x, 1u, 87452u), Struct_4(-2069f, Struct_1(u_input.c, vec2<bool>(false, true), u_input.c, false, vec3<bool>(false, false, false)), Struct_2(Struct_1(u_input.c, vec2<bool>(true, true), -2147483647i, true, vec3<bool>(false, false, true))), false), -1392f)), func_3(true, Struct_4(2098f, Struct_1(15193i, vec2<bool>(true, true), -44121i, false, vec3<bool>(true, false, false)), Struct_2(Struct_1(-64518i, vec2<bool>(false, true), -1i, true, vec3<bool>(false, true, true))), true), Struct_3(1427f)), func_3(false, Struct_4(463f, Struct_1(u_input.c, vec2<bool>(false, true), -32153i, true, vec3<bool>(false, false, false)), Struct_2(Struct_1(-1i, vec2<bool>(true, true), -1i, true, vec3<bool>(false, false, true))), true), Struct_3(747f))));
    let var_2 = Struct_1(-4954i, vec2<bool>(true, false), -2147483647i, all(!vec3<bool>(var_1.x, false, true)) || true, vec3<bool>(any(!(!vec3<bool>(var_1.x, true, true))), true, false));
    var var_3 = !(!func_2(Struct_5(_wgslsmith_div_vec3_i32(vec3<i32>(0i, u_input.c, 40999i), vec3<i32>(var_2.a, 1i, 1i)), vec4<f32>(-1124f, -1437f, 180f, -833f)), ~u_input.a, Struct_4(-325f, Struct_1(u_input.c, vec2<bool>(var_2.b.x, true), var_2.c, var_2.b.x, var_2.e), Struct_2(var_2), all(vec2<bool>(var_1.x, var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1347f, -200f)) - _wgslsmith_f_op_f32(f32(-1f) * -254f))));
    var_3 = vec4<bool>(select((~u_input.b.x ^ ~4294967295u) >= (~var_0.x ^ ~u_input.b.x), 535f <= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-320f, -503f)), _wgslsmith_f_op_f32(-621f + 157f))), true), select(var_3.x, true, any(var_3.yz) | !var_2.d), !var_1.x, any(!func_2(Struct_5(vec3<i32>(-10616i, -59150i, var_2.c), vec4<f32>(595f, 619f, -448f, 2102f)), max(vec3<u32>(var_0.x, 110779u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, var_0.x)), Struct_4(2001f, var_2, Struct_2(var_2), var_3.x), _wgslsmith_f_op_f32(f32(-1f) * -1291f))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1764f, 1016f, -798f, 769f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1241f, -503f, -186f, -1595f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1176f, 989f, -900f, 766f))))));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: u32, arg_3: vec2<bool>) -> vec2<i32> {
    let var_0 = true;
    let var_1 = Struct_5(_wgslsmith_sub_vec3_i32(-max(vec3<i32>(-5633i, u_input.c, 1i), vec3<i32>(-54586i, u_input.c, 31681i)), -(~vec3<i32>(46656i, u_input.c, u_input.c))) ^ abs(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, u_input.c, 1i), vec3<i32>(u_input.c, u_input.c, u_input.c)) ^ select(vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<bool>(var_0, arg_3.x, var_0))), arg_1);
    var var_2 = ~vec2<u32>(_wgslsmith_mod_u32(1u, _wgslsmith_div_u32(0u, arg_0.x) ^ ~4294967295u), arg_2);
    var_2 = abs(reverseBits((vec2<u32>(arg_0.x, 0u) | u_input.a.xz) >> ((vec2<u32>(arg_2, arg_0.x) >> (vec2<u32>(52270u, 0u) % vec2<u32>(32u))) % vec2<u32>(32u)))) >> (vec2<u32>(~u_input.a.x, ~var_2.x) % vec2<u32>(32u));
    let var_3 = true;
    return countOneBits(~(vec2<i32>(5625i, min(1i, -7161i)) & var_1.a.yx));
}

fn func_5(arg_0: i32, arg_1: i32) -> Struct_1 {
    let var_0 = Struct_1(-1i, func_2(Struct_5(max(vec3<i32>(1i, u_input.c, u_input.c), _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, arg_1, 1i), vec3<i32>(u_input.c, 11174i, 1355i))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-569f, -699f, -1096f, -1149f)))), select(~vec3<u32>(u_input.b.x, 110447u, u_input.b.x), select(vec3<u32>(51776u, 1u, u_input.a.x), u_input.a, all(vec2<bool>(false, false))), !(u_input.c >= u_input.c)), Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -1305f), Struct_1(arg_1, vec2<bool>(true, true), -7883i, true, vec3<bool>(false, true, false)), Struct_2(Struct_1(u_input.c, vec2<bool>(false, false), 0i, false, vec3<bool>(false, false, true))), false), _wgslsmith_f_op_f32(f32(-1f) * -664f)).xz, arg_0, true & !any(vec2<bool>(true, false)), select(select(vec3<bool>(true, false, true), select(vec3<bool>(false, true, false), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), !select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false), any(vec4<bool>(false, true, true, true))), !(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false))));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -116f), _wgslsmith_f_op_f32(step(769f, 1250f))))))));
    var_1 = Struct_3(_wgslsmith_f_op_f32(max(var_1.a, _wgslsmith_f_op_f32(-var_1.a))));
    let var_2 = -vec4<i32>(-17755i, -(~(-arg_1)), arg_0, -2856i);
    var_1 = Struct_3(-896f);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.c) << (u_input.a.yx % vec2<u32>(32u)), func_4(_wgslsmith_add_vec3_u32(u_input.a, ~vec3<u32>(14765u, u_input.b.x, u_input.a.x)), _wgslsmith_f_op_vec4_f32(func_1()), u_input.a.x, vec2<bool>(true, 9602i < u_input.c))));
    let var_1 = Struct_2(var_0);
    var var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1707f) - -207f));
    var_2 = Struct_3(1f);
    var_2 = Struct_3(-124f);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c, min(1u ^ _wgslsmith_mod_u32(5810u, u_input.b.x), ~113384u));
}

