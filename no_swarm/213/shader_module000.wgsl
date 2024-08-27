struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(648f - _wgslsmith_f_op_f32(-572f - 927f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-143f + 1299f))) + vec2<f32>(1f, 1f)), !all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), select(false, false, false))), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, select(-5558i, u_input.a.x, true), u_input.a.x, 2147483647i) & vec4<i32>(u_input.c, -u_input.d.x, 19457i, -766i | u_input.a.x), vec4<i32>(2147483647i, -(u_input.a.x & -24092i), u_input.d.x, u_input.c)));
    var var_1 = vec4<i32>(_wgslsmith_dot_vec2_i32(firstLeadingBit(abs(vec2<i32>(var_0.c, 1i))), u_input.d.yy), (var_0.c | u_input.c) << (min(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(u_input.e, u_input.e)), u_input.b << (12239u % 32u)) % 32u), ~(-17957i), ~(-var_0.c)) ^ ~countOneBits(~_wgslsmith_div_vec4_i32(vec4<i32>(var_0.c, 1i, -60325i, u_input.d.x), u_input.d));
    let var_2 = min(vec2<i32>(-2147483647i, 48521i), ~vec2<i32>(_wgslsmith_dot_vec3_i32(var_1.yzz, _wgslsmith_add_vec3_i32(vec3<i32>(-726i, u_input.d.x, var_1.x), vec3<i32>(var_1.x, -2147483647i, var_1.x))), _wgslsmith_dot_vec3_i32(min(var_1.xzx, u_input.d.wzx), _wgslsmith_add_vec3_i32(var_1.zyx, var_1.yyz))));
    let var_3 = _wgslsmith_f_op_f32(min(-500f, var_0.a.x));
    var var_4 = var_0;
    return -1603f;
}

fn func_2(arg_0: vec3<f32>, arg_1: bool, arg_2: vec4<i32>, arg_3: bool) -> vec3<bool> {
    var var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-2025f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3()), arg_0.x)))), -460f), any(!vec3<bool>(all(vec4<bool>(arg_3, arg_1, arg_3, false)), arg_1, arg_1 & arg_3)), 1i);
    let var_1 = ~_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.c << (84639u % 32u), u_input.c), u_input.d.xy);
    var var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(var_0.a.x + var_0.a.x), _wgslsmith_f_op_f32(-235f + _wgslsmith_f_op_f32(round(var_0.a.x)))))));
    return !vec3<bool>(arg_1, select(any(select(vec2<bool>(arg_3, arg_1), vec2<bool>(true, false), arg_1)), all(select(vec3<bool>(false, arg_3, false), vec3<bool>(arg_1, var_0.b, true), vec3<bool>(arg_3, false, true))), arg_1), true);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(arg_1.a.x * 1010f) != 1365f;
    var var_1 = arg_1;
    var_1 = Struct_1(var_1.a, all(vec4<bool>(all(vec4<bool>(true, var_0, arg_0.x, false)), var_1.b, arg_1.b || var_0, var_1.c == 1i)) || var_0, _wgslsmith_add_i32(arg_1.c, select(i32(-1i) * -8386i, arg_2.x, var_1.b)));
    var_1 = arg_1;
    let var_2 = arg_1;
    return arg_1;
}

fn func_1(arg_0: bool) -> vec4<bool> {
    var var_0 = func_4(!func_2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-442f, 886f, 261f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1365f, 857f, -642f)))), arg_0, ~u_input.d, select(true, any(vec2<bool>(arg_0, arg_0)), all(vec2<bool>(false, true)))), Struct_1(vec2<f32>(_wgslsmith_div_f32(552f, 295f), 144f), any(select(!vec4<bool>(false, arg_0, true, arg_0), !vec4<bool>(true, arg_0, arg_0, true), select(vec4<bool>(false, arg_0, true, arg_0), vec4<bool>(false, true, true, arg_0), vec4<bool>(arg_0, arg_0, true, arg_0)))), u_input.c), -reverseBits(abs(~u_input.d.www)));
    var_0 = func_4(select(select(!(!vec3<bool>(var_0.b, false, arg_0)), vec3<bool>(select(var_0.b, false, false), all(vec3<bool>(arg_0, arg_0, false)), arg_0 | var_0.b), false), select(!vec3<bool>(var_0.b, true, var_0.b), !(!vec3<bool>(arg_0, false, false)), vec3<bool>(true, true, arg_0)), func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.a.x, -1121f, -860f), vec3<f32>(var_0.a.x, -129f, -461f), arg_0))), !all(vec4<bool>(arg_0, arg_0, arg_0, arg_0)), u_input.d, true)), Struct_1(var_0.a, var_0.b, var_0.c << ((~0u << (u_input.b % 32u)) % 32u)), vec3<i32>(2147483647i, ~firstTrailingBit(var_0.c), u_input.a.x));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a - var_0.a) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1492f, var_0.a.x) + var_0.a)), vec2<f32>(_wgslsmith_f_op_f32(var_0.a.x - var_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.a, vec2<f32>(-780f, var_0.a.x))), func_2(vec3<f32>(var_0.a.x, var_0.a.x, -490f), func_4(!vec3<bool>(var_0.b, arg_0, true), Struct_1(var_0.a, false, u_input.c), ~u_input.d.yxw).b, ~(-vec4<i32>(u_input.c, var_0.c, var_0.c, 1i)), !func_2(vec3<f32>(-536f, -1021f, var_0.a.x), true, vec4<i32>(u_input.c, 32555i, var_0.c, -14517i), true).x).xz)), !var_0.b, -select(2147483647i, _wgslsmith_dot_vec4_i32(select(vec4<i32>(24574i, 1i, 2123i, u_input.d.x), vec4<i32>(39552i, var_0.c, 6937i, u_input.c), false), abs(vec4<i32>(38017i, u_input.a.x, -1i, -52416i))), arg_0));
    var_0 = Struct_1(var_1.a, func_4(select(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, -547f, 188f)), var_0.b, firstLeadingBit(u_input.d), !var_0.b), !func_2(vec3<f32>(1000f, var_1.a.x, 198f), false, u_input.d, true), ~var_0.c == -2147483647i), func_4(select(select(vec3<bool>(var_1.b, var_1.b, true), vec3<bool>(var_1.b, arg_0, var_1.b), vec3<bool>(false, true, var_1.b)), vec3<bool>(true, var_1.b, var_0.b), !vec3<bool>(var_1.b, arg_0, var_0.b)), Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.a), arg_0, ~(-1i)), ~abs(u_input.d.yxw)), max(_wgslsmith_div_vec3_i32(~u_input.d.yxy, reverseBits(u_input.d.yzz)), -vec3<i32>(u_input.d.x, var_1.c, var_0.c))).b, var_1.c);
    var var_2 = u_input.d;
    return !select(select(!select(vec4<bool>(false, var_0.b, var_1.b, var_0.b), vec4<bool>(var_0.b, true, var_0.b, false), var_0.b), vec4<bool>(true, !var_0.b, var_0.c < var_0.c, true), true), select(select(!vec4<bool>(true, var_1.b, var_0.b, var_1.b), !vec4<bool>(arg_0, false, var_1.b, false), var_1.b), select(!vec4<bool>(arg_0, false, false, true), select(vec4<bool>(arg_0, arg_0, false, true), vec4<bool>(false, false, false, var_1.b), vec4<bool>(arg_0, var_1.b, false, var_0.b)), func_2(vec3<f32>(-603f, var_0.a.x, -781f), false, vec4<i32>(-26460i, -822i, var_0.c, -15805i), var_0.b).x), vec4<bool>(!arg_0, !var_0.b, all(vec2<bool>(true, var_0.b)), arg_0 & true)), !var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-483f, 180f) - vec2<f32>(276f, 2884f)))) * vec2<f32>(-778f, -1000f))), true, _wgslsmith_div_i32(2147483647i, _wgslsmith_add_i32(_wgslsmith_clamp_i32(-2147483647i, u_input.a.x, u_input.a.x), u_input.c)));
    let var_1 = vec4<u32>(0u, u_input.e ^ ~(~firstLeadingBit(19762u)), ~46759u, u_input.e);
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(select(var_0.a, var_0.a, !(!select(vec2<bool>(var_0.b, var_0.b), vec2<bool>(true, var_0.b), vec2<bool>(false, var_0.b))))), true, -15417i);
    let var_2 = select(vec4<bool>(true, var_0.b, !(var_0.c > -1i) != var_0.b, true), !func_1(!select(false, true, var_0.b)), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(var_0.c, 30270i, -2311i, -5439i)), _wgslsmith_add_i32(var_0.c, u_input.c), i32(-1i) * -2523i, -1i), vec4<i32>(-1i, u_input.d.x, 22369i, u_input.c) >> (var_1 % vec4<u32>(32u))) == -8834i);
    var var_3 = func_4(var_2.wwy, func_4(func_2(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-879f, var_0.a.x, 1000f), vec3<f32>(381f, var_0.a.x, -1039f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, var_0.a.x, 182f))), var_2.x, max(vec4<i32>(u_input.c, var_0.c, -2147483647i, 2147483647i) | u_input.d, vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, var_0.c)), var_2.x), func_4(var_2.wwz, func_4(var_2.wyw, Struct_1(vec2<f32>(1396f, var_0.a.x), true, var_0.c), -u_input.d.yzw), max(select(vec3<i32>(u_input.c, u_input.a.x, -1i), u_input.d.xzz, var_2.yxz), vec3<i32>(u_input.c, var_0.c, var_0.c))), u_input.d.xzw), -select(-vec3<i32>(71905i, -10719i, var_0.c), -max(vec3<i32>(-1i, -35463i, 59730i), vec3<i32>(5721i, 1i, -1i)), var_2.zyx));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(min(vec3<i32>(-12550i, -1i, u_input.c), vec3<i32>(var_0.c, 1i, var_0.c)), ~vec3<i32>(2147483647i, 13344i, -43535i)), -(var_3.c << (1u % 32u))), u_input.a), vec2<u32>(60717u, 62475u), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x) * vec3<f32>(var_3.a.x, var_3.a.x, 525f)) + vec3<f32>(var_3.a.x, var_3.a.x, 473f))))));
}

