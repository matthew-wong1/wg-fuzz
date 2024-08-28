struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
    c: Struct_1,
    d: u32,
    e: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: Struct_3,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec2<i32>, 30> = array<vec2<i32>, 30>(vec2<i32>(-28034i, i32(-2147483648)), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(0i, -1007i), vec2<i32>(0i, 16736i), vec2<i32>(0i, 1i), vec2<i32>(-9474i, 2147483647i), vec2<i32>(18141i, 6810i), vec2<i32>(-61729i, 1i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(-18021i, 13558i), vec2<i32>(30365i, 0i), vec2<i32>(1i, -5538i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-1i, 7266i), vec2<i32>(1i, -1i), vec2<i32>(0i, 2147483647i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -70033i), vec2<i32>(0i, 2147483647i), vec2<i32>(0i, 0i), vec2<i32>(-9806i, -5761i), vec2<i32>(-19223i, 2147483647i), vec2<i32>(14594i, -32227i), vec2<i32>(0i, -29568i), vec2<i32>(2147483647i, -1i), vec2<i32>(0i, 10300i), vec2<i32>(1431i, -1i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-10681i, -29522i));

var<private> global2: array<vec3<u32>, 18>;

var<private> global3: vec3<bool>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_5, arg_1: i32, arg_2: vec4<bool>) -> u32 {
    global0 = i32(-1i) * -1i;
    global0 = _wgslsmith_sub_i32(arg_1, ~min(-arg_1, -19715i & arg_1)) | _wgslsmith_mod_i32(-2147483647i, -2147483647i);
    global0 = firstTrailingBit(_wgslsmith_add_i32(-30929i, _wgslsmith_dot_vec3_i32(min(vec3<i32>(-9069i, -11238i, arg_1), vec3<i32>(40562i, arg_1, -1i)), vec3<i32>(arg_1, arg_1, arg_1))) << ((1u ^ ((u_input.b.x << (arg_0.b.a % 32u)) | arg_0.b.a)) % 32u));
    var var_0 = min(min(_wgslsmith_div_vec3_i32(vec3<i32>(10827i, arg_1, arg_1) & vec3<i32>(1i, 2147483647i, arg_1), vec3<i32>(arg_1, 2147483647i, 65607i)), -vec3<i32>(arg_1, -5915i, 1i)) >> (~vec3<u32>(~arg_0.b.a, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b.a, arg_0.b.a), u_input.c), ~39425u) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(-2147483647i, -2147483647i, -2147483647i)) & min(vec3<i32>(1i, -25414i, arg_1), vec3<i32>(arg_1, arg_1, arg_1)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-6768i, -24305i, -7283i), -vec3<i32>(arg_1, arg_1, 0i), vec3<i32>(arg_1, 4565i, 34182i)), _wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(arg_1, 0i, arg_1)), -vec3<i32>(-2147483647i, arg_1, arg_1))), _wgslsmith_div_vec3_i32(max(vec3<i32>(arg_1, arg_1, -1i), vec3<i32>(-6395i, 17674i, arg_1)) ^ select(vec3<i32>(1i, arg_1, arg_1), vec3<i32>(-12540i, -1349i, arg_1), true), _wgslsmith_mult_vec3_i32(vec3<i32>(-42624i, 0i, 1i), -vec3<i32>(23561i, -1i, arg_1)))));
    global3 = arg_0.c;
    return 33135u;
}

fn func_4(arg_0: vec2<i32>, arg_1: u32) -> i32 {
    global0 = ~(-(~(~arg_0.x) >> (1u % 32u)));
    let var_0 = ~firstTrailingBit(arg_0.x);
    let var_1 = Struct_4(Struct_1(_wgslsmith_sub_u32(27392u, 1763u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(305f, 1677f, -1143f, -569f) * vec4<f32>(-1275f, 224f, 269f, 121f))) - vec4<f32>(-990f, -1035f, _wgslsmith_f_op_f32(-971f * 671f), _wgslsmith_f_op_f32(f32(-1f) * -571f))), vec2<bool>(false, true && (true | global3.x))), 240f, Struct_3(vec3<bool>(max(-13661i, arg_0.x) < -7124i, true, all(!vec4<bool>(global3.x, false, global3.x, global3.x))), arg_1 >> (4294967295u % 32u), Struct_1(func_3(Struct_5(vec3<bool>(global3.x, false, global3.x), Struct_1(arg_1, vec4<f32>(-1120f, 1389f, 657f, 1508f), global3.yy), vec3<bool>(global3.x, global3.x, false)), -arg_0.x, select(vec4<bool>(global3.x, true, global3.x, true), vec4<bool>(true, false, false, global3.x), vec4<bool>(global3.x, false, global3.x, global3.x))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1708f), _wgslsmith_f_op_f32(trunc(-1254f)), _wgslsmith_f_op_f32(-727f - -972f), _wgslsmith_f_op_f32(step(-1237f, -1202f))), vec2<bool>(any(vec4<bool>(true, global3.x, true, false)), !global3.x)), _wgslsmith_mod_u32(firstTrailingBit(u_input.c.x), arg_1), -13795i));
    var var_2 = _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(u_input.d.zx, u_input.a.wz), _wgslsmith_mod_vec2_u32(u_input.c, abs(u_input.b.xz)) ^ vec2<u32>(51580u, var_1.c.b)), ~(~(firstLeadingBit(vec2<u32>(0u, u_input.d.x)) | _wgslsmith_add_vec2_u32(u_input.c, u_input.a.zy))), vec2<u32>(countOneBits(4294967295u), u_input.b.x ^ _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, u_input.a.x), u_input.a.yy), u_input.c)));
    var var_3 = _wgslsmith_f_op_f32(var_1.b * -1412f);
    return -2147483647i;
}

fn func_2(arg_0: f32, arg_1: vec2<bool>, arg_2: bool) -> vec3<bool> {
    let var_0 = func_4(~(~vec2<i32>(-21878i, -1i)), countOneBits(func_3(Struct_5(vec3<bool>(arg_1.x, arg_1.x, false), Struct_1(u_input.c.x, vec4<f32>(1041f, arg_0, -703f, arg_0), vec2<bool>(arg_1.x, arg_2)), vec3<bool>(true, true, arg_1.x)), -344i >> (0u % 32u), vec4<bool>(global3.x, arg_2, true, true)))) >= -_wgslsmith_mod_i32(_wgslsmith_mod_i32(-663i << (u_input.a.x % 32u), ~(-1i)), _wgslsmith_clamp_i32(-6701i, 1i, 0i));
    var var_1 = Struct_5(!(!vec3<bool>(global3.x, any(arg_1), false)), Struct_1(u_input.c.x, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(arg_0 - arg_0), _wgslsmith_f_op_f32(723f - -1003f), _wgslsmith_f_op_f32(f32(-1f) * -946f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(896f, -627f, arg_0, -1000f) + vec4<f32>(-332f, arg_0, -1193f, arg_0))), !global3.zy), !(!vec3<bool>(true, true, all(vec3<bool>(arg_1.x, arg_1.x, false)))));
    let var_2 = global1[_wgslsmith_index_u32(var_1.b.a, 30u)];
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.b.b.x)) - 1f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, -3210f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.b.x + -835f))), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.b.b.x)))))));
    var var_4 = select(!select(!vec4<bool>(arg_1.x, arg_2, true, global3.x), vec4<bool>(!var_1.a.x, all(vec3<bool>(var_1.a.x, true, false)), var_0, false), (var_2.x & -2147483647i) < _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.x, var_2.x), global1[_wgslsmith_index_u32(u_input.b.x, 30u)])), vec4<bool>(arg_1.x, arg_1.x, var_0, all(select(global3.zx, global3.xz, vec2<bool>(var_1.c.x, true))) | any(vec2<bool>(arg_2, arg_1.x))), !vec4<bool>(92280u <= ~var_1.b.a, -119f < var_1.b.b.x, arg_2, true));
    return !vec3<bool>(true, true, all(select(!vec3<bool>(false, var_1.c.x, true), select(var_1.a, var_1.c, var_4.x), arg_2 & true)));
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: u32, arg_3: u32) -> vec4<u32> {
    var var_0 = Struct_5(select(select(!vec3<bool>(true, arg_1, global3.x), select(select(vec3<bool>(global3.x, false, arg_1), vec3<bool>(true, false, global3.x), vec3<bool>(arg_1, arg_1, true)), select(vec3<bool>(global3.x, arg_1, arg_1), vec3<bool>(arg_1, true, false), vec3<bool>(true, arg_1, false)), global3.x || false), func_2(arg_0, global3.zy, !global3.x)), !select(select(vec3<bool>(arg_1, false, global3.x), vec3<bool>(arg_1, false, arg_1), false), func_2(arg_0, vec2<bool>(false, true), true), vec3<bool>(false, global3.x, global3.x)), vec3<bool>(true, global3.x, all(global3.yy))), Struct_1(_wgslsmith_dot_vec3_u32(firstLeadingBit(u_input.a.zyz), vec3<u32>(7579u ^ arg_2, ~arg_3, 4842u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0, arg_0, 538f, -705f), vec4<f32>(-1055f, 894f, arg_0, arg_0))) * vec4<f32>(arg_0, 1356f, arg_0, 1215f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1831f, -175f, 1338f, -440f), vec4<f32>(-1025f, 1000f, arg_0, arg_0))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -2576f, -351f, 326f) - vec4<f32>(arg_0, arg_0, 593f, arg_0)))), vec2<bool>(all(vec2<bool>(global3.x, arg_1)), global3.x)), func_2(arg_0, select(global3.yz, !(!global3.zz), any(vec4<bool>(true, global3.x, true, true))), global3.x));
    var_0 = Struct_5(func_2(_wgslsmith_f_op_f32(arg_0 + 453f), select(select(var_0.a.yz, vec2<bool>(var_0.b.c.x, var_0.b.c.x), vec2<bool>(true, true)), var_0.b.c, true), true), var_0.b, vec3<bool>(!(558f == _wgslsmith_f_op_f32(var_0.b.b.x - -230f)), func_2(1000f, func_2(138f, select(vec2<bool>(global3.x, false), vec2<bool>(false, true), var_0.a.yz), !global3.x).zy, select(true, true, true)).x, select(!all(vec4<bool>(false, var_0.c.x, arg_1, global3.x)), var_0.a.x, -1650f >= arg_0)));
    global1 = array<vec2<i32>, 30>();
    let var_1 = Struct_2(true, Struct_1(~(~firstLeadingBit(30990u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0 - 1153f), arg_0, _wgslsmith_f_op_f32(min(var_0.b.b.x, -336f)), _wgslsmith_f_op_f32(-836f + arg_0))), var_0.c.yx));
    var_0 = Struct_5(vec3<bool>(true, true, true), var_0.b, vec3<bool>(global3.x, global3.x | global3.x, arg_1));
    return ~u_input.b >> (~u_input.d % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(!(!(!(!vec3<bool>(global3.x, true, false)))));
    let var_1 = ~_wgslsmith_sub_vec4_u32(~u_input.d, func_1(_wgslsmith_f_op_f32(f32(-1f) * -141f), !var_0, u_input.a.x, _wgslsmith_clamp_u32(u_input.b.x, countOneBits(125397u), u_input.b.x | u_input.a.x)));
    let var_2 = Struct_2(false, Struct_1(var_1.x, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(sign(-1705f)), -339f, -984f, -500f))), global3.zy));
    global1 = array<vec2<i32>, 30>();
    global0 = min(_wgslsmith_dot_vec2_i32(select(global1[_wgslsmith_index_u32(~(var_2.b.a << (0u % 32u)), 30u)], min(abs(global1[_wgslsmith_index_u32(35290u, 30u)]), ~vec2<i32>(41135i, -2147483647i)), any(vec4<bool>(false, false, false, true))), firstLeadingBit(vec2<i32>(~(-23616i), -19218i))), -1i << ((var_2.b.a >> (var_1.x % 32u)) % 32u));
    let var_3 = var_2.b.a;
    var var_4 = 1i;
    var_4 = _wgslsmith_dot_vec4_i32(-(select(~vec4<i32>(0i, 0i, 13352i, -1i), _wgslsmith_mod_vec4_i32(vec4<i32>(3689i, -1i, -13920i, 1i), vec4<i32>(36180i, -1i, 27573i, 1286i)), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), var_2.b.c.x)) & vec4<i32>(-15454i, _wgslsmith_mult_i32(73094i, -4813i), -16190i, i32(-1i) * -2147483647i)), _wgslsmith_sub_vec4_i32(-(~countOneBits(vec4<i32>(22388i, 0i, -55193i, 2147483647i))), firstLeadingBit(vec4<i32>(-1i, 1i << (1u % 32u), -29040i, i32(-1i) * -34901i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_2.b.b.zz + vec2<f32>(_wgslsmith_f_op_f32(var_2.b.b.x * var_2.b.b.x), 225f)), _wgslsmith_f_op_vec2_f32(-var_2.b.b.xw), -(0i << (var_3 % 32u)) < countOneBits(-23829i))), max(-(~2147483647i), ~1i), ~_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(global1[_wgslsmith_index_u32(var_2.b.a, 30u)], global1[_wgslsmith_index_u32(var_3, 30u)] >> (vec2<u32>(11993u, var_2.b.a) % vec2<u32>(32u))), max(select(vec2<i32>(-1i, 40968i), vec2<i32>(1i, -2147483647i), true), countOneBits(vec2<i32>(-5634i, -2147483647i)))), ~27518i, vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(var_2.b.b.x)), _wgslsmith_f_op_f32(-883f * -247f))))));
}

