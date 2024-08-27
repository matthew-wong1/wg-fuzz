struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 22>;

var<private> global1: array<vec4<u32>, 22>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: bool) -> vec3<f32> {
    return vec3<f32>(arg_1.x, -267f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * arg_0.b.x))));
}

fn func_1(arg_0: u32, arg_1: vec2<f32>, arg_2: f32, arg_3: vec2<i32>) -> vec3<f32> {
    global1 = array<vec4<u32>, 22>();
    global1 = array<vec4<u32>, 22>();
    global0 = array<i32, 22>();
    global0 = array<i32, 22>();
    global0 = array<i32, 22>();
    return _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, -1104f, arg_1.x) + vec3<f32>(274f, arg_2, -420f)) + _wgslsmith_div_vec3_f32(vec3<f32>(arg_1.x, arg_2, 762f), vec3<f32>(arg_1.x, arg_1.x, 1045f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, -865f, arg_2) * vec3<f32>(2485f, arg_2, -400f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(854f * arg_2)), -872f, arg_2)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -670f, arg_1.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_2, arg_2))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-837f, arg_2, 1123f), vec3<f32>(arg_2, 376f, arg_2))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-246f, 1045f, 2336f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1.x, arg_1.x, arg_2), vec3<f32>(arg_2, 532f, 840f))) - vec3<f32>(-1626f, -699f, 599f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(Struct_1(arg_0, vec3<f32>(-630f, arg_1.x, arg_1.x), arg_3, u_input.b), vec4<f32>(-1000f, arg_1.x, arg_2, arg_2), true))))))));
}

fn func_3(arg_0: f32, arg_1: vec4<bool>) -> vec2<i32> {
    let var_0 = arg_1.zx;
    global1 = array<vec4<u32>, 22>();
    var var_1 = global0[_wgslsmith_index_u32(firstTrailingBit(u_input.e.x), 22u)];
    let var_2 = Struct_1(_wgslsmith_clamp_u32(~u_input.b.x | _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(79265u, u_input.e.x, u_input.b.x, 53628u), vec4<u32>(1779u, 32020u, 0u, u_input.b.x)), global1[_wgslsmith_index_u32(u_input.e.x, 22u)]), reverseBits(_wgslsmith_sub_u32(~u_input.e.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, 1u, u_input.e.x, u_input.e.x), vec4<u32>(u_input.e.x, 1u, u_input.b.x, u_input.e.x)))), u_input.e.x ^ _wgslsmith_mod_u32(abs(1u), u_input.e.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1141f, arg_0))), arg_0, _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(1000f - arg_0)))), u_input.d.yw, _wgslsmith_sub_vec3_u32(firstTrailingBit(u_input.b), ~u_input.b));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, var_2.b.x, arg_0, arg_0))))) + vec4<f32>(_wgslsmith_f_op_f32(floor(-489f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-668f * arg_0))), arg_0, _wgslsmith_f_op_f32(var_2.b.x - -310f))));
    return u_input.d.xx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(firstLeadingBit(0u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(317f, 110f, 1000f), vec3<f32>(-2527f, -455f, -315f))))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-220f, 1299f, -1169f) * vec3<f32>(-255f, -733f, -1067f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1349f, 963f, 699f) - _wgslsmith_f_op_vec3_f32(func_1(u_input.e.x, vec2<f32>(-299f, 669f), 916f, u_input.d.xx))))), ~_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(select(u_input.d.xy, u_input.d.zx, false), vec2<i32>(-1207i, u_input.d.x), vec2<i32>(global0[_wgslsmith_index_u32(0u, 22u)], 2147483647i)), func_3(-141f, select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false)))), countOneBits(~u_input.b));
    let var_1 = ~firstTrailingBit(reverseBits(~4231u)) << (~(2556u << (_wgslsmith_sub_u32(reverseBits(59037u), ~var_0.d.x) % 32u)) % 32u);
    let var_2 = ~_wgslsmith_div_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(10137u, var_1) | var_0.d.yy, firstLeadingBit(var_0.d.xy)), u_input.b.xx);
    let var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.x, -481f))))) >= _wgslsmith_f_op_vec3_f32(func_1(var_2.x, _wgslsmith_f_op_vec2_f32(-var_0.b.zy), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(610f)), _wgslsmith_div_f32(424f, _wgslsmith_f_op_f32(var_0.b.x * -471f)))), ~min(var_0.c, vec2<i32>(-1i, -65732i)) & abs(vec2<i32>(u_input.a, 7640i) & u_input.d.xx))).x;
    global1 = array<vec4<u32>, 22>();
    let var_4 = vec2<i32>(_wgslsmith_clamp_i32(u_input.d.x, var_0.c.x, -(~u_input.a)) << (4294967295u % 32u), _wgslsmith_sub_i32(~abs(-6347i), -20523i));
    global1 = array<vec4<u32>, 22>();
    let var_5 = Struct_1(~_wgslsmith_dot_vec3_u32(u_input.b, var_0.d), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_1(var_2.x, vec2<f32>(-846f, var_0.b.x), 1015f, var_4)).x), var_0.b.x) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b)), var_0.b, true))), _wgslsmith_div_vec2_i32(var_0.c, -_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, u_input.c) >> (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u)), countOneBits(vec2<i32>(13740i, 2147483647i)), abs(var_0.c))), u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(-955f, var_0.b.x, _wgslsmith_div_vec3_f32(var_5.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1187f, 591f, var_5.b.x)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-290f, 1402f, 1000f), vec3<f32>(var_5.b.x, var_5.b.x, var_5.b.x), var_3)), var_3 || var_3)) * var_0.b)), var_5.c.x);
}

