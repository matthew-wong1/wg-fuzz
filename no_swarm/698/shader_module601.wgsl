struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15> = array<i32, 15>(2147483647i, -1i, i32(-2147483648), -20369i, -35565i, -9706i, 4722i, -31370i, 3165i, 0i, i32(-2147483648), i32(-2147483648), i32(-2147483648), 1i, 0i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec3<i32> {
    var var_0 = Struct_2(~(~vec2<u32>(1u, 83521u)), 19264u, Struct_1(2147483647i, countOneBits(~0u), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-193f, -1579f, 616f))))), global0[_wgslsmith_index_u32(~abs(1u), 15u)]), Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~12804u, ~22533u) >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(55726u, 7893u, 1u, 0u), ~vec4<u32>(20424u, 45138u, 0u, 1u)) % 32u), 15u)], countOneBits(_wgslsmith_add_u32(~0u, ~4294967295u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1912f, -1325f, -2359f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(2358f, 743f, -955f))))), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, 40491i), vec2<i32>(u_input.a.x, global0[_wgslsmith_index_u32(4291u, 15u)])), abs(min(u_input.b.zy, u_input.a)))), ~abs(abs(64621u)));
    var_0 = Struct_2(vec2<u32>(var_0.c.b, var_0.a.x), 1u, Struct_1(_wgslsmith_add_i32(u_input.a.x, ~var_0.c.d >> (max(var_0.d.b, 4294967295u) % 32u)), _wgslsmith_dot_vec2_u32(var_0.a, ~vec2<u32>(7457u, var_0.e) << (~vec2<u32>(1u, 0u) % vec2<u32>(32u))), var_0.d.c, ~var_0.d.a), var_0.c, _wgslsmith_clamp_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_0.e, var_0.c.b, 4294967295u), vec4<u32>(61589u, 4294967295u, var_0.b, var_0.c.b)) << (firstTrailingBit(1u) % 32u), var_0.d.b, var_0.d.b));
    var_0 = Struct_2(max(var_0.a, abs(vec2<u32>(firstTrailingBit(0u), 26024u))), 8997u, Struct_1(abs(_wgslsmith_mult_i32(-41635i, ~(-30054i))), ~abs(var_0.a.x) ^ ~0u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.c.x, 1012f, -1121f) - var_0.d.c)), 0i), var_0.c, var_0.b);
    let var_1 = Struct_1(5744i, var_0.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.d.c.x, -381f, 1328f)))), _wgslsmith_f_op_vec3_f32(ceil(var_0.c.c)), true))), u_input.a.x);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1372f * var_0.c.c.x)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_1.c.x)), _wgslsmith_f_op_f32(step(131f, -931f))))) - _wgslsmith_f_op_f32(-var_0.d.c.x)) * _wgslsmith_f_op_f32(var_0.c.c.x - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-1000f))))));
    return u_input.b.wzz;
}

fn func_2(arg_0: vec2<i32>) -> u32 {
    global0 = array<i32, 15>();
    let var_0 = abs(-func_3());
    var var_1 = u_input.b;
    let var_2 = Struct_2(_wgslsmith_div_vec2_u32(abs(~(~vec2<u32>(6017u, 16542u))), vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 1u, 1u), _wgslsmith_mult_vec3_u32(vec3<u32>(16452u, 1u, 20564u), vec3<u32>(0u, 13900u, 1u))), ~(~55285u))), 89876u, Struct_1(~(var_1.x ^ min(-2147483647i, 14529i)), abs(39418u), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1852f - 1000f)), _wgslsmith_f_op_f32(select(-1119f, _wgslsmith_div_f32(234f, 1023f), true)), _wgslsmith_f_op_f32(f32(-1f) * -1587f)), -reverseBits(global0[_wgslsmith_index_u32(~4294967295u, 15u)])), Struct_1(func_3().x, _wgslsmith_mult_u32(~(~69397u), countOneBits(38402u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1524f, -1983f, -2254f) - vec3<f32>(1520f, 1230f, -524f))), vec3<f32>(1f, 1f, 1f)), firstTrailingBit(arg_0.x)), 1u);
    var var_3 = var_2;
    return firstTrailingBit(~var_2.a.x) | 16362u;
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    let var_0 = firstTrailingBit(_wgslsmith_add_vec2_u32(select(~_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.b, arg_0.b), vec2<u32>(arg_0.b, 4294967295u), vec2<u32>(23079u, arg_0.b)), abs(vec2<u32>(arg_0.b, arg_0.b) << (vec2<u32>(0u, arg_0.b) % vec2<u32>(32u))), arg_0.b != _wgslsmith_clamp_u32(33930u, 22523u, 14585u)), ~vec2<u32>(1u, 4294967295u) << (vec2<u32>(~arg_0.b, abs(arg_0.b)) % vec2<u32>(32u))));
    return Struct_2(_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(48537u, arg_0.b), vec2<u32>(arg_0.b, 1u)), vec2<u32>(4294967295u, 27556u)), var_0, ~var_0 << (_wgslsmith_add_vec2_u32(var_0, var_0) % vec2<u32>(32u))) & (_wgslsmith_add_vec2_u32(vec2<u32>(var_0.x, 57480u), ~var_0) ^ ~firstLeadingBit(vec2<u32>(45626u, 61513u))), ~0u, Struct_1(-reverseBits(-2147483647i), ~firstTrailingBit(4294967295u), _wgslsmith_div_vec3_f32(arg_0.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.x, arg_0.c.x, 252f))), global0[_wgslsmith_index_u32(~35140u, 15u)] >> (52735u % 32u)), Struct_1(_wgslsmith_mod_i32(-u_input.b.x, firstLeadingBit(u_input.b.x) >> (var_0.x % 32u)), 14811u, _wgslsmith_f_op_vec3_f32(arg_0.c - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(arg_0.c + vec3<f32>(arg_0.c.x, 961f, arg_0.c.x))))), 1i), 4294967295u);
}

fn func_1(arg_0: bool, arg_1: f32) -> u32 {
    global0 = array<i32, 15>();
    global0 = array<i32, 15>();
    var var_0 = func_4(Struct_1(~_wgslsmith_add_i32(-1i, global0[_wgslsmith_index_u32(0u, 15u)]) << (~1u % 32u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 1u), ~vec3<u32>(118043u, 44947u, 51265u)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, arg_1)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 686f, arg_1))))), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(12588u, 1u | func_2(vec2<i32>(global0[_wgslsmith_index_u32(0u, 15u)], u_input.b.x))), 15u)]));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(func_4(func_4(func_4(var_0.c).c).c).c.c.yz, var_0.d.c.yx)));
    let var_2 = -vec3<i32>(0i, global0[_wgslsmith_index_u32(20204u, 15u)], ~global0[_wgslsmith_index_u32(~(~var_0.d.b), 15u)]);
    return _wgslsmith_mult_u32(func_2(u_input.b.xy), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~(~vec3<u32>(var_0.e, 4294967295u, 1u)), ~vec3<u32>(var_0.a.x, 80738u, 4294967295u) >> (vec3<u32>(4294967295u, var_0.d.b, 48086u) % vec3<u32>(32u))), max(vec3<u32>(58947u, _wgslsmith_mod_u32(var_0.b, var_0.c.b), countOneBits(var_0.e)), vec3<u32>(~41141u, ~38984u, firstTrailingBit(4294967295u)))));
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    global0 = array<i32, 15>();
    let var_0 = ~_wgslsmith_clamp_u32(1u, arg_0.d.b, arg_0.e);
    var var_1 = vec3<f32>(429f, arg_0.c.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(arg_0.d.c.x, 938f)), -105f))) + -1000f));
    let var_2 = arg_0.d.c;
    var var_3 = true & !(-_wgslsmith_mod_i32(-375i, arg_0.c.a) != -u_input.a.x);
    return Struct_2(~max(~vec2<u32>(var_0, 82494u), select(firstLeadingBit(vec2<u32>(4294967295u, var_0)), arg_0.a, true)), arg_0.b, Struct_1(global0[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(_wgslsmith_sub_u32(arg_0.e, var_0), abs(var_0))), 15u)], _wgslsmith_mult_u32(~var_0, 4294967295u | arg_0.a.x) ^ ~(~22815u), vec3<f32>(_wgslsmith_f_op_f32(max(arg_0.d.c.x, -112f)), 558f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(-var_1.x))), global0[_wgslsmith_index_u32((var_0 >> (_wgslsmith_clamp_u32(arg_0.d.b, 1u, arg_0.e) % 32u)) << (1u % 32u), 15u)]), Struct_1(_wgslsmith_mod_i32(-2147483647i, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(68560u, var_0), var_0), 15u)]), func_4(Struct_1(global0[_wgslsmith_index_u32(arg_0.e, 15u)], arg_0.d.b, vec3<f32>(var_1.x, -473f, var_1.x), u_input.b.x)).a.x & (_wgslsmith_add_u32(var_0, 13004u) << (arg_0.e % 32u)), _wgslsmith_f_op_vec3_f32(trunc(arg_0.d.c)), firstTrailingBit(func_3().x)), 0u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 15>();
    var var_0 = -61142i;
    global0 = array<i32, 15>();
    global0 = array<i32, 15>();
    var_0 = global0[_wgslsmith_index_u32(firstTrailingBit(~35294u), 15u)];
    global0 = array<i32, 15>();
    var var_1 = -1000f;
    var var_2 = func_5(Struct_2(~(~vec2<u32>(4142u, 1u)), _wgslsmith_clamp_u32(0u, 1u, max(firstLeadingBit(9574u), ~45077u)), Struct_1(global0[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 36245u, 1u, 77308u), vec4<u32>(1u, 0u, 21767u, 30494u))), 15u)], ~1u, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, 911f, -1065f))), 18028i), Struct_1(u_input.a.x, func_1(false, -2339f), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1084f, -1381f, 175f)))), _wgslsmith_div_i32(u_input.b.x, u_input.b.x)), countOneBits(0u)));
    var var_3 = _wgslsmith_div_u32(1u, func_5(Struct_2(var_2.a, ~(~92245u), func_4(Struct_1(u_input.a.x, 59099u, var_2.d.c, var_2.d.a)).c, func_4(var_2.d).c, ~(~40289u))).b);
    let x = u_input.a;
    s_output = StorageBuffer(~(-11510i));
}

