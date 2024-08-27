struct Struct_1 {
    a: bool,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: Struct_2,
    d: vec4<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 22858u;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: i32, arg_1: u32) -> vec2<u32> {
    let var_0 = true && select(arg_1 > _wgslsmith_sub_u32(14657u, ~u_input.a), all(select(vec2<bool>(true, true), vec2<bool>(false, true), false)) & true, !(!all(vec4<bool>(false, false, false, true))));
    var var_1 = Struct_4(Struct_2(Struct_1(var_0, u_input.a, 64539u, ~vec2<u32>(1136u, arg_1), _wgslsmith_mult_u32(arg_1, 1u) << (0u % 32u)), vec2<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, arg_0, arg_0), max(vec3<i32>(-60868i, arg_0, -1i), vec3<i32>(arg_0, arg_0, arg_0)))), Struct_1(true, _wgslsmith_clamp_u32(~41222u, abs(109617u), _wgslsmith_clamp_u32(0u, 2365u, u_input.a)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(2226u, 1u), vec2<u32>(0u, 17053u)), vec2<u32>(~0u, 54275u), arg_1), vec3<f32>(277f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(358f)))), 362f)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(390f)) - _wgslsmith_f_op_f32(-774f * 1610f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -439f), -640f, var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-968f)))), Struct_2(Struct_1(false, ~_wgslsmith_add_u32(arg_1, u_input.a), _wgslsmith_div_u32(u_input.a & u_input.a, abs(u_input.a)), _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 1u) >> (vec2<u32>(39889u, arg_1) % vec2<u32>(32u)), select(vec2<u32>(24672u, u_input.a), vec2<u32>(4203u, arg_1), vec2<bool>(true, var_0))), 284u), _wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), countOneBits(vec2<i32>(u_input.b, u_input.b)), vec2<i32>(-1i, arg_0) << (vec2<u32>(73739u, u_input.a) % vec2<u32>(32u))) & reverseBits(vec2<i32>(u_input.b, arg_0)), Struct_1(var_0, ~arg_1 >> (_wgslsmith_clamp_u32(u_input.a, arg_1, 4294967295u) % 32u), ~(~arg_1), vec2<u32>(~27164u, 20048u), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.a, 7106u), vec3<u32>(arg_1, u_input.a, u_input.a)), ~vec3<u32>(u_input.a, arg_1, u_input.a))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-617f, -1060f, -523f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-269f, 1000f, -1502f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-462f, -1565f, 691f))), u_input.b >= 35954i))));
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -550f)), -1348f))));
    var var_3 = _wgslsmith_mult_vec3_u32(~(~(vec3<u32>(var_1.c.c.c, 4294967295u, 57813u) >> (vec3<u32>(u_input.a, 1u, 1u) % vec3<u32>(32u)))) & (firstTrailingBit(~vec3<u32>(u_input.a, var_1.a.c.e, var_1.a.c.e)) << (firstTrailingBit(select(vec3<u32>(u_input.a, 77591u, 0u), vec3<u32>(u_input.a, arg_1, arg_1), false)) % vec3<u32>(32u))), vec3<u32>(~(~4294967295u), ~0u, 0u));
    var_3 = vec3<u32>(countOneBits(_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.a, ~arg_1), min(70717u, ~u_input.a))), _wgslsmith_dot_vec4_u32(~vec4<u32>(abs(arg_1), 28577u, 1u, ~43470u), countOneBits((vec4<u32>(u_input.a, u_input.a, 64959u, 66905u) >> (vec4<u32>(1u, 33276u, var_3.x, 1u) % vec4<u32>(32u))) & select(vec4<u32>(var_1.c.a.d.x, arg_1, 10751u, var_3.x), vec4<u32>(4587u, 4294967295u, 1u, var_1.c.a.d.x), vec4<bool>(var_1.a.a.a, var_1.a.c.a, var_1.c.a.a, var_1.c.c.a)))), firstTrailingBit(~arg_1));
    return var_1.a.c.d;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1) -> bool {
    global0 = arg_0.b.x;
    var var_0 = -(~(vec3<i32>(1i, ~arg_0.c.b.x, _wgslsmith_mod_i32(12485i, 57456i)) << (~_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.b, 0u, 62983u), vec3<u32>(47402u, arg_1.e, 14972u)) % vec3<u32>(32u))));
    global0 = _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(reverseBits(u_input.a), ~u_input.a, _wgslsmith_dot_vec2_u32(func_3(-53332i, u_input.a), _wgslsmith_div_vec2_u32(arg_1.d, vec2<u32>(1u, 4294967295u)))), u_input.a, ~(~23116u)) | _wgslsmith_clamp_u32(countOneBits(min(u_input.a, ~101848u)), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(arg_1.e, arg_1.e, u_input.a, arg_1.b)), vec4<u32>(4294967295u, arg_1.e, arg_0.c.a.c, arg_0.b.x) | vec4<u32>(7149u, 0u, 16037u, u_input.a)), vec4<u32>(u_input.a, select(1u, 1u, arg_0.c.c.a), arg_0.b.x, _wgslsmith_add_u32(arg_0.a.x, u_input.a))), min(arg_1.d.x, arg_0.a.x));
    var_0 = firstLeadingBit(~vec3<i32>(i32(-1i) * -40835i, ~49179i, -1i));
    var var_1 = Struct_2(arg_0.c.a, arg_0.c.b, arg_0.c.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.d.x, arg_0.c.d.x, arg_0.c.d.x)))) * _wgslsmith_f_op_vec3_f32(arg_0.c.d - arg_0.c.d)));
    return true;
}

fn func_1() -> u32 {
    global0 = ~70025u;
    let var_0 = ~vec3<i32>(select(~1i, 26038i, true), -6372i << (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 31991u, 54790u, u_input.a) >> (vec4<u32>(u_input.a, u_input.a, 0u, 1u) % vec4<u32>(32u)), ~vec4<u32>(u_input.a, 51420u, 1u, 1u)) % 32u), select(1i, 1i, func_2(Struct_3(vec2<u32>(64516u, u_input.a), vec2<u32>(u_input.a, u_input.a), Struct_2(Struct_1(false, u_input.a, u_input.a, vec2<u32>(u_input.a, 1u), 4294967295u), vec2<i32>(-10528i, u_input.b), Struct_1(true, u_input.a, 1u, vec2<u32>(u_input.a, u_input.a), u_input.a), vec3<f32>(-369f, -417f, -342f)), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)), Struct_1(false, 15441u, u_input.a, vec2<u32>(19802u, 1u), u_input.a)) && true));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-142f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -588f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-3303f)), _wgslsmith_f_op_f32(ceil(1000f)), func_2(Struct_3(vec2<u32>(u_input.a, 0u), vec2<u32>(1u, u_input.a), Struct_2(Struct_1(true, u_input.a, u_input.a, vec2<u32>(u_input.a, u_input.a), 1u), vec2<i32>(33885i, var_0.x), Struct_1(false, u_input.a, u_input.a, vec2<u32>(u_input.a, 43246u), 4294967295u), vec3<f32>(923f, -544f, -1297f)), vec4<i32>(var_0.x, 1i, 2147483647i, 1i)), Struct_1(false, u_input.a, 42182u, vec2<u32>(1u, u_input.a), 1u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(311f)) * -2020f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1356f, -908f))), _wgslsmith_f_op_f32(select(1127f, _wgslsmith_f_op_f32(-646f - -378f), true))))));
    let var_2 = abs(var_0.xy);
    global0 = 85902u;
    return _wgslsmith_dot_vec2_u32(~vec2<u32>(97390u | ~u_input.a, u_input.a), ~abs(vec2<u32>(max(0u, u_input.a), u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 48660u ^ ~(~((u_input.a << (u_input.a % 32u)) ^ 4294967295u));
    global0 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, _wgslsmith_add_u32(u_input.a, u_input.a), 0u & u_input.a), ~firstTrailingBit(vec3<u32>(4300u, 20473u, 4775u))), _wgslsmith_mult_u32(u_input.a, ~u_input.a), u_input.a, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 1u, 1u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.a, u_input.a), ~u_input.a)), abs(_wgslsmith_add_vec4_u32(~vec4<u32>(64739u, u_input.a, 30062u, 93593u), abs(vec4<u32>(1u, 1u, 1u, 6508u)))), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, func_1(), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(u_input.a, 51095u, u_input.a)), u_input.a >> (u_input.a % 32u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a), vec4<u32>(u_input.a, u_input.a, 30261u, 8449u), vec4<u32>(48974u, u_input.a, 18478u, u_input.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_i32(vec3<i32>(-31561i, u_input.b, -1i), vec3<i32>(u_input.b, 0i, reverseBits(u_input.b))), select(min(min(~vec4<u32>(u_input.a, 44472u, 97088u, 4294967295u), select(vec4<u32>(55671u, 1u, u_input.a, 1u), vec4<u32>(72556u, 4294967295u, u_input.a, 21295u), true)), _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, 157622u), vec4<u32>(u_input.a, u_input.a, 0u, 23485u)), ~vec4<u32>(u_input.a, 35650u, 55408u, 0u), _wgslsmith_sub_vec4_u32(vec4<u32>(6237u, 0u, 0u, 4294967295u), vec4<u32>(32590u, 0u, 0u, u_input.a)))), _wgslsmith_div_vec4_u32(~vec4<u32>(0u, u_input.a, 1u, 44514u), vec4<u32>(_wgslsmith_mult_u32(u_input.a, 20105u), _wgslsmith_clamp_u32(34670u, u_input.a, 28844u), 4294967295u, 21184u)), vec4<bool>(false, true, u_input.b < ~(-1368i), true && any(vec2<bool>(true, false)))));
}

