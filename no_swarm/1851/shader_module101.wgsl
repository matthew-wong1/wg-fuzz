struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: f32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: u32,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 15>;

var<private> global1: array<Struct_1, 16>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: vec4<u32>) -> Struct_3 {
    global1 = array<Struct_1, 16>();
    return Struct_3(_wgslsmith_sub_i32(_wgslsmith_mod_i32(select(2147483647i << (arg_2.x % 32u), -1i >> (0u % 32u), arg_1), 1i), select(0i, _wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, 2147483647i, -2147483647i, 5178i), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, -1i, -29946i, 9265i), vec4<i32>(23741i, -59816i, -19248i, 4395i))), arg_1)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0), -126f)));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec2<i32>) -> i32 {
    let var_0 = u_input.a.wwz;
    global1 = array<Struct_1, 16>();
    let var_1 = arg_1.b;
    var var_2 = func_2(817f, false, u_input.a);
    let var_3 = arg_2.x;
    return ~(-82213i) >> (arg_1.d.a % 32u);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1) -> f32 {
    let var_0 = all(arg_0.a.e.yw);
    return arg_0.a.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(_wgslsmith_clamp_vec2_i32(vec2<i32>(countOneBits(-2147483647i), firstLeadingBit(0i)), vec2<i32>(max(-41336i, 53945i), -2147483647i), vec2<i32>(-1i) * -vec2<i32>(-2147483647i, -11575i)) | _wgslsmith_sub_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(func_1(vec4<bool>(true, false, false, true), Struct_2(global1[_wgslsmith_index_u32(u_input.b, 16u)], 453f, -947f, Struct_1(u_input.b, -1i), vec4<bool>(true, false, false, true)), vec2<i32>(2147483647i, 10131i)), ~(-14743i))));
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1012f, -1000f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1316f, -1691f))) + vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_4(Struct_2(global1[_wgslsmith_index_u32(47100u, 16u)], 2242f, 1325f, global1[_wgslsmith_index_u32(17932u, 16u)], vec4<bool>(true, false, true, true))), Struct_1(u_input.b, 1i))), 1f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 1000f), vec2<f32>(1000f, 2576f))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1087f, 275f)))))));
    var var_2 = vec2<i32>(-39235i, var_0.x);
    let var_3 = Struct_1(~(~_wgslsmith_mod_u32(0u, 113258u) & u_input.c.x), ~(~(~(~var_0.x))));
    let var_4 = vec2<bool>(!(!(firstLeadingBit(-26283i) == var_3.b)), select(!any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false)), ((var_2.x & 35720i) <= 2147483647i) & true, !all(vec3<bool>(false, false, false))));
    let var_5 = Struct_4(Struct_2(Struct_1(~u_input.b ^ (25720u ^ var_3.a), _wgslsmith_mult_i32(0i, countOneBits(var_2.x))), _wgslsmith_div_f32(var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x - 713f), _wgslsmith_f_op_f32(f32(-1f) * -1768f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(var_1.x)), _wgslsmith_f_op_f32(abs(var_1.x)), true)) - _wgslsmith_f_op_f32(f32(-1f) * -598f)), global1[_wgslsmith_index_u32(1u ^ _wgslsmith_add_u32(u_input.b, _wgslsmith_mod_u32(u_input.b, u_input.a.x)), 16u)], vec4<bool>(var_4.x, true | all(var_4), true, var_4.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-389f, vec4<u32>(~var_3.a, ~var_5.a.a.a, _wgslsmith_dot_vec4_u32(u_input.a, u_input.c), _wgslsmith_dot_vec3_u32(vec3<u32>(75811u, 1u, var_5.a.a.a), vec3<u32>(u_input.a.x, 4294967295u, select(u_input.c.x, 66960u, true)))), u_input.b, 237f, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_5.a.c))), -1000f));
}

