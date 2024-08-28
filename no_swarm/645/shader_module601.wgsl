struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: i32,
    c: vec2<bool>,
    d: vec2<f32>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    var var_0 = -448f;
    var var_1 = -(~u_input.a.x);
    let var_2 = !(!select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false)), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false)), any(vec2<bool>(true, true))));
    var var_3 = min(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(15129u, ~16216u, 17957u)), vec3<u32>(1u, select(4294967295u, 74290u, true), 0u)), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(1u, 1u)), ~(~select(vec2<u32>(44007u, 60086u), vec2<u32>(26138u, 1u), false))));
    var_0 = _wgslsmith_f_op_f32(sign(1765f));
    return 0u;
}

fn func_2(arg_0: vec4<u32>, arg_1: bool, arg_2: bool, arg_3: vec2<bool>) -> Struct_3 {
    var var_0 = 5986u;
    var_0 = _wgslsmith_dot_vec2_u32(arg_0.yy, vec2<u32>(11033u, ~_wgslsmith_mod_u32(func_3(), ~4294967295u)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(132f * _wgslsmith_f_op_f32(-1000f + -925f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -632f) + 263f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(709f, 892f), 1f)))), firstLeadingBit(1i), -463f, _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(~countOneBits(u_input.a), u_input.a), u_input.a));
    let var_2 = -1i;
    let var_3 = arg_0.xw | ~arg_0.wz;
    return Struct_3(Struct_1(-525f, max(u_input.a.x, max(i32(-1i) * -2195i, ~0i)), var_1.a, -_wgslsmith_mod_vec2_i32(u_input.a, u_input.a) << (abs(var_3) % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-875f * _wgslsmith_f_op_f32(f32(-1f) * -959f)), _wgslsmith_f_op_f32(var_1.a * -332f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -328f)), 191f), vec4<f32>(var_1.c, var_1.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(var_1.c, 232f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1838f, -1530f)), _wgslsmith_f_op_f32(-var_1.a))))));
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: u32) -> bool {
    var var_0 = Struct_2(all(vec4<bool>(true, ~13357u == arg_2, true, -444f > _wgslsmith_f_op_f32(arg_0.b.x + arg_0.b.x))));
    var var_1 = firstTrailingBit(~(~_wgslsmith_mod_vec4_u32(select(vec4<u32>(arg_2, arg_2, arg_2, arg_2), vec4<u32>(0u, 4294967295u, 27375u, arg_2), var_0.a), vec4<u32>(arg_2, 10868u, 0u, 1u))));
    let var_2 = arg_0.b.x;
    var var_3 = !(min(select(var_1.x, var_1.x, all(vec3<bool>(var_0.a, true, true))), 1u) >= ~4294967295u);
    var var_4 = !vec2<bool>(any(!(!vec2<bool>(var_0.a, var_0.a))), ~countOneBits(361i) > _wgslsmith_dot_vec3_i32(select(vec3<i32>(arg_1, arg_0.a.d.x, 2147483647i), vec3<i32>(arg_0.a.d.x, -4064i, arg_0.a.b), false), vec3<i32>(-2147483647i, -1i, -1i)));
    return !(var_4.x && false);
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: f32, arg_3: vec4<bool>) -> Struct_1 {
    let var_0 = Struct_4(func_2(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 34380u, 72514u), vec3<u32>(1u, 47506u, 4294967295u)), _wgslsmith_mult_u32(4294967295u, 0u), 4294967295u, 1u), max(~vec4<u32>(25256u, 4294967295u, 1u, 1u), select(vec4<u32>(28497u, 4294967295u, 24981u, 4294967295u), vec4<u32>(1u, 45315u, 1u, 0u), vec4<bool>(arg_3.x, false, arg_3.x, false))), vec4<u32>(0u, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(2658u, 19833u, 8611u), vec3<u32>(4294967295u, 1763u, 0u)), 1u)), arg_3.x, arg_3.x, !select(vec2<bool>(arg_1.a, arg_3.x), select(arg_3.zw, vec2<bool>(arg_1.a, arg_1.a), vec2<bool>(false, arg_1.a)), arg_3.x)).a, ~_wgslsmith_div_u32(~(~4294967295u), 1u));
    let var_1 = true;
    let var_2 = !arg_3.zyw;
    var var_3 = 13141i ^ (-2147483647i | reverseBits(_wgslsmith_add_i32(~u_input.b, reverseBits(15288i))));
    let var_4 = vec3<u32>(0u, ~26929u, _wgslsmith_clamp_u32(_wgslsmith_div_u32(~10327u, func_3()) & 79736u, _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(4294967295u, 4294967295u, 0u)) & vec3<u32>(10863u, var_0.b, 4294967295u), ~(vec3<u32>(var_0.b, var_0.b, var_0.b) << (vec3<u32>(var_0.b, 1u, 0u) % vec3<u32>(32u)))), 1u << (func_3() % 32u)));
    return var_0.a;
}

fn func_1(arg_0: vec3<u32>) -> Struct_4 {
    var var_0 = 1f;
    var var_1 = u_input.a;
    let var_2 = u_input.a.x;
    let var_3 = -select(vec4<i32>(-var_2, _wgslsmith_mult_i32(1i, u_input.b), var_2, u_input.a.x & var_1.x) >> (_wgslsmith_mult_vec4_u32(abs(vec4<u32>(0u, arg_0.x, arg_0.x, arg_0.x)), vec4<u32>(1u, 4294967295u, 20836u, 2581u) >> (vec4<u32>(1u, arg_0.x, 1u, arg_0.x) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_div_i32(var_1.x, 62909i) << (~arg_0.x % 32u), -1i, -59140i, 12152i), ~(~arg_0.x) > ~(~11773u));
    var_0 = _wgslsmith_f_op_f32(-102f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -588f))) + _wgslsmith_f_op_f32(max(-545f, 901f))), -1827f));
    return Struct_4(func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-993f, -656f, -427f), vec3<f32>(1361f, -803f, 390f), true))), Struct_2(!all(vec2<bool>(false, true))), -1204f, vec4<bool>(true, true, func_4(func_2(vec4<u32>(arg_0.x, arg_0.x, 4294967295u, 6358u), true, false, vec2<bool>(false, true)), 1i, ~arg_0.x), true)), ~(~_wgslsmith_div_u32(~arg_0.x, arg_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec3<u32>(_wgslsmith_clamp_u32(7441u, 11597u, _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(1u, 5750u, 47686u)), vec3<u32>(1u, 1u, 1u))), ~(~1u), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(0u, 88116u, 40577u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 0u, 65418u), vec4<bool>(false, true, false, true)), vec4<u32>(25800u, 90347u, 59303u, 30158u)), _wgslsmith_div_u32(reverseBits(1u), ~1u))));
    let var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.c, -270f) - vec2<f32>(370f, -1363f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(648f, var_0.a.a)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.a.c, var_0.a.a), vec2<f32>(var_0.a.c, 1809f))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-323f, -822f), vec2<f32>(-1960f, var_0.a.c))), vec2<bool>(true, true)))))));
    var_0 = func_1((vec3<u32>(110080u, var_0.b, firstLeadingBit(93566u)) << (vec3<u32>(~var_0.b, ~var_0.b, 4294967295u) % vec3<u32>(32u))) | select(vec3<u32>(var_0.b, select(var_0.b, 0u, false), func_1(vec3<u32>(54962u, var_0.b, 9046u)).b), vec3<u32>(_wgslsmith_mult_u32(var_0.b, 4294967295u), var_0.b ^ 13620u, 4294967295u), !select(true, true, true)));
    var_0 = func_1(_wgslsmith_mod_vec3_u32(~(~vec3<u32>(0u, 57174u, var_0.b)) ^ ((vec3<u32>(var_0.b, var_0.b, 4294967295u) & vec3<u32>(var_0.b, var_0.b, 18352u)) >> (abs(vec3<u32>(11675u, var_0.b, 1u)) % vec3<u32>(32u))), vec3<u32>(~(~var_0.b), var_0.b >> ((var_0.b & 40472u) % 32u), var_0.b)));
    var_0 = func_1(vec3<u32>(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, var_0.b, var_0.b, 104527u), vec4<u32>(var_0.b, var_0.b, 4294967295u, 1u))), ~func_1(vec3<u32>(var_0.b, var_0.b, var_0.b)).b, ~(~var_0.b)));
    let var_2 = select(select(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), true), false), vec3<bool>(any(vec3<bool>(true, select(true, true, false), any(vec3<bool>(false, false, false)))), all(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false))), all(vec4<bool>(true, true, true, true))), vec3<bool>(func_4(func_2(min(vec4<u32>(26933u, var_0.b, 1u, var_0.b), vec4<u32>(1u, 0u, 0u, 4294967295u)), false, func_4(Struct_3(Struct_1(-1478f, 2147483647i, var_1.x, var_0.a.d), vec4<f32>(-303f, var_0.a.a, var_1.x, var_0.a.a)), -42828i, 17263u), vec2<bool>(true, true)), u_input.a.x, reverseBits(49086u)), !(-2947i < u_input.a.x), func_4(func_2(~vec4<u32>(4294967295u, 0u, 84183u, 12124u), any(vec2<bool>(true, true)), -55422i > u_input.b, vec2<bool>(true, false)), -34444i, var_0.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(25624i, select(select(1i, -2147483647i | var_0.a.b, true), -var_0.a.d.x & func_2(vec4<u32>(var_0.b, 0u, var_0.b, 24883u), false, var_2.x, vec2<bool>(var_2.x, true)).a.b, all(var_2) & !var_2.x)));
}

