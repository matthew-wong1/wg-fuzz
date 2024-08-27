struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec4<bool>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
    c: bool,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32, arg_1: vec4<u32>) -> vec4<f32> {
    let var_0 = Struct_3(arg_0, vec3<u32>(_wgslsmith_dot_vec3_u32(~(vec3<u32>(u_input.a, arg_1.x, 36197u) & arg_1.xyx), vec3<u32>(~u_input.b.x, 12162u, 4294967295u & arg_1.x)), ~u_input.b.x | 0u, ~6496u), any(select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), false), !all(vec4<bool>(true, false, false, false)))), Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-310f, arg_0, 1363f, -155f), vec4<f32>(624f, arg_0, -1088f, 148f))), vec4<f32>(arg_0, arg_0, -598f, 1000f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0, arg_0, arg_0, arg_0))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false))))), abs(vec4<i32>(_wgslsmith_sub_i32(35577i, 1i), 27028i, i32(-1i) * -1i, 1i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(arg_0)), -915f, -1970f, _wgslsmith_f_op_f32(-arg_0)) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(508f, arg_0, 573f, arg_0))))), select(vec4<bool>(true, false, all(vec3<bool>(false, false, false)), any(vec2<bool>(true, false))), vec4<bool>(select(true, false, true), false, true, false), (1172f < arg_0) & true), vec2<u32>(reverseBits(u_input.a) ^ arg_1.x, _wgslsmith_dot_vec4_u32(firstTrailingBit(arg_1), ~vec4<u32>(u_input.a, 16512u, u_input.b.x, arg_1.x)))), Struct_2(_wgslsmith_clamp_vec2_u32(min(vec2<u32>(u_input.b.x, arg_1.x), vec2<u32>(u_input.a, u_input.a)) << (arg_1.yx % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 4294967295u), abs(vec2<u32>(u_input.a, u_input.a))), max(min(vec2<u32>(0u, arg_1.x), u_input.b.xy), vec2<u32>(arg_1.x, 29149u))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -273f, arg_0, 1017f) + vec4<f32>(arg_0, arg_0, 2311f, 465f)) - vec4<f32>(arg_0, arg_0, -2334f, -2065f)), ~vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0, -390f, 1695f, 1000f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0, -550f, arg_0, arg_0), vec4<f32>(-1002f, arg_0, 1558f, 903f))))), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), false), ~(arg_1.xz << (vec2<u32>(1063u, u_input.b.x) % vec2<u32>(32u)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1427f) - arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), -2775f)));
    return _wgslsmith_f_op_vec4_f32(min(var_0.d.c, _wgslsmith_f_op_vec4_f32(-var_0.d.c)));
}

fn func_2() -> Struct_4 {
    var var_0 = Struct_4(Struct_3(-615f, ~(~select(vec3<u32>(u_input.b.x, 0u, u_input.a), vec3<u32>(38221u, 4294967295u, 5003u), vec3<bool>(true, true, true))), true, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1386f, -1347f, 148f, 1060f))), vec4<i32>(~(-2664i), _wgslsmith_sub_i32(22343i, 52463i), 32220i << (u_input.b.x % 32u), -2147483647i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(1000f, vec4<u32>(6769u, 39700u, u_input.b.x, 63025u))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-164f, -1216f, -744f, 899f)))), vec4<bool>(false, false, false, true), vec2<u32>(~35835u, 1u)), Struct_2(vec2<u32>(u_input.a, select(u_input.b.x, 1u, false)), Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(939f, 871f, 101f, -200f))), ~vec4<i32>(-2147483647i, 39653i, 47153i, -2147483647i), vec4<f32>(1f, 1f, 1f, 1f), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true)), vec2<u32>(1u, 0u)), vec4<f32>(_wgslsmith_div_f32(-1299f, 1000f), _wgslsmith_div_f32(135f, 569f), 322f, 373f))), _wgslsmith_add_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(_wgslsmith_sub_i32(-40422i, ~0i), abs(_wgslsmith_add_i32(0i, -28134i)))));
    var_0 = Struct_4(var_0.a, -vec2<i32>(abs(46307i), firstTrailingBit(countOneBits(1i))));
    var_0 = Struct_4(var_0.a, vec2<i32>(-25355i, _wgslsmith_mod_i32(var_0.a.d.b.x, _wgslsmith_div_i32(1i, -var_0.b.x))));
    var_0 = Struct_4(Struct_3(813f, u_input.b << (_wgslsmith_mod_vec3_u32(u_input.b, var_0.a.b) % vec3<u32>(32u)), var_0.a.d.d.x, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(256f, -480f, 1263f, 366f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-771f, var_0.a.e.b.a.x, 910f, 1250f))), vec4<i32>(var_0.a.d.b.x, max(var_0.b.x, var_0.a.d.b.x), -21835i, _wgslsmith_mult_i32(-53402i, 14600i)), var_0.a.d.a, !vec4<bool>(true, var_0.a.d.d.x, var_0.a.e.b.d.x, false), var_0.a.d.e), var_0.a.e), vec2<i32>(35530i, select(var_0.b.x, var_0.b.x, !(false || var_0.a.d.d.x))));
    let var_1 = Struct_2(u_input.b.xz, var_0.a.e.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(var_0.a.d.c, var_0.a.e.c), _wgslsmith_div_vec4_f32(var_0.a.e.c, vec4<f32>(var_0.a.e.c.x, var_0.a.e.c.x, 493f, -277f))))) - var_0.a.e.b.c));
    return Struct_4(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-791f))), vec3<u32>(1u, _wgslsmith_dot_vec3_u32(~u_input.b, var_0.a.b << (u_input.b % vec3<u32>(32u))), var_1.a.x), var_1.b.d.x, Struct_1(_wgslsmith_f_op_vec4_f32(min(var_1.c, _wgslsmith_div_vec4_f32(vec4<f32>(655f, -672f, var_1.c.x, var_1.b.c.x), vec4<f32>(var_0.a.a, var_1.c.x, -334f, 181f)))), var_1.b.b, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(130f, 698f, 991f, var_1.c.x) + vec4<f32>(1889f, var_0.a.e.c.x, var_0.a.a, var_0.a.d.a.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.c.x, -1732f, var_0.a.d.c.x, var_1.c.x), var_1.c, true)), false)), !vec4<bool>(true, true, var_0.a.d.d.x, false), var_0.a.b.zy), var_1), -(~vec2<i32>(~(-32072i), firstLeadingBit(var_0.a.e.b.b.x))));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: u32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1415f);
    var var_1 = func_2();
    var var_2 = vec3<u32>(111212u, var_1.a.e.a.x, ~(~func_2().a.d.e.x));
    var_2 = ~_wgslsmith_mod_vec3_u32(min(~(~vec3<u32>(arg_2, arg_2, 1u)), ~vec3<u32>(var_2.x, 1u, var_2.x) >> (~vec3<u32>(arg_2, var_1.a.e.a.x, arg_2) % vec3<u32>(32u))), var_1.a.b);
    var var_3 = var_1.a.d.c.x;
    return var_1.a;
}

fn func_4(arg_0: Struct_3, arg_1: u32) -> vec3<u32> {
    var var_0 = vec4<bool>(false, true, false, arg_0.d.d.x);
    var var_1 = !arg_0.d.d.x & func_2().a.c;
    var_1 = !((((3210u << (arg_1 % 32u)) <= 4294967295u) & arg_0.d.d.x) & var_0.x);
    var_1 = arg_0.d.d.x;
    let var_2 = Struct_4(Struct_3(-2536f, ~(~select(vec3<u32>(arg_1, 1u, arg_0.d.e.x), vec3<u32>(arg_0.e.b.e.x, 86267u, arg_1), vec3<bool>(true, true, arg_0.c))), (25435u >> (u_input.a % 32u)) >= (firstTrailingBit(arg_0.e.b.e.x) << (u_input.a % 32u)), arg_0.e.b, Struct_2(~(~vec2<u32>(u_input.a, 31484u)), arg_0.e.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1229f, 1000f, arg_0.d.a.x, -768f), arg_0.e.b.a) - vec4<f32>(-754f, 269f, 1000f, arg_0.e.b.c.x)))), arg_0.e.b.b.yw);
    return vec3<u32>(0u, 101849u, arg_1);
}

fn func_5(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_1) -> Struct_5 {
    var var_0 = reverseBits(vec3<i32>(45516i, arg_2.b.x, reverseBits(-arg_2.b.x)));
    let var_1 = Struct_4(func_1(_wgslsmith_mult_vec2_i32(-var_0.xz, var_0.xz), _wgslsmith_mod_vec3_i32(arg_2.b.wzw, min(~vec3<i32>(-23596i, arg_2.b.x, var_0.x), vec3<i32>(-2147483647i, var_0.x, 0i))), ~arg_2.e.x), firstTrailingBit(vec2<i32>(var_0.x, ~arg_2.b.x)) ^ vec2<i32>(arg_2.b.x >> (~1u % 32u), _wgslsmith_sub_i32(_wgslsmith_mult_i32(var_0.x, 30589i), var_0.x)));
    return Struct_5(arg_2, var_1.a.e.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(u_input.b & func_4(func_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(-18013i, -13977i), vec2<i32>(-2147483647i, 3113i), vec2<i32>(-2147483647i, 16866i)), countOneBits(vec3<i32>(-15082i, 8256i, -1i)), u_input.b.x), _wgslsmith_dot_vec4_u32(select(vec4<u32>(17614u, u_input.b.x, u_input.a, 0u), vec4<u32>(0u, 1u, 54498u, u_input.b.x), false), min(vec4<u32>(11789u, 1u, 0u, u_input.b.x), vec4<u32>(1u, 572u, u_input.b.x, 49881u)))), 1u, func_2().a.e.b);
    let var_1 = -_wgslsmith_add_vec2_i32(firstLeadingBit(var_0.b.b.zx), select(~var_0.a.b.yy, vec2<i32>(-19026i, var_0.b.b.x) | vec2<i32>(var_0.b.b.x, 0i), !var_0.a.d.yw)) ^ vec2<i32>(-var_0.a.b.x, max(select(1i, i32(-1i) * -2147483647i, var_0.b.d.x), -(~var_0.b.b.x)));
    let var_2 = vec3<u32>(~var_0.b.e.x, u_input.a | ~u_input.b.x, ~u_input.b.x);
    var var_3 = Struct_4(func_2().a, var_0.b.b.zx);
    let var_4 = func_1(~(~_wgslsmith_div_vec2_i32(-vec2<i32>(var_1.x, 12094i), ~vec2<i32>(var_3.b.x, var_3.b.x))), vec3<i32>(_wgslsmith_clamp_i32(firstTrailingBit(var_1.x), select(-39172i, ~var_1.x, var_0.b.d.x), var_0.b.b.x), min(~1i, var_0.a.b.x), 1i), 1u).d.d.zxw;
    let var_5 = var_0.b.c;
    let x = u_input.a;
    s_output = StorageBuffer(1824f, ~27448u, select(select((i32(-1i) * -28619i) ^ func_1(var_1, var_3.a.d.b.wxw, u_input.a).d.b.x, -12535i << (func_4(var_3.a, var_3.a.d.e.x).x % 32u), true), -29811i, !all(!var_4)));
}

