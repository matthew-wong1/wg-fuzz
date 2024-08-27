struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24>;

var<private> global1: Struct_2 = Struct_2(6043i, Struct_1(vec2<u32>(0u, 4294967295u), -687f, true));

var<private> global2: bool;

var<private> global3: vec3<u32>;

var<private> global4: vec4<u32> = vec4<u32>(1u, 5909u, 42434u, 1u);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: vec3<f32>) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global1.b.b, -544f, global1.b.b)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1540f, global1.b.b, -889f, arg_1.x)) - vec4<f32>(-609f, arg_1.x, 196f, arg_1.x)))))));
    global3 = vec3<u32>(1u, global1.b.a.x, _wgslsmith_sub_u32(~min(1u, 10077u), abs(~arg_0.a.x | ~u_input.a)));
    let var_1 = vec2<u32>(_wgslsmith_div_u32(114949u, ~(max(0u, 100786u) | _wgslsmith_dot_vec3_u32(vec3<u32>(global1.b.a.x, 11737u, u_input.b), vec3<u32>(global4.x, 1u, global1.b.a.x)))), _wgslsmith_div_u32(95094u, ~0u));
    var var_2 = Struct_1(firstLeadingBit(~_wgslsmith_mod_vec2_u32(var_1, vec2<u32>(24708u, arg_0.a.x) >> (var_1 % vec2<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.x)) + var_0.x)), !all(vec2<bool>(true, true)));
    var var_3 = Struct_2(~global1.a, Struct_1(_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global3.x, 31733u), abs(arg_0.a.yy)), var_2.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + var_2.b), false));
    return select(_wgslsmith_mult_vec4_u32(~reverseBits(vec4<u32>(global1.b.a.x, 86431u, var_1.x, global1.b.a.x)) & _wgslsmith_add_vec4_u32(reverseBits(arg_0.a), _wgslsmith_sub_vec4_u32(arg_0.a, arg_0.a)), ~(~(~vec4<u32>(u_input.a, 16358u, arg_0.a.x, var_2.a.x)))), _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.x, ~global4.x, 8439u, ~var_2.a.x), (vec4<u32>(0u, 1u, var_1.x, 4294967295u) << (vec4<u32>(global1.b.a.x, global3.x, u_input.a, 4294967295u) % vec4<u32>(32u))) & (arg_0.a | vec4<u32>(global4.x, 4294967295u, 1u, u_input.a))), arg_0.a & _wgslsmith_add_vec4_u32(~arg_0.a, ~vec4<u32>(11369u, 1u, var_1.x, var_1.x))), select(select(select(vec4<bool>(var_3.b.c, false, global1.b.c, global1.b.c), !vec4<bool>(var_2.c, var_3.b.c, var_3.b.c, false), global4.x <= var_2.a.x), vec4<bool>(any(vec4<bool>(var_2.c, true, global1.b.c, true)), global1.b.c, var_3.b.c, 74569u == arg_0.a.x), any(select(vec4<bool>(true, true, var_2.c, var_3.b.c), vec4<bool>(var_2.c, var_3.b.c, true, true), vec4<bool>(global1.b.c, false, global1.b.c, true)))), select(vec4<bool>(true, true, false, select(var_2.c, true, var_3.b.c)), !vec4<bool>(global1.b.c, var_3.b.c, true, true), !global1.b.c == true), !any(vec4<bool>(true, true, var_2.c, false))));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: Struct_3) -> u32 {
    global4 = _wgslsmith_clamp_vec4_u32(arg_2.a & ~func_3(arg_2, _wgslsmith_f_op_vec3_f32(-vec3<f32>(780f, -972f, global1.b.b))), select(~(max(arg_2.a, arg_2.a) | vec4<u32>(global3.x, global4.x, 30024u, 1u)), arg_2.a, select(!vec4<bool>(false, true, false, global1.b.c), select(vec4<bool>(false, arg_1.x, true, arg_1.x), vec4<bool>(global1.b.c, true, arg_1.x, true), vec4<bool>(true, global1.b.c, arg_1.x, true)), vec4<bool>(global1.b.c || arg_1.x, true, true, true))), ~select(arg_2.a, arg_2.a, select(!vec4<bool>(true, false, arg_1.x, global1.b.c), vec4<bool>(false, false, arg_1.x, arg_1.x), select(vec4<bool>(arg_1.x, false, arg_1.x, false), vec4<bool>(global1.b.c, false, global1.b.c, true), vec4<bool>(false, false, true, arg_1.x)))));
    global2 = any(!arg_1.xy);
    global4 = arg_2.a;
    var var_0 = vec4<i32>(countOneBits(min(38593i >> (global3.x % 32u), ~global1.a)) | ~_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(arg_0.x, 26675i, 3852i, -39045i)), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.x, 0i, 44414i, 1i), vec4<i32>(-1i, arg_0.x, arg_0.x, global1.a))), arg_0.x, _wgslsmith_mod_i32(-81001i, min(~global1.a, global1.a)), arg_0.x);
    global4 = vec4<u32>(6097u, _wgslsmith_div_u32(26298u & (46270u << (global3.x % 32u)), ~_wgslsmith_add_u32(86761u, 16663u)) << (global3.x % 32u), abs(~func_3(Struct_3(vec4<u32>(u_input.a, global3.x, u_input.a, 40135u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1082f, global1.b.b, global1.b.b) - vec3<f32>(455f, global1.b.b, -234f))).x), global3.x);
    return max(44842u >> (~_wgslsmith_sub_u32(firstTrailingBit(global1.b.a.x), ~51568u) % 32u), _wgslsmith_dot_vec3_u32(firstLeadingBit(abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(5137u, arg_2.a.x, global3.x), arg_2.a.zyw, vec3<u32>(0u, 56877u, global3.x)))), _wgslsmith_clamp_vec3_u32(~vec3<u32>(47277u, 9061u, global3.x) | ~vec3<u32>(global4.x, arg_2.a.x, 0u), select(firstTrailingBit(vec3<u32>(1u, 36269u, global1.b.a.x)), select(vec3<u32>(68258u, 65134u, 1895u), global4.yww, true), arg_1.x), vec3<u32>(global4.x, 86118u, 29850u) ^ ~global4.wxz)));
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: vec3<u32>, arg_3: Struct_3) -> Struct_3 {
    let var_0 = _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(~arg_0, 1u)), vec2<u32>(~0u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(32956u, global3.x, u_input.a), vec3<u32>(arg_3.a.x, arg_2.x, 4294967295u)))), ~global1.b.a, ~vec2<u32>(global3.x, (arg_0 | u_input.b) | (arg_0 << (global3.x % 32u))));
    var var_1 = Struct_2(_wgslsmith_dot_vec4_i32(-max(vec4<i32>(-32093i, global1.a, global1.a, global1.a), vec4<i32>(31237i, -4009i, -55573i, -1i)) ^ -vec4<i32>(10795i, global1.a, -31468i, 6610i), vec4<i32>(global1.a, global1.a, -1i, global1.a)), global0[_wgslsmith_index_u32(countOneBits(reverseBits(8109u)), 24u)]);
    let var_2 = global0[_wgslsmith_index_u32(~firstTrailingBit(select(_wgslsmith_clamp_u32(~0u, ~71475u, ~1u), func_3(Struct_3(vec4<u32>(32381u, 4294967295u, 19782u, arg_0)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.b.b, var_1.b.b, global1.b.b), vec3<f32>(-255f, -305f, arg_1), true))).x, false)), 24u)];
    global4 = ~(~(~arg_3.a));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1430f * arg_1), _wgslsmith_f_op_f32(exp2(arg_1)))) - 163f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(var_2.b)))) - -414f));
    return arg_3;
}

fn func_5(arg_0: Struct_3, arg_1: vec4<i32>) -> Struct_2 {
    global1 = Struct_2(-2147483647i, Struct_1(vec2<u32>(~arg_0.a.x, global4.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-785f - _wgslsmith_f_op_f32(234f - global1.b.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b.b), -274f))), !(global1.b.c | false)));
    return Struct_2(0i, Struct_1(~global4.zz, _wgslsmith_f_op_f32(round(538f)), global1.b.b != global1.b.b));
}

fn func_1() -> i32 {
    var var_0 = !(!vec4<bool>(u_input.a > _wgslsmith_sub_u32(0u, 0u), global1.b.c, all(vec4<bool>(global1.b.c, false, false, global1.b.c)), !global1.b.c || (1714f != global1.b.b)));
    global2 = global1.b.c;
    global0 = array<Struct_1, 24>();
    global1 = func_5(func_4(_wgslsmith_sub_u32(~global3.x ^ 1u, 56081u), -385f, ~vec3<u32>(func_2(vec2<i32>(global1.a, global1.a), vec3<bool>(var_0.x, false, global1.b.c), Struct_3(vec4<u32>(u_input.a, 0u, u_input.b, 2393u))), global3.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global4.x, 77465u, u_input.b), vec3<u32>(global3.x, 13091u, 0u))), Struct_3(firstTrailingBit(~vec4<u32>(u_input.a, 0u, global4.x, 43882u)))), vec4<i32>(-(global1.a ^ global1.a), _wgslsmith_mod_i32(abs(-global1.a), -_wgslsmith_add_i32(global1.a, 2147483647i)), _wgslsmith_div_i32(select(min(global1.a, -1i), global1.a, !var_0.x), -1i | (global1.a << (1u % 32u))), _wgslsmith_add_i32(global1.a, global1.a)));
    var var_1 = _wgslsmith_f_op_f32(ceil(-425f));
    return -1588i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(!(all(vec4<bool>(false, global1.b.c, true, true)) != (true && global1.b.c)) | (global1.b.b > _wgslsmith_f_op_f32(round(123f))), true, global1.b.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.b.b))), _wgslsmith_f_op_f32(global1.b.b - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.b.b)) * global1.b.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.b * 203f) * -743f), 543f)), vec3<i32>(global1.a, select(func_1() & _wgslsmith_dot_vec2_i32(vec2<i32>(0i, global1.a), vec2<i32>(1i, global1.a)), 52843i, true), global1.a), firstTrailingBit(vec4<u32>(_wgslsmith_dot_vec2_u32(min(global1.b.a, global3.yx), firstTrailingBit(vec2<u32>(0u, 25026u))), 0u, min(4294967295u, 51874u), 52388u)), vec2<u32>(_wgslsmith_mod_u32(global1.b.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global1.b.a.x, u_input.b, 37327u), reverseBits(vec4<u32>(global1.b.a.x, global3.x, 4294967295u, 85543u)))), ~(~u_input.a)), _wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(u_input.a), ~u_input.b, ~global1.b.a.x, global1.b.a.x), select(vec4<u32>(42087u, 3584u, global3.x, global1.b.a.x) & (vec4<u32>(global1.b.a.x, global3.x, u_input.b, global3.x) ^ vec4<u32>(u_input.b, 35169u, 88547u, u_input.b)), _wgslsmith_mod_vec4_u32(vec4<u32>(global4.x, 41967u, global4.x, 52573u) | vec4<u32>(4294967295u, global4.x, u_input.b, global3.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(19u, u_input.b, 61774u, 24648u), vec4<u32>(4294967295u, u_input.a, u_input.b, 70718u), vec4<u32>(global1.b.a.x, u_input.a, global3.x, 0u))), !(!vec4<bool>(true, global1.b.c, global1.b.c, true)))));
}

