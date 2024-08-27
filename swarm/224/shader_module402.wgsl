struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec3<i32>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec3<f32>,
    d: vec3<bool>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3) -> f32 {
    let var_0 = !vec4<bool>(-12754i != -arg_1.b.x, arg_0.d.x, true, any(vec3<bool>(!arg_1.d.x, !arg_0.d.x, false)));
    var var_1 = Struct_3(arg_0.a, -abs(vec2<i32>(1i, ~0i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(arg_1.a.c)))), arg_1.a.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c.x + 123f) - _wgslsmith_f_op_f32(min(-132f, 977f))))), select(!vec3<bool>(all(vec3<bool>(arg_0.d.x, arg_0.d.x, arg_1.d.x)), true, all(vec2<bool>(true, true))), select(!vec3<bool>(false, false, var_0.x), select(arg_0.d, select(arg_0.d, arg_0.d, arg_0.d), true), arg_0.d.x & (arg_1.e.x <= arg_1.c.x)), all(vec3<bool>(false, var_0.x, true))), _wgslsmith_f_op_vec4_f32(-arg_1.e));
    let var_2 = !var_0;
    let var_3 = vec2<bool>(any(vec3<bool>(true, var_0.x, var_1.d.x)), var_1.a.c == _wgslsmith_f_op_f32(-arg_1.a.c));
    var var_4 = Struct_3(arg_0.a, var_1.b & (((vec2<i32>(2147483647i, arg_0.b.x) ^ vec2<i32>(0i, 5419i)) << (abs(u_input.b.yx) % vec2<u32>(32u))) << (_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(u_input.b.zx, u_input.b.xx), vec2<u32>(u_input.b.x, 1u)) % vec2<u32>(32u))), arg_1.e.yww, vec3<bool>(all(var_1.d.zy), true, (min(2147483647i, -12225i) >= (var_1.b.x << (u_input.b.x % 32u))) | true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(arg_0.e, _wgslsmith_f_op_vec4_f32(vec4<f32>(1190f, 856f, var_1.c.x, arg_1.a.c) * vec4<f32>(1054f, -885f, arg_1.c.x, -1997f)), !var_1.d.x))))));
    return arg_0.c.x;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_3(Struct_1(~min(u_input.e << (43608u % 32u), u_input.e), -_wgslsmith_mod_i32(u_input.d, -29852i), 224f), vec2<i32>(u_input.c.x, 32859i), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(Struct_3(Struct_1(-1i, u_input.c.x, 775f), u_input.c, vec3<f32>(-2723f, -1439f, -1278f), vec3<bool>(true, false, false), vec4<f32>(-1391f, -298f, -576f, 541f)), Struct_3(Struct_1(-1i, u_input.c.x, -573f), vec2<i32>(-2147483647i, u_input.d), vec3<f32>(-311f, 613f, -1032f), vec3<bool>(false, false, true), vec4<f32>(-139f, 1293f, 109f, 1305f)))))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-2282f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1324f + 1000f))))), _wgslsmith_f_op_f32(929f - -634f)), select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), select(any(vec2<bool>(false, true)), all(vec2<bool>(false, true)), true)), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true), vec3<bool>(true, false, false)), vec3<bool>(true, true, false), false), true), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(883f, -1000f, 600f, 1085f))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1124f), -1000f, -873f, _wgslsmith_f_op_f32(798f + 1877f))))));
    let var_1 = var_0.d.x;
    let var_2 = var_0.a;
    var var_3 = _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(var_2.b, var_0.a.a, 1i, -1i)), firstTrailingBit(countOneBits(vec4<i32>(-1i, var_0.b.x, 2147483647i, u_input.e)))), -u_input.e << (54228u % 32u), _wgslsmith_clamp_i32(35155i, -(u_input.e | -15324i), u_input.e), var_2.a), ~(_wgslsmith_mult_vec4_i32(vec4<i32>(var_2.b, 1i, var_2.a, -2147483647i), vec4<i32>(5606i, -20000i, var_0.a.a, var_0.a.b)) << (vec4<u32>(1u, 22471u, 30030u >> (u_input.a % 32u), ~1u) % vec4<u32>(32u))), _wgslsmith_mod_vec4_i32(min(firstTrailingBit(vec4<i32>(-1556i, var_0.b.x, -42505i, var_2.a)), select(vec4<i32>(u_input.d, 35530i, var_2.b, u_input.e) ^ vec4<i32>(var_0.b.x, 2077i, var_0.a.b, var_0.b.x), vec4<i32>(1i, u_input.c.x, u_input.e, var_2.a), all(var_0.d))), vec4<i32>(41740i, -2147483647i, ~58419i & (u_input.e << (0u % 32u)), -(~u_input.d))));
    let var_4 = Struct_2(Struct_1(-_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.e, var_0.b.x, 1i, -34082i), _wgslsmith_mod_vec4_i32(vec4<i32>(var_2.a, -1i, var_0.a.b, 13349i), vec4<i32>(17536i, var_3.x, var_2.b, var_3.x))), -1i, -455f), var_0.b, var_3.yxw, var_2, 19515i);
    return Struct_1(var_2.a, -8027i, _wgslsmith_div_f32(var_4.a.c, _wgslsmith_f_op_f32(func_3(Struct_3(Struct_1(469i, 120i, 1898f), var_0.b & vec2<i32>(u_input.d, var_2.a), vec3<f32>(572f, -735f, var_0.c.x), !vec3<bool>(var_1, true, var_0.d.x), _wgslsmith_f_op_vec4_f32(-var_0.e)), Struct_3(var_4.d, select(var_3.zw, var_4.c.yy, var_1), _wgslsmith_f_op_vec3_f32(vec3<f32>(221f, var_2.c, var_0.c.x) + vec3<f32>(var_4.a.c, -659f, 165f)), !var_0.d, vec4<f32>(1404f, var_4.d.c, var_0.a.c, -648f))))));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_add_vec4_u32(~vec4<u32>(~u_input.b.x, 0u, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a, 1u, u_input.b.x, u_input.b.x)), ~u_input.b), ~_wgslsmith_mod_u32(0u, u_input.a)), ~(~_wgslsmith_sub_vec4_u32(u_input.b, ~vec4<u32>(u_input.a, u_input.a, 18605u, 4294967295u))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = -2147483647i;
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, _wgslsmith_f_op_f32(min(var_0.c, var_0.c)), _wgslsmith_div_f32(630f, 2249f)) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, -1762f, var_0.c)))))))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -193f));
    let var_4 = var_2.x;
    let var_5 = Struct_2(func_2(), abs(vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(-26129i, 0i), -1i), ~1i)), firstTrailingBit(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.a, -4807i, -28266i), vec3<i32>(-2147483647i, 48999i, 15427i)), countOneBits(vec3<i32>(u_input.c.x, var_1, var_0.a)))) & ~firstTrailingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 35311i, var_1), vec3<i32>(var_1, -48847i, var_0.a))), func_1(), -_wgslsmith_clamp_i32(select(1i, 61984i, true), _wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(var_1, u_input.d)), var_0.a) & -_wgslsmith_mult_i32(24642i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a, var_1, 26975i), vec3<i32>(0i, 1i, -7988i))));
    var var_6 = Struct_2(func_2(), _wgslsmith_add_vec2_i32(var_5.c.yz, var_5.b), var_5.c, Struct_1(i32(-1i) * -1i, -1i, var_0.c), min(-1i, -firstTrailingBit(var_5.c.x)));
    var var_7 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)), _wgslsmith_div_f32(1094f, -404f)));
    let var_8 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_2.xx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_6.a.c, var_2.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1892f, var_7.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.zx) - _wgslsmith_div_vec2_f32(var_2.xy, vec2<f32>(var_0.c, var_7.x))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-640f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-771f, 1086f)), -612f) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.x, -2396f, -726f), _wgslsmith_f_op_vec3_f32(vec3<f32>(572f, var_7.x, var_2.x) + vec3<f32>(var_2.x, -2490f, -116f)), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true)))))), ~(-1i << (max(~0u, u_input.b.x) % 32u)), _wgslsmith_f_op_f32(-var_2.x));
}

