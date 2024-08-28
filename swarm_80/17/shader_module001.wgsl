struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32) -> bool {
    var var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(384f * -885f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1621f - 1460f), -1000f)), _wgslsmith_mod_u32(~abs(u_input.a), ~_wgslsmith_add_u32(u_input.a, 0u)), u_input.b.x, ~(~vec2<u32>(u_input.a, u_input.a)), Struct_1(_wgslsmith_f_op_f32(-1377f * _wgslsmith_f_op_f32(-1200f + -1095f)), firstTrailingBit(-68116i ^ u_input.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(294f, -312f, -1513f, -993f)), ~u_input.b.x, true)), max(~(~vec3<u32>(29541u, 4294967295u, arg_0)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0, 0u, 2593u), vec3<u32>(arg_0, 1u, arg_0))) & _wgslsmith_mult_vec3_u32(select(vec3<u32>(arg_0, 4294967295u, 4294967295u), vec3<u32>(arg_0, arg_0, 56477u), vec3<bool>(true, false, false)) << (vec3<u32>(u_input.a, 4294967295u, 1167u) % vec3<u32>(32u)), abs(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, arg_0), vec3<u32>(38417u, u_input.a, u_input.a)))), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(135f)))), i32(-1i) * -8042i, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(203f, -1004f, 327f, -1206f) + vec4<f32>(-335f, -1000f, -271f, -1991f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(943f, 199f, -186f, -344f), vec4<f32>(246f, -449f, -943f, -1169f), vec4<bool>(true, true, true, true)))))), 23471i, true));
    var_0 = Struct_3(var_0.a, _wgslsmith_sub_vec3_u32(~(~vec3<u32>(15407u, 35335u, 9953u)), vec3<u32>(var_0.a.d.x, 98681u, arg_0) << (~var_0.b % vec3<u32>(32u))) ^ ~var_0.b, Struct_1(_wgslsmith_f_op_f32(sign(var_0.c.c.x)), 7999i, var_0.c.c, var_0.c.b, (_wgslsmith_mod_u32(arg_0, u_input.a) ^ arg_0) > 2318u));
    let var_1 = vec3<i32>(-abs(_wgslsmith_dot_vec4_i32(vec4<i32>(14255i, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, var_0.a.e.d, u_input.b.x, u_input.b.x))) & _wgslsmith_dot_vec3_i32(firstTrailingBit(-u_input.b), u_input.b), max(_wgslsmith_add_i32(-(~var_0.c.d), 8365i), u_input.b.x), ~u_input.b.x);
    var var_2 = -var_1.x;
    let var_3 = Struct_2(_wgslsmith_f_op_f32(ceil(-892f)), 4294967295u, -2147483647i, var_0.a.d, var_0.c);
    return var_0.c.e;
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: Struct_3, arg_3: vec4<i32>) -> i32 {
    let var_0 = 694f;
    let var_1 = firstTrailingBit(vec2<i32>(-1i) * -(~arg_3.xw));
    let var_2 = arg_2;
    let var_3 = !vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(264f, -377f))) == var_0, var_2.c.e);
    let var_4 = ~9420u;
    return max(max(~(arg_0.e.b ^ 0i), _wgslsmith_sub_i32(0i << ((4294967295u & arg_2.a.b) % 32u), -53797i)), firstLeadingBit(_wgslsmith_dot_vec3_i32(arg_3.wwx, vec3<i32>(-1i) * -vec3<i32>(2147483647i, 0i, 0i))));
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: vec3<bool>, arg_3: i32) -> f32 {
    let var_0 = arg_1;
    var var_1 = Struct_2(-1010f, 1u, 2147483647i, arg_0.a.d, arg_0.a.e);
    let var_2 = func_4(arg_0.a, _wgslsmith_div_u32(u_input.a, ~43756u), Struct_3(Struct_2(-773f, ~10323u, arg_0.a.c, _wgslsmith_add_vec2_u32(vec2<u32>(arg_0.a.b, 1u), vec2<u32>(u_input.a, arg_0.a.b)), Struct_1(_wgslsmith_f_op_f32(449f - 1321f), -2147483647i, _wgslsmith_f_op_vec4_f32(var_1.e.c - vec4<f32>(-1000f, -578f, arg_1, arg_1)), arg_3, any(arg_2.zx))), (arg_0.b & abs(vec3<u32>(44777u, var_1.b, 64070u))) >> (_wgslsmith_mult_vec3_u32(~vec3<u32>(arg_0.b.x, var_1.b, u_input.a), select(arg_0.b, arg_0.b, arg_0.a.e.e)) % vec3<u32>(32u)), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(650f, -1144f)))), -1i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-110f, arg_1, 1038f, arg_0.a.e.c.x) - vec4<f32>(var_1.e.a, arg_0.c.a, var_1.a, -156f))), -max(arg_0.a.e.b, -35949i), func_3(34845u))), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, _wgslsmith_dot_vec2_i32(-vec2<i32>(5982i, 35952i), ~u_input.b.xz), arg_0.a.e.d | _wgslsmith_add_i32(var_1.e.b, var_1.c), arg_0.c.b), _wgslsmith_clamp_vec4_i32(~(vec4<i32>(30236i, -37809i, 0i, var_1.e.b) & vec4<i32>(u_input.b.x, var_1.e.b, arg_0.a.e.d, 25979i)), firstTrailingBit(-vec4<i32>(2147483647i, 6078i, -24785i, 21003i)), vec4<i32>(-1i) * -vec4<i32>(u_input.b.x, -31167i, -2147483647i, u_input.b.x))));
    let var_3 = arg_0.b.x;
    var var_4 = !any(!select(!vec3<bool>(true, arg_2.x, var_1.e.e), vec3<bool>(false, arg_2.x, false), vec3<bool>(true, var_1.e.e, false)));
    return 897f;
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_4) -> bool {
    let var_0 = arg_1;
    let var_1 = min(_wgslsmith_div_u32(max(~reverseBits(u_input.a), u_input.a), max(5102u, u_input.a)), var_0.d.x);
    let var_2 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_3(Struct_2(-1000f, 1u, arg_1.e.d, vec2<u32>(1u, 1u), Struct_1(384f, -83655i, var_0.e.c, -62985i, arg_2.e)), vec3<u32>(6355u, 22246u, var_0.b), Struct_1(1000f, -24398i, arg_2.c, 39337i, true)), -1000f, vec3<bool>(arg_2.e, true, false), -593i)) * _wgslsmith_div_f32(329f, arg_1.a))), arg_3.a.b.x, 58925i, firstTrailingBit(~arg_1.d), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_3.a.a.a, -720f)) - _wgslsmith_f_op_f32(f32(-1f) * -500f)), arg_2.d, arg_2.c, 15093i, any(arg_0))), (arg_3.a.b | firstLeadingBit(arg_3.a.b)) & arg_3.a.b, arg_2);
    var var_3 = abs(firstLeadingBit(abs(max(12291u, ~1u))));
    var var_4 = select(select(!(!select(vec2<bool>(false, arg_0.x), arg_0, vec2<bool>(arg_1.e.e, var_0.e.e))), vec2<bool>(true & !var_2.a.e.e, !func_3(61208u)), !select(select(arg_0, vec2<bool>(var_2.c.e, arg_2.e), true), arg_0, u_input.b.x < arg_2.d)), select(vec2<bool>(all(arg_0) || var_2.c.e, all(select(vec4<bool>(var_0.e.e, false, false, true), vec4<bool>(var_2.a.e.e, arg_1.e.e, false, true), vec4<bool>(false, true, arg_1.e.e, false)))), !arg_0, any(select(select(vec4<bool>(true, true, arg_2.e, false), vec4<bool>(true, true, var_0.e.e, var_2.a.e.e), vec4<bool>(false, true, arg_2.e, arg_0.x)), select(vec4<bool>(false, false, arg_2.e, arg_3.a.c.e), vec4<bool>(arg_2.e, arg_2.e, false, arg_1.e.e), vec4<bool>(arg_1.e.e, false, true, arg_2.e)), false || arg_0.x))), all(!vec2<bool>(false, select(true, true, var_2.a.e.e))));
    return !var_2.a.e.e;
}

fn func_5(arg_0: vec4<i32>) -> StorageBuffer {
    let var_0 = _wgslsmith_div_u32(1u, 1u);
    let var_1 = select(vec3<bool>(any(vec2<bool>(true, true)), func_3(8493u), select(any(vec3<bool>(true, true, true)), true, select(all(vec4<bool>(true, true, false, false)), u_input.a <= u_input.a, true))), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), var_0 >= u_input.a), select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), true)), false));
    var var_2 = ~(~(~firstLeadingBit(reverseBits(vec3<u32>(58526u, 50171u, var_0)))));
    var_2 = vec3<u32>(~_wgslsmith_sub_u32(_wgslsmith_sub_u32(select(var_2.x, var_2.x, var_1.x), 31154u), var_0), ~0u, select(~(~(~15043u)), 0u, false));
    var_2 = vec3<u32>(firstTrailingBit(43301u), _wgslsmith_add_u32(0u, (countOneBits(var_2.x) >> (1701u % 32u)) & 13416u), 0u);
    return StorageBuffer(vec4<f32>(976f, _wgslsmith_div_f32(109f, _wgslsmith_div_f32(-138f, 886f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-975f, -1647f, !var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(853f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(1192f, -347f), vec2<f32>(341f, 152f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-383f, 1086f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1391f, -885f), vec2<f32>(-293f, 2229f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(_wgslsmith_clamp_vec4_i32(~(~(vec4<i32>(u_input.b.x, u_input.b.x, 89114i, u_input.b.x) | vec4<i32>(-2147483647i, -15840i, u_input.b.x, 1i))), ~reverseBits(-vec4<i32>(u_input.b.x, u_input.b.x, -36483i, u_input.b.x)), select(~(vec4<i32>(26020i, u_input.b.x, u_input.b.x, u_input.b.x) & vec4<i32>(16154i, 21757i, 32583i, 2147483647i)), select(-vec4<i32>(u_input.b.x, -3752i, -6703i, 20736i), ~vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, u_input.b.x), any(vec2<bool>(false, true))), func_1(vec2<bool>(true, false), Struct_2(-1060f, u_input.a, 1i, vec2<u32>(36317u, 0u), Struct_1(1000f, 63608i, vec4<f32>(-858f, 668f, -1070f, 234f), -8815i, true)), Struct_1(415f, u_input.b.x, vec4<f32>(533f, 841f, 1473f, 1000f), -1i, false), Struct_4(Struct_3(Struct_2(-1136f, u_input.a, 0i, vec2<u32>(1u, u_input.a), Struct_1(-634f, 9167i, vec4<f32>(149f, -116f, -426f, -1025f), u_input.b.x, false)), vec3<u32>(u_input.a, u_input.a, 4294967295u), Struct_1(342f, u_input.b.x, vec4<f32>(-603f, -613f, 1095f, -1049f), u_input.b.x, false)))) | true)));
}

