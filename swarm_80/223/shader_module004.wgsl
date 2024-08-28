struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<i32>) -> f32 {
    var var_0 = _wgslsmith_sub_u32(max(_wgslsmith_add_u32(48596u, select(~84165u, ~4294967295u, true)), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(9761u, 41727u), vec2<u32>(32329u, 95500u), vec2<bool>(true, true)), vec2<u32>(4294967295u, 37331u)), ~(~1u))), 1u);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-708f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-1241f))))), -206f, _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-924f)), _wgslsmith_f_op_f32(1369f - -1146f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-218f)))), !((arg_0.x <= -19462i) | all(vec2<bool>(false, false))))), _wgslsmith_f_op_f32(-358f + 747f));
    let var_2 = vec2<i32>(select(-min(_wgslsmith_dot_vec3_i32(u_input.a.xyx, vec3<i32>(50557i, u_input.a.x, arg_0.x)), firstLeadingBit(-41978i)), ~firstLeadingBit(countOneBits(-24210i)), all(vec3<bool>(true, false, all(vec4<bool>(true, true, false, false))))), ~(-48528i));
    let var_3 = var_2.x;
    var_1 = vec4<f32>(982f, -659f, _wgslsmith_f_op_f32(-var_1.x), 1000f);
    return var_1.x;
}

fn func_2(arg_0: bool, arg_1: bool) -> Struct_2 {
    var var_0 = -(vec3<i32>(1i, _wgslsmith_mult_i32(-486i, -4674i), 2147483647i) | firstLeadingBit(_wgslsmith_mod_vec3_i32(min(u_input.a.zyy, u_input.a.yyx), firstTrailingBit(u_input.a.zxw))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(2233f, -574f)))) + _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-459f, _wgslsmith_f_op_f32(ceil(-1555f))), _wgslsmith_f_op_f32(func_3(vec2<i32>(u_input.a.x, -13166i)))))), _wgslsmith_div_f32(-1235f, -908f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(330f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1511f, _wgslsmith_f_op_f32(trunc(-1000f))) + 583f)), -1000f);
    var var_2 = Struct_2(!select(vec2<bool>(!arg_0, arg_1), select(vec2<bool>(arg_0, false), !vec2<bool>(arg_1, false), false & arg_0), arg_0));
    let var_3 = Struct_1(~(~var_0.x) & _wgslsmith_div_i32(-(i32(-1i) * -10825i), ~(~(-29885i))), !arg_0, max(min(~1u, 2104u), 87320u));
    var_0 = u_input.a.xyx & -countOneBits(u_input.a.wyx);
    return Struct_2(var_2.a);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<i32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-182f)) * 1f) + 1f));
    let var_1 = Struct_2(arg_0.a);
    let var_2 = false;
    let var_3 = func_2(!all(!vec3<bool>(false, false, var_1.a.x)), !(firstLeadingBit(~25832u) <= arg_1.c));
    let var_4 = 58491u;
    return Struct_3(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-970f, var_0)) + _wgslsmith_f_op_f32(f32(-1f) * -550f)), -1531f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -740f) + var_0)))), vec3<bool>(all(!vec3<bool>(arg_2.b, true, var_2)) || true, var_1.a.x, var_3.a.x), false);
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_1) -> vec4<u32> {
    let var_0 = any(arg_1.b);
    var var_1 = Struct_3(vec3<f32>(arg_1.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-715f)), _wgslsmith_f_op_f32(select(-1871f, arg_1.a.x, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.x - _wgslsmith_f_op_f32(-656f * arg_1.a.x)) - 1494f)), arg_1.b, (_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(31686i, -2147483647i, arg_2.a, u_input.a.x)) == _wgslsmith_div_i32(-arg_2.a, arg_3.a)) & false);
    let var_2 = firstTrailingBit(~26699u);
    let var_3 = _wgslsmith_div_u32(~var_2, ~max(firstTrailingBit(0u), 1u));
    var var_4 = _wgslsmith_dot_vec3_i32(u_input.a.xwy, u_input.a.yzx) < 72147i;
    return ~(~(_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(59888u, arg_2.c, 39775u, 1u)), _wgslsmith_sub_vec4_u32(vec4<u32>(61718u, 1u, 73524u, var_3), vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u))) & vec4<u32>(firstLeadingBit(52601u), var_3, _wgslsmith_mod_u32(var_3, arg_3.c), arg_2.c)));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_2) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1721f)))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(vec2<i32>(-2147483647i, u_input.a.x))))))))) + _wgslsmith_f_op_f32(-513f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-843f, -427f)))));
    var var_1 = true;
    var_1 = true;
    let var_2 = _wgslsmith_div_u32(select(4294967295u, ~0u, true), 1u);
    return func_1(arg_1, Struct_1(i32(-1i) * -(~u_input.a.x), arg_1.a.x, arg_0.x), Struct_1(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), arg_1.a.x, 47055u), -u_input.a.ww);
}

fn func_6(arg_0: Struct_3) -> Struct_3 {
    var var_0 = arg_0;
    var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1035f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(var_0.a.x, 558f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(988f, arg_0.a.x, false))))), func_5(~(~vec4<u32>(43835u, 43851u, 55775u, 1u)), Struct_2(!(!vec2<bool>(true, arg_0.b.x)))).b, var_0.b.x);
    var_0 = arg_0;
    var_0 = func_1(func_2(false, var_0.b.x), Struct_1(reverseBits(_wgslsmith_sub_i32(1i, reverseBits(u_input.a.x))), arg_0.b.x, 1272u), Struct_1(u_input.a.x << (min(1u, _wgslsmith_div_u32(1u, 38770u)) % 32u), !arg_0.b.x, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(9519u, 4294967295u, 0u, 0u)), abs(vec4<u32>(4294967295u, 0u, 4294967295u, 9695u)))), -(~vec2<i32>(24339i, i32(-1i) * -2147483647i)));
    var var_1 = Struct_2(var_0.b.yz);
    return arg_0;
}

fn func_7(arg_0: Struct_3, arg_1: f32) -> Struct_3 {
    var var_0 = vec2<bool>(all(vec2<bool>(arg_0.b.x, !func_5(vec4<u32>(91553u, 1u, 1u, 27568u), Struct_2(arg_0.b.xy)).b.x)), func_2(true, arg_0.b.x).a.x);
    var_0 = arg_0.b.yx;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.x, 435f) - vec2<f32>(arg_0.a.x, -631f)) + _wgslsmith_f_op_vec2_f32(arg_0.a.xx + vec2<f32>(arg_0.a.x, -629f))))), vec2<f32>(561f, arg_0.a.x)));
    var_0 = arg_0.b.xy;
    let var_2 = _wgslsmith_add_u32(min(firstTrailingBit(_wgslsmith_div_u32(~4294967295u, 46023u)), 4294967295u), _wgslsmith_mult_u32(_wgslsmith_add_u32(countOneBits(select(0u, 1u, true)), ~(~14954u)), firstTrailingBit(firstLeadingBit(_wgslsmith_mod_u32(39223u, 4294967295u)))));
    return func_6(func_1(func_2(select(arg_0.c, all(arg_0.b.yx), var_0.x), all(!arg_0.b.xx)), Struct_1(-9632i, false, var_2), Struct_1(5443i, true, 1u), -(abs(vec2<i32>(u_input.a.x, u_input.a.x)) & u_input.a.wx)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_6(func_5(func_4(~44186u, func_1(Struct_2(vec2<bool>(false, false)), Struct_1(21523i, true, 40212u), Struct_1(u_input.a.x, false, 12890u), u_input.a.xx), Struct_1(u_input.a.x, true, 0u), Struct_1(0i, true, 10373u)), func_2(true, any(vec4<bool>(false, false, true, true))))), 138f);
    var var_1 = Struct_2(select(var_0.b.yx, vec2<bool>(true, var_0.a.x >= 2396f), func_1(func_2(var_0.c, var_0.b.x), Struct_1(1i, !var_0.c, ~39270u), Struct_1(1184i, true, ~4294967295u), -u_input.a.xy << (_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(1u, 0u)) % vec2<u32>(32u))).b.yz));
    var_1 = func_2(true, var_0.a.x > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -507f)) - -982f));
    let var_2 = Struct_1(~u_input.a.x, var_1.a.x, 1u);
    var_1 = Struct_2(func_6(Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(847f, 1000f, -2281f)), vec3<bool>(false, false, false), func_7(var_0, var_0.a.x).b.x)).b.zz);
    let var_3 = vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(~71450u, 69599u, firstTrailingBit(var_2.c) << (~22837u % 32u)), ~(min(var_2.c, var_2.c) >> (~var_2.c % 32u)), var_2.c), 860u, var_2.c | 4294967295u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(var_2.c, 3417u), var_2.c));
    let var_4 = -283f;
    var var_5 = Struct_3(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(var_0.a, vec3<f32>(var_4, var_4, var_4)))), var_0.a, ~4294967295u <= (var_3.x & 66908u))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a) - _wgslsmith_f_op_vec3_f32(-var_0.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a))))), func_6(func_6(Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(330f, var_0.a.x, var_0.a.x) + var_0.a), var_0.b, var_1.a.x))).b, any(func_1(Struct_2(func_1(Struct_2(vec2<bool>(var_2.b, true)), Struct_1(u_input.a.x, var_2.b, 1u), Struct_1(-52335i, var_1.a.x, var_2.c), vec2<i32>(10941i, 2147483647i)).b.xx), var_2, Struct_1(-29429i, true, 1u), vec2<i32>(var_2.a, min(var_2.a, -2147483647i))).b));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.yxx, vec4<i32>(select(u_input.a.x, abs(1i), false), _wgslsmith_dot_vec2_i32(vec2<i32>(~var_2.a, -u_input.a.x), vec2<i32>(~26413i, 1i)), select(u_input.a.x, var_2.a, var_0.b.x), 1i), _wgslsmith_add_vec4_u32(~countOneBits(abs(vec4<u32>(43634u, var_2.c, var_2.c, var_2.c))), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_2.c), var_3.yz), max(4294967295u, 4294967295u), abs(~91390u), var_2.c)));
}

