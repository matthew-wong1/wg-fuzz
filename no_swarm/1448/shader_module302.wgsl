struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec4<f32>,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: f32) -> vec3<bool> {
    return !vec3<bool>(!select(any(vec4<bool>(false, true, true, true)), true, -25975i != u_input.d.x), false, select(true, 55419u != arg_1.x, false));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_5) -> vec3<bool> {
    var var_0 = arg_1.a;
    var var_1 = _wgslsmith_f_op_f32(min(arg_1.e.a.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.e.a.a.x), arg_1.d.x, _wgslsmith_mult_u32(~u_input.c, abs(arg_0.x)) != arg_1.c.x))));
    return select(!select(!select(vec3<bool>(arg_1.a, arg_1.a, true), vec3<bool>(true, arg_1.a, true), vec3<bool>(true, arg_1.a, true)), select(select(vec3<bool>(arg_1.a, arg_1.a, arg_1.a), vec3<bool>(false, false, arg_1.a), vec3<bool>(arg_1.a, arg_1.a, arg_1.a)), !vec3<bool>(true, true, arg_1.a), !vec3<bool>(arg_1.a, arg_1.a, arg_1.a)), arg_1.a), select(vec3<bool>(true, select(false, arg_1.a, arg_1.a), false), func_3(Struct_1(_wgslsmith_div_f32(-1000f, -913f), arg_1.d.x), _wgslsmith_clamp_vec3_u32(u_input.e, ~vec3<u32>(4294967295u, u_input.b.x, u_input.c), arg_1.c ^ vec3<u32>(arg_1.b.x, 0u, arg_0.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.d.x), _wgslsmith_f_op_f32(arg_1.e.a.a.x + 1000f)))), vec3<bool>(arg_1.a, arg_1.a, u_input.d.x != u_input.d.x)), select(arg_1.a, !all(func_3(Struct_1(451f, arg_1.d.x), u_input.e, 691f)), true | select(all(vec2<bool>(true, false)), true, false)));
}

fn func_4(arg_0: vec3<bool>) -> Struct_2 {
    let var_0 = -max(vec3<i32>(-_wgslsmith_mod_i32(u_input.d.x, u_input.d.x), _wgslsmith_dot_vec2_i32(u_input.a, firstTrailingBit(u_input.d)), -11477i), vec3<i32>(u_input.a.x >> (3944u % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(-25246i, u_input.d.x, -13370i) | vec3<i32>(2147483647i, u_input.d.x, -2147483647i), vec3<i32>(46695i, u_input.d.x, u_input.a.x)), 1i));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, -1000f), vec2<f32>(1000f, -933f)) - vec2<f32>(-640f, -1546f)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-985f, -1483f)))))));
    let var_2 = Struct_4(Struct_2(vec4<f32>(var_1.x, 1222f, -572f, _wgslsmith_f_op_f32(abs(var_1.x)))));
    var var_3 = select(vec4<bool>(true, true && arg_0.x, true, true), select(select(vec4<bool>(arg_0.x, any(vec4<bool>(true, arg_0.x, false, arg_0.x)), false, true), vec4<bool>(true, !arg_0.x, true, any(vec4<bool>(arg_0.x, true, arg_0.x, false))), !all(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x))), !vec4<bool>(true == arg_0.x, false, true, true), !(!(!vec4<bool>(true, false, arg_0.x, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.a.x + var_1.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.a.a.x)))) <= var_1.x);
    var var_4 = 0u;
    return var_2.a;
}

fn func_1() -> Struct_2 {
    return func_4(select(select(!func_2(u_input.e.xz, Struct_5(false, vec3<u32>(u_input.e.x, 30583u, 52527u), u_input.e, vec4<f32>(1197f, -1276f, 1155f, 761f), Struct_4(Struct_2(vec4<f32>(239f, -1020f, 996f, 913f))))), vec3<bool>(true, true, true), func_3(Struct_1(-387f, -387f), u_input.e, _wgslsmith_f_op_f32(-758f - 857f))), vec3<bool>(true, true, true), !vec3<bool>(select(false, false, false), true, func_2(u_input.e.xy, Struct_5(true, u_input.e, u_input.e, vec4<f32>(475f, -2956f, -1667f, -1183f), Struct_4(Struct_2(vec4<f32>(-1503f, 1617f, -963f, -1092f))))).x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -271f) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(377f, 804f)), _wgslsmith_f_op_f32(step(-192f, 1000f)))))), _wgslsmith_f_op_f32(f32(-1f) * -1223f));
    let var_1 = func_1();
    var_0 = Struct_1(-190f, _wgslsmith_f_op_f32(-var_0.a));
    var var_2 = Struct_4(Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1145f, 156f, var_1.a.x, -643f), vec4<f32>(100f, -1009f, var_0.a, var_0.b))), var_1.a)))));
    var var_3 = Struct_4(Struct_2(_wgslsmith_f_op_vec4_f32(select(var_2.a.a, vec4<f32>(190f, 282f, _wgslsmith_f_op_f32(var_2.a.a.x * var_0.a), func_1().a.x), true | any(vec2<bool>(true, false))))));
    let x = u_input.a;
    s_output = StorageBuffer(select(~_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.b.x, 4294967295u), _wgslsmith_mult_u32(u_input.b.x, u_input.b.x)), firstTrailingBit(~(~4543u)), false), firstTrailingBit(~_wgslsmith_mult_u32(abs(69502u), 0u)), firstTrailingBit(u_input.c), _wgslsmith_div_u32(0u, u_input.e.x));
}

