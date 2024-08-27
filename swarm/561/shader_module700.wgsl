struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<bool>,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = vec2<bool>(!(!(!arg_0.a)), !arg_0.c.x);
    var var_1 = Struct_1(!(!(false & !arg_0.a)), 2147483647i, !arg_0.c, ~select(vec3<u32>(firstLeadingBit(arg_0.d.x), firstTrailingBit(36801u), 4294967295u), _wgslsmith_mult_vec3_u32(arg_0.d, vec3<u32>(u_input.a, arg_0.d.x, arg_0.d.x)), vec3<bool>(any(var_0), false || arg_0.c.x, true)), countOneBits(firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, u_input.e.x, u_input.d, -34644i), vec4<i32>(arg_0.e.x, u_input.d, 1i, arg_0.e.x)) | arg_0.e)));
    var_1 = Struct_1(true, -arg_0.e.x, arg_0.c, select(var_1.d, vec3<u32>(~1u, ~select(0u, var_1.d.x, arg_0.a), firstTrailingBit(arg_0.d.x)), false), arg_0.e);
    var_1 = Struct_1(false, abs(1i), arg_0.c, arg_0.d, countOneBits(firstLeadingBit(abs(vec4<i32>(var_1.b, var_1.e.x, arg_0.e.x, u_input.d)))));
    var_1 = Struct_1(true, var_1.e.x >> ((~(~3278u) << (~(18352u << (u_input.a % 32u)) % 32u)) % 32u), vec4<bool>(true, false, true || !arg_0.a, !var_1.c.x || true), var_1.d, firstTrailingBit(arg_0.e));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(985f - -1917f)))));
}

fn func_2() -> Struct_1 {
    let var_0 = reverseBits(50116u) | u_input.a;
    var var_1 = -726f;
    var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -139f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1938f - -866f))), 731f)))));
    let var_2 = select(u_input.b, 25538u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1609f), _wgslsmith_f_op_f32(func_3(Struct_1(false, u_input.e.x, vec4<bool>(false, true, true, true), vec3<u32>(var_0, u_input.a, 64476u), vec4<i32>(-2147483647i, -23662i, 2147483647i, 0i))))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(false, u_input.e.x, vec4<bool>(false, false, true, true), vec3<u32>(4294967295u, var_0, 89714u), vec4<i32>(u_input.d, u_input.d, 0i, u_input.e.x))))));
    var var_3 = !(!vec2<bool>(!(-62752i >= u_input.e.x), true));
    return Struct_1(true, ~(-1i), !select(!select(vec4<bool>(false, true, var_3.x, true), vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x), true), select(vec4<bool>(true, var_3.x, var_3.x, false), vec4<bool>(false, var_3.x, true, var_3.x), true), var_3.x), _wgslsmith_mod_vec3_u32(~vec3<u32>(abs(var_2), max(26074u, 1u), 62530u), firstLeadingBit(vec3<u32>(~var_2, ~var_2, var_2))), vec4<i32>(~u_input.d ^ _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -5735i, 34826i, 2147483647i), vec4<i32>(u_input.e.x, u_input.d, u_input.e.x, -2147483647i)), u_input.d, _wgslsmith_dot_vec4_i32(~vec4<i32>(28204i, u_input.d, u_input.d, u_input.d), countOneBits(vec4<i32>(-44344i, u_input.e.x, 16641i, u_input.e.x))), ~u_input.d) | vec4<i32>(_wgslsmith_div_i32(_wgslsmith_div_i32(-12268i, u_input.d), ~2147483647i), 1i | u_input.e.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, 2147483647i, u_input.e.x), select(u_input.e, vec3<i32>(u_input.e.x, 1i, 0i), var_3.x)), _wgslsmith_add_i32(u_input.d, 1i)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: f32) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = 29870u;
    let var_2 = func_2();
    var var_3 = 694f;
    let var_4 = arg_0.c.wxy;
    return func_2();
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    let var_0 = func_4(func_2(), func_2(), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_3, arg_3, 219f, arg_3)))) + vec4<f32>(1163f, 1853f, -849f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 + 217f) * _wgslsmith_f_op_f32(max(1180f, 599f))))), _wgslsmith_f_op_f32(-434f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(318f + _wgslsmith_f_op_f32(arg_3 + 101f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(222f - arg_3) * arg_3))));
    var var_1 = func_4(arg_2, func_2(), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-810f, arg_3, arg_3, arg_3))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - 612f));
    var var_2 = _wgslsmith_f_op_f32(min(arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1464f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -444f))))));
    var_2 = 425f;
    var_2 = _wgslsmith_div_f32(arg_3, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(1510f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_2)) - 1180f))));
    return Struct_1(all(select(var_1.c.zw, !var_1.c.xx, all(var_0.c.xxz))), ~var_0.b, var_0.c, func_2().d, min(var_0.e, arg_2.e) >> (abs(countOneBits(select(vec4<u32>(0u, 43105u, 1u, 0u), vec4<u32>(0u, u_input.b, var_0.d.x, var_0.d.x), false))) % vec4<u32>(32u)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1289f)));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1921f, var_0, var_0))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1173f, var_0, 1240f), vec3<f32>(-132f, 1384f, -750f), arg_0.c.yyz)))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(1247f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1269f))), 1f)));
    let var_2 = ~func_2().d | ~arg_1.d;
    let var_3 = select(!arg_0.c.x, !(all(vec3<bool>(false, false, arg_1.c.x)) || any(arg_2.c)), func_2().c.x);
    var var_4 = arg_1;
    return 784f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(!vec2<bool>(all(vec3<bool>(false, true, false)), true), !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), select(!select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, false), all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)))));
    let var_1 = 4294967295u;
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(Struct_1(false, u_input.d, vec4<bool>(var_0.x, false, false, var_0.x), vec3<u32>(var_1, u_input.b, 6935u), vec4<i32>(0i, 1i, -1i, u_input.d)), Struct_1(false, u_input.d, vec4<bool>(var_0.x, var_0.x, true, false), vec3<u32>(0u, var_1, var_1), vec4<i32>(59561i, u_input.d, -1i, u_input.d)), func_1(u_input.c, vec2<u32>(1u, var_1), Struct_1(var_0.x, u_input.d, vec4<bool>(true, var_0.x, true, false), vec3<u32>(var_1, 0u, u_input.b), vec4<i32>(15076i, -24554i, u_input.e.x, u_input.e.x)), 641f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(512f, -742f) - _wgslsmith_f_op_f32(trunc(-575f))) - _wgslsmith_f_op_f32(-874f + _wgslsmith_f_op_f32(select(-211f, 934f, true)))))));
    var_2 = -595f;
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1149f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1182f)), -1148f)))) - _wgslsmith_f_op_f32(-290f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(984f)))))));
    let var_3 = Struct_1(true, -19612i, !(!vec4<bool>(true, func_1(vec2<u32>(var_1, u_input.a), vec2<u32>(var_1, 4294967295u), Struct_1(var_0.x, u_input.d, vec4<bool>(var_0.x, false, var_0.x, false), vec3<u32>(u_input.c.x, 4294967295u, u_input.c.x), vec4<i32>(-34452i, -1i, u_input.e.x, u_input.d)), -934f).c.x, !var_0.x, true)), vec3<u32>(~firstTrailingBit(u_input.a), _wgslsmith_div_u32(reverseBits(u_input.a >> (1u % 32u)), ~_wgslsmith_clamp_u32(0u, 43243u, 0u)), var_1), firstLeadingBit(_wgslsmith_mod_vec4_i32(~vec4<i32>(-5605i, 0i, u_input.e.x, 24236i), vec4<i32>(i32(-1i) * -1i, firstTrailingBit(5208i), 0i, abs(-5346i)))));
    var var_4 = min(var_3.e.yyw, abs(vec3<i32>(u_input.d, var_3.b, var_3.b | -8785i))) ^ (vec3<i32>(u_input.e.x, abs(firstTrailingBit(0i)), 1i) | u_input.e);
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(330f * 1727f), _wgslsmith_f_op_f32(trunc(845f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.e);
}

