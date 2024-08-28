struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(48247i, 2147483647i, 3891i, 0i);

var<private> global1: Struct_1;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<i32>) -> f32 {
    global0 = vec4<i32>(u_input.d.x, arg_0.x, _wgslsmith_clamp_i32(~(-2147483647i), -1i, global0.x) ^ _wgslsmith_dot_vec2_i32(-vec2<i32>(global0.x, 1i), -vec2<i32>(11406i, u_input.b)), i32(-1i) * -u_input.d.x);
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a), 702f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-206f, 1534f, true)) + _wgslsmith_f_op_f32(107f * 1875f)), global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -162f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(global1.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a, 248f, -1219f) + vec3<f32>(-1530f, global1.a, global1.b.x)))))));
    global0 = u_input.d;
    let var_1 = u_input.a.x < 0u;
    global1 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -263f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.b.x)) * -1049f), 2593f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.a)))) * global1.b));
    return 869f;
}

fn func_2(arg_0: Struct_1) -> vec2<i32> {
    var var_0 = !vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(386f, -1508f, false))) <= 577f, (_wgslsmith_add_i32(global0.x, u_input.b) << (reverseBits(u_input.a.x) % 32u)) != u_input.c, all(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), true), vec4<bool>(false, true, true, false), false)));
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.b.x, 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec2<i32>(u_input.d.x, global0.x))) + _wgslsmith_f_op_f32(round(1518f))))));
    global1 = Struct_1(-1039f, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(arg_0.b, _wgslsmith_f_op_vec3_f32(abs(arg_0.b)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(global1.b))))), vec3<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-242f + -543f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.a))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), true)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-299f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x))), global1.b.x, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(abs(arg_0.b.x))));
    let var_3 = _wgslsmith_f_op_f32(-arg_0.b.x);
    return vec2<i32>(global0.x, u_input.e);
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_mod_vec2_i32(u_input.d.yx, max(vec2<i32>(48620i, global0.x), _wgslsmith_mod_vec2_i32(-global0.zz, func_2(Struct_1(-1338f, vec3<f32>(global1.b.x, 111f, -1000f)))))), Struct_1(_wgslsmith_f_op_f32(exp2(arg_0)), vec3<f32>(549f, _wgslsmith_f_op_f32(sign(global1.b.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1566f + 114f))))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(min(arg_0, 907f))))));
    let var_1 = u_input.a.x;
    let var_2 = var_0.b;
    let var_3 = !select(vec4<bool>(true, !select(true, false, true), true, !any(vec2<bool>(false, false))), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), false), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), true), true), select(vec4<bool>(false, false, false, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), false), vec4<bool>(true, true, true, true))), vec4<bool>(true, true, true, true));
    let var_4 = -1000f;
    return Struct_1(-547f, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(var_0.c.x, -690f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + var_4)), _wgslsmith_f_op_f32(floor(-583f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.b + var_0.b.b)))));
}

fn func_4(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    global1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(2428f * arg_1)))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2122f, _wgslsmith_f_op_f32(-arg_2.b.x), _wgslsmith_f_op_f32(f32(-1f) * -316f))))));
    global0 = abs(u_input.d);
    var var_0 = vec3<bool>(all(vec4<bool>(true, false, all(vec2<bool>(true, true)), false & all(vec2<bool>(false, true)))), u_input.c > -1i, false);
    let var_1 = abs(vec2<i32>(min(u_input.e, firstTrailingBit(-2147483647i)), global0.x & global0.x));
    var var_2 = select(vec4<bool>(true, !var_0.x, all(vec4<bool>(true, true, true, true)), u_input.b == _wgslsmith_sub_i32(reverseBits(global0.x), global0.x)), select(!vec4<bool>(!var_0.x, !var_0.x, var_0.x, var_0.x), vec4<bool>(any(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x), true)), var_0.x, global0.x > _wgslsmith_clamp_i32(var_1.x, var_1.x, 58864i), any(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))), false), select(!select(!vec4<bool>(var_0.x, false, var_0.x, var_0.x), !vec4<bool>(var_0.x, true, var_0.x, var_0.x), !vec4<bool>(false, true, true, var_0.x)), select(!vec4<bool>(true, var_0.x, true, var_0.x), select(!vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_0.x, true, var_0.x, false), select(vec4<bool>(false, true, var_0.x, false), vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(false, false, var_0.x, true))), select(select(vec4<bool>(false, var_0.x, false, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(false, false, true, var_0.x)), vec4<bool>(true, false, false, true), true)), !(!vec4<bool>(var_0.x, true, false, false))));
    return Struct_1(_wgslsmith_f_op_f32(1508f - _wgslsmith_f_op_f32(-global1.b.x)), vec3<f32>(_wgslsmith_f_op_f32(global1.b.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1185f)))), arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 26919u;
    let var_1 = select(all(vec2<bool>(true, var_0 < var_0)), !(!any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), true))), true);
    global1 = func_4(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, global1.b.x, global1.a, global1.a)))), vec4<f32>(-593f, 1612f, global1.b.x, _wgslsmith_f_op_f32(max(global1.b.x, -1276f))))), global1.a, func_1(_wgslsmith_f_op_f32(-407f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.b.x - global1.b.x))))));
    global1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(635f * global1.a))) - -866f), global1.b);
    var var_2 = -1i;
    global1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.a + -775f)))), _wgslsmith_f_op_vec3_f32(global1.b - global1.b));
    var var_3 = firstLeadingBit(select(reverseBits(~max(u_input.a, vec3<u32>(1u, u_input.a.x, 13065u))), vec3<u32>(0u, u_input.a.x, var_0), any(select(!vec4<bool>(var_1, var_1, true, var_1), select(vec4<bool>(true, false, true, var_1), vec4<bool>(var_1, var_1, false, var_1), false), vec4<bool>(var_1, var_1, var_1, var_1)))));
    var_3 = vec3<u32>(_wgslsmith_div_u32(u_input.a.x, ~u_input.a.x), 0u, u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_0 ^ 76832u, var_3.x, _wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.a.x, 36072u, ~13201u), _wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a.x, var_3.x, 4294967295u), vec3<u32>(var_3.x, var_0, u_input.a.x)))), vec4<i32>(u_input.d.x, -(i32(-1i) * -1i), func_2(Struct_1(_wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-294f, global1.b.x, global1.a))))).x, -2147483647i), ~global0.yzw, ~59695i);
}

