struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 7>;

var<private> global1: array<vec2<u32>, 12> = array<vec2<u32>, 12>(vec2<u32>(60019u, 0u), vec2<u32>(6734u, 12043u), vec2<u32>(4294967295u, 0u), vec2<u32>(37337u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(47469u, 1u), vec2<u32>(49060u, 53536u), vec2<u32>(29924u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(76400u, 0u), vec2<u32>(15284u, 45684u), vec2<u32>(1u, 1u));

var<private> global2: vec3<f32> = vec3<f32>(461f, -354f, -610f);

var<private> global3: array<bool, 6> = array<bool, 6>(true, true, false, true, false, true);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<f32>, arg_1: f32, arg_2: vec2<bool>, arg_3: f32) -> Struct_3 {
    return Struct_3(~2147483647i);
}

fn func_3() -> vec4<f32> {
    let var_0 = firstTrailingBit(func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-584f, global2.x, global2.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1515f, global2.x, -879f))) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1725f, 1672f, 156f)))), global2.x, !(!(!vec2<bool>(false, global3[_wgslsmith_index_u32(8229u, 6u)]))), -540f).a);
    var var_1 = Struct_1(~vec3<u32>(u_input.b, u_input.a, _wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(u_input.a, 12u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(4294967295u, 12u)], global1[_wgslsmith_index_u32(u_input.a, 12u)]), 12u)])), _wgslsmith_f_op_f32(floor(1f)), false, true);
    var var_2 = _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(1987i, var_0, var_0 ^ 117316i, firstLeadingBit(var_0 >> (0u % 32u))), _wgslsmith_add_vec4_i32(vec4<i32>(-3888i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0, var_0, var_0), vec3<i32>(var_0, var_0, var_0)), 1i, -895i), firstLeadingBit(vec4<i32>(var_0, var_0, 0i, var_0)) & _wgslsmith_div_vec4_i32(vec4<i32>(9227i, var_0, -1844i, 19092i), vec4<i32>(var_0, var_0, var_0, var_0))), vec4<i32>(var_0 << ((var_1.a.x << (u_input.b % 32u)) % 32u), countOneBits(-var_0), _wgslsmith_mod_i32(var_0 ^ var_0, var_0), ~(-18715i | var_0))), abs(-(vec4<i32>(-1i, var_0, 0i, var_0) << (firstLeadingBit(vec4<u32>(u_input.b, var_1.a.x, var_1.a.x, 48345u)) % vec4<u32>(32u)))));
    var var_3 = Struct_1(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x * -675f) * var_1.b)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(~vec2<u32>(41825u, 4294967295u)), _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(var_1.a.yz, global1[_wgslsmith_index_u32(62920u, 12u)]), var_1.a.yz)) << (max(_wgslsmith_mod_u32(reverseBits(u_input.b), u_input.b), firstLeadingBit(u_input.a)) % 32u), 7u)], global3[_wgslsmith_index_u32(~55362u, 6u)]);
    var_1 = Struct_1(vec3<u32>(~25975u, var_1.a.x, ~firstTrailingBit(u_input.b)), var_3.b, var_3.d, false);
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(2762f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.x), -204f)), -1048f, _wgslsmith_f_op_f32(-global2.x)));
}

fn func_4(arg_0: vec4<f32>, arg_1: i32, arg_2: Struct_2, arg_3: vec4<f32>) -> u32 {
    var var_0 = !select(select(select(!vec4<bool>(true, false, global0[_wgslsmith_index_u32(12676u, 7u)], true), vec4<bool>(false, global3[_wgslsmith_index_u32(u_input.b, 6u)], global0[_wgslsmith_index_u32(0u, 7u)], false), !vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 7u)], true, global3[_wgslsmith_index_u32(u_input.a, 6u)])), vec4<bool>(false, select(false, true, false), select(global0[_wgslsmith_index_u32(10428u, 7u)], true, true), false), vec4<bool>(global3[_wgslsmith_index_u32(u_input.a & u_input.a, 6u)], -2147483647i == arg_1, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b), vec4<u32>(u_input.a, 0u, 1u, u_input.b)), 7u)], any(vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 7u)], true, global0[_wgslsmith_index_u32(40552u, 7u)])))), !(!select(vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 6u)], false, true, true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 7u)], global0[_wgslsmith_index_u32(27732u, 7u)], global3[_wgslsmith_index_u32(u_input.a, 6u)], true), false)), vec4<bool>(any(select(vec2<bool>(true, false), vec2<bool>(false, global3[_wgslsmith_index_u32(0u, 6u)]), global3[_wgslsmith_index_u32(u_input.b, 6u)])), !(false && global0[_wgslsmith_index_u32(u_input.b, 7u)]), any(!vec3<bool>(false, false, global0[_wgslsmith_index_u32(77276u, 7u)])), global0[_wgslsmith_index_u32(1u, 7u)] && all(vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 6u)], false, global0[_wgslsmith_index_u32(43300u, 7u)]))));
    global2 = vec3<f32>(605f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - -140f))) + _wgslsmith_f_op_f32(f32(-1f) * -775f)), _wgslsmith_f_op_f32(exp2(arg_3.x)));
    let var_1 = ~(~vec4<i32>(-2147483647i, arg_2.a.x, -2147483647i, ~(70074i | arg_2.a.x)));
    let var_2 = select(select(!(!vec4<bool>(var_0.x, global0[_wgslsmith_index_u32(u_input.a, 7u)], true, true)), vec4<bool>(!global0[_wgslsmith_index_u32(u_input.b & u_input.a, 7u)], min(arg_2.a.x, var_1.x) >= _wgslsmith_clamp_i32(2147483647i, 1i, 52215i), select(global0[_wgslsmith_index_u32(1u, 7u)], var_0.x, all(var_0.yz)), var_1.x <= 17409i), select(select(vec4<bool>(var_0.x, false, false, global3[_wgslsmith_index_u32(13624u, 6u)]), vec4<bool>(true, true, var_0.x, false), arg_0.x == 937f), select(select(vec4<bool>(true, false, false, global3[_wgslsmith_index_u32(u_input.b, 6u)]), vec4<bool>(true, global3[_wgslsmith_index_u32(60288u, 6u)], var_0.x, global3[_wgslsmith_index_u32(19307u, 6u)]), global0[_wgslsmith_index_u32(1u, 7u)]), !vec4<bool>(true, true, global0[_wgslsmith_index_u32(55972u, 7u)], true), select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(global3[_wgslsmith_index_u32(u_input.a, 6u)], global3[_wgslsmith_index_u32(25115u, 6u)], global3[_wgslsmith_index_u32(u_input.b, 6u)], var_0.x), false)), all(var_0.xx))), select(!vec4<bool>(true, false, !var_0.x, true | var_0.x), !vec4<bool>(!global0[_wgslsmith_index_u32(4294967295u, 7u)], global0[_wgslsmith_index_u32(~45481u, 7u)], false, !var_0.x), _wgslsmith_mult_i32(2147483647i << (u_input.a % 32u), 0i) < 0i), any(!var_0.xz));
    global1 = array<vec2<u32>, 12>();
    return ~u_input.a;
}

fn func_1(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: i32) -> vec3<bool> {
    let var_0 = func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global2.x, -524f) - vec3<f32>(976f, global2.x, global2.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(386f, 1000f, 500f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global2.x, 1969f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, 546f))))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global2.x, 1143f, global2.x))), vec3<f32>(994f, -162f, global2.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(683f - global2.x)), !vec2<bool>(true, any(select(vec2<bool>(global3[_wgslsmith_index_u32(43220u, 6u)], true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 7u)], false), global0[_wgslsmith_index_u32(1u, 7u)]))), _wgslsmith_f_op_f32(global2.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1177f - 344f) + _wgslsmith_f_op_f32(global2.x * 585f)))));
    global0 = array<bool, 7>();
    global1 = array<vec2<u32>, 12>();
    global0 = array<bool, 7>();
    global0 = array<bool, 7>();
    return vec3<bool>(global3[_wgslsmith_index_u32(max(func_4(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(303f, global2.x, -695f, global2.x) * vec4<f32>(global2.x, global2.x, global2.x, -1177f)))), 0i, Struct_2(arg_0.a), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(func_3())))), _wgslsmith_add_u32(arg_1.x, ~1u)), 6u)], _wgslsmith_f_op_f32(-347f - _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(global2.x + global2.x))) != _wgslsmith_f_op_f32(-global2.x), any(!select(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 7u)], true, false, false), select(vec4<bool>(true, global3[_wgslsmith_index_u32(arg_1.x, 6u)], true, false), vec4<bool>(false, global3[_wgslsmith_index_u32(3816u, 6u)], false, false), true), !vec4<bool>(true, global3[_wgslsmith_index_u32(0u, 6u)], false, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~(~((vec3<u32>(82732u, u_input.a, 4294967295u) >> (vec3<u32>(90687u, u_input.a, u_input.a) % vec3<u32>(32u))) | (vec3<u32>(0u, 4294967295u, 61866u) | vec3<u32>(u_input.b, u_input.a, u_input.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(791f, _wgslsmith_f_op_f32(-global2.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(347f)))), all(vec3<bool>(true, true, !all(vec4<bool>(false, true, global0[_wgslsmith_index_u32(u_input.b, 7u)], global3[_wgslsmith_index_u32(4294967295u, 6u)])))), any(vec4<bool>(!global0[_wgslsmith_index_u32(65755u, 7u)], true, true, true)) && any(select(select(vec3<bool>(true, false, false), vec3<bool>(global3[_wgslsmith_index_u32(u_input.b, 6u)], true, global0[_wgslsmith_index_u32(82353u, 7u)]), global3[_wgslsmith_index_u32(33525u, 6u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(1u, 7u)]), func_1(Struct_2(vec4<i32>(0i, 0i, 38377i, -2147483647i)), vec3<u32>(u_input.a, 4294967295u, 1u), 1i))));
    let var_1 = Struct_2(-vec4<i32>(_wgslsmith_mult_i32(-5464i >> (var_0.a.x % 32u), ~30722i), -1i, select(1i, 1i, select(false, false, false)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 2147483647i), vec2<i32>(-1i, -1948i))));
    var var_2 = select(vec2<bool>(!(!(var_1.a.x >= var_1.a.x)), !global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(5841u, 4294967295u, 0u, 4294967295u), vec4<u32>(var_0.a.x, 4294967295u, 1u, u_input.a)), ~vec4<u32>(u_input.a, 4294967295u, 4294967295u, var_0.a.x)), 6u)]), vec2<bool>(global3[_wgslsmith_index_u32(~(~(~4294967295u)), 6u)], (global2.x != 1f) | true), true);
    global3 = array<bool, 6>();
    global1 = array<vec2<u32>, 12>();
    let var_3 = func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-340f, global2.x, var_0.b)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.x, 862f, global2.x), vec3<f32>(global2.x, global2.x, global2.x), true))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1837f, 221f, global2.x))), vec3<f32>(505f, -859f, var_0.b))), vec3<f32>(_wgslsmith_f_op_f32(-774f * global2.x), var_0.b, _wgslsmith_div_f32(var_0.b, -574f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.b + var_0.b))) * _wgslsmith_f_op_vec4_f32(func_3()).x) * global2.x), !(!vec2<bool>(any(vec2<bool>(global3[_wgslsmith_index_u32(var_0.a.x, 6u)], true)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.b + -374f))) + 241f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(var_3.a, var_3.a, var_1.a.x) >> (~var_0.a % vec3<u32>(32u))), ~reverseBits(vec3<i32>(var_1.a.x, 27128i, var_1.a.x))), 0i, -27111i, var_0.b);
}

