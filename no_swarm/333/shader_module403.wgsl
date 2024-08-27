struct Struct_1 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(true, 1u);

var<private> global2: bool;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: i32) -> bool {
    var var_0 = Struct_1(any(select(select(!vec4<bool>(true, false, global1.a, arg_1.a), vec4<bool>(global0.a, true, true, arg_1.a), select(vec4<bool>(arg_0, false, global0.a, true), vec4<bool>(false, global1.a, global0.a, false), true)), !(!vec4<bool>(global0.a, global0.a, arg_1.a, arg_1.a)), select(select(vec4<bool>(global0.a, true, arg_0, arg_0), vec4<bool>(true, false, arg_1.a, arg_1.a), vec4<bool>(true, true, arg_0, true)), !vec4<bool>(true, arg_0, true, true), all(vec4<bool>(false, global0.a, false, false))))), global0.b);
    let var_1 = Struct_1(arg_0 | false, abs(var_0.b));
    var var_2 = ~reverseBits(_wgslsmith_add_i32(54580i, 1i));
    let var_3 = Struct_1(false, global1.b);
    var_0 = var_3;
    return !global1.a;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> vec4<f32> {
    global2 = global0.a;
    global0 = Struct_1(all(vec4<bool>(arg_1.a, func_3(global0.a, Struct_1(global1.a, arg_0.b), -u_input.c), true, true)), ~_wgslsmith_div_u32(~max(arg_0.b, arg_0.b), ~u_input.b));
    var var_0 = arg_0;
    global1 = Struct_1(false, ~(0u << (1u % 32u)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(1872f, -327f, 1263f) + vec3<f32>(-1000f, 548f, 1000f))))))));
    return _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1070f, _wgslsmith_f_op_f32(-var_1.x), var_1.x, -689f)));
}

fn func_1(arg_0: vec3<bool>) -> bool {
    global2 = true;
    global1 = Struct_1(!(u_input.c < -2147483647i), _wgslsmith_dot_vec4_u32(firstTrailingBit(select(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, global1.b, 0u, 1u), vec4<u32>(0u, 0u, 1u, global1.b)), vec4<u32>(u_input.b, 4294967295u, global1.b, global1.b), vec4<bool>(true, global0.a, false, arg_0.x))), max(reverseBits(vec4<u32>(global0.b, u_input.b, global1.b, u_input.b)), vec4<u32>(32794u, 58919u, 0u, global1.b)) ^ _wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(global1.b, u_input.b, global0.b, global0.b)), vec4<u32>(68828u, 6958u, 78691u, global0.b) ^ vec4<u32>(1u, 46046u, 0u, global0.b))));
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1749f, -1168f, 302f, -622f), vec4<f32>(854f, -534f, 619f, -2159f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-117f, -530f, -1000f, 301f))) - vec4<f32>(-1299f, 443f, _wgslsmith_f_op_f32(sign(-1490f)), _wgslsmith_f_op_f32(167f + -410f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(1000f)), 1000f, 1150f, -2059f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1187f, -1052f, -117f, 2290f)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2599f, 202f, -547f, 165f)), _wgslsmith_f_op_vec4_f32(func_2(Struct_1(false, global0.b), Struct_1(arg_0.x, 13567u)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1028f, -228f, -326f)))));
    let var_1 = vec2<bool>(true, true);
    global2 = false;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec4_i32(~(vec4<i32>(min(-9094i, u_input.c), -2147483647i, i32(-1i) * -13108i, u_input.c) | -select(vec4<i32>(u_input.a.x, 1662i, u_input.c, u_input.c), vec4<i32>(u_input.a.x, u_input.c, 0i, u_input.a.x), vec4<bool>(false, global1.a, false, global0.a))), vec4<i32>(-5224i, 1i, -9321i, u_input.a.x));
    var var_1 = Struct_1(func_1(vec3<bool>(true, false, select(global0.a && true, true, all(vec3<bool>(global1.a, global0.a, false))))), (_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.b, 12944u), vec3<u32>(25568u, u_input.b, 55207u)), vec3<u32>(u_input.b, 81096u, global1.b) & vec3<u32>(u_input.b, 20775u, 38602u)) >> (max(0u, ~4294967295u) % 32u)) & 4294967295u);
    global2 = global1.a;
    let var_2 = _wgslsmith_f_op_vec4_f32(func_2(Struct_1(!any(vec3<bool>(global1.a, global1.a, var_1.a)), ~u_input.b << (abs(max(var_1.b, global1.b)) % 32u)), Struct_1(global1.a, var_1.b))).xz;
    let var_3 = Struct_1(global0.a && ((!global1.a | false) | true), _wgslsmith_div_u32(_wgslsmith_clamp_u32(~_wgslsmith_sub_u32(32642u, var_1.b), global1.b, 4294967295u), _wgslsmith_mod_u32(~724u, var_1.b)));
    let var_4 = reverseBits(~max(min(vec4<i32>(u_input.c, -45798i, 2147483647i, u_input.a.x) & vec4<i32>(1i, 1i, var_0.x, -2147483647i), -vec4<i32>(-9916i, var_0.x, u_input.c, var_0.x)), _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, u_input.c, 1i, var_0.x), vec4<i32>(-5499i, -21279i, u_input.a.x, var_0.x)), ~vec4<i32>(u_input.c, -2147483647i, u_input.c, 27978i))));
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(var_0.xx, _wgslsmith_add_vec2_i32(vec2<i32>(6201i, var_0.x), vec2<i32>(10668i, -1i))), ~vec2<i32>(u_input.a.x, var_4.x) << (reverseBits(vec2<u32>(global1.b, 34994u)) % vec2<u32>(32u))), -(~u_input.a.xx), !(true & !global0.a)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -604f))), abs(reverseBits(vec2<u32>(38838u, 7638u) ^ countOneBits(vec2<u32>(4294967295u, u_input.b)))));
}

