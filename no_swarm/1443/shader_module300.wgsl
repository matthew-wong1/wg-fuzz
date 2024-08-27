struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> f32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-1026f, _wgslsmith_f_op_f32(trunc(-145f)))), _wgslsmith_f_op_f32(round(-585f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(1000f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-382f, -1423f, false)), _wgslsmith_f_op_f32(max(-1558f, -1311f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1135f)) - -1000f), 515f)));
    var var_1 = u_input.c;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, 977f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, 1521f)), vec4<bool>(false, false, true, true)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))) * vec4<f32>(-482f, -109f, 1000f, 455f))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.x, -621f, -589f, var_0.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -280f, -664f, -657f)))))));
    let var_3 = select(vec2<bool>(true, select(all(select(vec2<bool>(false, false), vec2<bool>(true, false), false)), any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), true)), var_0.x >= _wgslsmith_f_op_f32(trunc(var_0.x)))), select(vec2<bool>(false, (u_input.d <= u_input.b) || true), vec2<bool>(false, true), !(!select(vec2<bool>(true, true), vec2<bool>(false, false), true))), !any(vec2<bool>(-1941f <= var_2.x, u_input.a.x <= 13999u)));
    var var_4 = !vec3<bool>(!var_3.x, select(true, true, all(vec4<bool>(true, false, var_3.x, var_3.x))) == true, all(select(!vec3<bool>(false, false, var_3.x), select(vec3<bool>(var_3.x, var_3.x, var_3.x), vec3<bool>(var_3.x, var_3.x, false), false), !vec3<bool>(var_3.x, var_3.x, var_3.x))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_2.x)), var_0.x);
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(329f, 1502f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1236f)) * -602f), _wgslsmith_f_op_f32(func_3())), -588f, 584f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - 839f) * _wgslsmith_f_op_f32(round(1679f))), _wgslsmith_f_op_f32(f32(-1f) * -998f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, 625f, false)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-563f * 444f), _wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(-462f - var_0.x), _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1596f, var_0.x, var_0.x) - vec4<f32>(862f, 831f, 1000f, -546f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-187f, var_0.x, 585f, -1000f), vec4<f32>(-778f, var_0.x, 774f, 404f), true))))))));
    let var_1 = reverseBits(~select(-(vec3<i32>(-90443i, arg_0, 1i) >> (vec3<u32>(u_input.a.x, 0u, 70567u) % vec3<u32>(32u))), select(vec3<i32>(20216i, arg_0, 31909i), vec3<i32>(2147483647i, 2147483647i, u_input.d), false) | vec3<i32>(u_input.b, 1i, 26548i), true));
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(var_0.x))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(863f, 782f, var_0.x, var_2) + vec4<f32>(var_2, 1278f, var_2, var_0.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, var_2, 1358f, var_2) * vec4<f32>(110f, var_0.x, var_2, var_0.x)))) * vec4<f32>(_wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(var_0.x + var_2)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(floor(284f))), _wgslsmith_f_op_f32(trunc(-458f)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-703f, var_2, -468f, var_2) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-406f, -581f, var_0.x, var_0.x) + vec4<f32>(1341f, 2647f, 1161f, 885f))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(843f, var_2, var_0.x, 854f), vec4<f32>(-849f, 538f, var_0.x, var_2))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, var_0.x, -523f, 381f) + vec4<f32>(889f, -228f, var_2, var_0.x))))), all(vec2<bool>(true, true)))));
    return Struct_1(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.e.x, 4294967295u, 4294967295u)), ~(~vec3<u32>(106731u, u_input.c, u_input.e.x))), u_input.c), -firstTrailingBit(17571i));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = true;
    let var_1 = Struct_2(all(!vec3<bool>(true, !var_0, var_0 & var_0)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-756f * 1115f))))), Struct_1(arg_1.a, _wgslsmith_sub_i32(arg_1.b, arg_2.b)), vec4<bool>(true, var_0, !var_0, var_0), Struct_1(62348u, -16930i | (_wgslsmith_dot_vec3_i32(vec3<i32>(-12419i, arg_2.b, arg_1.b), vec3<i32>(u_input.b, 1i, 1i)) << ((0u >> (0u % 32u)) % 32u))));
    var var_2 = arg_2;
    let var_3 = var_1;
    var_2 = func_2(arg_2.b);
    return Struct_1(max(18638u, arg_2.a), abs(4812i));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<u32>) -> i32 {
    var var_0 = ~(~arg_1.c.a);
    let var_1 = ~vec4<u32>(~117u, _wgslsmith_mod_u32(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(24175u, 85360u, arg_1.e.a, 0u), vec4<u32>(0u, u_input.a.x, 1u, 9676u))), ~44660u), countOneBits(arg_1.e.a | arg_0.c.a) << (23711u % 32u), _wgslsmith_mod_u32(_wgslsmith_mult_u32(1u, 4294967295u), ~func_2(43462i).a));
    var_0 = ((_wgslsmith_add_u32(~1u, var_1.x) ^ 0u) | (firstLeadingBit(max(arg_2.x, arg_1.e.a)) & func_4(5505u, func_2(u_input.b), Struct_1(51374u, 1i)).a)) & _wgslsmith_sub_u32(arg_2.x, _wgslsmith_mod_u32(arg_2.x, arg_0.c.a));
    let var_2 = -13112i;
    var_0 = arg_0.c.a ^ 1u;
    return func_4(0u << (abs(_wgslsmith_sub_u32(min(1u, 1u), select(u_input.e.x, 1u, false))) % 32u), arg_0.e, arg_1.c).b;
}

fn func_1(arg_0: i32, arg_1: vec2<u32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-1134f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(895f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-209f * -1157f)))), -120f)));
    let var_1 = ~(~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.e, _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 76199u), u_input.e)), arg_1.x));
    var var_2 = var_1;
    var_2 = 84855u;
    let var_3 = func_5(Struct_2(true && all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1417f * 1000f)) - -1430f), Struct_1(_wgslsmith_div_u32(arg_1.x, 0u) >> (61u % 32u), select(u_input.d, u_input.d, true)), !vec4<bool>(true, all(vec2<bool>(true, false)), true, any(vec3<bool>(true, false, false))), func_4(var_1, func_2(~48278i), Struct_1(4294967295u, i32(-1i) * -30674i))), Struct_2(!(_wgslsmith_f_op_f32(trunc(1543f)) <= _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1587f, var_0) + _wgslsmith_f_op_f32(func_3())) * var_0), func_2(0i), select(vec4<bool>(true, u_input.b < arg_0, var_0 <= var_0, true), vec4<bool>(true, true, true, true), vec4<bool>(all(vec3<bool>(false, true, false)), any(vec4<bool>(false, true, true, false)), -363f > var_0, true)), func_2(arg_0)), _wgslsmith_mod_vec2_u32(abs(abs(~u_input.a)), vec2<u32>(~(~var_1), 22669u)));
    return Struct_2(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0, -757f, false)) * -2683f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1301f - var_0), 306f))))), Struct_1(~(~1u), _wgslsmith_dot_vec2_i32((vec2<i32>(-1i, 13036i) | vec2<i32>(-6151i, var_3)) & vec2<i32>(1i, -2147483647i), select(_wgslsmith_mult_vec2_i32(vec2<i32>(23111i, 620i), vec2<i32>(u_input.b, var_3)), vec2<i32>(39401i, 0i), vec2<bool>(true, false)))), !select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), all(vec2<bool>(true, true))), vec4<bool>(true, true, true, true), all(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)))), func_4(4294967295u, Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), arg_1 & arg_1), var_3), Struct_1(firstTrailingBit(~arg_1.x), ~min(0i, 44518i))));
}

fn func_6(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec4<i32>) -> Struct_2 {
    var var_0 = arg_1;
    var var_1 = var_0.d.wxw;
    var_1 = var_0.d.yww;
    let var_2 = true;
    var var_3 = vec3<i32>(~_wgslsmith_sub_i32(arg_1.c.b & u_input.d, reverseBits(arg_2.x) >> (~0u % 32u)), u_input.d, -(~arg_2.x));
    return func_1(-(~(~abs(-28862i))), _wgslsmith_mod_vec2_u32(~vec2<u32>(86512u >> (arg_1.c.a % 32u), func_1(arg_1.c.b, vec2<u32>(u_input.e.x, 19982u)).c.a), u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1685f, -402f)))))), func_1(_wgslsmith_mult_i32(-(u_input.b >> (4294967295u % 32u)), _wgslsmith_sub_i32(min(-4497i, u_input.b), i32(-1i) * -1i)), vec2<u32>(24937u, 0u)), ~vec4<i32>(547i, _wgslsmith_add_i32(-32366i, -14448i) << (~u_input.a.x % 32u), func_1(~42129i, ~vec2<u32>(0u, 34170u)).c.b, u_input.b));
    var_0 = func_6(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1195f), -1494f))), var_0.b), func_6(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1559f, 448f), vec2<f32>(var_0.b, -1025f), var_0.d.zx)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.b, 692f)))))), Struct_2(!var_0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(-var_0.b)), Struct_1(40166u, var_0.c.b), select(!vec4<bool>(false, false, var_0.a, true), vec4<bool>(var_0.d.x, var_0.d.x, false, var_0.d.x), false), var_0.e), vec4<i32>(1i, var_0.c.b, select(var_0.e.b, var_0.c.b, var_0.d.x) | 1i, var_0.c.b)), ~vec4<i32>(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c.b, var_0.e.b, 21032i, u_input.b), vec4<i32>(-2147483647i, var_0.c.b, -1i, 0i))), -reverseBits(var_0.e.b), func_4(0u, var_0.c, Struct_1(30797u, -12275i)).b & -53187i, select(var_0.c.b, u_input.b, true) & countOneBits(27884i)));
    let var_1 = var_0.c;
    var var_2 = min(firstTrailingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, var_1.b, 0i) & vec3<i32>(-2147483647i, var_0.c.b, -5230i), -vec3<i32>(u_input.d, 47548i, u_input.b))), ~vec3<i32>(u_input.b, func_1(-2147483647i, u_input.e.yz).c.b, var_0.e.b)) & (select(countOneBits(vec3<i32>(15632i, var_0.c.b, u_input.b)) ^ _wgslsmith_mult_vec3_i32(vec3<i32>(-22985i, var_0.c.b, var_1.b), vec3<i32>(u_input.b, u_input.b, var_1.b)), countOneBits(~vec3<i32>(2147483647i, var_1.b, -1i)), var_0.d.wyw) ^ vec3<i32>(-25356i, -u_input.b, func_4(var_0.c.a << (u_input.c % 32u), var_0.c, Struct_1(u_input.a.x, u_input.d)).b));
    var_2 = ~select(-(max(vec3<i32>(1i, -1i, var_0.c.b), vec3<i32>(0i, 4140i, var_0.c.b)) ^ -vec3<i32>(var_2.x, -2147483647i, var_2.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(0i, var_2.x, var_0.e.b), reverseBits(select(vec3<i32>(-1i, 0i, var_1.b), vec3<i32>(-1i, -2147483647i, -2147483647i), false))), var_0.d.wzz);
    var var_3 = vec2<i32>(_wgslsmith_sub_i32(u_input.d, 2147483647i), var_0.e.b | (var_0.c.b ^ abs(max(var_0.c.b, var_2.x))));
    var_2 = -select(max(vec3<i32>(abs(5759i), 2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c.b, var_0.e.b, 2147483647i, -1i), vec4<i32>(8075i, -9735i, 51337i, 1i))), ~vec3<i32>(-8671i, var_2.x, var_3.x) >> (max(vec3<u32>(var_0.e.a, var_0.e.a, 23250u), u_input.e) % vec3<u32>(32u))), _wgslsmith_mod_vec3_i32(vec3<i32>(~var_1.b, func_5(Struct_2(var_0.a, -580f, var_0.e, var_0.d, var_0.e), Struct_2(var_0.d.x, -1508f, Struct_1(u_input.e.x, var_0.e.b), vec4<bool>(var_0.a, var_0.d.x, var_0.a, true), Struct_1(var_0.e.a, var_1.b)), u_input.e.xz), -1i >> (var_1.a % 32u)), _wgslsmith_mult_vec3_i32(vec3<i32>(-3875i, u_input.b, 11137i), vec3<i32>(9322i, var_3.x, var_0.e.b))), !any(vec2<bool>(var_0.d.x, var_0.a)));
    var var_4 = func_1(var_3.x, u_input.e.yx);
    let x = u_input.a;
    s_output = StorageBuffer(select(max(countOneBits(firstTrailingBit(vec4<i32>(var_4.e.b, -23763i, var_0.e.b, var_4.c.b))), countOneBits(vec4<i32>(-2147483647i, u_input.d, -12712i, var_4.e.b))), max(countOneBits(vec4<i32>(0i, var_2.x, var_4.c.b, var_1.b) | vec4<i32>(u_input.b, 1i, 28389i, var_2.x)), ~vec4<i32>(36371i, u_input.d, 2147483647i, var_3.x)), var_0.d), vec3<i32>(0i, var_3.x, var_1.b));
}

