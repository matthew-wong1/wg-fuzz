struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: i32,
    d: vec4<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 24> = array<vec2<f32>, 24>(vec2<f32>(-196f, -1471f), vec2<f32>(-154f, 404f), vec2<f32>(-1613f, 263f), vec2<f32>(-1364f, -982f), vec2<f32>(-503f, -414f), vec2<f32>(534f, -458f), vec2<f32>(1248f, -281f), vec2<f32>(-1333f, 1780f), vec2<f32>(111f, -623f), vec2<f32>(-898f, -1575f), vec2<f32>(-404f, 456f), vec2<f32>(-1178f, 1204f), vec2<f32>(-125f, 1000f), vec2<f32>(165f, 322f), vec2<f32>(624f, 543f), vec2<f32>(713f, 556f), vec2<f32>(326f, -1039f), vec2<f32>(-2190f, -259f), vec2<f32>(-2293f, -2253f), vec2<f32>(108f, 358f), vec2<f32>(282f, 612f), vec2<f32>(845f, -1147f), vec2<f32>(245f, 1299f), vec2<f32>(2507f, 404f));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> u32 {
    return _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(countOneBits(firstTrailingBit(arg_2.c | vec2<u32>(arg_1.c.x, 61673u))), vec2<u32>(abs(1u), 1u) >> (abs(arg_1.c << (vec2<u32>(arg_2.c.x, arg_2.c.x) % vec2<u32>(32u))) % vec2<u32>(32u))), ~arg_2.c);
}

fn func_2() -> f32 {
    let var_0 = !(!((func_3(vec2<i32>(12450i, -1i), Struct_1(vec3<i32>(1i, -1i, 2147483647i), vec4<f32>(-1202f, -1107f, -611f, 151f), u_input.b), Struct_1(vec3<i32>(29343i, -49143i, -17847i), vec4<f32>(-1362f, -2693f, -1598f, 288f), vec2<u32>(49294u, 0u)), true) > (u_input.a | u_input.b.x)) && true));
    global0 = array<vec2<f32>, 24>();
    global0 = array<vec2<f32>, 24>();
    global0 = array<vec2<f32>, 24>();
    let var_1 = Struct_2(_wgslsmith_clamp_vec3_i32(min(min(vec3<i32>(-2147483647i, 74989i, -13343i), -vec3<i32>(2147483647i, 21267i, 8859i)), ~(-vec3<i32>(46035i, -27691i, -2147483647i))), vec3<i32>(reverseBits(_wgslsmith_mult_i32(55337i, -1i)), _wgslsmith_dot_vec3_i32(select(vec3<i32>(-1i, 2147483647i, 2147483647i), vec3<i32>(-47629i, -27378i, -1i), var_0), ~vec3<i32>(-7837i, 17832i, -1i)), abs(-1i)), vec3<i32>(0i, -1i, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-32277i, 18229i, 30779i), vec3<i32>(-2147483647i, -38525i, 2147483647i)), 2827i >> (u_input.a % 32u)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1644f * -1000f)), 1f) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1f - -747f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-608f))))))), firstLeadingBit(1u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-849f, 542f, 609f, -1110f), vec4<f32>(-1684f, 542f, -1000f, 1111f), var_0))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(748f, -1538f, -1120f, -1000f) * vec4<f32>(-1591f, 203f, -2264f, -1267f)))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1507f, -1407f, 2035f, 283f))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1740f, -428f, 620f, 1698f))))))));
    return var_1.d.x;
}

fn func_4(arg_0: vec3<u32>, arg_1: f32, arg_2: vec4<i32>, arg_3: u32) -> Struct_2 {
    var var_0 = Struct_1(~_wgslsmith_mult_vec3_i32(~_wgslsmith_add_vec3_i32(vec3<i32>(arg_2.x, arg_2.x, 0i), vec3<i32>(-2147483647i, -12177i, arg_2.x)), vec3<i32>(0i, -1i, -1i)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(396f, arg_1, arg_1, 420f)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-999f, 1286f, arg_1, -1000f) * vec4<f32>(arg_1, -103f, 714f, arg_1)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1, arg_1, 1293f, 977f))), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), false)))), vec4<f32>(-226f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -3014f)), -1000f, _wgslsmith_f_op_f32(step(arg_1, _wgslsmith_f_op_f32(ceil(362f))))))), arg_0.yx);
    var var_1 = _wgslsmith_mod_vec2_i32(vec2<i32>(var_0.a.x, select(arg_2.x, max(_wgslsmith_add_i32(-1i, 10903i), ~var_0.a.x), false)), abs(arg_2.zy));
    var var_2 = Struct_1(-vec3<i32>(~var_1.x, -55310i, -arg_2.x) ^ -arg_2.zxz, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(152f, -205f, var_0.b.x, 1359f) - var_0.b)), var_0.b, false))), arg_0.yz);
    var var_3 = Struct_1(-vec3<i32>(_wgslsmith_div_i32(var_1.x | 27478i, -arg_2.x), -abs(var_1.x), _wgslsmith_div_i32(-2147483647i, 1i)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(var_0.b))))), abs(var_2.c));
    global0 = array<vec2<f32>, 24>();
    return Struct_2(var_2.a, var_0.b.x, arg_3, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_0.b + var_2.b), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.b.x, var_0.b.x, var_3.b.x, 371f), vec4<f32>(-1218f, 136f, arg_1, -269f), vec4<bool>(false, false, true, true))), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), false))))));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, -26329i, max(-37783i, -17470i)) << (firstTrailingBit(~vec3<u32>(0u, 0u, 18010u)) % vec3<u32>(32u)), vec3<i32>(select(i32(-1i) * -2147483647i, 1i, false), -22331i, ~(-1i))), vec4<f32>(_wgslsmith_f_op_f32(round(1224f)), _wgslsmith_f_op_f32(abs(-3163f)), -1094f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-595f * -789f))))), ~u_input.b);
    var var_1 = var_0;
    let var_2 = -var_1.a;
    let var_3 = func_4(_wgslsmith_clamp_vec3_u32(vec3<u32>(select(~4294967295u, u_input.a, true), 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 2316u, u_input.c), firstLeadingBit(vec3<u32>(var_0.c.x, 0u, 85803u)))), countOneBits(vec3<u32>(firstLeadingBit(4294967295u), ~5125u, max(var_0.c.x, 4294967295u))), ~_wgslsmith_sub_vec3_u32(~vec3<u32>(51144u, u_input.c, var_1.c.x), min(vec3<u32>(9962u, var_0.c.x, 49530u), vec3<u32>(1u, 0u, 1u)))), _wgslsmith_f_op_f32(func_2()), select(select((vec4<i32>(1i, var_1.a.x, -2147483647i, -2147483647i) ^ vec4<i32>(25156i, 0i, var_1.a.x, 2147483647i)) & ~vec4<i32>(var_1.a.x, var_2.x, -1i, var_1.a.x), ~_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, -1i, 369i, var_0.a.x), vec4<i32>(var_0.a.x, 0i, 1i, 9774i)), vec4<bool>(true, true, true, all(vec3<bool>(false, false, true)))), (vec4<i32>(2147483647i, var_2.x, -36951i, 2147483647i) >> (select(vec4<u32>(139743u, var_0.c.x, u_input.b.x, var_1.c.x), vec4<u32>(var_1.c.x, 0u, 1u, var_0.c.x), false) % vec4<u32>(32u))) & reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.a.x, -22212i, 23448i, var_2.x), vec4<i32>(var_1.a.x, var_0.a.x, 46104i, var_2.x))), vec4<bool>(true, true, true, true)), reverseBits(u_input.a));
    var var_4 = var_0;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 24>();
    var var_0 = func_1();
    var var_1 = var_0.a;
    var_1 = var_0.a;
    global0 = array<vec2<f32>, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(~(~u_input.c), 24u)] - _wgslsmith_f_op_vec2_f32(func_4(vec3<u32>(var_0.c.x, var_0.c.x, 1u), var_0.b.x, vec4<i32>(var_1.x, -2147483647i, var_1.x, var_1.x), u_input.a).d.zw - _wgslsmith_f_op_vec2_f32(var_0.b.xw - vec2<f32>(var_0.b.x, var_0.b.x)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.b.yw + _wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(40201u, 24u)] + global0[_wgslsmith_index_u32(46415u, 24u)])) + vec2<f32>(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(632f * var_0.b.x)))), func_4(firstLeadingBit(_wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(6886u, var_0.c.x, 25298u)), vec3<u32>(23904u, var_0.c.x, 4294967295u) >> (vec3<u32>(u_input.a, 6701u, u_input.b.x) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.b.x, -1531f)) + _wgslsmith_f_op_f32(-var_0.b.x)) + _wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(round(238f)))), vec4<i32>(~var_0.a.x, -reverseBits(-1i), 31601i, var_1.x), _wgslsmith_mult_u32(var_0.c.x | firstTrailingBit(u_input.a), _wgslsmith_sub_u32(abs(4294967295u), ~u_input.c))).a.x, ~_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.x, var_0.a.x, var_1.x, var_1.x), -vec4<i32>(-6348i, 2147483647i, -2147483647i, var_1.x)), vec4<i32>(var_0.a.x, _wgslsmith_clamp_i32(-2147483647i, -51901i, 17526i), 1i, var_1.x)), vec4<i32>(_wgslsmith_sub_i32(var_0.a.x, (-1i & var_0.a.x) & (var_0.a.x ^ var_0.a.x)), ~(_wgslsmith_mult_i32(var_1.x, 2147483647i) >> (~u_input.b.x % 32u)), 1i, ~abs(~(-2147483647i))));
}

