struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec3<f32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: vec3<bool>,
    d: vec2<bool>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec3<bool> {
    var var_0 = abs(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.e, reverseBits(~u_input.b)), u_input.e, ~u_input.e));
    var_0 = ~abs(reverseBits(u_input.e));
    var_0 = vec4<u32>(_wgslsmith_sub_u32(var_0.x, 10668u) >> (u_input.e.x % 32u), ~abs(reverseBits(_wgslsmith_sub_u32(var_0.x, var_0.x))), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.e, _wgslsmith_sub_vec4_u32(u_input.e, vec4<u32>(u_input.e.x, var_0.x, 3659u, var_0.x))), vec4<u32>(_wgslsmith_add_u32(~u_input.e.x, firstLeadingBit(0u)), ~(~var_0.x), countOneBits(1u), u_input.b.x)), ~(~55626u));
    var_0 = (vec4<u32>(10805u & (u_input.e.x ^ var_0.x), reverseBits(u_input.e.x << (1u % 32u)), ~u_input.e.x ^ u_input.b.x, abs(1u)) << (select(~u_input.b, min(vec4<u32>(24985u, var_0.x, var_0.x, u_input.b.x), u_input.b) ^ max(vec4<u32>(4294967295u, u_input.b.x, var_0.x, 29424u), u_input.b), false) % vec4<u32>(32u))) | u_input.e;
    let var_1 = var_0.xw;
    return !select(!vec3<bool>(true, u_input.d < u_input.c, true), vec3<bool>(true, !any(vec2<bool>(true, true)), select(any(vec4<bool>(true, true, true, true)), any(vec3<bool>(false, true, true)), any(vec3<bool>(false, false, true)))), true);
}

fn func_2() -> Struct_4 {
    let var_0 = all(vec3<bool>(all(vec4<bool>(true, true, true, true)), true, all(vec4<bool>(true, true, false, true)))) | true;
    let var_1 = Struct_1(select(select(func_3(), func_3(), vec3<bool>(var_0 || true, !var_0, all(vec2<bool>(var_0, false)))), !(!func_3()), all(vec2<bool>(any(vec4<bool>(var_0, true, false, true)), select(true, true, var_0)))), vec3<i32>(u_input.a.x, -47195i & u_input.a.x, ~1i), false);
    let var_2 = var_1;
    let var_3 = Struct_4(var_1.b.x, Struct_3(var_1, Struct_2(-18371i, false), abs(u_input.e), var_1.b.zy, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(618f - 544f), _wgslsmith_f_op_f32(ceil(440f)), -257f)))), func_3(), vec2<bool>(true, !all(var_1.a)), u_input.a.x);
    var var_4 = 791f;
    return Struct_4(var_3.e, Struct_3(var_2, Struct_2(0i, var_1.c), _wgslsmith_add_vec4_u32(~(~var_3.b.c), abs(select(vec4<u32>(u_input.e.x, 23856u, var_3.b.c.x, 23720u), vec4<u32>(u_input.b.x, u_input.e.x, var_3.b.c.x, u_input.b.x), var_3.c.x))), u_input.a | vec2<i32>(max(-1i, -1i), 9034i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(-505f)), -2348f, _wgslsmith_f_op_f32(f32(-1f) * -2406f)))), func_3(), !func_3().xy, _wgslsmith_clamp_i32(var_3.b.b.a, _wgslsmith_sub_i32(~(-1i), var_3.e), var_1.b.x) >> (7765u % 32u));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: Struct_4) -> vec2<f32> {
    var var_0 = countOneBits(~(-firstLeadingBit(firstLeadingBit(22660i))));
    let var_1 = Struct_1(arg_2.b.a.a, -firstLeadingBit(vec3<i32>(arg_1.x, i32(-1i) * -65053i, arg_1.x)), 719f >= _wgslsmith_f_op_f32(step(372f, _wgslsmith_f_op_f32(-arg_2.b.e.x))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.e.x, arg_0.b.e.x, arg_0.b.e.x, -818f)))))) - vec4<f32>(arg_0.b.e.x, _wgslsmith_f_op_f32(-arg_2.b.e.x), arg_0.b.e.x, 372f));
    return _wgslsmith_f_op_vec2_f32(arg_2.b.e.yz - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(arg_2.b.e.xy)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(100f, arg_2.b.e.x))), _wgslsmith_div_vec2_f32(var_2.yz, arg_0.b.e.zz))), !select(arg_0.d, vec2<bool>(false, arg_0.d.x), vec2<bool>(arg_0.b.a.c, false))))));
}

fn func_1(arg_0: vec2<bool>) -> Struct_3 {
    var var_0 = -u_input.c;
    var var_1 = _wgslsmith_f_op_vec2_f32(func_4(func_2(), u_input.a, Struct_4(-countOneBits(-30902i), func_2().b, func_2().c, arg_0, reverseBits(-2627i) << (~(~u_input.b.x) % 32u))));
    var_0 = u_input.a.x;
    var_0 = max(min(u_input.c, u_input.a.x), _wgslsmith_dot_vec3_i32(-firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.d, u_input.a.x, -33687i), vec3<i32>(u_input.a.x, -2147483647i, -4449i))), vec3<i32>(u_input.a.x, -4834i, u_input.d)));
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1710f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -891f) * var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.x))))), func_2().b.e);
    return Struct_3(Struct_1(!vec3<bool>(true, !arg_0.x, true), vec3<i32>(2230i, 23892i, -67897i) & select(vec3<i32>(27086i, u_input.c, u_input.a.x) & vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i), vec3<i32>(-68081i, u_input.a.x, u_input.d), var_1.x != var_2.x), true), Struct_2(-46414i | u_input.a.x, false), max(vec4<u32>(abs(u_input.e.x), u_input.b.x, u_input.b.x, _wgslsmith_mod_u32(min(u_input.b.x, u_input.e.x), abs(1u))), _wgslsmith_sub_vec4_u32(~(~u_input.e), vec4<u32>(max(u_input.b.x, 1u), max(1u, 45878u), 4294967295u, 1u))), ~((~u_input.a | u_input.a) << (abs(u_input.e.xx) % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-399f, 282f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -581f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec2<bool>(any(select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), true)), true));
    var var_1 = func_2().b.b;
    var var_2 = var_0.e.x;
    var var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(947f * _wgslsmith_f_op_f32(var_0.e.x * _wgslsmith_f_op_f32(var_0.e.x + _wgslsmith_f_op_f32(round(var_0.e.x))))), -1000f));
    var var_4 = var_0;
    let var_5 = ~vec4<u32>(_wgslsmith_div_u32(~u_input.b.x, 0u) << (~countOneBits(var_4.c.x) % 32u), 0u >> (~abs(u_input.e.x) % 32u), func_2().b.c.x, func_2().b.c.x << (_wgslsmith_sub_u32(u_input.e.x | 30668u, ~0u) % 32u));
    var_4 = var_0;
    var_1 = func_2().b.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(121355u, 31652u), _wgslsmith_f_op_vec2_f32(-var_4.e.xx), select(-vec4<i32>(-1i >> (u_input.b.x % 32u), -59492i, var_4.b.a, ~(-33663i)), _wgslsmith_mod_vec4_i32(-vec4<i32>(var_0.d.x, 11650i, 27528i, var_1.a), ~vec4<i32>(var_4.b.a, 0i, var_0.d.x, var_1.a)), true));
}

