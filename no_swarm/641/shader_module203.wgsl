struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: vec3<i32>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<i32>) -> vec4<f32> {
    let var_0 = abs(~(~(-(~arg_0.yz))));
    var var_1 = ~(-(vec4<i32>(max(-6643i, var_0.x), u_input.a.x, firstLeadingBit(var_0.x), 50996i) & ~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, arg_0.x, arg_0.x, arg_0.x), vec4<i32>(74595i, u_input.a.x, -2147483647i, arg_0.x))));
    let var_2 = ~4294967295u;
    var var_3 = reverseBits(2662u);
    var_3 = countOneBits(7845u);
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(120f, 262f, -1000f, 670f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-758f, 774f, 1000f, 1116f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(530f, -1833f, 802f, -1691f)))))));
}

fn func_2(arg_0: bool, arg_1: vec2<f32>, arg_2: u32) -> Struct_3 {
    let var_0 = arg_1.x;
    let var_1 = true;
    let var_2 = Struct_3(min(_wgslsmith_mod_u32(4294967295u, arg_2), abs(1u) & arg_2));
    var var_3 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, 1079f, 1133f, -597f), vec4<f32>(-292f, -558f, var_0, 363f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, var_0, 1144f, arg_1.x), vec4<f32>(var_0, -386f, 914f, -121f), vec4<bool>(true, false, var_1, arg_0)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.x, var_0, arg_1.x, var_0), vec4<f32>(arg_1.x, var_0, 783f, -930f))) + _wgslsmith_f_op_vec4_f32(func_3(vec3<i32>(-10272i, -33878i, -1i))))), _wgslsmith_div_vec4_f32(vec4<f32>(var_0, _wgslsmith_f_op_f32(round(arg_1.x)), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(arg_1.x * arg_1.x)), vec4<f32>(_wgslsmith_f_op_f32(min(var_0, -1040f)), _wgslsmith_f_op_vec4_f32(func_3(vec3<i32>(0i, u_input.a.x, u_input.a.x))).x, _wgslsmith_div_f32(arg_1.x, -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1152f)))), _wgslsmith_f_op_f32(min(var_0, _wgslsmith_f_op_f32(f32(-1f) * -460f))), _wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(26359i, u_input.a.x, 1i, -1i)) & (vec4<i32>(u_input.a.x, 40123i, u_input.a.x, u_input.a.x) >> ((vec4<u32>(32724u, 1u, 3807u, arg_2) | vec4<u32>(1u, 0u, u_input.b.x, 1u)) % vec4<u32>(32u))), -vec4<i32>(max(u_input.a.x, u_input.a.x), reverseBits(u_input.a.x), u_input.a.x, ~u_input.a.x)));
    var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(var_3.a * var_3.a))), var_3.b, min(max(abs(var_3.c), abs(vec4<i32>(u_input.a.x, var_3.c.x, var_3.c.x, var_3.c.x))), var_3.c) >> (~reverseBits(reverseBits(vec4<u32>(var_2.a, 97144u, arg_2, arg_2))) % vec4<u32>(32u)));
    return Struct_3(117051u << (arg_2 % 32u));
}

fn func_1(arg_0: Struct_2) -> f32 {
    let var_0 = ~(~vec2<u32>(1u, 1u));
    var var_1 = Struct_3(~var_0.x);
    var_1 = func_2(any(vec4<bool>(true, true, any(select(vec2<bool>(true, false), vec2<bool>(true, true), true)), true)), arg_0.a.xx, 0u);
    var_1 = Struct_3(35914u);
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_vec4_f32(func_3(vec3<i32>(arg_0.c.x, 19085i, 20984i))).x, arg_0.a.x), _wgslsmith_f_op_f32(min(arg_0.a.x, arg_0.a.x)), arg_0.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f - 1056f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-2012f))))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(295f, arg_0.b) * _wgslsmith_div_f32(1000f, 434f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(arg_0.a.x)), _wgslsmith_f_op_f32(max(708f, 591f))))))), vec3<i32>(u_input.a.x, u_input.a.x, -_wgslsmith_mod_i32(~2147483647i, -arg_0.c.x)));
    return _wgslsmith_f_op_vec4_f32(func_3(abs(_wgslsmith_mod_vec3_i32(arg_0.c, ~vec3<i32>(arg_0.c.x, -17411i, -2147483647i))))).x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(abs(~u_input.a.x), _wgslsmith_div_i32(u_input.a.x, u_input.a.x), false);
    var_0 = -_wgslsmith_add_i32(~(-32607i), _wgslsmith_clamp_i32(0i, ~(-13982i), i32(-1i) * -26202i));
    var var_1 = u_input.b.x;
    var_0 = u_input.a.x >> (u_input.b.x % 32u);
    var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i) & _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), u_input.a.x, -42223i, ~34456i), ~vec4<i32>(-1i, -6327i, -29461i, u_input.a.x) & ~vec4<i32>(u_input.a.x, 9479i, u_input.a.x, 36323i)), vec4<i32>(16678i, u_input.a.x, 1i, firstTrailingBit(1i)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -1145f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -757f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2, _wgslsmith_f_op_f32(func_1(Struct_2(vec4<f32>(var_2, 729f, -1154f, -1262f), -205f, vec3<i32>(u_input.a.x, 7401i, u_input.a.x))))) - -515f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1294f)), -1172f)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_2, var_2, 1644f, 1220f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, -1097f, var_2, var_2))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, var_2, var_2, var_2) - vec4<f32>(var_2, var_2, var_2, -691f)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2, -473f, 1158f, var_2))))))), _wgslsmith_mult_i32(max(_wgslsmith_add_i32(-1i & u_input.a.x, _wgslsmith_div_i32(u_input.a.x, u_input.a.x)), ~(u_input.a.x << (u_input.b.x % 32u))), abs(abs(u_input.a.x << (u_input.b.x % 32u)))));
}

