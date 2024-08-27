struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: bool,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec2<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: vec4<i32>, arg_1: f32, arg_2: i32) -> vec2<i32> {
    let var_0 = Struct_2(arg_0.ww, _wgslsmith_sub_u32(abs(~select(5684u, 22081u, false)), 1u), min(vec3<u32>(50166u, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(30631u, 31980u, 4294967295u), ~60553u, _wgslsmith_dot_vec2_u32(vec2<u32>(19968u, 1u), vec2<u32>(4294967295u, 0u))), 1u), vec3<u32>(~_wgslsmith_mult_u32(22651u, 1u), 0u, abs(min(14234u, 47346u)))), (i32(-1i) * -arg_2) >= -6719i, _wgslsmith_div_vec4_f32(vec4<f32>(arg_1, _wgslsmith_f_op_f32(-arg_1), 2153f, _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(f32(-1f) * -1021f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.x, arg_1, 1000f, 1202f))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.x, -881f, -336f, -1003f)))))));
    var var_1 = Struct_3(var_0.c.zx);
    let var_2 = Struct_3(_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(var_0.c.xz | ~vec2<u32>(var_1.a.x, 88685u), ~var_1.a), var_1.a, _wgslsmith_clamp_vec2_u32(var_0.c.xx, max(var_1.a, vec2<u32>(26448u, 4294967295u)), ~vec2<u32>(1u, var_1.a.x)) ^ ~(vec2<u32>(91714u, var_1.a.x) >> (vec2<u32>(1u, 29160u) % vec2<u32>(32u)))));
    var_1 = Struct_3(~(~_wgslsmith_mult_vec2_u32(~vec2<u32>(28357u, var_0.c.x), var_0.c.zz)));
    var var_3 = !vec4<bool>(any(!select(vec4<bool>(false, var_0.d, true, var_0.d), vec4<bool>(var_0.d, var_0.d, var_0.d, var_0.d), false)), false | var_0.d, false, false);
    return var_0.a;
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: bool) -> Struct_1 {
    global0 = !((firstTrailingBit(arg_0.b) <= ~8668u) != all(vec2<bool>(true, true)));
    return Struct_1(arg_2);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_2 {
    return Struct_2(vec2<i32>(i32(-1i) * -(~u_input.a), i32(-1i) * -(u_input.a ^ -10987i)), ~1u, vec3<u32>(65659u, 4294967295u, _wgslsmith_div_u32(_wgslsmith_clamp_u32(8479u, abs(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 6038u, 0u), vec4<u32>(44505u, 1u, 0u, 42830u))), 61062u)), true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0, -1359f, -346f, arg_0), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, global1.x, arg_0, 303f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, 266f, global1.x))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(f32(-1f) * -1425f), 122f, arg_0))));
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    var var_0 = func_3(Struct_2(vec2<i32>(min(u_input.a, _wgslsmith_mod_i32(arg_0.a.x, 2147483647i)), -firstLeadingBit(-37774i)), _wgslsmith_add_u32(11802u, ~arg_0.c.x | ~arg_0.b), arg_0.c, func_3(arg_0, firstTrailingBit(vec4<i32>(4814i, arg_0.a.x, 33872i, -1i)), func_4(_wgslsmith_f_op_f32(f32(-1f) * -143f), Struct_1(true), firstLeadingBit(vec3<i32>(u_input.a, arg_0.a.x, 0i))).d).a, arg_0.e), abs(vec4<i32>(func_4(_wgslsmith_f_op_f32(max(1184f, -499f)), Struct_1(arg_0.d), firstLeadingBit(vec3<i32>(2147483647i, 2147483647i, arg_0.a.x))).a.x, abs(countOneBits(2147483647i)), arg_0.a.x, _wgslsmith_sub_i32(-2147483647i, 0i) | arg_0.a.x)), true);
    global1 = arg_0.e.wz;
    var var_1 = func_3(Struct_2(arg_0.a, _wgslsmith_mult_u32(~select(14633u, 698u, arg_0.d), ~arg_0.b), ~(~arg_0.c), any(select(!vec4<bool>(true, var_0.a, var_0.a, arg_0.d), !vec4<bool>(true, arg_0.d, var_0.a, var_0.a), arg_0.d)), vec4<f32>(global1.x, _wgslsmith_f_op_f32(-arg_0.e.x), 1142f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(489f - arg_0.e.x)))), vec4<i32>(i32(-1i) * -12841i, ~u_input.a, 2147483647i, -34555i >> (~arg_0.b % 32u)) >> (vec4<u32>(~4294967295u, ~min(arg_0.b, arg_0.b), _wgslsmith_div_u32(select(15917u, 16043u, false), 1u), ~(~arg_0.b)) % vec4<u32>(32u)), any(select(!(!vec4<bool>(arg_0.d, true, var_0.a, arg_0.d)), vec4<bool>(true, true, 0i >= u_input.a, select(false, true, var_0.a)), true)));
    var_1 = Struct_1(true);
    var_0 = Struct_1(true);
    return func_4(arg_0.e.x, func_3(arg_0, firstLeadingBit(select(vec4<i32>(arg_0.a.x, -2147483647i, arg_0.a.x, 0i), abs(vec4<i32>(arg_0.a.x, -25762i, 1i, 50896i)), !vec4<bool>(arg_0.d, var_1.a, var_1.a, false))), func_3(Struct_2(vec2<i32>(-21645i, arg_0.a.x), arg_0.b, vec3<u32>(4294967295u, 8586u, arg_0.b), var_0.a, vec4<f32>(global1.x, -1332f, arg_0.e.x, -1192f)), vec4<i32>(17307i, u_input.a, -2147483647i, 53387i), true).a != var_1.a), -((vec3<i32>(1i, 1i, -1i) ^ vec3<i32>(u_input.a, u_input.a, 1i)) ^ _wgslsmith_sub_vec3_i32(select(vec3<i32>(arg_0.a.x, -7201i, u_input.a), vec3<i32>(arg_0.a.x, arg_0.a.x, arg_0.a.x), vec3<bool>(arg_0.d, var_1.a, arg_0.d)), -vec3<i32>(u_input.a, u_input.a, 2147483647i))));
}

fn func_1(arg_0: vec2<i32>) -> f32 {
    let var_0 = 714f;
    let var_1 = vec2<u32>(0u, ~1u);
    global1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.x)))), 1119f);
    var var_2 = func_5(func_4(var_0, func_3(Struct_2(func_2(vec4<i32>(u_input.a, arg_0.x, 1i, 32951i), global1.x, arg_0.x), ~var_1.x, select(vec3<u32>(41589u, var_1.x, var_1.x), vec3<u32>(var_1.x, 36421u, var_1.x), vec3<bool>(false, true, false)), true, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -819f, var_0, 387f) * vec4<f32>(-632f, var_0, global1.x, global1.x))), _wgslsmith_div_vec4_i32(vec4<i32>(-2829i, -81116i, u_input.a, arg_0.x), vec4<i32>(2147483647i, u_input.a, u_input.a, 0i)) & vec4<i32>(u_input.a, u_input.a, u_input.a, 0i), select(true, true, true)), -min(~vec3<i32>(2147483647i, arg_0.x, 6235i), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.x, arg_0.x, arg_0.x), vec3<i32>(-14752i, 27165i, 0i), vec3<i32>(arg_0.x, -1i, 44409i)))));
    var var_3 = vec4<f32>(-604f, func_4(_wgslsmith_f_op_f32(var_2.e.x + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), func_3(func_5(func_4(global1.x, Struct_1(true), vec3<i32>(1i, -1i, arg_0.x))), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.a.x, u_input.a, var_2.a.x, u_input.a), firstLeadingBit(vec4<i32>(u_input.a, u_input.a, var_2.a.x, arg_0.x)), -vec4<i32>(34356i, u_input.a, u_input.a, var_2.a.x)), all(vec3<bool>(true, false, var_2.d))), _wgslsmith_mod_vec3_i32(~(~vec3<i32>(27116i, arg_0.x, arg_0.x)), max(vec3<i32>(13631i, 37763i, 90841i) | vec3<i32>(29615i, -1i, u_input.a), vec3<i32>(40699i, 2400i, var_2.a.x) ^ vec3<i32>(13946i, 15042i, u_input.a)))).e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.x))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -131f), global1.x, all(vec2<bool>(var_2.d, false)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))));
    return _wgslsmith_f_op_f32(min(-1283f, -537f));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_1(vec2<i32>(u_input.a, 1i))), _wgslsmith_f_op_f32(ceil(global1.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, _wgslsmith_f_op_f32(f32(-1f) * -656f)))) * vec2<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-131f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.x)) + func_5(Struct_2(vec2<i32>(u_input.a, u_input.a), 1u, vec3<u32>(55624u, 1u, 4294967295u), true, vec4<f32>(global1.x, global1.x, 1000f, global1.x))).e.x))));
    global0 = select(true || (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(898f - global1.x)) != global1.x), false, false);
    global1 = func_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(580f - -365f))))), Struct_1(func_4(1051f, func_3(func_4(global1.x, Struct_1(false), vec3<i32>(u_input.a, -2147483647i, u_input.a)), vec4<i32>(-37279i, u_input.a, u_input.a, 30412i), func_4(1291f, Struct_1(true), vec3<i32>(u_input.a, 2147483647i, u_input.a)).d), -vec3<i32>(u_input.a, u_input.a, 21274i)).d), firstLeadingBit(countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, -2111i, u_input.a), -vec3<i32>(u_input.a, 16019i, u_input.a))))).e.wx;
    var var_0 = func_4(_wgslsmith_f_op_f32(global1.x + -182f), func_3(Struct_2(min(select(vec2<i32>(2147483647i, u_input.a), vec2<i32>(u_input.a, u_input.a), vec2<bool>(true, true)), -vec2<i32>(-1i, 1i)), _wgslsmith_div_u32(func_5(Struct_2(vec2<i32>(-1i, 0i), 15744u, vec3<u32>(3339u, 12560u, 4294967295u), false, vec4<f32>(global1.x, -1481f, 138f, 1000f))).b, ~20515u), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 0u, 60982u), ~vec3<u32>(1u, 1u, 19172u), vec3<u32>(1u, 81662u, 0u)), true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -414f, -221f, 946f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(529f, -923f, -898f, global1.x)))), ~countOneBits(firstTrailingBit(vec4<i32>(u_input.a, -31703i, u_input.a, 1i))), false), abs(firstLeadingBit(~vec3<i32>(-13858i, -1i, 2147483647i) ^ ~vec3<i32>(0i, u_input.a, u_input.a))));
    let var_1 = Struct_2(vec2<i32>(-1i) * -vec2<i32>(-u_input.a, -1i), var_0.c.x, vec3<u32>(33088u, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, var_0.b, 1u, 4294967295u), vec4<u32>(var_0.b, 40035u, var_0.b, 0u)) | ~vec4<u32>(var_0.c.x, var_0.b, 14005u, 61711u), abs(vec4<u32>(var_0.c.x, var_0.c.x, 1u, var_0.b))), _wgslsmith_dot_vec4_u32(firstLeadingBit(countOneBits(vec4<u32>(var_0.c.x, 0u, 1u, 51070u))), ~(vec4<u32>(var_0.b, 1u, 0u, var_0.c.x) | vec4<u32>(var_0.c.x, 20185u, 68379u, 6160u)))), var_0.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.e.x, global1.x, global1.x, var_0.e.x), var_0.e))), vec4<f32>(global1.x, -346f, var_0.e.x, _wgslsmith_f_op_f32(func_1(vec2<i32>(var_0.a.x, 0i))))))));
    var var_2 = var_0.a.x;
    let var_3 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(var_0.e.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e.x))), -769f, var_0.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.e.x, _wgslsmith_f_op_f32(f32(-1f) * -1318f)))))));
    let var_4 = !vec4<bool>(!var_0.d, var_1.d, all(select(vec4<bool>(var_0.d, var_1.d, var_0.d, var_0.d), vec4<bool>(false, var_1.d, false, var_1.d), var_1.d)) || false, -1053f < var_1.e.x);
    var_0 = func_4(_wgslsmith_f_op_f32(-var_3.x), Struct_1(any(vec4<bool>(var_1.d || var_1.d, true, true, false))), -countOneBits(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-34728i, 2147483647i, 0i), vec3<i32>(-3600i, var_1.a.x, var_1.a.x)), _wgslsmith_sub_i32(var_1.a.x, var_0.a.x), var_0.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(13245i, 1488i);
}

