struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: u32,
    d: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: i32,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(127f, -598f, 1678f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> i32 {
    let var_0 = select(select(vec3<bool>(true, true, !all(vec2<bool>(false, false))), select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true), vec3<bool>(false, true, u_input.a.x < 0i), select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), true)), select(all(vec2<bool>(true, true)), false, any(vec3<bool>(true, true, true)))), vec3<bool>(false, true, true), true);
    var var_1 = Struct_4(Struct_2(Struct_1(global0.x, ~vec3<i32>(-2147483647i, 3036i, 1i)), Struct_1(_wgslsmith_f_op_f32(global0.x * global0.x), ~u_input.a), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(400f, 354f, 1181f, global0.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 1584f, -262f, -134f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, -932f, global0.x)) + vec4<f32>(global0.x, global0.x, 271f, -517f))))), _wgslsmith_mod_u32(firstTrailingBit(max(~59572u, 83393u)), _wgslsmith_div_u32(~firstTrailingBit(35880u), 1u)));
    var var_2 = Struct_2(Struct_1(var_1.a.a.a, firstTrailingBit(-var_1.a.b.b)), var_1.a.a, var_1.a.c);
    global0 = var_2.c.zxy;
    global0 = var_2.c.yxz;
    return min(var_2.b.b.x, _wgslsmith_div_i32(-59965i, 1i) << (var_1.b % 32u));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_5(-vec4<i32>(_wgslsmith_sub_i32(2147483647i, 2147483647i) | ~u_input.a.x, ~7529i, ~(-u_input.a.x), func_3() << (1u % 32u)), reverseBits(~u_input.a.x), Struct_4(Struct_2(Struct_1(global0.x, u_input.a), Struct_1(_wgslsmith_f_op_f32(trunc(global0.x)), u_input.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.x, -226f, 476f, 421f), vec4<f32>(global0.x, global0.x, 410f, global0.x))))), abs(1u)));
    var var_1 = Struct_3(vec2<bool>(false, !select(true, true, any(vec3<bool>(true, false, true)))), Struct_2(Struct_1(-1056f, var_0.c.a.a.b), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(466f + var_0.c.a.a.a), _wgslsmith_f_op_f32(f32(-1f) * -152f))), var_0.c.a.b.b & -vec3<i32>(var_0.c.a.b.b.x, 36655i, u_input.a.x)), vec4<f32>(-928f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(global0.x)))), 2002f, _wgslsmith_f_op_f32(-var_0.c.a.b.a))), select(25635u, 0u, false), !vec3<bool>(select(false, false, var_0.c.b < var_0.c.b), true, true));
    let var_2 = var_1.d.x;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(2058f * var_1.b.b.a))))));
    var var_4 = 69017u;
    return var_0.c.a;
}

fn func_1(arg_0: vec2<i32>, arg_1: i32) -> vec4<bool> {
    let var_0 = Struct_4(func_2(), 4294967295u);
    let var_1 = Struct_3(vec2<bool>(true, true), func_2(), var_0.b, select(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec3<bool>(false, true, false))), true));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.b.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.a.a.a)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(330f - -276f) * _wgslsmith_f_op_f32(floor(var_0.a.a.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1776f, -281f)) * -1000f))));
    let var_3 = countOneBits(vec3<u32>(0u, _wgslsmith_add_u32(1u, 1u), abs(~0u)) ^ ~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(18892u, var_0.b, 0u, 1u), vec4<u32>(0u, var_0.b, 4294967295u, var_1.c)), ~var_0.b, 1u & var_0.b));
    let var_4 = !all(!select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, var_1.a.x, false), vec4<bool>(true, true, var_1.d.x, var_1.d.x)), vec4<bool>(true, var_1.d.x, false, false), !vec4<bool>(var_1.d.x, var_1.a.x, false, var_1.a.x)));
    return !(!select(vec4<bool>(var_1.d.x && false, true, var_1.a.x, any(vec2<bool>(true, true))), select(vec4<bool>(true, true, true, true), !vec4<bool>(var_4, var_4, true, false), !vec4<bool>(var_4, var_1.d.x, var_4, var_4)), !select(vec4<bool>(var_1.a.x, true, true, true), vec4<bool>(var_4, var_4, var_1.a.x, false), vec4<bool>(var_4, false, false, var_4))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * global0.x) * -1685f))), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-816f)))))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1810f, global0.x, global0.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 1227f, 879f) + vec3<f32>(global0.x, -151f, global0.x))) + vec3<f32>(global0.x, -338f, _wgslsmith_f_op_f32(764f * global0.x))))));
    global0 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(675f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-108f + global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1192f - global0.x)))));
    var var_0 = true;
    var var_1 = func_1(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, 19742i), u_input.a.zy), -1895i);
    var var_2 = func_2();
    var_0 = (any(vec4<bool>(true, var_1.x, false, var_1.x & true)) && true) && true;
    let var_3 = func_2();
    var_2 = Struct_2(var_3.a, func_2().b, func_2().c);
    var var_4 = abs(_wgslsmith_sub_vec4_i32(firstLeadingBit(~vec4<i32>(u_input.a.x, -1i, u_input.a.x, 33544i) ^ firstLeadingBit(vec4<i32>(var_2.a.b.x, 2147483647i, -54654i, var_3.a.b.x))), vec4<i32>(-var_3.a.b.x >> (firstTrailingBit(1u) % 32u), func_3(), -2147483647i, ~(var_3.b.b.x ^ var_3.a.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 13414u), abs(vec2<u32>(20612u, 1u)))), _wgslsmith_clamp_u32(~10756u, 1u, ~1u), var_3.c, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.c.zw) * _wgslsmith_f_op_vec2_f32(-var_3.c.zy)))))));
}

