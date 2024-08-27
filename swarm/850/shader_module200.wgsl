struct Struct_1 {
    a: vec4<f32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 22>;

var<private> global1: Struct_1 = Struct_1(vec4<f32>(473f, -1742f, -997f, 765f), 941f);

var<private> global2: bool = true;

var<private> global3: array<u32, 11>;

var<private> global4: array<u32, 1>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1() -> vec4<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(global1.a + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(248f, -212f, -671f, global1.a.x))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.b, -195f, global1.a.x, -266f))))))), -1427f);
    let var_1 = -1000f;
    var var_2 = 2147483647i;
    var_2 = u_input.d.x;
    var var_3 = vec2<bool>(_wgslsmith_clamp_u32(u_input.e.x, ~abs(global3[_wgslsmith_index_u32(65587u, 11u)]), _wgslsmith_mult_u32(u_input.e.x, _wgslsmith_clamp_u32(13832u, global3[_wgslsmith_index_u32(u_input.e.x, 11u)], u_input.e.x))) > global3[_wgslsmith_index_u32(1u ^ global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.e.x, 23881u), ~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.e.x, 1u)], 1u)]), 11u)], 11u)], false);
    return reverseBits(_wgslsmith_sub_vec4_u32(~_wgslsmith_mod_vec4_u32(u_input.e, vec4<u32>(0u, 1u, 4294967295u, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(41597u, 1u)], 1u)], 1u)], 1u)], 11u)])), u_input.e | ~_wgslsmith_sub_vec4_u32(vec4<u32>(53895u, u_input.e.x, 4294967295u, 1u), u_input.e)));
}

fn func_2() -> Struct_1 {
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(-global1.a), global1.a.x);
    return Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.x, global1.a.x, 142f, 2049f) - vec4<f32>(-399f, -660f, -1150f, 690f))))), _wgslsmith_f_op_f32(floor(-1043f)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec2<bool>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(arg_1.a));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-arg_1.a))), -627f);
    global3 = array<u32, 11>();
    var var_2 = arg_1;
    let var_3 = firstLeadingBit(firstTrailingBit(-u_input.a));
    return _wgslsmith_dot_vec4_i32(countOneBits(abs(_wgslsmith_div_vec4_i32(vec4<i32>(var_3, u_input.b, 4654i, 1i), vec4<i32>(18295i, var_3, var_3, u_input.d.x)))), ~select(vec4<i32>(abs(var_3), var_3, _wgslsmith_sub_i32(1i, 1i), reverseBits(u_input.d.x)), reverseBits(vec4<i32>(-33329i, var_3, var_3, 0i)), all(vec2<bool>(true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(global0[_wgslsmith_index_u32(81056u, 22u)], vec3<i32>(10017i, u_input.b, -1i) ^ vec3<i32>(u_input.c, -41113i, u_input.b)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.e.x, global3[_wgslsmith_index_u32(u_input.e.x, 11u)], u_input.e.x, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(32733u, 1u)], 1u)]), u_input.e, u_input.e), func_1()), 22u)]) >= _wgslsmith_div_i32(u_input.c & u_input.b, func_3(global1.a.x, func_2(), vec2<bool>(false, true))));
    global2 = all(vec2<bool>(true, true));
    let var_0 = ~(~max(~u_input.e.xw, abs(func_1().xx)));
    let var_1 = 41639u;
    let var_2 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(917f);
}

