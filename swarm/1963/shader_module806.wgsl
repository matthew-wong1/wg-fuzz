struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<i32>,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 218f;

var<private> global1: i32;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> bool {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2984f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(864f, 751f)))) * _wgslsmith_f_op_f32(floor(-1022f)));
    var var_0 = ~vec4<u32>(_wgslsmith_mult_u32(1u, 53819u), reverseBits(arg_1.a), u_input.c, _wgslsmith_mod_u32(arg_1.a, ~1u));
    var var_1 = false;
    let var_2 = Struct_1(arg_1.a, arg_1.b);
    var var_3 = -1598f;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(258f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1114f * -414f)))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
}

fn func_1(arg_0: Struct_1) -> i32 {
    let var_0 = vec4<bool>(true, true, !func_2(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -29554i), vec2<i32>(arg_0.b.x, -2147483647i) << (vec2<u32>(u_input.a, 82173u) % vec2<u32>(32u))), arg_0), true);
    var var_1 = false;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-950f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1303f, 1222f)))) - -290f);
    let var_3 = -917f;
    var var_4 = arg_0;
    return firstLeadingBit(-33465i);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<i32>) -> vec4<i32> {
    let var_0 = !(!(false & arg_0.x)) == (_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-270f)) - 1270f)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-339f + _wgslsmith_f_op_f32(round(695f)))));
    let var_1 = countOneBits(80015u);
    return _wgslsmith_clamp_vec4_i32(-select(-vec4<i32>(arg_1.x, -25559i, 1i, -41386i), vec4<i32>(-45528i, 2147483647i, u_input.e, arg_1.x), true | arg_0.x) ^ vec4<i32>(-u_input.b, ~(i32(-1i) * -1i), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-43803i, u_input.e, 46807i, u_input.b), arg_1), -2147483647i | u_input.e), 2147483647i), _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-24683i & u_input.e, _wgslsmith_add_i32(2147483647i, u_input.b), ~u_input.b, ~arg_1.x), ~arg_1), vec4<i32>(func_1(Struct_1(95761u, arg_1)), _wgslsmith_add_i32(2147483647i & u_input.e, 50962i), _wgslsmith_dot_vec2_i32(abs(arg_1.zy), _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), arg_1.wz)), -6103i)), arg_1);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: u32) -> vec4<i32> {
    var var_0 = arg_0;
    var var_1 = 23852i;
    var var_2 = arg_0;
    var_0 = Struct_1(var_0.a, abs(vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(arg_1.b, vec4<i32>(arg_0.b.x, arg_1.b.x, 6545i, u_input.e))));
    return _wgslsmith_mod_vec4_i32(~(~var_0.b), vec4<i32>(_wgslsmith_mod_i32(arg_1.b.x, ~u_input.b) ^ 2147483647i, 31775i, _wgslsmith_mult_i32(min(firstLeadingBit(-53698i), arg_0.b.x), ~_wgslsmith_clamp_i32(-2147483647i, var_2.b.x, arg_1.b.x)), var_0.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~(-func_1(Struct_1(u_input.d.x, firstTrailingBit(vec4<i32>(1i, 0i, 2147483647i, 0i)))));
    global1 = -1i;
    global1 = 0i;
    global1 = -firstLeadingBit(1i);
    global0 = _wgslsmith_f_op_f32(select(833f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1264f + 687f), _wgslsmith_f_op_f32(min(-2280f, -1161f))))), 741f)), true));
    global1 = -max(u_input.e, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 1i, -2789i), ~vec3<i32>(u_input.b, u_input.e, -11148i))) | (_wgslsmith_sub_i32(func_1(Struct_1(36680u, vec4<i32>(2147483647i, u_input.e, -2147483647i, 21297i))), u_input.e) ^ -5284i);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(1u, u_input.c), 37839u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, u_input.c, 1u), u_input.d)), u_input.d.xzy), -1809f, _wgslsmith_div_vec4_i32(func_4(Struct_1(~19932u, ~vec4<i32>(u_input.b, -29349i, u_input.e, 30972i)), Struct_1(select(3073u, u_input.c, false), func_3(vec2<bool>(true, false), vec4<i32>(25300i, u_input.e, -2147483647i, u_input.b))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(843f, 795f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(892f, -1728f) * vec2<f32>(1433f, -699f))), u_input.d.x), -(~firstLeadingBit(vec4<i32>(-3145i, -14239i, -57055i, u_input.b)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1556f, -499f, -441f, _wgslsmith_f_op_f32(ceil(1770f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(592f, -658f, 431f, -304f))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1246f, -2070f, 511f, -941f) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(116f, 1410f, 425f, 1054f)))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(315f, -2213f)) + 1767f))));
}

