struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: vec4<bool>,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec4<f32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: Struct_3,
    d: u32,
    e: Struct_1,
}

struct Struct_5 {
    a: vec2<f32>,
    b: f32,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 18>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-1859f)))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-2983f, 910f)), _wgslsmith_f_op_f32(f32(-1f) * -418f))))), _wgslsmith_f_op_f32(select(-462f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(562f, 1000f)) * _wgslsmith_f_op_f32(f32(-1f) * -967f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-915f, 1163f)))), any(select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(false, false))))), -1000f);
    let var_1 = 1378f;
    var var_2 = !select(!vec2<bool>(true, all(vec2<bool>(false, false))), vec2<bool>(false, all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true))), vec2<bool>(true, true));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(round(var_0)), abs(abs(vec4<u32>(reverseBits(u_input.c), u_input.e, abs(7323u), ~u_input.d.x))), true);
    var var_4 = var_3.b.x;
    return 52977i;
}

fn func_2(arg_0: vec2<bool>, arg_1: f32, arg_2: bool, arg_3: Struct_1) -> f32 {
    global0 = array<vec4<bool>, 18>();
    global0 = array<vec4<bool>, 18>();
    let var_0 = func_3();
    var var_1 = -114952i;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a.x) * arg_3.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.a.x), -972f), arg_1);
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.a.x + arg_1)))))));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<f32>) -> f32 {
    global0 = array<vec4<bool>, 18>();
    global0 = array<vec4<bool>, 18>();
    let var_0 = vec4<bool>(all(select(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false), vec3<bool>(true, false, all(vec3<bool>(false, false, true))), vec3<bool>(false, all(vec3<bool>(true, true, false)), any(vec3<bool>(true, false, true))))), !(!(!all(global0[_wgslsmith_index_u32(u_input.e, 18u)]))), all(vec2<bool>(any(vec3<bool>(true, false, true)), true)) | false, !(!(u_input.b.x <= u_input.a.x)));
    let var_1 = var_0.x;
    let var_2 = true;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<bool>(true, !(var_1 || false)), arg_1.x, true, Struct_1(vec3<f32>(arg_1.x, 1469f, -1098f), ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d.x, 55813u, u_input.c, u_input.c), vec4<u32>(u_input.e, 13576u, 0u, 4294967295u)), true))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 18>();
    global0 = array<vec4<bool>, 18>();
    var var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(max(u_input.b.x, 1i) << (~0u % 32u), _wgslsmith_add_i32(_wgslsmith_mod_i32(-1i, u_input.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -9190i, -1i, 2147483647i), vec4<i32>(-2147483647i, u_input.b.x, 0i, -1i)))), u_input.b.yx) & u_input.a.x;
    global0 = array<vec4<bool>, 18>();
    global0 = array<vec4<bool>, 18>();
    global0 = array<vec4<bool>, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~abs(~u_input.e)), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(338f, -275f, _wgslsmith_f_op_f32(f32(-1f) * -257f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1944f, -931f) - vec2<f32>(-1000f, -1452f)) + vec2<f32>(1641f, -1430f))))), vec4<i32>(-1i) * -vec4<i32>(27929i & u_input.a.x, u_input.b.x, u_input.a.x, _wgslsmith_mod_i32(-5946i, u_input.a.x)), ~abs(max(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.a.x, 0i), vec4<i32>(0i, u_input.b.x, u_input.b.x, 27065i)), ~vec4<i32>(27273i, u_input.a.x, 2147483647i, -2147483647i))), u_input.d.x);
}

