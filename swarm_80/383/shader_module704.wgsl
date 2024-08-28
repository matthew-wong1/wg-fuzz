struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: i32,
    d: vec4<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 4>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: vec3<f32>, arg_3: vec2<bool>) -> f32 {
    var var_0 = _wgslsmith_mult_u32(arg_0, arg_0);
    global0 = array<f32, 4>();
    let var_1 = vec3<bool>(arg_3.x, arg_3.x, true);
    let var_2 = Struct_1(1f, -_wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 10993i), _wgslsmith_mod_vec4_i32(~u_input.a, u_input.a & vec4<i32>(0i, u_input.a.x, 2147483647i, 8343i))), 13553i, _wgslsmith_mod_i32(firstLeadingBit(-25005i ^ u_input.a.x), select(abs(u_input.a.x), 1i, !all(vec4<bool>(true, var_1.x, arg_3.x, var_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 4u)] - arg_1), any(vec4<bool>(var_1.x, var_1.x, arg_3.x, var_1.x))))) < arg_2.x);
    global0 = array<f32, 4>();
    return _wgslsmith_f_op_f32(f32(-1f) * -1245f);
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> u32 {
    var var_0 = arg_1;
    var_0 = Struct_1(_wgslsmith_div_f32(arg_1.a, -159f), vec4<i32>(~_wgslsmith_div_i32(-1i, countOneBits(u_input.a.x)), ~arg_1.b.x, abs(u_input.a.x), -2147483647i), -2147483647i, var_0.c, false);
    let var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1097f, _wgslsmith_f_op_f32(arg_1.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_0, 4u)] - var_0.a) - _wgslsmith_f_op_f32(func_3(3455u, 580f, vec3<f32>(-361f, arg_1.a, 642f), vec2<bool>(var_0.e, arg_1.e))))), 809f) * vec3<f32>(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.a))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a * 729f)))));
    let var_3 = _wgslsmith_add_vec2_i32(u_input.a.zz, arg_1.b.yw);
    return _wgslsmith_clamp_u32(_wgslsmith_mod_u32(32739u, arg_0), 28535u, arg_0);
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_1) -> Struct_1 {
    return Struct_1(1218f, u_input.a, 31808i, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(max(vec4<i32>(-8169i, u_input.a.x, 30804i, 29068i), -arg_2.b), min(vec4<i32>(0i, arg_2.b.x, arg_2.c, 0i) ^ arg_2.b, vec4<i32>(-2147483647i, arg_2.d, u_input.a.x, 39026i))), ~u_input.a.x << (~(~arg_0) % 32u)), arg_2.e);
}

fn func_1(arg_0: vec2<f32>, arg_1: bool) -> Struct_1 {
    var var_0 = func_4(func_2(26893u, Struct_1(arg_0.x, u_input.a, u_input.a.x, firstTrailingBit(u_input.a.x), false)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, firstTrailingBit(10817u), 80115u, 4294967295u), ~vec4<u32>(1u, 1u, 1u, 1u)) << (vec4<u32>(0u, 1u, ~1u, ~5275u >> (1u % 32u)) % vec4<u32>(32u)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), vec4<i32>(u_input.a.x, firstLeadingBit(~(-30678i)), countOneBits(u_input.a.x), _wgslsmith_div_i32(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -1i, 1i), vec3<i32>(-18548i, -38510i, u_input.a.x)))), (u_input.a.x >> (countOneBits(8276u) % 32u)) << (1u % 32u), firstTrailingBit(u_input.a.x >> (~0u % 32u)), arg_1));
    let var_1 = func_4(firstLeadingBit(1u), vec4<u32>(1u, 1u, 32776u, 44193u), Struct_1(func_4(~0u, select(~vec4<u32>(17666u, 55285u, 0u, 4294967295u), vec4<u32>(30463u, 128388u, 1u, 4294967295u), !vec4<bool>(false, true, var_0.e, arg_1)), func_4(13048u, vec4<u32>(36420u, 45042u, 0u, 4294967295u), func_4(5123u, vec4<u32>(19683u, 1u, 15438u, 1u), Struct_1(-1367f, vec4<i32>(2147483647i, u_input.a.x, var_0.d, 9939i), var_0.c, var_0.c, arg_1)))).a, var_0.b, _wgslsmith_dot_vec4_i32(-var_0.b, -vec4<i32>(u_input.a.x, var_0.b.x, u_input.a.x, -10972i)) >> (1u % 32u), max(u_input.a.x << (31492u % 32u), u_input.a.x), true));
    return var_1;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: u32, arg_3: vec4<bool>) -> Struct_1 {
    global0 = array<f32, 4>();
    var var_0 = func_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-443f - _wgslsmith_f_op_f32(-626f - 427f))), _wgslsmith_f_op_f32(sign(788f))), true);
    var_0 = func_4(~firstTrailingBit(reverseBits(0u)), ~_wgslsmith_sub_vec4_u32(min(firstLeadingBit(vec4<u32>(3957u, arg_2, 4294967295u, arg_2)), select(vec4<u32>(0u, 1u, 4294967295u, 34922u), vec4<u32>(4294967295u, 26529u, 14800u, arg_2), arg_3)), ~(vec4<u32>(64698u, arg_2, 4294967295u, arg_2) >> (vec4<u32>(arg_2, arg_2, 4294967295u, 24681u) % vec4<u32>(32u)))), func_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(623f, -542f))))))), true));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-888f, global0[_wgslsmith_index_u32(46990u, 4u)], arg_0.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, var_0.a, arg_0.a)))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.a, var_0.a, 1152f), vec3<f32>(1424f, -505f, arg_0.a))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(arg_2, 4u)], -1138f, 281f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, 130f, arg_0.a) * vec3<f32>(global0[_wgslsmith_index_u32(0u, 4u)], 1254f, 890f))), !select(arg_3.zxx, vec3<bool>(var_0.e, arg_3.x, var_0.e), vec3<bool>(arg_0.e, var_0.e, true))))), arg_0.e));
    let var_2 = arg_0.a;
    return Struct_1(var_1.x, func_4(arg_2, _wgslsmith_mult_vec4_u32(~vec4<u32>(0u, arg_2, 1u, arg_2) | max(vec4<u32>(14883u, 1593u, arg_2, arg_2), vec4<u32>(arg_2, arg_2, arg_2, 61639u)), abs(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_2, arg_2, arg_2, 0u), vec4<u32>(arg_2, 66811u, 19061u, arg_2)))), arg_0).b, u_input.a.x, 0i, true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 4>();
    global0 = array<f32, 4>();
    var var_0 = func_5(func_1(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-694f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 4u)])))), false), u_input.a, abs(47602u) << ((max(1u, 0u) >> (~4294967295u % 32u)) % 32u), vec4<bool>(true, func_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0[_wgslsmith_index_u32(34584u, 4u)], 1349f))))), all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), true))).e, !any(vec3<bool>(true, true, true)), false));
    var var_1 = firstTrailingBit(6279u);
    var_1 = 4122u;
    var var_2 = -1338f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.a)) + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(48681u, 4u)])), _wgslsmith_f_op_f32(func_3(1u, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 4u)]), vec3<f32>(891f, 2489f, var_0.a), vec2<bool>(true, var_0.e))), any(select(vec2<bool>(var_0.e, false), vec2<bool>(var_0.e, true), var_0.e)))) - -199f);
    var_0 = func_4(~27569u, countOneBits(~select(~vec4<u32>(4294967295u, 4294967295u, 0u, 0u), vec4<u32>(1u, 1u, 1u, 1u), vec4<bool>(true, true, true, true))), func_4(_wgslsmith_sub_u32(1u, ~4294967295u), _wgslsmith_div_vec4_u32(vec4<u32>(reverseBits(7460u), ~7173u, _wgslsmith_dot_vec3_u32(vec3<u32>(3909u, 3731u, 103398u), vec3<u32>(53343u, 1u, 39295u)), ~2351u), ~vec4<u32>(1u, 1u, 1u, 1u)), func_4(1u, abs(~vec4<u32>(21260u, 36450u, 83860u, 33043u)), func_4(~0u, reverseBits(vec4<u32>(77767u, 21168u, 60035u, 4294967295u)), func_5(Struct_1(1299f, var_0.b, -2147483647i, var_0.c, var_0.e), var_0.b, 4294967295u, vec4<bool>(false, true, var_0.e, var_0.e))))));
    var var_3 = func_4(~0u, vec4<u32>(min(~firstTrailingBit(29409u), _wgslsmith_add_u32(_wgslsmith_div_u32(1u, 4294967295u), ~1u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 62054u), vec3<u32>(1u, 13451u, 1u)) & ~4294967295u, ~abs(~46974u), ~_wgslsmith_sub_u32(~11531u, 55397u)), func_5(func_5(func_1(_wgslsmith_div_vec2_f32(vec2<f32>(399f, -385f), vec2<f32>(var_0.a, -307f)), true), firstLeadingBit(countOneBits(var_0.b)), 1u, vec4<bool>(false, true, true, any(vec4<bool>(var_0.e, var_0.e, var_0.e, true)))), vec4<i32>(-max(var_0.c, -40591i), _wgslsmith_mod_i32(-39766i, var_0.d) >> (firstTrailingBit(1u) % 32u), -_wgslsmith_dot_vec4_i32(var_0.b, var_0.b), firstTrailingBit(u_input.a.x) & min(2147483647i, u_input.a.x)), 0u, !(!vec4<bool>(var_0.e, var_0.e, false, false))));
    let var_4 = func_4(~_wgslsmith_dot_vec2_u32(~(~vec2<u32>(4294967295u, 59078u)), abs(~vec2<u32>(0u, 18082u))), ~(~vec4<u32>(1u, 1u, 1u, 1u)) >> (max(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 5474u, 0u), vec3<u32>(1u, 0u, 0u)), 1u, _wgslsmith_div_u32(5292u, 1u), ~0u), vec4<u32>(countOneBits(1u), 57670u, 484u, _wgslsmith_add_u32(0u, 43038u))) % vec4<u32>(32u)), func_4(7735u, max(_wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(51795u, 47028u, 42145u, 1u)), vec4<u32>(1u, 1u, 1u, 1u)), ~vec4<u32>(9065u, 47916u, 0u, 12729u)), Struct_1(global0[_wgslsmith_index_u32(~12533u, 4u)], _wgslsmith_add_vec4_i32(u_input.a, var_0.b) | (u_input.a ^ vec4<i32>(var_0.c, u_input.a.x, u_input.a.x, 6373i)), (var_3.b.x << (1u % 32u)) << (1u % 32u), _wgslsmith_add_i32(u_input.a.x, firstLeadingBit(var_0.c)), func_5(Struct_1(global0[_wgslsmith_index_u32(78021u, 4u)], vec4<i32>(u_input.a.x, -1i, var_0.b.x, var_3.d), u_input.a.x, -1i, var_3.e), abs(vec4<i32>(1i, var_0.d, -37013i, var_0.b.x)), ~1u, select(vec4<bool>(var_3.e, true, var_3.e, var_3.e), vec4<bool>(false, var_0.e, var_0.e, true), false)).e)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_4.a)) * -819f), func_5(var_4, vec4<i32>(-31746i, -1i, -26014i, var_4.d), ~27754u, select(vec4<bool>(false, true, false, var_3.e), vec4<bool>(var_3.e, var_0.e, true, false), var_0.e)).a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.a, -1351f, 1396f))))), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_4.a, -282f))) * vec2<f32>(168f, -760f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(578f, var_4.a))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.a, -636f), vec2<f32>(var_0.a, -1186f), false))))), u_input.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0[_wgslsmith_index_u32(46481u, 4u)], global0[_wgslsmith_index_u32(4294967295u, 4u)], var_3.a, var_4.a))), vec4<f32>(_wgslsmith_div_f32(-1290f, 1193f), _wgslsmith_f_op_f32(-var_3.a), _wgslsmith_f_op_f32(ceil(-208f)), 1000f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(1297f + var_3.a)), _wgslsmith_f_op_f32(1000f + var_0.a), _wgslsmith_f_op_f32(round(var_0.a)), -768f))));
}

