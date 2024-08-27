struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: i32) -> bool {
    var var_0 = Struct_1(firstTrailingBit(_wgslsmith_mod_vec4_u32(~arg_0.a, vec4<u32>(1u, 1u, arg_0.a.x ^ 50422u, reverseBits(0u)))));
    let var_1 = arg_0;
    let var_2 = var_1.a.zx;
    let var_3 = var_1;
    var var_4 = -vec2<i32>(_wgslsmith_div_i32(9781i, ~2147483647i >> (29u % 32u)), ~arg_2 & -arg_1);
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(1501f, -767f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-536f, -1025f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1178f, _wgslsmith_f_op_f32(f32(-1f) * -673f))), false)) <= _wgslsmith_f_op_f32(549f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(185f - -753f) + _wgslsmith_f_op_f32(-1632f - _wgslsmith_f_op_f32(max(-381f, -396f)))));
}

fn func_2() -> Struct_1 {
    var var_0 = vec2<bool>(select(true, func_3(Struct_1(~vec4<u32>(u_input.b, 12589u, u_input.a, u_input.b)), -1i, countOneBits(abs(-1363i))), false), select(true, !any(vec3<bool>(true, false, false)) || true, func_3(Struct_1(vec4<u32>(u_input.a, u_input.e, 39652u, u_input.d)), ~(-2147483647i), ~(-1i)) & true));
    return Struct_1(abs(_wgslsmith_div_vec4_u32(~countOneBits(vec4<u32>(1u, u_input.a, u_input.a, u_input.b)), select(vec4<u32>(4294967295u, u_input.b, u_input.d, 33759u), vec4<u32>(u_input.a, u_input.b, 7881u, 20487u), var_0.x))));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = select(!vec4<bool>(true, all(vec3<bool>(true, true, true)), !all(vec3<bool>(false, true, false)), true), select(!(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), true)), !(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), true)), (4294967295u | (arg_2.a.x >> (u_input.b % 32u))) != _wgslsmith_mult_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(41786u, 0u, 16321u), arg_3.a.zwx))), select(any(select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(vec2<bool>(false, true), vec2<bool>(true, false), false), true)), any(vec3<bool>(true, all(vec2<bool>(true, true)), true)), _wgslsmith_dot_vec2_u32(arg_3.a.xw, ~vec2<u32>(86887u, arg_3.a.x)) <= _wgslsmith_mod_u32(arg_0.a.x, 1u)));
    let var_1 = Struct_1(select(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(19374u, arg_2.a.x, 28231u, arg_3.a.x), arg_0.a), _wgslsmith_clamp_vec4_u32(vec4<u32>(11533u, 0u, 80440u, 48215u), arg_2.a, vec4<u32>(4294967295u, arg_3.a.x, arg_0.a.x, 1u))), arg_3.a, !func_3(Struct_1(arg_0.a), 2147483647i, 1i)) ^ vec4<u32>(_wgslsmith_div_u32(~35031u, 4294967295u >> (arg_3.a.x % 32u)), _wgslsmith_clamp_u32(25187u, u_input.a, u_input.b) << (5186u % 32u), 4294967295u, ~(4294967295u ^ arg_0.a.x)));
    let var_2 = Struct_1(~reverseBits(firstLeadingBit(vec4<u32>(4294967295u, arg_0.a.x, 83444u, arg_2.a.x))) ^ select(~(~arg_3.a), firstLeadingBit(var_1.a), !select(var_0, vec4<bool>(var_0.x, true, false, var_0.x), true)));
    let var_3 = false;
    var var_4 = var_1;
    return Struct_1(vec4<u32>(~(~abs(4294967295u)), ~var_4.a.x, _wgslsmith_dot_vec3_u32(var_2.a.yww, countOneBits(_wgslsmith_mod_vec3_u32(arg_0.a.ywx, arg_2.a.xwz))), abs(~3035u)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    return -801f;
}

fn func_1(arg_0: Struct_1) -> vec4<i32> {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_4(func_2(), _wgslsmith_f_op_f32(f32(-1f) * -711f), arg_0, arg_0), func_4(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -507f), func_4(Struct_1(vec4<u32>(u_input.d, u_input.d, u_input.b, u_input.d)), -230f, arg_0, arg_0), Struct_1(arg_0.a))))), _wgslsmith_f_op_f32(min(-736f, _wgslsmith_f_op_f32(-1f))));
    var var_1 = Struct_1(arg_0.a);
    var var_2 = func_2();
    var_1 = Struct_1(countOneBits(~vec4<u32>(var_1.a.x, ~39544u, arg_0.a.x, ~var_2.a.x)));
    let var_3 = !select(vec4<bool>(true, true, true, true), !vec4<bool>(0u <= u_input.b, arg_0.a.x != 11251u, -1336f >= var_0, false), !select(var_2.a.x == u_input.e, true, false));
    return ~vec4<i32>(-reverseBits(2147483647i) << (0u % 32u), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(1i, 1i, 1i)), max(vec3<i32>(931i, 15513i, -1i), _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, -5679i, -2147483647i), vec3<i32>(14771i, -2147483647i, 2147483647i)))), 1i, -abs(1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(u_input.a & u_input.d);
    var var_1 = ~vec3<i32>(-1i, 0i, 1i);
    var_1 = vec3<i32>(-(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.x, var_1.x, var_1.x, 1084i), vec4<i32>(var_1.x, var_1.x, var_1.x, -1i), vec4<i32>(-1i, -60577i, var_1.x, -1i)), func_1(Struct_1(vec4<u32>(1u, 1u, u_input.a, 19810u)))) | 8382i), var_1.x, 2147483647i);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(370f * -356f))) - -2282f)));
    var var_3 = ~(~_wgslsmith_sub_i32(_wgslsmith_div_i32(var_1.x, var_1.x), 26259i)) & -(i32(-1i) * -(~1i));
    var_2 = 1f;
    var_3 = var_1.x;
    let var_4 = abs(vec3<u32>(u_input.e, ~(~(~1u)), 71308u & u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(420f, _wgslsmith_f_op_f32(max(169f, 1004f)))), -1108f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -111f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1488f, -448f))), -2147483647i);
}

