struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: i32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec3<i32>(-18462i, 18056i, 9212i), vec3<bool>(false, true, true), 0i, vec3<bool>(false, false, false)), Struct_1(vec3<i32>(-33176i, 1i, 4322i), vec3<bool>(false, true, false), 43172i, vec3<bool>(true, true, true)), Struct_1(vec3<i32>(9522i, 61325i, 17526i), vec3<bool>(false, false, false), -36074i, vec3<bool>(false, false, true)), Struct_1(vec3<i32>(0i, 0i, 21800i), vec3<bool>(false, false, true), 2147483647i, vec3<bool>(true, false, true)), Struct_1(vec3<i32>(2147483647i, 2147483647i, -55584i), vec3<bool>(false, false, false), -1959i, vec3<bool>(false, false, true)), Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), -14769i), vec3<bool>(false, false, false), i32(-2147483648), vec3<bool>(false, false, false)), Struct_1(vec3<i32>(1i, 23479i, 5630i), vec3<bool>(true, true, false), 0i, vec3<bool>(true, false, false)), Struct_1(vec3<i32>(2147483647i, -1i, i32(-2147483648)), vec3<bool>(false, false, false), 13687i, vec3<bool>(false, false, true)), Struct_1(vec3<i32>(34939i, 14865i, 15448i), vec3<bool>(true, false, true), -27518i, vec3<bool>(false, false, true)), Struct_1(vec3<i32>(-6430i, i32(-2147483648), 0i), vec3<bool>(true, true, false), i32(-2147483648), vec3<bool>(false, false, false)), Struct_1(vec3<i32>(1i, 30966i, -23810i), vec3<bool>(true, true, true), -1i, vec3<bool>(false, true, true)), Struct_1(vec3<i32>(2147483647i, 37574i, i32(-2147483648)), vec3<bool>(true, false, false), -1i, vec3<bool>(false, false, true)), Struct_1(vec3<i32>(1i, 0i, 1i), vec3<bool>(true, true, false), 0i, vec3<bool>(true, true, true)), Struct_1(vec3<i32>(12041i, -24151i, 13246i), vec3<bool>(false, true, true), 8401i, vec3<bool>(true, false, false)));

var<private> global1: array<vec4<u32>, 32> = array<vec4<u32>, 32>(vec4<u32>(1u, 4294967295u, 13605u, 1u), vec4<u32>(0u, 50797u, 20698u, 0u), vec4<u32>(14611u, 19956u, 4294967295u, 16979u), vec4<u32>(1u, 1u, 0u, 0u), vec4<u32>(16949u, 4294967295u, 4294967295u, 4832u), vec4<u32>(4294967295u, 1u, 0u, 4294967295u), vec4<u32>(12587u, 18636u, 1u, 1u), vec4<u32>(38098u, 4294967295u, 4294967295u, 29448u), vec4<u32>(61462u, 1u, 53979u, 94334u), vec4<u32>(13987u, 124358u, 3921u, 62417u), vec4<u32>(0u, 81693u, 4294967295u, 7519u), vec4<u32>(4294967295u, 1u, 1u, 31360u), vec4<u32>(14678u, 78667u, 50726u, 3265u), vec4<u32>(35743u, 4294967295u, 8780u, 0u), vec4<u32>(0u, 0u, 4294967295u, 0u), vec4<u32>(2300u, 0u, 8423u, 36412u), vec4<u32>(47001u, 1u, 0u, 1u), vec4<u32>(38403u, 4294967295u, 4294967295u, 0u), vec4<u32>(0u, 68846u, 42647u, 43042u), vec4<u32>(4890u, 10500u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 1u, 56328u, 58599u), vec4<u32>(35010u, 0u, 4294967295u, 0u), vec4<u32>(31536u, 9155u, 4294967295u, 6542u), vec4<u32>(7006u, 4294967295u, 4294967295u, 29282u), vec4<u32>(0u, 4294967295u, 11192u, 51787u), vec4<u32>(21390u, 40486u, 1u, 0u), vec4<u32>(50472u, 101366u, 4294967295u, 0u), vec4<u32>(36451u, 72949u, 34670u, 4294967295u), vec4<u32>(2336u, 0u, 4294967295u, 4294967295u), vec4<u32>(1u, 0u, 0u, 0u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 41302u), vec4<u32>(35818u, 26255u, 8009u, 44125u));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec4<u32>) -> u32 {
    var var_0 = vec4<bool>(!(~(u_input.c >> (u_input.d.x % 32u)) >= select(arg_1.a.x >> (1u % 32u), u_input.b.x, arg_1.b.x)), arg_1.d.x, arg_1.d.x, true);
    let var_1 = abs(1u);
    global1 = array<vec4<u32>, 32>();
    return ~4294967295u;
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<i32>, arg_2: bool) -> vec4<i32> {
    global0 = array<Struct_1, 14>();
    var var_0 = Struct_1(arg_1, vec3<bool>(1i <= _wgslsmith_dot_vec2_i32(-u_input.b, ~vec2<i32>(2147483647i, 1i)), true, arg_0.x), u_input.b.x, !arg_0.zyw);
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1201f * 357f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-189f * _wgslsmith_f_op_f32(-1686f - -1000f)) + _wgslsmith_div_f32(655f, _wgslsmith_f_op_f32(step(-1885f, 243f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1296f, -314f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(217f, -104f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1015f, -454f))) - _wgslsmith_div_vec2_f32(vec2<f32>(831f, 410f), vec2<f32>(1254f, -380f)))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1564f, -640f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-381f, 870f) + vec2<f32>(668f, -350f))))))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -105f), var_1.x))) + var_1.x), -485f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, -865f) * _wgslsmith_f_op_f32(293f - var_1.x)))), var_1.x);
    var var_3 = !select(arg_0, arg_0, any(select(!vec3<bool>(arg_2, arg_2, false), vec3<bool>(var_0.b.x, false, true), true)));
    return vec4<i32>(u_input.c, ~1i, abs(_wgslsmith_dot_vec2_i32(var_0.a.zy, u_input.b)), -u_input.b.x);
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_1) -> f32 {
    var var_0 = arg_2.a;
    var var_1 = Struct_1(select(vec3<i32>(arg_0, _wgslsmith_dot_vec3_i32(~arg_2.a, countOneBits(arg_2.a)), 84738i), max((vec3<i32>(-18332i, 25784i, u_input.b.x) & arg_2.a) ^ vec3<i32>(var_0.x, 19097i, arg_2.c), _wgslsmith_clamp_vec3_i32(arg_2.a, arg_2.a, vec3<i32>(var_0.x, arg_0, -25513i))), select(vec3<bool>(true, true, true), vec3<bool>(true, arg_2.b.x, arg_2.d.x || true), arg_1)), vec3<bool>(!arg_2.b.x, false, -(~(-2147483647i)) <= countOneBits(-arg_0)), -_wgslsmith_sub_i32(min(arg_2.c | -2147483647i, ~(-27956i)), 1818i), vec3<bool>(arg_1, !arg_2.d.x, -1i < _wgslsmith_add_i32(_wgslsmith_mod_i32(-2147483647i, var_0.x), -u_input.b.x)));
    var var_2 = select((vec3<i32>(-31699i, u_input.c, arg_2.c) & (vec3<i32>(var_0.x, -2147483647i, 1i) << (vec3<u32>(u_input.d.x, u_input.d.x, 7994u) % vec3<u32>(32u)))) | ~(arg_2.a ^ vec3<i32>(var_1.c, var_1.a.x, u_input.c)), vec3<i32>(_wgslsmith_div_i32(var_0.x, var_0.x), var_1.a.x, countOneBits(var_1.c)) & _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(arg_2.a, arg_2.a), _wgslsmith_sub_vec3_i32(vec3<i32>(-25306i, 1i, 9522i), vec3<i32>(var_1.c, u_input.a, arg_2.c))), true) ^ vec3<i32>(_wgslsmith_div_i32(max(14560i, 1i), firstTrailingBit(2147483647i)) & -16605i, ~40900i, -8508i);
    let var_3 = arg_2;
    var var_4 = Struct_1(~_wgslsmith_mod_vec3_i32(vec3<i32>(var_2.x, var_1.a.x, var_0.x), vec3<i32>(2147483647i, -14447i << (0u % 32u), -55436i | var_2.x)), arg_2.b, 24995i, select(var_1.b, vec3<bool>(arg_1, all(var_1.b), !arg_2.d.x), vec3<bool>(!(!arg_2.d.x), true, all(select(vec4<bool>(false, arg_1, arg_2.b.x, var_3.d.x), vec4<bool>(arg_2.b.x, false, true, arg_1), var_1.b.x)))));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1559f), -1000f)))))));
}

fn func_1(arg_0: u32) -> vec3<i32> {
    var var_0 = !vec3<bool>((4294967295u ^ _wgslsmith_div_u32(u_input.d.x, arg_0)) != u_input.d.x, true, any(vec2<bool>(true, true)));
    var var_1 = Struct_1(vec3<i32>(~(_wgslsmith_clamp_i32(15548i, u_input.c, 2147483647i) << (arg_0 % 32u)), -max(_wgslsmith_dot_vec3_i32(vec3<i32>(19438i, u_input.c, u_input.b.x), vec3<i32>(-22652i, 0i, u_input.b.x)), min(u_input.c, 25134i)), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-14935i, 2147483647i, -1i), vec3<i32>(u_input.a, 18290i, u_input.a)), ~vec3<i32>(u_input.b.x, u_input.a, u_input.b.x)), -(~vec3<i32>(u_input.b.x, u_input.b.x, -2147483647i)))), !vec3<bool>(_wgslsmith_f_op_f32(trunc(-228f)) > _wgslsmith_f_op_f32(ceil(1258f)), true, var_0.x), -2147483647i, select(vec3<bool>(var_0.x, func_2(vec3<u32>(13303u, u_input.d.x, 55963u), Struct_1(vec3<i32>(-1i, u_input.c, u_input.a), vec3<bool>(var_0.x, false, var_0.x), 1i, vec3<bool>(var_0.x, true, true)), global1[_wgslsmith_index_u32(35934u, 32u)]) > arg_0, any(vec4<bool>(true, false, true, var_0.x))), vec3<bool>(!var_0.x, any(vec3<bool>(var_0.x, var_0.x, var_0.x)) != (var_0.x & var_0.x), var_0.x), select(vec3<bool>(var_0.x, var_0.x | true, -2147483647i <= u_input.a), select(select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(false, true, var_0.x), vec3<bool>(var_0.x, var_0.x, false)), select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(false, false, false), vec3<bool>(true, var_0.x, false)), any(vec4<bool>(var_0.x, var_0.x, true, true))), vec3<bool>(true, var_0.x || var_0.x, var_0.x))));
    var var_2 = _wgslsmith_f_op_f32(func_4(-(~var_1.c), false, Struct_1(_wgslsmith_mult_vec3_i32(~vec3<i32>(1i, u_input.a, -2147483647i), vec3<i32>(var_1.a.x, u_input.c, 0i)), var_1.b, _wgslsmith_dot_vec4_i32(func_3(vec4<bool>(var_1.b.x, var_0.x, true, var_1.d.x), vec3<i32>(u_input.b.x, u_input.c, -1i), false), _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.c, var_1.c, u_input.b.x, u_input.c), vec4<i32>(2147483647i, var_1.c, u_input.c, 0i))), !(!var_1.b)))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-813f * 620f));
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~u_input.d.x), arg_0 << (1u % 32u)), 14u)];
    let var_4 = select(select(vec2<bool>(any(select(vec3<bool>(true, var_0.x, var_3.b.x), vec3<bool>(false, true, false), false)), true), select(var_3.b.xx, vec2<bool>(true, !var_3.b.x), (u_input.d.x | arg_0) <= _wgslsmith_sub_u32(0u, arg_0)), var_1.b.x), vec2<bool>(any(vec4<bool>(false, var_0.x, all(var_3.d), arg_0 > arg_0)), false), true);
    return abs(var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 14>();
    var var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(~u_input.b.x, u_input.a), _wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.a, u_input.b.x, u_input.a, u_input.c), vec4<i32>(-32075i, u_input.b.x, -1i, 1i), true), vec4<i32>(0i, -81230i, u_input.a, -23838i)), 8961i) | ~func_1(u_input.d.x), countOneBits(-vec3<i32>(1i, select(18123i, u_input.b.x, false), func_1(6643u).x)));
    var var_1 = vec4<i32>(u_input.b.x, u_input.a, abs(u_input.c), u_input.b.x);
    let var_2 = ~vec3<u32>(~u_input.d.x, u_input.d.x, u_input.d.x);
    let var_3 = global1[_wgslsmith_index_u32(~u_input.d.x, 32u)];
    let var_4 = u_input.d.x;
    global0 = array<Struct_1, 14>();
    let var_5 = func_2(countOneBits(~select(var_2, vec3<u32>(var_2.x, 31959u, var_4), vec3<bool>(true, false, false))), Struct_1(-(vec3<i32>(u_input.b.x, u_input.a, u_input.c) << (vec3<u32>(var_2.x, 0u, 40350u) % vec3<u32>(32u))), vec3<bool>(true, true, true), max(u_input.c, 65070i) >> (var_3.x % 32u), vec3<bool>(false, true, all(vec4<bool>(true, false, false, true)))), vec4<u32>(~(~24722u), firstTrailingBit(u_input.d.x), 1u | (u_input.d.x >> (var_2.x % 32u)), _wgslsmith_div_u32(select(0u, 6997u, false), _wgslsmith_clamp_u32(37481u, 30716u, u_input.d.x)))) << (max(var_2.x, var_3.x) % 32u);
    let var_6 = global0[_wgslsmith_index_u32(~1u, 14u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_6.a.x, vec4<f32>(1023f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(185f, 677f, true))))), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(var_1.x, var_6.b.x, Struct_1(var_6.a, var_6.b, -9302i, vec3<bool>(false, true, true)))) * 3029f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-219f + 100f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), -_wgslsmith_mult_vec3_i32(vec3<i32>(var_1.x, var_1.x | 0i, var_6.c), min(vec3<i32>(27340i, -2147483647i, var_6.c), vec3<i32>(-1i, 1i, -8413i))), vec4<i32>(~(-u_input.b.x) ^ -25017i, var_6.a.x, u_input.c, var_6.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1457f, 652f) + _wgslsmith_f_op_f32(sign(477f)))))));
}

