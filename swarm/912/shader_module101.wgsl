struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-2031f, -1752f, 658f);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<bool>) -> f32 {
    var var_0 = ~9547u;
    var var_1 = Struct_2(arg_0.x, vec2<f32>(1321f, 593f), all(arg_0.xy), _wgslsmith_f_op_f32(-1000f * global0.x));
    var_1 = Struct_2(!(!all(vec3<bool>(true, true, true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1244f * global0.x))), _wgslsmith_div_f32(-948f, _wgslsmith_div_f32(1773f, 674f)))), var_1.a, _wgslsmith_f_op_f32(max(446f, global0.x)));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, var_1.d, var_1.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(955f, -417f, 387f)))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 1065f, global0.x) - vec3<f32>(-536f, global0.x, var_1.b.x)), vec3<f32>(503f, -939f, global0.x), true))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.d, -596f, 312f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d, -649f, 159f)))))));
    var_0 = u_input.b;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) * _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(471f, -1892f), _wgslsmith_f_op_f32(-var_1.d)))), true)));
}

fn func_2(arg_0: i32) -> Struct_2 {
    global0 = vec3<f32>(global0.x, -516f, _wgslsmith_f_op_f32(func_3(vec3<bool>(true, true, true))));
    global0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(trunc(-1081f)), global0.x, _wgslsmith_f_op_f32(trunc(global0.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -926f), _wgslsmith_f_op_f32(select(403f, 545f, true)), global0.x) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-458f, -695f, global0.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-947f, -1000f, global0.x)) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.x, global0.x, global0.x)))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), all(vec2<bool>(true, true)))))), true));
    global0 = vec3<f32>(2019f, _wgslsmith_f_op_f32(-1000f * 874f), _wgslsmith_f_op_f32(abs(global0.x)));
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1329f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + -2979f)), 1490f) + _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(global0.x, -385f)))), global0.x, -2758f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -863f, global0.x)) + vec3<f32>(383f, _wgslsmith_f_op_f32(max(global0.x, -484f)), 2103f))));
    var var_0 = _wgslsmith_f_op_f32(func_3(vec3<bool>(_wgslsmith_f_op_f32(select(1541f, _wgslsmith_f_op_f32(global0.x - global0.x), all(vec3<bool>(false, false, false)))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.x, 247f))), !(arg_0 == _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, arg_0, arg_0), u_input.a.ywx)), 1u < (_wgslsmith_mult_u32(15819u, 0u) << ((u_input.b ^ u_input.b) % 32u)))));
    return Struct_2(true, _wgslsmith_f_op_vec2_f32(-global0.xy), any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(step(-748f, _wgslsmith_f_op_f32(func_3(select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false), select(true, false, false)))))));
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> vec2<i32> {
    let var_0 = Struct_2(all(vec2<bool>(!any(vec4<bool>(true, arg_0.a, arg_0.a, arg_0.a)), all(vec2<bool>(arg_0.a, arg_0.c)))), arg_0.b, arg_0.c, 2362f);
    let var_1 = ~(~vec3<i32>(u_input.a.x, -u_input.a.x, u_input.a.x));
    global0 = _wgslsmith_div_vec3_f32(vec3<f32>(532f, _wgslsmith_f_op_f32(var_0.d * _wgslsmith_f_op_f32(arg_0.b.x * arg_0.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(select(vec3<bool>(arg_0.a, false, var_0.a), vec3<bool>(true, true, var_0.a), true))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1273f, -2156f, -216f), vec3<f32>(arg_0.d, arg_0.d, 502f), vec3<bool>(arg_0.c, arg_0.c, true))))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.d, global0.x, var_0.d), vec3<f32>(global0.x, arg_0.d, var_0.d))))))));
    var var_2 = vec4<u32>(4294967295u, 62799u, ~(~(~u_input.b)) | _wgslsmith_dot_vec4_u32(min(~vec4<u32>(82594u, 0u, 113199u, u_input.b), vec4<u32>(1u, 4294967295u, arg_1, 1u)), vec4<u32>(68809u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 1u, u_input.b), vec3<u32>(0u, 18383u, 0u)), select(16380u, arg_1, false), abs(arg_1))), ~(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, arg_1, arg_1, 4294967295u), vec4<u32>(arg_1, u_input.b, arg_1, 1u)))));
    let var_3 = ~_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(max(1i, var_1.x), var_1.x, ~17436i, var_1.x), u_input.a), vec4<i32>(-(~4822i), u_input.a.x, ~var_1.x, ~u_input.a.x));
    return u_input.a.yy;
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> u32 {
    var var_0 = !(!(!vec4<bool>(arg_1, arg_1, arg_1 | false, !arg_1)));
    let var_1 = _wgslsmith_clamp_vec2_i32(u_input.a.zy, func_4(func_2(-35065i), _wgslsmith_div_u32(abs(1u), u_input.b)), vec2<i32>(u_input.a.x, -2147483647i));
    let var_2 = func_4(func_2(-2147483647i), min(_wgslsmith_mult_u32(29678u, 0u), u_input.b)).x;
    var var_3 = vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(max(vec3<i32>(31649i, -30638i, var_2), vec3<i32>(var_1.x, 11718i, var_2)), u_input.a.ywx), firstLeadingBit(~u_input.a.yzx)), vec3<i32>(var_2, 2147483647i, min(max(var_1.x, 30815i), ~var_2))), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(u_input.a.x, 0i), firstTrailingBit(u_input.a.xw)), -select(var_2 ^ 17548i, var_1.x, !arg_0.a.x)), 42427i);
    var var_4 = func_2(2147483647i);
    return _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, max(_wgslsmith_mod_u32(1u, u_input.b), u_input.b), u_input.b), _wgslsmith_clamp_vec3_u32(max(~(~vec3<u32>(u_input.b, u_input.b, 44091u)), _wgslsmith_mod_vec3_u32(vec3<u32>(34739u, 0u, u_input.b) ^ vec3<u32>(u_input.b, u_input.b, u_input.b), min(vec3<u32>(4294967295u, u_input.b, 52717u), vec3<u32>(u_input.b, 4837u, u_input.b)))), vec3<u32>(_wgslsmith_div_u32(u_input.b >> (3655u % 32u), 0u), abs(abs(u_input.b)), _wgslsmith_div_u32(u_input.b, u_input.b) << (~100794u % 32u)), ~(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 11815u, 41836u), vec3<u32>(1u, u_input.b, u_input.b)) >> (~vec3<u32>(u_input.b, u_input.b, u_input.b) % vec3<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 606f, -888f))))));
    let var_0 = ~_wgslsmith_mod_u32(_wgslsmith_mult_u32(~func_1(Struct_1(vec2<bool>(true, false)), false), ~_wgslsmith_div_u32(u_input.b, u_input.b)), 3522u);
    var var_1 = Struct_1(select(select(select(select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(true, true), false), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), true), vec2<bool>(all(vec4<bool>(false, true, false, false)) & true, true), false | any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false))));
    let var_2 = Struct_2(!all(!vec4<bool>(false, var_1.a.x, var_1.a.x, false)) & !any(vec4<bool>(var_1.a.x, false, var_1.a.x, false)), global0.zx, true, _wgslsmith_f_op_f32(-1f));
    var var_3 = var_2;
    let var_4 = Struct_1(vec2<bool>((~var_0 == 4294967295u) | !(!var_1.a.x), true));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b, vec2<f32>(var_3.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -512f))))), -vec3<i32>(-46005i, u_input.a.x, max(-u_input.a.x, u_input.a.x << (u_input.b % 32u))), ~(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 1u, 0u), min(vec4<u32>(var_0, 1u, 4294967295u, u_input.b), vec4<u32>(var_0, 4294967295u, u_input.b, 28887u))) << (87407u % 32u)), 4294967295u);
}

