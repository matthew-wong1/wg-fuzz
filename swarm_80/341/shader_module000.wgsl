struct Struct_1 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 11>;

var<private> global1: bool = true;

var<private> global2: array<vec4<f32>, 21> = array<vec4<f32>, 21>(vec4<f32>(1721f, 1225f, 408f, -307f), vec4<f32>(2121f, -1000f, 173f, 376f), vec4<f32>(-157f, -224f, 1000f, 306f), vec4<f32>(138f, 267f, -960f, -2413f), vec4<f32>(594f, 1000f, 211f, 1140f), vec4<f32>(214f, 1060f, -971f, 359f), vec4<f32>(1711f, -524f, 1106f, -196f), vec4<f32>(-1049f, 1000f, -839f, -1000f), vec4<f32>(-2531f, 2522f, -1211f, -490f), vec4<f32>(503f, 745f, -1129f, 1171f), vec4<f32>(144f, 294f, 557f, -600f), vec4<f32>(-996f, -1850f, -142f, 1000f), vec4<f32>(175f, 2289f, 1000f, 1037f), vec4<f32>(687f, -1430f, 585f, -2292f), vec4<f32>(305f, 934f, 344f, 833f), vec4<f32>(-1211f, -1483f, -1000f, -704f), vec4<f32>(474f, 715f, 332f, -1056f), vec4<f32>(1585f, -1560f, -573f, 1000f), vec4<f32>(-1498f, -1744f, 414f, 1359f), vec4<f32>(468f, -385f, 467f, -255f), vec4<f32>(219f, -1102f, -1294f, -139f));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>) -> u32 {
    let var_0 = select(vec4<i32>(-(~_wgslsmith_add_i32(global0[_wgslsmith_index_u32(arg_0.b.b.x, 11u)], arg_0.c.a)), 4763i, -31530i, _wgslsmith_sub_i32(_wgslsmith_mult_i32(0i, select(u_input.a.x, global0[_wgslsmith_index_u32(1u, 11u)], arg_1.x)), _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(20836i, -10761i)) >> (arg_0.c.b.x % 32u))), min(vec4<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 1i, u_input.a.x, -5109i), vec4<i32>(0i, u_input.a.x, arg_0.c.a, 31630i)), _wgslsmith_mod_i32(arg_0.c.a, arg_0.c.a), _wgslsmith_mod_i32(2147483647i, global0[_wgslsmith_index_u32(25799u, 11u)])), abs(vec4<i32>(-1i, arg_0.c.a, u_input.a.x, global0[_wgslsmith_index_u32(0u, 11u)]) >> (vec4<u32>(arg_0.b.b.x, arg_0.b.b.x, arg_0.b.b.x, 41308u) % vec4<u32>(32u)))) | (_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, u_input.a.x, 0i, global0[_wgslsmith_index_u32(21760u, 11u)]), vec4<i32>(global0[_wgslsmith_index_u32(1u, 11u)], 0i, u_input.a.x, arg_0.b.a), firstTrailingBit(vec4<i32>(global0[_wgslsmith_index_u32(arg_0.b.b.x, 11u)], global0[_wgslsmith_index_u32(44488u, 11u)], arg_0.b.a, 2147483647i))) | vec4<i32>(global0[_wgslsmith_index_u32(arg_0.c.b.x, 11u)], _wgslsmith_add_i32(-2147483647i, global0[_wgslsmith_index_u32(0u, 11u)]), -4060i, -11392i)), true);
    global0 = array<i32, 11>();
    var var_1 = min(vec4<i32>(var_0.x, _wgslsmith_sub_i32(~var_0.x, arg_0.b.a), -74452i >> (_wgslsmith_add_u32(~arg_0.c.b.x, ~58131u) % 32u), -u_input.a.x >> (~1u % 32u)), min(vec4<i32>(-global0[_wgslsmith_index_u32(11952u, 11u)], firstLeadingBit(arg_0.b.a), -global0[_wgslsmith_index_u32(arg_0.c.b.x, 11u)], var_0.x) & vec4<i32>(1i, u_input.a.x << (0u % 32u), 10730i, _wgslsmith_dot_vec4_i32(var_0, var_0)), ~var_0));
    let var_2 = reverseBits(arg_0.c.b.x);
    let var_3 = arg_0;
    return ~(~countOneBits(arg_0.b.b.x));
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_mod_u32(~4294967295u, _wgslsmith_clamp_u32(37113u | ~firstTrailingBit(15145u), func_3(Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-338f, 883f) - vec2<f32>(1042f, -624f)), Struct_1(u_input.a.x, vec3<u32>(0u, 3830u, 1u)), Struct_1(global0[_wgslsmith_index_u32(85876u, 11u)], vec3<u32>(96153u, 28604u, 5139u)), vec2<bool>(true, true)), vec2<bool>(true, true)), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(8194u, 2866u), firstLeadingBit(vec2<u32>(4294967295u, 32239u)))));
    global2 = array<vec4<f32>, 21>();
    global0 = array<i32, 11>();
    let var_1 = 556f;
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) + vec2<f32>(var_1, var_1)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) * vec2<f32>(var_1, var_1))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(131f - var_1), var_1))), Struct_1(i32(-1i) * -u_input.a.x, vec3<u32>(~min(0u, 1u), 1u, countOneBits(countOneBits(126316u)))), Struct_1(-2147483647i, vec3<u32>(106035u, _wgslsmith_mod_u32(countOneBits(76714u), ~37985u), ~abs(23759u))), !vec2<bool>(select(true, true, false), true));
    return true;
}

fn func_4(arg_0: vec2<f32>, arg_1: i32) -> vec4<i32> {
    var var_0 = Struct_1(-(u_input.a.x << (~_wgslsmith_div_u32(4294967295u, 59176u) % 32u)), reverseBits(~abs(vec3<u32>(1u, 1u, 1u))));
    let var_1 = var_0.b;
    global0 = array<i32, 11>();
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(arg_0, vec2<f32>(_wgslsmith_f_op_f32(sign(arg_0.x)), _wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, true))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_f_op_f32(abs(499f)))), vec2<bool>(true, false))), Struct_1(var_0.a, _wgslsmith_clamp_vec3_u32(var_0.b << (vec3<u32>(var_1.x, 1u, 4294967295u) % vec3<u32>(32u)), var_0.b, vec3<u32>(10711u, 4294967295u, 23146u)) ^ vec3<u32>(~1u, 4294967295u, reverseBits(1u))), Struct_1(-2147483647i, _wgslsmith_sub_vec3_u32(var_0.b, _wgslsmith_sub_vec3_u32(var_0.b, var_0.b) ^ vec3<u32>(4294967295u, var_0.b.x, var_1.x))), select(vec2<bool>(false, true), !select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), false)), true == (var_1.x > var_0.b.x)));
    var var_3 = 0u;
    return ~firstLeadingBit(select(~vec4<i32>(var_0.a, u_input.a.x, u_input.a.x, var_2.c.a), vec4<i32>(u_input.a.x, -2147483647i, -2147483647i, 2147483647i) >> (vec4<u32>(var_2.c.b.x, 1u, 0u, 1u) % vec4<u32>(32u)), var_2.d.x)) ^ select(vec4<i32>(~(~0i), ~(-16016i) ^ _wgslsmith_sub_i32(arg_1, global0[_wgslsmith_index_u32(21097u, 11u)]), ~max(arg_1, 23010i), _wgslsmith_dot_vec3_i32(-vec3<i32>(-67488i, var_2.c.a, u_input.a.x), vec3<i32>(arg_1, var_2.b.a, 1i))), _wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(7369i, arg_1, -1i, arg_1)), vec4<i32>(u_input.a.x, u_input.a.x, -31476i, arg_1) ^ vec4<i32>(u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 11u)], arg_1, var_0.a)) >> (vec4<u32>(var_2.b.b.x, firstTrailingBit(var_1.x), 51217u, _wgslsmith_div_u32(var_1.x, var_2.c.b.x)) % vec4<u32>(32u)), !(!select(vec4<bool>(false, false, var_2.d.x, false), vec4<bool>(true, var_2.d.x, var_2.d.x, true), var_2.d.x)));
}

fn func_1(arg_0: vec2<f32>, arg_1: bool, arg_2: i32, arg_3: Struct_1) -> i32 {
    let var_0 = func_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(540f, 911f), arg_0, vec2<bool>(arg_1, arg_1))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1034f, arg_0.x))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, 1063f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(491f, arg_0.x)))), vec2<f32>(arg_0.x, _wgslsmith_div_f32(arg_0.x, arg_0.x)), select(vec2<bool>(all(vec2<bool>(arg_1, false)), arg_1), vec2<bool>(!arg_1, func_2()), vec2<bool>(arg_1, false)))), abs(41063i));
    return firstLeadingBit(2147483647i) << (max(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, ~4294967295u, 9263u, _wgslsmith_dot_vec4_u32(vec4<u32>(49665u, arg_3.b.x, arg_3.b.x, arg_3.b.x), vec4<u32>(1u, arg_3.b.x, 0u, 1u))), _wgslsmith_sub_vec4_u32(select(vec4<u32>(33806u, 76614u, 1u, arg_3.b.x), vec4<u32>(arg_3.b.x, 18085u, 16995u, 4294967295u), false), ~vec4<u32>(arg_3.b.x, 3043u, 4294967295u, arg_3.b.x))), 1u) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_i32(-((~(-18241i) | func_1(vec2<f32>(-717f, -236f), true, 2147483647i, Struct_1(u_input.a.x, vec3<u32>(1u, 0u, 86266u)))) << (~90464u % 32u)), 2970i);
    let var_1 = vec2<bool>(!any(vec2<bool>(true, true)), any(!vec3<bool>(any(vec4<bool>(false, false, false, true)), true, true)));
    global1 = any(select(var_1, vec2<bool>(all(select(vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(var_1.x, false, false))), var_1.x), all(select(!vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(false, var_1.x, true), var_1.x))));
    global2 = array<vec4<f32>, 21>();
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(569f, 1083f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1060f, 615f))))))), Struct_1(~min(-13000i, -1134i) & (_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, global0[_wgslsmith_index_u32(28837u, 11u)], -8620i, global0[_wgslsmith_index_u32(0u, 11u)]), vec4<i32>(4816i, u_input.a.x, u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 11u)])) >> (0u % 32u)), vec3<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 54850u, 4294967295u), vec4<u32>(39217u, 25063u, 4294967295u, 1u)), ~(~37207u))), Struct_1(global0[_wgslsmith_index_u32(23525u, 11u)], ~vec3<u32>(1u, 1u, 1u) ^ min(max(vec3<u32>(4294967295u, 101781u, 1u), vec3<u32>(62644u, 1u, 6513u)), select(vec3<u32>(1u, 6638u, 0u), vec3<u32>(19800u, 4294967295u, 27904u), false))), !(!(!var_1)));
    let var_3 = var_2.d.x;
    let var_4 = select(select(vec2<bool>(false, any(vec2<bool>(var_1.x, var_2.d.x)) != (true & var_2.d.x)), !(!vec2<bool>(var_1.x, true)), var_1), var_2.d, !(!(!select(vec2<bool>(var_1.x, true), vec2<bool>(var_1.x, false), var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(var_2.b.b.x, 11u)], abs(vec4<u32>(1u, ~18732u, 1u, ~_wgslsmith_mod_u32(var_2.b.b.x, 1u))), _wgslsmith_div_vec2_i32(vec2<i32>(~max(u_input.a.x, 1i), abs(84200i)), u_input.a), 37709i);
}

