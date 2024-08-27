struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: bool,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: u32,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11>;

var<private> global1: Struct_1;

var<private> global2: i32 = -1i;

var<private> global3: f32 = -639f;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<bool> {
    global2 = global1.a.x;
    var var_0 = _wgslsmith_mod_u32(firstTrailingBit(46118u), firstLeadingBit(~1u));
    let var_1 = abs(60889i);
    var var_2 = _wgslsmith_div_vec2_u32(vec2<u32>(52888u, 1u), _wgslsmith_sub_vec2_u32(~vec2<u32>(~4294967295u, ~1u), select(abs(vec2<u32>(19683u, 29166u)), vec2<u32>(~1u, abs(27883u)), select(select(vec2<bool>(true, global1.c), vec2<bool>(global1.d, global1.c), vec2<bool>(false, false)), !vec2<bool>(global1.d, global1.c), true))));
    let var_3 = Struct_1(firstLeadingBit(countOneBits(vec2<i32>(firstLeadingBit(u_input.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, var_1), vec2<i32>(-1i, u_input.a.x))))), u_input.a.xx, true, global1.c, _wgslsmith_sub_i32(-8126i, ~(~countOneBits(0i))));
    return select(!vec2<bool>(global1.c, true), select(!select(!vec2<bool>(var_3.c, global1.d), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(global1.d, true)), global1.e == global1.b.x), vec2<bool>(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(var_2.x, 11u)], -1213f)) == _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_2.x, 11u)] + global0[_wgslsmith_index_u32(4294967295u, 11u)]), -1572f <= _wgslsmith_div_f32(global0[_wgslsmith_index_u32(var_2.x, 11u)], 1000f)), !select(!vec2<bool>(var_3.c, true), vec2<bool>(true, true), select(vec2<bool>(true, global1.d), vec2<bool>(global1.c, var_3.d), vec2<bool>(global1.d, false)))), !((~var_1 != var_3.e) || !var_3.c));
}

fn func_2() -> vec2<u32> {
    var var_0 = vec3<bool>(any(vec4<bool>(global1.c, true, all(vec4<bool>(false, false, global1.d, true)), !(global1.d | global1.c))), any(func_3()), (_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-633f)))) > global0[_wgslsmith_index_u32(1u, 11u)]) | global1.d);
    var var_1 = firstLeadingBit(_wgslsmith_add_vec3_u32(~vec3<u32>(1u, 1u, 1u), select(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u), vec3<bool>(true, true, true)) | vec3<u32>(~4294967295u, ~4294967295u, 1u)));
    var_1 = vec3<u32>(1u, 0u, _wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<u32>(var_1.x, 19466u, var_1.x, var_1.x)), ~select(4294967295u, var_1.x, false)), _wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, var_1.x, 0u, 1898u), vec4<u32>(var_1.x, var_1.x, 23802u, var_1.x), vec4<u32>(var_1.x, var_1.x, var_1.x, var_1.x)), ~vec4<u32>(24977u, var_1.x, var_1.x, var_1.x) << ((vec4<u32>(20843u, var_1.x, var_1.x, var_1.x) << (vec4<u32>(4294967295u, 1u, var_1.x, 0u) % vec4<u32>(32u))) % vec4<u32>(32u)))));
    var var_2 = Struct_2(global0[_wgslsmith_index_u32(var_1.x, 11u)], _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 11u)]), global0[_wgslsmith_index_u32(~var_1.x, 11u)], select(var_0.x, global1.d, true))) - _wgslsmith_f_op_f32(-782f * global0[_wgslsmith_index_u32(var_1.x, 11u)]))), ~var_1.x, -reverseBits(abs(44080i)) ^ (_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(-34285i, global1.a.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(-15832i, global1.b.x), vec2<i32>(u_input.a.x, 1i))) >> (var_1.x % 32u)), Struct_1(vec2<i32>(u_input.a.x, i32(-1i) * -global1.e), u_input.a.zy, false, any(select(!vec4<bool>(var_0.x, var_0.x, false, global1.d), vec4<bool>(false, true, var_0.x, true), !vec4<bool>(var_0.x, global1.c, var_0.x, var_0.x))), i32(-1i) * -(-1i >> (var_1.x % 32u))));
    let var_3 = reverseBits(_wgslsmith_sub_vec3_u32((~vec3<u32>(var_1.x, var_2.c, var_1.x) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 38845u, 0u), vec3<u32>(var_2.c, var_2.c, var_1.x))) >> (~(~vec3<u32>(81010u, var_2.c, var_1.x)) % vec3<u32>(32u)), vec3<u32>(~1u, 17872u, 1u ^ (var_1.x ^ var_1.x))));
    return _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(~(~var_2.c), firstTrailingBit(~37348u)), ~_wgslsmith_mod_vec2_u32(var_1.zy, ~var_1.yy)), max(~firstLeadingBit(vec2<u32>(4294967295u, var_1.x)), _wgslsmith_div_vec2_u32(firstLeadingBit(var_3.xy), ~vec2<u32>(1u, 0u))));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec2<u32>) -> Struct_1 {
    global0 = array<f32, 11>();
    return Struct_1(~vec2<i32>(firstTrailingBit(0i), ~min(arg_1.a.x, u_input.a.x)), global1.a, arg_1.d, !any(select(vec3<bool>(arg_1.c, true, true), !vec3<bool>(arg_1.d, true, global1.d), !global1.d)), 43267i);
}

fn func_1() -> u32 {
    global1 = func_4(global0[_wgslsmith_index_u32(~(~0u), 11u)], Struct_1(vec2<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, global1.e), vec2<i32>(global1.e, global1.b.x)), abs(-global1.b.x)), -min(_wgslsmith_clamp_vec2_i32(u_input.a.zx, global1.a, global1.a), max(vec2<i32>(u_input.a.x, -1i), vec2<i32>(1i, -27242i))), global1.d, all(select(!vec3<bool>(false, global1.c, global1.c), select(vec3<bool>(true, global1.c, global1.c), vec3<bool>(true, global1.d, false), true), !vec3<bool>(global1.d, global1.c, true))), abs(1i)), select(func_2(), vec2<u32>(~(~14513u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(0u, 4294967295u, 0u, 12045u))), vec2<bool>(true, true)));
    let var_0 = func_4(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(func_2(), vec2<u32>(1u, _wgslsmith_mult_u32(0u, 7932u))), select(vec2<u32>(103418u << (0u % 32u), abs(4294967295u)), ~reverseBits(vec2<u32>(0u, 32800u)), select(vec2<bool>(global1.c, true), vec2<bool>(false, global1.d), global1.d))), 11u)], Struct_1(u_input.a.wx, func_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(20315u, 11u)]))), func_4(_wgslsmith_f_op_f32(abs(240f)), Struct_1(u_input.a.yw, vec2<i32>(u_input.a.x, global1.a.x), global1.d, global1.c, global1.a.x), vec2<u32>(1u, 1u)), select(func_2(), vec2<u32>(0u, 0u), true)).a, global1.d, !global1.c, global1.e), abs(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 4294967295u), ~vec2<u32>(1u, 1u))));
    var var_1 = i32(-1i) * -28446i;
    var var_2 = select(vec3<u32>(abs(_wgslsmith_mod_u32(0u, 1930u)), abs(26163u), ~20358u) >> (_wgslsmith_sub_vec3_u32(countOneBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(31817u, 26956u, 58767u), vec3<u32>(23599u, 1u, 1u), vec3<u32>(4294967295u, 52713u, 80425u))), ~(~vec3<u32>(50443u, 4294967295u, 1u))) % vec3<u32>(32u)), abs(firstTrailingBit(~vec3<u32>(1u, 1u, 1u))), false);
    global1 = Struct_1((max(_wgslsmith_sub_vec2_i32(global1.b, vec2<i32>(-14800i, var_0.b.x)), var_0.a) | vec2<i32>(var_0.a.x, -14165i)) ^ ~(-vec2<i32>(var_0.b.x, global1.b.x)), max(global1.b, vec2<i32>(min(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, 6477i), ~global1.b.x), 1i)), true, global1.c, -5437i);
    return 17671u;
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_2) -> f32 {
    var var_0 = arg_1.c;
    global2 = func_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(arg_1.b)), -1000f, true)), Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, arg_1.d) >> (~vec2<u32>(40043u, arg_1.c) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(global1.b, vec2<i32>(-1i, 2956i), global1.b) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(3174u, 7014u), vec2<u32>(arg_1.c, arg_1.c), vec2<u32>(arg_1.c, arg_1.c)) % vec2<u32>(32u))), vec2<i32>((1i << (arg_1.c % 32u)) & u_input.a.x, arg_1.d), true, true, 43593i), vec2<u32>(_wgslsmith_dot_vec3_u32(max(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.c, 24508u, 30234u), vec3<u32>(arg_1.c, 71201u, 4294967295u)), vec3<u32>(81801u, arg_1.c, arg_1.c)), ~vec3<u32>(44122u, 44034u, 1u) | abs(vec3<u32>(28586u, arg_1.c, arg_1.c))), 4294967295u)).b.x;
    global2 = _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, firstLeadingBit(global1.b.x)), ~((vec2<i32>(global1.b.x, -22491i) & arg_1.e.b) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)))), -_wgslsmith_div_i32(func_4(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 11u)] * arg_1.b), func_4(-1196f, arg_1.e, vec2<u32>(arg_1.c, arg_1.c)), vec2<u32>(arg_1.c, arg_1.c)).a.x, -31532i));
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 11u)] + -460f), _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(48042u, 11u)], 1138f)), !global1.d)))) * _wgslsmith_f_op_f32(floor(-1000f)));
    let var_1 = vec4<bool>(true, true, func_3().x, true);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-823f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_1.a, -954f)))) * _wgslsmith_f_op_f32(-1985f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(206f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(max(firstLeadingBit(12353u), 1u), 11u)]))) - _wgslsmith_f_op_f32(f32(-1f) * -675f));
    global3 = _wgslsmith_f_op_f32(func_5(~vec3<i32>(-1i, select(u_input.a.x >> (0u % 32u), _wgslsmith_div_i32(global1.b.x, -14908i), !global1.d), -2147483647i), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2184f * global0[_wgslsmith_index_u32(4294967295u, 11u)]))), global0[_wgslsmith_index_u32(2625u, 11u)], max(_wgslsmith_sub_u32(func_1(), 108974u), 4294967295u), -max(-19888i, firstTrailingBit(1i)), Struct_1(_wgslsmith_sub_vec2_i32(max(vec2<i32>(-2147483647i, -1i), vec2<i32>(-30735i, -2147483647i)), max(vec2<i32>(-44963i, u_input.a.x), vec2<i32>(-943i, global1.b.x))), min(_wgslsmith_add_vec2_i32(vec2<i32>(24238i, -32711i), u_input.a.wy), u_input.a.zw), true, func_4(-157f, func_4(635f, Struct_1(u_input.a.yz, global1.b, true, true, 26380i), vec2<u32>(87722u, 1u)), ~vec2<u32>(24001u, 4294967295u)).d, 0i))));
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(max(0u, 91363u), 11u)], _wgslsmith_f_op_f32(f32(-1f) * -312f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(913f)) * _wgslsmith_div_f32(global0[_wgslsmith_index_u32(10960u, 11u)], global0[_wgslsmith_index_u32(0u, 11u)])))) * vec2<f32>(global0[_wgslsmith_index_u32(73038u, 11u)], -958f));
    let var_1 = func_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -846f))), Struct_1(max(global1.a, vec2<i32>(-27370i, 85616i)), vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(global1.b, u_input.a.yy), global1.b), u_input.a.x), false, global1.c, ~global1.b.x), abs(max(vec2<u32>(select(0u, 58243u, global1.d), _wgslsmith_clamp_u32(0u, 8720u, 4294967295u)), vec2<u32>(1u, 1u))));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(0u, 11u)], 974f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(51066u, 11u)])) + global0[_wgslsmith_index_u32(firstLeadingBit(32636u), 11u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 11u)]) * _wgslsmith_f_op_f32(exp2(var_0.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2100f) - _wgslsmith_f_op_f32(-var_0.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-740f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x) * global0[_wgslsmith_index_u32(func_2().x, 11u)])) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-828f, _wgslsmith_div_f32(125f, -425f))))), firstLeadingBit(88775u), 1i, var_1);
    let var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1370f)))))), -782f, select(true, var_1.c, any(!vec3<bool>(var_1.d, false, false)))));
    var var_4 = vec2<i32>(-1i) * -(~abs(max(vec2<i32>(var_1.b.x, var_2.d), var_2.e.b)));
    var var_5 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3)))), var_1, min(vec2<u32>(~var_2.c, 1u >> (max(var_2.c, 43192u) % 32u)), _wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(countOneBits(vec2<u32>(1u, var_2.c)), vec2<u32>(12951u, 0u) >> (vec2<u32>(var_2.c, 0u) % vec2<u32>(32u)), vec2<u32>(2349u, 0u) << (vec2<u32>(var_2.c, var_2.c) % vec2<u32>(32u))), countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(var_2.c, var_2.c), vec2<u32>(58945u, var_2.c))))));
    var var_6 = select(select(!(!select(vec4<bool>(true, false, true, var_2.e.d), vec4<bool>(global1.d, true, var_5.c, false), var_1.d)), vec4<bool>(any(vec4<bool>(var_1.c, var_2.e.d, false, false)), !(!global1.d), false, global1.d), var_2.e.d), vec4<bool>((!var_5.d && false) && all(!vec2<bool>(global1.d, true)), all(!(!vec4<bool>(var_2.e.c, var_1.d, global1.c, false))), func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.b)) + _wgslsmith_f_op_f32(var_2.b * var_2.a)), var_1, abs(func_2())).d, true), any(vec3<bool>(true, !any(vec3<bool>(global1.c, var_2.e.c, false)), false)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(17223u, var_2.c) | abs(_wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(var_2.c, var_2.c)), ~vec2<u32>(var_2.c, 1u))));
}

