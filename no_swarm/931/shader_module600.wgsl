struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec2<bool>,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
    c: vec3<bool>,
    d: vec3<bool>,
    e: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec4<i32>, 27>;

var<private> global2: array<Struct_3, 14> = array<Struct_3, 14>(Struct_3(vec3<u32>(0u, 0u, 1u), vec3<i32>(-1i, 78755i, 2147483647i), 1042f, Struct_2(true, vec3<i32>(2147483647i, -9724i, -43991i), vec3<bool>(false, true, false), vec3<bool>(true, false, true), -935f)), Struct_3(vec3<u32>(4294967295u, 41537u, 19256u), vec3<i32>(2147483647i, 24818i, 25720i), -2132f, Struct_2(false, vec3<i32>(-1i, 2147483647i, 2147483647i), vec3<bool>(false, true, true), vec3<bool>(true, false, false), 3458f)), Struct_3(vec3<u32>(75800u, 0u, 49857u), vec3<i32>(1i, i32(-2147483648), -21670i), 1723f, Struct_2(false, vec3<i32>(-1i, 30925i, -18094i), vec3<bool>(false, true, false), vec3<bool>(true, true, false), -1380f)), Struct_3(vec3<u32>(4294967295u, 0u, 2567u), vec3<i32>(2147483647i, 2147483647i, -12409i), 1179f, Struct_2(true, vec3<i32>(-1i, i32(-2147483648), 2147483647i), vec3<bool>(true, true, false), vec3<bool>(false, false, false), -363f)), Struct_3(vec3<u32>(2126u, 11815u, 0u), vec3<i32>(1i, 47381i, -49082i), -280f, Struct_2(true, vec3<i32>(8261i, 16844i, i32(-2147483648)), vec3<bool>(false, true, false), vec3<bool>(false, true, false), 1990f)), Struct_3(vec3<u32>(0u, 73802u, 44241u), vec3<i32>(i32(-2147483648), 11903i, 29396i), 569f, Struct_2(false, vec3<i32>(21995i, i32(-2147483648), i32(-2147483648)), vec3<bool>(false, false, false), vec3<bool>(false, false, false), 1289f)), Struct_3(vec3<u32>(107355u, 23214u, 28793u), vec3<i32>(-11239i, i32(-2147483648), 5903i), 1500f, Struct_2(true, vec3<i32>(-10151i, 8380i, -1i), vec3<bool>(true, false, true), vec3<bool>(true, false, true), 288f)), Struct_3(vec3<u32>(0u, 4294967295u, 0u), vec3<i32>(-35573i, 0i, 16884i), 423f, Struct_2(true, vec3<i32>(-1i, 30661i, i32(-2147483648)), vec3<bool>(true, false, false), vec3<bool>(false, true, false), 442f)), Struct_3(vec3<u32>(4294967295u, 2645u, 0u), vec3<i32>(1i, i32(-2147483648), -29963i), 211f, Struct_2(false, vec3<i32>(-1i, -1i, 0i), vec3<bool>(true, false, false), vec3<bool>(true, false, false), -1000f)), Struct_3(vec3<u32>(4294967295u, 4294967295u, 24378u), vec3<i32>(71300i, 2147483647i, 29260i), 375f, Struct_2(true, vec3<i32>(2147483647i, 2147483647i, 32256i), vec3<bool>(false, false, false), vec3<bool>(false, false, true), 593f)), Struct_3(vec3<u32>(61797u, 49562u, 4294967295u), vec3<i32>(11349i, 0i, -32432i), 2104f, Struct_2(true, vec3<i32>(i32(-2147483648), 5364i, 4546i), vec3<bool>(true, false, false), vec3<bool>(true, false, true), -351f)), Struct_3(vec3<u32>(28393u, 0u, 1u), vec3<i32>(1i, -11936i, -36588i), -302f, Struct_2(false, vec3<i32>(-1i, 0i, 1695i), vec3<bool>(false, false, true), vec3<bool>(false, true, false), 756f)), Struct_3(vec3<u32>(0u, 1u, 65112u), vec3<i32>(1i, 2147483647i, -18137i), 2032f, Struct_2(false, vec3<i32>(28379i, -25554i, 17368i), vec3<bool>(true, false, true), vec3<bool>(true, false, true), 573f)), Struct_3(vec3<u32>(1u, 1u, 0u), vec3<i32>(-1i, 2147483647i, 2147483647i), -1567f, Struct_2(false, vec3<i32>(0i, 1i, 1i), vec3<bool>(true, true, false), vec3<bool>(false, false, true), -508f)));

var<private> global3: array<f32, 22> = array<f32, 22>(1160f, -687f, -157f, 1000f, -1201f, 712f, -708f, 455f, 685f, -504f, 537f, -278f, -260f, -668f, 622f, 154f, 1875f, -1150f, 147f, -135f, 950f, 679f);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec3<i32>, arg_3: f32) -> vec4<u32> {
    global2 = array<Struct_3, 14>();
    global1 = array<vec4<i32>, 27>();
    global0 = arg_1.a.x ^ _wgslsmith_dot_vec4_u32(select(max(vec4<u32>(arg_1.a.x, 1u, u_input.b, arg_1.a.x), vec4<u32>(4294967295u, arg_1.a.x, u_input.b, 34523u)), ~vec4<u32>(38052u, 14435u, 80010u, 89u), arg_0.c.x) ^ ~firstTrailingBit(vec4<u32>(arg_1.a.x, 0u, u_input.b, 4294967295u)), firstLeadingBit(abs(max(vec4<u32>(117363u, arg_1.a.x, 100771u, 141530u), vec4<u32>(1u, arg_1.a.x, u_input.b, arg_1.a.x)))));
    var var_0 = Struct_1(vec4<u32>(~(u_input.c << (~u_input.c % 32u)), 130507u | firstTrailingBit(abs(u_input.c)), u_input.b, ~arg_1.a.x), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, global3[_wgslsmith_index_u32(292u, 22u)], arg_3, -897f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(887f, 1052f, arg_3, 821f) + vec4<f32>(698f, -211f, -264f, 886f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1.d.e, arg_3, 459f, -1162f))))))), arg_1.d.d.yx, abs(min(u_input.c, _wgslsmith_div_u32(u_input.c, 0u)) & (firstLeadingBit(37895u) ^ u_input.c)));
    global1 = array<vec4<i32>, 27>();
    return min(vec4<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.d, 43872u, 95430u), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, var_0.d, var_0.a.x), arg_1.a)), _wgslsmith_mult_u32(0u, _wgslsmith_clamp_u32(arg_1.a.x, 6291u, u_input.b)), select(var_0.d, var_0.a.x, true)) ^ firstTrailingBit(var_0.a), firstTrailingBit(~firstTrailingBit(abs(var_0.a))));
}

fn func_2() -> vec3<u32> {
    var var_0 = Struct_1(_wgslsmith_add_vec4_u32(firstLeadingBit(select(func_3(Struct_2(true, vec3<i32>(-15928i, u_input.a, -19428i), vec3<bool>(false, true, true), vec3<bool>(false, false, true), global3[_wgslsmith_index_u32(u_input.c, 22u)]), global2[_wgslsmith_index_u32(u_input.b, 14u)], vec3<i32>(u_input.a, u_input.a, u_input.a), global3[_wgslsmith_index_u32(u_input.c, 22u)]), ~vec4<u32>(1u, u_input.c, 25473u, u_input.b), true)), abs(firstTrailingBit(vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.b)) << (func_3(Struct_2(false, vec3<i32>(u_input.a, 2147483647i, 34505i), vec3<bool>(false, false, true), vec3<bool>(false, true, false), -1294f), Struct_3(vec3<u32>(u_input.c, u_input.b, u_input.c), vec3<i32>(u_input.a, u_input.a, -2147483647i), global3[_wgslsmith_index_u32(u_input.b, 22u)], Struct_2(true, vec3<i32>(1i, -1i, -50817i), vec3<bool>(false, true, false), vec3<bool>(false, false, true), -751f)), vec3<i32>(1i, u_input.a, u_input.a), global3[_wgslsmith_index_u32(u_input.b, 22u)]) % vec4<u32>(32u)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(12227u, 42370u, 29067u, u_input.c), vec4<u32>(u_input.b, 37553u, 4294967295u, u_input.c)), 22u)] - global3[_wgslsmith_index_u32(u_input.b, 22u)]), global3[_wgslsmith_index_u32(countOneBits(2580u), 22u)], _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(36714u, 22u)] * -567f), _wgslsmith_f_op_f32(max(499f, global3[_wgslsmith_index_u32(1962u, 22u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(334f)) * _wgslsmith_f_op_f32(543f - global3[_wgslsmith_index_u32(12060u, 22u)]))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-876f, global3[_wgslsmith_index_u32(u_input.c, 22u)], 988f, -815f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(0u, 22u)], -772f, 1938f, global3[_wgslsmith_index_u32(5497u, 22u)]) * vec4<f32>(694f, global3[_wgslsmith_index_u32(u_input.c, 22u)], global3[_wgslsmith_index_u32(u_input.c, 22u)], 1381f)), vec4<bool>(true, true, true, true))) * vec4<f32>(_wgslsmith_f_op_f32(abs(158f)), _wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(71653u, 22u)], 1671f)), 849f, _wgslsmith_f_op_f32(1236f - 1843f)))), !vec2<bool>(any(vec3<bool>(true, false, true)), true), u_input.b);
    global2 = array<Struct_3, 14>();
    var_0 = Struct_1(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(_wgslsmith_div_u32(0u, 4294967295u), firstLeadingBit(13075u), var_0.d, var_0.a.x)), var_0.a), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-var_0.b))), !select(select(select(vec2<bool>(var_0.c.x, var_0.c.x), vec2<bool>(false, var_0.c.x), vec2<bool>(true, true)), var_0.c, var_0.c), var_0.c, true), func_3(Struct_2(var_0.c.x || true, _wgslsmith_mult_vec3_i32(min(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a)), _wgslsmith_mult_vec3_i32(vec3<i32>(9671i, 1i, u_input.a), vec3<i32>(u_input.a, u_input.a, 32119i))), vec3<bool>(any(vec3<bool>(true, false, false)), !var_0.c.x, false), vec3<bool>(true, false, true), _wgslsmith_f_op_f32(792f + 247f)), global2[_wgslsmith_index_u32(~50926u, 14u)], -reverseBits(vec3<i32>(u_input.a, u_input.a, u_input.a)) | vec3<i32>(reverseBits(-3322i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, 2147483647i), global1[_wgslsmith_index_u32(u_input.c, 27u)]), u_input.a), _wgslsmith_f_op_f32(max(-324f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-419f, 1224f)))))).x);
    var var_1 = any(vec2<bool>(var_0.c.x, !var_0.c.x));
    global0 = u_input.b;
    return ~(~(~_wgslsmith_mod_vec3_u32(var_0.a.zxx, var_0.a.yyy)) | ~_wgslsmith_clamp_vec3_u32(max(vec3<u32>(var_0.d, var_0.a.x, 45569u), var_0.a.xww), ~var_0.a.xww, _wgslsmith_div_vec3_u32(var_0.a.xzz, var_0.a.zxy)));
}

fn func_1(arg_0: u32, arg_1: vec4<bool>) -> vec3<u32> {
    var var_0 = !select(!(!(!arg_1.zy)), arg_1.wy, select(vec2<bool>(true, true), vec2<bool>(true, true), select(true, true, false)));
    var var_1 = Struct_4(select(~abs(62109i), -u_input.a, !all(vec4<bool>(var_0.x, false, arg_1.x, true))), func_2(), firstTrailingBit(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, u_input.a, u_input.a, -1i), global1[_wgslsmith_index_u32(0u, 27u)]), vec4<i32>(2147483647i, 2147483647i, u_input.a, -1i) | global1[_wgslsmith_index_u32(4294967295u, 27u)]) >> (~(~vec4<u32>(4294967295u, u_input.c, u_input.b, u_input.c)) % vec4<u32>(32u))), vec2<u32>(~0u, arg_0));
    let var_2 = Struct_1(select(countOneBits(vec4<u32>(0u, var_1.d.x, 1u, u_input.b) | vec4<u32>(55242u, var_1.b.x, var_1.d.x, var_1.b.x)) & vec4<u32>(func_2().x, arg_0, 62190u, ~66446u), countOneBits(max(vec4<u32>(26076u, 0u, arg_0, 36965u), firstTrailingBit(vec4<u32>(u_input.c, arg_0, var_1.b.x, arg_0)))), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(arg_0, 22u)], global3[_wgslsmith_index_u32(var_1.b.x, 22u)], global3[_wgslsmith_index_u32(arg_0, 22u)], -201f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global3[_wgslsmith_index_u32(arg_0, 22u)], global3[_wgslsmith_index_u32(u_input.c, 22u)], global3[_wgslsmith_index_u32(1u, 22u)], -913f)))), false))), vec2<bool>(arg_1.x, arg_1.x), abs(func_2().x));
    global2 = array<Struct_3, 14>();
    var var_3 = 96027u;
    return select(vec3<u32>(8125u, _wgslsmith_clamp_u32(~(~4294967295u), var_1.b.x, 0u), 8583u), var_1.b, arg_1.xwx);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(~_wgslsmith_dot_vec4_u32(~vec4<u32>(24286u, 1u, u_input.b, u_input.b), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 4294967295u, u_input.b, 2337u), vec4<u32>(u_input.b, 8705u, 4294967295u, u_input.c), vec4<u32>(0u, u_input.b, u_input.b, u_input.c))) | 55562u);
    var var_0 = ~func_1(firstLeadingBit(u_input.c), !select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, true, true), true));
    var var_1 = global2[_wgslsmith_index_u32(31858u, 14u)];
    let var_2 = all(vec2<bool>(true, all(!vec2<bool>(var_1.d.c.x, var_1.d.c.x))));
    var_0 = vec3<u32>(_wgslsmith_clamp_u32(~firstLeadingBit(53838u) ^ u_input.b, var_0.x, 71750u), 34364u, var_0.x);
    var var_3 = Struct_3(select(~var_1.a, vec3<u32>(u_input.c, u_input.b, 1885u) >> (vec3<u32>(var_1.a.x, u_input.b | u_input.c, _wgslsmith_mult_u32(u_input.c, 25868u)) % vec3<u32>(32u)), true), _wgslsmith_clamp_vec3_i32(var_1.d.b, ~(-vec3<i32>(var_1.b.x, 2147483647i, 2147483647i)) ^ (_wgslsmith_add_vec3_i32(vec3<i32>(-20636i, u_input.a, 2147483647i), vec3<i32>(var_1.d.b.x, -2147483647i, -47793i)) & reverseBits(vec3<i32>(u_input.a, u_input.a, u_input.a))), vec3<i32>(u_input.a, u_input.a, _wgslsmith_dot_vec3_i32(var_1.d.b, vec3<i32>(-2147483647i, u_input.a, u_input.a)) << ((1u >> (u_input.c % 32u)) % 32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c) * 271f), var_1.d);
    let var_4 = select(select(!vec2<bool>(var_2 || var_2, var_3.d.c.x), select(!(!var_3.d.c.xy), select(select(var_3.d.d.zy, var_3.d.c.zy, var_1.d.d.yz), vec2<bool>(var_1.d.d.x, var_2), !vec2<bool>(var_1.d.c.x, true)), vec2<bool>(true, var_2 && var_1.d.c.x)), var_1.d.c.x), vec2<bool>(false & (var_1.d.d.x && !var_1.d.d.x), select(true, true, select(select(var_2, var_1.d.d.x, var_2), all(var_1.d.d), any(vec4<bool>(true, true, var_3.d.a, true))))), abs(18583u) >= ~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 1u, 4294967295u, var_3.a.x), vec4<u32>(var_1.a.x, var_3.a.x, 3391u, u_input.b)), var_1.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(~(~countOneBits(vec4<u32>(u_input.c, var_1.a.x, 32141u, u_input.c) & vec4<u32>(39689u, var_1.a.x, 24305u, var_0.x))));
}

