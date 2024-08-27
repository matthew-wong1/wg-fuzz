struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec2<bool>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 13>;

var<private> global1: array<vec4<i32>, 23> = array<vec4<i32>, 23>(vec4<i32>(23207i, 13236i, -44690i, -1i), vec4<i32>(-19116i, 73048i, 29284i, -27174i), vec4<i32>(10693i, 18218i, -41721i, -1i), vec4<i32>(2147483647i, 53276i, 0i, 2147483647i), vec4<i32>(-13179i, 38102i, -1i, 2069i), vec4<i32>(i32(-2147483648), -65864i, 586i, 0i), vec4<i32>(6897i, -1i, 17003i, 1684i), vec4<i32>(-32206i, i32(-2147483648), 1i, -14549i), vec4<i32>(-31316i, -55093i, 66123i, i32(-2147483648)), vec4<i32>(-1i, -4544i, -587i, -1i), vec4<i32>(2147483647i, 1i, -10330i, 1i), vec4<i32>(-1i, 0i, -23302i, -11681i), vec4<i32>(2147483647i, -11627i, -41726i, i32(-2147483648)), vec4<i32>(-31803i, i32(-2147483648), 11276i, 1i), vec4<i32>(22116i, -38956i, -1i, 1i), vec4<i32>(54500i, -35515i, i32(-2147483648), 1i), vec4<i32>(12851i, -9203i, 10936i, -1i), vec4<i32>(-5644i, 0i, 22476i, 1i), vec4<i32>(2147483647i, 54262i, 6405i, 2147483647i), vec4<i32>(-18379i, i32(-2147483648), 0i, -14360i), vec4<i32>(12693i, -34313i, i32(-2147483648), 4185i), vec4<i32>(-1i, 16772i, 1i, -70432i), vec4<i32>(i32(-2147483648), 2147483647i, 12992i, 26148i));

var<private> global2: f32;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1() -> vec4<f32> {
    return vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -694f), -273f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(818f, 977f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1756f, 1015f), _wgslsmith_f_op_f32(-353f - _wgslsmith_f_op_f32(f32(-1f) * -226f))))));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: i32) -> vec2<i32> {
    global1 = array<vec4<i32>, 23>();
    var var_0 = arg_1;
    var var_1 = ~_wgslsmith_add_u32(~max(_wgslsmith_dot_vec4_u32(u_input.d, u_input.d), ~u_input.d.x), _wgslsmith_dot_vec3_u32(~(~u_input.d.xzy), vec3<u32>(u_input.d.x >> (19752u % 32u), select(60037u, u_input.d.x, true), u_input.d.x)));
    let var_2 = select(~u_input.d.x, u_input.d.x, _wgslsmith_dot_vec2_u32(u_input.d.zz, ~u_input.d.wy) != ~_wgslsmith_sub_u32(~u_input.d.x, 48026u));
    var_0 = arg_1;
    return var_0.c.yw;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: Struct_4) -> f32 {
    var var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1030f, arg_2.a.x, 1000f))))), arg_2.b, arg_2.c);
    var_0 = arg_2;
    global0 = array<vec2<f32>, 13>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.c.e.d.a.x), _wgslsmith_f_op_f32(abs(814f)), _wgslsmith_f_op_f32(-arg_0.x)));
    let var_2 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(arg_2.c.b.a, var_0.c.b.a))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2.c.c.a - _wgslsmith_f_op_vec4_f32(floor(var_0.c.b.a))), vec4<f32>(1283f, _wgslsmith_f_op_f32(arg_2.a.x * arg_0.x), -468f, var_0.a.x))), arg_1.x, vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(var_0.c.e.a.c.x, u_input.b)), func_3(arg_2.c.c.c.x, Struct_1(vec4<f32>(arg_2.a.x, arg_2.c.c.a.x, arg_0.x, var_1.x), true, vec4<i32>(1i, arg_2.c.d, -1i, 2147483647i)), 14741i)), _wgslsmith_clamp_vec2_i32(arg_2.c.c.c.wy, firstTrailingBit(vec2<i32>(-34938i, u_input.b)), _wgslsmith_mod_vec2_i32(arg_2.c.b.c.wx, vec2<i32>(40975i, arg_2.c.d)))), ~(arg_2.c.b.c.x >> ((var_0.c.e.e & 1u) % 32u)), arg_2.c.e.a.c.x, var_0.c.b.c.x));
    return -2654f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 13>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-1231f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(147f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1939f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-517f, -1661f), _wgslsmith_f_op_f32(661f * 1655f))) + _wgslsmith_f_op_f32(f32(-1f) * -944f))));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1138f));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1()) * vec4<f32>(-235f, _wgslsmith_div_f32(var_0.x, var_0.x), 1239f, 4204f)) + vec4<f32>(_wgslsmith_f_op_f32(-805f - _wgslsmith_f_op_f32(var_0.x + var_0.x)), _wgslsmith_f_op_f32(func_2(vec3<f32>(var_0.x, -423f, 1335f), vec4<bool>(true, true, true, true), Struct_4(var_0, vec4<bool>(true, true, true, false), Struct_3(vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x), Struct_1(vec4<f32>(var_0.x, 1555f, var_0.x, 816f), true, vec4<i32>(2147483647i, u_input.c, 55969i, 2147483647i)), Struct_1(vec4<f32>(var_0.x, var_0.x, 772f, var_0.x), false, vec4<i32>(-23191i, -1i, -11820i, u_input.b)), u_input.a, Struct_2(Struct_1(vec4<f32>(-1135f, -1511f, 1875f, var_0.x), true, global1[_wgslsmith_index_u32(u_input.d.x, 23u)]), vec4<f32>(569f, -693f, var_0.x, 1849f), vec2<bool>(false, true), Struct_1(vec4<f32>(1530f, var_0.x, -1000f, -1242f), false, vec4<i32>(u_input.c, u_input.c, u_input.c, 25365i)), u_input.d.x))))), var_0.x, var_0.x)), !all(vec4<bool>(false, true, true, select(false, true, false))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(47825u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, u_input.d.x), vec2<u32>(0u, u_input.d.x))), u_input.d.xy), 23u)]);
    let var_2 = Struct_1(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-387f, _wgslsmith_f_op_f32(-var_1.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_1()).x), -208f), var_1.b, firstTrailingBit(select(vec4<i32>(_wgslsmith_clamp_i32(0i, -4829i, -22902i), 18820i, u_input.c ^ 1i, 1i), ~global1[_wgslsmith_index_u32(u_input.d.x, 23u)], vec4<bool>(var_1.b, true | var_1.b, -6773i == u_input.b, any(vec3<bool>(var_1.b, true, false))))));
    let var_3 = Struct_2(var_2, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(var_1.a))), vec2<bool>(all(!select(vec3<bool>(var_2.b, true, true), vec3<bool>(false, var_2.b, var_2.b), vec3<bool>(false, var_1.b, var_2.b))), false), var_2, ~(_wgslsmith_clamp_u32(28921u, countOneBits(u_input.d.x), 69700u) | ~(~14766u)));
    let var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(select(~min(var_3.e, var_4.e), u_input.d.x, !var_2.b) << (_wgslsmith_mod_u32(~var_3.e, 47447u) % 32u), vec4<i32>(~var_1.c.x, firstLeadingBit(reverseBits(var_4.a.c.x)), abs(i32(-1i) * -2147483647i), ~u_input.a) << (u_input.d % vec4<u32>(32u)), firstLeadingBit(abs(select(vec4<i32>(var_2.c.x, var_4.a.c.x, var_1.c.x, -7854i), var_4.a.c, var_1.b))) & max(~(-var_3.a.c), var_3.a.c), _wgslsmith_f_op_f32(-var_2.a.x));
}

