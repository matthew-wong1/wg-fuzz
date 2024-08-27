struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(1u, 1u, 76497u, 20709u);

var<private> global1: vec3<i32>;

var<private> global2: vec4<f32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1) -> vec3<i32> {
    let var_0 = select(max(global1.x, i32(-1i) * -global1.x), _wgslsmith_sub_i32(_wgslsmith_mult_i32(arg_0.x, firstTrailingBit(37802i)), 1i), all(vec4<bool>(select(arg_1.b, false, arg_1.b), false, arg_1.b || arg_1.b, true))) & firstLeadingBit(28302i);
    let var_1 = vec3<f32>(global2.x, global2.x, 427f);
    var var_2 = -944f;
    var_2 = _wgslsmith_div_f32(1000f, global2.x);
    let var_3 = !(((!arg_1.b && arg_1.b) | false) | all(!(!vec3<bool>(arg_1.b, true, arg_1.b))));
    return u_input.a;
}

fn func_2(arg_0: vec2<i32>) -> vec2<i32> {
    global1 = func_3(~vec2<i32>(arg_0.x, min(_wgslsmith_dot_vec2_i32(arg_0, global1.yz), 1i)), Struct_1(select(global1.zx, vec2<i32>(9434i, abs(50088i)), select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(false, false), vec2<bool>(false, true))), u_input.c.x >= global0.x, -vec4<i32>(_wgslsmith_mod_i32(arg_0.x, u_input.b), abs(2147483647i), -15150i, u_input.b)));
    var var_0 = _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(-220f - -358f)));
    global0 = u_input.d;
    let var_1 = vec4<f32>(-2005f, -1146f, -668f, 1f);
    var_0 = _wgslsmith_f_op_f32(sign(var_1.x));
    return func_3(_wgslsmith_sub_vec2_i32(~vec2<i32>(u_input.b, arg_0.x), -(global1.yx >> (vec2<u32>(83715u, 0u) % vec2<u32>(32u)))), Struct_1(u_input.a.xz ^ vec2<i32>(-59697i, -56636i), !(all(vec4<bool>(false, false, true, false)) & any(vec4<bool>(false, false, false, true))), vec4<i32>(u_input.a.x, 9440i, -74550i, 0i))).xx;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = func_2(~firstTrailingBit(vec2<i32>(-26398i, 1i)));
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(global2.xwz));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.wxz))));
    global2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-224f, _wgslsmith_f_op_f32(var_1.x - global2.x)), _wgslsmith_f_op_f32(max(1293f, var_1.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(702f))))), 1042f));
    global2 = vec4<f32>(_wgslsmith_f_op_f32(354f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(876f + var_1.x))), global2.x, _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(sign(global2.x))), _wgslsmith_f_op_f32(max(3235f, _wgslsmith_f_op_f32(-var_1.x))));
    return arg_0;
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = vec3<i32>(~u_input.b, firstTrailingBit(u_input.a.x) >> (~31673u % 32u), arg_1.c.x);
    let var_1 = func_1(func_1(Struct_1(u_input.a.zz, false, vec4<i32>(_wgslsmith_add_i32(var_0.x, 2147483647i), var_0.x | 2147483647i, func_3(vec2<i32>(global1.x, -37288i), arg_1).x, -1i))));
    return arg_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(_wgslsmith_mult_i32(-2147483647i, global1.x), global1.x), func_4(_wgslsmith_mod_i32(global1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-1381i, u_input.b, 1i, -2147483647i), vec4<i32>(u_input.b, u_input.a.x, -1i, u_input.a.x))) > -2147483647i, func_1(Struct_1(vec2<i32>(-2147483647i, 31946i), true, ~vec4<i32>(u_input.b, 0i, 33590i, -7721i)))));
}

