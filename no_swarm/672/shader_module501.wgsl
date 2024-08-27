struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: f32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 1>;

var<private> global1: bool = true;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<bool>, arg_1: u32) -> vec4<u32> {
    var var_0 = vec2<u32>(82201u, 45016u);
    var var_1 = !select(!vec2<bool>(!arg_0.x, u_input.a.x <= 2147483647i), !arg_0.yx, true != !(arg_0.x || arg_0.x));
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    var var_4 = vec4<f32>(1108f, _wgslsmith_f_op_f32(min(306f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f + -772f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(471f - _wgslsmith_f_op_f32(426f - 209f)), -341f, arg_0.x)), _wgslsmith_f_op_f32(326f + _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1198f)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    return _wgslsmith_clamp_vec4_u32(~min(~vec4<u32>(var_0.x, var_0.x, arg_1, arg_1), vec4<u32>(arg_1, 34459u, arg_1, arg_1 << (arg_1 % 32u))), _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(~0u, ~var_0.x), _wgslsmith_mod_u32(1u, 10890u), var_0.x, ~(~arg_1)), ~_wgslsmith_div_vec4_u32(vec4<u32>(39734u, 4294967295u, arg_1, 9032u), vec4<u32>(26996u, var_0.x, 21654u, arg_1))), _wgslsmith_mult_vec4_u32(vec4<u32>(abs(countOneBits(var_0.x)), _wgslsmith_dot_vec3_u32(~vec3<u32>(37706u, var_0.x, 11849u), ~vec3<u32>(var_0.x, 1u, 96674u)), _wgslsmith_mod_u32(arg_1, arg_1) & (var_0.x << (0u % 32u)), var_0.x), ~(vec4<u32>(106651u, var_0.x, 80826u, 67627u) & vec4<u32>(arg_1, 22298u, 4168u, 4294967295u))));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: u32, arg_3: Struct_1) -> u32 {
    global1 = arg_1.x;
    let var_0 = u_input.a;
    var var_1 = Struct_1(_wgslsmith_sub_vec4_u32(~arg_3.a ^ ~(~arg_3.a), ~arg_3.a), func_3(select(select(arg_0.wzx, !vec3<bool>(true, arg_0.x, false), !vec3<bool>(false, arg_0.x, arg_1.x)), select(!vec3<bool>(arg_0.x, false, arg_0.x), !arg_1, true), arg_1.x), ~_wgslsmith_mult_u32(arg_2, 93279u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_3.c, arg_3.c)), 963f, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(432f, arg_3.c.x), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(global0[_wgslsmith_index_u32(arg_2, 1u)], global0[_wgslsmith_index_u32(arg_2, 1u)]), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(arg_3.a, arg_3.a), 1u)], true)))), vec2<f32>(arg_3.d, _wgslsmith_f_op_f32(-arg_3.c.x))));
    var var_2 = any(vec3<bool>(!all(vec4<bool>(arg_1.x, false, arg_0.x, false)), true != !all(arg_0), !any(vec2<bool>(false, false))));
    let var_3 = countOneBits(var_1.b.wyz);
    return _wgslsmith_div_u32(firstTrailingBit(4294967295u) | 17920u, _wgslsmith_add_u32(4294967295u, ~_wgslsmith_sub_u32(1u, var_3.x))) ^ 1u;
}

fn func_1() -> vec2<bool> {
    let var_0 = Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 18936u, ~(~68476u), 0u), _wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(~0u, ~76930u, abs(1u), func_2(vec4<bool>(true, false, false, true), vec3<bool>(true, true, true), 1u, Struct_1(vec4<u32>(33904u, 4294967295u, 0u, 0u), vec4<u32>(34654u, 1u, 44209u, 1u), vec4<f32>(-1483f, -594f, 156f, 103f), -1912f, vec2<f32>(-545f, -1000f)))), vec4<u32>(1u, 1u, 1u, 1u))), ~((func_3(vec3<bool>(true, false, true), 28934u) >> (vec4<u32>(13259u, 53183u, 14016u, 4294967295u) % vec4<u32>(32u))) << (vec4<u32>(~0u, _wgslsmith_add_u32(0u, 3346u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 5144u, 1u), vec3<u32>(4294967295u, 4294967295u, 4294967295u)), 61122u) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -734f, 1744f, 740f) * vec4<f32>(480f, -1573f, -1065f, 1534f)), _wgslsmith_div_vec4_f32(vec4<f32>(757f, -415f, -1740f, 1507f), vec4<f32>(-496f, -243f, 869f, -807f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-471f, -1222f, 1853f, -626f) * vec4<f32>(889f, 1000f, 500f, 1865f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-664f)) - _wgslsmith_div_f32(-1076f, 103f))))), global0[_wgslsmith_index_u32(~4294967295u, 1u)]);
    global1 = true;
    let var_1 = abs(vec4<i32>(_wgslsmith_dot_vec3_i32(~(-vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x)), -vec3<i32>(-2660i, u_input.a.x, 13486i)), countOneBits(firstLeadingBit(~2147483647i)), u_input.a.x, u_input.a.x));
    var var_2 = _wgslsmith_f_op_f32(max(var_0.c.x, 190f));
    let var_3 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d)), _wgslsmith_f_op_f32(-var_0.c.x))));
    return select(select(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), false), all(vec2<bool>(false, false))), select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true)), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)), vec2<bool>(true, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = var_0.x && var_0.x;
    var var_2 = var_0.x;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(0u, 1u)] + global0[_wgslsmith_index_u32(0u, 1u)]))))));
    global1 = any(select(var_0, !(!(!vec2<bool>(true, var_0.x))), var_0));
    var var_4 = Struct_1(vec4<u32>(38716u, 1u >> (1u % 32u), select(1u, 4294967295u, select(false, var_0.x, var_0.x)) | firstTrailingBit(20036u), reverseBits(min(105071u >> (0u % 32u), 0u))), vec4<u32>(1u, ~_wgslsmith_sub_u32(1u, abs(0u)), 0u, select(17652u, 0u, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1108f, var_3.x, _wgslsmith_f_op_f32(-237f * -1539f), -1482f))), _wgslsmith_f_op_f32(-var_3.x), global0[_wgslsmith_index_u32(~(~1u), 1u)]);
    let var_5 = Struct_1(vec4<u32>(var_4.a.x, ~72235u, var_4.a.x, var_4.a.x), vec4<u32>(4343u, 22488u, firstLeadingBit(~var_4.b.x), ~(~(~59732u))), var_4.c, _wgslsmith_f_op_f32(637f + _wgslsmith_f_op_f32(195f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -653f) - _wgslsmith_f_op_f32(trunc(-845f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_4.d)), _wgslsmith_f_op_f32(f32(-1f) * -365f)), var_4.e.x) - global0[_wgslsmith_index_u32(4294967295u, 1u)]));
    var var_6 = Struct_1(~firstTrailingBit(vec4<u32>(~var_5.a.x, var_5.b.x, _wgslsmith_mod_u32(var_5.a.x, var_4.a.x), _wgslsmith_div_u32(35073u, 27676u))), var_4.b, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -899f)))), _wgslsmith_div_f32(1056f, _wgslsmith_f_op_f32(-var_3.x)), 686f, -1000f), _wgslsmith_f_op_f32(-var_5.d), _wgslsmith_f_op_vec2_f32(round(global0[_wgslsmith_index_u32(2481u ^ _wgslsmith_dot_vec2_u32(var_4.b.zw, select(vec2<u32>(var_4.a.x, 4294967295u), var_5.b.zy, var_0.x)), 1u)])));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(firstLeadingBit(_wgslsmith_mult_i32(u_input.a.x, abs(18957i))), abs(u_input.a.x)), -(-vec4<i32>(u_input.a.x, u_input.a.x, 33509i, -16957i) & _wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(0i, u_input.a.x, 0i, -22839i)), _wgslsmith_mult_vec4_i32(vec4<i32>(-49753i, u_input.a.x, u_input.a.x, -32001i), vec4<i32>(-43610i, 0i, -1i, u_input.a.x)))), _wgslsmith_mult_vec4_u32(var_5.a, var_6.a), 1i, abs(-vec3<i32>(-23996i, -2147483647i, 1571i)));
}

