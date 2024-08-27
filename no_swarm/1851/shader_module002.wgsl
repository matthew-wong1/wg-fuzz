struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<bool>,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<f32>,
    c: vec4<f32>,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
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

var<private> global0: array<vec3<bool>, 31>;

var<private> global1: vec3<i32> = vec3<i32>(-9057i, 0i, 8688i);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: Struct_3) -> u32 {
    global0 = array<vec3<bool>, 31>();
    var var_0 = ~(-abs(vec2<i32>(_wgslsmith_mod_i32(-54750i, 2147483647i), u_input.a.x)));
    let var_1 = vec2<bool>(arg_2.a == 47966u, ~(~u_input.a.x) == reverseBits(~41618i >> (arg_2.a % 32u)));
    var var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(1483f + -131f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-261f - -278f))))));
    var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(exp2(var_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -823f)))));
    return arg_0 >> (28739u % 32u);
}

fn func_2(arg_0: bool) -> i32 {
    let var_0 = Struct_4(Struct_3(~func_3(_wgslsmith_add_u32(0u, 15276u), 25444u, Struct_3(60046u))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1405f, -896f, 1051f, -1110f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1810f, 701f, -376f, -1037f))) * vec4<f32>(-217f, 416f, -1647f, -135f)), true)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(421f, 1221f, 437f, 539f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(499f, 574f, 292f, 630f), vec4<f32>(-1156f, 1140f, 266f, -660f)))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1471f, -1049f, -2788f, 596f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 466f, -1266f, 1761f)))))), !all(!select(vec3<bool>(arg_0, false, true), global0[_wgslsmith_index_u32(u_input.b.x, 31u)], arg_0)), Struct_1(1f, _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.b.x), ~vec4<u32>(30901u, 403u, 6707u, 50591u)) & ~vec4<u32>(u_input.b.x, 20525u, 34161u, 4294967295u), select(min(~u_input.c, u_input.c), -2147483647i, arg_0), global1.x));
    let var_1 = var_0.c.xw;
    let var_2 = select(-vec3<i32>(2147483647i, 2147483647i, global1.x | 1i), _wgslsmith_sub_vec3_i32(select(~u_input.a, abs(u_input.a), true), vec3<i32>(reverseBits(global1.x), global1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, 0i, var_0.e.c, -14523i), vec4<i32>(u_input.c, global1.x, -83140i, u_input.a.x)))), all(vec2<bool>(true, all(vec2<bool>(false, var_0.d))))) | u_input.a;
    var var_3 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(826f, var_0.e.a, _wgslsmith_f_op_f32(trunc(1058f)))));
    global1 = var_2 & vec3<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(var_0.e.c, 19545i, global1.x), vec3<i32>(2147483647i, ~var_2.x, var_2.x)), _wgslsmith_sub_i32(global1.x, abs(-6911i)), _wgslsmith_div_i32(var_2.x, global1.x));
    return -firstTrailingBit(_wgslsmith_div_i32(-18492i, _wgslsmith_clamp_i32(min(global1.x, var_0.e.c), global1.x, var_0.e.c)));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_4, arg_2: f32) -> vec3<f32> {
    let var_0 = arg_1.e;
    global1 = select(vec3<i32>(-33723i, var_0.c, ~_wgslsmith_add_i32(~(-2147483647i), u_input.c ^ -1i)), ~vec3<i32>(~(~30044i), arg_1.e.c, _wgslsmith_sub_i32(26983i, func_2(arg_0.c.x))), vec3<bool>(all(!select(vec4<bool>(true, true, arg_1.d, arg_0.a), vec4<bool>(arg_1.d, false, arg_1.d, false), vec4<bool>(false, arg_0.a, arg_1.d, arg_1.d))), arg_1.d, false));
    global1 = _wgslsmith_clamp_vec3_i32(-(max(vec3<i32>(8454i, 33104i, -9837i), u_input.a) ^ (~vec3<i32>(-50485i, var_0.d, -27867i) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, var_0.b.x, 1u), arg_0.b.b.zzx) % vec3<u32>(32u)))), arg_0.d, vec3<i32>(abs(~_wgslsmith_dot_vec3_i32(arg_0.d, arg_0.d)), -1i, -6866i));
    var var_1 = arg_1.c.x;
    var var_2 = Struct_3(arg_0.e.b.x);
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-194f, _wgslsmith_f_op_f32(606f - -203f))))), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-var_0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(Struct_2(true, Struct_1(1360f, vec4<u32>(141357u, u_input.b.x, u_input.b.x, 102654u), 18605i, u_input.c), vec2<bool>(false, false), vec3<i32>(global1.x, u_input.a.x, u_input.c), Struct_1(-979f, vec4<u32>(1u, u_input.b.x, 1u, 4822u), u_input.a.x, 83i)), Struct_4(Struct_3(u_input.b.x), vec4<f32>(-740f, -601f, -1103f, -294f), vec4<f32>(-996f, -1158f, -467f, 1082f), true, Struct_1(726f, vec4<u32>(0u, 16251u, 49174u, u_input.b.x), -2147483647i, 11568i)), 623f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-261f, -136f, -1121f) + vec3<f32>(1000f, -842f, -184f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-274f, 1096f, 227f) - vec3<f32>(-1199f, 686f, -649f))), true)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, var_0.x, 183f, -1707f)))))), vec4<f32>(_wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(-1081f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(var_0.x))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec3_f32(func_1(Struct_2(true, Struct_1(364f, vec4<u32>(4910u, 12207u, 1u, 96609u), 50297i, 38733i), vec2<bool>(false, false), vec3<i32>(global1.x, global1.x, -2147483647i), Struct_1(-806f, vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x), global1.x, u_input.c)), Struct_4(Struct_3(26431u), vec4<f32>(-1515f, 698f, var_0.x, 2741f), vec4<f32>(-654f, 798f, 1066f, var_0.x), false, Struct_1(218f, vec4<u32>(u_input.b.x, 0u, u_input.b.x, 44643u), u_input.a.x, 1i)), _wgslsmith_f_op_f32(-var_0.x))).x)), -438f), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, all(global0[_wgslsmith_index_u32(u_input.b.x, 31u)]), true, true), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true)), true)));
    let var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1670f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.x)) * _wgslsmith_f_op_f32(round(var_1.x))), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -2512f)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(var_1, var_1))), _wgslsmith_f_op_vec4_f32(-var_1))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-783f, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_1.x), var_1.x))));
    global0 = array<vec3<bool>, 31>();
    var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(var_1, vec4<f32>(var_2.x, var_1.x, -1000f, 1000f))), var_2)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2), vec4<f32>(1000f, -204f, 1116f, var_2.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1042f, 164f, -246f, -1143f)), _wgslsmith_div_vec4_f32(vec4<f32>(var_3.x, -574f, -1129f, var_2.x), var_2))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, -432f))), -2104f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x * var_2.x), _wgslsmith_f_op_f32(var_3.x * 524f)), _wgslsmith_f_op_f32(-var_3.x))), 1i < global1.x));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<u32>(7626u, ~(~4294967295u)), u_input.b, vec2<bool>(true, true)));
}

