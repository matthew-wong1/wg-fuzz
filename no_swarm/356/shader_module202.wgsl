struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec3<f32>,
    d: i32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1) -> vec4<i32> {
    var var_0 = 30953u;
    let var_1 = select(!vec3<bool>(arg_1.a, true, true), vec3<bool>(false, true, !((u_input.a <= arg_1.b.x) || all(vec4<bool>(true, false, arg_1.a, arg_1.a)))), !vec3<bool>(false, !arg_1.a, select(arg_1.a || true, any(vec4<bool>(false, true, arg_1.a, arg_1.a)), false || arg_1.a)));
    var_0 = u_input.b;
    var_0 = u_input.b;
    var var_2 = abs(-max(vec4<i32>(u_input.c, _wgslsmith_add_i32(-20092i, -41510i), arg_1.b.x << (u_input.b % 32u), firstLeadingBit(-5192i)), vec4<i32>(2147483647i, arg_1.d, -2147483647i, reverseBits(u_input.c))));
    return vec4<i32>(-1i, -countOneBits(i32(-1i) * -11824i), reverseBits(~_wgslsmith_sub_i32(-1i, _wgslsmith_div_i32(u_input.a, arg_1.d))), var_2.x);
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -269f), 742f);
    var_0 = _wgslsmith_f_op_f32(floor(1142f));
    let var_1 = arg_1;
    var var_2 = reverseBits(var_1.b);
    var var_3 = abs((vec4<i32>(4543i, var_2.x & 2147483647i, var_2.x, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.b.x, var_2.x, -2147483647i), vec3<i32>(u_input.a, -2147483647i, 69748i))) ^ func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, -206f)), arg_1)) << ((_wgslsmith_mult_vec4_u32(~vec4<u32>(0u, 4294967295u, u_input.b, u_input.b), firstLeadingBit(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b))) ^ _wgslsmith_add_vec4_u32(~vec4<u32>(83463u, 1u, u_input.b, 4294967295u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 0u, 1u, 4294967295u), vec4<u32>(u_input.b, u_input.b, u_input.b, 25699u)))) % vec4<u32>(32u)));
    return select(select(select(vec3<bool>(true, true, false), !select(vec3<bool>(arg_1.a, false, arg_1.a), vec3<bool>(true, var_1.a, arg_1.a), false), select(vec3<bool>(true, var_1.a, true), !vec3<bool>(var_1.a, arg_1.a, arg_1.a), arg_1.a)), vec3<bool>(arg_1.a, any(vec4<bool>(var_1.a, arg_1.a, var_1.a, false)) == any(vec3<bool>(false, var_1.a, var_1.a)), !var_1.a), !vec3<bool>(arg_1.a, arg_1.a, 1708f > arg_1.e.x)), select(vec3<bool>(arg_1.a || true, true, false), vec3<bool>(true, false, select(arg_1.a, arg_1.a && true, all(vec4<bool>(false, true, false, false)))), false), true);
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: bool) -> vec4<bool> {
    var var_0 = 61203i;
    var_0 = 1i;
    var var_1 = Struct_3(Struct_2(select(vec3<bool>(arg_1.c.x < arg_1.e.x, !arg_2, true), vec3<bool>(!arg_1.a, true, false), arg_1.a), arg_1, arg_1, false), _wgslsmith_mod_vec3_i32(firstTrailingBit(~vec3<i32>(36275i, u_input.a, 1i)), vec3<i32>(countOneBits(0i), _wgslsmith_add_i32(-1i, u_input.a), arg_1.d) & vec3<i32>(u_input.a, _wgslsmith_sub_i32(u_input.a, u_input.a), 1i)));
    let var_2 = !func_2(arg_0.wy, var_1.a.b);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-2818f, 316f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -825f) * _wgslsmith_f_op_f32(arg_1.c.x * arg_1.e.x)))) + _wgslsmith_f_op_f32(f32(-1f) * -631f)));
    return !select(!(!select(vec4<bool>(true, false, false, arg_1.a), vec4<bool>(false, var_1.a.c.a, true, arg_2), vec4<bool>(false, false, arg_2, false))), select(select(vec4<bool>(arg_2, var_1.a.a.x, true, false), vec4<bool>(arg_1.a, false, false, arg_1.a), vec4<bool>(arg_1.a, false, true, var_2.x)), !(!vec4<bool>(arg_2, var_2.x, false, false)), select(vec4<bool>(arg_1.a, arg_1.a, false, true), select(vec4<bool>(var_1.a.d, false, false, var_1.a.d), vec4<bool>(var_2.x, arg_2, arg_1.a, true), vec4<bool>(var_1.a.d, false, true, false)), u_input.b != u_input.b)), select(vec4<bool>(true, true, all(vec4<bool>(true, true, false, var_2.x)), arg_2), vec4<bool>(!var_2.x, var_1.a.b.a, true, var_1.a.a.x), !select(vec4<bool>(var_1.a.c.a, false, var_1.a.c.a, false), vec4<bool>(arg_1.a, arg_2, true, var_2.x), vec4<bool>(arg_2, arg_1.a, false, true))));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: f32, arg_3: vec4<bool>) -> f32 {
    let var_0 = select(vec2<i32>(~(21789i & arg_0.a.b.d), max(-u_input.c, u_input.a)) & ~abs(vec2<i32>(-34854i, u_input.a)), vec2<i32>(u_input.a, arg_0.a.b.d ^ (~arg_0.b.x | 1i)), !vec2<bool>(!arg_3.x, true));
    var var_1 = reverseBits(abs(_wgslsmith_mod_vec3_i32(arg_0.b, vec3<i32>(_wgslsmith_sub_i32(26302i, arg_0.a.c.b.x), -1i, -arg_0.a.c.d))));
    var_1 = _wgslsmith_sub_vec3_i32(arg_0.b, -vec3<i32>(min(arg_0.b.x, var_1.x), -18528i, 0i));
    var_1 = vec3<i32>(var_0.x, var_1.x, 15730i);
    let var_2 = vec4<u32>(4294967295u, 1u, reverseBits(u_input.b), 41097u);
    return _wgslsmith_f_op_f32(-1142f * _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.c.c.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(161f - 1087f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(608f, _wgslsmith_f_op_f32(f32(-1f) * -535f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1639f, -535f)), vec2<f32>(-1009f, -854f)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(355f, 1739f), vec2<f32>(1119f, 619f)))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), false))))) * vec2<f32>(_wgslsmith_f_op_f32(func_4(Struct_3(Struct_2(vec3<bool>(true, false, true), Struct_1(false, vec2<i32>(u_input.c, u_input.a), vec3<f32>(230f, -1017f, 1453f), 1i, vec4<f32>(668f, -1665f, -1013f, 718f)), Struct_1(true, vec2<i32>(2147483647i, u_input.c), vec3<f32>(907f, -712f, -516f), -15903i, vec4<f32>(172f, 810f, 275f, 218f)), true), vec3<i32>(u_input.a, u_input.a, u_input.c)), 1u > countOneBits(u_input.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-681f * 393f) - _wgslsmith_f_op_f32(f32(-1f) * -1012f)), !func_1(vec4<f32>(-1000f, -121f, -881f, 532f), Struct_1(false, vec2<i32>(1i, 2147483647i), vec3<f32>(635f, -620f, -805f), 1i, vec4<f32>(-1513f, 276f, -195f, 796f)), false))), _wgslsmith_f_op_f32(func_4(Struct_3(Struct_2(vec3<bool>(true, true, true), Struct_1(true, vec2<i32>(34537i, u_input.c), vec3<f32>(-2160f, -685f, 1029f), -40865i, vec4<f32>(-419f, -1000f, -540f, 647f)), Struct_1(true, vec2<i32>(8967i, 1i), vec3<f32>(389f, 378f, 388f), -14498i, vec4<f32>(-2287f, -783f, 325f, -3424f)), false), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, -2147483647i, u_input.c), vec3<i32>(-43993i, -1i, 2147483647i))), false, _wgslsmith_f_op_f32(f32(-1f) * -753f), vec4<bool>(false, true, true, true)))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(var_0.x, -2276f)), _wgslsmith_f_op_f32(max(var_0.x, -491f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(225f - var_0.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0.x, var_0.x))))))));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_3(Struct_2(vec3<bool>(false, true, false), Struct_1(false, vec2<i32>(-16353i, -1i), vec3<f32>(-966f, var_1.x, 873f), 21888i, vec4<f32>(var_0.x, var_1.x, 718f, 940f)), Struct_1(true, vec2<i32>(0i, 9556i), vec3<f32>(var_0.x, var_0.x, 642f), u_input.c, vec4<f32>(var_0.x, -658f, var_0.x, var_0.x)), false), vec3<i32>(u_input.c, u_input.a, 0i)), true, -193f, vec4<bool>(false, false, true, false))) * _wgslsmith_f_op_f32(floor(var_1.x))), -411f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(816f, var_1.x) + vec2<f32>(var_0.x, var_0.x))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1634f, var_0.x))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-276f, 307f))))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1.x, var_1.x))) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(524f, var_0.x))))));
    let var_2 = func_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(189f, -1798f), vec2<f32>(var_0.x, -1987f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_0.x) + vec2<f32>(var_0.x, -653f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.x, -750f), vec2<f32>(845f, -185f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 740f) - vec2<f32>(-1227f, var_0.x)))))), Struct_1(!all(vec2<bool>(true, true)), _wgslsmith_mult_vec2_i32(func_3(vec2<f32>(528f, 1202f), Struct_1(true, vec2<i32>(1i, 28698i), vec3<f32>(var_1.x, 502f, 1082f), -2147483647i, vec4<f32>(951f, var_0.x, var_1.x, 310f))).zy, firstTrailingBit(vec2<i32>(u_input.a, u_input.a))) & (_wgslsmith_sub_vec2_i32(vec2<i32>(29817i, u_input.c), vec2<i32>(0i, -5856i)) << (_wgslsmith_mult_vec2_u32(vec2<u32>(97830u, 1u), vec2<u32>(u_input.b, u_input.b)) % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -1000f, -250f) + vec3<f32>(var_0.x, 470f, var_0.x)), vec3<f32>(1390f, var_1.x, var_1.x), u_input.b < u_input.b)) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-184f, 982f, var_1.x))))), 1i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(-236f, -669f, 1000f, -1485f), vec4<f32>(var_1.x, -215f, -517f, -2821f)), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, 575f, var_0.x, var_1.x), vec4<f32>(1247f, var_1.x, var_0.x, -489f))))))).zy;
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(1000f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), var_0.x))));
    var var_3 = Struct_1(true, ~(~_wgslsmith_mod_vec2_i32(vec2<i32>(-29193i, 0i), abs(vec2<i32>(u_input.a, 38214i)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-121f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x)))), _wgslsmith_f_op_f32(132f + -1181f)), 12219i, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-424f * var_1.x), -141f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(ceil(var_1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1342f, 916f, var_0.x, var_0.x) - vec4<f32>(var_0.x, var_1.x, var_0.x, -698f)))))));
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-521f, 769f));
    var var_4 = -3436i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 480f, var_0.x)) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.e.x, var_0.x, 523f) * var_3.c))))), _wgslsmith_f_op_f32(f32(-1f) * -366f), _wgslsmith_clamp_i32(func_3(_wgslsmith_f_op_vec2_f32(exp2(var_3.e.wx)), Struct_1(var_3.a, -vec2<i32>(31171i, var_3.b.x), _wgslsmith_f_op_vec3_f32(sign(var_3.e.yyw)), _wgslsmith_dot_vec2_i32(var_3.b, var_3.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_3.e.x, -568f, var_3.c.x)))).x, _wgslsmith_dot_vec3_i32(vec3<i32>(-11462i, 2147483647i, 2147483647i) & firstTrailingBit(vec3<i32>(65961i, 22034i, 18860i)), vec3<i32>(min(41536i, var_3.b.x), 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.c, 46127i), vec3<i32>(var_3.b.x, 7242i, u_input.c)))), ~(-1i & _wgslsmith_mod_i32(u_input.a, 0i))));
}

