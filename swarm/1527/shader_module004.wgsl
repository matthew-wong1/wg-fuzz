struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: vec2<bool>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(true));

var<private> global1: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec3<bool>(true, false, false), vec2<f32>(1000f, 618f)), Struct_1(vec3<bool>(false, false, false), vec2<f32>(409f, -595f)), Struct_1(vec3<bool>(false, true, false), vec2<f32>(-577f, -963f)), Struct_1(vec3<bool>(true, true, true), vec2<f32>(1247f, 1028f)), Struct_1(vec3<bool>(false, true, false), vec2<f32>(1501f, 516f)), Struct_1(vec3<bool>(false, false, true), vec2<f32>(116f, 637f)), Struct_1(vec3<bool>(true, true, true), vec2<f32>(-369f, 783f)), Struct_1(vec3<bool>(true, true, false), vec2<f32>(-1075f, 757f)), Struct_1(vec3<bool>(true, false, true), vec2<f32>(-624f, 377f)), Struct_1(vec3<bool>(false, false, false), vec2<f32>(-1000f, 1230f)), Struct_1(vec3<bool>(false, true, false), vec2<f32>(-281f, 1235f)), Struct_1(vec3<bool>(false, false, false), vec2<f32>(814f, -1903f)), Struct_1(vec3<bool>(false, true, false), vec2<f32>(920f, 1207f)), Struct_1(vec3<bool>(true, true, false), vec2<f32>(-252f, -1572f)), Struct_1(vec3<bool>(true, false, true), vec2<f32>(370f, 997f)), Struct_1(vec3<bool>(true, true, true), vec2<f32>(-1710f, 147f)), Struct_1(vec3<bool>(false, false, true), vec2<f32>(565f, -891f)), Struct_1(vec3<bool>(true, true, false), vec2<f32>(1000f, -600f)), Struct_1(vec3<bool>(false, true, true), vec2<f32>(416f, 1733f)), Struct_1(vec3<bool>(false, true, true), vec2<f32>(1566f, 1000f)), Struct_1(vec3<bool>(true, true, false), vec2<f32>(943f, -262f)), Struct_1(vec3<bool>(true, true, false), vec2<f32>(1417f, 234f)), Struct_1(vec3<bool>(false, false, false), vec2<f32>(1000f, 107f)), Struct_1(vec3<bool>(false, true, true), vec2<f32>(176f, -1298f)));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: f32) -> Struct_2 {
    var var_0 = arg_0;
    global1 = array<Struct_1, 24>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)) + vec2<f32>(377f, arg_0))))));
    global1 = array<Struct_1, 24>();
    let var_2 = u_input.c;
    return global0[_wgslsmith_index_u32(4294967295u, 16u)];
}

fn func_1(arg_0: i32, arg_1: vec4<f32>, arg_2: vec3<bool>, arg_3: bool) -> u32 {
    global1 = array<Struct_1, 24>();
    global0 = array<Struct_2, 16>();
    let var_0 = func_2(_wgslsmith_f_op_f32(f32(-1f) * -752f));
    return u_input.c.x;
}

fn func_3() -> vec4<u32> {
    global1 = array<Struct_1, 24>();
    let var_0 = ~vec2<i32>(reverseBits(min(i32(-1i) * -1i, _wgslsmith_mod_i32(1i, 1i))), 0i);
    global1 = array<Struct_1, 24>();
    global1 = array<Struct_1, 24>();
    global1 = array<Struct_1, 24>();
    return abs(vec4<u32>(u_input.c.x, ~12835u, ~(~firstTrailingBit(4294967295u)), _wgslsmith_mod_u32(5462u, func_1(0i, _wgslsmith_f_op_vec4_f32(vec4<f32>(725f, -946f, -599f, 1942f) + vec4<f32>(-1077f, -150f, -1000f, -584f)), vec3<bool>(true, true, true), true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(u_input.c.x, abs(_wgslsmith_dot_vec2_u32(u_input.c, u_input.c)), func_1(~(-2147483647i), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-179f + 1068f), _wgslsmith_f_op_f32(f32(-1f) * -462f), _wgslsmith_f_op_f32(f32(-1f) * -706f), -1152f), vec4<f32>(-262f, _wgslsmith_div_f32(-747f, 900f), _wgslsmith_f_op_f32(f32(-1f) * -1149f), _wgslsmith_f_op_f32(f32(-1f) * -1015f)), -1i != (1i >> (u_input.c.x % 32u)))), select(select(vec3<bool>(true, true, false), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true))), vec3<bool>(true, true, true), true), (u_input.b < select(u_input.a, 2147483647i, true)) & !any(vec2<bool>(true, false))));
    let var_1 = _wgslsmith_sub_vec4_u32(~func_3(), ~(~max(vec4<u32>(3024u, var_0.x, var_0.x, 10905u), vec4<u32>(45909u, var_0.x, 6709u, var_0.x))));
    global0 = array<Struct_2, 16>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-409f - 1375f)) * 847f)));
    var var_3 = Struct_2(true);
    var var_4 = Struct_1(select(select(vec3<bool>(all(vec3<bool>(var_3.a, false, var_3.a)), true, var_3.a), select(!vec3<bool>(var_3.a, var_3.a, var_3.a), select(vec3<bool>(var_3.a, true, var_3.a), vec3<bool>(true, false, var_3.a), vec3<bool>(true, false, var_3.a)), !vec3<bool>(var_3.a, true, true)), var_3.a), !select(!vec3<bool>(true, false, var_3.a), select(vec3<bool>(true, var_3.a, var_3.a), vec3<bool>(var_3.a, false, true), var_3.a), vec3<bool>(false, var_3.a, var_3.a)), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(226f, -427f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(559f, 793f) - vec2<f32>(947f, 512f))))));
    var var_5 = Struct_3(1000f, u_input.a, var_4.a.yy, select(select(!(!vec4<bool>(false, var_4.a.x, false, true)), !(!vec4<bool>(false, var_3.a, var_4.a.x, true)), !all(vec3<bool>(var_3.a, var_3.a, true))), vec4<bool>(false, false, false, false), var_3.a));
    let var_6 = Struct_3(_wgslsmith_f_op_f32(sign(var_5.a)), 74275i, select(select(select(var_4.a.zy, select(var_4.a.yy, var_5.d.xy, true), select(var_5.d.ww, vec2<bool>(false, true), true)), select(!vec2<bool>(true, var_5.d.x), select(var_4.a.zy, var_4.a.zy, var_4.a.xy), any(var_5.d)), _wgslsmith_f_op_f32(-183f * var_5.a) < _wgslsmith_f_op_f32(floor(var_5.a))), var_4.a.yy, ~27034u <= reverseBits(~u_input.c.x)), select(var_5.d, !select(vec4<bool>(var_5.d.x, var_4.a.x, var_4.a.x, false), select(var_5.d, vec4<bool>(true, var_5.c.x, var_3.a, true), vec4<bool>(var_4.a.x, true, true, false)), vec4<bool>(var_5.c.x, false, true, false)), select(select(var_5.d, !var_5.d, any(var_4.a)), select(var_5.d, !var_5.d, any(vec4<bool>(false, var_4.a.x, var_3.a, var_4.a.x))), select(vec4<bool>(var_5.d.x, false, var_3.a, true), select(vec4<bool>(var_3.a, false, var_4.a.x, true), var_5.d, var_5.d), var_5.a != -827f))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec3<i32>(firstTrailingBit(u_input.a), ~_wgslsmith_mod_i32(var_5.b, -46481i), ~var_6.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -835f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_5.a - var_5.a))))), abs(-reverseBits(vec3<i32>(var_6.b, var_5.b, -2147483647i))) << (var_1.ywy % vec3<u32>(32u)), _wgslsmith_mult_u32(1u, u_input.c.x));
}

