struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: vec3<bool>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 32>;

var<private> global1: array<vec4<u32>, 12> = array<vec4<u32>, 12>(vec4<u32>(0u, 4294967295u, 11089u, 4294967295u), vec4<u32>(63226u, 0u, 4361u, 0u), vec4<u32>(20237u, 72731u, 0u, 16783u), vec4<u32>(12405u, 4294967295u, 23612u, 4294967295u), vec4<u32>(78147u, 84160u, 31895u, 0u), vec4<u32>(143232u, 57437u, 4294967295u, 82313u), vec4<u32>(0u, 0u, 0u, 37985u), vec4<u32>(1u, 12931u, 1u, 4294967295u), vec4<u32>(12127u, 4294967295u, 4294967295u, 1u), vec4<u32>(0u, 1u, 0u, 1u), vec4<u32>(93990u, 4294967295u, 5590u, 1u), vec4<u32>(33466u, 1u, 0u, 0u));

var<private> global2: i32 = -13821i;

var<private> global3: Struct_4;

var<private> global4: Struct_5;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> i32 {
    var var_0 = vec3<bool>(!global4.a & !(_wgslsmith_f_op_f32(1353f - 428f) >= _wgslsmith_f_op_f32(trunc(607f))), true, true);
    global0 = array<Struct_3, 32>();
    var var_1 = max(4294967295u, firstLeadingBit(u_input.a >> (countOneBits(24680u) % 32u)));
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(535f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -165f) * _wgslsmith_f_op_f32(trunc(1561f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1260f, _wgslsmith_f_op_f32(max(-1310f, -441f))) - _wgslsmith_f_op_f32(f32(-1f) * -1168f)), false))));
    var_1 = ~1u;
    return 0i;
}

fn func_3() -> vec4<i32> {
    var var_0 = ~0u;
    global3 = Struct_4(!select(select(global3.a, global3.c, !global4.a), !vec3<bool>(global3.a.x, global3.c.x, global4.a), firstTrailingBit(28874i) > ~global3.b.x), global3.b, !select(!global3.c, vec3<bool>(global4.a, global3.c.x, true), select(!global3.a, global3.c, true)));
    var var_1 = Struct_5(all(select(vec4<bool>(global4.a, false, true, all(vec2<bool>(global4.a, global3.a.x))), !vec4<bool>(global3.c.x, true, global3.a.x, global4.a), !vec4<bool>(global4.a, global4.a, global3.a.x, false))));
    var var_2 = abs(min(global3.b.x, ~_wgslsmith_mod_i32(30650i, u_input.b)));
    let var_3 = _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(select(-vec4<i32>(0i, 0i, -2147483647i, global3.b.x), vec4<i32>(2510i, -5841i, -48786i, u_input.b), vec4<bool>(global4.a, false, global3.a.x, global4.a)), ~(-vec4<i32>(global3.b.x, u_input.b, 0i, u_input.b))), min(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(-1i, global3.b.x, -27622i, u_input.b)), vec4<i32>(1i, 1i, global3.b.x, u_input.b), vec4<i32>(2147483647i, global3.b.x, u_input.b, 1230i) & vec4<i32>(-42681i, global3.b.x, global3.b.x, 95565i)), -firstLeadingBit(vec4<i32>(40466i, 1i, global3.b.x, -89654i)))) & vec4<i32>(~u_input.b, global3.b.x, firstTrailingBit(firstTrailingBit(-46101i << (1u % 32u))), global3.b.x);
    return var_3;
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: Struct_4, arg_3: u32) -> u32 {
    var var_0 = vec2<bool>(_wgslsmith_dot_vec4_i32(-(vec4<i32>(u_input.b, u_input.b, u_input.b, 0i) << (global1[_wgslsmith_index_u32(u_input.a, 12u)] % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(abs(vec4<i32>(-13654i, u_input.b, -35573i, 2147483647i)), func_3())) < _wgslsmith_clamp_i32(countOneBits(func_1()), 1i, _wgslsmith_add_i32(u_input.b, 0i) ^ ~global3.b.x), any(vec2<bool>(any(vec4<bool>(true, global4.a, false, global4.a)), true)));
    var var_1 = Struct_5(!(!var_0.x));
    var var_2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(188f)) * arg_1)), 805f), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2239f - arg_1) * _wgslsmith_div_f32(arg_1, arg_1)))), arg_1);
    var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(arg_1)), _wgslsmith_f_op_f32(arg_1 * 704f), -885f, _wgslsmith_f_op_f32(var_2.x - 191f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(3158f - var_2.x), _wgslsmith_f_op_f32(max(arg_1, arg_1)), _wgslsmith_f_op_f32(-arg_1), var_2.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_1), -1000f, _wgslsmith_f_op_f32(-arg_1), var_2.x)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-995f, _wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_div_f32(arg_1, arg_1), 1575f))))));
    let var_3 = vec4<i32>(_wgslsmith_mult_i32(~39642i, -_wgslsmith_div_i32(global3.b.x & 1i, abs(u_input.b))), u_input.b, 1i, 29279i);
    return _wgslsmith_clamp_u32(~_wgslsmith_add_u32(37004u, select(21298u, u_input.a, false) & 0u), 33376u >> (arg_3 % 32u), _wgslsmith_add_u32(37979u, ~4294967295u));
}

fn func_4(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_1) -> Struct_5 {
    let var_0 = 555f;
    var var_1 = _wgslsmith_add_vec3_u32(countOneBits(~(~vec3<u32>(arg_0.x, 1u, arg_2.c) << (vec3<u32>(0u, arg_2.c, 1u) % vec3<u32>(32u)))), reverseBits(max(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, arg_0.x, 1094u), vec3<u32>(4294967295u, u_input.a, arg_0.x)), vec3<u32>(arg_0.x, u_input.a, u_input.a))) >> ((min(vec3<u32>(arg_0.x, u_input.a, 45516u), firstLeadingBit(vec3<u32>(1165u, u_input.a, 1u))) << (vec3<u32>(_wgslsmith_clamp_u32(u_input.a, 1u, 4294967295u), 0u, 1u) % vec3<u32>(32u))) % vec3<u32>(32u)));
    var var_2 = !vec2<bool>(true, any(vec4<bool>(!arg_2.a, true, all(vec4<bool>(arg_2.a, global3.a.x, arg_2.a, true)), all(global3.c.xy))));
    var var_3 = -max(-countOneBits(~vec4<i32>(2147483647i, -8935i, 30622i, global3.b.x)), ~(~countOneBits(vec4<i32>(global3.b.x, global3.b.x, -32698i, -2147483647i))));
    global3 = Struct_4(global3.a, _wgslsmith_mult_vec2_i32(arg_2.b.yz, abs(reverseBits(arg_2.b.yz))), global3.c);
    return Struct_5(any(!(!vec2<bool>(arg_2.a, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec2_i32(-global3.b, vec2<i32>(~countOneBits(func_1()), abs(min(_wgslsmith_sub_i32(-1i, -1i), _wgslsmith_sub_i32(0i, u_input.b)))));
    global4 = func_4(_wgslsmith_add_vec2_u32(select(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 41663u), vec2<u32>(u_input.a, u_input.a)), vec2<u32>(u_input.a, func_2(false, -1000f, Struct_4(global3.a, global3.b, vec3<bool>(global4.a, false, true)), u_input.a)), global3.c.xy), vec2<u32>(u_input.a, u_input.a)), -958f, Struct_1(global3.a.x, max(abs(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, 1i, global3.b.x), vec3<i32>(u_input.b, 44591i, 1i))), vec3<i32>(~(-11955i), reverseBits(-2147483647i), ~var_0.x)), ~(~_wgslsmith_mod_u32(332u, u_input.a)), -(2147483647i << (_wgslsmith_mult_u32(u_input.a, u_input.a) % 32u))));
    let var_1 = global0[_wgslsmith_index_u32(0u, 32u)];
    let var_2 = global0[_wgslsmith_index_u32(abs(firstTrailingBit(u_input.a)), 32u)];
    global1 = array<vec4<u32>, 12>();
    global0 = array<Struct_3, 32>();
    let var_3 = func_3().x;
    let var_4 = Struct_2(vec2<i32>(-15555i, -4111i), -2147483647i, global3.c.x, Struct_1(var_1.a.x, vec3<i32>(countOneBits(~76562i), min(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.b, -542i), vec3<i32>(var_3, -2147483647i, var_0.x)), var_3 >> (u_input.a % 32u)), var_0.x), 16009u, -69671i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-263f, var_1.b, 184f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2.b, var_2.b, var_2.b))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(2520f, -1062f, var_2.b) * vec3<f32>(-1000f, 293f, -1698f)))))), var_3);
}

