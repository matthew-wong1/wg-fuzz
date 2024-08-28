struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: f32,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: u32,
    d: bool,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<Struct_4, 21> = array<Struct_4, 21>(Struct_4(false, 4509u, 51832u, false, vec3<i32>(1i, -15726i, 1i)), Struct_4(false, 0u, 0u, true, vec3<i32>(2147483647i, 1i, 20071i)), Struct_4(true, 9931u, 16617u, false, vec3<i32>(i32(-2147483648), 46371i, -25649i)), Struct_4(true, 36944u, 1u, true, vec3<i32>(1i, i32(-2147483648), 46837i)), Struct_4(false, 1u, 0u, true, vec3<i32>(-1i, -4662i, -41568i)), Struct_4(true, 49630u, 8613u, false, vec3<i32>(i32(-2147483648), 10352i, -18066i)), Struct_4(false, 43563u, 74321u, false, vec3<i32>(62204i, i32(-2147483648), 35623i)), Struct_4(false, 0u, 0u, true, vec3<i32>(0i, 46465i, 1i)), Struct_4(true, 33613u, 4294967295u, true, vec3<i32>(3610i, 0i, -56298i)), Struct_4(false, 5356u, 4294967295u, true, vec3<i32>(63173i, 0i, -39899i)), Struct_4(true, 30721u, 34742u, true, vec3<i32>(0i, -21604i, -35702i)), Struct_4(false, 36028u, 0u, false, vec3<i32>(i32(-2147483648), -14952i, i32(-2147483648))), Struct_4(false, 1u, 107590u, true, vec3<i32>(52732i, 92686i, -17726i)), Struct_4(true, 9192u, 48003u, false, vec3<i32>(21274i, -1i, 18059i)), Struct_4(false, 4294967295u, 0u, true, vec3<i32>(-1i, -14803i, 12610i)), Struct_4(false, 4294967295u, 39169u, true, vec3<i32>(2147483647i, -10031i, -30222i)), Struct_4(false, 1u, 54062u, true, vec3<i32>(-14158i, 1098i, 2620i)), Struct_4(false, 0u, 64785u, true, vec3<i32>(1327i, -27183i, 1i)), Struct_4(false, 1u, 63233u, false, vec3<i32>(-6632i, 105763i, 2147483647i)), Struct_4(false, 4294967295u, 58391u, false, vec3<i32>(2147483647i, -18064i, 40215i)), Struct_4(true, 58701u, 44526u, true, vec3<i32>(2147483647i, 1i, 79659i)));

var<private> global2: vec2<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> vec2<bool> {
    global0 = !select(vec2<bool>(any(select(vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(global2.x, true, false, global0.x), true)), all(!vec2<bool>(global0.x, false))), select(!(!vec2<bool>(global0.x, global2.x)), vec2<bool>(false, global2.x & false), vec2<bool>(true, -33230i > u_input.a.x)), vec2<bool>(!global0.x, all(select(vec3<bool>(true, global2.x, true), vec3<bool>(global2.x, false, true), vec3<bool>(true, global2.x, global2.x)))));
    var var_0 = global1[_wgslsmith_index_u32(~(abs(0u) ^ u_input.c), 21u)];
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-767f, 1582f, 289f, 208f) - vec4<f32>(-626f, 1118f, 159f, 226f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-275f, 979f, 881f, 1099f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(416f, -491f, -314f, 719f)), !var_0.d)))), u_input.b), Struct_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_div_f32(-914f, 194f), _wgslsmith_f_op_f32(sign(1000f)), -942f))), vec4<i32>(u_input.b.x, var_0.e.x, firstTrailingBit(-var_0.e.x), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, var_0.e.x, 20221i, var_0.e.x), u_input.b), vec4<i32>(u_input.b.x, u_input.a.x, u_input.a.x, u_input.b.x) << (vec4<u32>(766u, var_0.b, 63997u, u_input.c) % vec4<u32>(32u))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1308f, 1f, _wgslsmith_f_op_f32(step(2210f, -1237f)))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a.a.xx)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b.a.x, var_1.a.a.x) * var_1.a.a.zy) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-309f, 1803f), vec2<f32>(725f, -313f))))))), var_1.c.zx, !(!(!vec2<bool>(true, global0.x)))));
    var_0 = global1[_wgslsmith_index_u32(43683u, 21u)];
    return select(!select(vec2<bool>(true, true), !vec2<bool>(var_0.d, true), global2.x), !select(!vec2<bool>(var_0.d, true), select(select(vec2<bool>(var_0.a, false), vec2<bool>(false, global0.x), global0.x), !vec2<bool>(false, var_0.a), global0.x & false), _wgslsmith_mult_u32(var_0.c, 47408u) > ~0u), var_0.d);
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: Struct_3) -> i32 {
    global0 = !select(select(!(!arg_0), func_3(), !arg_0), !(!vec2<bool>(arg_1.d, arg_0.x)), true);
    global2 = !vec2<bool>(select(arg_1.a, false, (u_input.a.x > u_input.b.x) || !arg_1.d), global0.x || select(all(vec4<bool>(false, global0.x, arg_0.x, true)), !global0.x, false));
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_2.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(482f, -143f) + _wgslsmith_f_op_f32(step(arg_2.a, arg_2.a))))), 225f));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.a), var_0);
    var var_2 = vec2<u32>(~(~33332u), u_input.c);
    return max(u_input.a.x << (countOneBits(countOneBits(abs(var_2.x))) % 32u), u_input.a.x);
}

fn func_1(arg_0: vec3<bool>) -> Struct_3 {
    global1 = array<Struct_4, 21>();
    var var_0 = Struct_3(1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(207f)) - _wgslsmith_f_op_f32(f32(-1f) * -940f)) + -1106f))));
    var var_1 = vec2<i32>(23771i, ~(-11980i)) & _wgslsmith_mod_vec2_i32(~vec2<i32>(func_2(arg_0.xx, global1[_wgslsmith_index_u32(10404u, 21u)], Struct_3(-459f, var_0.a)), u_input.b.x), reverseBits(reverseBits(-vec2<i32>(u_input.b.x, u_input.b.x))));
    let var_2 = global1[_wgslsmith_index_u32(14191u, 21u)];
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(160f * var_0.a), _wgslsmith_f_op_f32(f32(-1f) * -611f), -485f, var_0.a), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.b, -139f, 282f, var_0.a))))), u_input.b << (~firstTrailingBit(vec4<u32>(4294967295u, u_input.c, var_2.b, 1u)) % vec4<u32>(32u))), Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, -283f, 589f, var_0.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.b, var_0.b, -224f, var_0.b)))))), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(var_1.x, var_2.e.x), _wgslsmith_mult_i32(-1i, 1i)), -238i, var_1.x, -_wgslsmith_dot_vec2_i32(u_input.b.yw, vec2<i32>(var_1.x, -2147483647i)))), vec3<f32>(567f, _wgslsmith_f_op_f32(floor(504f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1291f)))))));
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.b))))), -413f);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec2<i32>) -> i32 {
    var var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(max(_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(68975u, u_input.c, u_input.c, u_input.c)), select(vec4<u32>(u_input.c, 0u, u_input.c, u_input.c), vec4<u32>(u_input.c, 1u, u_input.c, u_input.c), global0.x), countOneBits(vec4<u32>(4294967295u, u_input.c, u_input.c, 11009u))), vec4<u32>(4294967295u, _wgslsmith_mod_u32(u_input.c, u_input.c), u_input.c, firstTrailingBit(0u))), ~(~vec4<u32>(u_input.c, 0u, 4294967295u, 1u) | ~vec4<u32>(8988u, 55164u, 1u, 21197u))), 21u)];
    return max(2147483647i, ~2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_i32(max(_wgslsmith_sub_i32(i32(-1i) * -1i, i32(-1i) * -14428i) ^ func_4(Struct_2(Struct_1(vec4<f32>(1145f, 552f, 301f, 155f), u_input.b), Struct_1(vec4<f32>(-1216f, -1789f, 393f, 127f), u_input.b), vec3<f32>(-236f, 492f, 461f)), func_1(vec3<bool>(true, global2.x, global2.x)), Struct_2(Struct_1(vec4<f32>(1933f, 104f, 1364f, -358f), u_input.b), Struct_1(vec4<f32>(-1464f, 466f, -773f, -644f), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 0i)), vec3<f32>(1458f, -965f, 356f)), ~vec2<i32>(u_input.b.x, -1i)), _wgslsmith_add_i32(~u_input.b.x, u_input.b.x ^ _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, 26006i)))), countOneBits(u_input.b.x));
    global0 = !select(!(!select(vec2<bool>(false, global0.x), vec2<bool>(global0.x, global0.x), global0.x)), !(!func_3()), ~u_input.c < ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 4294967295u, u_input.c, u_input.c), vec4<u32>(u_input.c, u_input.c, u_input.c, 4294967295u)));
    global1 = array<Struct_4, 21>();
    var var_1 = !(!global0.x);
    var var_2 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-292f))), _wgslsmith_f_op_f32(select(-827f, _wgslsmith_div_f32(-690f, -188f), any(vec3<bool>(global0.x, global2.x, global2.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -169f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -169f)))), ~_wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(2147483647i, -29884i, u_input.a.x, 2147483647i)), vec4<i32>(-2147483647i, 967i, -29354i, var_0))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1643f, -1509f, 910f, 2457f), _wgslsmith_f_op_vec4_f32(vec4<f32>(242f, 187f, -1064f, -423f) + vec4<f32>(1511f, 623f, 972f, 1481f)), vec4<bool>(true, true, global0.x, true)))), -vec4<i32>(-15084i, u_input.b.x >> (u_input.c % 32u), _wgslsmith_sub_i32(u_input.a.x, -1i), 1i)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(103f * -1124f), -1637f, _wgslsmith_f_op_f32(ceil(-1359f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-437f, 589f, 1281f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(549f, 536f, 1000f)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(2266f, -2814f, 1955f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1572f, -1893f, 809f) + vec3<f32>(-1000f, -1143f, 185f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(select(vec3<u32>(0u, u_input.c, u_input.c), vec3<u32>(u_input.c, u_input.c, u_input.c), global2.x), vec3<u32>(4294967295u, u_input.c, 85609u)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, 0u), vec3<u32>(u_input.c, 1u, u_input.c)), u_input.c, 46838u)), func_1(vec3<bool>(global2.x, true && select(global0.x, true, false), false)).a, vec4<u32>(~countOneBits(u_input.c & 4294967295u), 82545u, 0u, u_input.c), _wgslsmith_sub_u32(~1u, 23686u), u_input.c);
}

