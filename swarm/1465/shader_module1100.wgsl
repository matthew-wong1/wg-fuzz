struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<i32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 6>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_mult_i32(-u_input.a, _wgslsmith_add_i32(abs(28150i & u_input.a), _wgslsmith_mod_i32(2149i, -23503i))), -998f, _wgslsmith_mult_vec3_i32(max(firstTrailingBit(-vec3<i32>(u_input.a, 2147483647i, arg_0)), abs(vec3<i32>(arg_0, arg_0, -1i))), countOneBits(~vec3<i32>(7806i, 0i, 0i))), -1156f);
    global0 = array<vec4<i32>, 6>();
    return Struct_1(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.b, _wgslsmith_f_op_f32(f32(-1f) * -1000f))) * -951f), -reverseBits(_wgslsmith_clamp_vec3_i32(var_0.c, var_0.c, var_0.c)) ^ var_0.c, _wgslsmith_f_op_f32(floor(var_0.d)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<f32>) -> f32 {
    let var_0 = true;
    global0 = array<vec4<i32>, 6>();
    var var_1 = func_1(0i);
    global0 = array<vec4<i32>, 6>();
    var var_2 = vec3<f32>(364f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b + var_1.d) * _wgslsmith_f_op_f32(arg_1.x + var_1.d)))), -1778f);
    return var_2.x;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d, 1895f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d, arg_0.d))))), vec2<f32>(_wgslsmith_f_op_f32(arg_0.d + _wgslsmith_f_op_f32(func_3(-vec3<i32>(63093i, 0i, arg_0.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(266f, arg_0.b, arg_0.b, arg_0.d))))), -421f)));
    global0 = array<vec4<i32>, 6>();
    let var_1 = arg_0.d;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -932f), var_0.x, var_1, -454f);
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1, 1980f, var_1, var_1), vec4<f32>(847f, 1000f, 1115f, var_1))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.x, arg_0.d, arg_0.d, -1000f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(337f, var_2.x, -1028f, var_2.x))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-227f, var_2.x, 939f, -444f)))))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(func_1(reverseBits(66674i)));
    var var_1 = _wgslsmith_f_op_f32(floor(-1000f));
    global0 = array<vec4<i32>, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(30455u);
}

