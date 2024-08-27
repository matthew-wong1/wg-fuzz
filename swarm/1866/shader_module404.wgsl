struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: u32,
    d: vec3<i32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 1> = array<f32, 1>(-1578f);

var<private> global1: i32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: vec2<i32>) -> vec4<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-1616f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-403f - global0[_wgslsmith_index_u32(4294967295u, 1u)]))) > 799f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_1, -647f), vec2<f32>(arg_1, global0[_wgslsmith_index_u32(u_input.c.x, 1u)])))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(1000f, -720f)), -935f))), _wgslsmith_div_u32(_wgslsmith_sub_u32(25930u, 11364u), u_input.c.x), min(~vec3<i32>(0i, max(46902i, -1i), arg_0), vec3<i32>(-2147483647i >> ((u_input.c.x >> (u_input.c.x % 32u)) % 32u), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-37566i, 1i, -2147483647i), vec3<i32>(2147483647i, -6820i, arg_2.x)), max(-34461i, 44755i)), min(-u_input.a, ~arg_0))), all(vec2<bool>(any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true))), _wgslsmith_f_op_f32(-arg_1) == _wgslsmith_div_f32(474f, arg_1))));
    let var_1 = select(!select(!(!vec2<bool>(var_0.e, false)), select(!vec2<bool>(var_0.e, false), !vec2<bool>(false, var_0.a), select(vec2<bool>(false, false), vec2<bool>(var_0.e, var_0.a), vec2<bool>(true, var_0.a))), select(select(vec2<bool>(true, false), vec2<bool>(var_0.a, var_0.e), var_0.e), select(vec2<bool>(false, false), vec2<bool>(var_0.a, false), vec2<bool>(var_0.e, false)), vec2<bool>(true, true))), !select(vec2<bool>(true, false), !select(vec2<bool>(var_0.e, false), vec2<bool>(true, var_0.a), vec2<bool>(false, false)), var_0.a | all(vec4<bool>(true, false, var_0.a, true))), select(select(vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(false, true, var_0.a, false)), true), vec2<bool>(all(vec2<bool>(true, false)), true)), select(select(select(vec2<bool>(var_0.a, var_0.e), vec2<bool>(var_0.a, var_0.e), false), !vec2<bool>(var_0.e, var_0.a), vec2<bool>(true, true)), vec2<bool>(true, var_0.e), select(vec2<bool>(var_0.e, true), !vec2<bool>(var_0.a, var_0.e), !vec2<bool>(var_0.e, var_0.e))), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))));
    let var_2 = _wgslsmith_dot_vec2_i32(u_input.b, min(u_input.b, arg_2)) >> (min(u_input.c.x, ~var_0.c) % 32u);
    global0 = array<f32, 1>();
    var var_3 = var_0;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -885f, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.c | 1u, var_3.c), 1u)], arg_1)));
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: bool) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(func_3(-arg_1, 378f, _wgslsmith_mod_vec2_i32(min(_wgslsmith_mult_vec2_i32(u_input.b, vec2<i32>(48307i, 0i)), vec2<i32>(u_input.b.x, u_input.a) << (vec2<u32>(arg_0, arg_0) % vec2<u32>(32u))), reverseBits(~u_input.b))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~0u, 1u)]), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -455f))), -1403f, _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(arg_0, 1u)])), _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(4294967295u, 1u)])), var_0.x, _wgslsmith_f_op_f32(var_0.x * -494f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1000f, 1074f, global0[_wgslsmith_index_u32(158573u, 1u)], 1071f))) * vec4<f32>(1113f, -1138f, global0[_wgslsmith_index_u32(91799u, 1u)], var_0.x)))), select(vec4<bool>(!arg_2, arg_2 && arg_2, all(vec4<bool>(false, arg_2, false, arg_2)), true), vec4<bool>(global0[_wgslsmith_index_u32(0u, 1u)] <= var_0.x, true, all(vec2<bool>(false, arg_2)), -13877i <= arg_1), vec4<bool>(true, true, true, true)))));
    var var_1 = Struct_1(true, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, 397f), _wgslsmith_f_op_vec2_f32(var_0.xx * var_0.zz), !vec2<bool>(arg_2, true)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_0.yy)) - _wgslsmith_div_vec2_f32(var_0.zz, var_0.yx)) + vec2<f32>(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(22191u, 1u)])), _wgslsmith_f_op_f32(abs(-1000f)))))), u_input.c.x, firstTrailingBit(~(vec3<i32>(-1i) * -vec3<i32>(u_input.a, arg_1, 2147483647i))), all(select(vec4<bool>(true, true, false, !arg_2), select(select(vec4<bool>(arg_2, arg_2, false, false), vec4<bool>(arg_2, arg_2, arg_2, true), true), select(vec4<bool>(false, true, true, true), vec4<bool>(arg_2, arg_2, true, arg_2), arg_2), select(vec4<bool>(false, arg_2, arg_2, true), vec4<bool>(arg_2, true, arg_2, true), vec4<bool>(arg_2, arg_2, true, true))), any(vec3<bool>(true, true, true)))));
    let var_2 = Struct_1(!arg_2, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_0.yw), var_0.yz)), u_input.c.x, ~(vec3<i32>(u_input.a & 1i, ~var_1.d.x, min(var_1.d.x, 1i)) >> (~(~vec3<u32>(1u, u_input.c.x, 16003u)) % vec3<u32>(32u))), true);
    var var_3 = var_1.b.x;
    return any(select(vec2<bool>(any(vec4<bool>(false, var_1.e, var_1.a, var_1.e)), true && arg_2), !vec2<bool>(var_1.e, !var_2.a), false));
}

fn func_1() -> Struct_1 {
    let var_0 = all(select(vec3<bool>(false, all(vec3<bool>(false, false, false)) == func_2(u_input.c.x, u_input.b.x, true), any(vec3<bool>(false, true, true))), vec3<bool>(all(vec3<bool>(false, true, false)), all(vec2<bool>(false, true)), _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(29674u, 1u)])) < global0[_wgslsmith_index_u32(~4294967295u, 1u)]), true));
    return Struct_1(var_0, vec2<f32>(-249f, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(-u_input.a, _wgslsmith_f_op_f32(f32(-1f) * -1933f), -u_input.b)).x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(select(-1142f, global0[_wgslsmith_index_u32(4764u, 1u)], true))))), _wgslsmith_clamp_u32(u_input.c.x, select(0u, _wgslsmith_add_u32(~u_input.c.x, ~u_input.c.x), var_0), u_input.c.x), -vec3<i32>(~u_input.a, 1i, u_input.a), true);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = arg_1.b.x;
    let var_1 = select(select(vec4<bool>(!func_2(arg_1.c, arg_1.d.x, false), false, true, true), select(vec4<bool>(true, func_2(0u, -1i, arg_1.a), func_1().a, !arg_1.a), !(!vec4<bool>(arg_1.a, false, false, true)), arg_2.d.x == ~0i), vec4<bool>(arg_2.a, false, arg_3.e, arg_3.e)), select(select(select(!vec4<bool>(true, false, arg_1.a, true), !vec4<bool>(true, false, arg_1.e, arg_2.e), arg_3.a || arg_0.e), vec4<bool>(!arg_3.e, arg_0.e, false, all(vec4<bool>(arg_0.e, true, true, arg_2.e))), !vec4<bool>(false, arg_1.e, arg_1.e, arg_2.a)), select(select(vec4<bool>(true, arg_2.a, true, arg_2.e), vec4<bool>(arg_3.e, arg_1.e, arg_2.a, true), !vec4<bool>(true, arg_1.e, false, false)), vec4<bool>(arg_3.a || false, arg_3.e, false | arg_0.e, arg_1.e), arg_0.a), arg_0.c < 1u), true);
    var_0 = 755f;
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-159f, -877f, arg_2.b.x, 456f) - vec4<f32>(global0[_wgslsmith_index_u32(13670u, 1u)], arg_3.b.x, -292f, global0[_wgslsmith_index_u32(arg_1.c, 1u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2329f, 664f, -1020f, arg_0.b.x)))), vec4<f32>(_wgslsmith_f_op_f32(max(1000f, -1000f)), _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(10121u, 1u)])), _wgslsmith_f_op_f32(arg_3.b.x * -1583f), _wgslsmith_f_op_f32(sign(841f))))), vec4<f32>(-217f, _wgslsmith_f_op_f32(-arg_2.b.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(956f, _wgslsmith_f_op_f32(select(arg_0.b.x, 109f, arg_1.e)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1767f))))), !var_1));
    var var_3 = _wgslsmith_f_op_f32(ceil(-295f));
    return u_input.c.x;
}

fn func_5(arg_0: u32, arg_1: u32, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = !vec3<bool>(true, (func_1().d.x < 1i) || false, true);
    let var_1 = arg_2;
    let var_2 = func_1();
    var var_3 = ~vec3<i32>(min(u_input.b.x, _wgslsmith_add_i32(var_2.d.x, i32(-1i) * -59177i)), 1i, _wgslsmith_mult_i32(abs(~21744i), _wgslsmith_sub_i32(u_input.b.x, -1i)));
    var var_4 = _wgslsmith_dot_vec3_i32(-var_2.d, _wgslsmith_mod_vec3_i32(-select(min(vec3<i32>(u_input.b.x, -5627i, var_3.x), vec3<i32>(var_2.d.x, -2147483647i, var_2.d.x)), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_2.d.x, var_2.d.x, -45466i), vec3<i32>(var_3.x, var_2.d.x, u_input.a), var_2.d), select(var_0, var_0, vec3<bool>(true, var_0.x, true))), var_2.d));
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    var var_1 = Struct_1(global0[_wgslsmith_index_u32(firstTrailingBit(~firstLeadingBit(25593u)), 1u)] != -519f, vec2<f32>(_wgslsmith_f_op_f32(-1123f * _wgslsmith_f_op_f32(f32(-1f) * -389f)), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c.x, 0u | _wgslsmith_mult_u32(u_input.c.x, 774u)), 1u)]), ~(~select(u_input.c.x & 60972u, 47389u, select(false, true, true))), max(min(abs(vec3<i32>(-58326i, u_input.b.x, -2147483647i)), vec3<i32>(u_input.a, 2147483647i, 26557i) >> (vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x) % vec3<u32>(32u))), countOneBits(vec3<i32>(u_input.a, u_input.b.x, u_input.a) | vec3<i32>(u_input.b.x, u_input.b.x, 2147483647i))) << (vec3<u32>(u_input.c.x, u_input.c.x, ~_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(u_input.c.x, 14197u, 70056u, u_input.c.x))) % vec3<u32>(32u)), true);
    var_1 = func_5(1u << (func_4(func_1(), func_1(), func_1(), func_1()) % 32u), firstLeadingBit(reverseBits(_wgslsmith_div_u32(u_input.c.x, u_input.c.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1.b.x, 629f), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-586f, global0[_wgslsmith_index_u32(17551u, 1u)]))))) + _wgslsmith_f_op_vec2_f32(min(var_1.b, var_1.b))), _wgslsmith_f_op_vec2_f32(-var_1.b)));
    var_1 = func_1();
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.x, var_1.b.x, var_1.b.x) - vec3<f32>(var_1.b.x, 1000f, var_1.b.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(var_1.c, 1u)], var_1.b.x, 1418f) + vec3<f32>(274f, var_1.b.x, var_1.b.x))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(2359f, global0[_wgslsmith_index_u32(43856u, 1u)], 772f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1873f, global0[_wgslsmith_index_u32(57793u, 1u)], 1132f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, var_1.b.x, global0[_wgslsmith_index_u32(u_input.c.x, 1u)])))))));
    let var_3 = Struct_1(true, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(var_1.b.x + 806f), var_1.b.x), vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c.x, 1u)] + -1361f), _wgslsmith_div_f32(var_1.b.x, global0[_wgslsmith_index_u32(u_input.c.x, 1u)])))))), _wgslsmith_add_u32(func_5(u_input.c.x, ~u_input.c.x, vec2<f32>(global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(var_1.c, 1u)])).c << (1u % 32u), u_input.c.x), vec3<i32>(33062i, 13483i, u_input.a), all(vec2<bool>(var_1.e, func_2(u_input.c.x, 1i, var_1.e))));
    global0 = array<f32, 1>();
    global1 = 1i;
    global1 = -(~func_1().d.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(min(_wgslsmith_div_vec2_u32(u_input.c.xx, abs(u_input.c.yw)), ~vec2<u32>(46881u, var_1.c) | (u_input.c.zz << (u_input.c.xx % vec2<u32>(32u)))), u_input.c.yw));
}

