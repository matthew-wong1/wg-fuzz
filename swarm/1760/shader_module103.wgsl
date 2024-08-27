struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<u32> = vec4<u32>(58270u, 50469u, 62953u, 0u);

var<private> global2: array<f32, 25> = array<f32, 25>(1000f, -845f, -957f, 110f, -873f, 363f, 867f, -2374f, -1000f, -1012f, 522f, 355f, 1254f, -145f, -245f, -586f, 180f, -1281f, -1362f, 405f, 1102f, -1000f, -632f, -1242f, -1000f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2() -> Struct_1 {
    return Struct_1(!vec2<bool>(true, global0.a.x), global2[_wgslsmith_index_u32(abs(~(u_input.b | ~4294967295u)), 25u)]);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -379f))))));
    let var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-192f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.b), arg_1.b))), -1899f, 1760f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b, 967f, global2[_wgslsmith_index_u32(arg_0.x, 25u)])), vec3<f32>(675f, -370f, 2024f))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(902f, global2[_wgslsmith_index_u32(21830u, 25u)], -740f)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global2[_wgslsmith_index_u32(10009u, 25u)], 780f, arg_1.b), vec3<f32>(arg_1.b, 1778f, global0.b))))))));
    var var_2 = -_wgslsmith_sub_vec3_i32(vec3<i32>(12181i, _wgslsmith_add_i32(0i, -85530i), -23919i), _wgslsmith_sub_vec3_i32(vec3<i32>(0i, -9689i, -2147483647i), firstLeadingBit(vec3<i32>(-2147483647i, 2147483647i, 1i)))) << (firstLeadingBit(~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, 35205u), global1.yy), _wgslsmith_sub_u32(u_input.a.x, 19718u), u_input.b)) % vec3<u32>(32u));
    global1 = vec4<u32>(u_input.a.x, 50564u, abs(31935u), max(0u, ~max(1u, u_input.a.x)));
    var_2 = max(select(_wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(-2147483647i, var_2.x, -6942i)), ~vec3<i32>(var_2.x, -16154i, var_2.x)), vec3<i32>(var_2.x, _wgslsmith_add_i32(-61786i, 6352i), _wgslsmith_add_i32(var_2.x, var_2.x)), select(select(vec3<bool>(true, global0.a.x, arg_1.a.x), vec3<bool>(true, true, global0.a.x), vec3<bool>(true, false, global0.a.x)), vec3<bool>(true, true, true), all(vec3<bool>(false, true, true)))), vec3<i32>(var_2.x, -abs(var_2.x), 2147483647i)) >> (vec3<u32>(select(1u, 1u, all(select(vec3<bool>(false, global0.a.x, true), vec3<bool>(global0.a.x, true, arg_1.a.x), vec3<bool>(true, true, true)))), firstTrailingBit(0u), _wgslsmith_mult_u32(countOneBits(arg_0.x) << (~global1.x % 32u), ~_wgslsmith_dot_vec4_u32(arg_0, vec4<u32>(4864u, 13987u, 1u, arg_0.x)))) % vec3<u32>(32u));
    return vec2<bool>(true, any(!(!arg_1.a)));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_sub_u32(~(~(~global1.x)), 45646u) << (firstLeadingBit(global1.x) % 32u);
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(746f)) * 1770f), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(abs(54845u), 25u)] * -180f))))));
    global2 = array<f32, 25>();
    var var_2 = func_2();
    global2 = array<f32, 25>();
    return Struct_1(func_3(vec4<u32>(~(global1.x ^ var_0), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4385u, 4684u, 0u, u_input.a.x), vec4<u32>(u_input.b, var_0, var_0, 6814u)), vec4<u32>(var_0, 4294967295u, var_0, 0u)), global1.x, u_input.a.x), func_2()), -444f);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: f32) -> vec4<u32> {
    global2 = array<f32, 25>();
    global1 = ~select(~(~abs(vec4<u32>(4294967295u, 0u, 77443u, 0u))), max(vec4<u32>(global1.x, u_input.a.x, 1u, 4294967295u) & vec4<u32>(arg_0, 0u, 4294967295u, 126140u), _wgslsmith_clamp_vec4_u32(vec4<u32>(27206u, global1.x, global1.x, 40955u), vec4<u32>(arg_0, global1.x, u_input.a.x, 64961u), vec4<u32>(u_input.a.x, u_input.b, arg_0, 1u))) & ~(vec4<u32>(arg_0, 993u, 4294967295u, 0u) & vec4<u32>(arg_0, u_input.b, arg_0, u_input.a.x)), !vec4<bool>(false, !arg_1.a.x, true, global0.a.x != arg_1.a.x));
    global2 = array<f32, 25>();
    global0 = arg_1;
    global2 = array<f32, 25>();
    return vec4<u32>(0u, firstTrailingBit(arg_0), ~(~u_input.b), 29910u & ~(u_input.a.x & arg_0));
}

fn func_5(arg_0: vec4<u32>, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = vec4<u32>(reverseBits(u_input.b), ~max(countOneBits(9911u), firstLeadingBit(0u)), global1.x, arg_0.x);
    global2 = array<f32, 25>();
    let var_1 = ~arg_1.x;
    global0 = Struct_1(func_2().a, 1431f);
    global1 = vec4<u32>(~global1.x, _wgslsmith_clamp_u32(global1.x, ~(~(~38192u)), func_4(global1.x, Struct_1(!vec2<bool>(global0.a.x, global0.a.x), _wgslsmith_f_op_f32(sign(967f))), _wgslsmith_f_op_f32(-global0.b)).x), ~arg_1.x, 23069u);
    return Struct_1(func_2().a, func_1().b);
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: f32, arg_3: bool) -> Struct_1 {
    var var_0 = func_5(vec4<u32>(global1.x, u_input.a.x, abs(u_input.b), 1u), u_input.a.zy);
    var var_1 = var_0.b;
    global0 = Struct_1(!vec2<bool>((false || global0.a.x) & !var_0.a.x, true), -829f);
    let var_2 = _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(global1.x, 40654u), func_4(global1.x, Struct_1(arg_0.a, 191f), global2[_wgslsmith_index_u32(14498u, 25u)]).x, func_4(4294967295u, Struct_1(vec2<bool>(false, true), arg_2), -612f).x, global1.x >> (1u % 32u)), vec4<u32>(26174u, 2092u, 1u, 75371u)), vec4<u32>(~u_input.b, 4294967295u, u_input.a.x, ~global1.x) ^ ~vec4<u32>(4294967295u, u_input.b, u_input.a.x, global1.x)) & global1.x;
    var_0 = arg_0;
    return Struct_1(vec2<bool>(!arg_0.a.x, arg_3), -1402f);
}

fn func_7(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(firstTrailingBit(0u), 25u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -478f), _wgslsmith_f_op_f32(step(global0.b, 806f))), func_2().b) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2925f, -793f, -892f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b, 948f, -955f) - vec3<f32>(585f, global2[_wgslsmith_index_u32(6425u, 25u)], -346f)), true))))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.b, arg_2.b, -1000f), vec3<f32>(-1283f, 570f, global0.b))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b, global0.b, 173f)) + vec3<f32>(global0.b, -1000f, global0.b)) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1714f, global2[_wgslsmith_index_u32(0u, 25u)], arg_2.b))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-200f, -810f, -407f))))), true)));
    var var_1 = countOneBits(_wgslsmith_mod_vec3_i32(~vec3<i32>(1i, max(45808i, 1i), ~14356i), ~firstLeadingBit(firstTrailingBit(vec3<i32>(24811i, -41274i, 26624i)))));
    var var_2 = vec4<f32>(-1056f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(-456f * -151f), u_input.b >= global1.x)))), _wgslsmith_f_op_f32(ceil(func_6(Struct_1(vec2<bool>(true, true), var_0.x), _wgslsmith_mult_i32(-7230i ^ var_1.x, 1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b * 238f)), all(!vec3<bool>(false, global0.a.x, false))).b)), 560f);
    var var_3 = Struct_1(!arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_2.b)) * 1410f)));
    global2 = array<f32, 25>();
    return Struct_1(select(func_2().a, func_5(~vec4<u32>(74153u, u_input.b, 4294967295u, u_input.a.x), vec2<u32>(0u | global1.x, firstTrailingBit(global1.x))).a, !var_3.a.x), global2[_wgslsmith_index_u32(1u, 25u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(vec2<bool>(all(!select(vec4<bool>(global0.a.x, false, global0.a.x, false), vec4<bool>(true, false, global0.a.x, global0.a.x), true)), all(vec3<bool>(true, true, 60494u >= global1.x))), true, func_6(func_5(func_4(_wgslsmith_div_u32(74734u, 82175u), func_1(), _wgslsmith_f_op_f32(abs(1658f))), global1.wx), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(-15417i, -2884i, 0i), abs(vec3<i32>(26909i, -2147483647i, 2147483647i))), _wgslsmith_clamp_vec3_i32(-vec3<i32>(-2147483647i, 1i, -1i), vec3<i32>(-34372i, 11531i, 1i), firstTrailingBit(vec3<i32>(1i, 1i, 21743i)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(firstTrailingBit(global1.x), 25u)] - 962f), -1000f), func_1().a.x));
    let var_1 = var_0;
    global1 = _wgslsmith_clamp_vec4_u32(vec4<u32>(~u_input.a.x, reverseBits(global1.x | u_input.b) ^ _wgslsmith_mod_u32(0u, _wgslsmith_clamp_u32(0u, u_input.b, global1.x)), u_input.a.x, global1.x), select(~(~(~vec4<u32>(4294967295u, u_input.a.x, u_input.b, 4294967295u))), _wgslsmith_div_vec4_u32((vec4<u32>(u_input.a.x, 33537u, 0u, u_input.a.x) & vec4<u32>(16485u, global1.x, u_input.a.x, u_input.a.x)) << (select(vec4<u32>(global1.x, global1.x, u_input.b, u_input.b), vec4<u32>(global1.x, global1.x, 0u, u_input.b), false) % vec4<u32>(32u)), vec4<u32>(global1.x & 0u, countOneBits(80973u), global1.x, u_input.a.x)), !(!global0.a.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(~12057u, 52304u >> (_wgslsmith_div_u32(0u, 9903u) % 32u), global1.x, u_input.a.x), vec4<u32>(firstLeadingBit(u_input.b), min(0u, u_input.a.x), func_4(4294967295u, var_0, global0.b).x ^ 4294967295u, 59505u)));
    var var_2 = func_6(func_6(Struct_1(vec2<bool>(!var_0.a.x, var_0.a.x), func_6(func_1(), 1i, global0.b, false | var_1.a.x).b), ~(-2147483647i), _wgslsmith_f_op_f32(-141f * -1786f), (global0.a.x | true) & func_7(!vec2<bool>(false, var_1.a.x), !var_1.a.x, func_2()).a.x), _wgslsmith_mod_i32(-22354i >> (abs(u_input.a.x) % 32u), 34316i), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b, 25u)]), var_1.a.x);
    let var_3 = var_1;
    let var_4 = Struct_1(!var_3.a, 813f);
    var_2 = var_0;
    var var_5 = Struct_1(var_4.a, -545f);
    var_5 = Struct_1(global0.a, 1417f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(~vec3<u32>(global1.x, _wgslsmith_add_u32(0u, 4294967295u), ~43262u), vec3<u32>(select(u_input.b, _wgslsmith_div_u32(global1.x, 3320u), any(vec3<bool>(false, var_2.a.x, var_0.a.x))), u_input.b, 1u)));
}

