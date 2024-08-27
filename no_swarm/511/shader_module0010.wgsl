struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29>;

var<private> global1: Struct_1 = Struct_1(true);

var<private> global2: array<Struct_1, 26>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_1() -> Struct_1 {
    global2 = array<Struct_1, 26>();
    global1 = global2[_wgslsmith_index_u32(u_input.a.x, 26u)];
    global0 = array<bool, 29>();
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-1111f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-999f, 774f)))), -183f);
    global1 = Struct_1(false);
    return Struct_1(global1.a);
}

fn func_3() -> u32 {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), _wgslsmith_clamp_u32(0u, u_input.a.x, 1u), 4294967295u, 4294967295u)), _wgslsmith_mult_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x), vec4<u32>(1u, 12260u, u_input.a.x, u_input.a.x)), u_input.a.x, u_input.a.x << (u_input.a.x % 32u), u_input.a.x), ~(~vec4<u32>(u_input.a.x, 80526u, u_input.a.x, 73265u)))), 26u)];
    var var_1 = func_1();
    var var_2 = -1063f;
    global1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(countOneBits(u_input.a), abs(select(u_input.a, ~(~vec3<u32>(4294967295u, 85639u, 1u)), !var_1.a))), 26u)];
    var var_3 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1196f, -147f), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(663f, -927f, global0[_wgslsmith_index_u32(1u, 29u)])))), -1676f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-618f, 457f) * vec2<f32>(1104f, 677f))))), vec2<bool>(all(!select(vec3<bool>(var_0.a, true, true), vec3<bool>(var_1.a, global0[_wgslsmith_index_u32(u_input.a.x, 29u)], false), var_0.a)), !(!all(vec2<bool>(false, var_1.a))))));
    return ~(~_wgslsmith_mod_u32(u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x)) ^ u_input.a.x);
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: u32) -> vec3<i32> {
    let var_0 = func_1();
    let var_1 = func_1();
    return _wgslsmith_sub_vec3_i32(abs(~vec3<i32>(1i, 5876i, 1i)), vec3<i32>(_wgslsmith_mod_i32(43590i, _wgslsmith_clamp_i32(i32(-1i) * -2147483647i, -31516i >> (arg_0.x % 32u), 1i)), _wgslsmith_dot_vec4_i32(select(~vec4<i32>(-1i, -1i, 91391i, -2943i), vec4<i32>(20958i, -53308i, 36749i, 2147483647i), select(vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 29u)], false, global0[_wgslsmith_index_u32(arg_1.x, 29u)]), vec4<bool>(true, var_0.a, global0[_wgslsmith_index_u32(0u, 29u)], false), false)), ~vec4<i32>(16668i, -1251i, -14383i, -1i)), _wgslsmith_clamp_i32(1i, 52050i, 22553i)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    global0 = array<bool, 29>();
    global0 = array<bool, 29>();
    var var_0 = firstLeadingBit(func_4(vec2<u32>(~1u, 4294967295u), _wgslsmith_div_vec4_u32(vec4<u32>(~u_input.a.x, func_3(), u_input.a.x, u_input.a.x), select(vec4<u32>(u_input.a.x, 4294967295u, 34512u, 4294967295u) & vec4<u32>(u_input.a.x, 1u, 17022u, u_input.a.x), vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x), !vec4<bool>(arg_1.a, true, true, arg_0.a))), 88633u));
    global0 = array<bool, 29>();
    let var_1 = arg_2;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 29>();
    var var_0 = !(!vec2<bool>(all(vec3<bool>(true, true, true)), func_2(func_1(), func_1(), Struct_1(false))));
    var var_1 = -457f;
    let var_2 = select(min(~firstLeadingBit(u_input.a.x), ~(~u_input.a.x)) | ~_wgslsmith_mult_u32(countOneBits(34263u), ~u_input.a.x), u_input.a.x, var_0.x);
    var var_3 = Struct_1(any(select(vec4<bool>(!global1.a, true, !var_0.x, global0[_wgslsmith_index_u32(~u_input.a.x, 29u)]), select(select(vec4<bool>(var_0.x, var_0.x, global1.a, false), vec4<bool>(false, false, true, true), vec4<bool>(var_0.x, var_0.x, true, global0[_wgslsmith_index_u32(4294967295u, 29u)])), vec4<bool>(global0[_wgslsmith_index_u32(1u, 29u)], false, global1.a, false), all(vec4<bool>(false, false, var_0.x, true))), !vec4<bool>(var_0.x, true, global0[_wgslsmith_index_u32(1u, 29u)], var_0.x))));
    var var_4 = Struct_1(~abs(~47392i) < (abs(~1i) & firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(-1i, 80441i)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, -1871i);
}

