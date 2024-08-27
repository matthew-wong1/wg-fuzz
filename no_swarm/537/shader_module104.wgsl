struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec2<i32>,
    d: bool,
    e: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15>;

var<private> global1: Struct_2;

var<private> global2: array<Struct_2, 25>;

var<private> global3: array<f32, 10>;

var<private> global4: Struct_2;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = (vec3<u32>(~(~u_input.a), u_input.a, 47742u) | ~select(vec3<u32>(u_input.a, 25638u, 7912u), _wgslsmith_mod_vec3_u32(vec3<u32>(56188u, u_input.a, u_input.a), vec3<u32>(u_input.a, 1u, u_input.a)), vec3<bool>(false, arg_0.d, arg_0.b.x))) << (~(~(~(vec3<u32>(u_input.a, u_input.a, u_input.a) ^ vec3<u32>(u_input.a, u_input.a, 1u)))) % vec3<u32>(32u));
    global4 = Struct_2(-38305i | global4.d, global4.d, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1560f * -815f)), _wgslsmith_f_op_f32(305f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global4.c.x), _wgslsmith_f_op_f32(round(-479f))))), global1.c.x, _wgslsmith_f_op_f32(235f + _wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(u_input.a, 10u)])))), 1i);
    var var_1 = vec2<u32>(min(1u, ~_wgslsmith_add_u32(1140u, u_input.a << (u_input.a % 32u))), 0u);
    global3 = array<f32, 10>();
    global2 = array<Struct_2, 25>();
    return i32(-1i) * -2147483647i;
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = global2[_wgslsmith_index_u32(0u, 25u)];
    global0 = array<Struct_1, 15>();
    var var_1 = vec4<f32>(-113f, _wgslsmith_f_op_f32(ceil(var_0.c.x)), global3[_wgslsmith_index_u32(u_input.a, 10u)], _wgslsmith_f_op_f32(535f * _wgslsmith_f_op_f32(1738f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(549f + 1319f))))));
    let var_2 = arg_1.e ^ vec4<i32>((select(var_0.a, -4650i, false) >> (_wgslsmith_mult_u32(u_input.a, 0u) % 32u)) ^ _wgslsmith_mod_i32(var_0.a | global4.b, var_0.b), select(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, arg_1.c.x, arg_1.e.x), vec3<i32>(-2900i, -2147483647i, -37539i)), _wgslsmith_clamp_i32(abs(arg_1.c.x), 8770i, func_3(arg_1)), all(vec4<bool>(arg_1.b.x, arg_1.d, false, false)) | arg_1.d), -45630i, select(firstTrailingBit(~arg_1.c.x), var_0.a, true));
    let var_3 = arg_1;
    return var_3;
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1) -> bool {
    var var_0 = func_2(global4.c.yzx, global0[_wgslsmith_index_u32(u_input.a, 15u)]);
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(arg_0.x, 10u)] * 1000f) + 1173f), global4.c.x, var_0.d));
    var var_2 = arg_0.yx;
    global3 = array<f32, 10>();
    global4 = global2[_wgslsmith_index_u32(u_input.a, 25u)];
    return arg_1.d;
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    global4 = global2[_wgslsmith_index_u32(~(4294967295u << (u_input.a % 32u)), 25u)];
    global2 = array<Struct_2, 25>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(u_input.a, 10u)])), global1.c.x);
    global2 = array<Struct_2, 25>();
    var var_1 = -arg_1.a;
    return func_2(global1.c.wxx, func_2(global4.c.zwx, func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a, -120f, -2148f) * vec3<f32>(arg_1.c.x, global4.c.x, var_0.x)), _wgslsmith_f_op_vec3_f32(select(global1.c.yyw, vec3<f32>(-285f, -937f, arg_1.c.x), vec3<bool>(true, arg_2.d, false)))), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a, global4.c.x, var_0.x)), Struct_1(arg_1.c.x, arg_2.b, vec2<i32>(-2147483647i, 1i), arg_2.d, vec4<i32>(-9937i, -2147483647i, 18139i, 0i))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 25>();
    let var_0 = func_4(global1.b, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(_wgslsmith_mult_vec2_u32(countOneBits(vec2<u32>(1u, u_input.a)), min(vec2<u32>(u_input.a, 43859u), vec2<u32>(1u, 31727u))), ~vec2<u32>(4294967295u, 36832u), func_1(vec3<u32>(u_input.a, u_input.a, u_input.a), global0[_wgslsmith_index_u32(~0u, 15u)])), vec2<u32>(_wgslsmith_add_u32(u_input.a, u_input.a), u_input.a)), 25u)], func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.c.zwz) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.c.x, 146f, -704f)))), global0[_wgslsmith_index_u32(u_input.a, 15u)]));
    var var_1 = var_0.e.xy;
    global3 = array<f32, 10>();
    var var_2 = 1u;
    var var_3 = func_2(vec3<f32>(1010f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(222f * var_0.a) - global1.c.x)), 129f), func_4(-(~(-27474i)), global2[_wgslsmith_index_u32(~u_input.a, 25u)], global0[_wgslsmith_index_u32(1u, 15u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(-(vec2<i32>(var_3.e.x, 2016i) ^ vec2<i32>(global1.d, global1.a)), -vec2<i32>(-93666i, var_1.x)), var_3.c), u_input.a, reverseBits(firstTrailingBit(-_wgslsmith_mult_vec3_i32(var_0.e.xzy, var_0.e.yxz))), global1.c.wzx);
}

