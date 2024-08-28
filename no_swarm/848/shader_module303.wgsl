struct Struct_1 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: i32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15> = array<bool, 15>(false, true, false, true, false, true, true, true, true, false, false, false, false, false, true);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec2<f32> {
    global0 = array<bool, 15>();
    var var_0 = firstLeadingBit(u_input.c);
    let var_1 = Struct_1(vec3<u32>(u_input.b.x, _wgslsmith_div_u32(arg_0.e, arg_0.e), u_input.b.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(arg_0.b))), 1i, arg_0.d, u_input.b.x);
    var_0 = _wgslsmith_mod_u32(_wgslsmith_mod_u32(42798u, abs(arg_0.a.x ^ var_1.e)), var_1.e) | _wgslsmith_clamp_u32(~select(abs(47418u), _wgslsmith_clamp_u32(var_1.e, 0u, 14150u), true), ~_wgslsmith_mod_u32(_wgslsmith_div_u32(arg_0.e, 4294967295u), var_1.e), _wgslsmith_clamp_u32(84314u, firstLeadingBit(~34975u), _wgslsmith_sub_u32(firstLeadingBit(1u), _wgslsmith_sub_u32(var_1.a.x, u_input.c))));
    var var_2 = !any(select(!select(vec2<bool>(true, global0[_wgslsmith_index_u32(var_1.a.x, 15u)]), vec2<bool>(true, var_1.d), vec2<bool>(true, true)), !vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.c, 15u)]), !vec2<bool>(var_1.d, true)));
    return _wgslsmith_f_op_vec2_f32(arg_0.b + arg_0.b);
}

fn func_2(arg_0: u32, arg_1: vec4<bool>, arg_2: vec4<u32>) -> vec3<f32> {
    global0 = array<bool, 15>();
    let var_0 = arg_1.ww;
    let var_1 = _wgslsmith_f_op_vec2_f32(func_3(Struct_1(~vec3<u32>(1u, 4294967295u, 4294967295u >> (arg_2.x % 32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(733f, -814f)))), firstTrailingBit(-16954i), true, ~(arg_2.x & arg_2.x))));
    var var_2 = Struct_3(max(reverseBits(vec3<u32>(1u, 0u, 67620u & u_input.b.x)), vec3<u32>(firstTrailingBit(1u), 1u, arg_0)), ~_wgslsmith_div_i32(0i, u_input.a), -_wgslsmith_sub_vec2_i32(vec2<i32>(785i, _wgslsmith_sub_i32(u_input.a, u_input.a)), select(vec2<i32>(34285i, u_input.a), vec2<i32>(u_input.a, u_input.a), false) & select(vec2<i32>(-1i, 0i), vec2<i32>(u_input.a, u_input.a), var_0)), reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a) ^ firstLeadingBit(vec3<i32>(-62936i, u_input.a, 0i)), vec3<i32>(u_input.a, -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -496i, -31500i), vec3<i32>(u_input.a, u_input.a, u_input.a))))));
    var var_3 = Struct_1(_wgslsmith_mod_vec3_u32(~(~arg_2.xww) ^ ~vec3<u32>(u_input.c, u_input.c, 9479u), ~vec3<u32>(arg_0, _wgslsmith_clamp_u32(18788u, 4294967295u, arg_0), ~0u)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(2885f, var_1.x), var_1)))))), u_input.a, true, max(~_wgslsmith_div_u32(1u, arg_0) ^ arg_0, arg_2.x));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(round(var_3.b.x)))), 467f, -1215f) * vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.x, -343f, var_3.d)) * var_1.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_3.b.x, -2326f))), _wgslsmith_div_f32(-2080f, _wgslsmith_f_op_f32(-1071f * var_1.x)))), var_1.x));
}

fn func_4(arg_0: vec3<f32>, arg_1: u32, arg_2: vec4<u32>) -> vec3<i32> {
    global0 = array<bool, 15>();
    let var_0 = _wgslsmith_f_op_vec3_f32(arg_0 * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(arg_0.x)), _wgslsmith_f_op_vec2_f32(func_3(Struct_1(vec3<u32>(arg_2.x, 4294967295u, arg_2.x), vec2<f32>(arg_0.x, 407f), -32809i, false, arg_1))).x)) - -900f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1075f, 290f))) + _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(floor(arg_0.x))));
    let var_1 = Struct_3(~firstTrailingBit(arg_2.xyw), -_wgslsmith_mod_i32(0i, ~u_input.a) | (u_input.a << (4552u % 32u)), -vec2<i32>(select(_wgslsmith_clamp_i32(0i, u_input.a, u_input.a), ~1i, global0[_wgslsmith_index_u32(~4688u, 15u)]), u_input.a), abs(~vec3<i32>(30814i, 2147483647i, u_input.a)) << ((~arg_2.zxw & vec3<u32>(reverseBits(1u), _wgslsmith_add_u32(u_input.b.x, u_input.c), _wgslsmith_dot_vec2_u32(arg_2.wy, vec2<u32>(arg_2.x, 0u)))) % vec3<u32>(32u)));
    return ~(~min(abs(var_1.d), -vec3<i32>(-1453i, var_1.d.x, 2147483647i) << (max(vec3<u32>(arg_2.x, 14599u, var_1.a.x), var_1.a) % vec3<u32>(32u))));
}

fn func_1() -> Struct_2 {
    let var_0 = ~(abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.b.x, 4294967295u), vec3<u32>(u_input.b.x, 0u, u_input.c), vec3<u32>(u_input.c, 57178u, 4294967295u))) & vec3<u32>(~4212u, firstTrailingBit(u_input.b.x), 4294967295u)) << (~min(abs(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) & vec3<u32>(85998u, u_input.c, u_input.c)), ~vec3<u32>(34755u, u_input.b.x, 1u) & ~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)) % vec3<u32>(32u));
    let var_1 = func_4(_wgslsmith_f_op_vec3_f32(func_2(~9685u, vec4<bool>((var_0.x > 1u) || !global0[_wgslsmith_index_u32(20533u, 15u)], select(any(vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(var_0.x, 15u)])), false, false), false, global0[_wgslsmith_index_u32(~0u, 15u)] & !global0[_wgslsmith_index_u32(4294967295u, 15u)]), ~(~(~vec4<u32>(u_input.b.x, 49746u, 5939u, 0u))))), 1u, ~vec4<u32>(~1u, 78323u, abs(var_0.x), _wgslsmith_div_u32(9259u, _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(var_0.x, 1u)))));
    var var_2 = select(select(select(select(select(vec4<bool>(global0[_wgslsmith_index_u32(var_0.x, 15u)], true, global0[_wgslsmith_index_u32(var_0.x, 15u)], global0[_wgslsmith_index_u32(38979u, 15u)]), vec4<bool>(global0[_wgslsmith_index_u32(18915u, 15u)], false, global0[_wgslsmith_index_u32(var_0.x, 15u)], false), vec4<bool>(global0[_wgslsmith_index_u32(var_0.x, 15u)], false, global0[_wgslsmith_index_u32(686u, 15u)], global0[_wgslsmith_index_u32(var_0.x, 15u)])), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 15u)], global0[_wgslsmith_index_u32(u_input.b.x, 15u)], false, global0[_wgslsmith_index_u32(u_input.b.x, 15u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 15u)], global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(1u, 15u)], true), vec4<bool>(global0[_wgslsmith_index_u32(28840u, 15u)], global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(30212u, 15u)], global0[_wgslsmith_index_u32(19878u, 15u)]), vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.b.x, 15u)], global0[_wgslsmith_index_u32(var_0.x, 15u)]))), !select(vec4<bool>(global0[_wgslsmith_index_u32(var_0.x, 15u)], true, global0[_wgslsmith_index_u32(64847u, 15u)], true), vec4<bool>(global0[_wgslsmith_index_u32(var_0.x, 15u)], true, true, global0[_wgslsmith_index_u32(u_input.c, 15u)]), vec4<bool>(true, false, true, true)), !(!vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.b.x, 15u)], global0[_wgslsmith_index_u32(var_0.x, 15u)]))), vec4<bool>(!any(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 15u)], global0[_wgslsmith_index_u32(var_0.x, 15u)], global0[_wgslsmith_index_u32(u_input.b.x, 15u)], global0[_wgslsmith_index_u32(var_0.x, 15u)])), global0[_wgslsmith_index_u32(var_0.x, 15u)], true, false), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.c, 15u)], global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.c), u_input.b), abs(1u), _wgslsmith_add_u32(4358u, 68103u)), 15u)], true)), vec4<bool>(any(!(!vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(60248u, 15u)], global0[_wgslsmith_index_u32(var_0.x, 15u)]))), false && all(!vec4<bool>(true, global0[_wgslsmith_index_u32(var_0.x, 15u)], global0[_wgslsmith_index_u32(15346u, 15u)], global0[_wgslsmith_index_u32(var_0.x, 15u)])), true, true), true);
    global0 = array<bool, 15>();
    var var_3 = 1635f;
    return Struct_2(_wgslsmith_mod_vec4_u32(firstLeadingBit(abs(vec4<u32>(34939u, 0u, var_0.x, 0u))), reverseBits(reverseBits(vec4<u32>(35088u, 1u, 1u, 34539u)) >> (max(vec4<u32>(var_0.x, 4294967295u, var_0.x, 4294967295u), vec4<u32>(4294967295u, u_input.c, u_input.c, 16431u)) % vec4<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = -(~(-(~(-vec3<i32>(u_input.a, 20307i, 2147483647i)))));
    let var_2 = !(!(!any(select(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 15u)], false, true), vec3<bool>(true, false, global0[_wgslsmith_index_u32(400u, 15u)]), global0[_wgslsmith_index_u32(127229u, 15u)]))));
    let var_3 = Struct_1(~(~(~(~vec3<u32>(4294967295u, var_0.a.x, var_0.a.x)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec3_f32(func_2(min(var_0.a.x, 1u), select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 15u)], true, false, var_2), vec4<bool>(true, true, global0[_wgslsmith_index_u32(var_0.a.x, 15u)], true), var_2), select(var_0.a, var_0.a, vec4<bool>(global0[_wgslsmith_index_u32(var_0.a.x, 15u)], true, true, global0[_wgslsmith_index_u32(u_input.c, 15u)])))).yz, _wgslsmith_f_op_vec3_f32(func_2(~53367u, select(vec4<bool>(global0[_wgslsmith_index_u32(29234u, 15u)], true, false, false), vec4<bool>(true, false, false, var_2), true), var_0.a ^ vec4<u32>(4294967295u, var_0.a.x, 24179u, var_0.a.x))).xz))), var_1.x, all(select(select(vec4<bool>(var_2, global0[_wgslsmith_index_u32(48648u, 15u)], true, true), select(vec4<bool>(true, false, var_2, true), vec4<bool>(global0[_wgslsmith_index_u32(1u, 15u)], false, global0[_wgslsmith_index_u32(75269u, 15u)], global0[_wgslsmith_index_u32(1u, 15u)]), vec4<bool>(var_2, false, false, false)), !vec4<bool>(var_2, true, global0[_wgslsmith_index_u32(u_input.b.x, 15u)], false)), vec4<bool>(var_2, global0[_wgslsmith_index_u32(u_input.c, 15u)], false, var_2), !select(vec4<bool>(var_2, false, false, true), vec4<bool>(false, var_2, global0[_wgslsmith_index_u32(7593u, 15u)], global0[_wgslsmith_index_u32(u_input.c, 15u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(34314u, 15u)], global0[_wgslsmith_index_u32(u_input.c, 15u)], global0[_wgslsmith_index_u32(1u, 15u)])))), min(select(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.c, var_0.a.x, var_0.a.x), vec4<u32>(34757u, var_0.a.x, 673u, u_input.c)), 20822u ^ u_input.c, 1u), 19990u, all(vec3<bool>(global0[_wgslsmith_index_u32(0u, 15u)], var_2, true))), ~56880u));
    var var_4 = max(abs(firstTrailingBit(reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, var_0.a.x), vec2<u32>(u_input.c, 1u))))), firstLeadingBit(countOneBits(~vec2<u32>(1u, var_0.a.x)) | vec2<u32>(~u_input.b.x, ~var_3.a.x)));
    let var_5 = -2681i;
    var var_6 = Struct_3(vec3<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(9849u, var_4.x), ~u_input.b), _wgslsmith_mult_u32(var_4.x, 1u)), 1u, 1u), u_input.a, _wgslsmith_clamp_vec2_i32(~(firstTrailingBit(var_1.zx) | firstTrailingBit(vec2<i32>(var_5, -2147483647i))), var_1.yy, vec2<i32>(0i, ~0i)), _wgslsmith_div_vec3_i32(vec3<i32>(~1i, countOneBits(firstTrailingBit(-1i)), var_5), ~vec3<i32>(var_1.x, 1i, 2147483647i) >> (vec3<u32>(~7407u, _wgslsmith_div_u32(81081u, 1u), max(49134u, 49604u)) % vec3<u32>(32u))));
    var var_7 = var_3.a.x;
    let var_8 = -firstLeadingBit(~(var_6.d ^ -var_6.d));
    let x = u_input.a;
    s_output = StorageBuffer(select(~vec4<i32>(select(-1i, 57302i, global0[_wgslsmith_index_u32(var_0.a.x, 15u)]), countOneBits(0i), var_1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_3.c, 0i, 3397i, var_8.x), vec4<i32>(-1i, var_8.x, var_1.x, 1i))), select(vec4<i32>(var_5, 0i, var_3.c, -27534i), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, 1i, -1i, var_3.c), vec4<i32>(0i, var_1.x, -1i, -67672i), vec4<i32>(var_8.x, -2147483647i, var_5, var_8.x)), any(vec2<bool>(var_2, var_2))) ^ abs(~vec4<i32>(var_5, var_8.x, 1583i, var_5)), !(!vec4<bool>(global0[_wgslsmith_index_u32(var_6.a.x, 15u)], var_3.d, true, false))));
}

