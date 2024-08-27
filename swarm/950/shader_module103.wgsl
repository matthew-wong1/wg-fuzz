struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
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

var<private> global0: array<vec4<bool>, 14> = array<vec4<bool>, 14>(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true));

var<private> global1: vec3<bool> = vec3<bool>(true, false, true);

var<private> global2: Struct_1 = Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), 2147483647i), vec4<u32>(71180u, 23282u, 1u, 12933u));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: bool) -> bool {
    return true;
}

fn func_3(arg_0: vec2<bool>) -> vec4<u32> {
    var var_0 = select(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(global2.a, _wgslsmith_mod_vec3_i32(vec3<i32>(global2.a.x, global2.a.x, u_input.b), vec3<i32>(-49233i, 0i, global2.a.x))), _wgslsmith_clamp_vec3_i32(~vec3<i32>(1i, global2.a.x, -9323i), vec3<i32>(global2.a.x, -53851i, 0i), countOneBits(vec3<i32>(18693i, global2.a.x, u_input.b)))), abs(vec3<i32>(u_input.b, -52098i, global2.a.x)) >> (vec3<u32>(countOneBits(26885u), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, u_input.a, 1u), global2.b)) % vec3<u32>(32u)), vec3<bool>(global1.x, arg_0.x == arg_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.b, u_input.b, global2.a.x), u_input.c) == u_input.c.x)) >> (global2.b.xyx % vec3<u32>(32u));
    var var_1 = Struct_1(global2.a, vec4<u32>((6581u | _wgslsmith_div_u32(0u, u_input.a)) & _wgslsmith_mod_u32(65232u, abs(global2.b.x)), global2.b.x, ~(~1u | abs(global2.b.x)), global2.b.x));
    var_1 = Struct_1(var_1.a | ~(~(u_input.c.zzz >> (vec3<u32>(global2.b.x, 60626u, 43159u) % vec3<u32>(32u)))), vec4<u32>(var_1.b.x, abs(74381u >> (_wgslsmith_sub_u32(52633u, var_1.b.x) % 32u)), var_1.b.x, u_input.a));
    let var_2 = Struct_1(var_1.a, global2.b);
    global1 = vec3<bool>(global1.x, any(vec2<bool>(select(true, true, any(global1.yz)), !global1.x)), true);
    return _wgslsmith_add_vec4_u32(~(~reverseBits(global2.b)), vec4<u32>(abs(abs(u_input.a) >> ((var_2.b.x << (var_2.b.x % 32u)) % 32u)), firstLeadingBit(u_input.a) << ((_wgslsmith_dot_vec3_u32(global2.b.zzw, var_2.b.xyz) >> (1u % 32u)) % 32u), ~abs(_wgslsmith_clamp_u32(0u, 0u, 1u)), 20435u));
}

fn func_1(arg_0: vec3<i32>, arg_1: f32, arg_2: vec3<u32>, arg_3: vec4<i32>) -> f32 {
    var var_0 = select(global2.b, max(max(global2.b, ~global2.b), ~(vec4<u32>(18411u, 65214u, global2.b.x, global2.b.x) ^ global2.b)), vec4<bool>(select(!global1.x, false, global1.x), func_2(false), true, false | (arg_2.x <= u_input.a))) & ~(select(vec4<u32>(u_input.a, 4294967295u, 0u, 4294967295u), vec4<u32>(4294967295u, 32633u, global2.b.x, 1u), all(vec3<bool>(false, true, false))) & global2.b);
    var var_1 = -1i;
    let var_2 = _wgslsmith_clamp_vec4_u32(~func_3(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(global1.x, global1.x))), ~(~(~global2.b)), min(~global2.b, abs(_wgslsmith_add_vec4_u32(global2.b, global2.b)))) | ~(~global2.b);
    global2 = Struct_1(vec3<i32>(global2.a.x, -_wgslsmith_div_i32(~35637i, -31989i), -2147483647i), vec4<u32>(1u, _wgslsmith_add_u32(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(51357u, 0u, 72233u, 1u), vec4<u32>(13738u, 23049u, 4294967295u, var_2.x))), 53060u), global2.b.x, u_input.a));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-921f, arg_1, 515f), vec3<f32>(arg_1, 111f, arg_1))) + vec3<f32>(arg_1, 1636f, arg_1)))));
    return -508f;
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: vec2<f32>, arg_3: f32) -> vec4<f32> {
    var var_0 = Struct_1(vec3<i32>(~_wgslsmith_dot_vec2_i32(u_input.c.wz, vec2<i32>(global2.a.x, arg_0)) >> (4294967295u % 32u), reverseBits(arg_0), _wgslsmith_mod_i32(1i, arg_0)), global2.b);
    let var_1 = 0i;
    let var_2 = Struct_1(vec3<i32>(-1i) * -(~_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 0i, 2147483647i), vec3<i32>(-2147483647i, var_1, 27506i))), min(_wgslsmith_div_vec4_u32(min(global2.b, ~global2.b), _wgslsmith_div_vec4_u32(global2.b, vec4<u32>(0u, global2.b.x, 9755u, arg_1))), global2.b ^ _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(var_0.b, global2.b), vec4<u32>(1u, 0u, 47630u, global2.b.x))));
    var_0 = var_2;
    global2 = Struct_1(~_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.a.x, global2.a.x, var_2.a.x) | var_2.a, ~var_0.a, select(var_0.a, vec3<i32>(-2147483647i, arg_0, 0i), true)) << (~vec3<u32>(u_input.a, 51650u, u_input.a) % vec3<u32>(32u)), ~abs(vec4<u32>(14783u, arg_1, 18579u, 13320u)) << (func_3(vec2<bool>(global1.x, global2.a.x != 1i)) % vec4<u32>(32u)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(269f, arg_3, -914f, arg_3) * vec4<f32>(arg_3, arg_2.x, arg_3, arg_3)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(-1378f)), 708f, _wgslsmith_f_op_f32(-780f * 821f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(888f)) * -559f))) + _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_dot_vec4_i32(-vec4<i32>(-32938i, u_input.c.x, global2.a.x, -2147483647i), -_wgslsmith_mod_vec4_i32(u_input.c, u_input.c)), 4294967295u, vec2<f32>(_wgslsmith_f_op_f32(-1323f * _wgslsmith_f_op_f32(func_1(vec3<i32>(-2147483647i, u_input.b, -10071i), 180f, global2.b.zxz, u_input.c))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1070f, -941f) - -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1102f) * _wgslsmith_f_op_f32(1369f - 2093f))))));
    global0 = array<vec4<bool>, 14>();
    let var_1 = reverseBits(_wgslsmith_sub_i32(global2.a.x, ~global2.a.x));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(713f, 1497f))), _wgslsmith_f_op_vec4_f32(func_4(select(_wgslsmith_mod_i32(var_1, u_input.c.x), 2147483647i >> (1u % 32u), false), firstTrailingBit(_wgslsmith_mod_u32(u_input.a, 77333u)), _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_clamp_i32(var_1, -28386i, var_1), 1u, var_0.zw, -257f)).zz, var_0.x)).x) * var_0.x);
    let var_3 = vec4<u32>(1u, max(_wgslsmith_add_u32(~42062u, _wgslsmith_div_u32(global2.b.x, ~4294967295u)), 36231u), global2.b.x, ~global2.b.x);
    var var_4 = _wgslsmith_add_u32(3153u, 0u);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c);
}

