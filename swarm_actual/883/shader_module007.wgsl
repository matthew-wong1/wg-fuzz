struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(23718u, 305f), Struct_2(66617u, -254f), Struct_2(14320u, -601f), Struct_2(1u, -143f), Struct_2(4294967295u, -932f), Struct_2(6916u, 127f), Struct_2(4294967295u, -881f), Struct_2(35809u, 998f), Struct_2(1u, 1000f), Struct_2(4294967295u, -911f), Struct_2(4294967295u, 1290f), Struct_2(1u, -1000f), Struct_2(4294967295u, -1710f), Struct_2(7030u, 487f), Struct_2(8963u, 1019f), Struct_2(17340u, -553f), Struct_2(1u, -1000f), Struct_2(0u, -1599f), Struct_2(4294967295u, -750f), Struct_2(44203u, 1091f), Struct_2(1u, 1000f), Struct_2(4294967295u, 1413f), Struct_2(4294967295u, -884f), Struct_2(1u, -2305f));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> u32 {
    global0 = array<Struct_2, 24>();
    global0 = array<Struct_2, 24>();
    return ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, _wgslsmith_mod_u32(0u, u_input.b & 0u)), countOneBits(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, u_input.a, 19619u), _wgslsmith_mod_vec3_u32(vec3<u32>(55273u, u_input.a, 4294967295u), vec3<u32>(14101u, 1u, 58872u)))));
}

fn func_2(arg_0: bool) -> Struct_2 {
    let var_0 = vec4<bool>(all(vec4<bool>(false, arg_0, true, true)), any(!select(vec4<bool>(false, arg_0, arg_0, false), !vec4<bool>(true, arg_0, arg_0, false), true)), arg_0, func_3() < 0u);
    global0 = array<Struct_2, 24>();
    global0 = array<Struct_2, 24>();
    global0 = array<Struct_2, 24>();
    global0 = array<Struct_2, 24>();
    return Struct_2(~0u << (0u % 32u), 652f);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2) -> u32 {
    var var_0 = Struct_2(~0u, arg_1.b);
    global0 = array<Struct_2, 24>();
    var var_1 = abs(vec2<i32>(_wgslsmith_sub_i32(-2147483647i, arg_0.x), _wgslsmith_mod_i32(arg_0.x, _wgslsmith_clamp_i32(arg_0.x, arg_0.x, arg_0.x)) | ~(-15392i)));
    var_1 = -vec2<i32>(_wgslsmith_mod_i32(var_1.x, _wgslsmith_clamp_i32(_wgslsmith_div_i32(arg_0.x, -1i), var_1.x | 1i, var_1.x << (arg_1.a % 32u))), arg_0.x);
    let var_2 = _wgslsmith_f_op_f32(abs(arg_1.b));
    return reverseBits(var_0.a);
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, arg_0.b, arg_0.b, arg_0.a.x)) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.a.x, arg_0.a.x, 1271f, -541f)))) * vec4<f32>(1452f, _wgslsmith_f_op_f32(arg_0.a.x - arg_0.b), -1744f, _wgslsmith_f_op_f32(arg_0.b * -919f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-282f * arg_0.b), -503f, _wgslsmith_f_op_f32(arg_0.b * arg_0.b), _wgslsmith_f_op_f32(-arg_0.a.x)))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2043f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(658f, arg_0.b)))), _wgslsmith_f_op_f32(min(arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.b))))), arg_0.b));
    return func_2(!((false && any(vec2<bool>(true, false))) && true));
}

fn func_1() -> f32 {
    let var_0 = func_5(Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(985f, -675f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(247f, 661f) * vec2<f32>(-889f, -1450f))))), _wgslsmith_f_op_f32(min(-163f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -107f)))), vec2<u32>(func_4(_wgslsmith_add_vec3_i32(vec3<i32>(0i, 42597i, 25004i), vec3<i32>(41095i, -1i, 1i)), func_2(true)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(58056u, 0u)))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) * _wgslsmith_f_op_f32(var_0.b + -173f)) * 850f) * var_0.b), var_0.b, var_0.b);
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.xz - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, var_0.b), vec2<f32>(var_1.x, var_0.b)))))), -2015f, countOneBits(_wgslsmith_clamp_vec2_u32(~vec2<u32>(var_0.a, 0u), vec2<u32>(var_0.a, 0u) & vec2<u32>(var_0.a, var_0.a), vec2<u32>(1u, 4294967295u))) | vec2<u32>(abs(u_input.b) << (1u % 32u), u_input.a));
    var var_3 = _wgslsmith_add_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 1u & var_0.a, _wgslsmith_add_u32(var_2.c.x, 10541u), 1u), vec4<u32>(var_2.c.x, var_2.c.x ^ u_input.a, ~0u, ~var_0.a)), ~(~vec4<u32>(35714u, 1u & var_0.a, abs(0u), 12972u)));
    global0 = array<Struct_2, 24>();
    return -1000f;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global0 = array<Struct_2, 24>();
    let var_0 = u_input.b;
    var var_1 = vec4<u32>(~_wgslsmith_dot_vec4_u32(select(vec4<u32>(23309u, 1u, 0u, u_input.b), firstLeadingBit(vec4<u32>(var_0, 7518u, var_0, var_0)), true), vec4<u32>(0u >> (arg_2.c.x % 32u), ~arg_0.a, 28501u, func_2(false).a)), arg_2.c.x, 97242u, ~44766u);
    let var_2 = u_input.b & abs(26977u);
    var var_3 = 1i & ~firstTrailingBit(-2147483647i);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 24>();
    let var_0 = true;
    var var_1 = func_6(global0[_wgslsmith_index_u32(69604u, 24u)], Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-514f, -622f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(153f, 1290f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(101f - 772f))), abs(_wgslsmith_mod_vec2_u32(~vec2<u32>(4294967295u, u_input.a), ~vec2<u32>(4294967295u, u_input.b)))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1491f, 902f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(504f, -488f), _wgslsmith_f_op_f32(-1763f + -921f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -516f), _wgslsmith_f_op_f32(func_1())), true)), min(vec2<u32>(u_input.a, _wgslsmith_sub_u32(u_input.a, 41660u)), vec2<u32>(~u_input.b, ~u_input.a))));
    var var_2 = _wgslsmith_f_op_f32(1040f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.b, 552f, var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2133f - 1663f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1892f * _wgslsmith_div_f32(-317f, -2297f)))));
    let var_3 = Struct_2(~(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(11664u, var_1.c.x) >> (var_1.c % vec2<u32>(32u))) << (~firstLeadingBit(u_input.a) % 32u)), _wgslsmith_f_op_f32(f32(-1f) * -900f));
    var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)), _wgslsmith_f_op_f32(f32(-1f) * -1066f), any(!vec3<bool>(false, true, var_0)))), 1216f), 127f, min(var_1.c, var_1.c));
    var var_4 = Struct_2(~(~_wgslsmith_clamp_u32(4294967295u, 65218u, u_input.a) ^ ~72027u), 292f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 1i), select(vec2<i32>(0i, 52531i), vec2<i32>(22741i, -52300i), var_0), -vec2<i32>(48876i, 58168i)), vec2<i32>(_wgslsmith_div_i32(1i, 1i), -56990i)), reverseBits(_wgslsmith_sub_vec2_i32(~vec2<i32>(524i, 21720i), vec2<i32>(1i, 1i)))), 139619u, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.b, _wgslsmith_f_op_f32(select(func_2(false).b, _wgslsmith_f_op_f32(-1221f + var_4.b), !var_0))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(var_1.b)), var_3.b))), _wgslsmith_f_op_f32(var_4.b - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b - -1000f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_4.b - 1552f), func_5(Struct_1(vec2<f32>(-1453f, var_4.b), 1055f, vec2<u32>(11715u, var_3.a))).b)))), var_1.a);
}

