struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 9>;

var<private> global1: f32 = 114f;

var<private> global2: vec4<i32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> i32 {
    let var_0 = Struct_1(select(vec4<i32>(i32(-1i) * -1i, global2.x, _wgslsmith_mult_i32(global2.x, u_input.a), global2.x << (20585u % 32u)), select(min(select(vec4<i32>(u_input.a, global2.x, global2.x, global2.x), vec4<i32>(-35750i, 1i, global2.x, global2.x), true), ~vec4<i32>(u_input.a, 2147483647i, 0i, u_input.a)), vec4<i32>(i32(-1i) * -93663i, global2.x >> (5352u % 32u), u_input.a, min(-3216i, global2.x)), !any(vec2<bool>(true, false))), !select(vec4<bool>(false, false, false, false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), false), vec4<bool>(true, true, true, true))), -vec2<i32>(reverseBits(u_input.a), 0i << (_wgslsmith_sub_u32(37127u, u_input.b) % 32u)), -548f);
    var var_1 = var_0;
    global1 = _wgslsmith_div_f32(var_0.c, var_0.c);
    return 3279i;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(vec4<i32>(func_3(), 2147483647i, _wgslsmith_add_i32(~(i32(-1i) * -6692i), select(reverseBits(global2.x), -3562i, any(vec2<bool>(true, true)))), -4851i), global2.zx, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2281f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(142f + 1094f), -1142f))) - _wgslsmith_f_op_f32(floor(-857f))));
    var var_1 = Struct_1(vec4<i32>(~(-1i) | global2.x, i32(-1i) * -2147483647i, -(i32(-1i) * -1i), u_input.a), vec2<i32>(abs(u_input.a), -_wgslsmith_dot_vec2_i32(~vec2<i32>(-11595i, global2.x), global2.yw)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-343f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.c, -1742f)))), 1639f, false)));
    var var_2 = _wgslsmith_mult_u32(_wgslsmith_sub_u32(~_wgslsmith_div_u32(18015u, u_input.b), 6579u), u_input.c.x) >> (u_input.b % 32u);
    global2 = vec4<i32>(~var_0.b.x, _wgslsmith_clamp_i32(select(2209i, reverseBits(max(-1i, 2147483647i)), true), ~(~_wgslsmith_add_i32(u_input.a, global2.x)), -_wgslsmith_dot_vec4_i32(var_1.a, -var_1.a)), ~global2.x, var_0.b.x);
    var var_3 = Struct_1(var_0.a, global2.yz, 107f);
    return Struct_1(firstLeadingBit(vec4<i32>(-109161i, _wgslsmith_sub_i32(var_3.b.x, var_0.b.x), 42264i, -u_input.a)), var_3.a.xz, var_1.c);
}

fn func_1() -> Struct_1 {
    var var_0 = vec4<i32>(u_input.a, _wgslsmith_mod_i32(u_input.a, reverseBits(u_input.a)), ~(-u_input.a), -28981i);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -547f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -235f) + _wgslsmith_f_op_f32(trunc(1000f))), -1000f))));
    let var_1 = ~(-1i);
    var var_2 = Struct_1(~firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(1i, global2.x, 8474i, -5848i) >> (vec4<u32>(58418u, u_input.b, u_input.b, 0u) % vec4<u32>(32u)), vec4<i32>(-324i, 1i, -2147483647i, -32144i))), global2.zx, _wgslsmith_f_op_f32(f32(-1f) * -1912f));
    var_0 = vec4<i32>(_wgslsmith_sub_i32(max(-1303i, -var_1), _wgslsmith_dot_vec4_i32(countOneBits(var_2.a), vec4<i32>(-global2.x, var_0.x, ~(-1i), i32(-1i) * -1i))), global2.x << (u_input.c.x % 32u), 0i, ~_wgslsmith_add_i32(~(~var_0.x), _wgslsmith_dot_vec4_i32(~vec4<i32>(var_2.b.x, 21848i, global2.x, u_input.a), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, var_0.x, var_0.x, global2.x), vec4<i32>(11965i, -20727i, 77107i, -52903i)))));
    return func_2();
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_add_vec4_i32(abs(vec4<i32>(0i, -22823i, abs(u_input.a), 38259i)), select(_wgslsmith_add_vec4_i32(abs(vec4<i32>(-8687i, arg_0.b.x, global2.x, -2147483647i)), reverseBits(vec4<i32>(global2.x, global2.x, -27216i, global2.x))), arg_0.a, arg_1)), ~(_wgslsmith_div_vec2_i32(vec2<i32>(arg_0.a.x, 32468i) | vec2<i32>(-1i, 21166i), ~arg_0.a.yy) ^ vec2<i32>(20864i, _wgslsmith_clamp_i32(u_input.a, 26881i, global2.x))), arg_0.c);
    global0 = array<vec3<u32>, 9>();
    let var_1 = vec2<u32>(1u, ~_wgslsmith_mod_u32(reverseBits(u_input.c.x), ~43299u)) | _wgslsmith_mod_vec2_u32(u_input.c.zz, ~vec2<u32>(_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(61255u, 9u)], global0[_wgslsmith_index_u32(1333u, 9u)]), abs(u_input.b)));
    var var_2 = Struct_1(~vec4<i32>(_wgslsmith_add_i32(arg_0.a.x, min(arg_0.a.x, 641i)), arg_0.a.x, ~func_1().a.x, var_0.a.x), vec2<i32>(1i, -2147483647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.c))))) * var_0.c));
    let var_3 = 35815u == ~(~min(1u, min(u_input.c.x, 4294967295u)));
    return Struct_1(countOneBits(vec4<i32>(abs(var_0.a.x), var_0.a.x, u_input.a, _wgslsmith_dot_vec3_i32(-vec3<i32>(-16196i, -1i, 1i), -vec3<i32>(6810i, -2147483647i, -1i)))), vec2<i32>(arg_0.b.x << (40378u % 32u), min((var_2.b.x & 2147483647i) & -12413i, -4453i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.c + 1659f), _wgslsmith_f_op_f32(-arg_0.c))))));
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = vec3<bool>(true, any(select(vec3<bool>(true, true, false), !select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true))), !(abs(u_input.b << (u_input.b % 32u)) > u_input.b));
    global0 = array<vec3<u32>, 9>();
    global0 = array<vec3<u32>, 9>();
    var var_1 = firstTrailingBit(reverseBits(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, u_input.c.x), u_input.c.yz)));
    let var_2 = vec2<bool>(any(select(select(vec4<bool>(var_0.x, true, false, var_0.x), vec4<bool>(false, var_0.x, false, var_0.x), true), !vec4<bool>(false, true, false, var_0.x), true)) && false, var_0.x);
    return arg_3;
}

fn func_6(arg_0: Struct_1) -> f32 {
    var var_0 = Struct_1(arg_0.a, _wgslsmith_add_vec2_i32(vec2<i32>(func_5(func_2(), arg_0.c, 1i, Struct_1(arg_0.a, vec2<i32>(18512i, u_input.a), -1000f)).a.x, abs(arg_0.a.x) >> (~0u % 32u)), func_5(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -1603f), _wgslsmith_mult_i32(-global2.x, -1i), Struct_1(vec4<i32>(global2.x, arg_0.a.x, 2147483647i, 2147483647i), -vec2<i32>(u_input.a, u_input.a), _wgslsmith_f_op_f32(select(arg_0.c, arg_0.c, true)))).a.yz), 1134f);
    var var_1 = firstTrailingBit(-(max(global2.x, arg_0.a.x) ^ (var_0.b.x ^ reverseBits(global2.x))));
    var var_2 = _wgslsmith_div_u32(u_input.c.x << (1u % 32u), _wgslsmith_sub_u32(_wgslsmith_sub_u32(min(u_input.c.x, 14564u), abs(84728u)), ~31907u) << (~(~max(1u, 91712u)) % 32u));
    var var_3 = var_0.c;
    var var_4 = vec3<bool>(true, select(true, false, true), all(!select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false)), false)));
    return _wgslsmith_f_op_f32(-arg_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_6(func_5(Struct_1(abs(vec4<i32>(u_input.a, 21582i, u_input.a, -30677i)), global2.xx, 818f), _wgslsmith_f_op_f32(465f * -1149f), 38368i, func_4(func_1(), select(true, false, false))))), func_5(Struct_1(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global2.x, u_input.a, u_input.a, 2147483647i), vec4<i32>(u_input.a, global2.x, -11663i, -12613i)), countOneBits(vec4<i32>(2147483647i, 2147483647i, u_input.a, 37446i))), func_5(Struct_1(vec4<i32>(-1i, -2147483647i, u_input.a, -2147483647i), global2.xy, -550f), _wgslsmith_f_op_f32(floor(-1552f)), global2.x, Struct_1(vec4<i32>(global2.x, -4506i, 29207i, u_input.a), global2.yz, -404f)).a.wy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(297f - -1736f) * 997f)), func_2().c, u_input.a, func_5(func_4(Struct_1(vec4<i32>(-44616i, -24939i, -74788i, global2.x), global2.xz, 1237f), true), _wgslsmith_f_op_f32(func_6(func_2())), firstLeadingBit(~(-1i)), Struct_1(func_4(Struct_1(vec4<i32>(u_input.a, 1i, 22215i, 2147483647i), global2.zw, -536f), true).a, vec2<i32>(global2.x, -1i), -642f))).c));
    global2 = ~vec4<i32>(~(-5870i), 0i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 2147483647i, -1i, global2.x), -vec4<i32>(global2.x, global2.x, -56026i, global2.x) & (vec4<i32>(-22674i, -56935i, global2.x, u_input.a) << (vec4<u32>(55636u, u_input.c.x, 4294967295u, u_input.c.x) % vec4<u32>(32u)))), countOneBits(_wgslsmith_sub_i32(u_input.a, u_input.a)));
    global0 = array<vec3<u32>, 9>();
    global2 = _wgslsmith_sub_vec4_i32(firstTrailingBit(select(reverseBits(vec4<i32>(2147483647i, 0i, u_input.a, global2.x)), -vec4<i32>(-37361i, u_input.a, u_input.a, global2.x), vec4<bool>(true, true, true, true)) ^ ~(~vec4<i32>(-37025i, -43999i, 0i, -7378i))), vec4<i32>(_wgslsmith_div_i32(8451i, -35904i), ~global2.x | (u_input.a | 2147483647i), _wgslsmith_add_i32(-global2.x, 0i), ~func_3()) & vec4<i32>(countOneBits(-1i) | global2.x, -max(u_input.a, -23066i), ~global2.x, _wgslsmith_mult_i32(u_input.a, -u_input.a)));
    var var_0 = Struct_1(vec4<i32>(u_input.a, abs(_wgslsmith_dot_vec3_i32(global2.zyw >> (u_input.c % vec3<u32>(32u)), global2.xzx | vec3<i32>(33353i, -5293i, u_input.a))), 2147483647i, global2.x), vec2<i32>(~global2.x, -_wgslsmith_add_i32(func_4(Struct_1(vec4<i32>(1i, -1i, -1i, global2.x), vec2<i32>(-1i, -1i), -962f), false).a.x, global2.x)), -1004f);
    let var_1 = abs(abs(u_input.b)) & u_input.c.x;
    global0 = array<vec3<u32>, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, 1u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_div_f32(var_0.c, var_0.c), _wgslsmith_f_op_f32(-1411f * var_0.c)))) * vec2<f32>(var_0.c, var_0.c)));
}

