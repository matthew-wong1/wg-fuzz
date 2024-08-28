struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: f32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec4<f32>) -> u32 {
    let var_0 = ~reverseBits(~u_input.a.www);
    var var_1 = _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(max(_wgslsmith_clamp_vec3_i32(abs(u_input.a.yxw), ~vec3<i32>(-1478i, -2147483647i, u_input.a.x), u_input.a.zzz), u_input.a.wyw), u_input.a.wzw), ~var_0);
    global0 = array<bool, 26>();
    var_1 = u_input.a.x;
    let var_2 = !(_wgslsmith_f_op_f32(-arg_0.x) >= _wgslsmith_f_op_f32(972f * -389f));
    return ~select(0u, _wgslsmith_sub_u32(~abs(1u), 1u), global0[_wgslsmith_index_u32(1u << (1u % 32u), 26u)]);
}

fn func_2(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_5) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, -1603f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1925f, arg_1.x, arg_1.x, arg_1.x))) + vec4<f32>(1083f, -410f, 1f, _wgslsmith_f_op_f32(-1000f * arg_1.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, 1805f) - vec4<f32>(arg_1.x, arg_1.x, -1178f, -1174f)))))), 26u)];
    let var_1 = -1i;
    global0 = array<bool, 26>();
    var_0 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -229f)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1255f, arg_1.x)) - _wgslsmith_div_f32(-1848f, _wgslsmith_f_op_f32(arg_1.x + arg_1.x))));
    var var_2 = Struct_4(-((arg_2.c ^ arg_2.c) | reverseBits(u_input.a)) ^ (arg_2.c | (vec4<i32>(-1i) * -arg_2.c)), ~min(firstTrailingBit(arg_2.c.xy), u_input.a.xx), Struct_1(var_1));
    return Struct_1(_wgslsmith_sub_i32(_wgslsmith_mod_i32(1i, arg_2.c.x), _wgslsmith_dot_vec2_i32(var_2.b ^ arg_2.c.wx, firstTrailingBit(vec2<i32>(0i, arg_2.c.x)))) | ~u_input.a.x);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1) -> Struct_4 {
    global0 = array<bool, 26>();
    let var_0 = Struct_4(~vec4<i32>(min(-7392i, arg_1.a) ^ -u_input.a.x, -2147483647i, -_wgslsmith_clamp_i32(4974i, -2147483647i, -1i), countOneBits(-u_input.a.x)), vec2<i32>(~select(arg_1.a << (arg_0.x % 32u), -arg_1.a, global0[_wgslsmith_index_u32(71026u, 26u)]), arg_1.a), Struct_1(~(~u_input.a.x)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(1084f))))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1315f + _wgslsmith_f_op_f32(f32(-1f) * -1487f)), -737f)));
    let var_2 = vec3<bool>(!global0[_wgslsmith_index_u32(~arg_0.x & 1u, 26u)], var_1 < -953f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1196f, -614f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1993f, -199f)))) == var_1);
    var var_3 = Struct_2(func_2(arg_0.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(var_1, var_1), vec2<f32>(-1257f, var_1))))), Struct_5(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.x, arg_1.a), vec2<i32>(-1i, arg_1.a)), select(48997u, 54726u, u_input.a.x != -88506i), -(~u_input.a))), vec3<i32>(firstLeadingBit(1i), _wgslsmith_dot_vec2_i32(var_0.a.wz, reverseBits(var_0.b)), var_0.b.x), arg_0);
    return Struct_4(var_0.a ^ _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(select(u_input.a, u_input.a, false), ~u_input.a, -vec4<i32>(u_input.a.x, u_input.a.x, var_3.a.a, var_0.a.x)), _wgslsmith_mult_vec4_i32(var_0.a, vec4<i32>(arg_1.a, -848i, 0i, 17592i))), ~select(select(vec2<i32>(var_0.b.x, -27438i), -var_0.a.yx, !vec2<bool>(global0[_wgslsmith_index_u32(arg_0.x, 26u)], false)), var_3.b.yy, true), Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(41693i, 24994i, -48093i), vec3<i32>(var_0.c.a, var_0.a.x, arg_1.a)) >> (1u % 32u)));
}

fn func_5(arg_0: Struct_4) -> vec2<i32> {
    var var_0 = !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -3410f), -469f) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -645f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(482f)), _wgslsmith_f_op_f32(475f - -675f))));
    let var_1 = -135f;
    var_0 = false;
    var var_2 = ~firstTrailingBit(_wgslsmith_sub_u32(abs(~1818u), abs(func_3(vec4<f32>(372f, var_1, var_1, 924f)))));
    let var_3 = func_2(~_wgslsmith_sub_u32(func_3(vec4<f32>(var_1, -196f, var_1, var_1)) >> (countOneBits(4294967295u) % 32u), ~4294967295u), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1))), var_1), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1))), 368f)), Struct_5(_wgslsmith_mult_i32(u_input.a.x, _wgslsmith_mult_i32(select(u_input.a.x, u_input.a.x, global0[_wgslsmith_index_u32(47510u, 26u)]), ~(-4653i))), 4294967295u, abs(select(~arg_0.a, vec4<i32>(arg_0.b.x, u_input.a.x, arg_0.c.a, u_input.a.x), vec4<bool>(global0[_wgslsmith_index_u32(12079u, 26u)], global0[_wgslsmith_index_u32(4294967295u, 26u)], false, true)))));
    return min(_wgslsmith_mod_vec2_i32(-vec2<i32>(abs(1i), 47864i), ~arg_0.a.xz), vec2<i32>(-1i) * -u_input.a.xz);
}

fn func_1(arg_0: u32, arg_1: vec4<f32>, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = any(!vec2<bool>(all(vec4<bool>(arg_2.x, arg_2.x, true, false)), arg_2.x)) != !(arg_1.x < _wgslsmith_div_f32(-1000f, arg_1.x));
    let var_1 = _wgslsmith_div_vec2_i32(func_5(func_4(vec4<u32>(abs(arg_0), arg_0, arg_0, arg_0), func_2(1u, _wgslsmith_div_vec2_f32(vec2<f32>(arg_1.x, arg_1.x), arg_1.xw), Struct_5(u_input.a.x, 15746u, vec4<i32>(-1i, u_input.a.x, u_input.a.x, u_input.a.x))))), min(-u_input.a.yx, vec2<i32>(abs(-7837i), 0i)));
    global0 = array<bool, 26>();
    global0 = array<bool, 26>();
    let var_2 = Struct_1(90792i);
    return Struct_1(var_2.a);
}

fn func_6(arg_0: u32, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: Struct_5) -> vec2<u32> {
    return vec2<u32>(~_wgslsmith_sub_u32(4294967295u, 48535u), ~_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(72900u, 0u, arg_3.b)), select(vec3<u32>(8685u, 1u, 8861u), vec3<u32>(85932u, 37411u, arg_3.b), vec3<bool>(true, true, global0[_wgslsmith_index_u32(4294967295u, 26u)]))), 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(reverseBits(vec2<u32>(1u, ~1u)), func_6(_wgslsmith_div_u32(reverseBits(85668u), 59139u), Struct_2(func_1(1u, vec4<f32>(-987f, 854f, -993f, -974f), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 26u)], false, global0[_wgslsmith_index_u32(0u, 26u)], false)), vec3<i32>(u_input.a.x, 1i, -55342i), vec4<u32>(65933u, 1u, 18345u, 4360u)), !select(vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(0u, 26u)]), vec4<bool>(false, true, global0[_wgslsmith_index_u32(34675u, 26u)], global0[_wgslsmith_index_u32(14194u, 26u)]), true), Struct_5(1i, func_3(vec4<f32>(934f, -1000f, -135f, 1502f)), vec4<i32>(34197i, 1i, u_input.a.x, u_input.a.x)))), countOneBits(vec2<u32>(1u, 1u)) ^ _wgslsmith_add_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(_wgslsmith_clamp_u32(162372u, 0u, 15719u), 0u)));
    var var_1 = select(select(vec2<bool>(true, !any(vec2<bool>(false, true))), vec2<bool>(true, true), any(!(!vec4<bool>(global0[_wgslsmith_index_u32(5728u, 26u)], global0[_wgslsmith_index_u32(var_0, 26u)], false, true)))), !(!vec2<bool>(global0[_wgslsmith_index_u32(~var_0, 26u)], var_0 <= 4294967295u)), all(!vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(41371u, var_0), 26u)], any(vec2<bool>(global0[_wgslsmith_index_u32(var_0, 26u)], false)), true, true)));
    var var_2 = 1212f;
    global0 = array<bool, 26>();
    global0 = array<bool, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(-1i) << (_wgslsmith_div_u32(var_0, 8570u) % 32u), 0i, u_input.a.wwy);
}

