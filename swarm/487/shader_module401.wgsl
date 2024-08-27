struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec4<i32>,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -204f;

var<private> global1: array<u32, 16> = array<u32, 16>(140908u, 85030u, 0u, 14272u, 20118u, 3810u, 44475u, 77878u, 53756u, 0u, 78361u, 1u, 1u, 1u, 16781u, 13820u);

var<private> global2: array<i32, 27> = array<i32, 27>(1i, -40953i, -34170i, 0i, i32(-2147483648), -1i, 1i, 1i, -1664i, 1i, 1i, -37272i, 38889i, 0i, -9533i, i32(-2147483648), 2147483647i, 23846i, -35576i, 0i, i32(-2147483648), 0i, 1i, 2147483647i, 1702i, -14420i, -8451i);

var<private> global3: f32;

var<private> global4: array<Struct_1, 6>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: u32) -> f32 {
    let var_0 = Struct_1(vec3<bool>(!arg_1.x, arg_0.d, any(select(select(arg_0.a, vec3<bool>(false, arg_0.a.x, false), arg_1.wwx), vec3<bool>(false, arg_1.x, arg_0.a.x), !vec3<bool>(false, arg_1.x, arg_1.x)))), _wgslsmith_add_i32(i32(-1i) * -14675i, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(-vec4<i32>(global2[_wgslsmith_index_u32(19537u, 27u)], -33841i, 0i, arg_0.c.x), abs(vec4<i32>(-1i, -1157i, global2[_wgslsmith_index_u32(u_input.b, 27u)], -2147483647i))), _wgslsmith_mult_vec4_i32(~vec4<i32>(-27855i, arg_0.b, global2[_wgslsmith_index_u32(arg_2, 27u)], 1i), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, arg_0.c.x, 41512i, arg_0.c.x), vec4<i32>(arg_0.b, -1i, 1i, 41525i))))), vec4<i32>(~(-1i), -_wgslsmith_mod_i32(2147483647i, -1040i), abs(_wgslsmith_dot_vec3_i32(arg_0.c.zyy, -arg_0.c.zzw)), ~16814i), true, -233f);
    let var_1 = firstLeadingBit(select(arg_0.c.zz, firstLeadingBit(vec2<i32>(-var_0.b, ~1i)), arg_0.a.yz));
    return arg_0.e;
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> bool {
    let var_0 = vec4<u32>(~(~u_input.b), u_input.b | 52120u, 1u, ~abs(73747u));
    global3 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_1 = global4[_wgslsmith_index_u32(1u, 6u)];
    var var_2 = ~vec4<u32>(min(~global1[_wgslsmith_index_u32(var_0.x, 16u)], global1[_wgslsmith_index_u32(var_0.x, 16u)]), select(~40218u, 4294967295u, all(vec4<bool>(true, arg_1.a.x, false, var_1.d))), var_0.x ^ 0u, firstTrailingBit(0u));
    var var_3 = vec4<f32>(var_1.e, 1007f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global4[_wgslsmith_index_u32(var_0.x, 6u)], vec4<bool>(true, false, false, var_1.a.x), 2507u | global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.x, 16u)], 16u)])))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.e), 1221f)), arg_1.e) - var_1.e));
    return var_1.d;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1210f, -1000f)))))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1418f, 1223f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1833f, 1000f)))))));
    let var_1 = Struct_1(select(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true), true), vec3<bool>(false, true, (u_input.b | global1[_wgslsmith_index_u32(u_input.c, 16u)]) < _wgslsmith_div_u32(26023u, 16661u)), vec3<bool>(true, true, false)), ~(u_input.a.x >> (0u % 32u)), vec4<i32>(~u_input.a.x >> (18360u % 32u), global2[_wgslsmith_index_u32(70186u, 27u)], 1i, global2[_wgslsmith_index_u32(0u, 27u)]), any(vec3<bool>(true, !(u_input.a.x == u_input.a.x), any(vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_f32(-341f + _wgslsmith_f_op_f32(f32(-1f) * -464f)));
    global4 = array<Struct_1, 6>();
    let var_2 = 0i;
    let var_3 = 4294967295u;
    return Struct_1(vec3<bool>(true, false, func_4(u_input.a.x, Struct_1(var_1.a, 0i, _wgslsmith_div_vec4_i32(var_1.c, vec4<i32>(var_2, u_input.a.x, -27983i, var_2)), any(vec4<bool>(var_1.d, true, var_1.a.x, false)), _wgslsmith_f_op_f32(func_3(Struct_1(var_1.a, var_1.c.x, vec4<i32>(var_2, var_1.b, 24538i, 0i), var_1.d, var_1.e), vec4<bool>(false, var_1.d, true, var_1.d), u_input.c))))), 1i, abs(vec4<i32>(var_2, 47494i, _wgslsmith_clamp_i32(~u_input.a.x, -2147483647i, reverseBits(15767i)), global2[_wgslsmith_index_u32(~firstLeadingBit(4294967295u), 27u)])), var_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.e, -1487f)) * _wgslsmith_f_op_f32(-var_1.e)) - _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1572f, -238f)))));
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = min(1i, select(~1i, ~(-_wgslsmith_mod_i32(global2[_wgslsmith_index_u32(0u, 27u)], 54636i)), any(!(!arg_3.a))));
    var_0 = ~(-min(select(-1i, ~(-2147483647i), global1[_wgslsmith_index_u32(u_input.c, 16u)] >= 1u), -2147483647i));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-919f, arg_1.e, -335f, -388f), vec4<f32>(-900f, 972f, arg_3.e, 884f), arg_3.d)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-700f, arg_2.x, -1000f, arg_3.e))))) + vec4<f32>(_wgslsmith_f_op_f32(arg_2.x - 2019f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1338f, arg_1.e)))), arg_3.e, _wgslsmith_f_op_f32(func_2().e * arg_2.x)));
    var var_2 = Struct_1(vec3<bool>(!func_4(i32(-1i) * -2147483647i, arg_3), arg_1.a.x, arg_3.a.x), 5183i, arg_1.c, false, arg_2.x);
    let var_3 = global4[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(62537u, _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(~0u, 16u)], 35787u & global1[_wgslsmith_index_u32(0u, 16u)]))), 6u)];
    return Struct_1(vec3<bool>((i32(-1i) * -4114i) >= arg_0, select(!(arg_0 > u_input.a.x), all(vec3<bool>(true, arg_3.d, var_3.d)), arg_3.d), !(any(vec3<bool>(var_2.a.x, arg_3.a.x, var_2.a.x)) && func_2().a.x)), ~func_2().b, func_2().c, arg_3.d, -1000f);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec3<i32>, arg_3: bool) -> vec4<i32> {
    var var_0 = func_5(-global2[_wgslsmith_index_u32((1u ^ u_input.b) & _wgslsmith_dot_vec4_u32(arg_1, ~vec4<u32>(0u, global1[_wgslsmith_index_u32(4294967295u, 16u)], u_input.b, global1[_wgslsmith_index_u32(arg_1.x, 16u)])), 27u)], func_2(), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e) - arg_0.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.e))), _wgslsmith_f_op_f32(178f * _wgslsmith_f_op_f32(sign(1538f)))))), func_2());
    var var_1 = Struct_1(func_2().a, ~_wgslsmith_dot_vec3_i32(var_0.c.xxw, min(~vec3<i32>(20246i, u_input.a.x, var_0.b), vec3<i32>(2147483647i, arg_0.b, -1i))), arg_0.c, true, var_0.e);
    global0 = 126f;
    let var_2 = Struct_1(func_2().a, ~arg_2.x, _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, -1i, -2961i, -21477i), arg_0.c) | func_5(global2[_wgslsmith_index_u32(arg_1.x, 27u)], global4[_wgslsmith_index_u32(u_input.c, 6u)], vec3<f32>(269f, arg_0.e, var_1.e), Struct_1(var_0.a, var_1.b, arg_0.c, var_1.a.x, var_1.e)).c, -vec4<i32>(2964i, 1i, 14295i, var_1.c.x)), -var_1.c & var_0.c), false, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -796f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e))), -1020f)));
    let var_3 = func_2();
    return vec4<i32>(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(var_3.b, _wgslsmith_clamp_i32(var_0.b, 9906i, var_2.b), -arg_2.x, -9888i)), vec4<i32>(var_1.c.x, -1i, global2[_wgslsmith_index_u32(u_input.b, 27u)], var_1.c.x) << (select(countOneBits(arg_1), firstTrailingBit(arg_1), select(vec4<bool>(true, true, var_2.a.x, true), vec4<bool>(var_2.d, var_2.a.x, false, arg_0.a.x), vec4<bool>(false, arg_3, var_2.a.x, arg_3))) % vec4<u32>(32u))), _wgslsmith_dot_vec4_i32(~func_5(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 2147483647i, var_0.c.x), vec3<i32>(var_2.b, -14251i, 1i)), func_2(), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.e, var_0.e, 1026f), vec3<f32>(674f, -163f, arg_0.e)), func_5(var_3.c.x, Struct_1(var_2.a, 20565i, vec4<i32>(var_2.b, var_2.b, global2[_wgslsmith_index_u32(16687u, 27u)], u_input.a.x), true, arg_0.e), vec3<f32>(-996f, -322f, var_0.e), Struct_1(var_0.a, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 16u)], 27u)], vec4<i32>(global2[_wgslsmith_index_u32(u_input.c, 27u)], var_0.c.x, var_0.c.x, 25011i), false, var_2.e))).c, select(_wgslsmith_div_vec4_i32(vec4<i32>(arg_0.c.x, arg_2.x, var_2.b, u_input.a.x), var_0.c), vec4<i32>(min(19297i, var_2.b), ~var_2.b, var_2.b | -20183i, u_input.a.x), true)), firstTrailingBit(-3737i), var_2.b);
}

fn func_6(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec4<bool>, arg_3: vec3<bool>) -> Struct_1 {
    let var_0 = func_5(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(~global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_1.yx, arg_1.xz), 27u)], abs(1i), 2147483647i), ~global2[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(u_input.c, 16u)], 22917u)), 27u)]), func_2(), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1153f, _wgslsmith_f_op_f32(-arg_0.e), -716f) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.e, 748f, arg_0.e)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.e, 548f, 1833f)) + vec3<f32>(arg_0.e, -1085f, arg_0.e)) + vec3<f32>(arg_0.e, _wgslsmith_f_op_f32(f32(-1f) * -494f), _wgslsmith_f_op_f32(-arg_0.e)))), global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 16u)], 6u)]);
    let var_1 = arg_0;
    global0 = _wgslsmith_f_op_f32(abs(arg_0.e));
    global1 = array<u32, 16>();
    var var_2 = vec4<u32>(max(_wgslsmith_clamp_u32(_wgslsmith_div_u32(45511u, arg_1.x) & ~31271u, u_input.b, global1[_wgslsmith_index_u32(arg_1.x, 16u)]), _wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.c, global1[_wgslsmith_index_u32(67122u, 16u)]), arg_1.x)), _wgslsmith_mod_u32(53773u, ~(arg_1.x ^ 13718u) & global1[_wgslsmith_index_u32(u_input.b, 16u)]), ~arg_1.x, _wgslsmith_dot_vec4_u32(select(vec4<u32>(arg_1.x, 1u, 86522u, 88917u), arg_1, arg_2), ~arg_1) << (u_input.c % 32u));
    return func_5(_wgslsmith_add_i32(countOneBits(~(~2147483647i)), _wgslsmith_div_i32(abs(global2[_wgslsmith_index_u32(~86204u, 27u)]), global2[_wgslsmith_index_u32(reverseBits(21460u), 27u)] | -56917i)), var_0, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(494f - -382f)), var_1.e, arg_0.e), func_5(2147483647i << ((var_2.x >> (~68483u % 32u)) % 32u), Struct_1(vec3<bool>(false, false, !arg_2.x), ~(-17814i), vec4<i32>(-global2[_wgslsmith_index_u32(arg_1.x, 27u)], arg_0.c.x, u_input.a.x, _wgslsmith_mod_i32(arg_0.c.x, 1i)), any(arg_2) || func_5(arg_0.c.x, var_1, vec3<f32>(832f, var_0.e, var_1.e), Struct_1(vec3<bool>(var_1.a.x, arg_2.x, arg_0.a.x), u_input.a.x, var_0.c, arg_2.x, var_0.e)).d, var_1.e), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_1.e - -2013f), _wgslsmith_f_op_f32(-752f * 1000f), _wgslsmith_f_op_f32(select(-672f, arg_0.e, arg_3.x))) + vec3<f32>(_wgslsmith_f_op_f32(abs(763f)), _wgslsmith_f_op_f32(-1433f + var_0.e), -2588f)), Struct_1(select(var_0.a, !vec3<bool>(arg_2.x, true, var_1.d), vec3<bool>(false, arg_3.x, true)), ~5678i, firstLeadingBit(var_0.c) >> (~arg_1 % vec4<u32>(32u)), false || (true && arg_0.a.x), arg_0.e)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(any(vec4<bool>(any(vec2<bool>(true, true)), all(vec3<bool>(false, false, false)), false, false)) & true, false, any(!vec3<bool>(u_input.a.x <= 3212i, any(vec4<bool>(true, true, false, false)), any(vec4<bool>(false, false, false, true)))), true);
    global3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(2066f + -1278f)));
    global0 = _wgslsmith_div_f32(-615f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-495f + _wgslsmith_div_f32(517f, 976f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1446f)))) + -2256f));
    let var_1 = Struct_1(!select(vec3<bool>(!var_0.x, var_0.x, false), vec3<bool>(u_input.a.x < 136i, false, all(vec4<bool>(var_0.x, false, var_0.x, true))), (i32(-1i) * -27032i) != global2[_wgslsmith_index_u32(u_input.c | u_input.b, 27u)]), _wgslsmith_sub_i32(u_input.a.x, ~_wgslsmith_sub_i32(65119i, -1i)), vec4<i32>(-(~(-u_input.a.x)), reverseBits(_wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(4294967295u, 27u)], u_input.a.x, ~global2[_wgslsmith_index_u32(42765u, 27u)])), 29315i, ~0i), var_0.x, -435f);
    global4 = array<Struct_1, 6>();
    var var_2 = 1i;
    let var_3 = func_6(Struct_1(var_1.a, var_1.b, _wgslsmith_clamp_vec4_i32(firstLeadingBit(func_1(global4[_wgslsmith_index_u32(115830u, 6u)], vec4<u32>(u_input.c, u_input.b, u_input.c, u_input.b), vec3<i32>(-1i, 0i, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 16u)], 16u)], 27u)]), true)), -vec4<i32>(1i, var_1.b, u_input.a.x, -2147483647i), -abs(vec4<i32>(var_1.c.x, 42023i, var_1.b, global2[_wgslsmith_index_u32(u_input.b, 27u)]))), var_0.x, var_1.e), _wgslsmith_div_vec4_u32(min(vec4<u32>(65496u << (u_input.b % 32u), 4294967295u << (u_input.c % 32u), min(u_input.c, 0u), reverseBits(global1[_wgslsmith_index_u32(0u, 16u)])), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(1u, 16u)], 0u, u_input.c, global1[_wgslsmith_index_u32(18593u, 16u)]), vec4<u32>(22757u, 4294967295u, global1[_wgslsmith_index_u32(u_input.c, 16u)], u_input.c), vec4<u32>(49999u, 139153u, global1[_wgslsmith_index_u32(u_input.b, 16u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 16u)], 16u)])), vec4<u32>(u_input.c, global1[_wgslsmith_index_u32(u_input.b, 16u)], 4294967295u, 37522u))), vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~28891u >> (~u_input.b % 32u), 16u)], 16u)], 50175u >> (_wgslsmith_div_u32(u_input.c, 49369u) % 32u), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(28034u, 72318u), vec2<u32>(u_input.c, u_input.b)), vec2<u32>(0u, 63494u)))), var_0, vec3<bool>(!(!var_1.a.x) && var_1.a.x, true, -(~25914i) <= u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-270f * -364f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-501f, var_1.e)) * var_1.e)))), ~(global1[_wgslsmith_index_u32(u_input.b, 16u)] << (1u % 32u)), global1[_wgslsmith_index_u32(~abs(0u), 16u)] >> ((143807u << (_wgslsmith_clamp_u32(61910u << (0u % 32u), u_input.b & u_input.c, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(global1[_wgslsmith_index_u32(84298u, 16u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 16u)], 16u)]))) % 32u)) % 32u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-968f, var_3.e) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-538f, -273f))))));
}

