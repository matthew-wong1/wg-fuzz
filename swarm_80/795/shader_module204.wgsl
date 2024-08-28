struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: f32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13>;

var<private> global1: u32;

var<private> global2: array<u32, 23>;

var<private> global3: i32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec2<i32>, arg_3: f32) -> vec3<u32> {
    let var_0 = arg_0.d.x;
    var var_1 = Struct_1(select(vec3<i32>(arg_2.x & reverseBits(u_input.b), arg_2.x >> ((u_input.e & arg_0.d.x) % 32u), _wgslsmith_mult_i32(-1i, countOneBits(38597i))), vec3<i32>(max(arg_2.x, _wgslsmith_mod_i32(arg_2.x, 2147483647i)), -42864i, -51825i), select(!vec3<bool>(arg_1.x, true, arg_1.x), vec3<bool>(arg_1.x, -2027i > arg_2.x, !arg_1.x), any(select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(true, false, arg_1.x, arg_1.x), vec4<bool>(false, true, arg_1.x, true))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_3, arg_0.c, -816f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.c, arg_0.c, -313f), vec3<f32>(-415f, arg_3, -1055f), arg_1.x)))) - arg_0.b), 372f, (firstTrailingBit(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 23u)], 23u)], var_0, 77906u)) ^ arg_0.d) | vec3<u32>(~_wgslsmith_div_u32(4294967295u, arg_0.d.x), ~(~11939u), ~_wgslsmith_dot_vec2_u32(u_input.c.ww, u_input.c.yy)));
    var var_2 = !vec4<bool>(arg_1.x, _wgslsmith_f_op_f32(min(arg_0.c, _wgslsmith_f_op_f32(-var_1.c))) > arg_0.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_3 + arg_0.b.x))) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-407f, var_1.b.x)), _wgslsmith_f_op_f32(arg_3 * -886f)), all(vec2<bool>(arg_1.x, true)));
    let var_3 = firstLeadingBit(vec4<i32>(u_input.b, _wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.b, _wgslsmith_add_i32(-27628i, 1i)), max(-1i, min(-2147483647i, 0i))), _wgslsmith_dot_vec3_i32(var_1.a, max(_wgslsmith_add_vec3_i32(arg_0.a, vec3<i32>(arg_2.x, -1i, -2147483647i)), arg_0.a)), -_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(2147483647i, 90652i)), vec2<i32>(var_1.a.x, 1i))));
    var_2 = select(vec4<bool>(any(!vec4<bool>(true, true, false, var_2.x)), true, all(!var_2.xz), any(vec3<bool>(any(arg_1.yz), true, arg_0.b.x < -641f))), vec4<bool>(!all(var_2.xwz), true, var_2.x, true), select(vec4<bool>(false, arg_1.x, any(select(vec4<bool>(arg_1.x, var_2.x, arg_1.x, true), vec4<bool>(arg_1.x, var_2.x, var_2.x, arg_1.x), true)), all(select(arg_1, var_2.xxx, arg_1))), !select(vec4<bool>(false, arg_1.x, false, true), !vec4<bool>(true, arg_1.x, arg_1.x, false), true), vec4<bool>(any(!vec4<bool>(var_2.x, arg_1.x, arg_1.x, true)), !(var_2.x != false), true, true)));
    return arg_0.d;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    global0 = array<Struct_1, 13>();
    let var_0 = vec4<i32>(1i << (_wgslsmith_sub_u32(0u, arg_0.d.x >> (_wgslsmith_add_u32(arg_3.d.x, 5549u) % 32u)) % 32u), u_input.b, -_wgslsmith_sub_i32(~(~arg_0.a.x), arg_3.a.x), -_wgslsmith_div_i32(_wgslsmith_mod_i32(firstLeadingBit(arg_0.a.x), _wgslsmith_clamp_i32(-69885i, arg_1.a.x, 2147483647i)), arg_1.a.x));
    global3 = select(countOneBits(-2147483647i), -1i, (_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(u_input.c, u_input.c), max(u_input.c, u_input.c)) <= 1u) & true);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-278f * _wgslsmith_f_op_f32(max(-1398f, _wgslsmith_f_op_f32(1401f * _wgslsmith_f_op_f32(-arg_0.c))))), 1719f);
    let var_2 = arg_1.b.xy;
    return !(!any(vec3<bool>(true, true, true))) | false;
}

fn func_2() -> u32 {
    let var_0 = !func_4(global0[_wgslsmith_index_u32(1u, 13u)], Struct_1(vec3<i32>(-17120i, max(-740i, u_input.b), countOneBits(0i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-880f, 236f, -804f), vec3<f32>(1320f, -1015f, 297f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-303f, -1104f, -250f) - vec3<f32>(137f, 1351f, 1960f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(606f, 751f)), 1f), func_3(Struct_1(vec3<i32>(-1i, u_input.b, -31925i), vec3<f32>(-1434f, 1049f, 704f), 279f, vec3<u32>(u_input.a.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(38567u, 23u)], 23u)], global2[_wgslsmith_index_u32(1u, 23u)])), vec3<bool>(true, true, true), min(vec2<i32>(9963i, -1i), vec2<i32>(1i, 0i)), -856f)), global0[_wgslsmith_index_u32(0u, 13u)], Struct_1(vec3<i32>(0i, -9104i, u_input.b) | min(vec3<i32>(8187i, u_input.b, 2147483647i), vec3<i32>(u_input.b, u_input.b, -15437i)), vec3<f32>(_wgslsmith_f_op_f32(min(214f, 661f)), _wgslsmith_f_op_f32(-790f * -1535f), 2977f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(681f))), ~u_input.a));
    let var_1 = vec4<f32>(345f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1404f), _wgslsmith_f_op_f32(f32(-1f) * -2895f))), -1946f) * -502f), 1273f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-433f)) + _wgslsmith_f_op_f32(abs(-311f))) + 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1689f * -1221f)), any(!vec4<bool>(var_0, var_0, true, var_0)))));
    let var_2 = 36843u;
    var var_3 = global2[_wgslsmith_index_u32(23152u, 23u)] << (~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_2, 417u), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_2, global2[_wgslsmith_index_u32(1u, 23u)]), vec2<u32>(1u, var_2), u_input.c.xz)), select(~vec2<u32>(0u, var_2), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.c.x), vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(4294967295u, 23u)])), vec2<bool>(false, true))) % 32u);
    let var_4 = false;
    return global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32((vec3<u32>(global2[_wgslsmith_index_u32(var_2, 23u)], var_2, 1u) & vec3<u32>(var_2, 69846u, 0u)) & ~u_input.c.wyx, u_input.c.xyy), u_input.a), 23u)] | var_2, 23u)];
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> bool {
    global1 = ~firstTrailingBit(abs(arg_1.d.x));
    var var_0 = u_input.c ^ vec4<u32>(func_2(), arg_3.d.x, func_3(Struct_1(-arg_3.a, _wgslsmith_f_op_vec3_f32(max(arg_3.b, arg_1.b)), _wgslsmith_div_f32(arg_2, arg_2), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.d.x, arg_3.d.x, global2[_wgslsmith_index_u32(arg_3.d.x, 23u)]), arg_3.d)), vec3<bool>(-122f >= arg_3.b.x, false, true), arg_3.a.xz, _wgslsmith_f_op_f32(f32(-1f) * -1973f)).x, ~0u);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-504f, 720f, -915f, 139f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(745f, 317f, 425f, arg_2)))), _wgslsmith_mod_u32(0u, arg_1.d.x) <= ~4294967295u)) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-359f, arg_1.c, arg_2, arg_3.b.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(614f, -659f, arg_2, arg_3.b.x), vec4<f32>(165f, -816f, 1372f, -1276f))) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(164f, 274f, 278f, -375f))))))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -428f), -285f, -973f, arg_1.b.x));
    var_0 = select(abs(vec4<u32>(~var_0.x, ~countOneBits(5061u), ~global2[_wgslsmith_index_u32(arg_3.d.x, 23u)], _wgslsmith_dot_vec3_u32(arg_1.d, arg_1.d))), u_input.c, false);
    global3 = arg_0.x;
    return !(any(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true))) && any(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), true)));
}

fn func_5(arg_0: i32, arg_1: vec3<bool>, arg_2: f32) -> Struct_1 {
    var var_0 = countOneBits(global2[_wgslsmith_index_u32(1u, 23u)]);
    var var_1 = -220i;
    let var_2 = (_wgslsmith_f_op_f32(min(609f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2))))) > _wgslsmith_f_op_f32(floor(1000f))) || (select(true, !(global2[_wgslsmith_index_u32(0u, 23u)] == 4294967295u), any(vec4<bool>(arg_1.x, false, false, arg_1.x))) || arg_1.x);
    let var_3 = Struct_1(-vec3<i32>(_wgslsmith_clamp_i32(u_input.b, -17883i, u_input.b) ^ (u_input.b ^ -21215i), 30117i, -11975i), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-369f + arg_2), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(arg_2)), _wgslsmith_f_op_f32(-arg_2)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -947f)))), u_input.a);
    let var_4 = _wgslsmith_add_vec2_u32(abs(firstLeadingBit(var_3.d.xx)) | var_3.d.xx, _wgslsmith_mult_vec2_u32(u_input.c.wz, firstTrailingBit(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 23u)], 23u)], 89057u)))) & u_input.c.zy;
    return Struct_1(firstLeadingBit(countOneBits(vec3<i32>(1i, u_input.b, 2147483647i)) >> (~var_3.d % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_3.b - var_3.b) + vec3<f32>(arg_2, _wgslsmith_f_op_f32(1138f * 2173f), _wgslsmith_f_op_f32(-1672f - 390f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(565f, 2322f, -1151f), var_3.b)) * _wgslsmith_f_op_vec3_f32(min(var_3.b, _wgslsmith_f_op_vec3_f32(-var_3.b)))), var_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2))), countOneBits(var_3.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(u_input.b, select(vec3<bool>(all(vec4<bool>(false, false, true, false)) && any(vec4<bool>(false, true, false, true)), !all(vec2<bool>(true, true)), all(vec4<bool>(false, false, false, false)) | func_1(vec2<i32>(u_input.b, -1i), Struct_1(vec3<i32>(u_input.b, -2147483647i, u_input.b), vec3<f32>(-1251f, 205f, -638f), 432f, u_input.c.yyy), -1794f, global0[_wgslsmith_index_u32(1u, 13u)])), !(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), vec3<bool>(func_4(Struct_1(vec3<i32>(-34595i, u_input.b, -35382i), vec3<f32>(-315f, 515f, 1008f), -2617f, u_input.a), Struct_1(vec3<i32>(u_input.b, -516i, 0i), vec3<f32>(561f, -582f, 242f), -708f, vec3<u32>(55473u, u_input.a.x, 424u)), global0[_wgslsmith_index_u32(abs(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 23u)], 23u)]), 13u)], global0[_wgslsmith_index_u32(u_input.e, 13u)]), true, any(vec3<bool>(true, false, false)))), -1466f);
    let var_1 = var_0.b.yz;
    global3 = -4121i;
    var var_2 = min(u_input.b, -(~var_0.a.x));
    var var_3 = func_5(-var_0.a.x, vec3<bool>(false, (u_input.b >= -2960i) & true, true), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(var_1.x, var_1.x))))) + var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-470f - var_0.b.x) + _wgslsmith_f_op_f32(var_0.c * 321f))))), _wgslsmith_dot_vec3_i32(~abs(var_0.a), abs(_wgslsmith_clamp_vec3_i32(var_0.a, vec3<i32>(0i, var_3.a.x, -50688i), ~vec3<i32>(u_input.b, var_0.a.x, var_0.a.x)))));
}

