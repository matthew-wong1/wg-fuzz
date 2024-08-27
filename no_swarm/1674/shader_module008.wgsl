struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec3<bool>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(0i, vec4<bool>(true, false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)));

var<private> global1: vec2<i32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    global0 = Struct_2(global0.a);
    var var_0 = vec3<f32>(_wgslsmith_div_f32(-1900f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-308f, -1448f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(604f)))) + _wgslsmith_f_op_f32(trunc(-751f))), 2098f, true & (411f >= _wgslsmith_f_op_f32(floor(-846f))))), _wgslsmith_div_f32(296f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1229f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1234f, -1000f)) - _wgslsmith_f_op_f32(max(134f, -431f))))));
    var var_1 = global0.a.d.x;
    return _wgslsmith_f_op_f32(f32(-1f) * -1000f);
}

fn func_2() -> bool {
    global1 = ~vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, global0.a.a, global0.a.a, -23199i), vec4<i32>(global0.a.a, 6020i, -1i, -2147483647i)), -u_input.a.x), 20669i) & -_wgslsmith_mod_vec2_i32(firstTrailingBit(u_input.a.yy | u_input.a.xy), u_input.a.zz);
    var var_0 = global1.x;
    var var_1 = u_input.a.x;
    let var_2 = ~(~(global1.x >> (countOneBits(1u) % 32u))) ^ firstTrailingBit(min(-u_input.a.x, _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(global1.x, u_input.a.x, u_input.a.x))));
    let var_3 = Struct_3(Struct_2(Struct_1(max(39378i, select(global0.a.a, -2147483647i, global0.a.c.x)), global0.a.b, vec3<bool>(true, true, global0.a.b.x), global0.a.b.wwy)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-328f, _wgslsmith_f_op_f32(func_3(vec3<u32>(1u, 19351u, 251u))), _wgslsmith_f_op_f32(min(626f, -553f)), -1134f), vec4<f32>(_wgslsmith_f_op_f32(-962f - -713f), _wgslsmith_f_op_f32(270f + -1389f), _wgslsmith_f_op_f32(step(-1040f, -1000f)), 1f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-922f, -254f, -1247f, -215f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1295f, 1419f, 1220f, 863f))))), select(vec4<u32>(1u, 100231u, 1u, firstLeadingBit(max(18527u, 1u))), ~(~vec4<u32>(54858u, 4294967295u, 1u, 1u)), true));
    return all(!select(global0.a.b.yyw, !select(global0.a.b.wzz, global0.a.c, global0.a.d), global0.a.d.x));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<u32>) -> bool {
    let var_0 = ~(arg_1.x & (16384u ^ arg_1.x));
    let var_1 = Struct_2(Struct_1(-firstLeadingBit(0i), select(arg_0, vec4<bool>(true, false, global0.a.d.x, true & global0.a.b.x), global0.a.a > 1i), select(vec3<bool>(global0.a.c.x && arg_0.x, true, func_2()), global0.a.c, true || !global0.a.c.x), !global0.a.c));
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1254f, 1067f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1370f + -709f) + _wgslsmith_f_op_f32(ceil(-1485f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -1068f) * -504f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 625f, 101f, 1829f))), vec4<f32>(_wgslsmith_f_op_f32(254f - _wgslsmith_f_op_f32(f32(-1f) * -1306f)), _wgslsmith_f_op_f32(-1f), 1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(437f * 627f), -2237f, arg_0.x)))), vec4<bool>(arg_0.x && global0.a.b.x, global0.a.b.x, arg_0.x, !arg_0.x)));
    let var_3 = vec2<i32>(-_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(-38244i, global1.x), u_input.a.xz), global0.a.a), select(global1.x, 15446i, global0.a.b.x));
    var var_4 = Struct_3(var_1, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1961f - 586f)), var_2.x, _wgslsmith_f_op_f32(abs(var_2.x)), 808f) * vec4<f32>(_wgslsmith_f_op_f32(exp2(var_2.x)), var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -382f), _wgslsmith_f_op_f32(min(-195f, _wgslsmith_f_op_f32(-var_2.x))))), vec4<u32>(_wgslsmith_mod_u32(abs(arg_1.x), _wgslsmith_add_u32(38272u, 31093u)), ~max(1u, reverseBits(72943u)), ~(~(~arg_1.x)), var_0));
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(global0.a.a, global0.a.b, select(global0.a.b.xxx, vec3<bool>(true, global0.a.d.x && global0.a.b.x, func_1(vec4<bool>(global0.a.b.x, false, global0.a.b.x, global0.a.b.x), vec4<u32>(4294967295u, 4294967295u, 0u, 95601u))), select(!global0.a.c, vec3<bool>(global0.a.c.x, true, global0.a.d.x), true)), select(vec3<bool>(false, !global0.a.c.x, global0.a.c.x), !select(global0.a.c, global0.a.b.yyx, true), select(select(global0.a.b.wxy, vec3<bool>(global0.a.c.x, false, global0.a.b.x), global0.a.d.x), vec3<bool>(global0.a.b.x, true, global0.a.c.x), true))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(-246f)), -553f, _wgslsmith_f_op_f32(-554f * 1000f))) + vec3<f32>(-262f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-427f)), 1086f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(513f + 793f), -446f))));
    var var_2 = Struct_2(Struct_1(1i, var_0.a.b, vec3<bool>(!global0.a.b.x || !var_0.a.d.x, global0.a.b.x, !(var_0.a.d.x & global0.a.b.x)), select(global0.a.c, var_0.a.c, _wgslsmith_f_op_f32(1160f - 1450f) >= _wgslsmith_f_op_f32(-var_1.x))));
    global0 = Struct_2(global0.a);
    global0 = Struct_2(var_0.a);
    var var_3 = var_2.a;
    global1 = -select(u_input.a.yy, ~(~min(vec2<i32>(global1.x, 0i), u_input.a.zz)), vec2<bool>(_wgslsmith_f_op_f32(sign(1130f)) > var_1.x, false));
    var_0 = Struct_2(var_2.a);
    global0 = Struct_2(var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(_wgslsmith_div_u32(1u, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(1u, 71562u, 68976u), _wgslsmith_mult_u32(54396u, 39949u), ~5047u)), min(_wgslsmith_dot_vec2_u32(vec2<u32>(94564u, 57678u), vec2<u32>(45325u, 53845u)), ~(~4294967295u))), _wgslsmith_div_vec2_u32(vec2<u32>(max(~69932u, ~4294967295u), _wgslsmith_dot_vec3_u32(~vec3<u32>(110579u, 7540u, 1u), countOneBits(vec3<u32>(0u, 11857u, 1u)))), vec2<u32>(1u, 0u)), -(i32(-1i) * -var_2.a.a), min(vec2<u32>(1u, firstLeadingBit(1u)), vec2<u32>(1u, 1u)));
}

