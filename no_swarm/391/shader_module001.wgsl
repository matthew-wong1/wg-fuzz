struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec3<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: u32) -> i32 {
    var var_0 = Struct_2(vec4<f32>(206f, 829f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1020f))), 371f), Struct_1(vec2<f32>(-735f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-2363f, 198f)) + 135f))));
    let var_1 = Struct_2(vec4<f32>(var_0.b.a.x, var_0.b.a.x, var_0.b.a.x, _wgslsmith_f_op_f32(var_0.b.a.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1319f)) + -378f))), Struct_1(vec2<f32>(-2729f, _wgslsmith_f_op_f32(select(-759f, _wgslsmith_f_op_f32(min(122f, -450f)), false)))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-var_1.b.a));
    var var_3 = Struct_3(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.c.xyw ^ u_input.c.yzz, -u_input.c.wzz) << (vec3<u32>(1u, 6354u, firstLeadingBit(0u)) % vec3<u32>(32u)), -reverseBits(u_input.c.xyw)));
    let var_4 = Struct_3(~var_3.a);
    return var_3.a;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: bool, arg_3: Struct_2) -> vec4<bool> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(467f, arg_0.a.x, arg_0.a.x, -1652f), arg_3.a)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.a.x, arg_3.a.x, arg_3.a.x, arg_3.b.a.x), arg_3.a)))), arg_0);
    var var_1 = _wgslsmith_div_vec3_i32(-firstTrailingBit(vec3<i32>(min(-4038i, 3848i), 16899i >> (1u % 32u), 0i & u_input.c.x)), reverseBits(u_input.c.wxx));
    var var_2 = _wgslsmith_sub_i32(firstLeadingBit(min(-3434i >> (u_input.b.x % 32u), -2147483647i) | (i32(-1i) * -var_1.x)), -min(firstTrailingBit(89527i), u_input.c.x));
    var var_3 = select(vec4<i32>(u_input.c.x, var_1.x, _wgslsmith_mult_i32(7283i, countOneBits(select(u_input.c.x, var_1.x, arg_2))), 0i), u_input.c | ~u_input.c, any(select(!vec3<bool>(true, arg_2, false), vec3<bool>(arg_0.a.x < arg_3.b.a.x, !arg_2, u_input.c.x == u_input.c.x), !(u_input.a != u_input.b.x))));
    let var_4 = Struct_3(21730i);
    return !select(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(arg_1, arg_1, true, arg_1), vec4<bool>(true, false, arg_1, arg_2)), !vec4<bool>(arg_1, true, false, arg_1), var_1.x != u_input.c.x), vec4<bool>(true, 1u < _wgslsmith_dot_vec4_u32(vec4<u32>(45619u, u_input.a, u_input.a, u_input.b.x), vec4<u32>(162u, u_input.a, u_input.a, 70755u)), arg_1, false), arg_1);
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: bool, arg_3: Struct_1) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.a.x, _wgslsmith_f_op_f32(-arg_1))))));
    var var_1 = func_4(Struct_1(arg_3.a), arg_2, !(func_3(vec2<bool>(arg_2, true), select(u_input.a, u_input.b.x, arg_2)) >= 1i), Struct_2(arg_0.a, arg_3));
    var_1 = select(select(!vec4<bool>(any(vec4<bool>(true, false, var_1.x, true)), var_1.x & var_1.x, !arg_2, u_input.c.x < 36069i), !select(select(vec4<bool>(true, var_1.x, true, true), vec4<bool>(arg_2, var_1.x, false, arg_2), arg_2), vec4<bool>(false, true, true, arg_2), !vec4<bool>(var_1.x, true, var_1.x, true)), func_4(arg_3, var_1.x, true, arg_0)), select(vec4<bool>(!arg_2 || true, true, all(func_4(Struct_1(arg_0.b.a), false, false, Struct_2(arg_0.a, arg_3)).xwx), true), !vec4<bool>(false, var_1.x || true, false, func_4(Struct_1(var_0.a), true, false, arg_0).x), func_4(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-690f, 778f) - arg_0.a.zx)), true, arg_2, arg_0)), !(!(_wgslsmith_dot_vec3_i32(vec3<i32>(-18512i, u_input.c.x, u_input.c.x), u_input.c.yyw) >= _wgslsmith_dot_vec3_i32(u_input.c.wxz, u_input.c.xzy))));
    var_1 = vec4<bool>(!(arg_2 || var_1.x), false, var_1.x & arg_2, true);
    var var_2 = ~vec2<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.c.x, u_input.c.x), ~1i), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, 1i, -59941i, u_input.c.x), u_input.c), ~u_input.c)), _wgslsmith_mod_i32(u_input.c.x, -64723i));
    return _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec4_u32(select(abs(vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.b.x) >> (vec4<u32>(u_input.a, u_input.b.x, u_input.b.x, 27112u) % vec4<u32>(32u))), min(vec4<u32>(4294967295u, 16164u, 91000u, 0u), ~vec4<u32>(46977u, 10489u, u_input.a, 89120u)), all(var_1.wx)), vec4<u32>(u_input.b.x ^ 1u, 1u, _wgslsmith_sub_u32(u_input.b.x, 4294967295u), ~0u) << (~vec4<u32>(u_input.a, 0u, 1u, 24470u) % vec4<u32>(32u))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32) -> vec2<bool> {
    let var_0 = vec3<u32>(u_input.b.x, u_input.a, _wgslsmith_mod_u32(_wgslsmith_sub_u32(firstTrailingBit(_wgslsmith_sub_u32(u_input.a, u_input.a)), 33u), ~_wgslsmith_mod_u32(func_2(arg_0, -418f, false, arg_0.b), 15351u)));
    let var_1 = -62458i;
    let var_2 = abs(-2829i);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(456f)))))) * _wgslsmith_f_op_f32(max(arg_1.a.x, arg_0.a.x)));
    let var_4 = vec3<bool>(61026i == _wgslsmith_dot_vec2_i32(u_input.c.yz, u_input.c.wx), true, !(!all(vec3<bool>(true, true, false))));
    return func_4(arg_0.b, !select(var_4.x, all(!var_4.xx), true), true, Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.b.a.x), var_3, 1000f, var_3) * _wgslsmith_f_op_vec4_f32(-arg_0.a)), Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.a.x, -324f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-357f, -707f) * vec2<f32>(arg_0.a.x, -240f)))))).zz;
}

fn func_5(arg_0: f32, arg_1: vec2<bool>, arg_2: f32) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-876f, arg_2))))))));
    var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - arg_0))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.a.x, var_0.a.x))), _wgslsmith_f_op_f32(arg_2 * arg_2)))));
    var_0 = Struct_1(var_0.a);
    var_0 = Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -329f) - _wgslsmith_f_op_f32(step(-898f, arg_0))), -1220f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(sign(var_0.a.x)), _wgslsmith_f_op_f32(min(arg_2, 2252f)))))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-808f, -1267f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -711f) - _wgslsmith_f_op_vec2_f32(select(var_0.a, var_0.a, arg_1.x))))));
    return _wgslsmith_f_op_f32(min(var_0.a.x, arg_0));
}

fn func_6(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_3) -> Struct_1 {
    var var_0 = select(vec2<bool>(true, func_3(vec2<bool>(false, false), _wgslsmith_div_u32(u_input.a, u_input.b.x)) < u_input.c.x), vec2<bool>(true, true), vec2<bool>(true, all(vec2<bool>(true, true))));
    var_0 = !select(!select(vec2<bool>(false, var_0.x), func_4(Struct_1(vec2<f32>(arg_0.x, arg_1)), var_0.x, var_0.x, Struct_2(vec4<f32>(arg_1, -323f, arg_0.x, -1000f), Struct_1(arg_0))).wx, select(vec2<bool>(true, var_0.x), vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, var_0.x))), vec2<bool>(any(!vec2<bool>(var_0.x, var_0.x)), var_0.x || true), false & !var_0.x);
    var_0 = vec2<bool>(var_0.x, true);
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(122f, arg_1, arg_0.x, 637f) - vec4<f32>(506f, arg_1, -1075f, -1537f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, -223f, -423f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.x, arg_1, arg_1, arg_1)))))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-arg_0))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -469f)))));
    var_0 = vec2<bool>(var_0.x, all(select(func_4(Struct_1(vec2<f32>(arg_1, 455f)), any(vec4<bool>(var_0.x, false, var_0.x, false)), any(vec2<bool>(var_0.x, var_0.x)), Struct_2(vec4<f32>(-217f, arg_0.x, arg_1, -893f), var_1.b)).xz, !(!vec2<bool>(var_0.x, var_0.x)), vec2<bool>(-947f <= arg_1, false))));
    return Struct_1(vec2<f32>(1f, 1f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(vec2<f32>(_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(633f, 1000f))), select(func_1(Struct_2(vec4<f32>(476f, 1138f, -1581f, -198f), Struct_1(vec2<f32>(-185f, -1000f))), Struct_1(vec2<f32>(1690f, -729f)), -1i), vec2<bool>(false, false), vec2<bool>(true, true)), _wgslsmith_f_op_f32(-463f * 1292f))), -268f), _wgslsmith_f_op_f32(f32(-1f) * -890f), Struct_3(u_input.c.x));
    let var_1 = 19476i;
    var var_2 = vec3<bool>(true, any(func_1(Struct_2(vec4<f32>(-2413f, 533f, var_0.a.x, 528f), func_6(vec2<f32>(var_0.a.x, var_0.a.x), -202f, Struct_3(u_input.c.x))), var_0, ~firstTrailingBit(u_input.c.x))), any(select(vec2<bool>(false, false), vec2<bool>(false, false), true)) || true);
    let var_3 = 0i;
    var var_4 = 38770u;
    var var_5 = Struct_3(_wgslsmith_dot_vec3_i32(u_input.c.yzz, vec3<i32>(var_3, u_input.c.x, var_3)));
    var_4 = u_input.b.x;
    var var_6 = -428f;
    var_2 = !vec3<bool>(true && select(var_2.x, any(var_2.xz), false), !var_2.x || all(select(vec4<bool>(true, var_2.x, var_2.x, true), vec4<bool>(false, var_2.x, false, var_2.x), true)), abs(~u_input.b.x) != abs(u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(_wgslsmith_mod_i32(var_3, -1i), select(~u_input.c.x << (36838u % 32u), max(u_input.c.x >> (6925u % 32u), -var_1), ~4294967295u != u_input.b.x)), vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1185f), -277f, var_0.a.x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-319f, var_0.a.x, var_0.a.x)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(291f, var_0.a.x, var_0.a.x))))), _wgslsmith_dot_vec3_i32(vec3<i32>(33246i, 0i, var_3), -vec3<i32>(var_3, u_input.c.x, var_3)) < firstTrailingBit(1i))), vec2<i32>(-18157i, 0i));
}

