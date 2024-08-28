struct Struct_1 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -533f), -2097f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-291f))));
    var var_1 = var_0;
    var_1 = var_0;
    var var_2 = _wgslsmith_clamp_vec2_i32(~u_input.a.yz, _wgslsmith_mod_vec2_i32(vec2<i32>(~0i | (u_input.a.x ^ 0i), u_input.b), _wgslsmith_mult_vec2_i32(firstLeadingBit(firstTrailingBit(u_input.a.yz)), ~(~vec2<i32>(-8663i, 2147483647i)))), -vec2<i32>(u_input.b, _wgslsmith_add_i32(-31415i, abs(-1i))));
    let var_3 = var_0;
    return -1608f;
}

fn func_2(arg_0: i32, arg_1: i32) -> i32 {
    var var_0 = vec3<u32>(77814u >> (_wgslsmith_clamp_u32(4294967295u, 16602u, ~_wgslsmith_div_u32(u_input.c.x, 1u)) % 32u), u_input.c.x, min(u_input.c.x | u_input.c.x, max(firstTrailingBit(20794u) & firstLeadingBit(1u), max(u_input.c.x, min(1u, u_input.c.x)))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(round(-649f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(495f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(1632f))))) * _wgslsmith_f_op_f32(func_3())));
    var_1 = Struct_1(-1044f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.b)) - var_1.a));
    let var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~(~(~10348u)), 1u, ~countOneBits(var_0.x)), vec4<u32>(5321u, ~0u, var_0.x, _wgslsmith_mult_u32(21729u, _wgslsmith_dot_vec3_u32(u_input.c.yxx, u_input.c.zzx) ^ ~0u)));
    var_1 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + -1488f));
    return -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.zz);
}

fn func_1(arg_0: vec2<bool>, arg_1: f32, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = ~u_input.a;
    var_0 = vec3<i32>(-_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(max(vec2<i32>(var_0.x, 26011i), var_0.xx), _wgslsmith_mod_vec2_i32(vec2<i32>(var_0.x, var_0.x), var_0.xx)), vec2<i32>(u_input.a.x, i32(-1i) * -2147483647i)), u_input.b, ~35881i);
    var_0 = u_input.a;
    var_0 = vec3<i32>(var_0.x, _wgslsmith_div_i32(-1i, func_2(var_0.x, i32(-1i) * -1i)) ^ ~var_0.x, _wgslsmith_dot_vec2_i32(var_0.zz, vec2<i32>(-2147483647i, -firstTrailingBit(24544i))));
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(254f))));
    return arg_2;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: bool) -> vec4<f32> {
    let var_0 = _wgslsmith_mult_vec2_u32(select(~vec2<u32>(u_input.c.x, 2608u), u_input.c.yx, false), _wgslsmith_sub_vec2_u32(max(vec2<u32>(u_input.c.x, 40581u), countOneBits(u_input.c.wy)), _wgslsmith_clamp_vec2_u32(u_input.c.zx, _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.c.x, 38726u), u_input.c.yz), u_input.c.yx)));
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, -1000f, -977f, -249f))), _wgslsmith_div_vec4_f32(vec4<f32>(-593f, arg_0.b, -316f, arg_0.a), vec4<f32>(arg_0.a, arg_0.b, arg_0.a, -1885f)))) + vec4<f32>(_wgslsmith_f_op_f32(trunc(-244f)), _wgslsmith_f_op_f32(-1000f + -427f), arg_0.a, _wgslsmith_f_op_f32(241f - -412f))) - vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-arg_0.a)), arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a + -875f)), arg_0.a))));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = Struct_1(-581f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(2006f - 294f), -184f, all(vec2<bool>(true, true)))), -879f, false)));
    let var_1 = ~u_input.a.x;
    let var_2 = arg_1;
    let var_3 = !all(vec2<bool>(false, any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)))));
    let var_4 = Struct_1(arg_2.x, var_0.a);
    return func_1(!(!vec2<bool>(var_3, var_3)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_vec4_f32(func_4(func_1(vec2<bool>(true, true), 1624f, var_2, vec3<f32>(-560f, arg_2.x, -566f)), u_input.a, false)).x, _wgslsmith_f_op_f32(min(-871f, _wgslsmith_f_op_f32(f32(-1f) * -2617f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.b - arg_2.x)))), func_1(!(!vec2<bool>(var_3, var_3)), arg_1.a, Struct_1(arg_1.a, 1000f), vec3<f32>(var_4.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.a * arg_1.a), _wgslsmith_f_op_f32(f32(-1f) * -668f)), var_0.a)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-428f, 122f, -470f) - _wgslsmith_f_op_vec3_f32(arg_2.zwz * arg_2.zyw)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(arg_2.zzz)), _wgslsmith_f_op_vec3_f32(arg_2.zzy - arg_2.xzy)), var_3)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(619f, -952f, 1447f) + vec3<f32>(arg_1.b, var_2.a, arg_0.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(2405f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-163f, 481f))), _wgslsmith_f_op_f32(1082f * 1f), true)));
    let var_1 = func_5(vec2<f32>(1413f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1081f)) * _wgslsmith_f_op_f32(floor(420f)))), var_0, _wgslsmith_f_op_vec4_f32(func_4(func_1(vec2<bool>(true, any(vec4<bool>(true, true, false, true))), _wgslsmith_f_op_f32(1374f - _wgslsmith_div_f32(604f, 259f)), var_0, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(1400f, -511f, -196f), vec3<f32>(var_0.a, var_0.b, -1117f))))), vec3<i32>(reverseBits(u_input.b), abs(_wgslsmith_mult_i32(u_input.b, -1i)), _wgslsmith_clamp_i32(-1i, -2147483647i, max(u_input.a.x, u_input.b))), (all(vec2<bool>(true, true)) || any(vec4<bool>(true, false, true, true))) == any(vec4<bool>(true, false, true, true)))), u_input.c.yz);
    var var_2 = var_1;
    let var_3 = vec3<u32>(_wgslsmith_dot_vec3_u32(abs(countOneBits(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x))), vec3<u32>(~0u, min(u_input.c.x, 4294967295u), 0u)) ^ u_input.c.x, 55675u, _wgslsmith_dot_vec3_u32(countOneBits(abs(vec3<u32>(1u, 44116u, u_input.c.x))), ~(~_wgslsmith_add_vec3_u32(u_input.c.zxw, u_input.c.yxw))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, i32(-1i) * -32031i, 216f, select(~u_input.c.x, ~u_input.c.x, select(false, u_input.c.x <= ~u_input.c.x, select(false, false, true) && true)));
}

