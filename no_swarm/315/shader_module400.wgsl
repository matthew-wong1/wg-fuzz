struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
    c: vec2<u32>,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(vec3<u32>(41443u, 1u, 0u), 1000f, vec2<u32>(6943u, 1u)), Struct_2(vec3<u32>(83144u, 87185u, 4294967295u), -547f, vec2<u32>(1u, 1u)), Struct_2(vec3<u32>(71857u, 0u, 93207u), -385f, vec2<u32>(29639u, 1u)), Struct_2(vec3<u32>(144850u, 1u, 12923u), -1000f, vec2<u32>(431u, 0u)), Struct_2(vec3<u32>(90454u, 91588u, 63495u), 1095f, vec2<u32>(54577u, 63181u)), Struct_2(vec3<u32>(6371u, 4294967295u, 31746u), -1135f, vec2<u32>(2887u, 0u)), Struct_2(vec3<u32>(0u, 54192u, 33596u), -1679f, vec2<u32>(40535u, 4294967295u)), Struct_2(vec3<u32>(0u, 99503u, 17023u), 577f, vec2<u32>(1u, 4294967295u)), Struct_2(vec3<u32>(4294967295u, 1u, 11196u), 1062f, vec2<u32>(1u, 10792u)), Struct_2(vec3<u32>(5638u, 4294967295u, 4294967295u), -615f, vec2<u32>(22441u, 1u)), Struct_2(vec3<u32>(48613u, 41845u, 4294967295u), 1000f, vec2<u32>(1u, 78470u)), Struct_2(vec3<u32>(4294967295u, 4294967295u, 14769u), -1996f, vec2<u32>(42382u, 65425u)), Struct_2(vec3<u32>(13473u, 1u, 19851u), 1204f, vec2<u32>(14649u, 4294967295u)), Struct_2(vec3<u32>(1u, 7785u, 1u), -225f, vec2<u32>(40367u, 18799u)), Struct_2(vec3<u32>(61371u, 14142u, 42319u), -479f, vec2<u32>(0u, 81905u)), Struct_2(vec3<u32>(4294967295u, 9063u, 4294967295u), 558f, vec2<u32>(4294967295u, 21745u)), Struct_2(vec3<u32>(0u, 0u, 4294967295u), 1120f, vec2<u32>(108046u, 1u)), Struct_2(vec3<u32>(1u, 1u, 4294967295u), -739f, vec2<u32>(45988u, 0u)), Struct_2(vec3<u32>(0u, 47576u, 4294967295u), 212f, vec2<u32>(4518u, 1u)), Struct_2(vec3<u32>(1u, 4294967295u, 65013u), -724f, vec2<u32>(4294967295u, 47987u)), Struct_2(vec3<u32>(65065u, 44286u, 19874u), -276f, vec2<u32>(82595u, 78495u)), Struct_2(vec3<u32>(1u, 68235u, 55666u), -402f, vec2<u32>(0u, 0u)), Struct_2(vec3<u32>(5501u, 28451u, 4294967295u), -1124f, vec2<u32>(0u, 4294967295u)), Struct_2(vec3<u32>(4294967295u, 1u, 4294967295u), -311f, vec2<u32>(1u, 0u)), Struct_2(vec3<u32>(62054u, 31616u, 4294967295u), -1394f, vec2<u32>(42288u, 70946u)), Struct_2(vec3<u32>(4294967295u, 4589u, 8074u), -1000f, vec2<u32>(74527u, 0u)), Struct_2(vec3<u32>(58548u, 1u, 9263u), 756f, vec2<u32>(0u, 90657u)), Struct_2(vec3<u32>(0u, 84127u, 11436u), 227f, vec2<u32>(46315u, 80711u)), Struct_2(vec3<u32>(18391u, 49067u, 0u), 2382f, vec2<u32>(36182u, 1u)), Struct_2(vec3<u32>(4294967295u, 1u, 1u), -316f, vec2<u32>(30900u, 0u)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-889f, -1740f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1218f)), _wgslsmith_f_op_f32(1089f + -574f)), -1096f))));
}

fn func_3(arg_0: vec4<i32>, arg_1: u32, arg_2: i32, arg_3: vec4<f32>) -> Struct_1 {
    global0 = array<Struct_2, 30>();
    global0 = array<Struct_2, 30>();
    let var_0 = vec3<bool>(!any(vec2<bool>(true, true)) || true, false, true);
    var var_1 = vec2<i32>(~_wgslsmith_mod_i32(max(1i, countOneBits(-28688i)), _wgslsmith_clamp_i32(2147483647i, _wgslsmith_sub_i32(2147483647i, arg_0.x), ~arg_0.x)), countOneBits((_wgslsmith_sub_i32(arg_2, u_input.a) ^ u_input.a) & ~(u_input.a >> (arg_1 % 32u))));
    var var_2 = Struct_1(~(vec4<u32>(26151u, ~0u, _wgslsmith_add_u32(arg_1, arg_1), ~1u) >> ((vec4<u32>(arg_1, arg_1, arg_1, arg_1) >> (~vec4<u32>(17712u, 58508u, 1u, 6823u) % vec4<u32>(32u))) % vec4<u32>(32u))));
    return Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(34668u, arg_1, arg_1, arg_1), var_2.a), _wgslsmith_div_u32(~var_2.a.x, var_2.a.x & 41781u), arg_1, ~1u), min(vec4<u32>(_wgslsmith_mod_u32(4294967295u, 53581u), ~0u, ~36567u, 1u), _wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(14158u, arg_1, 0u, var_2.a.x)), ~vec4<u32>(1870u, var_2.a.x, var_2.a.x, 15812u)))));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> f32 {
    global0 = array<Struct_2, 30>();
    global0 = array<Struct_2, 30>();
    global0 = array<Struct_2, 30>();
    global0 = array<Struct_2, 30>();
    global0 = array<Struct_2, 30>();
    return _wgslsmith_f_op_f32(step(-2620f, -1110f));
}

fn func_1() -> u32 {
    global0 = array<Struct_2, 30>();
    var var_0 = u_input.a;
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) * _wgslsmith_f_op_f32(func_4(vec2<u32>(firstTrailingBit(65693u), 38903u), Struct_1(select(vec4<u32>(1u, 55651u, 1u, 1u), vec4<u32>(0u, 1002u, 4294967295u, 26106u), vec4<bool>(true, true, false, true))), ~max(1u, 5967u), func_3(vec4<i32>(2147483647i, u_input.a, u_input.a, -806i), 4294967295u, u_input.a, _wgslsmith_f_op_vec4_f32(func_2())))))));
    global0 = array<Struct_2, 30>();
    var_0 = _wgslsmith_mod_i32(~(~(i32(-1i) * -23342i)) | u_input.a, abs(-44906i));
    return _wgslsmith_mod_u32(108783u, func_3(((vec4<i32>(2147483647i, u_input.a, -25941i, u_input.a) << (vec4<u32>(3476u, 4294967295u, 88805u, 1993u) % vec4<u32>(32u))) ^ ~vec4<i32>(-13074i, 1i, 78927i, u_input.a)) >> (select(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u), vec4<bool>(true, true, true, true)) % vec4<u32>(32u)), 83826u, u_input.a, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1, var_1, _wgslsmith_f_op_f32(var_1 + -648f), _wgslsmith_f_op_f32(var_1 * var_1)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, var_1, -305f))), vec4<bool>(true, true, true, true)))).a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(591f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(764f)) + 1f), 1275f, max(16084i, u_input.a) <= 1i)), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2171f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-345f, 852f, _wgslsmith_f_op_f32(func_4(~vec2<u32>(4294967295u, 4294967295u), func_3(vec4<i32>(u_input.a, -11765i, u_input.a, -2147483647i), 0u, 33964i, vec4<f32>(var_1.x, var_1.x, -1830f, 1028f)), _wgslsmith_mult_u32(1u, 3754u), func_3(vec4<i32>(u_input.a, 16525i, -2147483647i, -45088i), 55549u, -58012i, vec4<f32>(-919f, var_1.x, var_1.x, 679f)))), _wgslsmith_f_op_f32(f32(-1f) * -2498f)))));
}

