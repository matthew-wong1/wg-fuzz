struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: i32,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> f32 {
    var var_0 = true;
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(global0.xy)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(791f, global0.x)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(-1000f)), global0.x))));
    var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.xx - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-global0.yx)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1122f, 560f) * global0.yx)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(531f + var_1.x))) + -862f), var_1.x), vec2<bool>(true, true)));
    var var_2 = Struct_3(Struct_2(u_input.a.x), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -400f)))), vec2<u32>(1u, 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-172f, -608f), -107f)))), Struct_1(278f, vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), ~(24079u >> (0u % 32u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(2223f + _wgslsmith_f_op_f32(round(var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-177f * 235f) + -363f))), var_1.x, abs(_wgslsmith_sub_i32(u_input.a.x, -708i)) ^ 18200i);
    var var_3 = -vec2<i32>(firstLeadingBit(-_wgslsmith_clamp_i32(2147483647i, 53317i, var_2.a.a)), firstLeadingBit(1626i));
    return _wgslsmith_f_op_f32(732f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(735f - 203f))));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>) -> bool {
    var var_0 = arg_0;
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c, -588f, -467f, -776f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1347f, var_0.c, var_0.a, -559f) + vec4<f32>(arg_0.a, -800f, global0.x, -1113f))))))) + vec4<f32>(154f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global0.x, global0.x), -220f)) * _wgslsmith_f_op_f32(func_3())), -824f, global0.x));
    global0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, global0.x, -2250f, global0.x))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-169f))), global0.x, _wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(-global0.x)))));
    let var_1 = _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, u_input.a.x, 15358i), firstLeadingBit(-vec3<i32>(_wgslsmith_sub_i32(2147483647i, u_input.a.x), _wgslsmith_mult_i32(1i, -20996i), -24441i)));
    var var_2 = Struct_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(210f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(min(arg_0.a, var_0.a))), -194f, _wgslsmith_div_f32(-1044f, _wgslsmith_f_op_f32(ceil(689f))))), vec4<u32>(9643u, 62603u, 0u, arg_0.b.x));
    return false;
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: u32) -> vec3<bool> {
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.b.a))))), _wgslsmith_f_op_f32(-arg_1.c.a), _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1786f))))));
    var var_0 = select(!arg_0.x, all(vec2<bool>(all(arg_0), true && arg_0.x)), arg_0.x && any(vec2<bool>(true, true))) && arg_0.x;
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.a, -123f, -239f, 546f) - vec4<f32>(1395f, global0.x, global0.x, arg_1.c.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-431f, -1189f, arg_1.c.c, 505f), vec4<f32>(global0.x, -1409f, global0.x, arg_1.b.c)))), !func_2(Struct_1(global0.x, vec2<u32>(5639u, 44568u), global0.x), vec2<bool>(false, arg_0.x)))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1065f, _wgslsmith_f_op_f32(-arg_1.b.a), arg_1.d, -297f))))));
    var_0 = arg_0.x;
    var var_1 = vec4<bool>(false, true, arg_0.x, all(select(!select(vec4<bool>(arg_0.x, arg_0.x, false, true), vec4<bool>(arg_0.x, false, false, false), arg_0.x), vec4<bool>(true || arg_0.x, all(vec3<bool>(false, arg_0.x, arg_0.x)), arg_0.x, arg_0.x), false)));
    return vec3<bool>(false, true, all(select(var_1.wx, arg_0, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1443f, global0.x, -897f, global0.x) + vec4<f32>(-885f, -110f, -358f, -1075f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 1245f, 243f, global0.x)) - vec4<f32>(global0.x, -1000f, -1883f, global0.x)))))));
    var var_0 = !select(vec3<bool>(any(func_1(vec2<bool>(false, false), Struct_3(Struct_2(19506i), Struct_1(-842f, vec2<u32>(0u, 1u), global0.x), Struct_1(global0.x, vec2<u32>(0u, 18995u), global0.x), 1000f, -2147483647i), 4294967295u)), func_2(Struct_1(global0.x, vec2<u32>(1u, 4294967295u), global0.x), vec2<bool>(false, true)), !select(true, true, false)), vec3<bool>(false, _wgslsmith_f_op_f32(abs(455f)) > _wgslsmith_f_op_f32(round(1784f)), any(vec3<bool>(false, false, true)) && true), vec3<bool>(any(vec4<bool>(true, true, true, false)), !any(vec2<bool>(true, true)), !func_2(Struct_1(global0.x, vec2<u32>(18236u, 0u), -1194f), vec2<bool>(false, true))));
    global0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, global0.x)), vec4<f32>(822f, global0.x, global0.x, 308f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(286f, -850f, 155f, -187f) - vec4<f32>(-543f, global0.x, global0.x, 1804f)), vec4<f32>(-362f, global0.x, global0.x, 1038f), vec4<bool>(var_0.x, var_0.x, true, var_0.x)))))));
    var var_1 = ~(~_wgslsmith_mult_vec3_i32(countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a, vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x))), u_input.a));
    var var_2 = -1321f;
    global0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.x * 394f), _wgslsmith_f_op_f32(global0.x + global0.x), false)), _wgslsmith_f_op_f32(-577f - _wgslsmith_f_op_f32(global0.x - global0.x)), _wgslsmith_f_op_f32(step(-625f, global0.x)), -852f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.x)) - global0.x), global0.x))));
    let var_3 = func_1(!var_0.xx, Struct_3(Struct_2(2147483647i), Struct_1(_wgslsmith_f_op_f32(max(181f, _wgslsmith_div_f32(1006f, 200f))), vec2<u32>(1u, 1u), 375f), Struct_1(global0.x, ~vec2<u32>(0u, 0u), global0.x), 102f, -var_1.x), (1u ^ _wgslsmith_sub_u32(4294967295u, select(0u, 1u, false))) >> (1u % 32u));
    var var_4 = abs(u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(40631u, 6523u), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(998f, 790f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-420f, global0.x) + vec2<f32>(global0.x, global0.x)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(global0.wx, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1679f, -428f), global0.zz, var_0.x))), vec2<f32>(_wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_f_op_f32(-1000f + 1771f)), !(!var_3.xx))))));
}

