struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec3<bool>,
    d: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: bool,
    d: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
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

var<private> global0: array<vec4<i32>, 30> = array<vec4<i32>, 30>(vec4<i32>(-29825i, 2147483647i, -1i, 30253i), vec4<i32>(0i, -8027i, 0i, 1i), vec4<i32>(11183i, 0i, 3765i, -35514i), vec4<i32>(22715i, -1i, 0i, i32(-2147483648)), vec4<i32>(1i, -1i, -1i, -64718i), vec4<i32>(-10409i, 1i, -62199i, 0i), vec4<i32>(0i, 30738i, i32(-2147483648), -1i), vec4<i32>(2147483647i, 0i, 0i, 2147483647i), vec4<i32>(19899i, 1i, 1354i, 28406i), vec4<i32>(12259i, 1i, 6491i, 2147483647i), vec4<i32>(44351i, 12897i, 2147483647i, 0i), vec4<i32>(0i, 0i, 2147483647i, 2147483647i), vec4<i32>(-28416i, -23193i, -4585i, 24798i), vec4<i32>(-11684i, -4924i, -1i, 1i), vec4<i32>(11080i, -1i, -4835i, -41062i), vec4<i32>(2147483647i, -39270i, -1i, -19656i), vec4<i32>(-16236i, -62460i, 2147483647i, i32(-2147483648)), vec4<i32>(25576i, -28533i, -31472i, 11476i), vec4<i32>(i32(-2147483648), -1i, -1i, -40041i), vec4<i32>(33411i, 0i, 0i, 0i), vec4<i32>(1i, 45664i, i32(-2147483648), -1i), vec4<i32>(i32(-2147483648), i32(-2147483648), 2147483647i, 17263i), vec4<i32>(0i, 12641i, -4750i, -1i), vec4<i32>(1i, 2147483647i, 2147483647i, -1i), vec4<i32>(43233i, i32(-2147483648), -14041i, 87852i), vec4<i32>(1i, i32(-2147483648), -1i, 1i), vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, -20734i), vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, 24058i), vec4<i32>(i32(-2147483648), -1i, -1i, 33843i), vec4<i32>(-8090i, 15370i, i32(-2147483648), 0i));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: u32) -> f32 {
    var var_0 = arg_0;
    var_0 = arg_0;
    global0 = array<vec4<i32>, 30>();
    var var_1 = arg_2;
    let var_2 = arg_0.x;
    return 430f;
}

fn func_3(arg_0: vec4<bool>) -> vec4<u32> {
    return abs(~firstTrailingBit(vec4<u32>(1u, 1u, 76313u, 14856u)) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)));
}

fn func_2(arg_0: Struct_4, arg_1: vec4<u32>) -> vec2<u32> {
    var var_0 = reverseBits(select((~arg_1 | select(vec4<u32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<u32>(arg_1.x, 12832u, 1u, arg_1.x), vec4<bool>(false, arg_0.a.c.x, true, false))) >> (vec4<u32>(~53236u, countOneBits(arg_1.x), arg_1.x << (4294967295u % 32u), arg_1.x) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(func_3(select(vec4<bool>(false, true, arg_0.a.c.x, true), vec4<bool>(false, arg_0.b.b.c.x, false, false), arg_0.a.c.x)), arg_1), select(select(!vec4<bool>(true, arg_0.a.d, arg_0.b.b.c.x, false), select(vec4<bool>(arg_0.a.c.x, true, false, false), vec4<bool>(arg_0.b.b.c.x, arg_0.b.b.c.x, arg_0.b.a.x, arg_0.b.a.x), arg_0.b.a.x), arg_0.b.b.c.x), select(select(vec4<bool>(arg_0.b.b.d, arg_0.b.b.d, true, false), vec4<bool>(arg_0.b.a.x, arg_0.a.d, arg_0.a.d, false), vec4<bool>(arg_0.b.a.x, arg_0.b.a.x, arg_0.a.c.x, true)), !vec4<bool>(arg_0.a.d, arg_0.b.b.c.x, arg_0.a.c.x, arg_0.b.a.x), true), select(!vec4<bool>(arg_0.b.b.d, true, arg_0.a.d, false), select(vec4<bool>(arg_0.a.d, true, arg_0.b.a.x, true), vec4<bool>(arg_0.b.b.c.x, true, arg_0.a.d, arg_0.b.a.x), vec4<bool>(arg_0.b.b.c.x, true, true, arg_0.a.d)), arg_1.x <= arg_1.x))));
    global0 = array<vec4<i32>, 30>();
    let var_1 = vec3<bool>(select(arg_0.b.b.d, !any(!vec4<bool>(false, false, arg_0.b.b.d, arg_0.a.d)), any(select(!arg_0.b.a, vec2<bool>(false, arg_0.a.d), select(vec2<bool>(arg_0.a.d, false), vec2<bool>(arg_0.a.c.x, true), arg_0.b.a.x)))), arg_0.b.b.d, arg_0.a.c.x);
    let var_2 = Struct_3(arg_0.b, all(vec4<bool>(all(vec4<bool>(arg_0.b.b.c.x, var_1.x, var_1.x, var_1.x)), select(var_1.x, arg_0.a.d, arg_0.b.b.d), 0u >= var_0.x, !var_1.x)) && any(arg_0.b.b.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.b.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(966f * 790f) + _wgslsmith_f_op_f32(sign(arg_0.b.c.x)))) != -332f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.b.x * 2063f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1340f * 300f))));
    var var_3 = _wgslsmith_f_op_f32(var_2.d * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(vec3<bool>(var_2.b, var_1.x, arg_0.a.c.x), vec2<u32>(25602u, 12705u), ~arg_1.x)), arg_0.b.c.x, true))));
    return vec2<u32>(var_0.x, _wgslsmith_mult_u32(~countOneBits(72419u), _wgslsmith_sub_u32(var_0.x, ~1u) >> (42512u % 32u)));
}

fn func_4(arg_0: bool, arg_1: vec4<i32>, arg_2: u32) -> Struct_4 {
    let var_0 = arg_0;
    let var_1 = 0u;
    var var_2 = Struct_3(Struct_2(select(select(select(vec2<bool>(false, true), vec2<bool>(false, arg_0), vec2<bool>(var_0, false)), !vec2<bool>(arg_0, var_0), select(vec2<bool>(var_0, arg_0), vec2<bool>(true, true), vec2<bool>(false, true))), !vec2<bool>(true, var_0), select(!vec2<bool>(arg_0, arg_0), !vec2<bool>(var_0, arg_0), all(vec2<bool>(true, arg_0)))), Struct_1(vec2<f32>(1163f, _wgslsmith_f_op_f32(681f - -669f)), vec3<f32>(-402f, _wgslsmith_f_op_f32(select(-953f, 407f, var_0)), _wgslsmith_f_op_f32(abs(233f))), select(vec3<bool>(true, arg_0, var_0), !vec3<bool>(false, arg_0, var_0), vec3<bool>(var_0, false, false)), select(select(true, false, var_0), false, arg_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(284f, -186f, -2989f, 246f))))), -u_input.a.x >= min(firstTrailingBit(~arg_1.x), reverseBits(41920i)), !(!all(vec2<bool>(true, false))), _wgslsmith_div_f32(1122f, 434f));
    var var_3 = Struct_3(var_2.a, var_1 >= 30698u, true, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-153f - _wgslsmith_f_op_f32(sign(1155f))), _wgslsmith_f_op_f32(ceil(-1000f)))));
    global0 = array<vec4<i32>, 30>();
    return Struct_4(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(select(176f, 353f, var_3.b)), _wgslsmith_f_op_f32(718f - _wgslsmith_f_op_f32(-var_3.a.b.b.x))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1202f, var_3.d, var_2.a.c.x))))), var_3.a.b.c, true & arg_0), var_3.a);
}

fn func_5(arg_0: Struct_4, arg_1: bool, arg_2: u32, arg_3: bool) -> vec4<bool> {
    var var_0 = _wgslsmith_sub_u32(_wgslsmith_mod_u32(arg_2, _wgslsmith_add_u32(1u, arg_2)), 0u) != arg_2;
    let var_1 = select(!(!vec4<bool>(func_4(true, vec4<i32>(2147483647i, 13999i, 55701i, -2147483647i), 1u).a.c.x, true, select(arg_3, false, true), -523f != arg_0.b.b.a.x)), select(!select(vec4<bool>(arg_0.a.c.x, arg_3, arg_1, arg_1), select(vec4<bool>(arg_0.b.b.c.x, arg_3, arg_1, true), vec4<bool>(true, true, arg_3, arg_3), true), !vec4<bool>(arg_1, arg_3, arg_3, false)), !(!vec4<bool>(arg_0.a.d, true, false, arg_0.a.d)), !vec4<bool>(arg_0.a.d, false, true, arg_3 || true)), _wgslsmith_clamp_i32(reverseBits(~(-1i)), u_input.a.x, ~u_input.a.x) != _wgslsmith_dot_vec4_i32(~(~vec4<i32>(u_input.a.x, u_input.a.x, -1i, u_input.a.x)), abs(global0[_wgslsmith_index_u32(4294967295u, 30u)] << (vec4<u32>(arg_2, arg_2, 27095u, 23793u) % vec4<u32>(32u)))));
    var_0 = true;
    var var_2 = Struct_4(arg_0.a, Struct_2(select(select(arg_0.a.c.zx, !vec2<bool>(arg_1, var_1.x), true), !arg_0.a.c.zx, !select(vec2<bool>(arg_0.b.b.d, false), vec2<bool>(arg_3, var_1.x), false)), func_4(arg_0.b.a.x, vec4<i32>(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, u_input.a.x), i32(-1i) * -1i, firstTrailingBit(2147483647i), -u_input.a.x), 4294967295u).a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(arg_0.b.c))))));
    var var_3 = func_4(arg_0.a.c.x && ((1u <= select(75739u, arg_2, arg_0.a.c.x)) & false), firstTrailingBit(~_wgslsmith_add_vec4_i32(-global0[_wgslsmith_index_u32(arg_2, 30u)], abs(global0[_wgslsmith_index_u32(1u, 30u)]))), ~_wgslsmith_clamp_u32(abs(14236u & arg_2), arg_2, countOneBits(~arg_2))).b;
    return vec4<bool>(func_4(var_2.b.a.x, -((vec4<i32>(u_input.a.x, 50226i, u_input.a.x, u_input.a.x) ^ global0[_wgslsmith_index_u32(arg_2, 30u)]) << (vec4<u32>(26769u, arg_2, 0u, arg_2) % vec4<u32>(32u))), ~(43299u >> (max(arg_2, 1u) % 32u))).b.b.d, arg_3 & !var_2.a.d, _wgslsmith_add_u32(arg_2 | reverseBits(62875u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(31088u, 4294967295u))) > arg_2, var_2.a.a.x != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.b.c.x, _wgslsmith_f_op_f32(-arg_0.b.b.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(vec3<i32>(-u_input.a.x, u_input.a.x, ~(0i & u_input.a.x)) | ~(-(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) & vec3<i32>(-19311i, u_input.a.x, u_input.a.x))));
    var var_1 = func_5(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1580f * 1136f) * _wgslsmith_f_op_f32(func_1(vec3<bool>(false, true, true), vec2<u32>(60655u, 0u), 1u))) < _wgslsmith_div_f32(1555f, -1367f), vec4<i32>(-1i) * -(~vec4<i32>(-2147483647i, -2147483647i, var_0.x, 66169i)), _wgslsmith_dot_vec2_u32(~firstLeadingBit(vec2<u32>(4294967295u, 1u)), func_2(Struct_4(Struct_1(vec2<f32>(-396f, -512f), vec3<f32>(1021f, 782f, 989f), vec3<bool>(false, false, false), false), Struct_2(vec2<bool>(true, false), Struct_1(vec2<f32>(-1689f, 515f), vec3<f32>(-928f, -1518f, -1126f), vec3<bool>(true, true, true), true), vec4<f32>(-571f, -1805f, 1646f, 507f))), vec4<u32>(1u, 1u, 1u, 1u)))), true, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 49711u, 7906u), vec3<u32>(17429u, 116103u, 97633u)) >> (min(firstLeadingBit(0u), 14473u) % 32u)), !(true & !all(vec2<bool>(false, false))));
    var var_2 = ~_wgslsmith_mod_vec2_i32(var_0.xz, vec2<i32>(_wgslsmith_div_i32(27328i, ~u_input.a.x), 1i));
    var_0 = ~(vec3<i32>(-var_2.x, ~var_2.x, u_input.a.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 67656u, 26120u), vec4<u32>(0u, 4294967295u, 4294967295u, 19739u)) % 32u)) << (vec3<u32>(~1u, ~firstLeadingBit(69178u), _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(10831u, 0u, 79862u, 4294967295u)), vec4<u32>(4294967295u, 49712u, 761u, 20824u))) % vec3<u32>(32u)));
    var var_3 = var_1.yz;
    let var_4 = Struct_4(func_4(!(!(!var_3.x)), global0[_wgslsmith_index_u32(func_3(vec4<bool>(var_3.x, all(var_1.zzx), select(true, var_1.x, true), any(var_1.yzy))).x, 30u)], 1u << (1u % 32u)).a, Struct_2(!vec2<bool>(any(var_1.zzx), false), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-754f, -138f), vec2<f32>(248f, 1913f), false)) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1797f, -500f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(242f, -1306f, 1000f)))), vec3<bool>(true, var_3.x, false), true), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, -761f, 2427f, -190f), vec4<f32>(1270f, -1756f, -828f, 458f))) * vec4<f32>(-624f, -2257f, 160f, 235f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1178f, -734f, 937f, -360f))))));
    global0 = array<vec4<i32>, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(-(-2147483647i << (_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(102093u, 1u, 4294967295u), vec3<u32>(20333u, 77926u, 56918u))) % 32u)));
}

