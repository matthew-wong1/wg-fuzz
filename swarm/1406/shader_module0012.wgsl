struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: vec3<bool>,
    d: vec4<bool>,
    e: f32,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
    c: Struct_2,
    d: vec2<f32>,
}

struct Struct_4 {
    a: bool,
    b: vec4<u32>,
    c: f32,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    var var_0 = abs(abs(17661u));
    var var_1 = Struct_4(u_input.a <= (1u >> ((52010u >> ((4294967295u >> (u_input.b % 32u)) % 32u)) % 32u)), ~(~_wgslsmith_div_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.b, u_input.a), vec4<u32>(0u, u_input.a, u_input.b, u_input.a))), _wgslsmith_f_op_f32(f32(-1f) * -182f), Struct_1(!select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(-17806i, u_input.c, u_input.c)), reverseBits(firstLeadingBit(vec3<i32>(7842i, 8093i, 23130i))), vec3<bool>(select(true, false, false), any(vec3<bool>(true, false, true)), true)), !(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false))), !vec4<bool>(true, u_input.c == 49467i, true, false), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1343f)), _wgslsmith_f_op_f32(986f + -1389f))))), Struct_2(3284f, _wgslsmith_f_op_f32(step(-1104f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(779f, -1059f)))))));
    let var_2 = select(vec4<bool>(false, false, false, false), !select(vec4<bool>(false, true, true, false), select(select(vec4<bool>(true, var_1.a, true, var_1.d.c.x), vec4<bool>(var_1.d.c.x, false, true, var_1.d.a.x), var_1.d.c.x), var_1.d.d, false), !select(vec4<bool>(true, var_1.a, var_1.a, false), var_1.d.d, vec4<bool>(var_1.d.a.x, true, true, true))), var_1.d.d.x);
    var_1 = Struct_4(var_1.a, ~abs(~var_1.b & (var_1.b << (var_1.b % vec4<u32>(32u)))), 197f, var_1.d, var_1.e);
    var_1 = Struct_4(!any(var_2.zxw), reverseBits(vec4<u32>(_wgslsmith_clamp_u32(abs(1u), max(var_1.b.x, u_input.b), 103425u & var_1.b.x), ~910u, ~select(17424u, 1u, var_1.d.c.x), ~u_input.b)), var_1.d.e, var_1.d, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-145f, var_1.d.e), _wgslsmith_f_op_f32(-var_1.d.e)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(674f * var_1.c), 1341f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(625f)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.d.e))), var_1.e.a), -551f));
}

fn func_2(arg_0: vec4<u32>) -> vec3<i32> {
    let var_0 = Struct_2(1917f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3()), 1f, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)) != all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), false)))));
    global0 = true;
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.b, -1000f, var_0.b)))))));
    var var_2 = Struct_4(31520u > abs(~36151u << ((arg_0.x << (arg_0.x % 32u)) % 32u)), arg_0, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1659f * -1000f))), 1345f, (min(u_input.c, 6617i) >= ~u_input.c) || true)), Struct_1(vec2<bool>(true, true), _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_div_i32(20409i, u_input.c), ~(-36809i), -u_input.c), ~countOneBits(vec3<i32>(0i, u_input.c, u_input.c))), select(vec3<bool>(true, true, false), !select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), true), vec4<bool>(true, u_input.b != u_input.b, true, true), -191f), Struct_2(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(-811f * _wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))));
    var var_3 = var_2.d.d.zy;
    return vec3<i32>(-1i, u_input.c, firstLeadingBit(-abs(var_2.d.b.x)));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1) -> bool {
    var var_0 = !arg_1.d.x;
    let var_1 = arg_1;
    var var_2 = Struct_3(vec2<f32>(arg_1.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-736f * _wgslsmith_f_op_f32(abs(224f))))), _wgslsmith_div_f32(var_1.e, 590f), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.e + 756f), arg_1.e)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + 509f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(154f, -173f) * vec2<f32>(-135f, var_1.e))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1554f, -203f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(140f, -952f) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1346f, -944f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.e, var_1.e)))), any(!(!arg_1.c.xx)))));
    var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1407f, arg_1.e)), -1704f, Struct_2(-255f, _wgslsmith_f_op_f32(min(2519f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.d.x * -106f), arg_1.e)))), _wgslsmith_f_op_vec2_f32(var_2.d + _wgslsmith_f_op_vec2_f32(exp2(var_2.d))));
    var var_3 = _wgslsmith_mod_i32(48712i, _wgslsmith_div_i32(-max(20404i ^ u_input.c, _wgslsmith_div_i32(0i, 3976i)), var_1.b.x));
    return !(true | var_1.c.x);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<i32>) -> bool {
    return select(true, func_4(func_2(~vec4<u32>(u_input.a, u_input.b, 1u, 4294967295u)), Struct_1(vec2<bool>(true, false), arg_0 | vec3<i32>(-1i, 6958i, 2147483647i), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false)), _wgslsmith_f_op_f32(-183f * 399f))), false) && (min(u_input.c, countOneBits(select(arg_0.x, arg_1.x, true))) <= 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(false, firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.a, ~0u, 24948u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.b), countOneBits(vec4<u32>(693u, 4294967295u, 66595u, 23926u))))), _wgslsmith_f_op_f32(f32(-1f) * -726f), Struct_1(vec2<bool>(any(vec3<bool>(true, false, false)), false), max(~vec3<i32>(-27056i, u_input.c, 1i), vec3<i32>(u_input.c, 1i, -2147483647i) << (vec3<u32>(u_input.a, u_input.b, u_input.a) % vec3<u32>(32u))) ^ (vec3<i32>(u_input.c, u_input.c, u_input.c) | (vec3<i32>(u_input.c, u_input.c, -1i) & vec3<i32>(u_input.c, u_input.c, u_input.c))), vec3<bool>(u_input.a >= _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, u_input.a, 4294967295u), vec4<u32>(1499u, 1u, u_input.a, u_input.a)), !(u_input.b < u_input.a), func_1(vec3<i32>(u_input.c, 20235i, 1i), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(0i, u_input.c)))), vec4<bool>(true, true, true, true), 744f), Struct_2(_wgslsmith_f_op_f32(496f * 144f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-744f, -784f, false)), _wgslsmith_f_op_f32(f32(-1f) * -1248f))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d.b.x, _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(-func_2(vec4<u32>(54947u, 49910u, 4294967295u, var_0.b.x)), vec3<i32>(1i, func_2(var_0.b).x, min(var_0.d.b.x, u_input.c))), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, var_0.d.b.x, var_0.d.b.x), vec3<i32>(2147483647i, u_input.c, u_input.c) & vec3<i32>(1i, -1i, -2147483647i)), -_wgslsmith_dot_vec3_i32(var_0.d.b, vec3<i32>(var_0.d.b.x, var_0.d.b.x, 10719i)), var_0.d.b.x)), reverseBits(_wgslsmith_div_vec2_u32((var_0.b.yz ^ var_0.b.zy) | ~vec2<u32>(var_0.b.x, 11274u), vec2<u32>(34962u, 96384u))), ~reverseBits(~select(vec4<i32>(2147483647i, 0i, u_input.c, -2147483647i), vec4<i32>(13431i, u_input.c, 2928i, 34148i), false)), firstLeadingBit(u_input.b));
}

