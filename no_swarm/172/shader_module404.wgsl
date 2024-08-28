struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
    c: vec4<u32>,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>) -> bool {
    var var_0 = ~(0i | _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.x, 2147483647i, -669i, arg_0.x), vec4<i32>(2147483647i, -36184i, -17760i, -2147483647i)), vec4<i32>(0i, -arg_0.x, arg_0.x, 50222i)));
    var_0 = ~(-10243i);
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2308f, -326f, 1000f, -1354f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(2446f, -987f, 358f, -1934f))) - vec4<f32>(1168f, -1524f, -1233f, 530f)))));
    var_1 = Struct_1(vec4<f32>(-295f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.a.x)) + _wgslsmith_f_op_f32(-698f + _wgslsmith_f_op_f32(f32(-1f) * -128f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1704f - _wgslsmith_f_op_f32(-701f - 314f))), var_1.a.x));
    var_1 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(var_1.a, vec4<f32>(-743f, var_1.a.x, var_1.a.x, 643f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.a * vec4<f32>(642f, 1527f, var_1.a.x, var_1.a.x))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(var_1.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, var_1.a.x, -1000f, var_1.a.x) - vec4<f32>(-440f, -176f, 267f, -876f))))));
    return true;
}

fn func_4(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_1) -> vec4<f32> {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a.x, arg_2.a.x, 1000f) * arg_2.a.wwz))))), firstLeadingBit(_wgslsmith_div_u32(1u, 70746u)), max(_wgslsmith_add_vec4_u32((vec4<u32>(16460u, u_input.a, 1u, u_input.a) ^ vec4<u32>(5840u, u_input.a, u_input.a, 54354u)) << (min(vec4<u32>(u_input.a, u_input.b, u_input.a, u_input.a), vec4<u32>(40384u, 75076u, 36700u, 30277u)) % vec4<u32>(32u)), vec4<u32>(1u, u_input.b, u_input.a, _wgslsmith_div_u32(113816u, u_input.b))), vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(5438u, u_input.a), vec2<u32>(44911u, u_input.a)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 1u, 71642u, 8620u), ~vec4<u32>(0u, u_input.a, 1u, u_input.b)), _wgslsmith_sub_u32(u_input.a, _wgslsmith_mod_u32(77355u, u_input.b)), 1u)), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.x, 152f, arg_2.a.x, arg_2.a.x)))), Struct_1(arg_2.a));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.x)))));
    return vec4<f32>(_wgslsmith_f_op_f32(ceil(1f)), var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1498f, -254f))))), _wgslsmith_f_op_f32(ceil(-1235f)));
}

fn func_2() -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(514f, -373f, -140f, -758f)), vec4<f32>(1681f, -216f, -683f, 1172f), vec4<bool>(false, true, false, true))))) - _wgslsmith_f_op_vec4_f32(func_4(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), func_3(vec2<i32>(1i, -60633i) >> (vec2<u32>(u_input.a, 38560u) % vec2<u32>(32u))), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1510f, 1322f, -839f, -1983f) * vec4<f32>(1801f, -402f, -236f, 976f)))))));
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, -120f, 477f) * var_0.a.yxz), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.a.x, -694f, var_0.a.x), vec3<f32>(-590f, var_0.a.x, -1153f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a.wxz))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(632f, var_0.a.x, var_0.a.x), var_0.a.xww))))))), _wgslsmith_div_u32(select(u_input.a, 1u, true), firstTrailingBit(u_input.a)), vec4<u32>((u_input.a << (1u % 32u)) ^ 4294967295u, u_input.b, 14505u, ~1u), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_0.a, vec4<f32>(1000f, var_0.a.x, -1240f, var_0.a.x), vec4<bool>(false, true, false, false)))))), Struct_1(_wgslsmith_f_op_vec4_f32(trunc(var_0.a))));
    var_0 = var_1.d.a;
    let var_2 = var_1.d;
    var var_3 = !vec3<bool>(true, true, any(vec4<bool>(all(vec3<bool>(false, true, false)), true, true, true)));
    return var_0.a.x;
}

fn func_5(arg_0: vec2<f32>, arg_1: i32, arg_2: i32, arg_3: vec4<f32>) -> Struct_2 {
    let var_0 = select(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), select(true, true, false)), vec3<bool>(true, select(true, true, true), false)), vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * arg_0.x) - _wgslsmith_f_op_f32(max(arg_0.x, -1000f))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), select(true, true, true), false), !all(vec4<bool>(true, true, true, true)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(-arg_3.x))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(1184f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.x, -267f))))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(arg_3.x)))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -222f))) + 674f));
    var var_2 = true;
    return Struct_2(Struct_1(arg_3));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: i32) -> f32 {
    let var_0 = Struct_3(vec3<f32>(_wgslsmith_div_f32(-238f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(trunc(277f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -515f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(260f, 842f, false)), -886f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 1360f))))), 0u, firstLeadingBit(vec4<u32>(~54059u, ~u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(19837u, u_input.b), vec2<u32>(5085u, u_input.b)), u_input.a) ^ ~(vec4<u32>(32454u, u_input.a, u_input.a, u_input.a) >> (vec4<u32>(u_input.a, u_input.b, u_input.a, 0u) % vec4<u32>(32u)))), func_5(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -824f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + 1f)), _wgslsmith_mod_i32((-2147483647i << (u_input.a % 32u)) << (u_input.b % 32u), -2147483647i), arg_2, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(299f, -160f, -1263f, 260f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-751f, -790f, 1442f, -709f))))))), func_5(vec2<f32>(1f, 1f), -(arg_2 & -arg_2), arg_2, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-278f, 1408f, -421f, _wgslsmith_f_op_f32(-292f + -592f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1228f, -1558f, -552f, 195f)))))).a);
    let var_1 = !any(select(!(!vec2<bool>(false, arg_1)), !select(vec2<bool>(false, false), vec2<bool>(false, true), arg_0), 62019u == select(75589u, 4758u, arg_0)));
    var var_2 = _wgslsmith_dot_vec4_u32(var_0.c, var_0.c);
    var var_3 = u_input.b;
    var_2 = 24082u;
    return var_0.a.x;
}

fn func_6(arg_0: f32, arg_1: Struct_3, arg_2: bool) -> Struct_3 {
    let var_0 = ~vec2<u32>(33337u << ((_wgslsmith_mult_u32(u_input.b, u_input.b) & ~0u) % 32u), 47046u);
    let var_1 = select(select(!(!select(vec3<bool>(arg_2, false, true), vec3<bool>(true, false, arg_2), false)), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, arg_2), vec3<bool>(arg_2, arg_2, arg_2)), !vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(arg_2, arg_2, arg_2)), !select(vec3<bool>(false, true, true), select(vec3<bool>(true, true, true), vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(false, arg_2, arg_2)), arg_2)), !(!select(vec3<bool>(true, arg_2, true), vec3<bool>(true, true, true), true)), any(select(select(!vec2<bool>(arg_2, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(arg_2, arg_2), arg_2)), select(vec2<bool>(false, arg_2), !vec2<bool>(arg_2, arg_2), arg_2), select(vec2<bool>(arg_2, true), !vec2<bool>(arg_2, false), true))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-137f, _wgslsmith_f_op_f32(func_1(false, false, -60746i)))) * arg_0) + -530f));
    var var_3 = Struct_1(func_5(_wgslsmith_f_op_vec2_f32(-arg_1.d.a.a.yy), _wgslsmith_dot_vec3_i32(vec3<i32>(-22673i, -8289i, -1i), -vec3<i32>(-31782i, -16787i, 36647i)) ^ -(~0i), ~_wgslsmith_dot_vec2_i32(~vec2<i32>(0i, 40782i), min(vec2<i32>(16181i, -26261i), vec2<i32>(-1i, -15302i))), _wgslsmith_f_op_vec4_f32(-arg_1.d.a.a)).a.a);
    let var_4 = -1i >> ((min(firstLeadingBit(arg_1.c.x << (7679u % 32u)), var_0.x) & ~(~_wgslsmith_mult_u32(u_input.b, arg_1.c.x))) % 32u);
    return Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_3.a.yww)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(715f, arg_0, arg_1.a.x))))), var_0.x, select(arg_1.c, vec4<u32>(3205u, 1904u, min(64108u, u_input.a << (var_0.x % 32u)), 1u), vec4<bool>(!all(vec3<bool>(var_1.x, false, false)), func_3(_wgslsmith_add_vec2_i32(vec2<i32>(-45402i, var_4), vec2<i32>(0i, -2147483647i))), false, true)), func_5(vec2<f32>(var_3.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-212f)) * _wgslsmith_f_op_f32(-arg_1.e.a.x))), var_4 | 2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i << (1u % 32u), _wgslsmith_div_i32(-29284i, -13853i), var_4, min(var_4, 2147483647i)), vec4<i32>(_wgslsmith_clamp_i32(var_4, var_4, 10125i), ~var_4, _wgslsmith_div_i32(var_4, var_4), var_4)), arg_1.e.a), arg_1.d.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec4_i32(-(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 1i, 1i, -26461i), ~vec4<i32>(-427i, 2147483647i, -2147483647i, -32526i), min(vec4<i32>(1i, -1i, 3297i, -1i), vec4<i32>(47356i, -1i, 45375i, 1i))) | vec4<i32>(1i, 1i, 1i, 1i)), vec4<i32>(~(-firstLeadingBit(2147483647i)), _wgslsmith_sub_i32(-abs(-53093i), -27614i << (u_input.b % 32u)), ~_wgslsmith_mod_i32(0i, _wgslsmith_add_i32(24336i, 21539i)), ~_wgslsmith_mod_i32(firstLeadingBit(-1i), ~0i)));
    let var_1 = _wgslsmith_f_op_f32(sign(-704f));
    let var_2 = vec2<i32>(-2147483647i, 6794i);
    var var_3 = func_6(_wgslsmith_f_op_f32(func_1(false, all(vec3<bool>(true, true, all(vec3<bool>(false, false, true)))), var_2.x)), Struct_3(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(524f * var_1))), var_1, var_1), firstLeadingBit(u_input.b), _wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(13213u, 33239u, 22633u, 0u) | vec4<u32>(19368u, 0u, 1u, u_input.b)), min(select(vec4<u32>(83552u, 39277u, u_input.b, u_input.a), vec4<u32>(71709u, 1u, u_input.a, u_input.b), vec4<bool>(true, true, false, true)), countOneBits(vec4<u32>(u_input.b, u_input.b, u_input.a, u_input.a))), vec4<u32>(4294967295u, u_input.a, 1u, u_input.a) << (vec4<u32>(46751u, 1u, 26674u, 45661u) % vec4<u32>(32u))), Struct_2(func_5(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1, -640f))), 2147483647i, _wgslsmith_mod_i32(var_2.x, var_2.x), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-507f, var_1, var_1, 1558f)))).a), func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-378f, var_1), vec2<f32>(-654f, -114f))), var_2.x, _wgslsmith_sub_i32(-1i, _wgslsmith_mult_i32(var_2.x, var_2.x)), func_5(_wgslsmith_f_op_vec4_f32(func_4(vec4<bool>(true, false, false, true), false, Struct_1(vec4<f32>(729f, var_1, var_1, var_1)))).xx, reverseBits(var_2.x), _wgslsmith_dot_vec2_i32(var_2, vec2<i32>(var_2.x, 13407i)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-579f, var_1, 756f, var_1), vec4<f32>(var_1, var_1, var_1, var_1), vec4<bool>(false, true, false, true)))).a.a).a), _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(1u, 1u)), vec2<u32>(4294967295u, abs(u_input.a))) <= (u_input.b ^ ~(~65853u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(-1i, var_2.x), var_2.x, 670f);
}

