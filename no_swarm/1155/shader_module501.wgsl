struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: vec2<i32> = vec2<i32>(0i, -33399i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: Struct_1) -> bool {
    global0 = 2147483647i;
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(963f)))));
    let var_1 = Struct_2(arg_2, all(vec3<bool>(arg_1 > countOneBits(arg_1), true, 29014i < firstLeadingBit(global1.x))));
    global1 = _wgslsmith_add_vec2_i32(-u_input.a, max(vec2<i32>(u_input.b, -min(-12652i, 24309i)), reverseBits(u_input.a)));
    global0 = -_wgslsmith_mod_i32(-(-arg_2.a >> (~arg_1 % 32u)), ~1i);
    return true;
}

fn func_2(arg_0: vec4<u32>) -> vec2<bool> {
    var var_0 = vec4<bool>(true & any(vec2<bool>(true, true)), any(vec2<bool>(true, true)) | all(vec3<bool>(true, true, true)), true, all(!vec2<bool>(global1.x == -1i, func_3(2147483647i, arg_0.x, Struct_1(-1i)))));
    global1 = reverseBits(u_input.a);
    var var_1 = _wgslsmith_sub_i32(global1.x, firstLeadingBit(abs(0i)));
    var_1 = reverseBits(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(9002i, 0i), vec2<i32>(global1.x, u_input.a.x)) & u_input.a, max(_wgslsmith_mod_vec2_i32(u_input.a, vec2<i32>(29905i, global1.x)), vec2<i32>(30377i, global1.x) & vec2<i32>(-191i, u_input.a.x))) >> ((arg_0.x ^ ~0u) % 32u));
    global0 = -u_input.a.x;
    return select(!select(vec2<bool>(true, all(var_0.zy)), vec2<bool>(false, any(vec2<bool>(var_0.x, false))), var_0.x), !(!(!vec2<bool>(true, var_0.x))), any(vec2<bool>(arg_0.x == countOneBits(43889u), true)));
}

fn func_1() -> Struct_1 {
    let var_0 = vec2<bool>(true, all(select(!func_2(vec4<u32>(14926u, 19623u, 10343u, 0u)), vec2<bool>(true, any(vec4<bool>(true, true, false, true))), select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), false)))));
    let var_1 = Struct_1(-(-u_input.b ^ -2147483647i));
    var var_2 = Struct_1(u_input.a.x);
    let var_3 = Struct_2(Struct_1(u_input.a.x), true);
    global1 = u_input.a;
    return Struct_1(i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(16573i, 1i, var_3.a.a, -57821i), countOneBits(vec4<i32>(var_3.a.a, -53695i, var_3.a.a, -1i))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_mult_i32(1i, ~(-41116i));
    let var_0 = 2147483647i;
    let var_1 = func_1();
    var var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(-1738f, -396f)), 386f, _wgslsmith_f_op_f32(select(1135f, 571f, false)), -224f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(886f, 441f, 1573f, 1000f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(179f, 1000f, -609f, -707f) + vec4<f32>(157f, 214f, 717f, 694f))) * vec4<f32>(_wgslsmith_f_op_f32(max(-715f, 165f)), -1000f, -1291f, _wgslsmith_f_op_f32(round(-397f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1192f, 1351f, -3096f, 112f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1036f, -1000f, 1085f, -983f) - vec4<f32>(-1338f, -1347f, -428f, -216f))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1449f, -1299f, 349f, -238f)))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, 707f, -1896f, -290f))) * vec4<f32>(-1000f, -344f, 136f, -2246f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1267f, 141f, -2022f, -849f), vec4<f32>(140f, -531f, -585f, 556f))) + vec4<f32>(-1672f, -809f, 769f, 411f)))))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(var_2.x, var_2.x, false)), _wgslsmith_f_op_f32(max(-1021f, -164f)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * 697f) - _wgslsmith_f_op_f32(ceil(var_2.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(42917i, -_wgslsmith_dot_vec2_i32(u_input.a, select(u_input.a, u_input.a, true) & _wgslsmith_add_vec2_i32(vec2<i32>(global1.x, 1i), vec2<i32>(34051i, -7982i))), ~_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0, var_0, 48741i), vec3<i32>(var_0, var_1.a, 26848i)), vec3<i32>(var_1.a, -42138i, var_0)), ~58067i));
}

