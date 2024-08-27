struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: vec3<f32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -955f;

var<private> global1: vec3<f32> = vec3<f32>(-462f, 483f, -231f);

var<private> global2: u32 = 20563u;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: f32, arg_1: vec4<bool>, arg_2: f32, arg_3: f32) -> vec3<bool> {
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -610f);
    global2 = 4294967295u;
    var var_0 = _wgslsmith_f_op_f32(max(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-983f, -405f))))))));
    var var_1 = vec3<bool>(false, 4294967295u >= _wgslsmith_mod_u32(u_input.a.x, 1u), !arg_1.x);
    var_1 = !(!select(select(!vec3<bool>(var_1.x, true, var_1.x), !arg_1.yyw, !arg_1.zyx), !vec3<bool>(true, var_1.x, true), false));
    return select(select(!(!vec3<bool>(var_1.x, true, false)), select(vec3<bool>(true, true, true), arg_1.xzw, !arg_1.zwz), select(!select(arg_1.wxx, arg_1.yyy, vec3<bool>(var_1.x, arg_1.x, false)), vec3<bool>(true, true, true), var_1.x)), !vec3<bool>(any(arg_1), true | var_1.x, true & (u_input.a.x >= 10767u)), vec3<bool>(true, arg_1.x || all(vec4<bool>(var_1.x, false, arg_1.x, var_1.x)), arg_1.x));
}

fn func_3() -> u32 {
    let var_0 = Struct_3(abs(u_input.d));
    global2 = ~15561u;
    let var_1 = vec3<bool>(false, true, true);
    global0 = global1.x;
    global0 = 1097f;
    return _wgslsmith_clamp_u32(reverseBits(_wgslsmith_clamp_u32(abs(u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 4294967295u), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 44137u)), u_input.a.x) << (u_input.a.x % 32u)), abs(select(2318u, 21060u, true)) << (1u % 32u), ~u_input.a.x);
}

fn func_4(arg_0: vec2<i32>, arg_1: u32, arg_2: vec2<i32>, arg_3: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(global1.x)), _wgslsmith_div_f32(-665f, global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * -148f))), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(max(-195f, _wgslsmith_f_op_f32(512f + -590f))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.x)) * global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global1.x, -1052f))))));
    let var_1 = _wgslsmith_f_op_f32(floor(186f));
    global1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -795f, var_1)))))));
    var_0 = vec3<f32>(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(f32(-1f) * -867f)))))), -1146f, _wgslsmith_f_op_f32(max(var_0.x, -435f)));
    var var_2 = Struct_2(~(~(u_input.a | vec2<u32>(1u, 51632u))) >> (select(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, 0u), u_input.a), abs(max(u_input.a, vec2<u32>(arg_1, 0u))), _wgslsmith_div_f32(-131f, var_0.x) <= -921f) % vec2<u32>(32u)), vec4<bool>(arg_3.a, true, all(select(select(vec2<bool>(false, arg_3.a), vec2<bool>(false, arg_3.a), arg_3.a), func_1(-316f, vec4<bool>(arg_3.a, true, true, arg_3.a), var_1, var_1).zx, !vec2<bool>(arg_3.a, true))), _wgslsmith_dot_vec4_i32(vec4<i32>(100981i, arg_0.x, 8270i, -1i) & vec4<i32>(arg_0.x, -75595i, arg_3.b, arg_0.x), abs(vec4<i32>(2147483647i, arg_0.x, arg_0.x, 1i))) > 71328i), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_0.x))), _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(abs(var_0.x)), !arg_3.a))), var_0.x));
    return _wgslsmith_f_op_f32(var_2.c.x - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(607f, -237f, false)), -1700f, arg_3.a)))))));
}

fn func_2(arg_0: u32, arg_1: i32) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_4(vec2<i32>(-7404i, -1i), func_3(), u_input.c.yy, Struct_1(true, arg_1))), -1645f, false))));
    var var_0 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(func_3(), 0u << (arg_0 % 32u), arg_0), vec3<u32>(123571u, u_input.a.x, ~(~arg_0)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(sign(-455f))));
    var var_1 = Struct_3(countOneBits(i32(-1i) * -3519i));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.x, -564f, global1.x))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, -737f, global1.x), vec3<f32>(global1.x, 631f, 146f), true))), vec3<f32>(global1.x, 134f, global1.x), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true)))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(global1.x * 1297f), _wgslsmith_div_f32(1127f, 1549f), _wgslsmith_f_op_f32(-global1.x)), vec3<f32>(global1.x, global1.x, -332f))))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.x, 1000f, global1.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, -809f) - vec3<f32>(174f, global1.x, global1.x)))))));
    return Struct_1(func_1(-1732f, !select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(false, true, true, true)), 1525f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_2.x)) * _wgslsmith_f_op_f32(trunc(global1.x)))))).x, -18438i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(271f, _wgslsmith_f_op_f32(sign(-493f))), _wgslsmith_f_op_f32(f32(-1f) * -105f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1502f + global1.x))))), vec3<f32>(-592f, global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.x, 276f))))), any(func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x - -1643f), _wgslsmith_f_op_f32(1057f - global1.x)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)), -279f, global1.x))));
    let var_0 = ~(~u_input.a.x);
    var var_1 = ~_wgslsmith_dot_vec4_u32(~abs(vec4<u32>(39821u, u_input.a.x, 25602u, u_input.a.x)) & vec4<u32>(firstLeadingBit(9392u), ~0u, _wgslsmith_clamp_u32(19420u, u_input.a.x, 0u), 0u), _wgslsmith_mult_vec4_u32(vec4<u32>(max(1u, var_0), u_input.a.x, 4294967295u, ~1u), ~select(vec4<u32>(47526u, u_input.a.x, u_input.a.x, 4294967295u), vec4<u32>(0u, u_input.a.x, var_0, 4294967295u), vec4<bool>(false, false, true, false))));
    let var_2 = vec2<bool>(!any(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))), !(!(~u_input.a.x > ~var_0)));
    var var_3 = var_0;
    var var_4 = func_2(u_input.a.x, abs(-1i));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec2_i32(select(u_input.c.xy, vec2<i32>(0i, u_input.d), vec2<bool>(false, var_2.x)), ~vec2<i32>(var_4.b, 0i), vec2<i32>(-57192i, -10126i)) & vec2<i32>(select(u_input.d, ~u_input.d, false), max(i32(-1i) * -35602i, 0i)), -1i, vec2<u32>(_wgslsmith_mod_u32(abs(~var_0), var_0), _wgslsmith_add_u32(firstLeadingBit(u_input.a.x), ~_wgslsmith_div_u32(var_0, 0u))));
}

