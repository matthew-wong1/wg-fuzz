struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec3<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: f32, arg_3: u32) -> f32 {
    let var_0 = select(select(select(vec3<bool>(!arg_1.b.x, false && arg_0.b, !arg_0.b), select(arg_1.b, select(arg_1.b, vec3<bool>(arg_1.b.x, arg_0.b, true), arg_1.b), vec3<bool>(true, false, true)), select(!vec3<bool>(false, arg_0.b, arg_1.b.x), vec3<bool>(false, arg_1.b.x, true), 1842f > arg_0.a.x)), vec3<bool>(arg_0.b, false, any(arg_1.b)), vec3<bool>(any(vec4<bool>(true, true, arg_1.b.x, arg_0.b)), true, false)), !(!select(select(vec3<bool>(false, arg_1.b.x, arg_0.b), vec3<bool>(false, arg_1.b.x, arg_1.b.x), arg_1.b.x), select(arg_1.b, arg_1.b, arg_1.b.x), arg_1.b)), vec3<bool>(!all(arg_1.b), false, !(arg_0.b || true)));
    var var_1 = vec3<bool>(!all(select(vec4<bool>(false, arg_0.b, false, false), !vec4<bool>(false, true, arg_1.b.x, true), true)), false & arg_1.b.x, false);
    var_1 = vec3<bool>(false, var_0.x, any(select(!vec2<bool>(arg_0.b, var_1.x), select(var_1.zx, vec2<bool>(true, false), any(arg_1.b.zy)), !(true && arg_1.b.x))));
    let var_2 = -u_input.c.yzy;
    var var_3 = Struct_2(arg_0);
    return _wgslsmith_f_op_f32(abs(1129f));
}

fn func_2(arg_0: vec2<f32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-586f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(vec4<f32>(-1014f, 1163f, 1113f, -957f), false), Struct_3(1u, vec3<bool>(true, true, true)), arg_0.x, 14666u)))), _wgslsmith_f_op_f32(floor(-1207f)))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-954f, -855f, var_0.x, var_0.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.x, 178f, -568f, 1917f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, -1318f, var_0.x) - vec4<f32>(var_0.x, var_0.x, 536f, var_0.x)))), true));
    var var_2 = max(_wgslsmith_add_vec2_u32(vec2<u32>(1u, min(0u, 1u)), ~(~abs(vec2<u32>(65013u, 89396u)))), firstLeadingBit(max(vec2<u32>(1u, 1u), abs(~vec2<u32>(1u, 0u)))));
    let var_3 = countOneBits(_wgslsmith_mod_vec3_i32(abs(-select(vec3<i32>(-26232i, 2793i, u_input.c.x), u_input.c.zwx, var_1.a.b)), -u_input.d.zxy));
    var_2 = max(select(_wgslsmith_div_vec2_u32(vec2<u32>(var_2.x, var_2.x) ^ vec2<u32>(4294967295u, var_2.x), reverseBits(vec2<u32>(18025u, var_2.x))), vec2<u32>(var_2.x, ~59287u), abs(var_2.x) <= max(var_2.x, 19852u)) >> (_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(reverseBits(vec2<u32>(var_2.x, var_2.x)), select(vec2<u32>(29414u, 14897u), vec2<u32>(var_2.x, 9695u), vec2<bool>(true, var_1.a.b))), select(abs(vec2<u32>(var_2.x, 4294967295u)), vec2<u32>(4294967295u, 4294967295u) & vec2<u32>(var_2.x, 13023u), var_1.a.b)) % vec2<u32>(32u)), ~vec2<u32>(var_2.x ^ var_2.x, ~3811u) << (firstLeadingBit(max(countOneBits(vec2<u32>(0u, 1u)), _wgslsmith_div_vec2_u32(vec2<u32>(4180u, var_2.x), vec2<u32>(var_2.x, var_2.x)))) % vec2<u32>(32u)));
    return Struct_3(_wgslsmith_add_u32(~var_2.x, ~_wgslsmith_mult_u32(1u, 1u) | var_2.x), !select(select(select(vec3<bool>(var_1.a.b, true, var_1.a.b), vec3<bool>(var_1.a.b, var_1.a.b, false), var_1.a.b), select(vec3<bool>(var_1.a.b, var_1.a.b, false), vec3<bool>(var_1.a.b, true, var_1.a.b), false), select(vec3<bool>(var_1.a.b, var_1.a.b, false), vec3<bool>(var_1.a.b, var_1.a.b, true), true)), vec3<bool>(var_1.a.b, all(vec4<bool>(true, var_1.a.b, var_1.a.b, true)), true), !(!vec3<bool>(false, var_1.a.b, true))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_3) -> Struct_1 {
    var var_0 = arg_0.a;
    var_0 = abs(arg_2.a);
    var_0 = ~35750u;
    var var_1 = func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.a.x, arg_1.a.a.x) - vec2<f32>(-1406f, 1932f))))))));
    let var_2 = -1205f;
    return arg_1.a;
}

fn func_5(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    global0 = _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(reverseBits(1u), 12022u, ~_wgslsmith_clamp_u32(1u, 4294967295u, 0u), 1u)), vec4<u32>(~abs(_wgslsmith_mult_u32(80152u, 1u)), 74173u, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), ~_wgslsmith_div_u32(4157u, 1u)), ~(~(~20873u))));
    var var_0 = Struct_3(~1348u, vec3<bool>(arg_0.b, true, true));
    global0 = ~56668u;
    global0 = ~_wgslsmith_div_u32(_wgslsmith_div_u32(func_2(_wgslsmith_div_vec2_f32(vec2<f32>(971f, 1042f), arg_0.a.yy)).a, 19962u), ~24200u);
    return Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-778f, arg_0.a.x, arg_0.b)) - -174f), _wgslsmith_f_op_f32(f32(-1f) * -722f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1167f, arg_0.a.x) - arg_0.a.x), arg_0.a.x) + _wgslsmith_f_op_vec4_f32(arg_0.a - arg_0.a)), (_wgslsmith_dot_vec4_i32(u_input.d ^ u_input.c, u_input.c) <= -2147483647i) || select(arg_0.b, !arg_0.b || (var_0.b.x & var_0.b.x), arg_0.b));
}

fn func_1(arg_0: bool) -> vec4<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(728f, -390f, 1632f, 898f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(782f, 364f, -1000f, -729f))))), false);
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(var_0.a.yx));
    var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-617f)))), var_0.a.x) - _wgslsmith_f_op_vec2_f32(-var_0.a.xx));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a.xx), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(-1052f)), -253f))));
    var var_2 = func_5(func_4(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.xy))), Struct_2(Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(1014f, 1409f, -406f, 344f), var_0.a), arg_0 && var_0.b)), Struct_3(countOneBits(1u), func_2(vec2<f32>(592f, var_1.x)).b)), -10949i);
    return select(select(!select(vec4<bool>(var_0.b, var_0.b, var_0.b, arg_0), vec4<bool>(true, var_2.b, var_0.b, true), select(vec4<bool>(var_0.b, true, true, var_2.b), vec4<bool>(var_0.b, arg_0, false, arg_0), vec4<bool>(false, var_2.b, false, var_0.b))), !select(select(vec4<bool>(true, var_0.b, false, false), vec4<bool>(false, true, arg_0, true), vec4<bool>(false, false, true, var_0.b)), !vec4<bool>(false, var_0.b, true, false), func_4(Struct_3(5534u, vec3<bool>(true, true, false)), Struct_2(Struct_1(var_0.a, arg_0)), Struct_3(1u, vec3<bool>(true, var_0.b, true))).b), select(vec4<bool>(arg_0 | var_0.b, var_2.b && arg_0, true, any(vec3<bool>(var_2.b, var_0.b, arg_0))), vec4<bool>(!arg_0, true, true, false), vec4<bool>(var_2.b, true & var_2.b, true, true))), select(select(vec4<bool>(false, var_2.b, true, !var_0.b), !vec4<bool>(var_0.b, var_0.b, true, false), !var_2.b), vec4<bool>(arg_0, !arg_0, true, true), select(select(select(vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(var_0.b, arg_0, false, false), false), select(vec4<bool>(arg_0, false, true, arg_0), vec4<bool>(var_0.b, arg_0, arg_0, var_0.b), vec4<bool>(true, var_0.b, false, false)), func_2(var_0.a.yx).b.x), vec4<bool>(false, false, false, func_2(vec2<f32>(765f, var_1.x)).b.x), true)), vec4<bool>(arg_0, var_2.b, true, var_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(select(vec4<bool>(true, any(vec3<bool>(false, false, true)), any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true))), true), !func_1(true), select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true)), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, func_2(vec2<f32>(-367f, -135f)).b.x, true), all(func_2(vec2<f32>(600f, 1037f)).b))));
    let var_1 = Struct_3(1u, vec3<bool>(true, any(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(507f, -250f))).b.xz), !(!select(true, false, true))));
    var var_2 = 7578u >> (~(~var_1.a) % 32u);
    var var_3 = u_input.c.zww;
    var var_4 = max(_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.a, abs(~var_1.a), 1u), _wgslsmith_clamp_vec3_u32(~vec3<u32>(16514u, var_1.a, var_1.a), ~vec3<u32>(44815u, 56703u, 105912u), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, var_1.a, var_1.a), vec3<u32>(4294967295u, var_1.a, 11006u), vec3<u32>(var_1.a, 17937u, var_1.a))) >> (vec3<u32>(0u, 1u >> (var_1.a % 32u), _wgslsmith_div_u32(4294967295u, var_1.a)) % vec3<u32>(32u))), select(~(~(~vec3<u32>(39513u, 29894u, 1u))), vec3<u32>(var_1.a, var_1.a, 0u), false));
    var_4 = ~vec3<u32>(var_1.a, ~(~_wgslsmith_add_u32(1u, 25912u)), select(4294967295u, _wgslsmith_mult_u32(_wgslsmith_sub_u32(var_4.x, 0u), 1u), all(func_2(vec2<f32>(1000f, 590f)).b.yy)));
    var_3 = u_input.d.yyz;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a, _wgslsmith_div_i32(-2147483647i, ~(~_wgslsmith_div_i32(u_input.a, -69565i))), vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(u_input.d.wz, vec2<i32>(-2147483647i, u_input.a)), ~1i, _wgslsmith_sub_i32(2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-28019i, 1i), vec2<i32>(-1i, -27811i)))), _wgslsmith_dot_vec3_i32(u_input.c.wzw, -_wgslsmith_sub_vec3_i32(u_input.d.wzy, vec3<i32>(u_input.c.x, -9227i, u_input.b.x)))), vec3<f32>(1f, 1f, 1f), firstLeadingBit(vec4<i32>(_wgslsmith_div_i32(countOneBits(u_input.b.x), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, var_3.x), vec2<i32>(-55053i, var_3.x))), 6284i, _wgslsmith_add_i32(u_input.a, -2147483647i), 1i)));
}

