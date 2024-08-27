struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(-571f, -1846f), 1u, vec4<f32>(-1000f, 2309f, 886f, -484f));

var<private> global1: f32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: i32) -> i32 {
    var var_0 = Struct_2(u_input.b.x & -15124i);
    var var_1 = -(~(var_0.a >> (_wgslsmith_clamp_u32(global0.b, 1u, global0.b) % 32u)) | 0i);
    var_0 = Struct_2(arg_0);
    let var_2 = -1595f;
    let var_3 = u_input.c.xw;
    return -(max(var_3.x, 0i) << (~(~global0.b) % 32u)) ^ -_wgslsmith_div_i32(_wgslsmith_add_i32(_wgslsmith_div_i32(0i, var_3.x), max(u_input.c.x, var_0.a)), min(u_input.b.x >> (1u % 32u), u_input.b.x));
}

fn func_1(arg_0: vec3<bool>) -> bool {
    let var_0 = Struct_2(func_2(-91545i));
    return arg_0.x;
}

fn func_3(arg_0: vec4<bool>, arg_1: i32, arg_2: bool, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = Struct_2(2147483647i);
    var var_1 = _wgslsmith_f_op_f32(ceil(-818f));
    var var_2 = true;
    let var_3 = select(select(!select(vec3<bool>(arg_2, arg_2, false), select(vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(arg_0.x, true, arg_2), true), arg_3.x), select(select(vec3<bool>(true, false, true), !arg_0.zzx, all(arg_0)), !arg_0.zxw, all(arg_0.yx)), true), select(!(!(!vec3<bool>(arg_3.x, arg_3.x, true))), arg_0.zzy, !vec3<bool>(arg_0.x, false, arg_3.x && true)), arg_0.ywx);
    var var_4 = vec4<bool>(!(!var_3.x), false, !(1u >= abs(u_input.a.x)), !(all(vec4<bool>(true, true, true, true)) || !(global0.b == u_input.a.x)));
    return Struct_1(global0.c.xz, 4294967295u, vec4<f32>(_wgslsmith_f_op_f32(277f * global0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.x * _wgslsmith_f_op_f32(f32(-1f) * -744f))), -1631f, _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(2553f * global0.c.x), 1000f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-global0.c.yyx);
    let var_1 = func_3(vec4<bool>((-2147483647i ^ ~u_input.c.x) >= ~(-44916i), false, any(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false))), any(vec2<bool>(u_input.a.x < 24142u, true))), max(u_input.b.x, ~firstLeadingBit(u_input.b.x ^ u_input.c.x)), !(all(vec4<bool>(true, true, true, false)) & func_1(vec3<bool>(true, true, true))) | false, !(!select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true), true)));
    let var_2 = func_3(!vec4<bool>(true, any(vec2<bool>(true, true)), true, !all(vec2<bool>(true, true))), ~u_input.c.x, u_input.a.x <= _wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.a.x, ~0u), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, var_1.b, u_input.a.x, 1u), vec4<u32>(global0.b, 5207u, var_1.b, 4294967295u)), ~vec4<u32>(u_input.a.x, 27110u, 1u, u_input.a.x))), vec2<bool>(all(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false))), true));
    var var_3 = Struct_2(46598i);
    var_3 = Struct_2(firstTrailingBit(_wgslsmith_dot_vec3_i32(u_input.c.yzz, vec3<i32>(54619i, 4190i, u_input.b.x))) << (var_2.b % 32u));
    global1 = -956f;
    var_3 = Struct_2(-2486i);
    var var_4 = Struct_1(var_2.c.yy, 4294967295u, _wgslsmith_f_op_vec4_f32(var_1.c + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2131f * -892f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(935f)), 1000f)), 887f, _wgslsmith_f_op_f32(min(-153f, _wgslsmith_f_op_f32(max(var_1.c.x, global0.c.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(-u_input.c.x, ~_wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.b.x, -1i), ~u_input.c.x)), _wgslsmith_f_op_f32(2078f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2.c.x + -997f), var_2.a.x))))), _wgslsmith_f_op_f32(exp2(1f)), ~(vec4<u32>(26919u, var_1.b, 31346u, global0.b) | vec4<u32>(var_2.b, var_1.b, 0u, ~20673u)));
}

