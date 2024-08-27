struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec3<f32>,
    e: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: Struct_1,
    d: vec4<f32>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: i32,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: u32, arg_3: Struct_2) -> f32 {
    let var_0 = arg_3.a;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.d.x + arg_0.x) * arg_3.c.d.x);
    let var_2 = _wgslsmith_div_vec3_i32(firstTrailingBit(arg_3.c.b.ywz), min(vec3<i32>(0i, _wgslsmith_add_i32(arg_3.c.a, u_input.a), arg_3.c.b.x) << (reverseBits(vec3<u32>(2962u, arg_3.c.c.x, 0u)) % vec3<u32>(32u)), vec3<i32>(-8605i, 0i, countOneBits(_wgslsmith_add_i32(arg_1.c.a, arg_1.c.a)))));
    var_1 = 283f;
    return 1115f;
}

fn func_2(arg_0: i32) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<f32>(-597f, 165f, 1206f), Struct_2(vec3<bool>(false, false, false), true, Struct_1(-2147483647i, vec4<i32>(arg_0, 1i, u_input.a, -2147483647i), vec4<u32>(u_input.d.x, 1u, 0u, 35070u), vec3<f32>(-1009f, -589f, -1678f), 0u), vec4<f32>(-1217f, -1513f, 557f, 1120f), vec4<f32>(1514f, 1196f, -1000f, -726f)), 0u, Struct_2(vec3<bool>(false, true, false), false, Struct_1(arg_0, vec4<i32>(arg_0, arg_0, u_input.a, u_input.a), u_input.d, vec3<f32>(-478f, -994f, -1679f), u_input.c), vec4<f32>(-163f, -420f, 1285f, 152f), vec4<f32>(-1361f, -1750f, -213f, 128f))))), _wgslsmith_f_op_f32(floor(-220f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1245f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-731f, -417f, -1089f))) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-749f, 1258f, -581f), vec3<f32>(-1000f, 1031f, -1580f)))))), true)));
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-560f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1378f, var_0.x)) * _wgslsmith_f_op_f32(-var_0.x))))) <= var_0.x;
    var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(633f, 615f, var_0.x)) * vec3<f32>(var_0.x, -2804f, _wgslsmith_f_op_f32(max(var_0.x, var_0.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x)))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1580f, var_0.x))), 1000f, 801f) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(979f * var_0.x), _wgslsmith_f_op_f32(-544f * 1015f), _wgslsmith_f_op_f32(1935f - var_0.x)), vec3<f32>(-1694f, 468f, 690f)))));
    var var_2 = max(~vec3<i32>(_wgslsmith_sub_i32(0i << (u_input.b % 32u), abs(arg_0)), -_wgslsmith_clamp_i32(12724i, u_input.a, -1i), 28175i), ~vec3<i32>(~abs(u_input.a), arg_0 << (4294967295u % 32u), -21680i));
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * 1f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x))), var_0.x, !var_1)), 1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-var_0.x)) * _wgslsmith_f_op_f32(floor(var_0.x)))));
}

fn func_1(arg_0: u32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(633f * -774f), -1150f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-552f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -138f))), -1817f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-2254f, -2182f)))))));
    let var_1 = (_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a, u_input.a, -1i, u_input.a), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, 12541i, -1i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))), _wgslsmith_mod_i32(56472i & u_input.a, countOneBits(u_input.a))) & u_input.a) << (_wgslsmith_add_u32(4294967295u, u_input.d.x) % 32u);
    var_0 = _wgslsmith_f_op_vec4_f32(func_2(-reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(36531i, -1080i), vec2<i32>(u_input.a, -52592i)) ^ u_input.a)));
    let var_2 = ~_wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.a << (u_input.c % 32u), countOneBits(13676i)), 2555i) >> (abs(~_wgslsmith_dot_vec3_u32(min(u_input.d.zxy, u_input.d.zxw), ~u_input.d.wzz)) % 32u);
    let var_3 = Struct_3(vec2<bool>(true, !any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)))), 78116i, -2147483647i, 1000f);
    return _wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(reverseBits(12714u), ~0u, ~0u), vec3<u32>(countOneBits(1u), 1u, u_input.b)), abs(~(~vec3<u32>(0u, 4294967295u, 32484u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.a, abs(~_wgslsmith_div_vec4_i32(~vec4<i32>(-1i, u_input.a, u_input.a, -1i), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, 1i, 0i, u_input.a), vec4<i32>(2147483647i, 24141i, 1i, -62542i)))), ~vec4<u32>(abs(1u), func_1(abs(28682u)), 1u, ~abs(u_input.d.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(-12479i);
}

