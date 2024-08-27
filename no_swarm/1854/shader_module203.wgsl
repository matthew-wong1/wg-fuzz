struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_add_u32(68257u, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(52287u, 46421u, 4294967295u), 1u));
    let var_1 = Struct_2(Struct_1(select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(false, true), false)), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), ~var_0, ~4294967295u, ~4294967295u), _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, var_0, 0u, 11644u)), abs(vec4<u32>(11932u, 0u, var_0, 80936u))))));
    let var_2 = -_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(-vec4<i32>(-1i, 66362i, 1i, 38698i), -vec4<i32>(-9345i, 0i, -21420i, 0i)), -(~vec4<i32>(-15768i, 8260i, 1i, 61134i))) | ~(select(vec4<i32>(27425i, -2147483647i, -28945i, 0i), vec4<i32>(-10928i, 2147483647i, 0i, 0i), var_1.a.a.x) << (~_wgslsmith_div_vec4_u32(vec4<u32>(37776u, 56704u, 45539u, u_input.a.x), u_input.a) % vec4<u32>(32u)));
    var var_3 = ~4294967295u;
    let var_4 = 1u;
    return !(!((var_2.x == -var_2.x) || all(!vec2<bool>(true, var_1.a.a.x))));
}

fn func_2(arg_0: f32, arg_1: f32) -> Struct_1 {
    let var_0 = Struct_3(Struct_1(vec2<bool>(func_3() & (arg_1 <= -640f), false), ~vec4<u32>(4731u >> (u_input.a.x % 32u), max(4294967295u, 4294967295u), u_input.a.x, u_input.a.x)), Struct_2(Struct_1(vec2<bool>(false, true), vec4<u32>(u_input.a.x, _wgslsmith_div_u32(557u, u_input.a.x), firstLeadingBit(0u), 4294967295u))), ~u_input.a.yz, Struct_2(Struct_1(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 23817u) << (u_input.a % vec4<u32>(32u)))));
    var var_1 = Struct_3(Struct_1(!var_0.b.a.a, abs(vec4<u32>(~var_0.d.a.b.x, 4294967295u, ~34353u, 4294967295u))), Struct_2(var_0.a), ~(vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.a.yyz, var_0.a.b.yxw), var_0.d.a.b.x) | vec2<u32>(abs(var_0.a.b.x), var_0.a.b.x)), var_0.b);
    var_1 = var_0;
    var_1 = Struct_3(Struct_1(!select(select(vec2<bool>(var_0.d.a.a.x, var_0.b.a.a.x), var_1.b.a.a, vec2<bool>(var_0.b.a.a.x, var_0.b.a.a.x)), vec2<bool>(var_1.b.a.a.x, true), var_0.a.a.x), _wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(1u, var_0.d.a.b.x, 1u, 48492u)), min(var_1.b.a.b, firstLeadingBit(var_1.a.b)))), Struct_2(var_0.d.a), countOneBits(var_1.d.a.b.xy), var_1.b);
    var_1 = var_0;
    return Struct_1(!var_1.d.a.a, countOneBits(~u_input.a));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: u32) -> Struct_1 {
    var var_0 = countOneBits(min(vec2<i32>(~(-16222i), 1i), select(~_wgslsmith_clamp_vec2_i32(vec2<i32>(-54i, 37282i), vec2<i32>(-33121i, 2147483647i), vec2<i32>(10714i, -50251i)), reverseBits(-vec2<i32>(-1897i, -31569i)), func_2(-410f, arg_1).a)));
    let var_1 = Struct_3(Struct_1(func_2(_wgslsmith_f_op_f32(1356f * arg_1), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(330f, arg_1))))).a, arg_0.a.b), arg_0, ~vec2<u32>(20253u, _wgslsmith_clamp_u32(110259u, firstLeadingBit(arg_0.a.b.x), 19410u >> (arg_0.a.b.x % 32u))), Struct_2(func_2(_wgslsmith_f_op_f32(f32(-1f) * -297f), _wgslsmith_f_op_f32(-2346f * _wgslsmith_f_op_f32(-1211f + arg_1)))));
    let var_2 = min(func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_1, arg_1, true)), -560f), _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(ceil(-1723f)))).b >> (select(vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.a.yxy, arg_0.a.b.zzz), ~var_1.c.x, _wgslsmith_add_u32(4294967295u, u_input.a.x), arg_0.a.b.x), abs(vec4<u32>(0u, arg_2, 1107u, 69099u) & vec4<u32>(4294967295u, 4294967295u, u_input.a.x, arg_2)), vec4<bool>(true, true, true, true)) % vec4<u32>(32u)), arg_0.a.b | ~u_input.a);
    let var_3 = -2147483647i;
    var var_4 = _wgslsmith_f_op_f32(f32(-1f) * -2551f);
    return Struct_1(!func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1))), 854f).a, vec4<u32>(var_2.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, var_2.x, arg_2, u_input.a.x), vec4<u32>(var_2.x, 81228u, 1u, u_input.a.x)) % 32u), ~_wgslsmith_mod_u32(arg_0.a.b.x, 62491u), func_2(_wgslsmith_f_op_f32(-arg_1), -1073f).b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, arg_0.a.b.x), u_input.a.wx) >> (1u % 32u)) >> (~(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_2, arg_0.a.b.x, 21545u, 1u), u_input.a, vec4<u32>(var_2.x, var_1.b.a.b.x, 42915u, 0u)) | vec4<u32>(52841u, 11631u, arg_2, var_2.x)) % vec4<u32>(32u)));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: bool, arg_3: vec3<i32>) -> bool {
    var var_0 = Struct_2(func_4(Struct_2(func_2(-397f, 938f)), arg_1, arg_0.b.x));
    let var_1 = select(vec3<u32>(~4294967295u, 4294967295u, ~3013u), u_input.a.xyx, !all(!vec3<bool>(false, arg_0.a.x, arg_2))) << (u_input.a.zzz % vec3<u32>(32u));
    var var_2 = Struct_2(Struct_1(arg_0.a, var_0.a.b));
    var var_3 = !(-166f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1))));
    let var_4 = arg_3.x;
    return (824u > u_input.a.x) && true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec2<bool>(true, !func_1(Struct_1(vec2<bool>(true, false), u_input.a), _wgslsmith_f_op_f32(385f - 521f), u_input.a.x < 45057u, -vec3<i32>(2147483647i, 1i, -40869i))), vec4<u32>(_wgslsmith_div_u32(select(~u_input.a.x, u_input.a.x, func_3()), u_input.a.x), 1u, u_input.a.x, 23527u));
    let var_1 = vec2<bool>(var_0.a.x, all(!vec4<bool>(true, false, var_0.a.x, func_4(Struct_2(Struct_1(vec2<bool>(false, false), var_0.b)), -266f, u_input.a.x).a.x)));
    let var_2 = _wgslsmith_mult_u32(var_0.b.x, 1u);
    var_0 = Struct_1(func_2(_wgslsmith_f_op_f32(select(-1000f, 1000f, func_3())), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-277f - 252f), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-519f, 1191f)))))).a, _wgslsmith_mod_vec4_u32(~_wgslsmith_sub_vec4_u32(var_0.b, vec4<u32>(var_2, u_input.a.x, var_2, 4294967295u)) | u_input.a, u_input.a));
    let var_3 = -(~(-abs(i32(-1i) * -1i)));
    var_0 = func_4(Struct_2(func_4(Struct_2(func_4(Struct_2(Struct_1(vec2<bool>(true, false), vec4<u32>(var_0.b.x, 4294967295u, 66837u, 78651u))), 275f, var_0.b.x)), -1000f, ~_wgslsmith_div_u32(u_input.a.x, var_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-578f * _wgslsmith_f_op_f32(abs(-1000f))))), ~min(_wgslsmith_clamp_u32(var_0.b.x, 0u, 17146u) ^ 4294967295u, ~var_0.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(659f)) + 1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(960f)), _wgslsmith_f_op_f32(691f * 1000f))) * 871f));
}

