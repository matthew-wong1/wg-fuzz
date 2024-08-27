struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1589f, -659f, -460f, -1000f)) - vec4<f32>(-591f, 551f, 123f, 1183f)) - vec4<f32>(563f, -2336f, -2669f, _wgslsmith_f_op_f32(-1152f * -148f)))), vec3<i32>(_wgslsmith_div_i32(u_input.a.x, u_input.a.x ^ -2147483647i) << (~22210u % 32u), max(firstLeadingBit(_wgslsmith_mod_i32(u_input.a.x, 0i)), 31432i), -28824i), Struct_1(~(-u_input.a.x) & reverseBits(_wgslsmith_add_i32(u_input.a.x, u_input.a.x))));
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(690f, var_0.a.x)), _wgslsmith_f_op_f32(floor(var_0.a.x))), 857f, var_0.a.x, _wgslsmith_f_op_f32(floor(var_0.a.x)))), var_0.b, var_0.c);
    var_0 = Struct_2(var_0.a, -(~(-countOneBits(var_0.b))), Struct_1(u_input.a.x));
    let var_1 = true;
    var_0 = Struct_2(var_0.a, var_0.b << (_wgslsmith_mod_vec3_u32(~(u_input.c.zxz << (u_input.c.xwx % vec3<u32>(32u))), u_input.c.zyz) % vec3<u32>(32u)), var_0.c);
    return !var_1;
}

fn func_2() -> vec4<f32> {
    let var_0 = select(vec2<bool>(true, select(func_3(), all(vec4<bool>(true, true, true, true)), false)), select(vec2<bool>(func_3(), true), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, true)), vec2<bool>(true, true), func_3()), vec2<bool>(true, true)), true);
    let var_1 = _wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_mult_i32(u_input.a.x, _wgslsmith_sub_i32(-_wgslsmith_mod_i32(2147483647i, u_input.a.x), u_input.a.x)), reverseBits(_wgslsmith_sub_i32(select(u_input.a.x, u_input.a.x, true) | u_input.a.x, -1i)));
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-2129f, -209f, 1239f, 324f)))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(1069f, 1784f, -768f, -196f), vec4<f32>(-753f, 126f, -887f, 1350f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1047f, 664f, -1392f, 1437f) - vec4<f32>(1127f, 527f, 162f, -616f)))), !(!vec4<bool>(false, var_0.x, false, var_0.x)))), ~vec3<i32>(var_1, ~u_input.a.x, -1i), Struct_1(-2147483647i));
    var_2 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-851f + 789f), var_2.a.x, var_2.a.x, 1438f), vec3<i32>(u_input.a.x, -38926i, ~_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, var_2.c.a, u_input.a.x), vec3<i32>(-3202i, var_2.b.x, -2147483647i)), _wgslsmith_add_i32(0i, 20224i))), Struct_1(-_wgslsmith_add_i32(countOneBits(var_2.c.a), _wgslsmith_sub_i32(var_2.b.x, var_1))));
    let var_3 = ~(~(~u_input.c.x)) ^ u_input.b;
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(var_2.a.x + 463f), var_2.a.x, _wgslsmith_f_op_f32(var_2.a.x - var_2.a.x), _wgslsmith_f_op_f32(-var_2.a.x)))))));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec2<u32>) -> vec4<f32> {
    let var_0 = arg_2.x;
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(-472f, -746f)), -548f, -1000f, _wgslsmith_f_op_f32(round(501f))) * _wgslsmith_div_vec4_f32(vec4<f32>(-894f, -843f, -287f, 617f), vec4<f32>(-845f, -952f, 825f, -426f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(421f, _wgslsmith_f_op_f32(-673f + 963f), -874f, 1006f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-847f, -764f, -378f, 1512f))), vec4<bool>(true, all(select(vec4<bool>(var_0, true, var_0, false), vec4<bool>(false, false, true, var_0), false)), true, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2()) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1540f, -694f, 835f, 961f) * vec4<f32>(1625f, -157f, 775f, -868f)), _wgslsmith_div_vec4_f32(vec4<f32>(487f, 231f, 411f, -370f), vec4<f32>(646f, 994f, 1000f, -387f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(166f, 361f, 312f, 2259f))) + vec4<f32>(1f, 1f, 1f, 1f))))), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-176f, _wgslsmith_f_op_f32(floor(283f)), -1622f, _wgslsmith_f_op_f32(floor(282f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-150f, 477f, 796f, 2631f), vec4<f32>(734f, -1383f, 249f, -601f)))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(~(-64388i), Struct_1(u_input.a.x), vec2<bool>(false, false), ~vec2<u32>(u_input.c.x, u_input.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(617f, 796f, 219f, 1000f)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -521f), 336f, _wgslsmith_f_op_f32(f32(-1f) * -928f), _wgslsmith_f_op_vec4_f32(func_2()).x), vec4<f32>(_wgslsmith_f_op_f32(1059f * 698f), -666f, _wgslsmith_f_op_f32(trunc(364f)), _wgslsmith_f_op_f32(864f * 1310f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(246f, -1318f, -551f, 1064f))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(733f, _wgslsmith_f_op_f32(-var_0.x), -1489f, _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(420f - _wgslsmith_div_f32(2021f, 777f)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_0 * var_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)), vec4<bool>(true, true, true, true))) * vec4<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -567f), _wgslsmith_f_op_f32(f32(-1f) * -189f), 1792f)), _wgslsmith_f_op_vec4_f32(-var_0)));
    let var_2 = !(!vec3<bool>(true, -1i > _wgslsmith_dot_vec2_i32(u_input.a, u_input.a), all(select(vec2<bool>(false, true), vec2<bool>(false, true), true))));
    var var_3 = countOneBits(select(vec4<u32>(u_input.b, _wgslsmith_sub_u32(15167u, _wgslsmith_mod_u32(u_input.c.x, u_input.c.x)), ~(~24467u), 25514u), reverseBits(vec4<u32>(~40225u, _wgslsmith_clamp_u32(1u, 1u, 39802u), ~22103u, 70002u)), select(u_input.c.x > u_input.b, false, true) & true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_2()).x), firstTrailingBit(u_input.a), u_input.a.x << (~var_3.x % 32u));
}

