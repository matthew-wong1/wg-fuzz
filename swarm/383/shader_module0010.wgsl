struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<f32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-618f - arg_0.a), arg_2, 1040f, 1610f)));
    var var_1 = ~(~(~_wgslsmith_mod_u32(84131u, arg_1.b) << (1u % 32u)));
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-433f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-652f)), var_0.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.a)) + -552f)), arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(104f, var_0.x, arg_1.c))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, 1206f, 1651f, -782f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-198f, arg_1.a, 650f, arg_1.a), vec4<f32>(arg_1.a, arg_0.a, 1431f, 422f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, arg_1.a, arg_0.a, arg_1.a) * vec4<f32>(-217f, var_0.x, arg_1.a, arg_1.a))))));
    let var_2 = _wgslsmith_mod_vec4_i32(-vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(14794i, 1i, 0i), vec3<i32>(1i, 1i, 1i)), ~(~(-5125i)), -_wgslsmith_clamp_i32(2147483647i, 4351i, 54516i), reverseBits(1i)), -vec4<i32>(~(-2147483647i), _wgslsmith_mult_i32(i32(-1i) * -14271i, -15201i), ~(~2147483647i), _wgslsmith_mult_i32(1i, 2147483647i)));
    var_1 = reverseBits(arg_0.b);
    return firstTrailingBit(countOneBits(arg_0.b) << (4294967295u % 32u)) & 72410u;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_2) -> vec2<i32> {
    let var_0 = arg_3;
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-495f, -437f) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-941f, var_0.a), vec2<f32>(arg_3.a, 1699f))))))))));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(964f - -811f), _wgslsmith_f_op_f32(sign(arg_3.a))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1181f)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.a, 465f)), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.a, arg_3.a), vec2<f32>(183f, var_0.a)))) - vec2<f32>(_wgslsmith_f_op_f32(arg_3.a * 474f), arg_3.a))));
    var var_2 = select(!select(select(select(vec2<bool>(var_0.c, false), vec2<bool>(false, arg_3.c), vec2<bool>(arg_1.b, true)), !vec2<bool>(true, arg_1.b), true), select(select(vec2<bool>(true, true), vec2<bool>(arg_3.c, arg_1.b), var_0.c), !vec2<bool>(arg_1.b, arg_1.b), !arg_1.b), select(vec2<bool>(var_0.c, false), !vec2<bool>(true, arg_1.b), arg_3.c)), select(vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(true, arg_3.c, arg_1.b, arg_3.c)), arg_1.b), vec2<bool>(true, arg_3.b > _wgslsmith_mult_u32(var_0.b, u_input.a.x))), vec2<bool>(false, false));
    var var_3 = 1u;
    return -(~vec2<i32>(~_wgslsmith_sub_i32(arg_2, -11161i), -14713i));
}

fn func_5(arg_0: f32, arg_1: vec2<i32>) -> vec3<bool> {
    var var_0 = Struct_1(-_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.x, 1i, 2147483647i, -941i), vec4<i32>(arg_1.x, 2147483647i, arg_1.x, 17069i)), _wgslsmith_mult_vec4_i32(abs(vec4<i32>(19865i, arg_1.x, arg_1.x, arg_1.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.x, 26711i, -29018i, arg_1.x), vec4<i32>(-3937i, 1i, 44991i, 1183i), vec4<i32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x))), ~vec4<i32>(0i, 0i, arg_1.x, arg_1.x)), all(select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), any(vec2<bool>(false, true))), _wgslsmith_div_f32(arg_0, -525f) > arg_0)));
    var_0 = Struct_1(firstTrailingBit(-vec4<i32>(_wgslsmith_sub_i32(-4906i, var_0.a.x), _wgslsmith_sub_i32(-59337i, arg_1.x), _wgslsmith_div_i32(var_0.a.x, 20171i), -arg_1.x)), true | var_0.b);
    var var_1 = vec2<i32>(-36300i, -2147483647i);
    let var_2 = Struct_1(var_0.a, all(vec3<bool>(false, arg_0 < 125f, var_0.b)) || (1136f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))));
    var var_3 = Struct_2(arg_0, u_input.a.x, !(!(!any(vec3<bool>(var_0.b, false, true)))));
    return !(!select(select(select(vec3<bool>(true, var_3.c, true), vec3<bool>(var_2.b, var_0.b, var_2.b), var_2.b), select(vec3<bool>(var_0.b, var_2.b, var_3.c), vec3<bool>(var_2.b, var_0.b, var_3.c), vec3<bool>(var_0.b, true, var_2.b)), var_3.c), select(vec3<bool>(true, true, var_2.b), vec3<bool>(var_2.b, var_3.c, true), !vec3<bool>(var_3.c, false, var_0.b)), any(vec4<bool>(true, true, true, true))));
}

fn func_2(arg_0: u32) -> vec3<bool> {
    var var_0 = vec3<bool>((0u > (_wgslsmith_sub_u32(16012u, arg_0) | max(17478u, 0u))) || true, true, false);
    var_0 = !(!(!(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, var_0.x), vec3<bool>(false, var_0.x, var_0.x)))));
    var_0 = !func_5(140f, func_4(_wgslsmith_mod_vec3_i32(~vec3<i32>(-18704i, -2147483647i, 52594i), vec3<i32>(-2147483647i, 2147483647i, 62959i) >> (u_input.a % vec3<u32>(32u))), Struct_1(vec4<i32>(1i, 1i, 1i, 1i), 42399u <= arg_0), _wgslsmith_add_i32(1i, 63661i), Struct_2(_wgslsmith_f_op_f32(-2182f - 552f), func_3(Struct_2(1000f, u_input.a.x, var_0.x), Struct_2(655f, arg_0, var_0.x), -1548f), all(vec3<bool>(var_0.x, var_0.x, var_0.x)))));
    let var_1 = Struct_1(-vec4<i32>(~(-1i << (arg_0 % 32u)), -15627i, -func_4(vec3<i32>(1i, -12805i, -1i), Struct_1(vec4<i32>(55917i, 0i, 0i, -106849i), var_0.x), -30978i, Struct_2(1000f, u_input.a.x, var_0.x)).x, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 1i, 1i))), !(var_0.x | any(vec2<bool>(var_0.x, true))) && false);
    var var_2 = -1i;
    return !vec3<bool>(true, any(vec3<bool>(true, true, true)), var_1.a.x > reverseBits(25095i));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<i32>) -> vec3<bool> {
    let var_0 = vec2<bool>(any(func_2(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b, 67523u, 49679u, arg_0.b), vec4<u32>(7774u, arg_1.b, arg_0.b, arg_0.b))))), -(~_wgslsmith_sub_i32(arg_2.x, -38917i)) != -15471i);
    let var_1 = !(false != (arg_2.x == -arg_2.x));
    var var_2 = Struct_1(vec4<i32>(-arg_2.x, min(_wgslsmith_dot_vec4_i32(-arg_2, ~arg_2), i32(-1i) * -arg_2.x), arg_2.x, 9181i), !(!all(func_5(arg_1.a, arg_2.zz))));
    var var_3 = Struct_2(-923f, _wgslsmith_sub_u32(~_wgslsmith_div_u32(4294967295u, arg_0.b), u_input.a.x), any(select(vec3<bool>(select(true, var_1, var_1), true, all(vec3<bool>(false, var_2.b, arg_1.c))), func_2(19961u >> (arg_1.b % 32u)), !(!vec3<bool>(false, arg_0.c, true)))));
    var var_4 = vec2<i32>(~_wgslsmith_dot_vec2_i32(firstLeadingBit(var_2.a.zw), arg_2.wx & arg_2.yy) & 1i, arg_2.x & _wgslsmith_div_i32(i32(-1i) * -1i, arg_2.x));
    return select(!(!vec3<bool>(var_2.b, var_3.c, false)), vec3<bool>(true, true && ((6838u != arg_0.b) & var_1), arg_1.c), true != any(select(!vec4<bool>(false, true, var_0.x, true), select(vec4<bool>(var_3.c, true, true, false), vec4<bool>(true, var_0.x, var_3.c, arg_1.c), true), !arg_1.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), func_1(Struct_2(-687f, 35433u, false), Struct_2(498f, 4294967295u, false), vec4<i32>(-1i, 11928i, 20598i, 13148i)), true)));
    var var_1 = Struct_1(vec4<i32>(-2147483647i, abs(-4525i), 2147483647i, -select(-51693i, -1i, true)), var_0.x);
    var var_2 = Struct_1(countOneBits(var_1.a), var_0.x);
    var var_3 = 7677i;
    var_1 = Struct_1(var_1.a, true);
    var_1 = Struct_1(var_1.a, var_2.b);
    var_3 = countOneBits(countOneBits(-11576i));
    var_1 = Struct_1(var_1.a, true);
    let x = u_input.a;
    s_output = StorageBuffer(1i, countOneBits(var_2.a) | (var_2.a >> (~(~vec4<u32>(14294u, u_input.a.x, u_input.a.x, u_input.a.x)) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(500f, -346f, -250f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2487f, -255f, 125f))))), _wgslsmith_mod_u32(9186u, 4272u & u_input.a.x), var_2.a.x);
}

