struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> bool {
    var var_0 = !vec4<bool>(true, false, any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false)), true)), any(vec3<bool>(14240u != u_input.a.x, true, true)));
    var var_1 = countOneBits(vec2<i32>(~(-1i), 1i) << ((_wgslsmith_div_vec2_u32(u_input.a.xw, vec2<u32>(u_input.b, u_input.a.x)) ^ vec2<u32>(u_input.a.x, _wgslsmith_add_u32(60147u, u_input.a.x))) % vec2<u32>(32u)));
    var var_2 = u_input.b;
    var var_3 = var_0.wxx;
    let var_4 = Struct_1(~(~u_input.a.yw), select(!select(var_0.xzz, vec3<bool>(var_3.x, var_0.x, false), true), !var_0.wyz, true), 4294967295u, reverseBits(u_input.a ^ _wgslsmith_clamp_vec4_u32(u_input.a, u_input.a, ~vec4<u32>(u_input.b, u_input.a.x, u_input.a.x, 40870u))), 17389u);
    return !var_4.b.x;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: vec3<i32>, arg_3: vec3<bool>) -> vec3<f32> {
    var var_0 = Struct_1(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a.yz, ~(~u_input.a.wx)), u_input.a.ww), !select(!select(arg_3, arg_3, arg_3.x), vec3<bool>(func_3(), !arg_3.x, true), true), ~u_input.b, select(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(50690u, u_input.b, 1u, arg_0), u_input.a), abs(~vec4<u32>(arg_0, 90827u, 11589u, u_input.b))), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0, arg_0, 72579u, 4294967295u), u_input.a), ~firstTrailingBit(u_input.a)), vec4<bool>(arg_1 >= -443f, true, true, arg_3.x)), ~arg_0);
    let var_1 = abs(_wgslsmith_dot_vec2_u32(abs(u_input.a.zz >> ((vec2<u32>(1u, 4294967295u) & u_input.a.zw) % vec2<u32>(32u))), vec2<u32>((u_input.a.x << (27869u % 32u)) | 14606u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, 1u), vec2<u32>(u_input.a.x, 20515u), var_0.d.zz)))));
    var_0 = Struct_1(vec2<u32>(1u, var_0.c), !select(vec3<bool>(var_0.b.x, true, select(true, var_0.b.x, true)), vec3<bool>(true, true && var_0.b.x, var_0.b.x), arg_3.x), 4294967295u, vec4<u32>(~(~max(var_0.d.x, var_0.d.x)), var_1, arg_0, countOneBits(4294967295u)), (0u >> (var_0.c % 32u)) & _wgslsmith_clamp_u32(~_wgslsmith_div_u32(82212u, arg_0), ~1u, var_0.c));
    var var_2 = vec2<f32>(-792f, _wgslsmith_f_op_f32(ceil(205f)));
    let var_3 = Struct_1(vec2<u32>(arg_0, ~0u), var_0.b, u_input.a.x, abs(min(countOneBits(var_0.d), vec4<u32>(_wgslsmith_mult_u32(arg_0, 61966u), 74620u, u_input.a.x, _wgslsmith_div_u32(5676u, arg_0)))), _wgslsmith_clamp_u32(~(2734u << (var_1 % 32u)) >> ((_wgslsmith_mult_u32(35077u, 1u) << (_wgslsmith_add_u32(u_input.a.x, 0u) % 32u)) % 32u), 0u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_0.a.x), var_0.d.wy)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, var_2.x, var_2.x))))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: u32) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec4_u32(countOneBits(firstLeadingBit(u_input.a)), ~vec4<u32>(~(~arg_1), firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, 1u), u_input.a.yz)), arg_1, 4294967295u));
    var var_1 = -46530i;
    let var_2 = select(i32(-1i) * -8296i, 1i, !any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true))));
    let var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(389f)), _wgslsmith_f_op_f32(f32(-1f) * -101f))), arg_0.zy, select(vec2<bool>(true, any(vec2<bool>(true, true))), select(vec2<bool>(arg_1 != var_0, true), vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), select(vec2<bool>(true, true), vec2<bool>(true, false), true), false)), select(select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), true)), vec2<bool>(true, true), true))));
    var var_4 = Struct_1(~abs(vec2<u32>(1u, 1u)), select(select(vec3<bool>(true, true, all(vec3<bool>(true, false, true))), vec3<bool>(all(vec3<bool>(false, false, true)), true, false), vec3<bool>(true, func_3(), false)), select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true)), !(!(21810u > var_0))), u_input.a.x, vec4<u32>(51967u, _wgslsmith_div_u32(~var_0, ~select(var_0, arg_1, false)), 1u, ~u_input.a.x), _wgslsmith_sub_u32(_wgslsmith_mult_u32(~arg_1, u_input.a.x << ((32374u << (u_input.a.x % 32u)) % 32u)), 96454u));
    return Struct_1(~(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_1, var_4.c), ~var_4.a) ^ vec2<u32>(1u, 4294967295u)), !var_4.b, _wgslsmith_dot_vec2_u32(var_4.d.zw, vec2<u32>(~abs(arg_1), ~(~40873u))), _wgslsmith_div_vec4_u32(max(vec4<u32>(~var_0, 135296u, _wgslsmith_dot_vec3_u32(vec3<u32>(35473u, var_0, 27788u), u_input.a.xww), _wgslsmith_clamp_u32(var_0, u_input.a.x, var_0)), ~abs(vec4<u32>(var_0, arg_1, 37167u, 0u))), var_4.d), 4294967295u);
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec2<u32>) -> Struct_1 {
    return func_4(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_2(arg_2.x, -518f, firstLeadingBit(vec3<i32>(arg_0, arg_0, 20165i)), !vec3<bool>(false, false, arg_1.b.x))), vec3<f32>(_wgslsmith_f_op_f32(select(-592f, -1051f, arg_1.b.x)), _wgslsmith_f_op_f32(select(-517f, 677f, arg_1.b.x)), 1000f), true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1560f, 662f, 1325f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1912f, 1000f, -135f)), arg_0 > arg_0)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1276f, -596f, 1198f)) - vec3<f32>(-663f, -974f, 851f))), select(!vec3<bool>(arg_1.b.x, arg_1.b.x, true), select(select(arg_1.b, vec3<bool>(false, arg_1.b.x, true), false), vec3<bool>(arg_1.b.x, arg_1.b.x, true), arg_1.b.x), true))), u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = func_1(~_wgslsmith_sub_i32(~(i32(-1i) * -27857i), 1i), Struct_1(~u_input.a.ww, select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), vec3<bool>(true, all(vec2<bool>(false, true)), true)), ~(~(~1u)), u_input.a, _wgslsmith_div_u32(~0u << (0u % 32u), 13712u)), _wgslsmith_mult_vec2_u32(~u_input.a.xy, u_input.a.xz));
    var_0 = true;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(131f, 171f, 438f, -545f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(925f, -960f, -106f, -1114f) - vec4<f32>(-1000f, -889f, 552f, 745f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-642f, -100f, 1638f, 1284f) * vec4<f32>(766f, 1409f, 1244f, -422f))))) - vec4<f32>(_wgslsmith_f_op_f32(-301f + -443f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(281f * 743f) + _wgslsmith_f_op_vec3_f32(func_2(0u, 737f, vec3<i32>(5564i, 4675i, 0i), var_1.b)).x), -837f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(584f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-160f, 297f, 1000f, -1000f))))));
    var var_3 = func_4(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.x, var_2.x, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1309f * var_2.x), _wgslsmith_f_op_f32(-var_2.x)), -1291f))), _wgslsmith_add_u32(23520u >> (_wgslsmith_sub_u32(~0u, var_1.e) % 32u), 24236u));
    var var_4 = select(!vec4<bool>(false, true, true, var_1.b.x), select(select(!select(vec4<bool>(true, true, var_3.b.x, false), vec4<bool>(var_1.b.x, var_1.b.x, var_3.b.x, false), true), select(vec4<bool>(true, true, true, true), !vec4<bool>(var_1.b.x, false, var_1.b.x, var_1.b.x), select(vec4<bool>(var_1.b.x, false, false, false), vec4<bool>(var_1.b.x, var_1.b.x, true, var_1.b.x), vec4<bool>(true, var_1.b.x, false, false))), var_3.b.x), select(vec4<bool>(var_3.b.x != var_1.b.x, func_1(10346i, var_1, u_input.a.zw).b.x, all(vec3<bool>(false, var_3.b.x, var_1.b.x)), var_2.x == var_2.x), select(select(vec4<bool>(var_3.b.x, var_3.b.x, var_3.b.x, var_3.b.x), vec4<bool>(true, true, var_1.b.x, true), var_1.b.x), select(vec4<bool>(false, true, false, var_3.b.x), vec4<bool>(true, false, false, var_1.b.x), var_3.b.x), select(vec4<bool>(true, true, var_1.b.x, false), vec4<bool>(var_1.b.x, true, var_1.b.x, true), vec4<bool>(false, false, var_3.b.x, true))), true), select(!(!vec4<bool>(false, var_3.b.x, var_1.b.x, var_1.b.x)), select(!vec4<bool>(false, var_1.b.x, var_3.b.x, false), select(vec4<bool>(var_3.b.x, true, var_1.b.x, true), vec4<bool>(true, var_3.b.x, false, true), vec4<bool>(var_3.b.x, var_1.b.x, true, var_3.b.x)), !vec4<bool>(var_1.b.x, var_3.b.x, false, var_1.b.x)), vec4<bool>(true, var_1.b.x, !var_3.b.x, var_3.b.x))), (var_1.a.x | 57481u) != var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_div_vec4_u32(var_1.d, u_input.a) | ~var_3.d), (i32(-1i) * -38103i) & (-50843i & _wgslsmith_div_i32(~(-1i), -12564i << (var_1.c % 32u))));
}

