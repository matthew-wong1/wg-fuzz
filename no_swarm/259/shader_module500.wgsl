struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: f32,
    e: u32,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
    c: vec4<bool>,
    d: vec4<u32>,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec4<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(4294967295u, 44998u, 0u);

var<private> global1: vec4<u32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: f32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(arg_3 * arg_3), -1122f, _wgslsmith_f_op_f32(select(969f, 1112f, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_3, 187f, 152f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-322f, 1357f, -298f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, 294f, arg_3))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3, arg_3, -232f) - vec3<f32>(-514f, arg_3, arg_3)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, -172f, -1000f)), select(false, false, true))))));
    let var_1 = Struct_3(44010i, !(!select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), false)), select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), false)), vec4<bool>(true, true, any(vec4<bool>(false, true, false, true)), any(vec3<bool>(false, true, false))), vec4<bool>(true, all(vec3<bool>(true, true, true)), true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, -433f == var_0.x), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), arg_2 != arg_2)), select(vec4<bool>(true, u_input.c.x <= u_input.a.x, true, any(vec4<bool>(false, true, true, false))), vec4<bool>(all(vec2<bool>(false, false)), true, any(vec3<bool>(true, true, false)), select(true, false, true)), true)), ~vec4<u32>(~(arg_1.a >> (arg_0.a % 32u)), arg_2, 4294967295u, global1.x), u_input.a.x);
    let var_2 = select(select(vec4<bool>(true, var_1.b.x, true, var_1.c.x), var_1.c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(round(var_0.x)), all(var_1.b))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), vec4<bool>(var_1.c.x, true, !(-565f > _wgslsmith_div_f32(arg_3, -1277f)), var_1.e < _wgslsmith_mult_i32(~(-2147483647i), var_1.a)), var_1.c);
    global1 = var_1.d;
    let var_3 = Struct_3(0i, vec2<bool>(true, var_2.x & var_2.x), !vec4<bool>(var_2.x, _wgslsmith_clamp_i32(9582i, u_input.a.x, -45042i) <= -u_input.b.x, (-115f > var_0.x) | var_2.x, !(var_0.x == var_0.x)), ~(~var_1.d), u_input.c.x);
    return _wgslsmith_dot_vec3_i32(firstLeadingBit(_wgslsmith_mult_vec3_i32(abs(vec3<i32>(var_3.a, 20003i, -1i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, var_3.a, var_1.a), _wgslsmith_sub_vec3_i32(u_input.a, u_input.a), vec3<i32>(u_input.a.x, -1i, -1i)))), u_input.a);
}

fn func_2(arg_0: vec4<u32>) -> i32 {
    return func_3(Struct_1(1u), Struct_1(abs(global1.x)), arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1211f), 165f, all(vec3<bool>(false, false, false)))))));
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: vec3<u32>, arg_3: Struct_3) -> vec4<u32> {
    global0 = _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(global1.yxw, vec3<u32>(arg_3.d.x, 30192u, 23023u)), arg_3.d.xxz), global1.zzw), ~(~abs(arg_3.d.yyy))) >> ((global1.xwy ^ arg_3.d.zyy) % vec3<u32>(32u));
    let var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-692f - arg_0), -456f, !arg_3.b.x)), _wgslsmith_f_op_f32(sign(770f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2136f + arg_0) * arg_0), arg_0) * vec4<f32>(arg_0, _wgslsmith_div_f32(arg_0, arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-264f, arg_0))), 451f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 616f, 1272f, arg_0)))))) - vec4<f32>(-208f, 918f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(1346f)), _wgslsmith_f_op_f32(f32(-1f) * -874f), arg_3.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -1696f)))));
    global0 = select(vec3<u32>(~(6683u ^ arg_3.d.x), _wgslsmith_div_u32(~50337u, 52794u), abs(abs(arg_3.d.x))), select(abs(firstTrailingBit(arg_3.d.zxz)), ~(~vec3<u32>(global1.x, global0.x, global0.x)), arg_3.c.x), !select(select(vec3<bool>(true, arg_3.c.x, true), vec3<bool>(true, arg_3.c.x, true), false), arg_3.c.zzx, 1752f > var_0.x)) >> (~max(arg_2, arg_3.d.yzz) % vec3<u32>(32u));
    let var_1 = Struct_2(Struct_1(global0.x), -_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(firstLeadingBit(u_input.a), ~vec3<i32>(-2147483647i, 51103i, -8657i), _wgslsmith_div_vec3_i32(u_input.a, u_input.a)), select(max(u_input.a, u_input.a), -vec3<i32>(21291i, 13078i, arg_3.e), arg_3.c.zww)), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(711f - 457f)))), ~reverseBits(98598u));
    let var_2 = ~vec4<u32>(_wgslsmith_div_u32(0u, arg_3.d.x), ~abs(11732u), arg_3.d.x, ~arg_3.d.x);
    return vec4<u32>(arg_3.d.x, _wgslsmith_add_u32(~0u, var_2.x), abs(var_1.e), _wgslsmith_add_u32(select(4294967295u, ~(~1u), true), ~(~(~1u))));
}

fn func_1(arg_0: i32, arg_1: vec3<u32>, arg_2: f32) -> i32 {
    global1 = func_4(_wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 + arg_2) - _wgslsmith_f_op_f32(1000f + arg_2)))), 1885i, select(~(~(~arg_1)), _wgslsmith_mult_vec3_u32(vec3<u32>(global1.x, 66840u ^ global0.x, select(arg_1.x, 50185u, true)), vec3<u32>(~21656u, arg_1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, global1.x), vec2<u32>(global0.x, global1.x)))), (-1i > func_2(vec4<u32>(global0.x, 49880u, 1u, 45770u))) & true), Struct_3(u_input.b.x, !(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false))), select(vec4<bool>(true, arg_2 <= -131f, false, true), vec4<bool>(true, 12715u >= global1.x, true, true), true), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(global1.x, global1.x, global0.x, 23952u), vec4<u32>(1u, 48770u, 74699u, global1.x))), arg_0));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-554f * _wgslsmith_f_op_f32(arg_2 - -1796f)));
    var var_1 = Struct_2(Struct_1(15716u), u_input.a.x, any(select(vec2<bool>(true, true), vec2<bool>(true, select(false, false, true)), true)), arg_2, ~func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - _wgslsmith_f_op_f32(abs(626f))), -countOneBits(u_input.c.x), ~arg_1, Struct_3(-2147483647i | u_input.c.x, select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), false), _wgslsmith_add_vec4_u32(vec4<u32>(global0.x, global0.x, 86426u, 4294967295u), vec4<u32>(arg_1.x, 49438u, 37736u, global1.x)), i32(-1i) * -12064i)).x);
    global1 = vec4<u32>(select(~(0u >> (var_1.a.a % 32u)), ~_wgslsmith_mod_u32(global0.x, var_1.a.a), false), global0.x, firstTrailingBit(arg_1.x), 0u) >> (vec4<u32>(abs(global1.x), ~_wgslsmith_dot_vec4_u32(max(vec4<u32>(global1.x, arg_1.x, 11432u, arg_1.x), vec4<u32>(56750u, 9907u, var_1.a.a, 4294967295u)), ~vec4<u32>(1u, 1u, 3811u, 0u)), var_1.a.a, abs(~(global1.x | global0.x))) % vec4<u32>(32u));
    var var_2 = Struct_2(Struct_1(~global0.x), 2147483647i, abs(max(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, u_input.c.x), u_input.b), i32(-1i) * -8077i)) > arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -719f)))) * var_1.d), var_1.a.a);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_i32(-u_input.b.x, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(32734i, u_input.c.x), u_input.c), -vec2<i32>(2147483647i, 5924i)), ~vec2<i32>(u_input.b.x, u_input.c.x) | -u_input.b) ^ _wgslsmith_mult_i32(u_input.b.x | -2147483647i, abs(-u_input.c.x)), firstLeadingBit(func_1(~_wgslsmith_dot_vec2_i32(vec2<i32>(15653i, 0i), u_input.b), ~global1.www, -1682f)));
    let var_1 = Struct_2(Struct_1(_wgslsmith_sub_u32(global0.x << (~global1.x % 32u), ~_wgslsmith_dot_vec2_u32(global0.zy, vec2<u32>(1u, global0.x)))), abs(_wgslsmith_div_i32(u_input.c.x, _wgslsmith_dot_vec2_i32(u_input.b, max(vec2<i32>(0i, -2147483647i), u_input.a.xy)))), -1198f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-504f))))), -420f, _wgslsmith_add_u32(global1.x, global1.x));
    global1 = vec4<u32>(global0.x, ~1979u, var_1.a.a, 1u);
    var_0 = 69759i;
    var var_2 = var_1.d < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.d)) * 591f), -1401f, var_1.c || var_1.c))));
    global1 = _wgslsmith_sub_vec4_u32(vec4<u32>(firstLeadingBit(~var_1.e << (~var_1.e % 32u)), _wgslsmith_mult_u32(abs(var_1.a.a), abs(7836u)), 20658u, ~_wgslsmith_mod_u32(var_1.e << (global0.x % 32u), ~var_1.e)), select(vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(79019u, 39445u), 20072u << (global1.x % 32u)), 29481u, _wgslsmith_mod_u32(global0.x, _wgslsmith_mod_u32(var_1.a.a, 1u)), global0.x), vec4<u32>(firstLeadingBit(select(4294967295u, global0.x, var_1.c)), 4294967295u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 1u, var_1.e), vec4<u32>(1u, 0u, var_1.e, global1.x)), 55247u), select(!select(vec4<bool>(var_1.c, false, var_1.c, var_1.c), vec4<bool>(var_1.c, var_1.c, var_1.c, true), vec4<bool>(false, var_1.c, var_1.c, true)), select(!vec4<bool>(false, var_1.c, false, false), vec4<bool>(var_1.c, var_1.c, var_1.c, var_1.c), global0.x > global1.x), !select(vec4<bool>(var_1.c, var_1.c, true, true), vec4<bool>(true, var_1.c, true, var_1.c), vec4<bool>(var_1.c, var_1.c, false, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec2<u32>(global1.x & global1.x, _wgslsmith_mult_u32(var_1.a.a, var_1.a.a))), max(vec4<i32>(_wgslsmith_dot_vec2_i32(-u_input.b, reverseBits(u_input.b)), -1i, select(_wgslsmith_mod_i32(u_input.b.x, u_input.c.x), _wgslsmith_sub_i32(-1i, -1i), true), select(i32(-1i) * -1i, 33397i, var_1.c)), vec4<i32>(-1i) * -abs(vec4<i32>(var_1.b, 5242i, u_input.a.x, 0i))), ~(abs(~vec4<u32>(0u, 0u, 12984u, 1731u)) & _wgslsmith_mult_vec4_u32(vec4<u32>(1u, global0.x, global1.x, 0u), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 18329u, global0.x, 1u), vec4<u32>(4294967295u, var_1.e, global0.x, 24204u)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1534f), var_1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(var_1.d)), _wgslsmith_f_op_f32(var_1.d * var_1.d)))), _wgslsmith_f_op_f32(step(1281f, 319f))), _wgslsmith_mod_vec2_u32(select(countOneBits(vec2<u32>(var_1.a.a, var_1.e)), global0.xx, !var_1.c) ^ vec2<u32>(var_1.e, var_1.a.a), max(global1.wz, (vec2<u32>(global0.x, 86110u) << (vec2<u32>(62116u, global0.x) % vec2<u32>(32u))) ^ _wgslsmith_sub_vec2_u32(global1.zx, global0.zz))));
}

