struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18>;

var<private> global1: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(58525u, vec4<f32>(170f, -154f, 179f, -789f), vec2<i32>(56587i, i32(-2147483648))), Struct_2(3544u, vec4<f32>(-1000f, -1179f, 416f, 770f), vec2<i32>(18198i, -6488i)), Struct_2(17668u, vec4<f32>(-404f, -1000f, 368f, -311f), vec2<i32>(6314i, -53954i)), Struct_2(4294967295u, vec4<f32>(1116f, 558f, -327f, 1000f), vec2<i32>(i32(-2147483648), -41993i)), Struct_2(52650u, vec4<f32>(387f, 453f, 705f, -101f), vec2<i32>(-1i, -30067i)), Struct_2(15397u, vec4<f32>(-1671f, 807f, 2280f, -1105f), vec2<i32>(1i, -12772i)), Struct_2(1u, vec4<f32>(-1111f, -873f, 435f, -1967f), vec2<i32>(i32(-2147483648), 1i)), Struct_2(0u, vec4<f32>(1780f, -156f, 430f, -530f), vec2<i32>(-13621i, 1i)), Struct_2(98737u, vec4<f32>(2032f, 1180f, -885f, 625f), vec2<i32>(1i, 2147483647i)), Struct_2(66706u, vec4<f32>(-1531f, 114f, 1526f, 454f), vec2<i32>(-718i, -2524i)), Struct_2(28679u, vec4<f32>(1019f, -273f, 2707f, -1996f), vec2<i32>(-29389i, -10351i)), Struct_2(31675u, vec4<f32>(-1754f, -1119f, 852f, 1000f), vec2<i32>(-15583i, 2147483647i)), Struct_2(1u, vec4<f32>(-594f, 509f, -1000f, 149f), vec2<i32>(i32(-2147483648), -22857i)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: bool, arg_2: vec2<i32>) -> bool {
    var var_0 = global1[_wgslsmith_index_u32(abs(_wgslsmith_clamp_u32(u_input.a, firstLeadingBit(u_input.a), _wgslsmith_sub_u32(max(11293u, ~u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(19514u, u_input.a, 1u, u_input.a) >> (vec4<u32>(u_input.a, 0u, 0u, u_input.a) % vec4<u32>(32u)), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) << (vec4<u32>(50563u, u_input.a, 16181u, 4294967295u) % vec4<u32>(32u)))))), 13u)];
    let var_1 = _wgslsmith_f_op_f32(-var_0.b.x);
    global1 = array<Struct_2, 13>();
    global1 = array<Struct_2, 13>();
    let var_2 = Struct_1(reverseBits(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(46005u, u_input.a, 12823u)), min(u_input.a, 51786u), _wgslsmith_add_u32(var_0.a, 404u))) | (firstLeadingBit(firstLeadingBit(vec3<u32>(19781u, var_0.a, u_input.a))) | ~vec3<u32>(u_input.a, var_0.a, 27135u)));
    return false;
}

fn func_2(arg_0: vec3<f32>, arg_1: f32) -> i32 {
    let var_0 = Struct_2(min(u_input.a, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(16830u, u_input.a, 50162u)) << (4294967295u % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, 1830f, arg_0.x, -1104f) * vec4<f32>(162f, 663f, arg_0.x, arg_0.x))))), u_input.b.zy);
    var var_1 = true == func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 18u)], arg_0.x) - var_0.b.zy), firstTrailingBit(reverseBits(u_input.a)) == var_0.a, var_0.c);
    let var_2 = Struct_2(~1u & _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 20490u, var_0.a) ^ ~vec3<u32>(u_input.a, 27516u, u_input.a), firstTrailingBit(~vec3<u32>(u_input.a, 19837u, 4294967295u))), vec4<f32>(global0[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32(var_0.a, var_0.a)), 18u)], 1689f, arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) + _wgslsmith_f_op_f32(f32(-1f) * -860f)))), ~(~(~_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, u_input.b.x), u_input.b.xy))));
    let var_3 = !all(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true)));
    var_1 = all(vec2<bool>(true, true)) & any(!vec2<bool>(select(var_3, false, true), true));
    return 0i;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<i32>) -> vec3<bool> {
    var var_0 = !arg_0.x;
    global0 = array<f32, 18>();
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, ~4294967295u), 18u)] * -167f) - -365f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(479f + global0[_wgslsmith_index_u32(u_input.a, 18u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1000f)), -691f))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(~countOneBits(u_input.a), 18u)], _wgslsmith_f_op_f32(sign(1671f))), 1253f, !(!all(vec3<bool>(arg_0.x, true, arg_0.x))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-262f)))))));
    var_0 = (arg_1.x <= (u_input.b.x << ((u_input.a << (_wgslsmith_clamp_u32(79302u, u_input.a, 9334u) % 32u)) % 32u))) && (all(select(select(arg_0.yx, vec2<bool>(false, arg_0.x), arg_0.x), arg_0.yy, vec2<bool>(false, false))) && arg_0.x);
    global0 = array<f32, 18>();
    return vec3<bool>(func_3(_wgslsmith_f_op_vec2_f32(exp2(var_1.xw)), false, (firstTrailingBit(vec2<i32>(-1i, -1i)) ^ _wgslsmith_div_vec2_i32(arg_1.yz, u_input.b.xy)) >> (max(vec2<u32>(u_input.a, u_input.a) ^ vec2<u32>(4294967295u, 82707u), vec2<u32>(1u, u_input.a) << (vec2<u32>(0u, u_input.a) % vec2<u32>(32u))) % vec2<u32>(32u))), arg_0.x, true);
}

fn func_1() -> vec3<u32> {
    global1 = array<Struct_2, 13>();
    let var_0 = Struct_3(Struct_1(vec3<u32>(u_input.a, ~u_input.a, abs(u_input.a)) << (vec3<u32>(4294967295u, 2314u, ~u_input.a) % vec3<u32>(32u))), Struct_2(_wgslsmith_clamp_u32(u_input.a & 0u, 9901u, u_input.a) ^ ~_wgslsmith_div_u32(u_input.a, 9917u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-324f, -1193f, -254f, global0[_wgslsmith_index_u32(u_input.a, 18u)]))))), vec2<i32>(_wgslsmith_mult_i32(u_input.b.x, ~u_input.b.x), _wgslsmith_mod_i32(u_input.b.x, -2147483647i) >> (~22661u % 32u))));
    var var_1 = func_4(vec3<bool>(false, true, select(all(vec3<bool>(true, true, false)), true, true) || true), vec4<i32>(min(1i, func_2(vec3<f32>(-399f, var_0.b.b.x, global0[_wgslsmith_index_u32(u_input.a, 18u)]), var_0.b.b.x)), var_0.b.c.x, _wgslsmith_add_i32(44447i, 16996i) ^ (-1i ^ u_input.b.x), _wgslsmith_mod_i32(reverseBits(countOneBits(var_0.b.c.x)), i32(-1i) * -2147483647i)));
    global0 = array<f32, 18>();
    var var_2 = var_0.b;
    return countOneBits(var_0.a.a) ^ var_0.a.a;
}

fn func_5(arg_0: Struct_1, arg_1: i32) -> vec2<f32> {
    var var_0 = countOneBits(~arg_0.a.zz);
    global0 = array<f32, 18>();
    let var_1 = func_4(select(!func_4(vec3<bool>(true, true, true), vec4<i32>(u_input.b.x, 0i, arg_1, 12280i)), vec3<bool>(true, func_3(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1054f, global0[_wgslsmith_index_u32(52410u, 18u)]))), 0u > var_0.x, vec2<i32>(u_input.b.x, -2966i)), all(vec4<bool>(true, true, false, true))), (_wgslsmith_div_i32(53783i, 26476i) >= (u_input.b.x | u_input.b.x)) & true), -(vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, -1i, arg_1), vec4<i32>(-2147483647i, 36456i, u_input.b.x, 11426i)))).zy;
    let var_2 = Struct_3(arg_0, Struct_2(u_input.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1749f, global0[_wgslsmith_index_u32(u_input.a, 18u)], 137f, global0[_wgslsmith_index_u32(101074u, 18u)]) * _wgslsmith_f_op_vec4_f32(vec4<f32>(786f, global0[_wgslsmith_index_u32(u_input.a, 18u)], -335f, -620f) * vec4<f32>(1000f, global0[_wgslsmith_index_u32(u_input.a, 18u)], 497f, global0[_wgslsmith_index_u32(u_input.a, 18u)]))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 18u)], global0[_wgslsmith_index_u32(0u, 18u)], -1000f, 508f))), vec4<f32>(-1028f, 1000f, 373f, global0[_wgslsmith_index_u32(var_0.x, 18u)]))), -max(-u_input.b.xy, _wgslsmith_mult_vec2_i32(vec2<i32>(arg_1, 1i), vec2<i32>(u_input.b.x, -8698i)))));
    let var_3 = Struct_3(arg_0, Struct_2(var_2.b.a, var_2.b.b, max(countOneBits(select(var_2.b.c, var_2.b.c, var_1)), -var_2.b.c)));
    return vec2<f32>(523f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-318f * _wgslsmith_f_op_f32(-var_3.b.b.x)) * _wgslsmith_f_op_f32(-766f - var_3.b.b.x)), 1f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(!any(vec2<bool>(true, true)), false, !(firstLeadingBit(u_input.b.x) == abs(-1i)) == true);
    var var_1 = 1u >= reverseBits(~firstLeadingBit(u_input.a >> (51673u % 32u)));
    global0 = array<f32, 18>();
    var_1 = all(select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), true), vec4<bool>(false, var_0.x, var_0.x, true)), !select(select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(false, false, var_0.x, true), var_0.x), vec4<bool>(var_0.x, true, var_0.x, false), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(false, false, var_0.x, var_0.x), true)), any(select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), !vec4<bool>(var_0.x, true, false, var_0.x), var_0.x))));
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_5(Struct_1(func_1()), u_input.b.x & _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 2147483647i), vec2<i32>(u_input.b.x, u_input.b.x)))) * vec2<f32>(global0[_wgslsmith_index_u32(~reverseBits(17474u), 18u)], _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 18u)]), _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(32510u, 18u)], global0[_wgslsmith_index_u32(u_input.a, 18u)], false)), global0[_wgslsmith_index_u32(0u, 18u)] != 421f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1298f, 1057f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(var_2.x)));
}

