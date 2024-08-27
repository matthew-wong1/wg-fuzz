struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: bool,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 18>;

var<private> global1: bool;

var<private> global2: vec3<i32> = vec3<i32>(18143i, 16099i, 3615i);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2, arg_3: vec3<f32>) -> vec3<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(666f, arg_2.a.a.x, arg_2.a.a.x, 997f)), arg_0.a.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.a.a + vec4<f32>(arg_2.a.d, arg_2.a.a.x, -1389f, -436f)))))), firstLeadingBit(countOneBits(_wgslsmith_dot_vec2_u32(select(arg_0.b.xz, vec2<u32>(arg_2.b.x, 1u), vec2<bool>(true, arg_0.a.c)), vec2<u32>(1u, arg_0.b.x)))), true, _wgslsmith_f_op_f32(1000f + _wgslsmith_div_f32(arg_0.a.d, _wgslsmith_f_op_f32(arg_0.a.a.x + arg_0.a.d))), _wgslsmith_mod_u32(arg_0.a.e, _wgslsmith_dot_vec4_u32(arg_2.b, arg_0.b) | ~(~arg_0.a.b)));
    var var_1 = arg_0.a;
    var var_2 = Struct_1(_wgslsmith_div_vec4_f32(arg_2.a.a, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(step(384f, 2116f)), _wgslsmith_f_op_f32(arg_0.a.a.x + arg_2.a.a.x), 263f, arg_0.a.a.x)))), _wgslsmith_mod_u32(var_1.e, countOneBits(abs(arg_2.a.e) ^ arg_0.b.x)), var_1.c || var_0.c, arg_0.a.a.x, u_input.c.x);
    var_2 = arg_0.a;
    global2 = vec3<i32>(arg_1, i32(-1i) * -(arg_1 ^ -3206i), _wgslsmith_add_i32(arg_1, -1i));
    return arg_0.b.yyy;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1) -> Struct_3 {
    var var_0 = vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(firstLeadingBit(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(52262u, u_input.c.x), u_input.b.zz), 18u)]), vec4<i32>(global2.x, max(u_input.a.x, u_input.e.x), select(0i, u_input.a.x, arg_1.c), ~2147483647i));
    global0 = array<vec4<i32>, 18>();
    global2 = _wgslsmith_sub_vec3_i32(~_wgslsmith_mod_vec3_i32(var_0.yzz, -(~var_0.zxx)), -vec3<i32>(global2.x, ~4249i, u_input.e.x));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-1211f))))), 411f));
    var var_2 = ~_wgslsmith_add_vec3_u32(func_3(Struct_2(arg_1, u_input.c, !vec4<bool>(arg_1.c, arg_1.c, false, true)), 23291i, Struct_2(Struct_1(arg_1.a, arg_1.b, true, arg_1.a.x, u_input.c.x), vec4<u32>(4294967295u, u_input.c.x, u_input.b.x, u_input.b.x), select(vec4<bool>(arg_1.c, arg_1.c, false, true), vec4<bool>(arg_1.c, arg_1.c, arg_1.c, arg_1.c), false)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-311f, arg_1.d, 656f)))), vec3<u32>(1u, reverseBits(arg_0.x), arg_0.x) >> (~u_input.c.wwz % vec3<u32>(32u)));
    return Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1, var_1, var_1))) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1669f, -126f, arg_1.a.x)))))), ~min(select(6778u, 4455u, true), 7911u) << ((36847u << ((_wgslsmith_clamp_u32(38445u, 4294967295u, 1u) ^ u_input.c.x) % 32u)) % 32u));
}

fn func_4(arg_0: Struct_3) -> f32 {
    var var_0 = vec2<bool>(false, !(true || select(all(vec2<bool>(true, false)), -188f > arg_0.a.x, all(vec3<bool>(false, false, true)))));
    var var_1 = vec4<bool>(~_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(arg_0.b, 18u)], vec4<i32>(-2147483647i, global2.x, u_input.e.x, -2147483647i)), 44364i) > _wgslsmith_mod_i32(-global2.x, _wgslsmith_sub_i32(~u_input.d, ~global2.x)), !var_0.x, any(vec2<bool>(true, var_0.x)), true);
    var_0 = vec2<bool>(true, u_input.b.x >= u_input.b.x);
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(arg_0.a * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-304f, -1770f, arg_0.a.x))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.x, arg_0.a.x, arg_0.a.x) - vec3<f32>(-156f, -545f, arg_0.a.x))))), ~(~func_2(vec2<u32>(0u, u_input.b.x), Struct_1(vec4<f32>(arg_0.a.x, -301f, -831f, arg_0.a.x), 4294967295u, false, arg_0.a.x, arg_0.b)).b));
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(step(arg_0.a.x, arg_0.a.x)), _wgslsmith_f_op_f32(max(1096f, -1482f)), arg_0.a.x, _wgslsmith_f_op_f32(-var_2.a.x)))), 1u, true, func_2(~vec2<u32>(arg_0.b, u_input.b.x) & u_input.b.zy, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-381f, var_2.a.x, arg_0.a.x, var_2.a.x) * vec4<f32>(1338f, -576f, -375f, arg_0.a.x)), ~var_2.b, true, arg_0.a.x, var_2.b)).a.x, min(0u, u_input.b.x >> (1u % 32u))), vec4<u32>(~_wgslsmith_add_u32(~4294967295u, firstTrailingBit(u_input.b.x)), _wgslsmith_mod_u32(58368u, ~54623u), _wgslsmith_sub_u32(firstLeadingBit(arg_0.b), var_2.b), 639u), select(select(!select(vec4<bool>(true, var_0.x, var_1.x, var_1.x), vec4<bool>(true, false, true, true), vec4<bool>(true, true, var_1.x, var_0.x)), vec4<bool>(var_0.x, all(var_1.wz), true, var_0.x), !select(vec4<bool>(var_1.x, false, var_1.x, var_0.x), vec4<bool>(false, var_1.x, var_0.x, true), var_1.x)), select(!vec4<bool>(var_1.x, var_0.x, true, true), vec4<bool>(true, true, true, true), all(select(var_1.zx, var_1.wx, var_1.x))), true));
    return _wgslsmith_f_op_f32(-1074f - func_2(u_input.b.zy, Struct_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1107f, 462f, 384f, var_2.a.x))), 1u, var_3.c.x, -994f, ~4294967295u)).a.x);
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = ~((-1i ^ _wgslsmith_sub_i32(u_input.a.x, 1i)) & u_input.e.x) | -34679i;
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1456f, _wgslsmith_f_op_f32(f32(-1f) * -1044f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1289f)))));
    var_0 = 12812i;
    global1 = !(_wgslsmith_f_op_f32(-arg_0) > -655f);
    global2 = abs(~vec3<i32>(-11977i, -global2.x, (i32(-1i) * -26151i) << (~arg_1.b % 32u)));
    return arg_1;
}

fn func_1(arg_0: Struct_2, arg_1: vec2<bool>) -> Struct_1 {
    let var_0 = vec2<u32>(firstLeadingBit(_wgslsmith_dot_vec2_u32(~u_input.c.yw ^ ~arg_0.b.xy, ~arg_0.b.xw)), u_input.b.x);
    let var_1 = func_5(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-767f * _wgslsmith_f_op_f32(func_4(func_2(vec2<u32>(u_input.c.x, 30826u), Struct_1(vec4<f32>(arg_0.a.a.x, 848f, 932f, arg_0.a.d), arg_0.b.x, arg_0.a.c, arg_0.a.a.x, 1u))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.a.x - 567f)))))), Struct_1(arg_0.a.a, u_input.b.x, !all(!vec2<bool>(arg_1.x, true)), 1f, ~firstLeadingBit(arg_0.b.x)));
    var var_2 = -vec3<i32>(-2147483647i, u_input.e.x | -1i, ~(~_wgslsmith_div_i32(0i, 29669i)));
    var var_3 = u_input.c.wxx;
    let var_4 = var_1.a;
    return Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(arg_0.a.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.a.a))), 1u ^ firstTrailingBit(u_input.b.x), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.a.a.x)) * _wgslsmith_f_op_f32(min(660f, _wgslsmith_f_op_f32(var_4.x - var_4.x)))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_5(var_1.d, var_1).a.x - arg_0.a.d), _wgslsmith_f_op_f32(225f + _wgslsmith_f_op_f32(var_4.x + 1321f))))), u_input.c.x);
}

fn func_6(arg_0: bool, arg_1: i32, arg_2: Struct_2, arg_3: Struct_3) -> Struct_2 {
    let var_0 = !(~arg_1 <= (~u_input.a.x << (46128u % 32u)));
    global0 = array<vec4<i32>, 18>();
    let var_1 = vec3<i32>(select(_wgslsmith_div_i32(-1i, _wgslsmith_clamp_i32(0i, 6192i, 0i)) ^ 1584i, u_input.d, !(func_1(arg_2, vec2<bool>(arg_0, false)).e > arg_2.b.x)), -(~2147483647i), countOneBits(arg_1 >> (0u % 32u)));
    global1 = _wgslsmith_div_f32(arg_3.a.x, _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-1161f * arg_2.a.a.x))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.d) - arg_2.a.a.x);
    let var_2 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-arg_2.a.a.x), arg_2.a.a.x, arg_3.a.x), ~_wgslsmith_sub_u32(min(1u, arg_3.b ^ 14765u), ~u_input.c.x & firstTrailingBit(arg_3.b)));
    return Struct_2(arg_2.a, vec4<u32>(23129u, func_2(func_3(Struct_2(Struct_1(vec4<f32>(arg_2.a.a.x, arg_2.a.a.x, arg_2.a.d, var_2.a.x), u_input.c.x, true, var_2.a.x, 4293u), vec4<u32>(var_2.b, 71613u, 0u, arg_2.a.e), arg_2.c), -1i, arg_2, var_2.a).xy, Struct_1(vec4<f32>(239f, arg_3.a.x, arg_3.a.x, arg_3.a.x), arg_3.b, arg_0, 662f, 4294967295u)).b ^ ~var_2.b, 0u, arg_3.b << (0u % 32u)), !vec4<bool>(true, arg_2.a.c, false, arg_2.a.c));
}

fn func_7(arg_0: Struct_2, arg_1: u32, arg_2: vec2<bool>) -> Struct_3 {
    var var_0 = -1143f;
    var var_1 = 1u;
    global1 = func_1(arg_0, !select(func_6(true, min(global2.x, 0i), arg_0, Struct_3(vec3<f32>(2283f, -318f, -424f), 4294967295u)).c.zz, arg_0.c.yw, arg_2.x)).c;
    var_1 = _wgslsmith_add_u32(_wgslsmith_mult_u32(arg_0.a.b, _wgslsmith_mult_u32(arg_1, ~(arg_1 >> (arg_0.b.x % 32u)))), 4294967295u);
    let var_2 = func_6(!(_wgslsmith_f_op_f32(f32(-1f) * -617f) > _wgslsmith_f_op_f32(step(1807f, -593f))), abs(global2.x), func_6(true, firstLeadingBit(u_input.a.x), Struct_2(Struct_1(arg_0.a.a, 38084u, all(arg_0.c.yxz), arg_0.a.d, arg_0.a.e), u_input.c, arg_0.c), func_2(abs(abs(arg_0.b.yx)), func_5(_wgslsmith_f_op_f32(-357f * 1285f), Struct_1(arg_0.a.a, 73272u, arg_0.c.x, -388f, arg_0.b.x)))), func_2(vec2<u32>(124530u, abs(u_input.b.x)), arg_0.a));
    return func_2(_wgslsmith_div_vec2_u32(firstTrailingBit(vec2<u32>(_wgslsmith_sub_u32(arg_1, arg_0.b.x), 31586u)), _wgslsmith_sub_vec2_u32(countOneBits(_wgslsmith_mod_vec2_u32(arg_0.b.yz, vec2<u32>(var_2.a.e, 24941u))), vec2<u32>(arg_0.b.x, 0u))), var_2.a);
}

fn func_8(arg_0: Struct_3) -> vec3<i32> {
    global2 = u_input.e;
    let var_0 = select(!vec2<bool>(_wgslsmith_f_op_f32(sign(-466f)) != -1502f, !all(vec2<bool>(false, true))), vec2<bool>(true, all(vec3<bool>(func_1(Struct_2(Struct_1(vec4<f32>(arg_0.a.x, -414f, arg_0.a.x, arg_0.a.x), arg_0.b, false, arg_0.a.x, 1u), u_input.c, vec4<bool>(true, false, true, true)), vec2<bool>(true, true)).c, true, true))), vec2<bool>(!(func_6(false, -2147483647i, Struct_2(Struct_1(vec4<f32>(1000f, -238f, -337f, -757f), arg_0.b, true, arg_0.a.x, arg_0.b), u_input.c, vec4<bool>(true, true, true, true)), arg_0).a.a.x == _wgslsmith_f_op_f32(-arg_0.a.x)), !(!func_5(1539f, Struct_1(vec4<f32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, -435f), u_input.c.x, false, arg_0.a.x, u_input.c.x)).c)));
    global2 = vec3<i32>(global2.x, -1i, u_input.e.x);
    let var_1 = 0i;
    global1 = var_0.x;
    return vec3<i32>(-32474i, _wgslsmith_mult_i32(min(-_wgslsmith_add_i32(global2.x, 8143i), _wgslsmith_mod_i32(var_1, global2.x) | -var_1), _wgslsmith_dot_vec4_i32((vec4<i32>(-44524i, 28163i, -34101i, global2.x) ^ vec4<i32>(-18947i, -2147483647i, -8556i, 29909i)) << (vec4<u32>(4294967295u, 1u, 5806u, arg_0.b) % vec4<u32>(32u)), vec4<i32>(u_input.d, 1i, var_1, _wgslsmith_div_i32(u_input.e.x, global2.x)))), -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_8(func_7(func_6(true | all(vec4<bool>(false, true, true, true)), _wgslsmith_dot_vec2_i32(min(vec2<i32>(global2.x, u_input.a.x), vec2<i32>(global2.x, global2.x)), vec2<i32>(u_input.e.x, global2.x)), Struct_2(func_1(Struct_2(Struct_1(vec4<f32>(-119f, 1511f, 1000f, 499f), 111243u, true, -813f, u_input.c.x), u_input.c, vec4<bool>(true, true, false, true)), vec2<bool>(false, false)), vec4<u32>(12112u, u_input.c.x, u_input.c.x, u_input.b.x) & u_input.c, vec4<bool>(false, false, false, true)), func_2(vec2<u32>(4294967295u, u_input.c.x), Struct_1(vec4<f32>(-1229f, 1000f, 933f, -1309f), u_input.c.x, false, 1000f, u_input.b.x))), 1u & select(~8683u, u_input.c.x, true), vec2<bool>(true, true || any(vec4<bool>(false, false, false, false)))));
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-889f, 506f, -1000f, 778f)))))), u_input.c.x << (_wgslsmith_sub_u32(u_input.b.x, 3284u) % 32u), true, _wgslsmith_f_op_f32(f32(-1f) * -1008f), func_1(Struct_2(Struct_1(vec4<f32>(1315f, 959f, 554f, -2167f), u_input.c.x, false, -908f, 6747u), u_input.c, vec4<bool>(true, true, true, true)), vec2<bool>(true, false)).b), _wgslsmith_sub_vec4_u32(~(u_input.c << (~u_input.c % vec4<u32>(32u))), _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.b.x), min(u_input.c, u_input.c)), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.b.x, u_input.c.x, 4294967295u, u_input.b.x), ~u_input.c))), vec4<bool>(_wgslsmith_add_u32(u_input.b.x & u_input.b.x, func_1(Struct_2(Struct_1(vec4<f32>(2022f, 401f, -316f, 1452f), u_input.b.x, false, -552f, u_input.b.x), u_input.c, vec4<bool>(false, false, true, false)), vec2<bool>(false, false)).e) > 27031u, true, true, true));
    let var_1 = u_input.a;
    let var_2 = func_6(var_0.a.c, firstLeadingBit(global2.x) << (u_input.b.x % 32u), Struct_2(var_0.a, vec4<u32>(u_input.c.x, u_input.b.x, ~0u, func_7(var_0, _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(4294967295u, 162u, u_input.b.x)), vec2<bool>(var_0.c.x, var_0.a.c)).b), var_0.c), func_2(max(vec2<u32>(~u_input.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(67604u, 9573u, var_0.b.x), u_input.b)), ~vec2<u32>(var_0.b.x, var_0.b.x) >> (~var_0.b.yw % vec2<u32>(32u))), var_0.a));
    var var_3 = var_2.c;
    var var_4 = var_0.a;
    var_4 = var_0.a;
    let var_5 = var_2;
    var var_6 = var_5.b.wxz;
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(16766i, -select(74468i, -3793i, false), u_input.a.x, _wgslsmith_div_i32(~var_1.x, _wgslsmith_mod_i32(u_input.e.x, u_input.a.x))), reverseBits(u_input.a), abs(global2.yy) & vec2<i32>(-66012i, -34591i), ~min(var_0.b.x, _wgslsmith_add_u32(abs(51023u), u_input.c.x)));
}

