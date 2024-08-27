struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
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

var<private> global0: array<vec4<f32>, 4>;

var<private> global1: array<i32, 32> = array<i32, 32>(-25178i, -9957i, 0i, -1i, 58823i, 2147483647i, 2147483647i, 14907i, i32(-2147483648), -13171i, -37221i, -14189i, -28873i, 0i, i32(-2147483648), 0i, -27196i, 14497i, 0i, -1i, 1i, 0i, i32(-2147483648), -58276i, -14594i, -23725i, -70713i, 1i, 29379i, 70017i, -25775i, 0i);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: u32) -> f32 {
    global0 = array<vec4<f32>, 4>();
    var var_0 = vec2<i32>(max(u_input.d, u_input.a), _wgslsmith_dot_vec3_i32(~(~(~vec3<i32>(-1i, u_input.b, global1[_wgslsmith_index_u32(u_input.c, 32u)]))), -_wgslsmith_clamp_vec3_i32(-vec3<i32>(global1[_wgslsmith_index_u32(u_input.c, 32u)], -2147483647i, u_input.d), _wgslsmith_mod_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 32u)], u_input.b, -1i), vec3<i32>(global1[_wgslsmith_index_u32(arg_0, 32u)], -13548i, global1[_wgslsmith_index_u32(0u, 32u)])), -vec3<i32>(0i, u_input.b, global1[_wgslsmith_index_u32(arg_0, 32u)]))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(638f)), 133f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-475f - -1472f)), -114f, -189f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-169f, -1000f), -1923f, _wgslsmith_f_op_f32(f32(-1f) * -1097f), 718f), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(704f, -451f, -1000f, -2060f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1728f, 476f, 926f, -143f) * global0[_wgslsmith_index_u32(arg_0, 4u)]))))));
    global0 = array<vec4<f32>, 4>();
    global1 = array<i32, 32>();
    return var_1.x;
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_4) -> vec2<i32> {
    global1 = array<i32, 32>();
    var var_0 = _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~select(_wgslsmith_sub_vec2_u32(arg_2.b.b, vec2<u32>(arg_1.a.x, 1u)), arg_2.c, true), vec2<u32>(~max(51874u, arg_2.b.b.x), 1u)), ~min(abs(vec2<u32>(u_input.c, 1u)), vec2<u32>(45354u, arg_1.a.x)) & arg_2.b.b);
    global0 = array<vec4<f32>, 4>();
    let var_1 = _wgslsmith_f_op_f32(-arg_2.b.c);
    var_0 = select(countOneBits(select(~0u, ~49206u, (arg_2.a | arg_2.a) | true)), _wgslsmith_dot_vec2_u32(firstTrailingBit(arg_2.b.b), arg_2.c), !any(!vec4<bool>(arg_1.b, true, arg_1.b, false)));
    return -(~vec2<i32>(arg_0.x, -5505i));
}

fn func_2(arg_0: vec3<u32>) -> f32 {
    let var_0 = Struct_3(u_input.d, arg_0.zz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1514f, 441f))), Struct_2(~vec2<i32>(u_input.b, global1[_wgslsmith_index_u32(29127u, 32u)]) | firstTrailingBit(func_3(vec3<i32>(1i, -18649i, u_input.b), Struct_1(vec3<u32>(4294967295u, arg_0.x, 0u), false, false), Struct_4(true, Struct_3(2147483647i, arg_0.zy, -1185f, Struct_2(vec2<i32>(global1[_wgslsmith_index_u32(u_input.c, 32u)], u_input.a))), arg_0.yz)))));
    var var_1 = arg_0;
    let var_2 = Struct_3(var_0.a, vec2<u32>(var_0.b.x, 0u), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(var_0.c, _wgslsmith_f_op_f32(var_0.c + 347f))))), Struct_2(var_0.d.a));
    let var_3 = var_0.b.x;
    let var_4 = _wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(arg_0.x, 4u)] * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(580f, -565f, var_0.c, _wgslsmith_f_op_f32(min(var_2.c, -683f)))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.c))), _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.c, 1725f), _wgslsmith_f_op_f32(f32(-1f) * -775f)))), var_0.c));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 32>();
    global0 = array<vec4<f32>, 4>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(800f - 892f) - _wgslsmith_f_op_f32(func_1(u_input.c))), _wgslsmith_f_op_f32(func_2(vec3<u32>(41219u, u_input.c, 4294967295u))))));
    global0 = array<vec4<f32>, 4>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x * var_0.x), var_0.x)) + _wgslsmith_f_op_f32(func_1(~_wgslsmith_mult_u32(u_input.c, u_input.c)))));
    let var_2 = select(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true))), !select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !(u_input.c == 0u)), !(min(103745u, u_input.c) >= ~reverseBits(u_input.c)));
    let x = u_input.a;
    s_output = StorageBuffer((-reverseBits(vec2<i32>(u_input.d, global1[_wgslsmith_index_u32(27803u, 32u)])) | abs(min(vec2<i32>(30245i, -19670i), vec2<i32>(u_input.d, u_input.b)))) & vec2<i32>(-u_input.a, _wgslsmith_add_i32(u_input.d, 1i) ^ func_3(vec3<i32>(-2147483647i, u_input.a, -3040i), Struct_1(vec3<u32>(u_input.c, u_input.c, u_input.c), var_2.x, var_2.x), Struct_4(true, Struct_3(-23689i, vec2<u32>(4294967295u, 4294967295u), var_1, Struct_2(vec2<i32>(2147483647i, -32786i))), vec2<u32>(u_input.c, u_input.c))).x));
}

