struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_1(arg_0: f32) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-183f + arg_0) - global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(trunc(global0.x)))), global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.x, global0.x)) - _wgslsmith_f_op_f32(142f + global0.x)) * _wgslsmith_f_op_f32(f32(-1f) * -736f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(339f, arg_0, global0.x, -733f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-333f, -1363f, global0.x, 1021f)))), vec4<f32>(_wgslsmith_f_op_f32(-arg_0), global0.x, _wgslsmith_f_op_f32(f32(-1f) * -437f), _wgslsmith_f_op_f32(step(global0.x, 545f))), false))));
}

fn func_2() -> vec2<u32> {
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-275f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-880f, -1872f)), global0.x))), _wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(ceil(global0.x))))).x), _wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -937f)))))).x, -2514f);
    var var_0 = _wgslsmith_f_op_f32(global0.x + global0.x);
    var var_1 = ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, 34703u), vec4<u32>(u_input.a, 1u, u_input.a, 5881u)) | ~(~(~vec4<u32>(1u, 4695u, u_input.a, u_input.a))));
    let var_2 = 2147483647i;
    let var_3 = -257f;
    return var_1.xz;
}

fn func_3(arg_0: vec3<bool>) -> f32 {
    var var_0 = ~_wgslsmith_div_u32(~u_input.a, 1u) >> (1u % 32u);
    let var_1 = _wgslsmith_mod_vec3_u32(vec3<u32>(min(select(u_input.a, _wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a), all(arg_0.xz)), ~(~u_input.a)), ~(~_wgslsmith_mod_u32(u_input.a, u_input.a)), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(min(vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a), vec4<u32>(u_input.a, 0u, 36795u, u_input.a)), vec4<u32>(1u, u_input.a, u_input.a, 0u)), select(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 4177u, u_input.a, 17248u), vec4<u32>(11682u, 1u, u_input.a, u_input.a)), vec4<u32>(u_input.a, 97881u, u_input.a, 1u), any(vec3<bool>(true, true, arg_0.x))))), ~vec3<u32>(_wgslsmith_mod_u32(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(20296u, 4294967295u, 39640u, u_input.a), vec4<u32>(4294967295u, u_input.a, u_input.a, 29044u))), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, 4294967295u, u_input.a) >> (vec4<u32>(40794u, 22990u, u_input.a, 7999u) % vec4<u32>(32u)), vec4<u32>(u_input.a, u_input.a, 19541u, 18592u)), u_input.a));
    var var_2 = all(vec4<bool>(arg_0.x, arg_0.x, any(select(vec4<bool>(false, arg_0.x, true, arg_0.x), vec4<bool>(arg_0.x, true, true, arg_0.x), true)) == true, true));
    var var_3 = Struct_2(Struct_1(~1u, _wgslsmith_add_vec3_u32(min(~var_1, countOneBits(var_1)), ~_wgslsmith_div_vec3_u32(var_1, vec3<u32>(5738u, 0u, 43919u))), ~vec2<i32>(~(-46508i), 1i)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0.x - -966f), _wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_f_op_f32(-1015f + global0.x), 799f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(193f + global0.x), _wgslsmith_f_op_f32(select(640f, -362f, false)), _wgslsmith_f_op_f32(step(-396f, global0.x)), _wgslsmith_f_op_f32(-global0.x)) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, -793f, global0.x, -118f), vec4<f32>(-352f, global0.x, global0.x, global0.x), false))))))), Struct_1(firstLeadingBit(u_input.a), ~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, u_input.a, u_input.a, 4294967295u), vec4<u32>(12127u, u_input.a, 0u, var_1.x)), select(var_1.x, 96301u, false), var_1.x), vec2<i32>(-1i) * -vec2<i32>(-1i, -10609i)));
    var var_4 = var_3.c;
    return var_3.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(func_1(-963f));
    let var_0 = ~func_2();
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)))), global0.x, -539f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x)))));
    let var_1 = -595f;
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-734f, 1861f, global0.x, -1169f), vec4<f32>(-300f, global0.x, 1518f, 1753f), false))))))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1, -1786f)), 1239f)), 498f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.x))), -1154f)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - -147f) * 228f), global0.x), 424f));
    let var_2 = ~u_input.a;
    var var_3 = select(select(vec4<bool>(false, true && all(vec2<bool>(false, false)), true, _wgslsmith_div_u32(76809u, u_input.a) != var_0.x), !select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), true), vec4<bool>(true, false, false, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec2<bool>(true, false)))), select(vec4<bool>(true, true, true, true), vec4<bool>(!all(vec2<bool>(false, false)), any(vec2<bool>(true, true)), true, !all(vec3<bool>(false, false, true))), false), any(select(vec2<bool>(true, false), vec2<bool>(true, true), true)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.a, _wgslsmith_mod_u32(73780u, u_input.a), ~28364u), _wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(var_2, u_input.a, 4294967295u, 2572u)), ~vec4<u32>(u_input.a, 28550u, var_2, 0u))), select(~vec4<u32>(var_2, u_input.a, 0u, var_2) | _wgslsmith_add_vec4_u32(abs(vec4<u32>(var_0.x, var_0.x, 2266u, var_0.x)), countOneBits(vec4<u32>(12712u, u_input.a, 8627u, var_2))), vec4<u32>(~9239u >> (_wgslsmith_add_u32(var_2, 1u) % 32u), var_2, 0u, ~103699u), var_3.x), 28332u, 1u, abs(vec4<u32>(_wgslsmith_div_u32(77417u, max(u_input.a, 1u)), ~var_0.x, ~_wgslsmith_div_u32(var_0.x, var_2), _wgslsmith_mod_u32(0u << (var_0.x % 32u), 1u))));
}

