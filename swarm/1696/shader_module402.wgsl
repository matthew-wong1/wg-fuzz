struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 20>;

var<private> global1: array<u32, 32> = array<u32, 32>(4294967295u, 60450u, 1030u, 8442u, 4294967295u, 18287u, 110854u, 48311u, 11423u, 0u, 99234u, 5059u, 0u, 19755u, 4294967295u, 27507u, 4294967295u, 1u, 4294967295u, 4294967295u, 26495u, 1u, 42743u, 54933u, 2034u, 48489u, 27640u, 4294967295u, 11674u, 1u, 4294967295u, 0u);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<bool>) -> vec4<u32> {
    let var_0 = vec3<i32>(_wgslsmith_dot_vec4_i32(-u_input.a, vec4<i32>(_wgslsmith_div_i32(-u_input.b.x, -u_input.c.x), countOneBits(u_input.c.x), min(_wgslsmith_div_i32(0i, -1i), 0i), ~select(u_input.a.x, 40142i, true))), ~_wgslsmith_mult_i32(u_input.b.x, ~(~44032i)), _wgslsmith_div_i32(~abs(-2147483647i), u_input.b.x));
    global0 = array<bool, 20>();
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 1u), 20u)];
    var var_2 = Struct_1(!arg_0.x, u_input.a.wy, reverseBits(vec4<u32>(reverseBits(22103u), ~22785u, ~59344u, 4294967295u << (global1[_wgslsmith_index_u32(47893u, 32u)] % 32u))) << (firstLeadingBit(~firstTrailingBit(vec4<u32>(15974u, 7065u, 94109u, 4294967295u))) % vec4<u32>(32u)), countOneBits(_wgslsmith_mod_u32(4294967295u, abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 32u)], 32u)])) | global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 32u)], 32u)], 51112u), ~1u), 32u)]));
    global1 = array<u32, 32>();
    return var_2.c;
}

fn func_2(arg_0: f32) -> Struct_1 {
    global1 = array<u32, 32>();
    var var_0 = abs(~vec4<u32>(1u, ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(26374u, 32u)], 32u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 32u)], 32u)], 32u)], 32u)], 32u)] & global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(771u, 32u)], 32u)], abs(43351u)) >> ((~func_3(vec2<bool>(true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(50293u, 32u)], 32u)], 32u)], 20u)])) & firstLeadingBit(vec4<u32>(global1[_wgslsmith_index_u32(50704u, 32u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(25866u, 32u)], 32u)], 32u)], 32u)], 32u)], 32u)], 32u)], 3000u, 1u))) % vec4<u32>(32u)));
    var_0 = vec4<u32>(func_3(vec2<bool>(any(select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 20u)], false, false, false), vec4<bool>(false, true, false, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 32u)], 20u)]), false)), !(536f >= arg_0))).x, ~5312u, 42387u, ~_wgslsmith_clamp_u32(50111u ^ global1[_wgslsmith_index_u32(func_3(vec2<bool>(true, true)).x, 32u)], ~global1[_wgslsmith_index_u32(1u, 32u)], ~firstLeadingBit(var_0.x)));
    let var_1 = true;
    var var_2 = vec3<bool>(any(select(select(vec4<bool>(false, true, var_1, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(20466u, 32u)], 20u)]), select(vec4<bool>(false, false, var_1, false), vec4<bool>(false, var_1, false, true), false), !vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 20u)], var_1, var_1)), !select(vec4<bool>(false, var_1, var_1, true), vec4<bool>(var_1, var_1, false, var_1), vec4<bool>(var_1, true, var_1, var_1)), false)), _wgslsmith_f_op_f32(-arg_0) != arg_0, false);
    return Struct_1(true, u_input.a.wx, _wgslsmith_mod_vec4_u32(vec4<u32>(reverseBits(16937u), var_0.x, 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(86479u, 32u)], 32u)]), vec4<u32>(~var_0.x, firstTrailingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 32u)], 32u)]), countOneBits(36772u), ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 32u)], 32u)]) & max(~vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.x, 32u)], 32u)], global1[_wgslsmith_index_u32(4294967295u, 32u)], global1[_wgslsmith_index_u32(4294967295u, 32u)], 107567u), vec4<u32>(global1[_wgslsmith_index_u32(var_0.x, 32u)], 6494u, 4294967295u, 0u))), _wgslsmith_div_u32(~var_0.x, var_0.x) ^ ~4294967295u);
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global1 = array<u32, 32>();
    global1 = array<u32, 32>();
    var var_0 = -_wgslsmith_add_vec2_i32(firstLeadingBit(vec2<i32>(29466i, -47140i)), ~_wgslsmith_add_vec2_i32(arg_0.b, arg_0.b)) << (_wgslsmith_add_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(0u, global1[_wgslsmith_index_u32(4294967295u, 32u)]), vec2<u32>(arg_0.d, arg_0.d)) & arg_0.c.zz, arg_0.c.xw) % vec2<u32>(32u));
    var var_1 = func_2(843f);
    var var_2 = vec3<u32>(4294967295u, _wgslsmith_mult_u32(~1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 32u)], 32u)]), ~firstLeadingBit(arg_0.d));
    return Struct_1(~(~arg_0.d) <= ~(~var_1.c.x), u_input.c.zy, ~vec4<u32>(global1[_wgslsmith_index_u32(var_1.d, 32u)], _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, arg_0.d, var_1.d), var_1.c), _wgslsmith_mod_u32(4294967295u, var_1.c.x), ~var_2.x) ^ ((arg_0.c ^ _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.c.x, var_1.c.x, var_2.x, 0u), vec4<u32>(26278u, var_1.d, var_2.x, var_2.x))) << (vec4<u32>(var_2.x, ~84966u, var_1.d, abs(arg_0.c.x)) % vec4<u32>(32u))), abs(global1[_wgslsmith_index_u32(~1u, 32u)]) ^ ~(abs(4294967295u) | _wgslsmith_dot_vec4_u32(var_1.c, var_1.c)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: vec4<i32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, _wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(-arg_2)), _wgslsmith_f_op_f32(sign(-404f)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, -401f, arg_2))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1324f, -251f, 366f) * vec3<f32>(-1189f, -532f, -2073f)))))));
    return var_0.x == -1041f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(select(vec2<bool>(true, global0[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(1u, 32u)], 20u)]), vec2<bool>(!global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 32u)], 20u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u & global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(63191u, 32u)], 32u)], 32u)], 32u)], 32u)], 20u)]), vec2<bool>(true, any(vec4<bool>(global0[_wgslsmith_index_u32(36236u, 20u)], false, global0[_wgslsmith_index_u32(51099u, 20u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 32u)], 32u)], 20u)])))), !select(!vec2<bool>(false, global0[_wgslsmith_index_u32(43109u, 20u)]), !vec2<bool>(global0[_wgslsmith_index_u32(10755u, 20u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(33111u, 32u)], 20u)]), !vec2<bool>(false, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 32u)], 32u)], 32u)], 32u)], 32u)], 20u)])), all(!(!vec3<bool>(global0[_wgslsmith_index_u32(27084u, 20u)], global0[_wgslsmith_index_u32(30871u, 20u)], false)))), vec2<bool>(all(select(select(vec3<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 32u)], 20u)], true, global0[_wgslsmith_index_u32(185u, 20u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(44234u, 20u)], true), true), vec3<bool>(false, true, false), vec3<bool>(true, false, global0[_wgslsmith_index_u32(613u, 20u)]))), func_4(func_1(Struct_1(true, vec2<i32>(u_input.c.x, u_input.b.x), vec4<u32>(global1[_wgslsmith_index_u32(1u, 32u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 32u)], 32u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(13327u, 32u)], 32u)], 28482u), global1[_wgslsmith_index_u32(24945u, 32u)])), func_1(Struct_1(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(17200u, 32u)], 32u)], 32u)], 32u)], 20u)], u_input.c.zy, vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 32u)], 32u)], 0u, 1u, 23488u), 30663u)), _wgslsmith_f_op_f32(f32(-1f) * -1782f), vec4<i32>(1i, u_input.a.x, 1i, u_input.b.x)) || (56707i <= u_input.b.x)), select(!vec2<bool>(true, global0[_wgslsmith_index_u32(~49227u, 20u)]), select(vec2<bool>(!global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 32u)], 20u)], any(vec2<bool>(true, false))), select(!vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 20u)]), vec2<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(2817u, 32u)], 20u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(28408u, 32u)], 32u)], 20u)]), true), !global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(77108u, 32u)], 32u)], 32u)], 20u)] && true), any(vec2<bool>(global0[_wgslsmith_index_u32(firstTrailingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(84229u, 32u)], 32u)], 32u)]), 20u)], global0[_wgslsmith_index_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(10487u, 32u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 32u)], 32u)]), 20u)]))));
    global1 = array<u32, 32>();
    var var_1 = _wgslsmith_add_vec3_i32(~reverseBits(max(select(u_input.a.yxx, vec3<i32>(-2147483647i, -2147483647i, -15601i), vec3<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 32u)], 20u)], var_0.x, var_0.x)), abs(u_input.a.zzw))), _wgslsmith_mod_vec3_i32(max(vec3<i32>(48579i, -2147483647i, u_input.b.x), max(u_input.c >> (vec3<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 32u)], 32u)], 4294967295u) % vec3<u32>(32u)), u_input.a.yyz)), vec3<i32>(~2147483647i, -(1i >> (global1[_wgslsmith_index_u32(61435u, 32u)] % 32u)), -2147483647i)));
    var_0 = select(!(!(!(!vec2<bool>(false, global0[_wgslsmith_index_u32(56257u, 20u)])))), select(!select(!vec2<bool>(global0[_wgslsmith_index_u32(54813u, 20u)], true), select(vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 20u)]), vec2<bool>(false, false), vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 20u)])), !vec2<bool>(var_0.x, true)), !select(vec2<bool>(var_0.x, global0[_wgslsmith_index_u32(18572u, 20u)]), !vec2<bool>(true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(26605u, 32u)], 32u)], 32u)], 20u)]), !vec2<bool>(global0[_wgslsmith_index_u32(36643u, 20u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 32u)], 20u)])), !global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 32u)], 32u)], 32u)])) << (1u % 32u), 20u)]), select(select(!(!vec2<bool>(true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(45441u, 32u)], 32u)], 20u)])), select(vec2<bool>(var_0.x, true), select(vec2<bool>(var_0.x, true), vec2<bool>(global0[_wgslsmith_index_u32(28999u, 20u)], true), vec2<bool>(false, var_0.x)), select(vec2<bool>(false, var_0.x), vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 20u)]), var_0.x)), var_0.x), vec2<bool>(true, true), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(abs(func_3(vec2<bool>(true, global0[_wgslsmith_index_u32(51553u, 20u)])).x), 32u)], 20u)] && any(vec4<bool>(false, true, var_0.x, true))));
    let var_2 = ~(~vec2<u32>(global1[_wgslsmith_index_u32(firstLeadingBit(abs(0u)), 32u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 32u)], 32u)], 32u)], 32u)] >> (func_2(276f).d % 32u)));
    global0 = array<bool, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-733f, _wgslsmith_f_op_f32(select(-2115f, 1380f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, 602f, false))))))));
}

