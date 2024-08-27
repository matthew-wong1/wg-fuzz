struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: bool,
    d: vec3<bool>,
    e: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 64850u;

var<private> global1: bool;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec3<bool>) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(181f, 224f, -1225f, -1193f)))))));
    let var_1 = Struct_2(arg_0.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-58015i, arg_0.b), ~_wgslsmith_div_vec2_i32(-u_input.a.zy, ~vec2<i32>(-26371i, arg_0.c))), ~(-abs(-1i) >> (_wgslsmith_dot_vec2_u32(~arg_0.a.zy, vec2<u32>(arg_1, arg_0.d)) % 32u)), _wgslsmith_dot_vec2_u32(vec2<u32>(select(32361u, abs(0u), any(arg_2.xz)), firstTrailingBit(countOneBits(1u))), ~vec2<u32>(arg_1, 0u) ^ ~(~arg_0.a.yz)));
    let var_2 = arg_2.zx;
    let var_3 = firstLeadingBit(_wgslsmith_dot_vec3_i32(reverseBits(abs(_wgslsmith_div_vec3_i32(u_input.a.xyx, u_input.a.wyz))), _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, arg_0.b, var_1.b), u_input.a.zwy | vec3<i32>(arg_0.c, u_input.a.x, 11046i)), vec3<i32>(-1i) * -u_input.a.xxw)));
    global0 = reverseBits(arg_1);
    return !select(vec3<bool>(arg_2.x, true, true && (var_2.x == arg_2.x)), select(arg_2, !select(vec3<bool>(arg_2.x, arg_2.x, arg_2.x), vec3<bool>(var_2.x, arg_2.x, false), false), !(!vec3<bool>(var_2.x, true, true))), false);
}

fn func_2(arg_0: i32, arg_1: vec3<u32>, arg_2: vec3<bool>) -> u32 {
    global0 = countOneBits(~23288u);
    var var_0 = Struct_1(_wgslsmith_clamp_vec2_u32(countOneBits(arg_1.yy), arg_1.zy, arg_1.yy) >> (arg_1.xy % vec2<u32>(32u)), 944f, arg_2.x, vec3<bool>(!(!arg_2.x | true), false || any(arg_2.yx), true), max(4294967295u, u_input.c));
    var var_1 = 1084f;
    var_1 = -497f;
    var var_2 = true | (any(select(func_3(Struct_2(vec3<u32>(u_input.c, 4294967295u, arg_1.x), u_input.a.x, u_input.d, 57026u), 1u, vec3<bool>(true, true, false)), vec3<bool>(var_0.c, arg_2.x, var_0.c), !var_0.d)) && true);
    return _wgslsmith_sub_u32(45372u, _wgslsmith_dot_vec2_u32(arg_1.xx, ~arg_1.xz));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-arg_1.x);
    let var_1 = vec3<u32>(reverseBits(~func_2(reverseBits(7803i), vec3<u32>(4294967295u, 1u, 57585u), vec3<bool>(false, false, true))), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(1u, 1u, u_input.c, ~u_input.c)), select(vec4<u32>(~0u, 4294967295u << (u_input.c % 32u), _wgslsmith_div_u32(6110u, u_input.c), _wgslsmith_div_u32(u_input.c, 1u)), ~(vec4<u32>(1u, u_input.c, 1u, u_input.c) & vec4<u32>(31616u, u_input.c, 1u, u_input.c)), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true)))), _wgslsmith_mod_u32(select(countOneBits(u_input.c), _wgslsmith_mod_u32(u_input.c, u_input.c & u_input.c), all(select(vec2<bool>(false, true), vec2<bool>(true, false), true))), reverseBits(61230u)));
    let var_2 = Struct_2(var_1, u_input.a.x, (_wgslsmith_sub_i32(firstTrailingBit(u_input.d), firstLeadingBit(u_input.d)) & 0i) | u_input.b, var_1.x);
    let var_3 = _wgslsmith_f_op_f32(floor(-1398f)) == arg_1.x;
    global0 = ~_wgslsmith_mod_u32(4294967295u, ~1u);
    return Struct_2(_wgslsmith_mod_vec3_u32(firstLeadingBit(~(vec3<u32>(u_input.c, 4294967295u, u_input.c) >> (var_2.a % vec3<u32>(32u)))), vec3<u32>(~_wgslsmith_add_u32(86933u, u_input.c), (u_input.c & 4294967295u) << (firstLeadingBit(u_input.c) % 32u), _wgslsmith_dot_vec2_u32(var_1.zy, vec2<u32>(var_2.d, 0u)) ^ _wgslsmith_sub_u32(18954u, var_2.d))), u_input.b, _wgslsmith_mult_i32(u_input.a.x, ~(-11438i)), _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, ~u_input.c, 1u), _wgslsmith_mod_vec3_u32(var_1, var_1)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 886f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-464f, 1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1255f)))))) + vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(1179f, 1941f), _wgslsmith_f_op_f32(-1000f + -724f), _wgslsmith_f_op_f32(f32(-1f) * -1017f)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-204f, -111f, -240f) * vec3<f32>(1635f, -1879f, 1341f)))), false))));
    global0 = var_0.d;
    global1 = true;
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(2125f, 926f, true)))))));
    var var_2 = ~_wgslsmith_mult_vec3_u32(select(~vec3<u32>(u_input.c, var_0.a.x, 44470u) ^ ~vec3<u32>(42467u, var_0.a.x, var_0.d), _wgslsmith_clamp_vec3_u32(max(var_0.a, vec3<u32>(64707u, 133985u, u_input.c)), vec3<u32>(130632u, 29152u, var_0.a.x), ~vec3<u32>(2231u, var_0.a.x, u_input.c)), func_3(var_0, u_input.c ^ var_0.a.x, select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true)).x), _wgslsmith_div_vec3_u32(~var_0.a, var_0.a));
    global0 = _wgslsmith_mod_u32(u_input.c, 43635u);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(-_wgslsmith_div_vec2_i32(u_input.a.xx, _wgslsmith_add_vec2_i32(u_input.a.wz, u_input.a.xx))), vec3<u32>(1u, 0u >> (var_0.a.x % 32u), _wgslsmith_mod_u32(var_0.d, min(62225u, _wgslsmith_mod_u32(4294967295u, 20141u)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(985f - var_1), -153f, -1182f, _wgslsmith_f_op_f32(sign(var_1)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 - var_1) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), -2348f)), ~u_input.a);
}

