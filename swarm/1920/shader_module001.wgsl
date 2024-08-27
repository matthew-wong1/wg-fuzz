struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec3<f32>,
    d: vec4<u32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24> = array<u32, 24>(37566u, 1u, 5330u, 15041u, 26012u, 89100u, 54454u, 19345u, 0u, 1u, 4294967295u, 4294967295u, 1u, 1u, 27420u, 1u, 39331u, 9077u, 21618u, 1u, 4294967295u, 36383u, 1226u, 0u);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> i32 {
    global0 = array<u32, 24>();
    global0 = array<u32, 24>();
    var var_0 = any(select(select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), false), vec4<bool>(false, true, true, false), any(vec4<bool>(true, false, true, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true))), u_input.a <= reverseBits(u_input.a)), vec4<bool>(true, true, true, true), !(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), true))));
    let var_1 = Struct_1(~(~vec2<u32>(global0[_wgslsmith_index_u32(32798u, 24u)] >> (14019u % 32u), global0[_wgslsmith_index_u32(0u, 24u)] & global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 24u)], 24u)], 24u)], 24u)])), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(reverseBits(1u), ~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(40417u, 24u)], 24u)], 24u)], 24u)], 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 24u)], 24u)], 20039u, global0[_wgslsmith_index_u32(22037u, 24u)]), vec4<u32>(57408u, 26785u, 4294967295u, 4294967295u)), select(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 24u)], 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9308u, 24u)], 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(13394u, 24u)], 24u)], 24u)], 24u)], 24u)], 24u)], 24u)], 24u)], 26040u), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(7733u, 24u)], 24u)], 24u)], 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 24u)], 24u)], 4294967295u, global0[_wgslsmith_index_u32(4514u, 24u)]), false))), 24u)], -24255i, _wgslsmith_f_op_f32(-180f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-754f + _wgslsmith_f_op_f32(f32(-1f) * -911f)) * _wgslsmith_f_op_f32(trunc(1359f)))));
    var_0 = _wgslsmith_add_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(19245i, 36286i), min(vec2<i32>(-1i, 27903i), vec2<i32>(u_input.a, 8035i))), firstTrailingBit(-37049i)), ~0i) < _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -4396i, -33247i | (var_1.c << (var_1.b % 32u))), _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, -2147483647i, 0i), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.c, -2147483647i, 1i), firstTrailingBit(vec3<i32>(-6433i, -2147483647i, -6502i)), ~vec3<i32>(1254i, u_input.a, u_input.a)), firstLeadingBit(vec3<i32>(var_1.c, -2147483647i, u_input.a) & vec3<i32>(u_input.a, 0i, -58878i))));
    return _wgslsmith_sub_i32(var_1.c, var_1.c);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    let var_0 = -1380f;
    let var_1 = -abs(u_input.a) ^ func_3();
    global0 = array<u32, 24>();
    global0 = array<u32, 24>();
    var var_2 = Struct_3(~_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.x, max(49201u, global0[_wgslsmith_index_u32(0u, 24u)]), arg_3.a.x), max(vec3<u32>(0u, 116324u, arg_3.b), ~vec3<u32>(0u, 0u, 69422u))), Struct_1(~_wgslsmith_sub_vec2_u32(~vec2<u32>(1u, 0u), countOneBits(arg_3.a)), global0[_wgslsmith_index_u32(34971u, 24u)], reverseBits(1i), arg_0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-143f * -1000f))))), ~(~(~vec4<u32>(53483u, arg_3.a.x, arg_3.a.x, 45599u))), u_input.a);
    return Struct_1(vec2<u32>(min(abs(firstTrailingBit(127644u)), ~1u), arg_1.x), 4294967295u, var_2.e, 1f);
}

fn func_4(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_2) -> Struct_2 {
    var var_0 = select(!(!select(!vec3<bool>(true, true, arg_1), select(vec3<bool>(true, true, arg_1), vec3<bool>(false, false, false), vec3<bool>(arg_1, arg_1, arg_1)), any(vec4<bool>(false, false, false, true)))), !(!select(vec3<bool>(arg_1, true, arg_1), vec3<bool>(true, arg_1, arg_1), any(vec2<bool>(arg_1, true)))), select(select(!select(vec3<bool>(arg_1, false, true), vec3<bool>(false, arg_1, false), vec3<bool>(arg_1, arg_1, arg_1)), select(vec3<bool>(false, false, arg_1), vec3<bool>(arg_1, arg_1, arg_1), true), !select(vec3<bool>(false, false, arg_1), vec3<bool>(false, true, arg_1), true)), select(!vec3<bool>(arg_1, true, false), select(vec3<bool>(arg_1, arg_1, true), !vec3<bool>(true, arg_1, arg_1), all(vec2<bool>(arg_1, true))), !any(vec4<bool>(true, arg_1, false, arg_1))), !select(!vec3<bool>(arg_1, arg_1, true), select(vec3<bool>(false, arg_1, true), vec3<bool>(true, true, false), false), arg_0.x == arg_2.c.d)));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-1112f, 1282f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b.d - _wgslsmith_f_op_f32(arg_0.x + arg_0.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -494f) + _wgslsmith_f_op_f32(floor(arg_2.c.d))))) - arg_0);
    var var_2 = func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_0.yy, vec2<f32>(1225f, -349f)) * arg_0.yx), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_2.c.d, arg_2.b.d), vec2<f32>(620f, 1091f))), var_1.yy)) * var_1.yz), ~select(countOneBits(arg_2.b.a), max(~vec2<u32>(12616u, 64236u), select(vec2<u32>(arg_2.b.b, arg_2.b.a.x), arg_2.a, var_0.zx)), !var_0.yx), true, Struct_1(firstTrailingBit((arg_2.b.a | vec2<u32>(2313u, arg_2.c.a.x)) | arg_2.b.a), 0u, arg_2.b.c, func_2(arg_0.zz, ~(~vec2<u32>(global0[_wgslsmith_index_u32(36406u, 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 24u)], 24u)])), arg_2.c.b < arg_2.b.a.x, arg_2.b).d));
    let var_3 = select(vec4<i32>(_wgslsmith_add_i32(~reverseBits(arg_2.b.c), -66627i), arg_2.c.c, ~var_2.c, abs(u_input.a)), -_wgslsmith_clamp_vec4_i32(max(-vec4<i32>(arg_2.c.c, -11140i, 2147483647i, 16731i), vec4<i32>(0i, -14707i, var_2.c, var_2.c) ^ vec4<i32>(var_2.c, arg_2.b.c, arg_2.b.c, 0i)), _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, u_input.a, u_input.a, u_input.a), vec4<i32>(arg_2.c.c, u_input.a, arg_2.b.c, 71975i)), vec4<i32>(arg_2.c.c, arg_2.b.c, arg_2.c.c, arg_2.b.c)), -vec4<i32>(u_input.a, var_2.c, 1i, -1i)), vec4<bool>(false, true, all(vec2<bool>(!var_0.x, !arg_1)), all(!select(vec2<bool>(var_0.x, var_0.x), var_0.xx, false))));
    var var_4 = arg_2.b.a << (arg_2.c.a % vec2<u32>(32u));
    return Struct_2(vec2<u32>(arg_2.c.a.x, firstTrailingBit(var_4.x)), Struct_1(~(vec2<u32>(var_2.a.x, arg_2.b.a.x) >> (vec2<u32>(var_2.b, 0u) % vec2<u32>(32u))), firstLeadingBit(var_2.b), u_input.a, -1505f), arg_2.c);
}

fn func_5(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: bool) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -328f);
    global0 = array<u32, 24>();
    global0 = array<u32, 24>();
    let var_1 = Struct_1(arg_0.a, ~_wgslsmith_dot_vec2_u32(~(~arg_0.c.a), arg_1.yz), ~_wgslsmith_div_i32(38620i, -6544i), _wgslsmith_f_op_f32(-arg_0.b.d));
    let var_2 = max(u_input.a, 54481i) << ((func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1297f, -1073f, -1000f)))), arg_2, func_4(vec3<f32>(arg_0.b.d, -1506f, arg_0.b.d), !arg_2, func_4(vec3<f32>(var_0, -708f, -1644f), arg_2, arg_0))).a.x << (0u % 32u)) % 32u);
    return !select(!select(vec2<bool>(false, arg_2), select(vec2<bool>(arg_2, false), vec2<bool>(arg_2, arg_2), vec2<bool>(true, arg_2)), true), vec2<bool>(arg_2, arg_2), false);
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: bool) -> vec4<u32> {
    let var_0 = func_5(func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1327f, 523f, -517f) + vec3<f32>(-868f, 1668f, 1028f)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1684f), _wgslsmith_f_op_f32(1000f - -473f), _wgslsmith_f_op_f32(1645f * 1175f))), arg_2, Struct_2(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, global0[_wgslsmith_index_u32(33630u, 24u)]) | vec2<u32>(global0[_wgslsmith_index_u32(1u, 24u)], global0[_wgslsmith_index_u32(8168u, 24u)]), vec2<u32>(1u, global0[_wgslsmith_index_u32(1u, 24u)]) << (vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(46953u, 24u)], 24u)], 0u) % vec2<u32>(32u)), ~vec2<u32>(39874u, 16044u)), func_2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1276f, 1432f), vec2<f32>(-592f, -879f))), abs(vec2<u32>(108325u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18801u, 24u)], 24u)])), !arg_0, Struct_1(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 24u)], 24u)], 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)]), 4294967295u, -6655i, -1049f)), Struct_1(select(vec2<u32>(0u, 1u), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(55752u, 24u)], 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11113u, 24u)], 24u)], 24u)], 24u)], 24u)], 24u)]), vec2<bool>(false, false)), ~global0[_wgslsmith_index_u32(4294967295u, 24u)], u_input.a, _wgslsmith_f_op_f32(-219f * 642f)))), ~select(~(~vec3<u32>(6349u, 10013u, 107185u)), vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(1u, 24u)] ^ 2248u, global0[_wgslsmith_index_u32(max(28264u, 42961u), 24u)]), vec3<bool>(true, true, any(vec4<bool>(true, true, arg_2, false)))), any(!(!(!vec4<bool>(true, false, false, arg_0)))));
    var var_1 = vec3<f32>(-312f, 1330f, -665f);
    var var_2 = _wgslsmith_clamp_i32(select(_wgslsmith_div_i32(0i, i32(-1i) * -35207i), _wgslsmith_dot_vec3_i32(select(vec3<i32>(arg_1, 1i, u_input.a), -vec3<i32>(18924i, u_input.a, arg_1), arg_2), -(vec3<i32>(-1i, -2147483647i, u_input.a) | vec3<i32>(arg_1, arg_1, 26234i))), !arg_2), -_wgslsmith_sub_i32(u_input.a, arg_1), ~(~(-u_input.a) ^ max(-60529i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, arg_1, u_input.a, u_input.a), vec4<i32>(arg_1, 2147483647i, arg_1, u_input.a)))));
    global0 = array<u32, 24>();
    var var_3 = var_1.xz;
    return select(vec4<u32>(global0[_wgslsmith_index_u32(~1u, 24u)], 57388u, 39540u, _wgslsmith_mod_u32(firstTrailingBit(0u), _wgslsmith_div_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(14946u, 24u)], 24u)], 24u)], 0u))) ^ firstTrailingBit(vec4<u32>(min(8670u, 59104u), 82374u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)], 4294967295u), vec4<u32>(60621u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(21745u, 24u)], 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(10366u, 24u)], 24u)], global0[_wgslsmith_index_u32(20315u, 24u)])), global0[_wgslsmith_index_u32(~0u, 24u)])), vec4<u32>(firstTrailingBit(_wgslsmith_mult_u32(~global0[_wgslsmith_index_u32(0u, 24u)], ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(93563u, 24u)], 24u)], 24u)])), _wgslsmith_div_u32(~global0[_wgslsmith_index_u32(firstLeadingBit(34088u), 24u)], global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~31140u, ~0u), 24u)]), global0[_wgslsmith_index_u32(48352u, 24u)], _wgslsmith_mult_u32(~1u, ~global0[_wgslsmith_index_u32(1u, 24u)])), -15141i < _wgslsmith_add_i32(func_3(), u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 24>();
    var var_0 = !(false || !(~global0[_wgslsmith_index_u32(4294967295u, 24u)] != 12507u));
    global0 = array<u32, 24>();
    var var_1 = func_1(true, _wgslsmith_mult_i32(1i, u_input.a), true);
    var var_2 = -294f;
    var var_3 = vec3<u32>(_wgslsmith_sub_u32(var_1.x ^ select(4294967295u, ~global0[_wgslsmith_index_u32(1u, 24u)], true), ~func_1(false, 14405i & u_input.a, any(vec3<bool>(false, false, false))).x), _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, var_1.x), select(~var_1.xy, var_1.xy, vec2<bool>(true, global0[_wgslsmith_index_u32(var_1.x, 24u)] >= var_1.x))), _wgslsmith_div_u32(~(global0[_wgslsmith_index_u32(var_1.x, 24u)] << (func_2(vec2<f32>(1000f, -448f), vec2<u32>(var_1.x, global0[_wgslsmith_index_u32(var_1.x, 24u)]), true, Struct_1(var_1.zz, var_1.x, -3339i, -1000f)).b % 32u)), ~5400u));
    global0 = array<u32, 24>();
    let var_4 = Struct_1(vec2<u32>(_wgslsmith_mod_u32(~(var_1.x >> (17878u % 32u)), ~(~37935u)), global0[_wgslsmith_index_u32(148152u << (~var_1.x % 32u), 24u)]), 1u & ~func_1(false, u_input.a, false).x, -(i32(-1i) * -2147483647i) | u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(614f, _wgslsmith_div_f32(-1441f, 1393f), true))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-286f + var_4.d), _wgslsmith_div_f32(var_4.d, var_4.d)) - var_4.d), var_4.d), firstLeadingBit(101206u), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.d, var_4.d, var_4.d))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1018f, 2309f, var_4.d)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.d, var_4.d, var_4.d) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1535f, 694f, var_4.d), vec3<f32>(-527f, var_4.d, var_4.d)))))));
}

