struct Struct_1 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5>;

var<private> global1: array<i32, 6>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(427f + _wgslsmith_f_op_f32(round(1027f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-1320f)), _wgslsmith_f_op_f32(trunc(-606f))))))));
    global1 = array<i32, 6>();
    var var_1 = 1273f;
    var var_2 = u_input.a.wzx;
    return reverseBits(reverseBits(vec4<i32>(u_input.b, 17955i, _wgslsmith_clamp_i32(u_input.b, u_input.b, u_input.c.x), -1i) | vec4<i32>(u_input.c.x, u_input.c.x, -1i, 13573i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: i32, arg_3: vec3<u32>) -> vec3<u32> {
    var var_0 = ~(_wgslsmith_mult_u32(1u, arg_3.x) ^ 128399u) <= _wgslsmith_sub_u32(66052u, 26491u);
    global0 = array<Struct_1, 5>();
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1023f)), global0[_wgslsmith_index_u32(reverseBits(~(~2226u) ^ _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_3.x, u_input.a.x, arg_1.a.x), _wgslsmith_add_vec3_u32(vec3<u32>(arg_3.x, 42570u, arg_1.a.x), vec3<u32>(6769u, u_input.a.x, 114707u)))), 5u)], Struct_1(_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.a.x, u_input.a.x, 0u), vec3<u32>(1u, arg_1.a.x, arg_1.a.x)), u_input.a.wwy), arg_1.b), u_input.a & u_input.a, arg_1);
    global1 = array<i32, 6>();
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.a, _wgslsmith_f_op_f32(-var_1.a), any(arg_0.zy)))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(firstLeadingBit(var_1.e.a.xx), vec2<u32>(u_input.a.x, arg_1.a.x) << (var_1.d.zz % vec2<u32>(32u))) & abs(arg_3.xx), ~_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(arg_1.a.xz, vec2<u32>(u_input.a.x, u_input.a.x)), ~vec2<u32>(59126u, arg_1.a.x))), 5u)], var_1.b, ~vec4<u32>(1u, _wgslsmith_dot_vec4_u32(var_1.d, vec4<u32>(u_input.a.x, var_1.e.a.x, 4294967295u, 1u)), arg_1.a.x, _wgslsmith_mult_u32(0u, 56198u)) << (reverseBits(var_1.d) % vec4<u32>(32u)), arg_1);
    return ~_wgslsmith_clamp_vec3_u32(vec3<u32>(~arg_3.x, arg_1.a.x, 0u), abs(countOneBits(~arg_1.a)), vec3<u32>(58829u, ~max(0u, 58078u), ~(~58373u)));
}

fn func_2(arg_0: vec4<i32>, arg_1: i32, arg_2: i32) -> Struct_1 {
    let var_0 = Struct_1(~vec3<u32>(~(~1u), 1u, 48156u), ~u_input.b != 1i);
    let var_1 = Struct_2(133f, Struct_1(~var_0.a, !any(!vec3<bool>(var_0.b, var_0.b, var_0.b))), Struct_1(vec3<u32>(0u, 4294967295u, u_input.a.x) & ~(var_0.a >> (vec3<u32>(4294967295u, 9397u, 17961u) % vec3<u32>(32u))), any(!(!vec3<bool>(var_0.b, var_0.b, var_0.b)))), ~vec4<u32>(4294967295u, u_input.a.x, ~var_0.a.x, ~_wgslsmith_dot_vec2_u32(var_0.a.yz, vec2<u32>(u_input.a.x, u_input.a.x))), global0[_wgslsmith_index_u32(abs(~_wgslsmith_clamp_u32(var_0.a.x, u_input.a.x, var_0.a.x)), 5u)]);
    global1 = array<i32, 6>();
    let var_2 = Struct_1(_wgslsmith_sub_vec3_u32(select(_wgslsmith_mod_vec3_u32(var_1.e.a, vec3<u32>(0u, var_1.e.a.x, var_1.c.a.x)), func_3(vec3<bool>(var_1.b.b, true, false), Struct_1(u_input.a.ywy, var_0.b), -27870i, var_1.b.a), var_0.b) >> (firstTrailingBit(vec3<u32>(u_input.a.x, 3546u, var_0.a.x)) % vec3<u32>(32u)), u_input.a.yzz), true);
    let var_3 = firstTrailingBit(global1[_wgslsmith_index_u32(94414u, 6u)]);
    return Struct_1(vec3<u32>(4294967295u, var_2.a.x, countOneBits(abs(4294967295u))), false || select(select(all(vec4<bool>(true, false, true, false)), true, select(false, var_2.b, var_0.b)), !(var_1.a > var_1.a), false));
}

fn func_4(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_1) -> f32 {
    let var_0 = Struct_2(arg_0, func_2(_wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(-2147483647i, arg_1.x, global1[_wgslsmith_index_u32(u_input.a.x, 6u)], -27714i)), -abs(u_input.c), reverseBits(u_input.c)), 2147483647i, arg_1.x), arg_2, _wgslsmith_clamp_vec4_u32(u_input.a, u_input.a, select(u_input.a, vec4<u32>(28448u, 1u, u_input.a.x, 32514u), all(vec4<bool>(false, true, true, arg_2.b))) & u_input.a), func_2(reverseBits(vec4<i32>(arg_1.x, u_input.b, _wgslsmith_add_i32(arg_1.x, 9586i), max(arg_1.x, -29570i))), countOneBits(_wgslsmith_dot_vec2_i32(u_input.c.yw, u_input.c.wx)), 1i));
    global0 = array<Struct_1, 5>();
    var var_1 = var_0;
    var_1 = var_0;
    let var_2 = select(!vec3<bool>(false & all(vec2<bool>(arg_2.b, true)), !(!var_1.e.b), arg_2.b || var_1.e.b), select(select(!(!vec3<bool>(true, false, arg_2.b)), !vec3<bool>(var_1.c.b, var_0.c.b, var_1.e.b), !(!vec3<bool>(false, true, var_0.b.b))), !vec3<bool>(var_0.e.b, all(vec4<bool>(var_0.e.b, arg_2.b, var_1.c.b, false)), false), var_1.b.b), vec3<bool>(true, all(vec4<bool>(var_1.c.b, !var_0.c.b, false, select(true, var_0.c.b, true))), select(true, all(vec3<bool>(true, false, false)), var_0.b.b) != var_0.b.b));
    return 1748f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -985f))), vec3<i32>(-min(26521i, 0i), ~(global1[_wgslsmith_index_u32(4294967295u, 6u)] ^ u_input.b), min(countOneBits(-2147483647i), ~(-25696i))), func_2(func_1(true, global0[_wgslsmith_index_u32(1u, 5u)]) ^ -vec4<i32>(11503i, 1i, -9710i, u_input.c.x), ~u_input.b, 1i))) <= _wgslsmith_f_op_f32(_wgslsmith_div_f32(2336f, 634f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(992f)) - -171f)));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(1533f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(573f, 114f)) - -2355f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(-625f, u_input.c.www, global0[_wgslsmith_index_u32(0u, 5u)])))))), func_2(vec4<i32>(1i, _wgslsmith_clamp_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(15110i, u_input.b)), 2147483647i), u_input.c.x, _wgslsmith_clamp_i32(-2147483647i, 4777i, global1[_wgslsmith_index_u32(56263u << (u_input.a.x % 32u), 6u)])), -abs(-56870i), 0i), func_2((abs(vec4<i32>(0i, u_input.c.x, u_input.b, 2147483647i)) << (_wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), u_input.a) % vec4<u32>(32u))) & countOneBits(u_input.c << (vec4<u32>(33581u, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), _wgslsmith_sub_i32(~1i, _wgslsmith_dot_vec2_i32(~u_input.c.wz, _wgslsmith_div_vec2_i32(vec2<i32>(u_input.c.x, 1i), vec2<i32>(2147483647i, 3168i)))), ~(~_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(u_input.a.x, 6u)], -1i))), firstTrailingBit(reverseBits(vec4<u32>(u_input.a.x, 181u, 49989u, u_input.a.x) & ~vec4<u32>(5438u, 48558u, 1u, u_input.a.x))), global0[_wgslsmith_index_u32(u_input.a.x, 5u)]);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -149f, -127f)) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(933f, var_1.a, var_1.a), vec3<f32>(-321f, var_1.a, var_1.a), vec3<bool>(var_1.e.b, true, false))))))));
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    let var_3 = Struct_2(1000f, global0[_wgslsmith_index_u32(~var_1.b.a.x, 5u)], func_2(_wgslsmith_div_vec4_i32(-(vec4<i32>(31758i, 51533i, -1i, global1[_wgslsmith_index_u32(u_input.a.x, 6u)]) ^ vec4<i32>(u_input.b, -2147483647i, u_input.b, u_input.c.x)), min(_wgslsmith_sub_vec4_i32(u_input.c, u_input.c), vec4<i32>(1829i, u_input.c.x, u_input.c.x, 553i))), global1[_wgslsmith_index_u32(28970u, 6u)], -global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, 1u), 6u)]), select(~(~vec4<u32>(67092u, 0u, 64291u, u_input.a.x) ^ var_1.d), ~reverseBits(~vec4<u32>(29797u, 4294967295u, u_input.a.x, u_input.a.x)), all(select(select(vec2<bool>(var_1.e.b, false), vec2<bool>(var_1.b.b, true), vec2<bool>(false, false)), !vec2<bool>(var_1.b.b, var_1.b.b), vec2<bool>(false, true)))), Struct_1(vec3<u32>(abs(30173u), ~(var_1.b.a.x | 0u), 0u), any(vec3<bool>(223f > var_2.x, !var_1.b.b, true))));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1044f * var_2.x))) + _wgslsmith_f_op_f32(-var_1.a));
    var var_5 = Struct_1(countOneBits(abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(4115u, 0u, 1u), vec3<u32>(var_1.b.a.x, 6118u, var_1.e.a.x), abs(var_3.e.a)))), var_3.c.b);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c.x);
}

