struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 9>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<i32>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -815f), -1973f, all(vec2<bool>(true, true)))), -1802f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(140f, -1384f))))));
    var var_1 = _wgslsmith_f_op_f32(max(357f, 1842f));
    var var_2 = !(!vec3<bool>(any(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false))), (78275u != u_input.b.x) && true, true && any(vec2<bool>(true, true))));
    global0 = array<Struct_2, 9>();
    var_2 = !vec3<bool>(false, var_2.x, arg_0.x > min(_wgslsmith_mult_i32(-1i, arg_0.x), arg_0.x));
    return !vec4<bool>(true, arg_0.x < 1i, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, arg_0.x, -10107i, arg_0.x), vec4<i32>(-30517i, -2147483647i, arg_0.x, arg_0.x)), arg_0.x << (28297u % 32u)) < -8684i, any(!select(vec3<bool>(var_2.x, var_2.x, true), vec3<bool>(true, false, var_2.x), vec3<bool>(true, var_2.x, var_2.x))));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = u_input.b.xwy;
    let var_1 = arg_1;
    var var_2 = vec2<u32>(1u, arg_2.a);
    var var_3 = Struct_2(var_1, ~var_0.yz, Struct_1(var_0.x), 2147483647i);
    var_3 = Struct_2(var_1, vec2<u32>(0u, ~_wgslsmith_dot_vec2_u32(var_3.b, min(vec2<u32>(102224u, 83058u), vec2<u32>(1u, 13714u)))), var_1, var_3.d);
    return select(func_3(select(_wgslsmith_div_vec3_i32(vec3<i32>(var_3.d, -1i, arg_0.x), ~vec3<i32>(var_3.d, 1592i, 1i)), -vec3<i32>(arg_0.x, var_3.d, var_3.d), false)), vec4<bool>(-1165f == _wgslsmith_f_op_f32(ceil(2713f)), all(!func_3(vec3<i32>(-896i, var_3.d, arg_0.x))), false, func_3(~reverseBits(vec3<i32>(var_3.d, -29678i, 12508i))).x), true);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<u32>) -> Struct_2 {
    let var_0 = 1i;
    global0 = array<Struct_2, 9>();
    global0 = array<Struct_2, 9>();
    let var_1 = Struct_1((max(arg_1.x, u_input.a) & u_input.b.x) >> (arg_1.x % 32u));
    let var_2 = ~_wgslsmith_mod_i32(0i, _wgslsmith_mod_i32(_wgslsmith_add_i32(-1i, firstTrailingBit(var_0)), -4191i));
    return global0[_wgslsmith_index_u32(~(~(~u_input.b.x)), 9u)];
}

fn func_1(arg_0: u32, arg_1: vec3<i32>) -> f32 {
    var var_0 = false;
    var var_1 = false;
    var var_2 = Struct_2(Struct_1(0u), _wgslsmith_div_vec2_u32(vec2<u32>(abs(u_input.b.x), 1u | select(u_input.b.x, arg_0, true)), _wgslsmith_mod_vec2_u32(countOneBits(~vec2<u32>(4294967295u, 0u)), _wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(4294967295u, u_input.a)), ~vec2<u32>(arg_0, u_input.a)))), Struct_1(0u), -(-30084i & min(2147483647i, ~arg_1.x)));
    let var_3 = Struct_1(~(max(22710u, _wgslsmith_div_u32(1u, 4294967295u)) & ~u_input.b.x));
    let var_4 = func_4(!(!(!func_2(arg_1.zy, Struct_1(var_3.a), Struct_1(arg_0)))), vec2<u32>(4294967295u, 4294967295u));
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 9>();
    var var_0 = vec3<bool>(true, true, true);
    var_0 = vec3<bool>(-760f > _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-643f)), 849f) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(112f * -890f), _wgslsmith_f_op_f32(trunc(3079f))))), var_0.x, false);
    global0 = array<Struct_2, 9>();
    let var_1 = any(!select(!vec4<bool>(false, var_0.x, true, var_0.x), vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(true, true, true, true))) != var_0.x;
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-1190f))));
    var_2 = _wgslsmith_f_op_f32(func_1(u_input.b.x, ~vec3<i32>(min(i32(-1i) * -8919i, 0i), 1i, ~0i)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(425f, 593f, -786f, -1000f) + vec4<f32>(-797f, -627f, 1555f, 534f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(max(firstLeadingBit(_wgslsmith_sub_i32(1i, 1i)), select(_wgslsmith_sub_i32(21241i, 28426i), 0i, var_0.x)), firstTrailingBit(1i), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(-20966i, 0i, -5065i, 2409i)), vec4<i32>(-2147483647i, -2147483647i, 19368i, 1i)), abs(vec4<i32>(1i, 1i, 1i, 1i)))), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.b.x, u_input.b.x, 1u, 19681u)), ~vec4<u32>(23142u, ~424u, _wgslsmith_mod_u32(u_input.b.x, u_input.a), 18081u)), firstLeadingBit(vec3<i32>(firstLeadingBit(~(-4510i)), _wgslsmith_mod_i32(_wgslsmith_mod_i32(-1i, -2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -2147483647i, 17955i), vec3<i32>(35217i, -28233i, -2147483647i))), reverseBits(-26828i >> (u_input.a % 32u)))), ~(-_wgslsmith_add_i32(_wgslsmith_clamp_i32(0i, -18233i, 51281i), ~1i)), _wgslsmith_mod_u32(~u_input.a | u_input.b.x, ~(~(~u_input.b.x))));
}

