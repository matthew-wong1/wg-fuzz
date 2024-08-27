struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<bool>,
    d: vec2<bool>,
    e: vec3<u32>,
}

struct Struct_5 {
    a: i32,
    b: vec2<f32>,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_5) -> Struct_5 {
    return Struct_5(u_input.a, arg_1.b, 1u, _wgslsmith_f_op_f32(arg_1.b.x - 1000f));
}

fn func_3() -> vec3<u32> {
    global0 = ~firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-14314i, 30207i, u_input.a), vec3<i32>(2147483647i, u_input.a, 1i)), 24242i, _wgslsmith_add_i32(u_input.a, -4718i), u_input.a), select(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, u_input.a, -4038i, -47166i), vec4<i32>(u_input.a, 36833i, u_input.a, 39559i)), vec4<i32>(u_input.a, u_input.a, 70189i, 0i), false)));
    let var_0 = vec3<bool>(any(vec2<bool>(true, true)), !(!all(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true)))), true | any(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-222f)))) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, 1365f), _wgslsmith_f_op_vec2_f32(vec2<f32>(470f, -1329f) + vec2<f32>(682f, -982f)), var_0.x))))));
    var var_2 = 651f;
    var var_3 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-378f)) * _wgslsmith_f_op_f32(-var_1.x)), var_1.x), u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -253f) - _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(var_1.x - var_1.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.x - var_1.x)))));
    return reverseBits(vec3<u32>(select(1u, ~abs(85487u), true), ~(~(~84926u)), 0u));
}

fn func_2(arg_0: Struct_5, arg_1: vec3<i32>, arg_2: u32) -> Struct_5 {
    global0 = -32741i;
    var var_0 = Struct_4(abs(max(vec3<u32>(0u, 0u, 0u) ^ vec3<u32>(17043u, 9206u, arg_0.c), _wgslsmith_sub_vec3_u32(max(vec3<u32>(0u, 80389u, 2724u), vec3<u32>(1u, 4294967295u, arg_0.c)), func_3()))), ~abs(vec4<u32>(1u, 1u, 4294967295u, arg_0.c) ^ vec4<u32>(arg_2, arg_0.c, arg_0.c, 4294967295u)), vec3<bool>(!(any(vec4<bool>(false, false, false, false)) | true), any(vec3<bool>(true, true, true)), any(vec2<bool>(false, true))), select(select(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(true, false), true), true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), 1924f != arg_0.b.x), vec2<bool>(true && all(vec2<bool>(false, false)), false)), vec3<u32>(~((11346u >> (arg_0.c % 32u)) >> (_wgslsmith_mult_u32(0u, arg_0.c) % 32u)), ~_wgslsmith_mod_u32(arg_0.c, _wgslsmith_div_u32(55759u, 1u)), 108863u));
    var var_1 = countOneBits(vec4<u32>(firstTrailingBit(_wgslsmith_mod_u32(arg_0.c, arg_2)), var_0.e.x, var_0.e.x, ~1u)) | abs(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, 19875u, 1u, arg_2), vec4<u32>(0u, arg_0.c, arg_2, 0u)), ~35766u, 1u, ~arg_2));
    var var_2 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.d), _wgslsmith_div_f32(arg_0.b.x, _wgslsmith_f_op_f32(min(arg_0.d, 180f)))), -(~min(0i, arg_0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1623f * -245f))) - 399f), arg_0.d));
    var_2 = Struct_2(var_2.a);
    return arg_0;
}

fn func_4(arg_0: Struct_5, arg_1: Struct_4, arg_2: i32, arg_3: i32) -> vec4<i32> {
    var var_0 = select(!(!vec4<bool>(arg_1.d.x, all(arg_1.c.zx), arg_1.d.x, true)), vec4<bool>(false, true, !arg_1.d.x, arg_1.c.x), any(arg_1.d));
    let var_1 = arg_3 & (func_2(func_1(vec2<i32>(47854i, arg_2) | vec2<i32>(1i, -2147483647i), func_2(Struct_5(3004i, arg_0.b, 1u, 288f), vec3<i32>(-7541i, arg_0.a, arg_2), arg_0.c)), reverseBits(vec3<i32>(arg_0.a, arg_0.a, u_input.a)), ~(~arg_0.c)).a >> (arg_1.a.x % 32u));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(ceil(677f)), -483f, 742f, _wgslsmith_f_op_f32(exp2(arg_0.d)));
    let var_3 = arg_0.a;
    var var_4 = select(select(select(vec2<bool>(false, arg_1.c.x | arg_1.c.x), !(!var_0.zx), !select(var_0.xx, arg_1.c.zz, vec2<bool>(true, var_0.x))), select(vec2<bool>(arg_1.c.x, true), vec2<bool>(all(var_0.yx), false), arg_1.d.x || !var_0.x), any(select(vec4<bool>(arg_1.c.x, true, false, false), select(vec4<bool>(var_0.x, arg_1.c.x, true, arg_1.c.x), vec4<bool>(true, var_0.x, arg_1.d.x, var_0.x), false), arg_1.d.x))), var_0.zx, arg_1.c.x || true);
    return abs(vec4<i32>(arg_2, (2147483647i << (arg_0.c % 32u)) << (~78393u % 32u), -2129i, -1i) ^ (firstTrailingBit(countOneBits(vec4<i32>(arg_0.a, arg_3, arg_0.a, u_input.a))) >> (~vec4<u32>(arg_1.e.x, 6724u, arg_1.a.x, 13856u) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec2<i32>(-(i32(-1i) * -27577i), firstTrailingBit(u_input.a) >> (abs(54615u) % 32u)), Struct_5(23098i, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(230f + -1000f) * _wgslsmith_div_f32(-1226f, 831f)), _wgslsmith_f_op_f32(-382f + _wgslsmith_f_op_f32(-974f + -1169f))), 66994u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-222f)), _wgslsmith_f_op_f32(select(1121f, 216f, true)))))));
    global0 = ~var_0.a;
    var var_1 = ~(func_4(func_2(Struct_5(var_0.a, vec2<f32>(var_0.d, var_0.d), var_0.c, -1276f), vec3<i32>(u_input.a, 2147483647i, 2147483647i), 768u >> (0u % 32u)), Struct_4(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, var_0.c, 24823u), vec3<u32>(1u, 4294967295u, 51320u)), abs(vec4<u32>(var_0.c, 1u, 1u, 44718u)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false), select(vec2<bool>(false, true), vec2<bool>(true, true), true), max(vec3<u32>(4294967295u, 1u, var_0.c), vec3<u32>(15341u, var_0.c, var_0.c))), firstLeadingBit(u_input.a), -1i) << ((firstTrailingBit(~vec4<u32>(var_0.c, var_0.c, var_0.c, 32321u)) & (~vec4<u32>(var_0.c, 0u, var_0.c, var_0.c) ^ firstLeadingBit(vec4<u32>(var_0.c, 59339u, var_0.c, 14098u)))) % vec4<u32>(32u)));
    var_1 = _wgslsmith_div_vec4_i32(select(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(var_1.x, u_input.a), u_input.a << (var_0.c % 32u), -14408i, select(-5828i, u_input.a, true)), -vec4<i32>(var_1.x, u_input.a, 1i, -17869i), vec4<i32>(2147483647i, u_input.a, -43152i, -3401i)), -vec4<i32>(var_1.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-21416i, var_0.a), vec2<i32>(-2147483647i, -1i)), -39934i, 1i), vec4<bool>(true, false, !any(vec2<bool>(true, false)), !(u_input.a >= u_input.a))), vec4<i32>(_wgslsmith_dot_vec4_i32(~(~vec4<i32>(var_1.x, u_input.a, -2147483647i, var_0.a)), ~_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, -42632i, 46302i, var_1.x), vec4<i32>(var_0.a, var_1.x, var_0.a, 2147483647i))), firstTrailingBit(max(-1i, var_0.a)) ^ ~abs(1i), -1i, -1i));
    let var_2 = firstLeadingBit(_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(var_1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a, 20764i, u_input.a, -24150i), vec4<i32>(2147483647i, var_0.a, -526i, 0i))), (var_1.xw ^ vec2<i32>(u_input.a, u_input.a)) << (abs(vec2<u32>(0u, var_0.c)) % vec2<u32>(32u))), ~vec2<i32>(55972i, select(0i, var_1.x, true)), var_1.xx));
    var var_3 = Struct_1(var_0.b, max(0i, i32(-1i) * -1i), _wgslsmith_f_op_f32(round(var_0.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~(var_2 & abs(vec2<i32>(var_0.a, 28640i))));
}

