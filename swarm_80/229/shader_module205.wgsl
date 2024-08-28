struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec2<i32>(23329i, -1i), true, -49646i), Struct_1(vec2<i32>(-7975i, 2147483647i), false, 100581i), Struct_1(vec2<i32>(2147483647i, 43518i), true, -9397i), Struct_1(vec2<i32>(-39037i, -21412i), true, 1i), Struct_1(vec2<i32>(9729i, 0i), false, 0i), Struct_1(vec2<i32>(-1310i, 1459i), true, -5468i), Struct_1(vec2<i32>(52674i, i32(-2147483648)), true, -19222i), Struct_1(vec2<i32>(-36982i, 68268i), true, 2147483647i), Struct_1(vec2<i32>(-4383i, 0i), true, 1i), Struct_1(vec2<i32>(64301i, 15730i), false, -15777i), Struct_1(vec2<i32>(-46517i, 24444i), true, -13580i), Struct_1(vec2<i32>(2215i, 4429i), true, 1i), Struct_1(vec2<i32>(-48133i, 1i), false, -1i), Struct_1(vec2<i32>(4322i, 0i), true, 2147483647i), Struct_1(vec2<i32>(-21238i, 10942i), false, -1i), Struct_1(vec2<i32>(3411i, 5980i), true, i32(-2147483648)), Struct_1(vec2<i32>(2147483647i, 2147483647i), true, -19015i), Struct_1(vec2<i32>(9089i, i32(-2147483648)), false, -29337i), Struct_1(vec2<i32>(-27573i, 56302i), false, -26629i), Struct_1(vec2<i32>(-5308i, -10809i), false, 0i), Struct_1(vec2<i32>(-2247i, 1i), false, -13316i), Struct_1(vec2<i32>(9281i, i32(-2147483648)), true, 1i), Struct_1(vec2<i32>(1i, -34389i), false, 2147483647i), Struct_1(vec2<i32>(-21660i, i32(-2147483648)), false, i32(-2147483648)));

var<private> global1: array<Struct_2, 27>;

var<private> global2: bool = false;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<i32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1499f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(126f + 881f)), 204f), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(483f, -368f)) - _wgslsmith_f_op_f32(f32(-1f) * -922f)), _wgslsmith_f_op_f32(699f - -245f), _wgslsmith_f_op_f32(max(-2142f, _wgslsmith_f_op_f32(f32(-1f) * -210f)))), true)));
    var var_1 = !vec4<bool>(false, var_0.x >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(abs(-1939f))), true, any(vec2<bool>(all(vec3<bool>(false, true, true)), any(vec3<bool>(true, true, true)))));
    var var_2 = _wgslsmith_div_vec2_u32(vec2<u32>(~abs(~13754u), _wgslsmith_mult_u32(_wgslsmith_add_u32(0u, 63601u) >> (1u % 32u), 14715u)), vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 0u, 32568u), ~vec4<u32>(1u, 0u, 0u, 0u)), ~(~4294967295u)));
    let var_3 = firstTrailingBit(u_input.a.yyw) ^ select(vec3<i32>(-1i, ~_wgslsmith_dot_vec4_i32(arg_0, vec4<i32>(1i, u_input.a.x, 0i, u_input.a.x)), arg_0.x), _wgslsmith_div_vec3_i32(~arg_0.xwz, u_input.a.xyw), var_1.x);
    var var_4 = _wgslsmith_mult_vec3_i32(var_3, -vec3<i32>(select(-2137i, -2147483647i, var_1.x) >> (~var_2.x % 32u), arg_0.x, -1i));
    return var_3.x;
}

fn func_2(arg_0: bool) -> vec2<bool> {
    let var_0 = !(!vec3<bool>(arg_0, true, any(select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, false, arg_0), vec3<bool>(false, arg_0, arg_0)))));
    var var_1 = func_3(vec4<i32>(~(~(-1i)), _wgslsmith_dot_vec4_i32(vec4<i32>(16544i, ~u_input.a.x, -2147483647i, u_input.a.x), _wgslsmith_add_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1i) & vec4<i32>(u_input.a.x, u_input.a.x, -44415i, u_input.a.x))), _wgslsmith_div_i32(u_input.a.x, u_input.a.x) & 2147483647i, -2147483647i));
    let var_2 = global0[_wgslsmith_index_u32(firstLeadingBit(~abs(19372u)), 24u)];
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-611f, -1745f, 327f)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1918f), 1341f, _wgslsmith_f_op_f32(-826f * -310f)))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1722f), _wgslsmith_f_op_f32(sign(-594f)), 350f))), all(vec4<bool>(true, true, true, true)))));
    var_1 = _wgslsmith_div_i32(-2147483647i, _wgslsmith_add_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -18648i, 2147483647i), vec3<i32>(7393i, -25402i, 2147483647i)), var_2.c));
    return !var_0.zy;
}

fn func_4(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_1, arg_3: vec2<i32>) -> Struct_2 {
    global2 = true;
    let var_0 = vec2<bool>(arg_1, any(select(select(vec3<bool>(true, true, false), vec3<bool>(true, arg_2.b, arg_2.b), vec3<bool>(true, false, false)), !vec3<bool>(false, arg_2.b, true), true)) && true);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-713f, -613f), 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -852f), any(select(vec2<bool>(false, false), vec2<bool>(arg_2.b, var_0.x), vec2<bool>(false, var_0.x)))))));
    var var_2 = vec4<u32>(~85912u, 1u, ~abs(1u), ~4215u);
    let var_3 = false;
    return Struct_2(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_2.x, 1u, var_2.x), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, var_2.x, 75538u, var_2.x), vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x))) << (~reverseBits(_wgslsmith_add_u32(var_2.x, var_2.x)) % 32u), 24u)], Struct_1(-(_wgslsmith_div_vec2_i32(vec2<i32>(arg_2.a.x, 1i), arg_2.a) ^ abs(arg_2.a)), !(_wgslsmith_f_op_f32(select(-748f, -697f, false)) >= -410f), ~func_3(reverseBits(u_input.a))));
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: vec4<u32>) -> u32 {
    var var_0 = 1i;
    var var_1 = max(vec2<i32>(_wgslsmith_clamp_i32(arg_1.a.a.x, 7611i, u_input.a.x), abs(-31510i)), max(arg_1.b.a, arg_1.a.a));
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2.x), -1830f))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2), -1932f, all(vec2<bool>(arg_1.b.b, arg_1.a.b)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) - 630f)));
    var var_4 = func_4(_wgslsmith_mod_vec2_i32(vec2<i32>(~var_1.x, -var_1.x), u_input.a.yz), all(func_2(arg_1.b.b)), arg_1.b, select(_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(-15352i, -1i)), vec2<i32>(-51666i, -30044i)), select(arg_1.a.a >> (vec2<u32>(1u, arg_3.x) % vec2<u32>(32u)), u_input.a.yx & u_input.a.wx, true)), firstLeadingBit(arg_1.a.a), func_2(true).x));
    return abs(arg_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<u32>(~(~31397u), func_1(u_input.a.x, global1[_wgslsmith_index_u32(~1u, 27u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1644f, 286f, -397f)), vec4<u32>(1u, 1u, 21386u, 1u)), max(_wgslsmith_div_u32(0u, 1u), _wgslsmith_mult_u32(1u, 21384u))) >> (_wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(min(18330u, 21998u), 38347u, 36900u)), reverseBits(~abs(vec3<u32>(58166u, 0u, 1u)))) % vec3<u32>(32u));
    var var_1 = func_4(_wgslsmith_div_vec2_i32(vec2<i32>(1i, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x) >> (43578u % 32u)), -(u_input.a.xx ^ u_input.a.yx)), true, global0[_wgslsmith_index_u32(var_0.x, 24u)], vec2<i32>(0i, -35044i));
    var_1 = func_4(max(u_input.a.xz, vec2<i32>(u_input.a.x, 0i ^ var_1.a.c)), var_1.a.b, func_4(min(var_1.b.a, u_input.a.zz & vec2<i32>(-51483i, u_input.a.x)), !var_1.b.b, var_1.b, ~(var_1.b.a ^ _wgslsmith_mod_vec2_i32(var_1.a.a, vec2<i32>(2147483647i, var_1.b.c)))).a, vec2<i32>(min(2147483647i & select(-18248i, -1i, false), _wgslsmith_dot_vec3_i32(countOneBits(u_input.a.wxy), vec3<i32>(var_1.a.c, u_input.a.x, -59535i))), 14903i));
    var var_2 = abs(_wgslsmith_clamp_vec4_i32(min(u_input.a & ~vec4<i32>(var_1.a.a.x, var_1.b.a.x, u_input.a.x, u_input.a.x), u_input.a), vec4<i32>(_wgslsmith_sub_i32(u_input.a.x, ~var_1.a.a.x), func_3(-vec4<i32>(var_1.b.c, 4855i, u_input.a.x, 0i)), _wgslsmith_div_i32(var_1.a.a.x, var_1.b.c ^ u_input.a.x), _wgslsmith_div_i32(-39398i, var_1.a.c) ^ 1i), -u_input.a));
    var var_3 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(437f, 617f, -1052f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(264f, 1209f, -1106f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-919f, 1070f, 335f), vec3<f32>(913f, 4177f, 327f), true)))), select(select(vec3<bool>(var_1.a.b, func_2(true).x, all(vec4<bool>(var_1.b.b, false, false, var_1.a.b))), vec3<bool>(any(vec3<bool>(false, false, false)), var_1.a.b, var_1.b.b && false), var_0.x != _wgslsmith_mod_u32(var_0.x, var_0.x)), !select(!vec3<bool>(false, false, var_1.b.b), vec3<bool>(true, var_1.b.b, var_1.b.b), func_4(vec2<i32>(-40230i, 1i), false, Struct_1(vec2<i32>(var_1.b.c, u_input.a.x), var_1.a.b, 16618i), u_input.a.yy).b.b), !all(vec2<bool>(false, true)))));
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_3.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1000f, var_3.x)), -353f), any(select(vec2<bool>(true, var_1.b.b), vec2<bool>(var_1.a.b, true), var_1.b.b))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-2801f, var_3.x)), var_3.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_3.x))), 866f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_3.x)))))), var_3.x);
    let var_5 = ~4294967295u;
    var var_6 = Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(~u_input.a.x, var_2.x), 801i), select(var_2.xw, _wgslsmith_add_vec2_i32(var_2.yx ^ u_input.a.wx, var_2.wz | u_input.a.wz), !vec2<bool>(var_1.b.b, false))), select(func_2(!any(vec2<bool>(var_1.b.b, false))).x, var_1.a.b, any(select(func_2(var_1.b.b), func_2(true), false))), -var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-884f))))), var_4.x));
}

