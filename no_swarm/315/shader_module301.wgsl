struct Struct_1 {
    a: u32,
    b: f32,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
    c: vec2<f32>,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 8>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> u32 {
    global0 = array<vec4<i32>, 8>();
    global0 = array<vec4<i32>, 8>();
    let var_0 = vec2<u32>(u_input.d.x >> (max(4294967295u ^ u_input.d.x, u_input.d.x) % 32u), ~(~4294967295u));
    let var_1 = Struct_1(u_input.b.x, _wgslsmith_f_op_f32(-2448f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(733f - -807f)))), var_0.x, false);
    let var_2 = (!var_1.d && (abs(~u_input.a.x) == u_input.a.x)) | var_1.d;
    return ~firstLeadingBit(~67797u);
}

fn func_2() -> vec2<f32> {
    global0 = array<vec4<i32>, 8>();
    var var_0 = Struct_1(_wgslsmith_mod_u32(func_3(), 21553u), -703f, _wgslsmith_sub_u32(~28171u, ~u_input.c), select(u_input.a.x <= _wgslsmith_div_i32(0i, -1i), true, ~12661u > _wgslsmith_sub_u32(42821u, u_input.d.x)) || !(!all(vec2<bool>(false, true))));
    var_0 = Struct_1(~0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.b))), 4294967295u, all(vec4<bool>(var_0.d, true, !var_0.d & (var_0.b > var_0.b), true)));
    global0 = array<vec4<i32>, 8>();
    var var_1 = vec2<bool>(true, var_0.d);
    return _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(272f, var_0.b)))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: i32) -> Struct_1 {
    global0 = array<vec4<i32>, 8>();
    var var_0 = vec3<bool>(true, all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true)), true), countOneBits(u_input.b.x) != _wgslsmith_mult_u32(arg_1.x, 3197u))), all(vec2<bool>(true, select(true, true, true))));
    var var_1 = true;
    global0 = array<vec4<i32>, 8>();
    return Struct_1(4294967295u, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-299f)), 1026f)), countOneBits(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 4294967295u)), ~u_input.d.yw, u_input.d.ww), min(firstLeadingBit(vec2<u32>(4294967295u, u_input.b.x)), u_input.b))), var_0.x);
}

fn func_1(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: i32, arg_3: u32) -> vec3<f32> {
    let var_0 = u_input.a.ww;
    global0 = array<vec4<i32>, 8>();
    global0 = array<vec4<i32>, 8>();
    var var_1 = arg_0;
    let var_2 = func_4(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(func_2()))), vec3<u32>(u_input.b.x, u_input.c, 4294967295u), u_input.a.x);
    return _wgslsmith_f_op_vec3_f32(trunc(var_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 8>();
    global0 = array<vec4<i32>, 8>();
    var var_0 = Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(158f, -518f, -160f) * vec3<f32>(-523f, -912f, -557f))), _wgslsmith_f_op_vec3_f32(func_1(Struct_3(vec3<f32>(-1350f, 668f, -1684f), u_input.b.x, vec2<f32>(-1324f, -643f), Struct_1(4294967295u, 522f, 66971u, false), -17629i), vec2<bool>(true, true), _wgslsmith_sub_i32(u_input.a.x, -2147483647i), u_input.b.x & u_input.d.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(986f, -981f, 436f)))))), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.d.xwz, vec3<u32>(4294967295u, 15822u, u_input.b.x)), u_input.d.wwz) & u_input.b.x, 55395u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-477f, 550f))), -326f)), Struct_1(max(1u, 37637u), -440f, 1u, !any(vec3<bool>(true, false, true))), _wgslsmith_sub_i32(0i, 0i));
    global0 = array<vec4<i32>, 8>();
    global0 = array<vec4<i32>, 8>();
    var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(var_0.a)))), u_input.b.x, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.a.x, 284f)))) - vec2<f32>(-257f, _wgslsmith_f_op_f32(-var_0.c.x))))), Struct_1(u_input.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.b) * -609f)), _wgslsmith_sub_u32(var_0.d.a, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d.x, 0u, u_input.d.x, 1u), u_input.d << (u_input.d % vec4<u32>(32u)))), !(!any(vec3<bool>(true, true, var_0.d.d)))), 17270i);
    let var_1 = _wgslsmith_sub_vec2_u32(~u_input.b, vec2<u32>(~_wgslsmith_add_u32(7546u, var_0.b) & var_0.d.a, _wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(51513u, var_0.d.a), u_input.b.x | 1u), _wgslsmith_sub_u32(func_4(var_0.a.yz, vec3<u32>(4294967295u, 0u, 81166u), -2147483647i).a, ~u_input.c))));
    let var_2 = ~(~min(_wgslsmith_mod_vec4_u32(vec4<u32>(8780u, u_input.b.x, 1u, var_1.x), ~vec4<u32>(u_input.c, 3557u, 4294967295u, var_1.x)), vec4<u32>(u_input.c, 55940u, 20307u, 0u)));
    global0 = array<vec4<i32>, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(func_1(Struct_3(vec3<f32>(_wgslsmith_f_op_f32(ceil(var_0.c.x)), _wgslsmith_f_op_f32(sign(-1251f)), _wgslsmith_f_op_f32(-var_0.a.x)), min(~var_1.x, var_1.x), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(var_0.c)), _wgslsmith_f_op_vec2_f32(min(var_0.a.yz, vec2<f32>(-2349f, 1293f))))), Struct_1(var_2.x, var_0.c.x, var_1.x, true), abs(-1i) | ~u_input.a.x), select(vec2<bool>(true, true), !vec2<bool>(var_0.d.d, var_0.d.d), !(!vec2<bool>(var_0.d.d, false))), _wgslsmith_dot_vec2_i32(-vec2<i32>(var_0.e, u_input.a.x), vec2<i32>(~u_input.a.x, _wgslsmith_sub_i32(-2147483647i, u_input.a.x))), 17800u)).x, u_input.a.zz, var_0.c, var_0.e >> (57482u % 32u), -262f);
}

