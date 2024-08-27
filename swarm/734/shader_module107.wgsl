struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_4 {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: Struct_1,
}

struct Struct_5 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 28> = array<i32, 28>(-10668i, 1i, 9238i, -38030i, -11380i, 8863i, 1i, 41345i, 35456i, -13127i, 1i, 0i, 0i, 1i, 10738i, 34512i, -1i, -1i, -1i, i32(-2147483648), 1i, 2147483647i, 2147483647i, 44628i, 14933i, 1i, 2147483647i, 2147483647i);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: i32) -> u32 {
    let var_0 = ~u_input.b & 15719u;
    global0 = array<i32, 28>();
    global0 = array<i32, 28>();
    var var_1 = select(select(vec4<bool>(true, select(-78810i < arg_2, true, true), true, -global0[_wgslsmith_index_u32(var_0, 28u)] > firstLeadingBit(arg_1)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), false), vec4<bool>(true, arg_0 <= -2145f, true, any(vec4<bool>(true, false, true, false))))), vec4<bool>(true, false, false, any(vec4<bool>(true, true, true, true))), select(vec4<bool>(true, any(vec3<bool>(true, false, true)) == false, false, 1000f <= _wgslsmith_f_op_f32(-arg_0)), vec4<bool>(any(vec4<bool>(true, true, true, true)), true, false, true), vec4<bool>(true, true, true, true)));
    var_1 = vec4<bool>(false, var_1.x, (true & !(!var_1.x)) && (u_input.a >= ~4294967295u), _wgslsmith_add_u32(u_input.b, firstLeadingBit(var_0)) != 1u);
    return 4294967295u;
}

fn func_2(arg_0: u32) -> u32 {
    let var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-411f, 701f, -1285f) - vec3<f32>(-766f, -1666f, -1068f)))))));
    var var_1 = firstLeadingBit(vec2<u32>(_wgslsmith_add_u32(arg_0, arg_0) & _wgslsmith_mult_u32(arg_0, u_input.a), select(arg_0, func_3(-584f, global0[_wgslsmith_index_u32(arg_0, 28u)], global0[_wgslsmith_index_u32(35620u, 28u)]), true))) << (max(max(~max(vec2<u32>(u_input.b, u_input.a), vec2<u32>(42660u, arg_0)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_0, u_input.a, u_input.b), vec4<u32>(arg_0, arg_0, 41937u, 28159u)), arg_0)), _wgslsmith_div_vec2_u32(~(~vec2<u32>(u_input.b, arg_0)), _wgslsmith_clamp_vec2_u32(vec2<u32>(2609u, 0u) ^ vec2<u32>(arg_0, arg_0), ~vec2<u32>(3u, arg_0), ~vec2<u32>(1u, arg_0)))) % vec2<u32>(32u));
    let var_2 = vec4<bool>(all(!vec3<bool>(any(vec4<bool>(true, false, true, true)), true, false)), any(vec4<bool>(true, _wgslsmith_div_u32(u_input.b, 4294967295u) != u_input.b, all(vec2<bool>(false, true)), _wgslsmith_dot_vec3_i32(vec3<i32>(44176i, global0[_wgslsmith_index_u32(4294967295u, 28u)], global0[_wgslsmith_index_u32(4294967295u, 28u)]), vec3<i32>(9671i, 880i, global0[_wgslsmith_index_u32(var_1.x, 28u)])) >= -61472i)), !(any(vec3<bool>(true, true, true)) && false), select(true, (567f == var_0.a.x) == all(vec4<bool>(true, true, true, true)), all(vec2<bool>(true, false)) && true));
    let var_3 = abs(select(-(~(-vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 28u)], 23200i))), vec2<i32>(global0[_wgslsmith_index_u32(~arg_0, 28u)] | 23015i, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, 1u), 28u)]), !vec2<bool>(any(var_2.zy), true)));
    var_1 = _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(u_input.a, 1u, var_1.x), 4294967295u), ~(~vec2<u32>(arg_0, 15073u) >> (vec2<u32>(18772u, u_input.b) % vec2<u32>(32u))) | abs(vec2<u32>(max(4294967295u, 70503u), 6232u)));
    return u_input.b;
}

fn func_1() -> StorageBuffer {
    let var_0 = ~(~_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(~vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 28u)], global0[_wgslsmith_index_u32(1u, 28u)], 104992i, 0i), -vec4<i32>(global0[_wgslsmith_index_u32(18396u, 28u)], -15354i, -1i, -1i)), -(vec4<i32>(global0[_wgslsmith_index_u32(25428u, 28u)], global0[_wgslsmith_index_u32(1u, 28u)], -1i, -48433i) << (vec4<u32>(u_input.a, u_input.b, u_input.a, 1u) % vec4<u32>(32u)))));
    let var_1 = ~(~(~(~max(vec4<u32>(u_input.b, 3937u, u_input.b, 1u), vec4<u32>(u_input.a, u_input.b, u_input.a, u_input.b)))));
    global0 = array<i32, 28>();
    let var_2 = vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 28u)], 2147483647i, global0[_wgslsmith_index_u32(47608u, 28u)]) | vec3<i32>(~29037i, firstTrailingBit(-var_0.x), max(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(15632u, 28u)], 0i) << (22984u % 32u), ~42i));
    var var_3 = _wgslsmith_div_vec2_u32(~vec2<u32>(~14129u, func_2(var_1.x)), vec2<u32>(601u, 1u));
    return StorageBuffer(1f, -2426f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.b;
    var var_1 = -264f;
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(385f, 1519f, -354f)), vec3<f32>(1378f, -818f, 529f), true))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1866f, 273f, -1204f)))), vec3<f32>(_wgslsmith_f_op_f32(309f + -441f), -853f, -488f)), true)));
    let var_3 = 1i;
    var var_4 = true;
    var_0 = _wgslsmith_div_u32(u_input.a, ~(~_wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.b, u_input.a), vec2<u32>(50130u, u_input.b), false), vec2<u32>(u_input.a, 1u))));
    global0 = array<i32, 28>();
    let x = u_input.a;
    s_output = func_1();
}

