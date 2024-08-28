struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec3<u32>;

var<private> global2: f32;

var<private> global3: Struct_1;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-822f + _wgslsmith_f_op_f32(463f * 446f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -330f), _wgslsmith_f_op_f32(round(2576f)))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1313f, 1179f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1619f))))));
    var var_1 = -1i;
    let var_2 = 1u;
    let var_3 = -1i;
    global1 = reverseBits(select(_wgslsmith_add_vec3_u32(select(vec3<u32>(0u, u_input.c, global1.x), u_input.d, true) & abs(u_input.d), ~vec3<u32>(u_input.d.x, global1.x, 1u)), ~(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, global1.x, u_input.d.x), u_input.d) | u_input.d), vec3<bool>(false, true | any(vec3<bool>(false, true, true)), all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true))))));
    return -41947i;
}

fn func_2(arg_0: vec2<bool>) -> vec4<i32> {
    global1 = ~vec3<u32>(global1.x, u_input.c, 83964u);
    return select(vec4<i32>(0i, -(~_wgslsmith_clamp_i32(-2147483647i, -34313i, global3.a)), 18946i, -func_3(Struct_1(global3.a))), vec4<i32>(u_input.b, u_input.a.x, global3.a, 2147483647i), !(!select(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), select(vec4<bool>(true, false, arg_0.x, false), vec4<bool>(false, false, arg_0.x, arg_0.x), arg_0.x), arg_0.x)));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: u32) -> Struct_1 {
    global2 = 1296f;
    var var_0 = select(select(select(vec3<bool>(arg_1.x, !arg_1.x, true), !(!arg_1), select(select(arg_1, vec3<bool>(arg_1.x, true, arg_1.x), true), !vec3<bool>(arg_1.x, arg_1.x, arg_1.x), !arg_1)), arg_1, true), !arg_1, arg_1.x);
    var var_1 = -46141i;
    let var_2 = -_wgslsmith_mod_vec4_i32(arg_0, func_2(arg_1.yz));
    global0 = ~(~(~0u));
    return Struct_1(_wgslsmith_div_i32(arg_0.x, -69690i << (global1.x % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec4<bool>(select(!all(vec3<bool>(false, true, false)), select(true, false, true) | true, false), true, true, true);
    global3 = func_1(~(~_wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(global3.a, u_input.a.x, u_input.b, u_input.a.x)), -vec4<i32>(0i, u_input.a.x, -20709i, global3.a))), var_0.yzx, 0u);
    let var_1 = ~_wgslsmith_dot_vec4_i32(vec4<i32>(0i ^ _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 2147483647i), u_input.a.yy), -select(7724i, 0i, var_0.x), 0i, global3.a), vec4<i32>(reverseBits(-64799i), 2341i, u_input.a.x, u_input.a.x << (~13415u % 32u)));
    let var_2 = abs(~vec4<i32>(global3.a, _wgslsmith_mod_i32(~(-2147483647i), countOneBits(u_input.b)), var_1, _wgslsmith_div_i32(var_1 << (u_input.d.x % 32u), u_input.b)));
    global1 = u_input.d;
    let var_3 = var_2.x;
    var var_4 = _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(-_wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(var_3, var_2.x)), -u_input.a.yx), _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, -28265i), u_input.a.yx), vec2<i32>(56915i, -2147483647i)) | vec2<i32>(_wgslsmith_div_i32(21250i, -2147483647i), ~5573i)), ~vec2<i32>(var_1, _wgslsmith_mod_i32(i32(-1i) * -29795i, i32(-1i) * -1i)));
    let x = u_input.a;
    s_output = StorageBuffer(min(4294967295u, 1u), var_2.ww);
}

