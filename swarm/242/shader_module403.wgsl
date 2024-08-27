struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_3,
    d: vec2<i32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 19>;

var<private> global1: vec3<bool>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec2<f32>) -> vec3<bool> {
    var var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_0.x)), 713f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-arg_0), _wgslsmith_f_op_vec2_f32(vec2<f32>(319f, arg_0.x) * arg_0))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(219f, arg_0.x))))));
    let var_1 = any(global1.zx);
    global0 = array<vec3<i32>, 19>();
    var var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.x + -2261f), var_0.x))), global1.xy);
    let var_3 = !select(!vec4<bool>(global1.x, global1.x, true, !global1.x), vec4<bool>(!select(false, false, true), false, true && (arg_0.x <= arg_0.x), false), false);
    return vec3<bool>(!var_3.x, all(var_3), false);
}

fn func_2(arg_0: vec4<u32>, arg_1: i32) -> i32 {
    var var_0 = any(!func_3(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1052f), _wgslsmith_div_f32(236f, 1565f))));
    let var_1 = Struct_2(~max(arg_0.x, u_input.a), Struct_1(87822u), Struct_1(19418u));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-744f)), 1118f))), global1.xz);
    var var_3 = Struct_3(-680f, vec2<bool>(!var_2.b.x, all(select(vec3<bool>(false, false, global1.x), vec3<bool>(global1.x, false, false), vec3<bool>(global1.x, global1.x, global1.x)))));
    global1 = vec3<bool>(var_3.b.x, true, !var_3.b.x);
    return arg_1;
}

fn func_1(arg_0: i32, arg_1: Struct_4, arg_2: vec3<i32>, arg_3: f32) -> vec2<i32> {
    let var_0 = !vec3<bool>(arg_1.c.b.x, arg_1.c.b.x, select(false, !(arg_1.c.a > -1000f), arg_1.c.b.x));
    let var_1 = Struct_3(arg_3, var_0.yx);
    var var_2 = arg_1.b;
    var var_3 = var_1;
    var_2 = arg_1.a;
    return _wgslsmith_sub_vec2_i32(vec2<i32>(arg_1.d.x, arg_1.d.x), vec2<i32>(firstTrailingBit(abs(func_2(vec4<u32>(0u, 19408u, var_2.a, 1u), -1i))), i32(-1i) * -_wgslsmith_dot_vec2_i32(arg_2.zx, arg_1.d)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !(!(!vec3<bool>(all(vec4<bool>(false, true, global1.x, true)), !global1.x, false)));
    global0 = array<vec3<i32>, 19>();
    let var_0 = Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-522f + _wgslsmith_div_f32(1389f, -983f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -559f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1572f, -129f), -867f))))), vec2<bool>(true, !all(vec3<bool>(true, true, true))));
    var var_1 = vec2<i32>(1i, 1i) ^ -vec2<i32>(min(_wgslsmith_mod_i32(-1i, 2147483647i), 39907i >> (u_input.a % 32u)), _wgslsmith_mod_i32(reverseBits(-31289i), 9854i));
    global0 = array<vec3<i32>, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.a))), var_0.a, 1i, 0u, -_wgslsmith_add_vec2_i32(~max(vec2<i32>(3338i, -26360i), vec2<i32>(var_1.x, var_1.x)), func_1(_wgslsmith_mult_i32(-1i, -39661i), Struct_4(Struct_1(58901u), Struct_1(u_input.a), Struct_3(var_0.a, global1.zz), vec2<i32>(-1i, var_1.x), vec4<f32>(-2026f, 1143f, 172f, -882f)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(21352u, 1u, u_input.a), vec3<u32>(4294967295u, 25578u, 0u)), 19u)], var_0.a)));
}

