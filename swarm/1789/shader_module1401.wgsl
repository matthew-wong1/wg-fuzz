struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: Struct_3,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(14833u, 4294967295u));

var<private> global1: vec4<i32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: i32) -> vec3<i32> {
    var var_0 = ~(~abs(~_wgslsmith_div_u32(4294967295u, arg_0)));
    var var_1 = arg_1;
    var var_2 = select(!select(select(vec2<bool>(true, false), vec2<bool>(false, true), all(vec2<bool>(false, true))), vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), select(vec2<bool>(all(vec4<bool>(true, true, true, true)), (global1.x >= -2147483647i) & false), select(vec2<bool>(true, global0.a.x <= 6965u), select(vec2<bool>(true, false), vec2<bool>(true, true), select(true, true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)))), all(select(vec2<bool>(false, false), vec2<bool>(false, false), global0.a.x > 1u))), vec2<bool>(all(select(vec2<bool>(false, true), vec2<bool>(true, false), all(vec2<bool>(false, true)))), true));
    var_2 = select(vec2<bool>(var_2.x, var_2.x), !(!vec2<bool>(arg_1 != global1.x, var_2.x)), true);
    let var_3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -878f), _wgslsmith_f_op_f32(max(612f, -604f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-2389f)), -1367f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -433f) - _wgslsmith_f_op_f32(ceil(-335f)))))));
    return _wgslsmith_add_vec3_i32(~_wgslsmith_mod_vec3_i32(global1.zwz, -vec3<i32>(2147483647i, global1.x, 2147483647i)) << (~vec3<u32>(u_input.a.x, global0.a.x, 4294967295u) % vec3<u32>(32u)), abs(firstTrailingBit(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 0i, 22496i), vec3<i32>(-10465i, -12905i, global1.x)), global1.x, abs(-41943i)))));
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: bool) -> vec3<i32> {
    return abs(_wgslsmith_mod_vec3_i32(func_3(u_input.a.x, arg_1) ^ vec3<i32>(global1.x, global1.x, global1.x), ~global1.yzw)) << (_wgslsmith_mod_vec3_u32(~u_input.a.yxx, ~u_input.a.zxx) % vec3<u32>(32u));
}

fn func_1() -> vec2<f32> {
    var var_0 = vec4<u32>(~(~u_input.a.x), ~_wgslsmith_div_u32(10610u, ~1u), ~abs(global0.a.x), 15830u);
    var var_1 = Struct_1(vec2<u32>(48392u, global0.a.x));
    let var_2 = !(!(!(firstLeadingBit(u_input.a.x) >= ~0u)));
    var var_3 = vec3<i32>(~(~(global1.x & -35415i) | global1.x), 0i, global1.x);
    let var_4 = Struct_4(func_2(var_2, var_3.x, var_2), vec3<u32>(~countOneBits(0u << (var_0.x % 32u)), ~var_1.a.x, ~abs(4294967295u)), Struct_3(Struct_2(_wgslsmith_div_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global0.a.x, 0u, u_input.a.x), u_input.a)), Struct_1(vec2<u32>(65909u, 61086u))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(342f)), _wgslsmith_f_op_f32(f32(-1f) * -1575f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(909f, 951f) * vec2<f32>(317f, 1914f)))), Struct_1(var_1.a));
    return var_4.c.b;
}

fn func_4(arg_0: vec2<f32>, arg_1: i32, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    global1 = vec4<i32>(_wgslsmith_sub_i32(i32(-1i) * -(~0i), ~(-232i)), -_wgslsmith_dot_vec4_i32(select(-vec4<i32>(global1.x, arg_1, arg_1, 0i), vec4<i32>(-10372i, 2147483647i, -46516i, 2147483647i), true), -_wgslsmith_add_vec4_i32(vec4<i32>(37172i, -6518i, 2147483647i, 0i), vec4<i32>(0i, 47516i, global1.x, global1.x))), 43867i, arg_1);
    let var_0 = Struct_3(Struct_2(_wgslsmith_mod_u32(_wgslsmith_sub_u32(~27507u, reverseBits(global0.a.x)), ~arg_3.a.x), Struct_1(_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.a.x, arg_3.a.x), reverseBits(vec2<u32>(45254u, 0u))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1671f, arg_0.x)));
    let var_1 = Struct_1(~global0.a);
    var var_2 = var_0.b.x;
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2798f))), _wgslsmith_f_op_f32(f32(-1f) * -541f));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(_wgslsmith_f_op_vec2_f32(func_1()), global1.x, abs(4294967295u), Struct_1(~u_input.a.zw));
    global1 = -vec4<i32>(_wgslsmith_clamp_i32(~_wgslsmith_mod_i32(global1.x, global1.x), -35623i, _wgslsmith_sub_i32(global1.x, ~0i)), _wgslsmith_sub_i32(-3221i, -1i), func_2(true, 1i, all(vec3<bool>(true, true, true))).x, 2147483647i);
    let var_0 = _wgslsmith_f_op_f32(sign(-186f));
    var var_1 = global1.x | 1i;
    var_1 = -_wgslsmith_sub_i32(global1.x, max(~_wgslsmith_sub_i32(global1.x, global1.x), firstTrailingBit(global1.x) >> ((62304u << (global0.a.x % 32u)) % 32u)));
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -218f) + 120f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -553f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(909f + 1038f) + _wgslsmith_f_op_f32(-775f - var_0)))) + 1000f)));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(select(~u_input.a.zwy, min(u_input.a.wyz, abs(vec3<u32>(u_input.a.x, global0.a.x, 5335u))), true)), 961f, _wgslsmith_div_vec4_i32(~(-(~vec4<i32>(global1.x, global1.x, global1.x, 7431i))), vec4<i32>(_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(global1.x, global1.x)), global1.zw), 19528i, _wgslsmith_div_i32(global1.x, global1.x) ^ ~2898i, abs(19936i))), 10841i);
}

