struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 23> = array<u32, 23>(4294967295u, 1u, 9933u, 1u, 0u, 4294967295u, 137233u, 0u, 1u, 1u, 16799u, 1u, 38433u, 4294967295u, 15434u, 1u, 1u, 51030u, 1u, 1u, 4294967295u, 1u, 29884u);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: i32, arg_1: vec2<f32>, arg_2: bool) -> vec4<i32> {
    let var_0 = 1u;
    var var_1 = !select(!(!(!vec2<bool>(arg_2, arg_2))), vec2<bool>(true, !arg_2), arg_2);
    var_1 = vec2<bool>(!(!all(vec2<bool>(var_1.x, var_1.x))), !all(vec4<bool>(all(vec2<bool>(var_1.x, arg_2)), !arg_2, false, select(true, var_1.x, var_1.x))));
    let var_2 = Struct_1(vec4<i32>(_wgslsmith_clamp_i32(-81711i | _wgslsmith_add_i32(arg_0, -2147483647i), _wgslsmith_dot_vec4_i32(-vec4<i32>(0i, arg_0, 0i, -1i), abs(vec4<i32>(-6125i, u_input.d, arg_0, -51956i))), -(u_input.d >> (17915u % 32u))), -_wgslsmith_mult_i32(abs(arg_0), -18480i), _wgslsmith_clamp_i32(abs(-110385i), abs(arg_0), -21526i) ^ u_input.d, 43558i), ~(~_wgslsmith_clamp_vec2_i32(vec2<i32>(25597i, 35259i), select(vec2<i32>(-1i, u_input.d), vec2<i32>(arg_0, 2147483647i), vec2<bool>(true, var_1.x)), vec2<i32>(arg_0, u_input.d))));
    let var_3 = !all(!(!select(vec2<bool>(false, var_1.x), vec2<bool>(arg_2, true), vec2<bool>(true, true))));
    return var_2.a & abs(-var_2.a);
}

fn func_2(arg_0: f32) -> Struct_2 {
    var var_0 = !(!vec4<bool>(true, true, _wgslsmith_f_op_f32(arg_0 * -280f) < arg_0, !any(vec3<bool>(false, false, true))));
    var var_1 = global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 23u)] & 4294967295u, 23u)];
    var var_2 = ~(53600i >> (global0[_wgslsmith_index_u32(82548u | u_input.b, 23u)] % 32u));
    var var_3 = Struct_1(~func_3(-u_input.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) + vec2<f32>(692f, 2355f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0))), var_0.x), _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(u_input.d, -2147483647i, -7156i | u_input.d), countOneBits(u_input.d)), -(-vec2<i32>(u_input.d, 13179i) >> ((vec2<u32>(0u, 5961u) << (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u))) % vec2<u32>(32u)))));
    var_0 = !(!(!(!vec4<bool>(true, var_0.x, false, var_0.x))));
    return Struct_2(global0[_wgslsmith_index_u32(firstTrailingBit(1431u), 23u)] | countOneBits(~(~global0[_wgslsmith_index_u32(4294967295u, 23u)])));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec2<f32>) -> vec4<u32> {
    var var_0 = func_2(1313f);
    var_0 = Struct_2(u_input.b);
    let var_1 = Struct_2(_wgslsmith_sub_u32(var_0.a, ~firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 0u, 1u, 42892u), vec4<u32>(var_0.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(28397u, 23u)], 23u)], var_0.a, 0u)))));
    var var_2 = any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec2<bool>(true, true))), !select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true), false), !(true && any(vec4<bool>(false, false, true, false)))));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_2.x, _wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(-arg_2.x)), true)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-1014f))))), 1314f, -255f, -1000f);
    return ~(min(~(vec4<u32>(var_1.a, arg_0.a, 22607u, u_input.b) << (vec4<u32>(0u, global0[_wgslsmith_index_u32(var_0.a, 23u)], var_1.a, 66360u) % vec4<u32>(32u))), ~(~vec4<u32>(global0[_wgslsmith_index_u32(0u, 23u)], u_input.a, 1u, 1u))) >> (~(~abs(vec4<u32>(0u, u_input.a, 4294967295u, var_0.a))) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(~4401u);
    global0 = array<u32, 23>();
    global0 = array<u32, 23>();
    global0 = array<u32, 23>();
    global0 = array<u32, 23>();
    let var_1 = Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(-(31641i & u_input.d), -387i, _wgslsmith_div_i32(u_input.d, ~(-3175i)), u_input.d), vec4<i32>(2147483647i, 2147483647i, u_input.d, u_input.d) >> ((func_1(var_0, vec4<i32>(9659i, u_input.d, -41570i, -813i), vec2<f32>(-736f, -252f)) | ~vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 23u)], var_0.a, 6314u, u_input.a)) % vec4<u32>(32u))), vec2<i32>(firstTrailingBit(45195i), -1i));
    var var_2 = _wgslsmith_mult_i32(2617i, 0i);
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -386f))), 288f));
    var var_4 = true | all(select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(all(vec2<bool>(false, true)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.x, var_3.x) - vec2<f32>(var_3.x, 386f))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1556f, var_3.x), vec2<f32>(var_3.x, var_3.x), vec2<bool>(true, false))))), true)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(249f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(485f)))))), var_1.a.x);
}

