struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: u32,
    d: vec2<bool>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19> = array<u32, 19>(0u, 1u, 39034u, 4294967295u, 4294967295u, 0u, 0u, 112440u, 21209u, 46748u, 1u, 9901u, 57110u, 28234u, 8690u, 0u, 0u, 103086u, 0u);

var<private> global1: bool = true;

var<private> global2: array<bool, 7>;

var<private> global3: array<f32, 17>;

var<private> global4: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec2<f32>(-653f, 381f), 36905u, 4589u, vec2<bool>(true, false), -1317f), Struct_1(vec2<f32>(349f, -809f), 38818u, 0u, vec2<bool>(false, false), -385f), Struct_1(vec2<f32>(1842f, -1348f), 4294967295u, 1u, vec2<bool>(false, true), 1402f), Struct_1(vec2<f32>(-2115f, -159f), 1u, 28091u, vec2<bool>(false, false), -474f), Struct_1(vec2<f32>(412f, -1000f), 0u, 1u, vec2<bool>(true, false), 179f), Struct_1(vec2<f32>(544f, 197f), 0u, 56768u, vec2<bool>(true, false), -574f), Struct_1(vec2<f32>(2537f, 849f), 327u, 1u, vec2<bool>(false, false), -411f), Struct_1(vec2<f32>(-1551f, 1166f), 20579u, 4294967295u, vec2<bool>(true, true), -579f), Struct_1(vec2<f32>(1451f, -631f), 1u, 59298u, vec2<bool>(false, false), -1294f), Struct_1(vec2<f32>(-1352f, -294f), 99425u, 1u, vec2<bool>(false, true), 219f));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    let var_0 = arg_0.a;
    global2 = array<bool, 7>();
    let var_1 = ~(-1i);
    var var_2 = _wgslsmith_f_op_f32(arg_0.e + -784f);
    let var_3 = vec2<bool>(!(!(!arg_1.d.x)), _wgslsmith_f_op_f32(step(arg_0.e, arg_2.a.x)) <= -837f);
    return _wgslsmith_mult_i32(abs(1i) & abs(_wgslsmith_div_i32(var_1, -2147483647i)), -25602i >> (arg_1.b % 32u)) ^ -var_1;
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_sub_i32(1i, -min(~func_3(Struct_1(vec2<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 17u)], global3[_wgslsmith_index_u32(u_input.b, 17u)]), global0[_wgslsmith_index_u32(6552u, 19u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 19u)], 19u)], vec2<bool>(true, true), 941f), Struct_1(vec2<f32>(-361f, 222f), u_input.a.x, 30432u, vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.b, 7u)]), global3[_wgslsmith_index_u32(50381u, 17u)]), global4[_wgslsmith_index_u32(u_input.b, 10u)]), func_3(global4[_wgslsmith_index_u32(max(u_input.b, 13973u), 10u)], global4[_wgslsmith_index_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(65635u, 19u)], global0[_wgslsmith_index_u32(27094u, 19u)]), 10u)], Struct_1(vec2<f32>(global3[_wgslsmith_index_u32(40u, 17u)], -1200f), 1u, global0[_wgslsmith_index_u32(u_input.b, 19u)], vec2<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 19u)], 7u)], global2[_wgslsmith_index_u32(u_input.b, 7u)]), global3[_wgslsmith_index_u32(26461u, 17u)]))));
    var var_1 = _wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(u_input.a.wyz, u_input.a.zxx), _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(u_input.b, 19u)], firstTrailingBit(~18068u))), 1u);
    global3 = array<f32, 17>();
    let var_2 = global4[_wgslsmith_index_u32(u_input.b, 10u)];
    return var_2.b;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: bool, arg_3: Struct_1) -> vec4<f32> {
    global4 = array<Struct_1, 10>();
    let var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(arg_1, 17u)]) * _wgslsmith_f_op_f32(arg_3.a.x * -532f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1487f + arg_3.a.x))), arg_0.e), 23677u, max(_wgslsmith_add_u32((1u << (u_input.b % 32u)) & ~1u, ~(~arg_3.c)), 4294967295u), select(arg_0.d, !vec2<bool>(!arg_0.d.x, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 19u)], 7u)] & true), arg_2), -2252f);
    let var_1 = !select(select(select(vec3<bool>(true, var_0.d.x, true), vec3<bool>(true, true, true), true), !vec3<bool>(arg_0.d.x, false, arg_2), select(select(vec3<bool>(var_0.d.x, arg_0.d.x, true), vec3<bool>(false, arg_3.d.x, arg_0.d.x), arg_0.d.x), select(vec3<bool>(arg_3.d.x, arg_3.d.x, arg_3.d.x), vec3<bool>(true, true, var_0.d.x), true), select(false, true, false))), select(vec3<bool>(true, true, true), !select(vec3<bool>(arg_0.d.x, true, true), vec3<bool>(var_0.d.x, arg_2, global2[_wgslsmith_index_u32(var_0.c, 7u)]), vec3<bool>(false, arg_2, global2[_wgslsmith_index_u32(4294967295u, 7u)])), select(!vec3<bool>(var_0.d.x, arg_0.d.x, true), vec3<bool>(false, arg_2, false), !vec3<bool>(false, arg_0.d.x, true))), all(!vec2<bool>(global2[_wgslsmith_index_u32(1u, 7u)], true)));
    var var_2 = ~firstLeadingBit(-vec4<i32>(1i, -1i, 47668i, -1i));
    global3 = array<f32, 17>();
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.b, global0[_wgslsmith_index_u32(4294967295u, 19u)], arg_3.b, 4294967295u) << (~vec4<u32>(56127u, arg_3.c, global0[_wgslsmith_index_u32(arg_3.c, 19u)], arg_1) % vec4<u32>(32u)), vec4<u32>(arg_1, _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(1u, 19u)], 1u), ~0u, ~1u)), 17u)], _wgslsmith_f_op_f32(sign(-460f)), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~(global0[_wgslsmith_index_u32(1u, 19u)] & 32411u), 17u)]), _wgslsmith_div_f32(413f, _wgslsmith_f_op_f32(-arg_0.e))));
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_4(Struct_1(vec2<f32>(global3[_wgslsmith_index_u32(~(~24660u), 17u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.a.x, 17u)] * global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(31009u, 19u)], 19u)], 17u)]))), 21331u, 1u, vec2<bool>(!(!global2[_wgslsmith_index_u32(u_input.b, 7u)]), all(vec4<bool>(false, global2[_wgslsmith_index_u32(0u, 7u)], false, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(func_2(), 17u)])) - _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 19u)], 17u)], 1189f))))), _wgslsmith_mult_u32(u_input.a.x, 55534u ^ u_input.a.x), all(!(!vec3<bool>(global2[_wgslsmith_index_u32(0u, 7u)], global2[_wgslsmith_index_u32(1u, 7u)], global2[_wgslsmith_index_u32(0u, 7u)]))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(311f, global3[_wgslsmith_index_u32(0u, 17u)]), _wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(72654u, 17u)], 398f) - vec2<f32>(-511f, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 19u)], 17u)]))) - vec2<f32>(1024f, _wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 19u)], 17u)])))), u_input.a.x, global0[_wgslsmith_index_u32(86923u, 19u)], vec2<bool>(-890f > _wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(1987u, 17u)])), global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(firstLeadingBit(select(6201u, u_input.a.x, global2[_wgslsmith_index_u32(1u, 7u)])), 19u)], 7u)]), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 17u)] + global3[_wgslsmith_index_u32(53061u, 17u)])), global3[_wgslsmith_index_u32(0u, 17u)])))));
    let var_1 = global4[_wgslsmith_index_u32(min(_wgslsmith_dot_vec3_u32(u_input.a.zzz, ~u_input.a.zww), _wgslsmith_mod_u32(u_input.a.x, 10847u)), 10u)];
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -396f), _wgslsmith_f_op_f32(-2039f * _wgslsmith_f_op_f32(-769f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(var_0.x)), -1365f)))));
    global0 = array<u32, 19>();
    let var_3 = var_1.e;
    return _wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(u_input.a.x, 17u)], _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(818f - _wgslsmith_f_op_f32(1000f - var_2)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-513f)) + _wgslsmith_f_op_f32(-1436f + -1201f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2))))), global2[_wgslsmith_index_u32(firstTrailingBit(u_input.b), 7u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 17u)], _wgslsmith_f_op_f32(1181f - _wgslsmith_f_op_f32(func_1()))), _wgslsmith_add_u32(u_input.a.x, ~_wgslsmith_add_u32(~global0[_wgslsmith_index_u32(1u, 19u)], func_2())), global0[_wgslsmith_index_u32(1u, 19u)], vec2<bool>(true, (_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(0u, 17u)] + 2311f) != -499f) == (global2[_wgslsmith_index_u32(~54333u, 7u)] || global2[_wgslsmith_index_u32(4294967295u, 7u)])), _wgslsmith_f_op_f32(func_1()));
    let var_1 = vec4<f32>(-1551f, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(countOneBits(~101470u), 0u), 17u)]), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.e))), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(var_0.c, 17u)] * -1000f), all(!select(vec2<bool>(false, false), var_0.d, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.b, 19u)], 7u)])))), _wgslsmith_f_op_f32(sign(-1154f)));
    var var_2 = global4[_wgslsmith_index_u32(~53998u, 10u)];
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(var_2.e)))), global3[_wgslsmith_index_u32(var_2.c, 17u)])), var_2.c, 51048u, vec2<bool>(var_0.d.x, global3[_wgslsmith_index_u32(~(~var_0.c), 17u)] >= var_0.e), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.a.x))));
    let var_4 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.a * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(var_3.c, 17u)], var_0.a.x)))), var_3.a), ~(~select(min(var_2.b, var_3.b), _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.b, 4071u, 17447u, var_2.c)), true)), u_input.b, vec2<bool>(var_3.d.x, any(vec2<bool>(true == var_3.d.x, all(vec3<bool>(false, var_0.d.x, false))))), _wgslsmith_f_op_f32(f32(-1f) * -1165f));
    var var_5 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec4_f32(func_4(Struct_1(vec2<f32>(var_2.a.x, 439f), var_2.b, global0[_wgslsmith_index_u32(13119u, 19u)], vec2<bool>(false, var_2.d.x), -199f), u_input.a.x, var_0.d.x, var_4)).yw * _wgslsmith_f_op_vec2_f32(var_4.a + vec2<f32>(global3[_wgslsmith_index_u32(var_2.b, 17u)], var_3.a.x))))), var_3.c, max(_wgslsmith_add_u32(var_0.c, _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(1u, 19u)], var_0.b)) << (1u % 32u), 0u | (_wgslsmith_dot_vec4_u32(u_input.a, u_input.a) ^ (var_3.b << (var_0.b % 32u)))), vec2<bool>(false, false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(212f + -296f) - _wgslsmith_f_op_f32(131f * global3[_wgslsmith_index_u32(var_0.b, 17u)]))) + 268f));
    let var_6 = -40512i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(~(~vec2<i32>(0i, var_6)), vec2<i32>(0i, 32626i)), var_6), -_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(var_6, -36464i, -6364i, 5081i), select(vec4<i32>(39030i, 59593i, 1i, var_6), vec4<i32>(var_6, -16566i, var_6, var_6), var_5.d.x)), -vec4<i32>(-46684i, var_6, 1i, -694i)), ~23588i, _wgslsmith_f_op_f32(f32(-1f) * -952f), ~vec2<i32>(-2147483647i, _wgslsmith_clamp_i32(var_6, 2147483647i, var_6)) ^ (vec2<i32>(var_6 >> (var_0.c % 32u), var_6 | 24320i) & (select(vec2<i32>(1i, 16991i), vec2<i32>(-39039i, 2147483647i), var_2.d) | firstLeadingBit(vec2<i32>(var_6, var_6)))));
}

