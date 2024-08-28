struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: i32,
    d: vec3<f32>,
    e: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: u32) -> vec4<f32> {
    let var_0 = Struct_2(Struct_1(~3167u, !(select(true, false, false) | (arg_1 < u_input.d)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d, 4294967295u, arg_1), vec3<u32>(firstLeadingBit(arg_1), reverseBits(0u), abs(48491u)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(941f, arg_0, 1444f, -1036f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 1140f, 954f, arg_0))), vec4<f32>(589f, arg_0, arg_0, _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(abs(796f)))), !(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), true)))));
    return _wgslsmith_f_op_vec4_f32(var_0.b * _wgslsmith_f_op_vec4_f32(-var_0.b));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_2) -> vec3<u32> {
    var var_0 = (_wgslsmith_sub_u32(firstLeadingBit(select(arg_2.a.c.x, u_input.d, arg_0.b.b)), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.c.x, u_input.d, arg_2.a.c.x, arg_0.b.c.x), vec4<u32>(17870u, arg_2.a.c.x, 12219u, 1u)), _wgslsmith_mod_vec4_u32(vec4<u32>(13847u, arg_0.e.x, 0u, arg_2.a.c.x), vec4<u32>(14821u, 23653u, u_input.d, arg_1.a)))) < 4294967295u) != arg_1.b;
    let var_1 = _wgslsmith_add_vec4_u32(~(select(countOneBits(vec4<u32>(1u, 4294967295u, 4294967295u, 18522u)), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, arg_0.b.c.x, 4294967295u, 1u), vec4<u32>(75093u, 70333u, 3126u, 0u)), vec4<bool>(arg_0.b.b, arg_1.b, arg_1.b, true)) | firstTrailingBit(vec4<u32>(6194u, arg_2.a.c.x, arg_1.a, 0u))), _wgslsmith_mult_vec4_u32(~(vec4<u32>(58097u, 51212u, 1u, 4294967295u) >> (countOneBits(vec4<u32>(1u, 3596u, 1u, arg_2.a.c.x)) % vec4<u32>(32u))), _wgslsmith_div_vec4_u32(countOneBits(select(vec4<u32>(arg_0.b.a, 0u, 45658u, arg_2.a.a), vec4<u32>(u_input.d, 1u, arg_1.a, 11180u), true)), ~vec4<u32>(1554u, 1749u, arg_0.e.x, 4294967295u) | select(vec4<u32>(arg_0.b.a, 16779u, 0u, arg_2.a.a), vec4<u32>(0u, arg_1.a, 15514u, u_input.d), vec4<bool>(arg_2.a.b, arg_0.b.b, arg_1.b, true)))));
    var_0 = true;
    var var_2 = ~vec3<i32>(1i, arg_0.c, max(_wgslsmith_sub_i32(min(u_input.a, arg_0.c), countOneBits(-23112i)), -11142i));
    var_0 = all(vec2<bool>((-21834i >> ((arg_1.c.x << (0u % 32u)) % 32u)) == arg_0.c, true));
    return abs(select(arg_2.a.c, select(arg_0.b.c, var_1.zyw, vec3<bool>(true, false, false)), !select(!vec3<bool>(arg_1.b, false, arg_2.a.b), !vec3<bool>(true, arg_2.a.b, false), !vec3<bool>(arg_1.b, arg_2.a.b, arg_0.b.b))));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1, arg_2: i32, arg_3: bool) -> Struct_1 {
    return Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(~arg_0.e.x, u_input.d), ~arg_0.e) & ~(~(4294967295u | arg_1.c.x)), arg_1.b, ~func_4(arg_0, Struct_1(arg_1.c.x >> (17605u % 32u), any(vec2<bool>(arg_0.b.b, arg_1.b)), arg_1.c << (arg_1.c % vec3<u32>(32u))), Struct_2(Struct_1(arg_0.e.x, arg_3, vec3<u32>(54056u, arg_1.a, arg_0.b.c.x)), _wgslsmith_f_op_vec4_f32(func_3(-1338f, arg_0.b.c.x)))));
}

fn func_5(arg_0: bool, arg_1: Struct_2) -> Struct_1 {
    return arg_1.a;
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = Struct_4(Struct_2(func_5(true, Struct_2(func_2(Struct_3(vec2<f32>(231f, 409f), Struct_1(u_input.d, arg_0, vec3<u32>(u_input.d, 42834u, 0u)), u_input.a, vec3<f32>(-310f, 312f, 615f), vec2<u32>(u_input.d, u_input.d)), Struct_1(u_input.d, arg_0, vec3<u32>(u_input.d, 39587u, 1u)), u_input.a, false), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-223f, 552f, -642f, -1000f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-290f - 632f)), 135f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -136f) * -594f), _wgslsmith_f_op_f32(-286f - _wgslsmith_f_op_f32(trunc(714f))))), Struct_1(max(~u_input.d, func_5(arg_0 | true, Struct_2(Struct_1(u_input.d, arg_0, vec3<u32>(4294967295u, u_input.d, u_input.d)), vec4<f32>(-1000f, 737f, -868f, -602f))).a), all(select(select(vec2<bool>(arg_0, false), vec2<bool>(false, arg_0), vec2<bool>(false, true)), select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), vec2<bool>(true, arg_0)), true)), firstLeadingBit(vec3<u32>(func_4(Struct_3(vec2<f32>(1200f, 1790f), Struct_1(2106u, arg_0, vec3<u32>(7635u, u_input.d, 39471u)), u_input.c, vec3<f32>(-208f, -500f, 523f), vec2<u32>(u_input.d, u_input.d)), Struct_1(u_input.d, false, vec3<u32>(1u, 75502u, 0u)), Struct_2(Struct_1(1u, true, vec3<u32>(58580u, 1u, u_input.d)), vec4<f32>(-1000f, 888f, 406f, 806f))).x, ~u_input.d, u_input.d))));
    var_0 = Struct_4(Struct_2(Struct_1(var_0.b.a, all(!vec3<bool>(arg_0, false, false)), func_4(Struct_3(var_0.a.b.yw, Struct_1(0u, var_0.a.a.b, vec3<u32>(u_input.d, var_0.a.a.c.x, var_0.a.a.c.x)), -18543i, vec3<f32>(-725f, var_0.a.b.x, 324f), var_0.b.c.yy), func_2(Struct_3(vec2<f32>(var_0.a.b.x, -633f), Struct_1(1u, arg_0, vec3<u32>(24026u, var_0.a.a.a, 1u)), u_input.b, vec3<f32>(1000f, -165f, 1451f), vec2<u32>(u_input.d, 4294967295u)), Struct_1(u_input.d, var_0.a.a.b, vec3<u32>(var_0.a.a.a, 0u, u_input.d)), u_input.c, arg_0), Struct_2(var_0.b, var_0.a.b))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.a.b + var_0.a.b))))), func_2(Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_0.a.b.wz, var_0.a.b.zz) + _wgslsmith_f_op_vec2_f32(ceil(var_0.a.b.wy))), var_0.a.a, -55134i, var_0.a.b.zzz, vec2<u32>(func_5(arg_0, Struct_2(Struct_1(7657u, false, var_0.a.a.c), vec4<f32>(var_0.a.b.x, -1187f, 521f, 1130f))).c.x, ~var_0.b.a)), func_5(var_0.b.b, Struct_2(var_0.b, vec4<f32>(705f, var_0.a.b.x, var_0.a.b.x, -145f))), 5585i, any(vec3<bool>(arg_0 && true, arg_0 || arg_0, all(vec3<bool>(false, true, var_0.b.b))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a.b)) + var_0.a.b)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a.b)))));
    let var_2 = select(!(!select(!vec3<bool>(arg_0, true, arg_0), vec3<bool>(true, false, false), !vec3<bool>(var_0.b.b, var_0.a.a.b, false))), vec3<bool>(true, var_0.a.b.x >= 618f, var_0.b.b), arg_0);
    var_1 = vec4<f32>(-1310f, 1421f, var_1.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(exp2(var_0.a.b.x))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.a.b.x)))))));
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(any(vec4<bool>(false, true, _wgslsmith_mod_u32(u_input.d, 80405u) < ~u_input.d, true)));
    let var_1 = _wgslsmith_add_i32(1i, select(-u_input.c, u_input.c, true)) >> (0u % 32u);
    var var_2 = ~vec4<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.d, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, var_0.c.x, u_input.d, 31520u), vec4<u32>(4294967295u, 0u, 0u, var_0.c.x)), 26314u, 7541u), ~_wgslsmith_div_vec4_u32(vec4<u32>(var_0.c.x, 0u, u_input.d, u_input.d), vec4<u32>(u_input.d, 68647u, 0u, var_0.a))), firstTrailingBit(1u) >> (abs(abs(var_0.a)) % 32u), _wgslsmith_mod_u32(max(var_0.a, var_0.a), _wgslsmith_sub_u32(~var_0.a, var_0.c.x)));
    var_2 = vec4<u32>(0u, 21251u, _wgslsmith_mult_u32(81844u, u_input.d), _wgslsmith_clamp_u32(0u & countOneBits(u_input.d), ~(~31722u), min(reverseBits(var_0.a), var_0.a))) << ((~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, 22568u, var_0.a, u_input.d), vec4<u32>(4294967295u, u_input.d, 14840u, var_2.x)) & vec4<u32>(~25731u, 39075u, 55487u, 16282u)) % vec4<u32>(32u));
    var var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, -252f), vec2<f32>(-438f, -189f), vec2<bool>(true, var_0.b))), vec2<f32>(_wgslsmith_f_op_f32(step(211f, -1656f)), _wgslsmith_f_op_f32(min(-1498f, 1567f)))))), Struct_1(48512u, var_0.b, min(var_0.c, ~var_0.c)), -2147483647i, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-105f, -737f, 2030f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-913f, 406f, 1000f))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(972f, 127f, -904f), vec3<f32>(-1000f, 1282f, -1507f))), select(vec3<bool>(true, var_0.b, false), vec3<bool>(var_0.b, var_0.b, false), vec3<bool>(var_0.b, true, var_0.b)))) + vec3<f32>(_wgslsmith_f_op_f32(floor(-1694f)), 683f, _wgslsmith_f_op_f32(-700f - -1000f)))), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(func_1(false).c.zz, var_2.wy), vec2<u32>(0u, var_0.a)));
    var_2 = max(firstLeadingBit(~countOneBits(vec4<u32>(u_input.d, var_0.c.x, var_3.b.c.x, 4294967295u))), vec4<u32>(4294967295u, max(u_input.d, ~u_input.d), u_input.d, _wgslsmith_mult_u32(firstLeadingBit(11550u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 74737u, var_0.a, var_3.b.a), vec4<u32>(1u, 23536u, 1u, 1u)))) ^ vec4<u32>(var_3.b.c.x, var_2.x, func_5(var_3.b.b, Struct_2(Struct_1(var_0.c.x, false, vec3<u32>(51604u, 60009u, 0u)), vec4<f32>(-530f, 1140f, 673f, 353f))).a, select(reverseBits(0u), _wgslsmith_dot_vec2_u32(var_0.c.xy, var_3.e), true)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.yx);
}

