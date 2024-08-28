struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: bool,
    d: vec4<i32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_2,
    c: Struct_1,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_4, 23>;

var<private> global2: vec3<i32>;

var<private> global3: vec2<i32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32) -> vec2<i32> {
    global1 = array<Struct_4, 23>();
    global0 = 0u;
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1493f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1173f)) + _wgslsmith_f_op_f32(select(-634f, -2099f, true))))))));
    var var_1 = 61048u;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -308f), abs(abs(vec3<i32>(global3.x, 0i, _wgslsmith_clamp_i32(1i, global2.x, global3.x)))));
    return vec2<i32>(~u_input.c, _wgslsmith_dot_vec4_i32(-_wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.c, -27596i, u_input.c, 0i), vec4<i32>(2147483647i, 0i, u_input.c, global2.x)), vec4<i32>(~var_2.b.x, 40861i, -38179i, ~(u_input.c | -17921i))));
}

fn func_2(arg_0: Struct_3, arg_1: vec4<i32>) -> vec3<i32> {
    var var_0 = _wgslsmith_clamp_vec2_i32(vec2<i32>(global3.x, u_input.c), vec2<i32>(-1i, arg_1.x), ~select(vec2<i32>(40936i, global3.x), -arg_1.xy, vec2<bool>(false, true)) | func_3(u_input.b));
    let var_1 = ~arg_1.ww;
    let var_2 = _wgslsmith_add_u32(countOneBits(_wgslsmith_sub_u32(~u_input.b, ~arg_0.b)), 1u);
    let var_3 = _wgslsmith_f_op_f32(min(arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(801f, 690f)), _wgslsmith_f_op_f32(ceil(arg_0.a))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1023f, 643f)))))));
    var var_4 = select(!vec2<bool>(all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false))), false), !vec2<bool>(true, all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true))), all(!select(vec2<bool>(false, true), vec2<bool>(false, false), true)));
    return ~arg_1.zzz;
}

fn func_1(arg_0: vec4<u32>) -> f32 {
    global2 = max(select(vec3<i32>(_wgslsmith_mult_i32(global2.x, u_input.c), _wgslsmith_add_i32(u_input.a, 2147483647i), ~2147483647i) & firstLeadingBit(-vec3<i32>(global2.x, u_input.c, 32684i)), max(func_2(Struct_3(315f, u_input.b), vec4<i32>(24119i, 23472i, 25219i, -10725i) >> (arg_0 % vec4<u32>(32u))), vec3<i32>(-1i) * -vec3<i32>(global2.x, -2147483647i, u_input.a)), true), abs(_wgslsmith_mod_vec3_i32(select(vec3<i32>(u_input.a, u_input.c, 1i), countOneBits(vec3<i32>(1i, 1i, global3.x)), vec3<bool>(false, false, false)), vec3<i32>(2147483647i, _wgslsmith_div_i32(u_input.a, 1i), _wgslsmith_sub_i32(global3.x, -20769i)))));
    var var_0 = Struct_2(_wgslsmith_clamp_vec2_u32(min(arg_0.zx | vec2<u32>(40388u, arg_0.x), ~vec2<u32>(arg_0.x, arg_0.x)), _wgslsmith_div_vec2_u32(vec2<u32>(42548u, arg_0.x), ~arg_0.xy), ~arg_0.xz) ^ vec2<u32>(max(~1u, 16972u >> (arg_0.x % 32u)), ~(arg_0.x >> (u_input.b % 32u))), Struct_1(-1000f, ~abs(abs(vec3<i32>(-2900i, global2.x, u_input.c)))));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.b.a - var_0.b.a))))), 108069u);
    var var_2 = Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.a, _wgslsmith_f_op_f32(-675f * 876f))) * _wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(f32(-1f) * -1200f))))), reverseBits(64115u & arg_0.x));
    var var_3 = !(!vec2<bool>(any(vec4<bool>(true, true, true, true)), !(var_2.a > -1000f)));
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -2239f)), _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(func_1(~vec4<u32>(0u, 0u, u_input.b, 63866u))))))), select(vec3<i32>(global3.x, -min(global2.x, global3.x), _wgslsmith_sub_i32(max(global3.x, 1i), ~u_input.c)), vec3<i32>(_wgslsmith_mult_i32(1i | u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(18767i, 32405i, global2.x, global3.x), vec4<i32>(global2.x, 0i, -19825i, 26456i))), -2147483647i, select(~global3.x, _wgslsmith_mod_i32(global2.x, -1i), any(vec4<bool>(true, false, false, true)))), vec3<bool>(true, true, _wgslsmith_f_op_f32(sign(-785f)) == -348f)));
    var var_1 = u_input.b;
    var var_2 = Struct_2(~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(u_input.b, 56536u)), ~u_input.b) | ~(~vec2<u32>(u_input.b, u_input.b)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(var_0.a)))) - _wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_div_vec3_i32(select(-var_0.b, var_0.b, true), vec3<i32>(-6076i, -63891i, -24597i))));
    global1 = array<Struct_4, 23>();
    var_2 = Struct_2(select(firstTrailingBit(var_2.a), abs(vec2<u32>(1u, ~0u)), any(select(vec2<bool>(true, true), vec2<bool>(false, false), select(false, true, true)))), var_2.b);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.a, var_0.a, 1044f), vec3<f32>(var_0.a, 448f, -956f), vec3<bool>(false, false, false)))))));
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_2.b.a, 435f, 933f, var_3.x))), vec4<f32>(-397f, -797f, -122f, -1310f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_0.a, var_0.a, -513f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1619f, var_2.b.a, var_3.x, 1514f)) + vec4<f32>(-360f, var_3.x, var_0.a, var_0.a)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-709f, var_0.a, var_2.b.a, var_2.b.a))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.a, var_0.a, 1178f, var_0.a))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-1701f, var_2.b.a, var_2.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.a) * 345f))));
}

