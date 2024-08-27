struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: f32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_3) -> i32 {
    return -13934i;
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: Struct_2) -> f32 {
    var var_0 = arg_2;
    var_0 = Struct_2(_wgslsmith_div_i32(-(~2147483647i), countOneBits(min(firstLeadingBit(var_0.a), _wgslsmith_sub_i32(var_0.a, var_0.a)))), var_0.b, Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(arg_2.c.a))))))), arg_2.d);
    let var_1 = arg_1;
    var_0 = Struct_2(~(~(~1i)), false, Struct_1(var_0.c.a), !select(arg_2.d, var_0.d, false));
    let var_2 = -firstTrailingBit(~_wgslsmith_dot_vec2_i32(arg_1, vec2<i32>(var_0.a, 2147483647i))) << (u_input.c % 32u);
    return var_0.c.a.x;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: vec3<bool>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-364f, 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)), _wgslsmith_f_op_f32(func_3(vec4<u32>(4294967295u, ~17332u, 4294967295u, select(57705u, u_input.b.x, arg_2.x)), _wgslsmith_add_vec2_i32(abs(vec2<i32>(arg_0.x, -3866i)), arg_0.yy), Struct_2(countOneBits(1i), true, Struct_1(vec4<f32>(arg_1.a.x, 1000f, 1081f, 2046f)), !arg_2.xz)))), vec4<f32>(arg_1.a.x, arg_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(353f, -1726f))) * _wgslsmith_f_op_f32(949f * _wgslsmith_f_op_f32(-arg_1.a.x))), arg_1.a.x)));
    var var_1 = Struct_2(_wgslsmith_sub_i32(1i, -func_1(Struct_2(-40334i, false, Struct_1(vec4<f32>(889f, 901f, 413f, 504f)), vec2<bool>(arg_2.x, false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.x, -326f, 1901f) * vec3<f32>(var_0.x, var_0.x, arg_1.a.x)), Struct_3(-577f, vec4<i32>(arg_0.x, 1i, arg_0.x, arg_0.x), vec2<i32>(10691i, arg_0.x), -1293f))), arg_2.x, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, arg_1.a.x, -1000f, var_0.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-333f, -299f, 931f, -253f) + var_0)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1222f, -1000f, 1136f, 827f) + vec4<f32>(-1685f, var_0.x, var_0.x, 1004f)) + vec4<f32>(-1000f, 278f, var_0.x, arg_1.a.x)))), select(vec2<bool>(all(select(vec4<bool>(false, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, true), vec4<bool>(arg_2.x, true, false, arg_2.x))), any(select(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(false, arg_2.x, arg_2.x, arg_2.x), true))), !select(select(arg_2.zz, arg_2.xz, vec2<bool>(false, arg_2.x)), vec2<bool>(true, true), select(vec2<bool>(arg_2.x, true), arg_2.yz, arg_2.xz)), (u_input.c <= abs(u_input.b.x)) || ((false | arg_2.x) || any(arg_2))));
    var_1 = Struct_2(countOneBits(~arg_0.x), any(select(select(!vec2<bool>(arg_2.x, false), var_1.d, !var_1.d), vec2<bool>(arg_2.x, arg_2.x), all(arg_2.zz))), Struct_1(vec4<f32>(var_0.x, var_1.c.a.x, 672f, 100f)), var_1.d);
    var_1 = Struct_2(-4017i, false, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(692f, -1328f), 925f, var_0.x, _wgslsmith_f_op_f32(arg_1.a.x + 1015f)))), select(vec2<bool>(false, all(!vec4<bool>(var_1.b, var_1.d.x, false, arg_2.x))), select(var_1.d, select(var_1.d, !arg_2.xy, select(vec2<bool>(var_1.b, false), var_1.d, var_1.b)), true), var_1.b));
    var_1 = Struct_2(var_1.a, any(select(!vec3<bool>(var_1.d.x, false, true), vec3<bool>(true, arg_2.x, arg_1.b == 58333u), !var_1.d.x)), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1382f, arg_1.a.x, -1000f, var_1.c.a.x))), vec2<bool>(arg_0.x <= _wgslsmith_sub_i32(arg_0.x, var_1.a << (arg_1.b % 32u)), var_1.b));
    return _wgslsmith_div_i32(var_1.a, max(_wgslsmith_mod_i32(-_wgslsmith_dot_vec4_i32(arg_0, vec4<i32>(-6794i, 2147483647i, -73372i, -1i)), select(-37893i, ~1i, arg_2.x)), _wgslsmith_div_i32(arg_0.x, _wgslsmith_sub_i32(-2147483647i, arg_0.x)) | 22578i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_i32(53317i, -1i);
    let var_1 = _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(-(-vec4<i32>(0i, 67532i, var_0, var_0) >> (~vec4<u32>(5639u, 4294967295u, u_input.a, 1u) % vec4<u32>(32u))), vec4<i32>(0i, _wgslsmith_div_i32(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0, var_0, -1i), vec3<i32>(var_0, 33793i, var_0))), ~var_0, _wgslsmith_clamp_i32(~var_0, var_0, func_1(Struct_2(2147483647i, false, Struct_1(vec4<f32>(-351f, -1618f, -1240f, -388f)), vec2<bool>(true, false)), vec3<f32>(-2075f, -298f, 1269f), Struct_3(-655f, vec4<i32>(var_0, -1i, 0i, 53081i), vec2<i32>(0i, var_0), 153f))))), -vec4<i32>(_wgslsmith_add_i32(21630i, 0i), 38930i, func_2(vec4<i32>(var_0, -1i, var_0, -15741i), Struct_4(vec4<f32>(-556f, 220f, -458f, 1244f), u_input.b.x), vec3<bool>(true, true, true)), var_0 >> (u_input.a % 32u)) ^ _wgslsmith_div_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0, -1i, 73634i, var_0), vec4<i32>(var_0, -29164i, var_0, -2147483647i), vec4<i32>(var_0, var_0, var_0, -1i)), vec4<i32>(12725i, -34417i, _wgslsmith_mult_i32(1i, 45761i), 53317i)), countOneBits(vec4<i32>(var_0, select(var_0, ~var_0, true), i32(-1i) * -19423i, -7346i >> (_wgslsmith_dot_vec3_u32(u_input.b.zyx, u_input.b.yyx) % 32u))));
    let var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(186f - -763f), _wgslsmith_div_f32(1866f, 1335f), _wgslsmith_f_op_f32(-113f * -1406f), _wgslsmith_f_op_f32(f32(-1f) * -1391f))) + vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -207f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-982f)) * _wgslsmith_f_op_f32(round(-741f))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(462f, -109f))), 1000f)), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x);
}

