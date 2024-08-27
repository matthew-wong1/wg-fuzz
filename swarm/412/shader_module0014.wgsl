struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<i32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: u32,
    c: vec2<bool>,
    d: Struct_1,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: vec4<u32> = vec4<u32>(36339u, 0u, 0u, 0u);

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    global1 = vec4<u32>(arg_0.a.x, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, ~11550u), vec2<u32>(u_input.a.x | global1.x, global1.x))), ~(~(u_input.b.x & 23010u) ^ reverseBits(u_input.a.x)), 62241u);
    global0 = _wgslsmith_mod_vec3_u32(~vec3<u32>(~4294967295u, 1u, firstTrailingBit(37602u) ^ 0u), _wgslsmith_sub_vec3_u32(~vec3<u32>(firstLeadingBit(62095u), 18109u, 1u), max(vec3<u32>(firstTrailingBit(53019u), _wgslsmith_mult_u32(global1.x, global0.x), ~4294967295u), u_input.b & global1.wxz)));
    var var_0 = Struct_3(Struct_1(vec2<u32>(37023u << (~u_input.a.x % 32u), ~_wgslsmith_sub_u32(arg_0.a.x, 4294967295u)), reverseBits(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 1i, u_input.c), vec3<i32>(arg_0.b, -104437i, 93130i)), abs(vec3<i32>(u_input.c, -37467i, 5499i))))), Struct_2(false, Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.a.x, u_input.b.x), u_input.a.yz, global0.zy) >> (_wgslsmith_add_vec2_u32(global1.wz, vec2<u32>(global1.x, 14344u)) % vec2<u32>(32u)), min(max(arg_0.b, 0i), u_input.c | 0i))), (~(~vec4<i32>(u_input.c, -2147483647i, 1i, u_input.c)) >> (_wgslsmith_sub_vec4_u32(~u_input.a, vec4<u32>(50377u, 1u, 86590u, 0u)) % vec4<u32>(32u))) << (~vec4<u32>(~4294967295u, ~global0.x, global1.x, global0.x) % vec4<u32>(32u)));
    global1 = abs(select(vec4<u32>(arg_0.a.x, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.b.zx, var_0.b.b.a), vec2<u32>(var_0.a.a.x, 4294967295u) << (global1.zw % vec2<u32>(32u))), _wgslsmith_mod_u32(countOneBits(4294967295u), global1.x), reverseBits(abs(arg_0.a.x))), u_input.a, all(select(vec3<bool>(false, var_0.b.a, false), vec3<bool>(false, var_0.b.a, true), select(vec3<bool>(false, var_0.b.a, true), vec3<bool>(var_0.b.a, true, true), vec3<bool>(var_0.b.a, var_0.b.a, true))))));
    let var_1 = -min(var_0.c, ~countOneBits(var_0.c)) | -var_0.c;
    return abs(i32(-1i) * -64522i);
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_3) -> Struct_3 {
    var var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1160f, -109f, 304f, -925f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(592f, 2202f, arg_0.x, arg_0.x)))))), ~(~1u), !(!select(vec2<bool>(arg_1.b.a, arg_1.b.a), vec2<bool>(true, arg_1.b.a), vec2<bool>(true, true))), Struct_1(vec2<u32>(countOneBits(~18571u), 4294967295u), abs(-func_3(arg_1.b.b))), vec3<bool>(arg_1.b.a, arg_1.b.a, false));
    var var_1 = _wgslsmith_dot_vec4_u32(u_input.a, ~(~(u_input.a ^ ~u_input.a)));
    var_1 = countOneBits(~(~(_wgslsmith_sub_u32(global1.x, u_input.a.x) >> (u_input.b.x % 32u))));
    let var_2 = arg_0.x;
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, var_2, arg_0.x)), var_0.a.zxy)) - vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(abs(863f)), 1f)) - vec3<f32>(var_2, _wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_f32(f32(-1f) * -129f)), -765f)) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-573f, _wgslsmith_f_op_f32(525f - arg_0.x), _wgslsmith_div_f32(var_2, _wgslsmith_f_op_f32(-1849f * -475f))))));
    return arg_1;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_4) -> Struct_4 {
    let var_0 = func_2(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_1.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -617f)))))), Struct_3(arg_1.d, Struct_2(arg_1.c.x, arg_1.d), -(~(~vec4<i32>(u_input.c, u_input.c, arg_1.d.b, arg_1.d.b)))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(ceil(-963f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(288f, arg_0.x, true)), arg_1.a.x)), _wgslsmith_f_op_f32(abs(1439f)));
    var var_2 = u_input.a;
    var var_3 = var_0;
    var_3 = Struct_3(arg_1.d, func_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x * var_1.x)), arg_1.a.x), func_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_1.yx))), var_0)).b, _wgslsmith_div_vec4_i32(var_3.c, reverseBits(vec4<i32>(-1i) * -vec4<i32>(1i, 1i, -2147483647i, 1i))));
    return arg_1;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1) -> u32 {
    var var_0 = vec3<u32>(_wgslsmith_div_u32((~arg_0.b | u_input.b.x) | reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, 16744u, 1u), vec3<u32>(global1.x, 1u, 0u))), global0.x), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~global1.xyz, u_input.a.yyx) ^ global1.zwz, countOneBits(vec3<u32>(arg_0.b, 45054u, 0u)) << ((vec3<u32>(41966u, 4294967295u, 4294967295u) ^ vec3<u32>(arg_1.a.x, 24057u, u_input.b.x)) % vec3<u32>(32u))), _wgslsmith_sub_u32(4294967295u, ~0u));
    var_0 = global1.wyw;
    var var_1 = vec3<u32>(0u, ~16780u, 20291u);
    global1 = u_input.a;
    var_0 = firstTrailingBit(u_input.b);
    return arg_1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~select(~_wgslsmith_sub_vec3_u32(~vec3<u32>(global1.x, global0.x, 0u), vec3<u32>(1u, global1.x, global0.x)), vec3<u32>(~max(92693u, global0.x), func_4(func_1(vec4<f32>(275f, 699f, -442f, -1159f), Struct_4(vec4<f32>(1641f, -2020f, 1202f, -383f), global0.x, vec2<bool>(true, false), Struct_1(global1.yy, u_input.c), vec3<bool>(true, true, false))), func_1(vec4<f32>(-1000f, 714f, -1000f, 339f), Struct_4(vec4<f32>(-1419f, -480f, -141f, 332f), 11010u, vec2<bool>(false, true), Struct_1(vec2<u32>(4294967295u, 58605u), 1i), vec3<bool>(true, true, true))).d), ~76056u), func_1(vec4<f32>(1f, 1f, 1f, 1f), Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1097f, -436f, -821f, 1932f)), global1.x & 31035u, func_1(vec4<f32>(-413f, 573f, -629f, -144f), Struct_4(vec4<f32>(512f, -549f, -1000f, 1000f), global0.x, vec2<bool>(true, false), Struct_1(vec2<u32>(49869u, 0u), -1i), vec3<bool>(false, true, false))).c, func_2(vec2<f32>(272f, -178f), Struct_3(Struct_1(u_input.b.xy, u_input.c), Struct_2(true, Struct_1(vec2<u32>(1u, 4294967295u), 0i)), vec4<i32>(2147483647i, u_input.c, u_input.c, u_input.c))).b.b, vec3<bool>(false, true, false))).e);
    let var_0 = vec4<f32>(1771f, -472f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-1000f)))))), -769f);
    global1 = vec4<u32>(_wgslsmith_mod_u32(~firstTrailingBit(global0.x >> (23530u % 32u)), global0.x), global1.x, ~0u, _wgslsmith_div_u32(~max(abs(0u), 0u), ~max(~global0.x, func_1(vec4<f32>(1000f, var_0.x, var_0.x, 1269f), Struct_4(vec4<f32>(626f, var_0.x, var_0.x, -313f), u_input.a.x, vec2<bool>(false, true), Struct_1(u_input.a.ww, -19679i), vec3<bool>(false, false, false))).d.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(50591u, vec2<i32>(~u_input.c, u_input.c), var_0.x, 5497i | u_input.c);
}

