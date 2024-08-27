struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<bool>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec4<bool>,
    b: f32,
    c: vec2<bool>,
    d: f32,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<bool>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1000f;

var<private> global1: array<vec3<f32>, 16> = array<vec3<f32>, 16>(vec3<f32>(-806f, -1727f, -1211f), vec3<f32>(1276f, 1454f, -1000f), vec3<f32>(-1083f, 110f, -1313f), vec3<f32>(-1387f, 1462f, -594f), vec3<f32>(525f, -1612f, -877f), vec3<f32>(225f, 1297f, 1881f), vec3<f32>(426f, 1031f, 240f), vec3<f32>(-1000f, 429f, 609f), vec3<f32>(-675f, 259f, -397f), vec3<f32>(-1000f, -285f, -2997f), vec3<f32>(-165f, 1579f, 870f), vec3<f32>(1755f, 570f, -1000f), vec3<f32>(325f, 168f, 1000f), vec3<f32>(-1885f, 900f, -2460f), vec3<f32>(1093f, 124f, 1727f), vec3<f32>(437f, 418f, 1888f));

var<private> global2: array<vec2<u32>, 17>;

var<private> global3: f32;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: vec4<bool>) -> u32 {
    let var_0 = _wgslsmith_clamp_vec2_i32(u_input.b, abs(abs(u_input.b)), min(vec2<i32>(u_input.a, 7240i) ^ vec2<i32>(-22618i, u_input.a), vec2<i32>(-36490i, 32858i)) | vec2<i32>(firstTrailingBit(u_input.a), _wgslsmith_mod_i32(2147483647i, 39244i))) & (u_input.b >> (_wgslsmith_mult_vec2_u32(~vec2<u32>(93450u, 1u), ~_wgslsmith_mod_vec2_u32(vec2<u32>(16692u, 1u), global2[_wgslsmith_index_u32(0u, 17u)])) % vec2<u32>(32u)));
    return 1u;
}

fn func_2(arg_0: vec4<f32>) -> vec4<bool> {
    let var_0 = _wgslsmith_div_vec2_f32(arg_0.wz, _wgslsmith_f_op_vec2_f32(-arg_0.wz));
    var var_1 = _wgslsmith_f_op_vec3_f32(arg_0.wzz + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.x, arg_0.x, arg_0.x))))), arg_0.zxw, !select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)))));
    global0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(445f + var_1.x)), _wgslsmith_div_f32(537f, _wgslsmith_f_op_f32(arg_0.x - -1098f)))) - _wgslsmith_f_op_f32(-262f + var_0.x))));
    var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, func_3(vec3<bool>(false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false)), 0u) | 1u, 16u)])));
    return !vec4<bool>(true, true, any(vec3<bool>(12586i < u_input.b.x, true, true)), any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: f32) -> Struct_3 {
    var var_0 = vec4<f32>(arg_1.x, arg_2, _wgslsmith_f_op_f32(sign(-568f)), 399f);
    let var_1 = global2[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(1u, 1u, 45787u, 36019u)), ~select(vec4<u32>(0u, 4294967295u, 1u, 0u), vec4<u32>(1u, 4294967295u, 1u, 11351u), true)), select(16305u, reverseBits(1u) | _wgslsmith_dot_vec3_u32(vec3<u32>(37121u, 0u, 62084u), vec3<u32>(81439u, 0u, 15888u)), true))), 17u)];
    var var_2 = ~vec3<i32>(-22658i, -22881i, firstTrailingBit(_wgslsmith_mod_i32(-16376i, u_input.b.x)));
    let var_3 = Struct_4(!select(func_2(vec4<f32>(2358f, var_0.x, -565f, -1342f)), vec4<bool>(true, true, true, var_1.x >= 51676u), false), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x))), select(vec2<bool>(true, true), func_2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(2066f, 168f, -1000f, 168f) - vec4<f32>(-1147f, var_0.x, var_0.x, arg_0.x))))).wx, false), _wgslsmith_f_op_f32(-arg_1.x));
    let var_4 = Struct_5(Struct_2(!(!(!var_3.c)), Struct_1(-1764f, var_1.x, !var_3.a.xx, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-391f, arg_2, arg_2) - vec3<f32>(arg_2, var_0.x, -1093f)))), Struct_1(_wgslsmith_f_op_f32(var_3.b + var_3.b), 46670u, select(var_3.a.zw, select(vec2<bool>(false, var_3.c.x), vec2<bool>(true, true), vec2<bool>(var_3.c.x, false)), !var_3.c.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1), arg_1)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), (var_1.x << (var_1.x % 32u)) & _wgslsmith_mult_u32(var_1.x, 1u), var_3.c, _wgslsmith_f_op_vec3_f32(min(arg_1, vec3<f32>(1141f, var_3.d, var_3.b))))), vec2<bool>(true, var_3.a.x), select(~(abs(vec3<i32>(var_2.x, -17751i, 12398i)) & _wgslsmith_clamp_vec3_i32(vec3<i32>(-31858i, 2147483647i, 2147483647i), vec3<i32>(-2147483647i, u_input.a, -22733i), vec3<i32>(u_input.a, u_input.b.x, 0i))), vec3<i32>(~var_2.x, _wgslsmith_clamp_i32(u_input.b.x, 0i, 48239i), -4339i) ^ -abs(vec3<i32>(u_input.a, -19450i, var_2.x)), var_3.a.x));
    return Struct_3(var_3.a.x);
}

fn func_4(arg_0: Struct_3, arg_1: vec4<f32>) -> Struct_5 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-828f, 290f))) + arg_1.x) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x));
    global0 = -426f;
    var_0 = true;
    global3 = arg_1.x;
    let var_1 = max(~(~76643u), firstLeadingBit(35594u) & func_3(!(!vec3<bool>(false, arg_0.a, arg_0.a)), func_2(_wgslsmith_f_op_vec4_f32(arg_1 * arg_1)), vec4<bool>(func_1(global1[_wgslsmith_index_u32(4721u, 16u)], arg_1.wzz, arg_1.x).a, select(arg_0.a, arg_0.a, true), true, arg_0.a)));
    return Struct_5(Struct_2(vec2<bool>(all(func_2(arg_1)), true), Struct_1(_wgslsmith_f_op_f32(552f - _wgslsmith_f_op_f32(-arg_1.x)), abs(1u), vec2<bool>(arg_0.a, any(vec3<bool>(arg_0.a, false, arg_0.a))), _wgslsmith_f_op_vec3_f32(-arg_1.ywy)), Struct_1(arg_1.x, 533u, select(func_2(arg_1).zy, func_2(vec4<f32>(-264f, arg_1.x, arg_1.x, arg_1.x)).xx, vec2<bool>(false, false)), vec3<f32>(_wgslsmith_f_op_f32(round(arg_1.x)), _wgslsmith_div_f32(arg_1.x, -162f), -205f)), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x - arg_1.x), _wgslsmith_f_op_f32(abs(arg_1.x))), 47170u, select(func_2(arg_1).wx, select(vec2<bool>(false, false), vec2<bool>(true, arg_0.a), false), !vec2<bool>(arg_0.a, arg_0.a)), _wgslsmith_div_vec3_f32(global1[_wgslsmith_index_u32(var_1, 16u)], arg_1.xwy))), select(vec2<bool>(false, true), select(vec2<bool>(true, all(vec2<bool>(false, false))), select(vec2<bool>(true, false), vec2<bool>(false, false), !arg_0.a), !func_2(arg_1).zy), func_1(global1[_wgslsmith_index_u32(var_1, 16u)], _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(-351f, 1428f, arg_1.x), vec3<f32>(-2235f, arg_1.x, arg_1.x)))), _wgslsmith_f_op_f32(f32(-1f) * -487f)).a), vec3<i32>(-1i) * -countOneBits(-vec3<i32>(u_input.a, u_input.a, 2147483647i)));
}

fn func_5(arg_0: Struct_5) -> vec3<f32> {
    let var_0 = vec3<u32>(max(0u, 103558u & arg_0.a.b.b), arg_0.a.d.b ^ _wgslsmith_sub_u32(arg_0.a.c.b << (4056u % 32u), arg_0.a.d.b), ~arg_0.a.c.b);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1650f, arg_0.a.c.d.x)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.a.c.a), _wgslsmith_f_op_f32(1015f + arg_0.a.b.a), true)) - -161f)) == 143f;
    global0 = arg_0.a.b.a;
    var var_2 = select(true, var_1, true);
    var var_3 = select(~countOneBits(~vec3<i32>(41005i, arg_0.c.x, 1i)), _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(arg_0.c.x, u_input.a), arg_0.c.x, _wgslsmith_clamp_i32(0i, u_input.b.x, arg_0.c.x)), _wgslsmith_sub_vec3_i32(arg_0.c << (var_0 % vec3<u32>(32u)), arg_0.c)), vec3<bool>(true != !var_1, any(select(vec4<bool>(false, true, var_1, true), vec4<bool>(arg_0.a.c.c.x, arg_0.a.a.x, false, arg_0.b.x), vec4<bool>(var_1, arg_0.b.x, false, false))), true)) | -select(vec3<i32>(-27354i, _wgslsmith_sub_i32(-18753i, 1i), firstTrailingBit(-5266i)), arg_0.c, select(!vec3<bool>(var_1, arg_0.a.d.c.x, true), select(vec3<bool>(var_1, var_1, false), vec3<bool>(true, true, arg_0.b.x), vec3<bool>(arg_0.b.x, true, var_1)), select(vec3<bool>(true, arg_0.b.x, arg_0.a.b.c.x), vec3<bool>(arg_0.b.x, false, true), true)));
    return global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(56307u, var_0.x), vec2<u32>(arg_0.a.d.b, 33791u)), arg_0.a.b.b ^ 16199u, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(var_0, vec3<u32>(var_0.x, 25209u, 40127u)), ~var_0)), abs(_wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, 1u, var_0.x), reverseBits(var_0), _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, arg_0.a.c.b, 0u), vec3<u32>(4294967295u, 0u, 23246u)))))), 16u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-603f, 18751u, vec2<bool>(false, reverseBits(1u) < (abs(1u) << (firstTrailingBit(1u) % 32u))), _wgslsmith_f_op_vec3_f32(func_5(func_4(func_1(global1[_wgslsmith_index_u32(33494u, 16u)], vec3<f32>(1446f, 1424f, 728f), _wgslsmith_f_op_f32(680f * -114f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-427f, -1000f, -1937f, -1000f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1092f, -818f, 638f, 340f) + vec4<f32>(-216f, -1293f, 1259f, -795f)))))));
    var var_1 = Struct_4(vec4<bool>(all(!vec2<bool>(var_0.c.x, false)), select(any(!vec3<bool>(var_0.c.x, var_0.c.x, var_0.c.x)), !var_0.c.x, var_0.c.x), !var_0.c.x, ~var_0.b < abs(func_3(vec3<bool>(true, var_0.c.x, var_0.c.x), vec4<bool>(var_0.c.x, false, true, false), vec4<bool>(true, var_0.c.x, var_0.c.x, true)))), _wgslsmith_f_op_f32(step(269f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - var_0.a))))), vec2<bool>(!var_0.c.x, !all(func_2(vec4<f32>(369f, -1000f, var_0.d.x, 218f)).yzx)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -655f), func_4(func_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(248f, var_0.d.x, -956f))), _wgslsmith_f_op_vec3_f32(select(global1[_wgslsmith_index_u32(39422u, 16u)], vec3<f32>(var_0.d.x, var_0.d.x, -1009f), var_0.c.x)), var_0.a), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1447f), -1510f, _wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(var_0.a - var_0.a))).a.b.a, true)));
    var_1 = Struct_4(!select(!(!var_1.a), var_1.a, u_input.a >= countOneBits(u_input.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_5(func_4(func_1(var_0.d, global1[_wgslsmith_index_u32(1u, 16u)], var_1.d), vec4<f32>(var_1.b, var_0.d.x, 876f, 1952f)))).x), var_1.c, -957f);
    let var_2 = (countOneBits(_wgslsmith_add_u32(~var_0.b, firstTrailingBit(var_0.b))) << (26917u % 32u)) & func_4(Struct_3(true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d, 468f, -109f, 418f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_1.b, var_1.b, var_0.d.x))))).a.d.b;
    let var_3 = func_4(func_1(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(var_0.b, 16u)] + var_0.d), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.b, var_0.a, 523f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d, 1261f, 568f)))), global1[_wgslsmith_index_u32(~(~32249u), 16u)], var_1.b), vec4<f32>(_wgslsmith_f_op_f32(-var_0.d.x), 667f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a - 1449f) * var_0.d.x)), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.d.x)) - _wgslsmith_f_op_f32(-145f + -793f))))).a.c;
    let var_4 = var_0.c;
    global1 = array<vec3<f32>, 16>();
    let var_5 = 18046u;
    var var_6 = var_3.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(~2147483647i, var_0.a, ~(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, 22251i), vec3<i32>(24572i, u_input.a, -50175i)), vec3<i32>(3348i, 2147483647i, 2147483647i)) >> ((select(vec3<u32>(32464u, 55092u, 44280u), vec3<u32>(43076u, var_0.b, var_3.b), false) & firstLeadingBit(vec3<u32>(69494u, var_3.b, 29138u))) % vec3<u32>(32u))));
}

