struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18>;

var<private> global1: vec3<i32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    let var_0 = u_input.c.x;
    var var_1 = ~(~u_input.c);
    global0 = array<Struct_1, 18>();
    var_1 = ~vec4<u32>(firstLeadingBit((1u ^ var_0) & select(u_input.c.x, u_input.d, true)), _wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.d, 1u, u_input.d, var_0), ~vec4<u32>(0u, var_1.x, 107447u, 110117u), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true))), select(_wgslsmith_mod_vec4_u32(u_input.c, u_input.c), select(vec4<u32>(4294967295u, u_input.d, var_0, u_input.d), u_input.c, true), true)), ~(36146u | abs(var_0)), countOneBits(select(var_0, u_input.c.x, false) ^ var_0));
    let var_2 = Struct_5(Struct_3(_wgslsmith_clamp_vec3_u32(vec3<u32>(min(var_1.x, var_0), abs(u_input.c.x), ~var_0), abs(~vec3<u32>(75644u, 0u, var_1.x)), var_1.xwz), all(vec2<bool>(true, all(vec3<bool>(true, true, false))))), Struct_4(Struct_3(u_input.c.wyx, any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false))))));
    return false;
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: Struct_5, arg_3: vec3<u32>) -> bool {
    var var_0 = arg_3.x;
    var var_1 = vec3<bool>(func_3(), true, true);
    let var_2 = arg_2.a;
    let var_3 = true;
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(319f)) - -144f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -793f)))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-118f, 481f) * vec2<f32>(640f, -1479f)))))));
    return arg_0;
}

fn func_2() -> Struct_3 {
    var var_0 = 1u;
    var var_1 = 732f;
    var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-103f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -898f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1232f * 484f), _wgslsmith_f_op_f32(-357f - -879f))))));
    let var_2 = Struct_2(!vec2<bool>((u_input.c.x > u_input.d) != true, func_4(func_3(), global1.x, Struct_5(Struct_3(vec3<u32>(u_input.d, 1u, u_input.d), true), Struct_4(Struct_3(u_input.c.wyx, false))), firstLeadingBit(vec3<u32>(u_input.d, u_input.c.x, u_input.d)))), _wgslsmith_clamp_u32(u_input.d, u_input.c.x, countOneBits(u_input.c.x)));
    var_0 = 4294967295u;
    return Struct_3(vec3<u32>(u_input.d, ~0u, max(_wgslsmith_mod_u32(_wgslsmith_div_u32(4294967295u, 57867u), _wgslsmith_dot_vec3_u32(u_input.c.ywx, u_input.c.wzy)), ~abs(88066u))), true);
}

fn func_5(arg_0: Struct_3, arg_1: vec3<i32>) -> bool {
    var var_0 = vec4<u32>(~1u, arg_0.a.x, func_2().a.x, ~(u_input.c.x ^ u_input.c.x));
    var var_1 = arg_0;
    var var_2 = ~global1.x;
    global0 = array<Struct_1, 18>();
    let var_3 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1000f, 1000f))), _wgslsmith_f_op_f32(sign(664f))), 1710f), -325f);
    return var_1.b;
}

fn func_1(arg_0: Struct_3, arg_1: vec4<bool>) -> f32 {
    let var_0 = 4487i;
    global1 = ~(~abs(u_input.a));
    var var_1 = Struct_4(Struct_3(_wgslsmith_sub_vec3_u32(vec3<u32>(19816u, u_input.c.x, 1u) | vec3<u32>(5698u, u_input.d, arg_0.a.x), min(vec3<u32>(u_input.d, 48418u, 48740u), vec3<u32>(u_input.d, 26372u, arg_0.a.x))) >> (~vec3<u32>(u_input.d, 19908u, 16600u) % vec3<u32>(32u)), func_5(func_2(), u_input.a)));
    return -860f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = (u_input.a | u_input.a) & u_input.a;
    global0 = array<Struct_1, 18>();
    global0 = array<Struct_1, 18>();
    var var_0 = Struct_3(~abs(u_input.c.wyz), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_3(vec3<u32>(4294967295u, u_input.d, u_input.d), true), vec4<bool>(true, true, true, true))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(537f - -824f) * _wgslsmith_f_op_f32(-418f - -619f))) < _wgslsmith_f_op_f32(step(885f, _wgslsmith_f_op_f32(max(-1027f, -1000f)))));
    let var_1 = Struct_4(func_2());
    var var_2 = Struct_2(!vec2<bool>(var_1.a.b, var_1.a.b), _wgslsmith_mod_u32(u_input.d, ~(~var_0.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_sub_vec4_u32(u_input.c, vec4<u32>(10570u, 23188u, 4294967295u, var_0.a.x))), _wgslsmith_dot_vec4_u32(~u_input.c, vec4<u32>(max(58503u >> (0u % 32u), 1u), var_2.b, firstTrailingBit(_wgslsmith_mult_u32(var_0.a.x, 3231u)), u_input.d)), -17238i);
}

