struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
    c: u32,
    d: vec2<bool>,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: f32,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: bool,
    d: Struct_1,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 12> = array<vec3<f32>, 12>(vec3<f32>(-2424f, -904f, -799f), vec3<f32>(-310f, -1238f, 1215f), vec3<f32>(628f, -1380f, 383f), vec3<f32>(-723f, -873f, -1332f), vec3<f32>(156f, -700f, -493f), vec3<f32>(-332f, 1000f, -250f), vec3<f32>(1853f, 847f, 393f), vec3<f32>(1000f, 1000f, -1000f), vec3<f32>(465f, -328f, -747f), vec3<f32>(2237f, -1000f, 1000f), vec3<f32>(1000f, -1217f, -765f), vec3<f32>(1511f, -1000f, 1000f));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_5, arg_2: vec2<bool>, arg_3: f32) -> bool {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(arg_3 - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_3))))));
    global0 = array<vec3<f32>, 12>();
    var var_2 = vec2<u32>(~_wgslsmith_div_u32(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.d.b, u_input.a.x, 32505u, 4294967295u), vec4<u32>(u_input.b.x, 30292u, 7241u, arg_1.d.b))), 4294967295u), arg_1.d.b);
    var var_3 = arg_1.d.b;
    return arg_1.c;
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_3(Struct_2(vec4<i32>(u_input.d.x, _wgslsmith_clamp_i32(u_input.d.x, u_input.d.x, -388i), -29403i, 2208i), !all(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), false)), ~9337u, vec2<bool>(true, true), false), select(select(vec3<bool>(true, true, true), vec3<bool>(true, 31466u <= u_input.b.x, true), true), !(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false)), select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(func_3(vec2<bool>(true, true), Struct_5(vec2<f32>(-249f, 406f), vec2<f32>(-1680f, -1701f), true, Struct_1(-1182f, u_input.b.x, 40886i, 26009i, -398f), vec3<i32>(0i, u_input.d.x, u_input.d.x)), vec2<bool>(true, false), 633f), any(vec4<bool>(false, true, true, false)), true))), -703f);
    var var_1 = Struct_1(var_0.c, _wgslsmith_sub_u32(abs(1u), u_input.c), select(-39584i, var_0.a.a.x, false), 1i, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -665f), 616f) - 2000f));
    var var_2 = var_0.a.a.x;
    let var_3 = Struct_3(var_0.a, var_0.b, 1028f);
    let var_4 = !vec4<bool>(!((33652u << (1u % 32u)) >= var_3.a.c), -34908i > firstTrailingBit(firstLeadingBit(var_1.c)), var_3.b.x, true);
    return var_3;
}

fn func_1(arg_0: f32) -> vec2<bool> {
    let var_0 = func_2();
    global0 = array<vec3<f32>, 12>();
    global0 = array<vec3<f32>, 12>();
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, arg_0)) + vec2<f32>(470f, _wgslsmith_f_op_f32(arg_0 * -1755f)))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c, arg_0) - vec2<f32>(-777f, -121f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) * vec2<f32>(arg_0, var_0.c)), vec2<f32>(-542f, arg_0), var_0.a.e)), true)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0, arg_0), vec2<f32>(_wgslsmith_div_f32(-1009f, var_0.c), _wgslsmith_f_op_f32(-var_0.c)))))));
    global0 = array<vec3<f32>, 12>();
    return func_2().a.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(func_1(-1325f));
    global0 = array<vec3<f32>, 12>();
    let var_1 = Struct_4(-775f);
    let var_2 = Struct_1(280f, countOneBits(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 0u, u_input.a.x), vec4<u32>(0u, u_input.c, u_input.b.x, u_input.c)), vec4<u32>(66364u, 0u, 4294967295u, 24401u) << (vec4<u32>(45279u, u_input.c, 1u, 33662u) % vec4<u32>(32u)))) << (4294967295u % 32u), -u_input.d.x, -2147483647i, 1f);
    var var_3 = -var_2.c;
    global0 = array<vec3<f32>, 12>();
    var_3 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x, _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(-1i, abs(-4232i)), _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(var_2.c, u_input.d.x, 50809i)), select(vec3<i32>(var_2.d, 26623i, u_input.d.x), vec3<i32>(var_2.d, u_input.d.x, -2147483647i), false)), -2147483647i), -vec3<i32>(1i, var_2.c, -9123i)));
}

