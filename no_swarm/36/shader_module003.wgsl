struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: f32,
    d: f32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
    e: f32,
}

struct Struct_3 {
    a: i32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: u32,
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

var<private> global0: vec2<u32>;

var<private> global1: array<vec3<i32>, 26>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: bool) -> vec2<u32> {
    var var_0 = Struct_2(Struct_1(0i, vec2<f32>(_wgslsmith_f_op_f32(ceil(1000f)), -383f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), 870f, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(-900f)), _wgslsmith_f_op_f32(f32(-1f) * -674f), -1000f) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-196f, -2067f, -554f))))), Struct_1(_wgslsmith_dot_vec2_i32(firstLeadingBit(u_input.b.zw), u_input.a.yx), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1475f, -566f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1066f, -874f) + vec2<f32>(2164f, -451f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1460f + -1440f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -653f))), 776f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-294f, 549f, -598f))) + vec3<f32>(928f, _wgslsmith_f_op_f32(208f - 364f), _wgslsmith_f_op_f32(select(1583f, 933f, false))))), Struct_1(3621i, vec2<f32>(1f, 1f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-937f - 328f), _wgslsmith_f_op_f32(abs(-1920f)))), 454f, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-958f * -1376f)), _wgslsmith_f_op_f32(-122f + _wgslsmith_f_op_f32(f32(-1f) * -284f)), 315f)), vec3<i32>(-arg_2.a, ~12088i, -2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1653f * 1078f))))));
    global0 = _wgslsmith_mod_vec2_u32(vec2<u32>(~u_input.e, global0.x), _wgslsmith_div_vec2_u32(~vec2<u32>(u_input.d.x >> (4294967295u % 32u), _wgslsmith_sub_u32(u_input.d.x, global0.x)), vec2<u32>(1u, select(~global0.x, u_input.d.x, true))));
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(var_0.a.e.zx));
    let var_2 = var_0.a;
    var var_3 = min(~(~(~(~u_input.d.x))), _wgslsmith_mod_u32(global0.x, abs(select(_wgslsmith_mult_u32(0u, u_input.e), 0u, all(arg_2.b.xz)))));
    return u_input.d.wz;
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    global0 = ~max(_wgslsmith_sub_vec2_u32(u_input.d.zx, u_input.d.xx) ^ func_3(_wgslsmith_sub_i32(-69984i, 12488i), vec3<bool>(true, true, true), Struct_3(u_input.a.x, vec3<bool>(true, false, true)), true), select(u_input.d.zz, u_input.d.zy, vec2<bool>(true, true)));
    var var_0 = Struct_3(-((_wgslsmith_dot_vec4_i32(vec4<i32>(-4559i, u_input.a.x, 4962i, 0i), vec4<i32>(u_input.a.x, u_input.c.x, 30233i, 38515i)) >> (1u % 32u)) ^ -33718i), vec3<bool>(true, true, true));
    let var_1 = ~vec4<u32>((1u | u_input.d.x) & firstTrailingBit(u_input.d.x), 0u, 8099u, 4294967295u);
    let var_2 = u_input.a;
    let var_3 = 1i;
    return Struct_1(countOneBits(i32(-1i) * -2147483647i), vec2<f32>(arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -835f) * _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(1000f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-623f * arg_0.x)))) * 357f), -256f, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(arg_0.x * -333f), _wgslsmith_f_op_f32(-arg_0.x), -489f))))));
}

fn func_1(arg_0: vec3<u32>) -> vec3<bool> {
    let var_0 = arg_0;
    var var_1 = func_2(vec3<f32>(-1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -3195f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-456f, -1101f, false)), _wgslsmith_f_op_f32(-165f * 865f), true))))));
    return vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.b.x, _wgslsmith_f_op_f32(floor(1724f))))) <= var_1.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.e.x + 392f)), _wgslsmith_f_op_f32(trunc(123f))) < _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.c)))), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_dot_vec4_i32(~(~_wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(u_input.c.x, -2147483647i, u_input.b.x, 8114i))), vec4<i32>(u_input.a.x, -9631i, -12416i, i32(-1i) * -u_input.a.x)), func_1(~(~(~vec3<u32>(20745u, 0u, 20015u)))));
    let var_1 = var_0;
    global0 = ~max(~u_input.d.yz, vec2<u32>(_wgslsmith_mod_u32(u_input.d.x, global0.x), u_input.d.x)) & abs(_wgslsmith_mod_vec2_u32(u_input.d.yw, u_input.d.wz));
    var var_2 = u_input.a.yy;
    global0 = ~vec2<u32>(u_input.d.x, u_input.d.x);
    global1 = array<vec3<i32>, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_i32(firstTrailingBit(-35259i), 2147483647i), _wgslsmith_dot_vec2_i32(u_input.b.yx, u_input.c));
}

