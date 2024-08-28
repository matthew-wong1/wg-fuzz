struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: u32,
    d: i32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: vec2<i32>,
}

struct Struct_4 {
    a: u32,
    b: vec4<u32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 15> = array<vec3<i32>, 15>(vec3<i32>(1i, -72315i, 1i), vec3<i32>(0i, -1383i, -1i), vec3<i32>(-4355i, -43917i, -36340i), vec3<i32>(0i, -22473i, i32(-2147483648)), vec3<i32>(-5642i, -794i, 0i), vec3<i32>(-71122i, 30383i, 884i), vec3<i32>(-1i, 6424i, -56202i), vec3<i32>(20797i, -1i, -33303i), vec3<i32>(i32(-2147483648), -35140i, -42459i), vec3<i32>(1i, -1i, 21209i), vec3<i32>(0i, 2681i, 29807i), vec3<i32>(0i, -1i, 1i), vec3<i32>(-11430i, 10407i, 17769i), vec3<i32>(-17833i, 22674i, 9443i), vec3<i32>(61135i, -1i, 2147483647i));

var<private> global1: vec4<i32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: bool, arg_1: vec3<u32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1557f, -801f)));
    global1 = vec4<i32>(~(-31101i), _wgslsmith_mod_i32(-1i, u_input.e.x), 0i, u_input.e.x);
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(511f, -1242f, arg_0))))), _wgslsmith_f_op_f32(var_0.x * var_0.x))));
    global0 = array<vec3<i32>, 15>();
    var var_2 = _wgslsmith_f_op_f32(-1678f * -1533f);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-845f * _wgslsmith_f_op_f32(f32(-1f) * -1251f))));
}

fn func_3(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_2) -> u32 {
    var var_0 = select(vec4<bool>(all(arg_2.a.b.wx), select(arg_2.a.b.x, true, true), (_wgslsmith_f_op_f32(-arg_2.a.e.x) != _wgslsmith_div_f32(arg_2.a.e.x, arg_2.a.e.x)) | any(vec4<bool>(arg_2.a.b.x, arg_2.a.b.x, false, arg_2.a.b.x)), any(vec3<bool>(all(arg_2.a.b), arg_2.a.b.x && arg_2.a.b.x, false && arg_2.a.b.x))), select(vec4<bool>(arg_2.a.b.x, _wgslsmith_f_op_f32(func_2(false, vec3<u32>(4294967295u, 38288u, arg_0.x))) < _wgslsmith_f_op_f32(max(arg_2.a.e.x, 683f)), any(arg_2.a.b.xyx), (u_input.e.x >= 2046i) & (27824i >= u_input.e.x)), arg_2.a.b, any(!select(arg_2.a.b.xxw, vec3<bool>(true, true, arg_2.a.b.x), false))), true);
    var var_1 = Struct_3(arg_2.a.e.x, 53658u, countOneBits(-global1.xz) >> (reverseBits(vec2<u32>(74415u, max(arg_2.a.c, u_input.d))) % vec2<u32>(32u)));
    var var_2 = !(!arg_2.a.b.wz);
    let var_3 = 37494i;
    var_0 = select(select(!(!vec4<bool>(var_0.x, var_0.x, false, false)), arg_2.a.b, true), vec4<bool>((19856u & abs(u_input.c.x)) >= 1u, true, arg_2.a.b.x, arg_2.a.e.x >= -221f), !(!vec4<bool>(!var_2.x, !arg_2.a.b.x, var_0.x & false, !var_0.x)));
    return ~17293u;
}

fn func_1(arg_0: vec3<i32>) -> f32 {
    global0 = array<vec3<i32>, 15>();
    let var_0 = ~(~(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.c.x, 33089u), u_input.c) | 1u)) | max(~(~u_input.c.x), 5665u);
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(floor(-984f)), _wgslsmith_f_op_f32(f32(-1f) * -146f), _wgslsmith_f_op_f32(func_2(true, vec3<u32>(1u, var_0, 53021u))))))));
    var var_2 = Struct_1(36042i, !vec4<bool>(false, true, u_input.c.x >= var_0, _wgslsmith_f_op_f32(round(var_1.x)) != _wgslsmith_f_op_f32(-988f + 631f)), ~func_3(u_input.c, ~_wgslsmith_div_u32(u_input.a, var_0), Struct_2(Struct_1(global1.x, vec4<bool>(true, true, true, true), u_input.d, -2147483647i, vec2<f32>(-1349f, 817f)))), select(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(global1.x, arg_0.x, 2147483647i, global1.x) | vec4<i32>(1i, global1.x, -2147483647i, -8207i)), abs(vec4<i32>(arg_0.x, -1i, 0i, -1i))), ~arg_0.x, all(vec3<bool>(true, true, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -880f))))));
    let var_3 = ~(~min(4294967295u, 1u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.e.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global1.wyx))), _wgslsmith_f_op_f32(-358f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-817f)), _wgslsmith_f_op_f32(f32(-1f) * -117f), true)))));
    let var_1 = var_0.x;
    global0 = array<vec3<i32>, 15>();
    global1 = vec4<i32>(1i, 2044i, u_input.e.x, -20015i);
    let var_2 = !(!vec4<bool>(!(u_input.e.x != 0i), true, ~u_input.d >= u_input.d, _wgslsmith_f_op_f32(select(-1081f, -572f, true)) < var_0.x));
    var var_3 = global1.x;
    let var_4 = u_input.b;
    var var_5 = vec3<u32>(~var_4 ^ min(var_4, u_input.a), ~(~21619u), 52681u);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, vec3<u32>(_wgslsmith_mult_u32(~var_4, var_4) >> (_wgslsmith_dot_vec2_u32(select(vec2<u32>(52349u, u_input.d), vec2<u32>(4294967295u, 42616u), vec2<bool>(var_2.x, var_2.x)), _wgslsmith_clamp_vec2_u32(vec2<u32>(18650u, 24261u), var_5.xy, vec2<u32>(14543u, 1u))) % 32u), reverseBits(1u), var_4), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -907f), -715f, _wgslsmith_f_op_f32(-var_0.x)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1344f * var_0.x), -252f, var_0.x))), 12897u);
}

