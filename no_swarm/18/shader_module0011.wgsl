struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: f32,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-14820i, 22879i, 43043i, i32(-2147483648));

var<private> global1: u32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool, arg_1: vec2<bool>, arg_2: bool) -> f32 {
    global1 = 4294967295u;
    var var_0 = -12640i;
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), -704f)), 1718f));
    global1 = ~63844u;
    var var_2 = _wgslsmith_f_op_f32(min(var_1, -206f));
    return _wgslsmith_f_op_f32(-978f + _wgslsmith_f_op_f32(f32(-1f) * -164f));
}

fn func_2() -> Struct_2 {
    let var_0 = vec3<i32>(-1i) * -_wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, -37914i, -1i), select(vec3<i32>(-15693i, global0.x, global0.x), global0.yzz, vec3<bool>(true, false, true)), firstTrailingBit(global0.zxx)), reverseBits(-vec3<i32>(7822i, global0.x, 1i)));
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1146f, -1000f, 1464f, -1480f))))) - vec4<f32>(1742f, _wgslsmith_f_op_f32(f32(-1f) * -333f), _wgslsmith_f_op_f32(func_3(false, vec2<bool>(false, false), select(true, false, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -591f) * _wgslsmith_f_op_f32(2406f - 294f)))), var_0.xz);
    let var_2 = Struct_1(false, u_input.a.zxx, _wgslsmith_f_op_f32(step(var_1.a.x, _wgslsmith_f_op_f32(step(467f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -911f))))))), -344f, all(vec4<bool>(true, true, !(global0.x != var_0.x), all(vec4<bool>(true, true, true, true)) || all(vec2<bool>(false, true)))));
    let var_3 = !(_wgslsmith_f_op_f32(func_3(var_2.a, select(vec2<bool>(true, var_2.e), vec2<bool>(var_2.a, var_2.a), vec2<bool>(false, false)), true)) <= _wgslsmith_f_op_f32(1641f - _wgslsmith_f_op_f32(f32(-1f) * -1644f))) != true;
    var var_4 = ~0u;
    return var_1;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: bool, arg_3: Struct_2) -> bool {
    global0 = vec4<i32>(-1i) * -(vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, -4062i, arg_3.b.x, -9459i), vec4<i32>(arg_3.b.x, arg_3.b.x, arg_3.b.x, 2147483647i), vec4<i32>(33079i, 0i, 779i, arg_0.x)));
    let var_0 = !select(select(select(vec3<bool>(arg_2, true, arg_2), !vec3<bool>(true, true, arg_2), all(vec2<bool>(arg_2, arg_2))), !(!vec3<bool>(arg_2, false, arg_2)), !vec3<bool>(true, false, arg_2)), vec3<bool>(true, true, true), select(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, arg_2, arg_2)), !(!vec3<bool>(true, true, arg_2)), any(vec4<bool>(false, arg_2, arg_2, arg_2)) != true));
    let var_1 = Struct_1(u_input.a.x > ~u_input.a.x, u_input.a.xzx, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1862f - -376f))) - -273f), all(select(select(vec4<bool>(var_0.x, arg_2, true, true), vec4<bool>(true, true, var_0.x, true), true), !vec4<bool>(arg_2, true, false, true), select(!vec4<bool>(var_0.x, arg_2, var_0.x, arg_2), vec4<bool>(var_0.x, true, false, var_0.x), !arg_2))));
    global1 = abs(_wgslsmith_mod_u32(~u_input.a.x, u_input.a.x));
    global0 = min(-_wgslsmith_add_vec4_i32((vec4<i32>(-25732i, -9513i, arg_0.x, -24818i) >> (u_input.a % vec4<u32>(32u))) | (vec4<i32>(global0.x, 0i, -2147483647i, -1i) ^ vec4<i32>(arg_0.x, 8263i, 57519i, 28637i)), vec4<i32>(~9620i, firstTrailingBit(-2147483647i), arg_3.b.x, -arg_3.b.x)), abs(vec4<i32>(-arg_0.x, abs(-arg_1.b.x), ~reverseBits(arg_0.x), -arg_0.x ^ 0i)));
    return !(!(!select(var_1.b.x <= var_1.b.x, any(var_0.yz), all(var_0))));
}

fn func_1(arg_0: i32) -> f32 {
    var var_0 = vec3<bool>(func_4(global0.xzy | (~vec3<i32>(arg_0, 1i, -49633i) & select(vec3<i32>(2147483647i, -2147483647i, global0.x), vec3<i32>(arg_0, -36367i, global0.x), vec3<bool>(true, false, true))), func_2(), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, global0.x, 17479i, 1i), vec4<i32>(arg_0, 53065i, -1i, arg_0)), global0.x) <= ~arg_0, func_2()), true, select(~4294967295u < u_input.b, select(any(vec3<bool>(true, true, false)), true, true), true) | !(!any(vec3<bool>(true, false, true))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-478f + _wgslsmith_f_op_f32(-1624f + 707f)), -272f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-907f * 511f)), 269f)));
    let var_2 = u_input.a;
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(var_1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1344f) + var_1.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-588f, var_1.x)))))));
    let var_4 = func_2();
    return var_4.a.x;
}

fn func_5(arg_0: Struct_2) -> bool {
    var var_0 = 0i;
    let var_1 = _wgslsmith_add_i32(global0.x, -51266i);
    var var_2 = vec2<u32>(71391u, u_input.a.x);
    var var_3 = -vec2<i32>(-2147483647i ^ -global0.x, abs(abs(-var_1)));
    global1 = var_2.x;
    return any(vec3<bool>(false, true, true | all(vec3<bool>(true, false, true)))) != (arg_0.a.x > arg_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1993f, 1162f, true))), _wgslsmith_f_op_f32(sign(-1543f)), -1000f, _wgslsmith_f_op_f32(func_1(global0.x >> (u_input.a.x % 32u)))), global0.xy));
    var var_1 = Struct_1(!var_0, vec3<u32>(71680u, _wgslsmith_mod_u32(select(_wgslsmith_dot_vec2_u32(u_input.a.yx, vec2<u32>(u_input.b, u_input.b)), 46020u, false), ~1u), min(_wgslsmith_sub_u32(u_input.b, u_input.b), ~u_input.a.x) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(18667u, u_input.a.x), ~u_input.a.yx) % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -308f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-960f - -836f) * _wgslsmith_f_op_f32(523f + 768f)))) - _wgslsmith_f_op_f32(-1f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1124f))), _wgslsmith_f_op_f32(1f + func_2().a.x)), var_0);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1851f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d)), -180f);
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(min(_wgslsmith_sub_u32(0u, u_input.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(5153u, 12560u), u_input.a.zw)), 0u), vec2<u32>(~min(var_1.b.x, 21683u) ^ (_wgslsmith_add_u32(var_1.b.x, 71074u) ^ countOneBits(27406u)), firstTrailingBit(18412u)));
}

