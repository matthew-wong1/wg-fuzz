struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_1) -> f32 {
    global0 = array<Struct_1, 13>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1968f, _wgslsmith_f_op_f32(min(533f, -432f))))));
    var var_1 = 848f;
    var_1 = var_0.a.x;
    var var_2 = Struct_1(all(!(!vec2<bool>(true, arg_3.a))) & !any(vec3<bool>(arg_1.a, false, arg_1.a)), vec3<i32>(arg_1.c, max(-(u_input.a >> (31648u % 32u)), _wgslsmith_clamp_i32(35658i, _wgslsmith_clamp_i32(22892i, arg_1.c, 6511i), arg_2.x)), ~(-firstLeadingBit(arg_1.c))), 1i);
    return var_0.a.x;
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_clamp_i32(-_wgslsmith_add_i32(~u_input.a, u_input.a), 5251i, ~5065i) & _wgslsmith_sub_i32(abs(u_input.a), u_input.a);
    global0 = array<Struct_1, 13>();
    global0 = array<Struct_1, 13>();
    let var_1 = ~(~vec3<u32>(u_input.c.x, ~28547u, max(61857u, u_input.b.x)));
    var var_2 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -325f) + _wgslsmith_f_op_f32(func_3(Struct_1(true, vec3<i32>(u_input.a, 0i, 1i), 1i), global0[_wgslsmith_index_u32(0u, 13u)], ~vec3<i32>(27719i, 10714i, -9030i), Struct_1(false, vec3<i32>(u_input.a, 0i, var_0), var_0)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(var_1.x, 13u)], global0[_wgslsmith_index_u32(~u_input.c.x, 13u)], abs(vec3<i32>(u_input.a, -20599i, u_input.a)), global0[_wgslsmith_index_u32(u_input.b.x, 13u)]))))));
    return Struct_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-2515f, var_2.a.x))), _wgslsmith_f_op_vec2_f32(-var_2.a))));
}

fn func_1() -> vec4<i32> {
    global0 = array<Struct_1, 13>();
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(2839f, -406f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1471f, -597f)))))));
    var var_1 = vec2<bool>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(254f, 141f) * _wgslsmith_f_op_f32(860f * var_0.a.x)))) > var_0.a.x, true);
    var_1 = !(!(!vec2<bool>(true, select(var_1.x, false, false))));
    let var_2 = func_2();
    return -abs(vec4<i32>(u_input.a, ~(-11895i), i32(-1i) * -1i, ~47715i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1() << (~select(max(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, 14381u, 4294967295u, u_input.c.x), vec4<u32>(u_input.c.x, u_input.b.x, 1u, 26653u)), min(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 0u), vec4<u32>(u_input.c.x, 94914u, 51009u, u_input.b.x))), ~vec4<u32>(u_input.b.x, 13126u, u_input.b.x, 0u) << (_wgslsmith_div_vec4_u32(vec4<u32>(3780u, 4294967295u, u_input.b.x, u_input.c.x), vec4<u32>(u_input.c.x, 60984u, 33165u, 1263u)) % vec4<u32>(32u)), all(vec3<bool>(true, true, true))) % vec4<u32>(32u));
    var var_1 = vec2<bool>(false, false);
    global0 = array<Struct_1, 13>();
    var var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1568f, 373f, -839f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-794f, 2622f, -1152f) * vec3<f32>(171f, 410f, -884f)), vec3<f32>(-1394f, 1001f, -1396f), var_1.x))))));
    let var_3 = _wgslsmith_f_op_f32(ceil(458f));
    var var_4 = func_2();
    let var_5 = func_2();
    let var_6 = func_2();
    var_1 = !vec2<bool>(true, any(!select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(false, false, var_1.x), var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(918f, 4294967295u, ~(~vec3<u32>(u_input.c.x, 43300u, _wgslsmith_dot_vec3_u32(vec3<u32>(17436u, 44114u, 4294967295u), vec3<u32>(u_input.b.x, u_input.c.x, 4294967295u)))));
}

