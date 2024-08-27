struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: u32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec2<u32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-33795i, 1i, -33984i, -7418i);

var<private> global1: Struct_2 = Struct_2(Struct_1(vec2<f32>(-1204f, 1461f), 23704i, -1i, 4294967295u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32) -> vec4<u32> {
    let var_0 = Struct_4(abs(~select(u_input.a.www, vec3<u32>(19316u, u_input.a.x, 28984u), vec3<bool>(true, true, true))), u_input.a.x, Struct_3(Struct_1(global1.a.a, 1i, ~(u_input.c ^ -64710i), ~arg_0 ^ ~arg_0), global1.a.a));
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1427f);
    var_1 = true;
    var var_3 = select(!any(select(vec2<bool>(false, true), vec2<bool>(true, true), any(vec2<bool>(false, true)))), false && !all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true))), false);
    return abs(firstTrailingBit(firstLeadingBit(vec4<u32>(u_input.a.x, _wgslsmith_dot_vec3_u32(var_0.a, vec3<u32>(22502u, 1u, var_0.b)), u_input.a.x, var_0.a.x))));
}

fn func_2() -> Struct_4 {
    let var_0 = global1.a.b;
    var var_1 = ~(~(func_3(_wgslsmith_mult_u32(u_input.a.x, global1.a.d)) | ~vec4<u32>(8676u, u_input.a.x, global1.a.d, u_input.a.x)));
    var_1 = vec4<u32>(var_1.x, ~func_3(select(firstLeadingBit(u_input.a.x), 12303u, -1668f < global1.a.a.x)).x, firstTrailingBit(0u), ~var_1.x);
    global1 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a.a.x + -765f), global1.a.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -284f))), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global1.a.b, global1.a.b, 9532i, 44595i), vec4<i32>(global1.a.b, global1.a.c, 15186i, -1i)), select(vec4<i32>(u_input.c, global1.a.b, -1i, u_input.b.x), firstLeadingBit(vec4<i32>(44314i, 1i, global1.a.b, -13061i)), true)), _wgslsmith_clamp_i32(global0.x, -1i, 0i), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(var_1.x, 1u) & 1u, 41557u, ~_wgslsmith_mult_u32(global1.a.d, global1.a.d))));
    var_1 = vec4<u32>(6278u, _wgslsmith_sub_u32(~var_1.x, 56102u | u_input.a.x), _wgslsmith_mod_u32(~0u, global1.a.d), 1u);
    return Struct_4(u_input.a.ywy, var_1.x, Struct_3(Struct_1(vec2<f32>(global1.a.a.x, global1.a.a.x), _wgslsmith_div_i32(select(2147483647i, global1.a.c, true), _wgslsmith_mult_i32(1i, global1.a.c)), -51406i, _wgslsmith_mult_u32(41751u, abs(var_1.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.a.x, 392f))), global1.a.a)));
}

fn func_1(arg_0: bool) -> vec3<f32> {
    global0 = abs(~(vec4<i32>(~1i, -22809i, _wgslsmith_clamp_i32(global1.a.c, global1.a.c, 2147483647i), -u_input.b.x) ^ _wgslsmith_div_vec4_i32(~vec4<i32>(global1.a.c, 7220i, 29040i, 0i), abs(vec4<i32>(global1.a.c, global0.x, u_input.b.x, global1.a.c)))));
    let var_0 = func_2();
    let var_1 = var_0.c.a;
    var var_2 = func_2().c.a;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.b.x, var_0.c.b.x, 443f) - vec3<f32>(var_1.a.x, -239f, global1.a.a.x)) - vec3<f32>(-264f, global1.a.a.x, -412f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.a.a.x, var_2.a.x, global1.a.a.x)))), select(select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(arg_0, false, arg_0), true), vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, false, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.c.a.a.x, 774f, -389f))))))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(779f, 1000f)) + 829f)), var_2.a.x, _wgslsmith_f_op_f32(475f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global1.a.a.x)), _wgslsmith_f_op_f32(-414f + -151f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(444f, 1000f, 1307f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.a.x, -1123f, global1.a.a.x) - vec3<f32>(639f, 877f, global1.a.a.x))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(false)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.a.x, -175f, -1075f) - vec3<f32>(global1.a.a.x, -1276f, -1340f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-914f, 415f, global1.a.a.x) - vec3<f32>(-372f, -1268f, global1.a.a.x))))));
    var var_1 = select(select(vec3<bool>(true, true, true), select(vec3<bool>(any(vec4<bool>(true, true, false, true)), true, true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), vec3<bool>(false, true, true), true), vec3<bool>(select(true, true, false), global1.a.a.x < 1807f, any(vec3<bool>(true, false, true)))), false), !vec3<bool>(true, _wgslsmith_div_f32(-2089f, 1619f) <= var_0.x, true), true);
    let var_2 = Struct_4(~((vec3<u32>(1u, 0u, global1.a.d) ^ select(vec3<u32>(global1.a.d, 4294967295u, u_input.a.x), u_input.a.xwy, var_1.x)) | u_input.a.zzz), ~(~(~global1.a.d) ^ max(~u_input.a.x, ~global1.a.d)), func_2().c);
    let var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-188f + 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1205f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(global1.a.a)))) + global1.a.a));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_sub_i32(var_2.c.a.c, max(u_input.b.x | global0.x, 43594i)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1482f, var_2.c.b.x)), var_3.x), ~_wgslsmith_sub_vec2_u32(~(~var_2.a.xz), var_2.a.zy & _wgslsmith_mod_vec2_u32(var_2.a.xy, u_input.a.yz)), global1.a.b, var_0.x);
}

