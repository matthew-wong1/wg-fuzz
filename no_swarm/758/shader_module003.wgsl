struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 19> = array<i32, 19>(0i, i32(-2147483648), 1i, 0i, 1i, -8180i, -6759i, 28825i, 7596i, 2147483647i, -4563i, -15311i, 11107i, 2147483647i, 22657i, 2147483647i, 0i, 0i, 11981i);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<i32>) -> vec3<f32> {
    global0 = array<i32, 19>();
    global0 = array<i32, 19>();
    var var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(~(vec4<i32>(-1i) * -arg_1), arg_1), -(~firstLeadingBit(-arg_1)));
    var var_1 = Struct_1(!any(select(select(vec3<bool>(false, true, arg_0.x), vec3<bool>(arg_0.x, true, arg_0.x), arg_0), !vec3<bool>(false, arg_0.x, false), select(vec3<bool>(false, true, false), arg_0, false))));
    let var_2 = Struct_2((-2147483647i ^ (firstLeadingBit(1i) << (select(u_input.a, 1u, arg_0.x) % 32u))) << (9625u % 32u), var_1.a);
    return _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1338f, 321f, 1868f) * vec3<f32>(979f, -1911f, 277f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-231f, -2115f, -419f)))))));
}

fn func_2(arg_0: f32) -> Struct_1 {
    global0 = array<i32, 19>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -400f), arg_0, _wgslsmith_f_op_f32(f32(-1f) * -901f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, arg_0, arg_0), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -721f, arg_0) - vec3<f32>(1038f, 1516f, arg_0))))));
    global0 = array<i32, 19>();
    var var_1 = _wgslsmith_f_op_vec3_f32(func_3(vec3<bool>(!(!any(vec2<bool>(false, true))), false, false), ~vec4<i32>(~(-1i), _wgslsmith_div_i32(2147483647i, i32(-1i) * -41549i), ~0i, countOneBits(global0[_wgslsmith_index_u32(u_input.b.x, 19u)]) << ((4294967295u >> (0u % 32u)) % 32u))));
    var var_2 = Struct_1(true);
    return Struct_1(any(!select(vec2<bool>(true, true), vec2<bool>(true, true), var_2.a)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec2<bool>, arg_3: u32) -> u32 {
    global0 = array<i32, 19>();
    var var_0 = true;
    var_0 = -_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(global0[_wgslsmith_index_u32(59197u, 19u)], -1i, global0[_wgslsmith_index_u32(0u, 19u)], global0[_wgslsmith_index_u32(1u, 19u)])), vec4<i32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3, u_input.b.x, u_input.b.x, 1u), vec4<u32>(6857u, 32453u, 85734u, u_input.c)), 19u)], _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(arg_3, 19u)], global0[_wgslsmith_index_u32(arg_3, 19u)]), _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(0u, 19u)], 2147483647i), 33965i)) >= global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~abs(u_input.a), _wgslsmith_sub_u32(_wgslsmith_mod_u32(~19354u, ~51143u), ~(~arg_3))), 19u)];
    let var_1 = vec2<bool>(!func_2(-156f).a, true || arg_2.x);
    var var_2 = ~firstTrailingBit(u_input.b);
    return _wgslsmith_clamp_u32(arg_3, u_input.a, ~(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c, 4294967295u, u_input.c, arg_3), vec4<u32>(96453u, arg_3, u_input.c, 11443u)) ^ reverseBits(4294967295u & u_input.b.x)));
}

fn func_5(arg_0: u32, arg_1: bool) -> Struct_1 {
    var var_0 = arg_0 == abs(~(~(0u >> (arg_0 % 32u))));
    let var_1 = firstLeadingBit(select(abs(global0[_wgslsmith_index_u32(~arg_0, 19u)]), ~_wgslsmith_mod_i32(firstTrailingBit(-2147483647i), global0[_wgslsmith_index_u32(6274u, 19u)] & -1i), true));
    global0 = array<i32, 19>();
    global0 = array<i32, 19>();
    var_0 = all(!vec4<bool>(true, !arg_1 && any(vec3<bool>(arg_1, arg_1, false)), arg_1, true));
    return Struct_1(false);
}

fn func_1() -> vec4<bool> {
    var var_0 = func_5(func_4(func_2(672f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-558f, _wgslsmith_f_op_f32(max(-1000f, -699f)), _wgslsmith_f_op_f32(max(-626f, 1000f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-808f, 771f, -526f)))), vec2<bool>(true, true), u_input.a), u_input.b.x >= 106222u);
    var_0 = func_5(min(u_input.b.x >> (~(~1u) % 32u), u_input.c), true);
    let var_1 = ~vec4<u32>(u_input.a >> (4294967295u % 32u), _wgslsmith_dot_vec3_u32(~countOneBits(vec3<u32>(u_input.a, u_input.b.x, 1u)), vec3<u32>(u_input.b.x, select(0u, 1u, true), ~67307u)), _wgslsmith_dot_vec3_u32(min(vec3<u32>(u_input.a, u_input.c, u_input.a), _wgslsmith_div_vec3_u32(vec3<u32>(70924u, 21996u, u_input.a), vec3<u32>(u_input.c, u_input.b.x, 1u))), countOneBits(vec3<u32>(u_input.a, 4294967295u, 1u))), 22788u);
    global0 = array<i32, 19>();
    var_0 = Struct_1(true);
    return vec4<bool>(true, var_0.a, var_0.a, select(firstLeadingBit(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(0u, 19u)], global0[_wgslsmith_index_u32(43089u, 19u)])) <= abs(34313i), true, func_2(_wgslsmith_f_op_f32(-128f * -1269f)).a || true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!select(vec2<bool>(true, true), vec2<bool>(true, true), all(func_1())));
    let var_1 = Struct_1(!var_0.x);
    var var_2 = !select(vec3<bool>(false, global0[_wgslsmith_index_u32(firstLeadingBit(0u), 19u)] == _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(u_input.b.x, 19u)], 1i), true), select(!vec3<bool>(true, true, var_0.x), func_1().xxy, all(vec2<bool>(var_0.x, var_1.a)) != true), vec3<bool>(!any(vec3<bool>(true, var_1.a, true)), false, func_5(0u, false).a == var_1.a));
    var_0 = vec2<bool>((~reverseBits(0u) | _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 70145u, 4200u), vec3<u32>(4294967295u, u_input.b.x, 1u)), u_input.b.x, ~56490u)) >= ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.b.x), u_input.b)), !(!var_0.x));
    let var_3 = _wgslsmith_dot_vec4_i32(vec4<i32>(countOneBits(global0[_wgslsmith_index_u32(4294967295u, 19u)]), max(global0[_wgslsmith_index_u32(~u_input.c & _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(4294967295u, 0u)), 19u)], global0[_wgslsmith_index_u32(68320u, 19u)]), ~(-_wgslsmith_add_i32(2147483647i, global0[_wgslsmith_index_u32(u_input.a, 19u)])), global0[_wgslsmith_index_u32(4294967295u, 19u)]), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(u_input.c, 19u)] ^ global0[_wgslsmith_index_u32(4294967295u, 19u)], min(global0[_wgslsmith_index_u32(19190u, 19u)], -2147483647i)), vec2<i32>(-6842i, 12193i)), global0[_wgslsmith_index_u32(1u, 19u)], -1i >> (~u_input.b.x % 32u), ~(~(-26536i))));
    global0 = array<i32, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(1237f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-321f, _wgslsmith_f_op_f32(min(-742f, -648f)))))));
}

