struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: u32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec2<bool>,
    d: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 11> = array<vec2<u32>, 11>(vec2<u32>(47619u, 18827u), vec2<u32>(26248u, 31654u), vec2<u32>(1u, 1u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 50840u), vec2<u32>(43499u, 43388u), vec2<u32>(4294967295u, 5538u), vec2<u32>(1u, 70684u), vec2<u32>(25552u, 4294967295u), vec2<u32>(1u, 1u), vec2<u32>(4154u, 1u));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_2) -> f32 {
    global0 = array<vec2<u32>, 11>();
    let var_0 = _wgslsmith_f_op_f32(-arg_0.a.x);
    var var_1 = vec4<u32>(abs(55980u), ~(~34171u), arg_0.b.x, reverseBits(arg_0.b.x));
    var var_2 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_0.a.x * -107f), arg_0.a.x, _wgslsmith_f_op_f32(ceil(-517f)))), vec3<u32>(arg_0.b.x, ~firstTrailingBit(arg_0.b.x), arg_0.b.x >> (_wgslsmith_clamp_u32(31627u, var_1.x, 4294967295u) % 32u)), !arg_0.c, select(arg_0.d, arg_0.d, true)), ~(32741u >> (1u % 32u)));
    return _wgslsmith_f_op_f32(max(arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(round(var_0)))))));
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: vec2<f32>) -> i32 {
    var var_0 = _wgslsmith_div_f32(arg_0.a.x, arg_2.x);
    var_0 = -1920f;
    let var_1 = 21862u;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(arg_0.a.x))))) + _wgslsmith_f_op_f32(func_3(arg_0)));
    var_0 = arg_2.x;
    return -firstLeadingBit(max(abs(2147483647i), _wgslsmith_sub_i32(u_input.a.x, -626i) | _wgslsmith_dot_vec2_i32(u_input.a.xy, vec2<i32>(-1i, 1i))));
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: u32) -> Struct_3 {
    var var_0 = -(25200i | -_wgslsmith_mod_i32(func_2(arg_0, false, arg_0.a.zx), 1i));
    var_0 = -_wgslsmith_div_i32(i32(-1i) * -2147483647i, u_input.a.x);
    var var_1 = Struct_1(arg_0.a.xz, true, ~firstLeadingBit(_wgslsmith_clamp_u32(~57106u, 74621u | arg_0.b.x, 0u >> (1u % 32u))), reverseBits(arg_0.b));
    var_0 = u_input.a.x;
    global0 = array<vec2<u32>, 11>();
    return Struct_3(arg_0, ~(_wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(arg_0.b.x, 11u)], _wgslsmith_add_vec2_u32(arg_0.b.xx, vec2<u32>(68952u, arg_1))) & abs(var_1.d.x)));
}

fn func_4(arg_0: Struct_3, arg_1: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(988f, _wgslsmith_f_op_f32(-func_1(Struct_2(vec3<f32>(896f, -832f, arg_0.a.a.x), arg_0.a.b, vec2<bool>(arg_1, arg_0.a.d.x), vec4<bool>(false, true, false, false)), arg_0.a.b.x, arg_0.b).a.a.x)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a.a.x), arg_0.a.a.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1056f))))))));
    var var_1 = _wgslsmith_add_vec3_i32(~u_input.a, ~vec3<i32>(-2147483647i, ~u_input.a.x, ~(-76327i))) & vec3<i32>(countOneBits(_wgslsmith_mult_i32(_wgslsmith_mod_i32(-730i, 776i), 0i)), -(~max(-17651i, u_input.a.x)), _wgslsmith_mod_i32(~(u_input.a.x | u_input.a.x), reverseBits(i32(-1i) * -37199i)));
    var var_2 = func_1(func_1(func_1(Struct_2(vec3<f32>(1651f, arg_0.a.a.x, arg_0.a.a.x), arg_0.a.b, func_1(Struct_2(vec3<f32>(269f, -757f, arg_0.a.a.x), arg_0.a.b, arg_0.a.c, vec4<bool>(false, arg_1, false, true)), arg_0.a.b.x, arg_0.a.b.x).a.c, select(arg_0.a.d, arg_0.a.d, vec4<bool>(arg_1, arg_0.a.c.x, true, arg_1))), 29043u, 80264u).a, ~1u, _wgslsmith_dot_vec3_u32(arg_0.a.b, arg_0.a.b)).a, _wgslsmith_div_u32(abs(_wgslsmith_mult_u32(reverseBits(1u), arg_0.a.b.x)), 22358u), 30634u);
    let var_3 = arg_0;
    var var_4 = func_1(Struct_2(_wgslsmith_f_op_vec3_f32(-var_2.a.a), abs(_wgslsmith_mult_vec3_u32(~var_3.a.b, var_3.a.b)), func_1(arg_0.a, arg_0.b, var_2.b).a.d.xx, arg_0.a.d), countOneBits(_wgslsmith_div_u32(~(var_3.a.b.x ^ var_3.a.b.x), var_2.b)), min(firstTrailingBit(~reverseBits(83465u)), arg_0.b)).a.d.wzw;
    return var_2.a.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(func_1(Struct_2(vec3<f32>(700f, -395f, -1000f), vec3<u32>(0u, 1u, 43363u), vec2<bool>(false, false), vec4<bool>(false, false, false, false)), ~(~0u), 1u), any(select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true)), vec4<bool>(false, true, false, false), true)))), _wgslsmith_f_op_f32(f32(-1f) * -1002f));
    var var_1 = Struct_3(Struct_2(func_1(Struct_2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, var_0, 699f))), vec3<u32>(36606u, 4294967295u, 30481u), vec2<bool>(true, true), vec4<bool>(true, false, true, false)), ~(~50101u), 11772u << (func_1(Struct_2(vec3<f32>(-382f, -949f, 1076f), vec3<u32>(39796u, 19209u, 0u), vec2<bool>(false, true), vec4<bool>(true, true, true, false)), 1u, 0u).a.b.x % 32u)).a.a, ~(~abs(vec3<u32>(29337u, 16102u, 4294967295u))), !vec2<bool>(select(true, true, false), all(vec2<bool>(true, false))), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), true), false)), 1u);
    var var_2 = func_1(Struct_2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_1.a.a))))), select(var_1.a.b, var_1.a.b, !var_1.a.d.zxw) >> (vec3<u32>(0u, ~0u, _wgslsmith_sub_u32(var_1.b, 1u)) % vec3<u32>(32u)), var_1.a.c, vec4<bool>(var_1.a.a.x > var_1.a.a.x, any(vec4<bool>(true, var_1.a.d.x, false, false)), -1459f != var_1.a.a.x, !(u_input.a.x > -1i))), var_1.b, ~_wgslsmith_clamp_u32(var_1.b, 14261u, ~firstLeadingBit(4294967295u)));
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(var_1.a.a + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-193f, 684f, -247f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-371f, var_2.a.a.x, var_0))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.a.a)))), ~(~_wgslsmith_mult_vec3_u32(func_1(var_2.a, 25477u, 276u).a.b, vec3<u32>(0u, 0u, var_1.a.b.x) ^ vec3<u32>(42573u, 0u, 32842u))), var_2.a.c, var_2.a.d);
    let var_4 = var_1.a.a;
    var var_5 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.a.a.xy, vec2<f32>(var_2.a.a.x, var_3.a.x))))) - vec2<f32>(_wgslsmith_f_op_f32(797f * _wgslsmith_div_f32(var_0, 380f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.x) - _wgslsmith_f_op_f32(abs(var_2.a.a.x))))), true, var_1.a.b.x, var_1.a.b);
    var var_6 = func_1(Struct_2(_wgslsmith_f_op_vec3_f32(var_3.a * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_2.a.a.x, -113f, var_2.a.a.x)))), func_1(var_1.a, 28343u, var_5.c).a.b, !var_2.a.d.wy, !var_3.d), var_2.a.b.x, var_1.a.b.x).a.a;
    var_2 = func_1(var_3, 0u, ~4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~max(vec3<u32>(38431u, var_3.b.x, var_5.d.x), vec3<u32>(4294967295u, var_1.b, var_1.a.b.x)))), -2147483647i, vec4<i32>(-_wgslsmith_add_i32(0i, 1i), -u_input.a.x, _wgslsmith_div_i32(_wgslsmith_mod_i32(2870i, u_input.a.x), _wgslsmith_mult_i32(u_input.a.x, u_input.a.x)), -2057i) & firstLeadingBit(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(-28390i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1i)))), max(~u_input.a.x, -func_2(Struct_2(vec3<f32>(1172f, 756f, 231f), vec3<u32>(73115u, var_1.b, 0u), vec2<bool>(true, var_1.a.d.x), vec4<bool>(true, var_5.b, var_1.a.d.x, var_2.a.c.x)), var_2.a.c.x, var_2.a.a.xy)) ^ (-func_2(var_3, false, vec2<f32>(var_1.a.a.x, 966f)) ^ _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, -14939i), vec2<i32>(-29335i, 30163i)), vec2<i32>(u_input.a.x, u_input.a.x))), var_4.x);
}

