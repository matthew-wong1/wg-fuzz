struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 10903u;

var<private> global1: vec2<bool> = vec2<bool>(false, false);

var<private> global2: array<Struct_1, 9>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: vec4<i32>) -> f32 {
    let var_0 = _wgslsmith_dot_vec3_i32(-vec3<i32>(abs(-20568i), firstTrailingBit(arg_2.x), u_input.c.x) ^ vec3<i32>(1i, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1864i, arg_2.x, arg_2.x, 4152i), vec4<i32>(arg_2.x, -1i, 1i, 0i)), arg_2.x), ~(-1i << (u_input.a % 32u))), vec3<i32>(max(_wgslsmith_mod_i32(arg_2.x, ~arg_1), -22243i), -1i & _wgslsmith_add_i32(abs(u_input.b), _wgslsmith_mod_i32(-8598i, u_input.b)), -1i));
    global1 = !(!select(vec2<bool>(all(vec4<bool>(global1.x, global1.x, arg_0, global1.x)), !global1.x), vec2<bool>(u_input.a != u_input.a, global1.x), select(vec2<bool>(true, arg_0), !vec2<bool>(true, arg_0), true)));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-399f + 862f)))))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1139f)))), false && global1.x));
    global1 = !vec2<bool>(!(all(vec4<bool>(false, false, global1.x, true)) != true), !(_wgslsmith_dot_vec4_i32(arg_2, arg_2) >= 13457i));
    var var_2 = Struct_3(Struct_2(reverseBits(vec2<u32>(4294967295u, firstLeadingBit(u_input.a)))), _wgslsmith_clamp_u32(u_input.a, 30900u, u_input.a), global1.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1486f, -627f)) * _wgslsmith_f_op_f32(round(var_1)));
}

fn func_2() -> bool {
    global2 = array<Struct_1, 9>();
    let var_0 = u_input.a;
    var var_1 = Struct_1(reverseBits(~(-min(vec4<i32>(u_input.c.x, 2147483647i, 19167i, 0i), vec4<i32>(-1i, u_input.c.x, u_input.b, 2147483647i)))), _wgslsmith_f_op_f32(func_3(false, ~(-11174i), min(firstTrailingBit(vec4<i32>(u_input.b, -39028i, u_input.b, u_input.b)), vec4<i32>(-2147483647i, 20800i, 1i, 0i)))), vec4<u32>(~select(reverseBits(var_0), 1u, global1.x), var_0, 1u, var_0));
    var_1 = global2[_wgslsmith_index_u32(var_0 & 72226u, 9u)];
    var_1 = global2[_wgslsmith_index_u32(var_1.c.x, 9u)];
    return !any(vec3<bool>(!global1.x, all(!vec2<bool>(global1.x, global1.x)), any(select(vec4<bool>(global1.x, false, true, true), vec4<bool>(global1.x, false, global1.x, global1.x), vec4<bool>(global1.x, false, false, global1.x)))));
}

fn func_1(arg_0: i32, arg_1: vec3<u32>, arg_2: bool, arg_3: Struct_1) -> f32 {
    global0 = arg_3.c.x;
    let var_0 = !select(vec4<bool>(func_2(), any(!vec2<bool>(global1.x, arg_2)), !global1.x, global1.x), select(select(vec4<bool>(arg_2, arg_2, false, arg_2), select(vec4<bool>(false, false, true, arg_2), vec4<bool>(global1.x, global1.x, true, true), arg_2), vec4<bool>(global1.x, false, arg_2, arg_2)), vec4<bool>(true, any(vec2<bool>(global1.x, global1.x)), global1.x, true), true || (arg_3.b < -108f)), select(vec4<bool>(arg_3.b != arg_3.b, true, arg_2, global1.x == false), vec4<bool>(true, true, true, true), !select(false, global1.x, true)));
    let var_1 = Struct_2(vec2<u32>(1u, arg_3.c.x));
    global1 = select(!vec2<bool>(true, u_input.a != 1u), select(!select(vec2<bool>(true, false), !var_0.yy, vec2<bool>(true, arg_2)), select(vec2<bool>(2147483647i > arg_0, global1.x), vec2<bool>(!global1.x, any(var_0)), false), false), func_2());
    let var_2 = Struct_1(vec4<i32>(~max(~arg_0, 51058i), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-u_input.c.x, -2147483647i, u_input.b), _wgslsmith_mod_i32(_wgslsmith_div_i32(-1i, arg_3.a.x), -1i)), arg_3.a.x, u_input.b >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(96546u, arg_1.x), arg_1.yz) % 32u)), arg_3.b, _wgslsmith_mod_vec4_u32(abs(_wgslsmith_mult_vec4_u32(arg_3.c, ~arg_3.c)), _wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(arg_3.c.x, 0u, 17963u, arg_3.c.x)), vec4<u32>(~var_1.a.x, countOneBits(4294967295u), ~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(22724u, arg_3.c.x, arg_1.x), vec3<u32>(u_input.a, arg_3.c.x, arg_1.x))))));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2.b, -1133f)) - _wgslsmith_f_op_f32(f32(-1f) * -1664f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_3.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1297f - 295f) + _wgslsmith_f_op_f32(-arg_3.b)))))));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: f32) -> Struct_3 {
    let var_0 = select(vec2<u32>(4294967295u, arg_1.c.x), abs(select(vec2<u32>(~u_input.a, 4294967295u), min(arg_1.c.xw, abs(arg_1.c.wx)), (u_input.a <= u_input.a) || true)), false);
    let var_1 = Struct_2(_wgslsmith_div_vec2_u32(arg_1.c.yy, _wgslsmith_mult_vec2_u32(~firstLeadingBit(var_0), firstLeadingBit(arg_1.c.ww))));
    var var_2 = Struct_1(abs(vec4<i32>(-27300i, select(_wgslsmith_mod_i32(arg_1.a.x, -10253i), -2147483647i >> (arg_1.c.x % 32u), all(vec2<bool>(false, global1.x))), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.b), vec2<i32>(2147483647i, -24704i) & vec2<i32>(arg_1.a.x, arg_1.a.x)), 1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0))), ~_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(1u, var_0.x, 1u, var_1.a.x)), countOneBits(vec4<u32>(1u, var_0.x, u_input.a, var_0.x))), _wgslsmith_clamp_vec4_u32(select(vec4<u32>(4294967295u, var_0.x, 4294967295u, var_0.x), arg_1.c, vec4<bool>(true, global1.x, global1.x, global1.x)), _wgslsmith_div_vec4_u32(arg_1.c, vec4<u32>(var_1.a.x, var_0.x, 39689u, var_0.x)), abs(vec4<u32>(72260u, var_1.a.x, 45147u, 1u)))));
    let var_3 = _wgslsmith_mod_vec4_u32(arg_1.c, vec4<u32>(~(~_wgslsmith_mod_u32(arg_1.c.x, var_1.a.x)), _wgslsmith_add_u32(_wgslsmith_mult_u32(arg_1.c.x, _wgslsmith_sub_u32(arg_1.c.x, var_1.a.x)), arg_1.c.x), 0u, countOneBits(~20426u)));
    global0 = var_0.x;
    return Struct_3(Struct_2(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(24245u, 4294967295u), ~var_3.wz), var_2.c.xw)), 1u, ~abs(arg_1.a.x & arg_1.a.x) == -_wgslsmith_dot_vec3_i32(-vec3<i32>(var_2.a.x, u_input.b, u_input.c.x), arg_1.a.wwz));
}

fn func_5(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_3) -> Struct_2 {
    let var_0 = func_4(916f, Struct_1(~abs(vec4<i32>(1i, 17269i, -18495i, 1i)) | firstTrailingBit(vec4<i32>(-1i, u_input.c.x, 0i, 0i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2392f) + 448f) - _wgslsmith_f_op_f32(min(-434f, _wgslsmith_f_op_f32(abs(102f))))), ~vec4<u32>(~arg_0, _wgslsmith_div_u32(4294967295u, u_input.a), 1u, arg_0 >> (u_input.a % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-207f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-117f, 2015f, arg_2.c))))))).a;
    var var_1 = -vec4<i32>(~9909i, -(~_wgslsmith_mod_i32(u_input.c.x, u_input.b)), u_input.c.x, reverseBits(~(-2147483647i)));
    var var_2 = _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(firstLeadingBit(~vec3<i32>(var_1.x, var_1.x, u_input.c.x)), vec3<i32>(46238i, 1i, 11834i)), ~vec3<i32>(0i, u_input.c.x, -_wgslsmith_div_i32(var_1.x, 0i)));
    var var_3 = max(u_input.c, var_1.zzx);
    let var_4 = arg_2.b;
    return arg_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.x;
    global2 = array<Struct_1, 9>();
    var var_1 = func_5(~countOneBits(1u), firstTrailingBit(vec2<u32>(~firstTrailingBit(114406u), ~(17491u << (u_input.a % 32u)))), func_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(-1i, vec3<u32>(u_input.a, 32889u, u_input.a), false, Struct_1(vec4<i32>(57816i, 2147483647i, 0i, u_input.c.x), -271f, vec4<u32>(u_input.a, 0u, u_input.a, 34668u)))) + _wgslsmith_f_op_f32(1185f - -460f)))), Struct_1((vec4<i32>(u_input.c.x, u_input.b, u_input.b, u_input.b) | vec4<i32>(32225i, u_input.b, u_input.c.x, u_input.b)) & _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, 0i, 48246i, 2147483647i), vec4<i32>(u_input.c.x, u_input.b, -17118i, 16537i)), -1000f, _wgslsmith_mult_vec4_u32(select(vec4<u32>(u_input.a, 32733u, 1u, u_input.a), vec4<u32>(u_input.a, u_input.a, 7981u, u_input.a), true), vec4<u32>(1u, u_input.a, 756u, 9672u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1272f))))));
    var var_2 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1079f)))) * _wgslsmith_f_op_f32(226f - 325f)), Struct_1(~(~(-vec4<i32>(-2147483647i, 2147483647i, u_input.b, u_input.b))), -346f, _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.a.x, var_1.a.x, u_input.a, var_1.a.x), vec4<u32>(0u, 39356u, 1u, u_input.a)), countOneBits(vec4<u32>(u_input.a, var_1.a.x, 1u, 1u))) | ~vec4<u32>(var_1.a.x, 35507u, var_1.a.x, 5023u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(575f * -171f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -288f))))).a;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(669f, 704f, 1227f, 1000f) * vec4<f32>(1355f, 136f, 1609f, 540f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-126f, 470f, 140f, -1513f))) * vec4<f32>(_wgslsmith_f_op_f32(-354f * -1000f), _wgslsmith_f_op_f32(func_3(global1.x, -1i, vec4<i32>(u_input.c.x, 23083i, u_input.b, u_input.c.x))), -329f, _wgslsmith_div_f32(918f, -1367f))))) - vec4<f32>(-742f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(138f - 969f)))), _wgslsmith_f_op_f32(1f + 239f), _wgslsmith_f_op_f32(select(-127f, _wgslsmith_f_op_f32(426f * 827f), true))));
    var var_4 = false;
    var var_5 = Struct_1(vec4<i32>(reverseBits(-1i), _wgslsmith_clamp_i32(firstLeadingBit(u_input.c.x) | (8744i | u_input.c.x), u_input.c.x, u_input.b), u_input.b, _wgslsmith_mult_i32(1i, ~(u_input.c.x >> (0u % 32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(390f, -1000f) * var_3.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(select(abs(4294967295u), ~4294967295u, !global1.x), reverseBits(var_1.a.x), 33459u, 0u), vec4<u32>(~func_4(var_3.x, global2[_wgslsmith_index_u32(1u, 9u)], var_3.x).b, countOneBits(~var_2.a.x), ~firstLeadingBit(4294967295u), 0u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.a.yzx, 1u, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1149f, var_3.x, -755f, 819f) + vec4<f32>(var_5.b, -224f, var_5.b, 389f)))) - var_3))));
}

