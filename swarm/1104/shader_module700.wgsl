struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<f32>,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: bool,
}

struct Struct_3 {
    a: i32,
    b: vec2<f32>,
    c: bool,
    d: vec2<f32>,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: f32,
    d: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<f32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec3<i32> {
    var var_0 = _wgslsmith_dot_vec4_i32(-countOneBits(select(_wgslsmith_mult_vec4_i32(vec4<i32>(-10531i, 53367i, -1i, -4169i), vec4<i32>(-10873i, -16194i, -5632i, 0i)), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, -14959i, 47531i, 2147483647i), vec4<i32>(-3893i, -2147483647i, 44459i, 1i)), true)), vec4<i32>(1i, 1i, 1i, 1i) | countOneBits(select(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, 11509i, 108872i, 12090i), vec4<i32>(-1i, 2147483647i, 2147483647i, 21604i)), vec4<i32>(1i, 1i, 1i, 1i), any(vec3<bool>(true, true, true)))));
    var_0 = 1i;
    var_0 = ~max(_wgslsmith_mod_i32(firstLeadingBit(-1004i), 1i), ~2147483647i);
    var_0 = -80808i;
    var var_1 = Struct_1(true, 1i ^ _wgslsmith_sub_i32(_wgslsmith_mod_i32(-96691i << (u_input.a.x % 32u), 0i), -44613i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-930f, -823f)), 622f, true)), 941f)), all(vec2<bool>(true, true)));
    return vec3<i32>(firstLeadingBit(countOneBits(0i)), -41720i, var_1.b);
}

fn func_2(arg_0: i32, arg_1: bool) -> f32 {
    var var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(~_wgslsmith_add_i32(arg_0, arg_0), firstLeadingBit(i32(-1i) * -1i)), 47322i, 2147483647i >> (_wgslsmith_dot_vec3_u32(vec3<u32>(4111u, 1u, 4294967295u), u_input.c.zxy) % 32u)), select(firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, 13367i, arg_0), -vec3<i32>(-44917i, arg_0, arg_0))), func_3(), select(!(!vec3<bool>(arg_1, arg_1, true)), select(vec3<bool>(true, arg_1, arg_1), !vec3<bool>(arg_1, false, arg_1), vec3<bool>(false, true, arg_1)), !all(vec2<bool>(arg_1, arg_1)))));
    let var_1 = !vec4<bool>(any(vec3<bool>(any(vec3<bool>(arg_1, arg_1, arg_1)), false, false)), !(!arg_1 & (-2147483647i <= var_0.x)), true, arg_1);
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1f))), -1794f, all(!var_1.yy))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-872f * 437f)) - 738f) * _wgslsmith_f_op_f32(519f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(160f))))));
    var_0 = select(max(select(~vec3<i32>(var_0.x, var_0.x, -10593i), vec3<i32>(arg_0, arg_0, -2147483647i) << (u_input.a % vec3<u32>(32u)), false), select(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, var_0.x, 5867i), vec3<i32>(arg_0, 2147483647i, var_0.x)), -vec3<i32>(1i, var_0.x, -7029i), any(var_1))), max(firstLeadingBit(~vec3<i32>(var_0.x, -60134i, -2147483647i)), select(_wgslsmith_add_vec3_i32(vec3<i32>(-17118i, -29696i, var_0.x), vec3<i32>(-21560i, var_0.x, arg_0)), vec3<i32>(var_0.x, var_0.x, 2147483647i) & vec3<i32>(2423i, -80323i, arg_0), var_1.x && false)), var_1.yyw) >> (_wgslsmith_sub_vec3_u32(reverseBits(u_input.a), vec3<u32>(_wgslsmith_add_u32(16868u, 60682u), _wgslsmith_dot_vec2_u32(vec2<u32>(10385u, 4294967295u), vec2<u32>(u_input.b.x, 59137u)), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.c.yx, vec2<u32>(37731u, u_input.b.x), u_input.c.zw), ~vec2<u32>(u_input.b.x, u_input.c.x)))) % vec3<u32>(32u));
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-772f, -1402f), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(279f, -300f))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, 896f) * vec2<f32>(-298f, -2107f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, var_2) + vec2<f32>(169f, -211f)))))), var_1.xx)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, _wgslsmith_f_op_f32(-1476f + 251f)))));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(1158f, -527f)), _wgslsmith_f_op_f32(round(var_2)), all(var_1))))) - _wgslsmith_f_op_f32(-943f - _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(max(var_3.x, -920f)))))), _wgslsmith_f_op_f32(-1474f + _wgslsmith_f_op_f32(-var_2))));
}

fn func_1() -> u32 {
    let var_0 = -469f;
    let var_1 = Struct_1(true, -_wgslsmith_sub_i32(-1i, _wgslsmith_clamp_i32(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-18614i, 1i, 1i, 7610i), vec4<i32>(-2147483647i, -28069i, 1i, 6485i)), max(1i, 2147483647i))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2090f - _wgslsmith_f_op_f32(func_2(-12386i, false))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-362f - -1242f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0))) + var_0)), _wgslsmith_dot_vec4_u32(firstLeadingBit(min(u_input.b, vec4<u32>(u_input.b.x, 4294967295u, 9507u, 52531u))), firstTrailingBit(vec4<u32>(2181u, 1u, 53896u, u_input.b.x) << (u_input.b % vec4<u32>(32u)))) == firstLeadingBit(u_input.c.x));
    var var_2 = 122f;
    var var_3 = Struct_2(!all(vec4<bool>(false, false, true, false)) || any(vec3<bool>(any(vec2<bool>(true, var_1.d)), var_1.d, all(vec3<bool>(true, var_1.a, var_1.d)))), var_1.b, true);
    var_3 = Struct_2(true || !(true & (var_1.d & var_3.c)), _wgslsmith_mod_i32(1i, var_3.b), var_3.c);
    return countOneBits(select(u_input.a.x, ~u_input.b.x, true));
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: Struct_4, arg_3: Struct_5) -> Struct_4 {
    var var_0 = ~((~(~u_input.b) >> (u_input.b % vec4<u32>(32u))) & _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(~u_input.b, firstTrailingBit(u_input.b)), u_input.c));
    let var_1 = 4294967295u;
    var var_2 = arg_2;
    var_2 = Struct_4(i32(-1i) * -_wgslsmith_mod_i32(_wgslsmith_div_i32(2147483647i, -3750i), arg_2.a), _wgslsmith_f_op_f32(-arg_3.a.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1864f)))) * _wgslsmith_f_op_f32(-1525f * _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_3.a.d.x, -600f))))), arg_2.d);
    let var_3 = arg_3.b;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(-_wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_add_i32(-4131i, 42668i), 1i), max(1i, 2697i)), _wgslsmith_div_u32(~func_1(), _wgslsmith_dot_vec3_u32(u_input.c.wxx, vec3<u32>(u_input.c.x, 4294967295u, u_input.b.x) ^ u_input.c.xwz)) >> (u_input.c.x % 32u), Struct_4(abs(34091i), -1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-1204f)), _wgslsmith_f_op_f32(f32(-1f) * -405f))), true), Struct_5(Struct_3(_wgslsmith_dot_vec2_i32(vec2<i32>(14392i, 2147483647i), vec2<i32>(6061i, 29476i)) ^ 10792i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-787f, 635f))), true, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(154f, 1152f) - vec2<f32>(1015f, -854f))))), Struct_2(!select(false, true, false), select(2147483647i, min(6941i, -22102i), all(vec4<bool>(true, true, false, false))), false)));
    var var_1 = -1033f;
    let var_2 = Struct_5(Struct_3(var_0.a, vec2<f32>(var_0.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(36921i, var_0.d)), var_0.b))), any(vec3<bool>(all(vec2<bool>(false, true)), !var_0.d, !var_0.d)), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.c, 633f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c, var_0.b) + vec2<f32>(var_0.b, var_0.b)) + vec2<f32>(-714f, 174f)))), Struct_2(any(vec4<bool>(true, !var_0.d, var_0.d, !var_0.d)), -6170i, var_0.c < var_0.c));
    let x = u_input.a;
    s_output = StorageBuffer(max(var_0.a, -reverseBits(var_2.b.b)), 2204u, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, -133f, _wgslsmith_f_op_f32(1000f * var_2.a.d.x)))))), _wgslsmith_dot_vec4_u32(u_input.c, _wgslsmith_clamp_vec4_u32(~select(u_input.c, u_input.b, false), ~_wgslsmith_sub_vec4_u32(u_input.b, u_input.b), abs(firstTrailingBit(vec4<u32>(u_input.b.x, u_input.c.x, 0u, u_input.c.x))))), _wgslsmith_mult_vec3_i32(func_3(), vec3<i32>(_wgslsmith_sub_i32(var_0.a, var_2.a.a) ^ -58448i, ~1i, func_4(var_2.b.b & -14306i, u_input.b.x << (47852u % 32u), Struct_4(var_2.a.a, -580f, var_0.c, true), var_2).a)));
}

