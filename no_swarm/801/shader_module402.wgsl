struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 218f;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: i32) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-309f * _wgslsmith_f_op_f32(-1280f - -1285f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(600f, -974f, arg_1)) + _wgslsmith_f_op_f32(abs(-411f))))));
}

fn func_3() -> vec2<f32> {
    var var_0 = Struct_1(firstTrailingBit(vec2<u32>(1u, u_input.a.x | ~52596u)));
    let var_1 = var_0.a.x;
    var var_2 = vec4<bool>(false, 2147483647i >= _wgslsmith_add_i32(-2147483647i, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(-26730i, -35399i), 0i, ~52121i)), all(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), true)))), true);
    let var_3 = _wgslsmith_clamp_u32(var_0.a.x, ~(~4294967295u), min(u_input.a.x, 55543u));
    var_2 = !(!select(vec4<bool>(var_2.x, var_2.x, any(vec4<bool>(var_2.x, false, var_2.x, false)), var_2.x || var_2.x), vec4<bool>(true, true, true, true), !(!vec4<bool>(true, var_2.x, false, true))));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(403f * -1000f) - 1592f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1289f + _wgslsmith_f_op_f32(f32(-1f) * -648f)) - 821f)));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(2638u, false, 0i))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-875f, 507f), _wgslsmith_f_op_vec2_f32(func_3()), true))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1109f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-398f, -1083f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-791f, 1108f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1087f * -1000f), -722f))));
    let var_1 = Struct_1(arg_0.a);
    let var_2 = Struct_1(vec2<u32>(abs(0u) ^ arg_0.a.x, u_input.a.x));
    return Struct_1(var_1.a);
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> vec4<i32> {
    let var_0 = select(!(!vec3<bool>(true, true, 18482u <= arg_0.a.x)), vec3<bool>(true, true, select(true, arg_1 == _wgslsmith_clamp_u32(1u, u_input.a.x, u_input.a.x), any(vec4<bool>(true, true, true, true)))), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), true));
    global0 = _wgslsmith_f_op_f32(round(583f));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(976f, -104f, -685f)))))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -915f) - _wgslsmith_f_op_f32(max(-799f, _wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(-var_1.x), var_0.x))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.x, 436f, -198f, -621f)));
    return vec4<i32>(-1i) * -((-vec4<i32>(-16029i, 2147483647i, -1i, 44820i) << (_wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.a.x, arg_0.a.x, 0u), vec4<u32>(arg_0.a.x, arg_0.a.x, 47593u, 1u)) % vec4<u32>(32u))) & ~vec4<i32>(-2147483647i, -50823i, 27294i, -2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1f)) + _wgslsmith_f_op_f32(f32(-1f) * -905f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2585f + 668f)))));
    global0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-505f + 1960f) + -1869f)))));
    let var_0 = -func_4(func_1(Struct_1(vec2<u32>(0u, 4294967295u))), u_input.a.x);
    let var_1 = _wgslsmith_sub_vec4_i32(var_0, vec4<i32>(-18501i, -16923i, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(var_0.yyz, select(var_0.zxz, var_0.xyw, false)), 1i), _wgslsmith_mod_i32(var_0.x, -2147483647i) ^ reverseBits(var_0.x)));
    let var_2 = func_1(func_1(Struct_1(u_input.a.zy)));
    global0 = -945f;
    let x = u_input.a;
    s_output = StorageBuffer(~4363u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1418f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2160f)))))), _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, 2147483647i, var_1.x, 2147483647i), var_1), vec4<i32>(var_1.x | 2147483647i, abs(var_0.x), countOneBits(-12538i), ~10420i)), -vec4<i32>(var_1.x, _wgslsmith_div_i32(-2147483647i, 11687i), -1i, var_0.x)));
}

