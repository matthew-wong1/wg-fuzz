struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1() -> u32 {
    global0 = array<f32, 7>();
    let var_0 = u_input.a.xx;
    let var_1 = select(u_input.a, u_input.a, !(any(vec3<bool>(true, true, true)) != true));
    global0 = array<f32, 7>();
    global0 = array<f32, 7>();
    return u_input.a.x;
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: vec4<i32>) -> u32 {
    var var_0 = ~(select(arg_1, arg_1, arg_0) >> (_wgslsmith_add_u32(1u, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(0u, 16845u, u_input.b, u_input.a.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.b, u_input.a.x, 4294967295u), vec4<u32>(u_input.a.x, 35751u, 95509u, u_input.b)))) % 32u));
    var var_1 = Struct_1(~max(~(~75146u), 1u), select(!select(vec2<bool>(true, true), vec2<bool>(arg_0, true), arg_0), vec2<bool>(true, true), false), select(_wgslsmith_mod_i32(~2147483647i, _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(u_input.c.x, 5528i, arg_2.x, -1i))), select(firstLeadingBit(arg_2.x), i32(-1i) * -1i, true), !arg_0) << (64123u % 32u));
    var_0 = _wgslsmith_clamp_i32(-2147483647i, 22868i, -1i);
    var_0 = -36412i;
    var_1 = Struct_1(~4294967295u, !(!select(vec2<bool>(false, var_1.b.x), var_1.b, arg_0)), _wgslsmith_sub_i32(23999i, 0i));
    return ~u_input.b << (_wgslsmith_mult_u32(4294967295u, _wgslsmith_mod_u32(0u | (var_1.a << (u_input.a.x % 32u)), 1u)) % 32u);
}

fn func_2(arg_0: vec2<f32>) -> u32 {
    global0 = array<f32, 7>();
    var var_0 = countOneBits(_wgslsmith_add_i32(47532i, -u_input.c.x));
    var var_1 = Struct_1(~(~func_3(true, 12734i, u_input.c) ^ firstTrailingBit(4294967295u)), select(!select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), select(vec2<bool>(true, true), vec2<bool>(true, true), true), false), select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), false), false), vec2<bool>(-324f > global0[_wgslsmith_index_u32(u_input.a.x, 7u)], false), vec2<bool>(u_input.c.x >= 2147483647i, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), -(~_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(u_input.c.wx, vec2<i32>(u_input.c.x, 32649i)), u_input.c.x, -u_input.c.x)));
    var_0 = i32(-1i) * -1i;
    var_0 = ~(~var_1.c);
    return ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a, ~(~59590u), 35483u, u_input.b), vec4<u32>(abs(_wgslsmith_add_u32(var_1.a, 86875u)), ~var_1.a, _wgslsmith_mod_u32(1u, 1u), 4352u));
}

fn func_4(arg_0: Struct_2) -> StorageBuffer {
    let var_0 = ~59200u;
    global0 = array<f32, 7>();
    let var_1 = Struct_2(arg_0.c.b.x, Struct_1(~(~(~21749u)), arg_0.b.b, -1i), Struct_1(u_input.b, vec2<bool>(any(vec3<bool>(false, arg_0.b.b.x, arg_0.a)), arg_0.a), arg_0.b.c), max(_wgslsmith_dot_vec3_i32(u_input.c.wzz, -abs(vec3<i32>(arg_0.d, u_input.c.x, arg_0.d))), _wgslsmith_clamp_i32(-arg_0.c.c, _wgslsmith_add_i32(reverseBits(u_input.c.x), min(arg_0.b.c, u_input.c.x)), min(~u_input.c.x, arg_0.c.c))), global0[_wgslsmith_index_u32(func_2(vec2<f32>(global0[_wgslsmith_index_u32(14604u, 7u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4761u, 7u)] - _wgslsmith_f_op_f32(round(arg_0.e))))), 7u)]);
    var var_2 = -21555i;
    var var_3 = var_1;
    return StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.e), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(reverseBits(u_input.a.x), 7u)] + global0[_wgslsmith_index_u32(~var_0, 7u)]))), -883f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(var_1.b.a, 7u)], -717f, var_1.e, -158f), vec4<f32>(816f, arg_0.e, arg_0.e, 700f)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-883f, 1613f, var_1.e, -211f)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(var_1.b.a, 7u)], global0[_wgslsmith_index_u32(u_input.b, 7u)], var_3.e, -112f) - vec4<f32>(-190f, arg_0.e, var_3.e, -1044f)) * vec4<f32>(var_1.e, 149f, -582f, 2308f)))), vec4<f32>(-130f, 1524f, var_3.e, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~arg_0.c.a, 7u)] + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.e + 1172f), _wgslsmith_div_f32(arg_0.e, var_3.e))))), min(arg_0.b.c, 2925i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.a.x;
    global0 = array<f32, 7>();
    var_0 = abs(func_1());
    let x = u_input.a;
    s_output = func_4(Struct_2(true, Struct_1(func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(807f, global0[_wgslsmith_index_u32(0u, 7u)]) + vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], 169f))), vec2<bool>(true, true), -u_input.c.x), Struct_1(_wgslsmith_sub_u32(~u_input.b, _wgslsmith_add_u32(1u, u_input.a.x)), !select(vec2<bool>(true, false), vec2<bool>(true, true), false), 1i), u_input.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(65359u, 7u)]))) * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 7u)]))));
}

