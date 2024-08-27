struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: f32,
    d: vec3<f32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: vec3<u32>;

var<private> global2: vec3<i32> = vec3<i32>(1170i, 1i, 0i);

var<private> global3: i32 = 0i;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    global1 = select(~_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global1.x, 0u, global1.x), u_input.b.zwz), u_input.b.yww), ~u_input.b.xxw, false);
    let var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1611f, 1615f))) - _wgslsmith_f_op_f32(f32(-1f) * -431f)), -1376f), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1799f * 137f) + _wgslsmith_f_op_f32(round(-737f))))), 1f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -617f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(563f, 146f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-898f, -1189f, -1905f)))) + vec3<f32>(_wgslsmith_f_op_f32(1247f * -1000f), -394f, 1000f))), 0u);
    var var_1 = select(vec2<bool>(all(select(!vec2<bool>(global0.x, true), select(vec2<bool>(true, global0.x), vec2<bool>(false, global0.x), false), vec2<bool>(global0.x, false))), !(!any(vec2<bool>(false, false)))), !select(vec2<bool>(true, true), vec2<bool>(global0.x, global0.x & true), vec2<bool>(!global0.x, true)), !select(vec2<bool>(true, true), vec2<bool>(false, all(vec4<bool>(false, global0.x, false, true))), !select(vec2<bool>(global0.x, true), vec2<bool>(true, false), true)));
    global0 = vec2<bool>(any(vec2<bool>(any(vec2<bool>(false, var_1.x)), var_1.x | true)) | global0.x, -164f != _wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) * _wgslsmith_f_op_f32(select(var_0.b.x, var_0.d.x, global0.x)))));
    var var_2 = var_0;
    return var_0.d.x;
}

fn func_2() -> vec2<f32> {
    var var_0 = vec3<u32>(822u, abs(u_input.c.x & 1u), _wgslsmith_mult_u32(~select(4294967295u, u_input.a | 1u, global0.x || false), 10279u));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(560f - -254f))), -1000f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1103f, 230f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2390f, 886f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-3055f, 194f), vec2<f32>(932f, 440f)))) + vec2<f32>(_wgslsmith_f_op_f32(ceil(111f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-321f * -1647f) - -390f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1784f, 1243f, -489f)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(889f, -402f, 1000f) + vec3<f32>(-553f, -693f, -102f))))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, -1000f, 279f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(232f, -128f, 213f))), select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(true, true, false), global0.x))), vec3<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(round(306f)), _wgslsmith_f_op_f32(611f * -2283f)), true))), var_0.x);
    global0 = vec2<bool>(true, global0.x);
    let var_2 = u_input.b.xyx;
    var var_3 = var_1.d;
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d.x, var_3.x));
}

fn func_1(arg_0: bool, arg_1: vec2<f32>) -> Struct_1 {
    global1 = vec3<u32>(1u, firstLeadingBit(~_wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, global1.x), min(u_input.c, vec2<u32>(global1.x, global1.x)))), ~u_input.c.x << (1u % 32u));
    let var_0 = Struct_1(arg_1, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.x + -378f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1220f - arg_1.x) - _wgslsmith_f_op_f32(370f - 196f))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_2())))), -323f, vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1865f) - _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(step(741f, arg_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + arg_1.x) - arg_1.x))), ~global1.x);
    let var_1 = 1i;
    let var_2 = var_0;
    let var_3 = var_2;
    return var_3;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> i32 {
    let var_0 = select(true, global0.x, !global0.x);
    var var_1 = -374i;
    var_1 = (_wgslsmith_mult_i32(-3162i, arg_2) >> (_wgslsmith_div_u32(31899u, ~55924u) % 32u)) & 2147483647i;
    var var_2 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_3.a.x))), _wgslsmith_div_f32(arg_1.c, _wgslsmith_f_op_f32(551f - _wgslsmith_f_op_f32(round(arg_3.b.x)))), _wgslsmith_f_op_f32(sign(1262f)), 1156f), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, arg_3.d.x, -941f, arg_1.d.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-921f, arg_1.a.x, arg_1.d.x, 1150f)))))))));
    var var_3 = global2.x;
    return firstTrailingBit(_wgslsmith_clamp_i32(arg_2, u_input.d.x, ~66785i));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = firstLeadingBit(vec3<i32>(-global2.x, select(_wgslsmith_sub_i32(0i, u_input.d.x), abs(global2.x), true), global2.x));
    let var_0 = u_input.d.x;
    global2 = ~vec3<i32>(-(~(global2.x ^ 45159i)), _wgslsmith_clamp_i32(~u_input.d.x, -49717i, func_4(vec2<bool>(true, true), func_1(global0.x, vec2<f32>(-511f, -989f)), ~global2.x, Struct_1(vec2<f32>(-997f, -199f), vec2<f32>(1087f, 404f), -1696f, vec3<f32>(-384f, -1383f, -351f), u_input.b.x))), firstTrailingBit(var_0));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(u_input.b, vec4<u32>(4294967295u, ~1u >> ((global1.x & global1.x) % 32u), u_input.c.x, 60223u), ~(~vec4<u32>(42597u, 1u, 0u, 16647u)) << (vec4<u32>(_wgslsmith_add_u32(10360u, u_input.b.x), 34760u, ~1u, ~u_input.a) % vec4<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - func_1(true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1350f, 769f))).a.x) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))), 813f)), _wgslsmith_clamp_vec2_u32(global1.yz, (~vec2<u32>(66923u, u_input.c.x) ^ abs(global1.xx)) >> (vec2<u32>(27806u & u_input.b.x, u_input.c.x) % vec2<u32>(32u)), u_input.b.zx), vec3<i32>(u_input.d.x, -34437i, -27900i));
}

