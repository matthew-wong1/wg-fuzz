struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: bool,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec3<bool>,
    c: i32,
}

struct Struct_5 {
    a: bool,
    b: Struct_1,
    c: vec4<i32>,
    d: vec4<u32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
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

var<private> global0: array<Struct_3, 28>;

var<private> global1: Struct_1;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_5) -> vec3<u32> {
    var var_0 = Struct_5(!any(!select(vec4<bool>(true, global1.b, global1.b, global1.b), vec4<bool>(global1.b, true, arg_0.a, false), global1.b)), Struct_1(_wgslsmith_add_u32(global1.a, _wgslsmith_dot_vec3_u32(arg_0.d.wzz, arg_0.d.zwx)), (!global1.b | any(vec2<bool>(arg_0.b.b, false))) || !all(vec3<bool>(true, true, false)), ~5443u), vec4<i32>(~(~select(u_input.b.x, u_input.b.x, false)), -arg_0.c.x, 47722i, _wgslsmith_dot_vec4_i32(~arg_0.c, ~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, -1i, arg_0.c.x, arg_0.c.x), vec4<i32>(2147483647i, 0i, arg_0.c.x, arg_0.c.x)))), arg_0.d, ~max(1u, 71626u));
    global1 = Struct_1(21824u << (~global1.a % 32u), arg_0.a, abs(_wgslsmith_mult_u32(min(_wgslsmith_clamp_u32(arg_0.d.x, u_input.a, arg_0.b.c), global1.a), 4294967295u)));
    global1 = Struct_1(arg_0.d.x, false, _wgslsmith_dot_vec2_u32(var_0.d.yy, var_0.d.wy) << (~4294967295u % 32u));
    global1 = Struct_1(((~u_input.a & _wgslsmith_div_u32(global1.a, 2472u)) & 90073u) | u_input.a, any(vec3<bool>(any(vec3<bool>(global1.b, false, false)) || !arg_0.b.b, !any(vec2<bool>(false, global1.b)), !all(vec2<bool>(true, false)))), var_0.d.x);
    let var_1 = !vec2<bool>(all(!(!vec2<bool>(var_0.a, false))), var_0.b.b);
    return vec3<u32>(u_input.a, select(arg_0.d.x, abs(abs(global1.c)) >> ((1u << (min(u_input.a, var_0.e) % 32u)) % 32u), true), arg_0.e);
}

fn func_4(arg_0: vec3<u32>, arg_1: u32, arg_2: vec2<bool>) -> f32 {
    var var_0 = 7769u;
    let var_1 = vec4<f32>(-745f, 161f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(293f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1247f, 588f) + -107f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-568f, _wgslsmith_f_op_f32(abs(-1000f))) * 863f)));
    let var_2 = all(vec3<bool>(any(vec4<bool>(global1.b, arg_2.x, any(vec3<bool>(true, true, false)), true)), arg_2.x, any(!select(vec4<bool>(global1.b, false, global1.b, global1.b), vec4<bool>(true, true, global1.b, false), vec4<bool>(global1.b, true, true, false)))));
    var var_3 = _wgslsmith_mod_vec4_u32(select(~(~_wgslsmith_div_vec4_u32(vec4<u32>(arg_1, arg_0.x, global1.c, arg_1), vec4<u32>(78292u, u_input.a, 0u, arg_1))), vec4<u32>(4294967295u, ~(~global1.c), ~4294967295u, arg_0.x), false), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(global1.a, arg_0.x, arg_0.x, 6094u), vec4<u32>(0u, 59469u, 26735u, 20100u)), vec4<u32>(u_input.a, 36604u, arg_0.x, arg_1) ^ max(vec4<u32>(0u, u_input.a, arg_1, global1.a), vec4<u32>(38699u, global1.a, global1.c, arg_0.x))), ~vec4<u32>(0u, global1.c, 1u, arg_1) ^ (abs(vec4<u32>(arg_1, 25110u, arg_1, arg_1)) | ~vec4<u32>(global1.c, 4294967295u, 0u, global1.a))));
    var_3 = ~(firstLeadingBit(~abs(vec4<u32>(u_input.a, 4294967295u, 83374u, 0u))) ^ select(~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1, global1.c, var_3.x, var_3.x), vec4<u32>(60640u, arg_1, 1735u, 4294967295u)), vec4<u32>(6738u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 32796u, arg_0.x), vec3<u32>(33590u, 55019u, arg_1)), global1.c | arg_1, _wgslsmith_add_u32(u_input.a, u_input.a)), !select(vec4<bool>(var_2, false, false, false), vec4<bool>(true, arg_2.x, global1.b, false), vec4<bool>(true, arg_2.x, false, false))));
    return var_1.x;
}

fn func_2(arg_0: bool) -> u32 {
    let var_0 = Struct_4(true, vec3<bool>(true, true, true), u_input.b.x);
    let var_1 = firstTrailingBit(-u_input.b);
    var var_2 = global1.c;
    global0 = array<Struct_3, 28>();
    let var_3 = 321f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_3(Struct_5(false, Struct_1(36345u, arg_0, global1.a), vec4<i32>(u_input.b.x, -1i, var_0.c, 0i), vec4<u32>(global1.a, 0u, global1.c, global1.a), 1u)), u_input.a, !var_0.b.xx)));
    return ~_wgslsmith_mult_u32(0u, abs(u_input.a));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_5) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(759f, 508f, -718f, arg_0.d) - vec4<f32>(-550f, arg_0.d, -350f, -244f))))))));
    global0 = array<Struct_3, 28>();
    var var_1 = vec3<u32>(57796u, min(_wgslsmith_mult_u32(~_wgslsmith_mod_u32(4621u, 52115u), arg_0.b), arg_0.b ^ ~57367u), func_2(false));
    var var_2 = false;
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1208f)), -150f, var_0.x, 1583f));
    return -(vec2<i32>(arg_1.c.x, _wgslsmith_add_i32(arg_1.c.x, -24277i) ^ (u_input.b.x | u_input.b.x)) << (abs(vec2<u32>(~40748u, func_3(arg_1).x)) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_2(vec2<bool>(true, global1.b), u_input.a, true, 977f), Struct_5(false, Struct_1(~16162u, !(!global1.b), _wgslsmith_mod_u32(4294967295u, countOneBits(global1.a))), countOneBits(abs(vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, u_input.b.x))) ^ _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, -1i, u_input.b.x, 29123i), vec4<i32>(u_input.b.x, 30479i, 0i, u_input.b.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, -43858i, -1i, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x))), vec4<u32>(_wgslsmith_div_u32(1u, global1.a), _wgslsmith_div_u32(u_input.a, global1.c), u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(1606u, global1.c, global1.a), vec3<u32>(0u, 19675u, 19308u))) & reverseBits(vec4<u32>(1u, global1.c, u_input.a, global1.a)), ~firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(u_input.a, 0u, global1.a)))));
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-204f, _wgslsmith_f_op_f32(f32(-1f) * -569f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(370f)))))));
    var var_2 = any(!(!vec2<bool>(1i == u_input.b.x, true)));
    var var_3 = Struct_1(max(_wgslsmith_add_u32(~reverseBits(global1.a), u_input.a), firstLeadingBit(global1.a) | 0u), all(select(select(select(vec2<bool>(false, global1.b), vec2<bool>(false, false), global1.b), vec2<bool>(global1.b, global1.b), true), vec2<bool>(false, false), global1.b)), _wgslsmith_clamp_u32(0u, global1.c, ~48023u));
    let var_4 = Struct_5(true, Struct_1(61631u, !global1.b, (_wgslsmith_clamp_u32(u_input.a, 4481u, 10220u) << ((global1.a ^ 772u) % 32u)) ^ 5279u), -(-vec4<i32>(2147483647i, u_input.b.x, var_0.x, var_0.x) ^ _wgslsmith_div_vec4_i32(-vec4<i32>(var_0.x, 9047i, u_input.b.x, u_input.b.x), vec4<i32>(var_0.x, 35297i, -27339i, u_input.b.x))), vec4<u32>(global1.a, ~(~var_3.a << (firstTrailingBit(var_3.c) % 32u)), _wgslsmith_dot_vec2_u32(~(vec2<u32>(var_3.c, global1.a) >> (vec2<u32>(1u, var_3.a) % vec2<u32>(32u))), ~vec2<u32>(6502u, global1.a)), ~select(35709u, global1.a, !var_3.b)), ~min(var_3.a & _wgslsmith_sub_u32(global1.a, 1u), firstTrailingBit(46355u)));
    var_2 = true;
    var var_5 = Struct_5(all(vec4<bool>(var_3.b, false, true, true)), Struct_1(~(~global1.c ^ firstLeadingBit(global1.a)), !any(vec2<bool>(var_3.b, global1.b)), _wgslsmith_sub_u32(1u, 0u)), select(_wgslsmith_sub_vec4_i32(~var_4.c, vec4<i32>(-1i, _wgslsmith_dot_vec2_i32(var_4.c.wx, u_input.b.zz), ~(-55162i), max(1i, u_input.b.x))), _wgslsmith_sub_vec4_i32(max(~var_4.c, select(var_4.c, var_4.c, vec4<bool>(false, var_4.b.b, true, true))), var_4.c), !(!vec4<bool>(true, var_4.b.b, var_4.a, false))), var_4.d, ~(9372u << (~(~global1.a) % 32u)));
    var_3 = Struct_1(1u, !global1.b, ~(~(~global1.c)));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c);
}

