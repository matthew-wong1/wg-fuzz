struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<bool>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13>;

var<private> global1: vec4<i32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: u32) -> vec4<u32> {
    var var_0 = global0[_wgslsmith_index_u32(u_input.a, 13u)];
    var var_1 = global0[_wgslsmith_index_u32(var_0.d, 13u)];
    global0 = array<Struct_1, 13>();
    let var_2 = (firstTrailingBit(-vec2<i32>(1i, global1.x)) | vec2<i32>(_wgslsmith_mod_i32(-9728i, global1.x), -1i)) & global1.yx;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b, -1000f, 1913f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, 1141f, var_0.b) - vec3<f32>(1576f, -1000f, -789f))) - vec3<f32>(_wgslsmith_f_op_f32(arg_1.b - 2082f), _wgslsmith_f_op_f32(abs(875f)), -610f))));
    return reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(~8680u, arg_1.d, _wgslsmith_sub_u32(~var_0.d, ~u_input.b.x), ~_wgslsmith_mod_u32(var_0.d, arg_1.d)), min(~_wgslsmith_div_vec4_u32(vec4<u32>(var_1.d, var_0.d, u_input.a, 0u), vec4<u32>(u_input.b.x, var_1.d, var_1.d, var_0.d)), _wgslsmith_sub_vec4_u32(vec4<u32>(53432u, 1u, 43504u, var_1.d), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.d, 1u, var_1.d, u_input.a), vec4<u32>(var_0.d, arg_3, 61611u, var_0.d), vec4<u32>(89144u, var_0.d, 0u, 21093u))))));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1) -> vec2<bool> {
    global0 = array<Struct_1, 13>();
    var var_0 = global0[_wgslsmith_index_u32(arg_1.d, 13u)];
    var var_1 = ~(~(~(~func_3(vec2<f32>(-620f, arg_2.b), Struct_1(1898f, arg_2.b, vec2<bool>(false, var_0.c.x), arg_2.d), vec3<bool>(true, true, var_0.c.x), 1u))));
    global1 = ~(-(~vec4<i32>(~global1.x, global1.x, -34293i, 1i)));
    var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1737f, var_0.a)), _wgslsmith_f_op_f32(floor(arg_1.a))), _wgslsmith_f_op_f32(f32(-1f) * -215f), vec2<bool>(arg_2.c.x, !all(var_0.c)), ~select(~0u, arg_1.d, arg_2.a < -1486f));
    return !(!(!select(vec2<bool>(true, true), select(var_0.c, var_0.c, vec2<bool>(true, false)), arg_2.c.x)));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<i32>, arg_2: i32) -> Struct_1 {
    var var_0 = 6127u;
    let var_1 = false;
    var_0 = 1u;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.x)));
    let var_3 = Struct_1(-1880f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(536f)) + arg_0.x), !func_2(_wgslsmith_mod_vec4_u32(~vec4<u32>(1u, u_input.a, 17605u, u_input.c), ~vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.c)), Struct_1(-1000f, _wgslsmith_f_op_f32(floor(-579f)), select(vec2<bool>(var_1, false), vec2<bool>(var_1, var_1), vec2<bool>(false, false)), ~74316u), Struct_1(293f, 128f, select(vec2<bool>(true, var_1), vec2<bool>(false, true), vec2<bool>(true, false)), 19130u ^ u_input.a)), 20551u);
    return Struct_1(-244f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_3.b - var_3.b))), 231f), func_2(~vec4<u32>(1u, 52304u, 1u, 1u << (var_3.d % 32u)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a + -1708f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_3.a, var_3.a)) * _wgslsmith_f_op_f32(floor(var_3.a))), var_3.c, var_3.d), global0[_wgslsmith_index_u32(~u_input.b.x, 13u)]), firstTrailingBit(~u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 13>();
    let var_0 = 1u;
    global0 = array<Struct_1, 13>();
    var var_1 = global0[_wgslsmith_index_u32(31065u, 13u)];
    let var_2 = func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -115f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1650f - -159f) - _wgslsmith_f_op_f32(select(271f, -476f, true))), _wgslsmith_f_op_f32(step(-2118f, _wgslsmith_f_op_f32(1230f + var_1.a))))), -(~vec2<i32>(-24641i, -62509i)), global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_i32(~firstLeadingBit(~vec2<i32>(-2147483647i, global1.x)), global1.yw));
}

