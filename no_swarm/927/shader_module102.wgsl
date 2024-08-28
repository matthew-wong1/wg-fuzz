struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<i32>, 13> = array<vec4<i32>, 13>(vec4<i32>(37601i, -37258i, 1i, 0i), vec4<i32>(42462i, -1i, 1i, -12884i), vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, -35102i), vec4<i32>(2147483647i, 2147483647i, 13978i, 21802i), vec4<i32>(17519i, -22562i, 0i, 29088i), vec4<i32>(2147483647i, -31551i, 0i, 0i), vec4<i32>(-12599i, 8256i, 38299i, 26821i), vec4<i32>(i32(-2147483648), 2147483647i, 0i, -22484i), vec4<i32>(-44586i, 0i, 2147483647i, 43430i), vec4<i32>(15918i, -1i, i32(-2147483648), 52940i), vec4<i32>(-48451i, 33958i, -49383i, -26586i), vec4<i32>(2147483647i, -30817i, 1i, 1i), vec4<i32>(1i, i32(-2147483648), -28134i, -9552i));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    global1 = array<vec4<i32>, 13>();
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(675f))) + _wgslsmith_f_op_f32(global0.a - 375f)));
    var var_0 = -min(_wgslsmith_add_i32(-37559i, 0i), u_input.c.x);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1189f));
    var var_2 = var_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a * 1152f));
}

fn func_2(arg_0: u32, arg_1: u32) -> f32 {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-788f, global0.a))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, -1000f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a, global0.a) * vec2<f32>(global0.a, -169f)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -298f), _wgslsmith_f_op_f32(f32(-1f) * -525f)), vec2<bool>(!(u_input.d == 36570i), true))), vec2<f32>(_wgslsmith_f_op_f32(trunc(422f)), -1989f));
    global0 = Struct_1(327f);
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(1598f, -1319f), global0.a), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -857f), -553f), vec2<bool>(true, true)))), ~(select(abs(vec2<u32>(arg_1, 4294967295u)), abs(vec2<u32>(75606u, 0u)), true) & abs(~vec2<u32>(arg_0, arg_0))), ~vec4<u32>(reverseBits(0u), _wgslsmith_add_u32(20164u, countOneBits(0u)), 1u, 14232u), u_input.c.zy << (vec2<u32>(arg_1, arg_1) % vec2<u32>(32u)));
    global1 = array<vec4<i32>, 13>();
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x + var_1.a.x) - _wgslsmith_f_op_f32(func_3(var_1.c))) * 378f), false))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-404f, 1030f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.x), var_0.x))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    let var_0 = !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), vec3<bool>(all(vec2<bool>(false, true)), !(arg_2.c.x > 1u), (u_input.e.x < 0i) & all(vec3<bool>(false, true, false))), true);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2171f, arg_0.a))))));
    var var_2 = Struct_2(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1633f - 1000f))), _wgslsmith_f_op_f32(-456f - arg_2.a.x)), -541f), firstLeadingBit(~min(vec2<u32>(arg_2.b.x, 31679u) >> (arg_2.b % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(vec2<u32>(arg_2.c.x, arg_2.b.x), arg_2.c.wz))), abs(~arg_2.c) << (_wgslsmith_mod_vec4_u32(firstLeadingBit(countOneBits(arg_2.c)), ~vec4<u32>(28643u, 0u, arg_2.c.x, arg_2.c.x) & ~arg_2.c) % vec4<u32>(32u)), countOneBits(vec2<i32>(countOneBits(min(35936i, 2147483647i)), u_input.d)));
    var var_3 = var_1;
    var var_4 = ~vec2<i32>(arg_2.d.x, -1i);
    return Struct_1(var_3.a);
}

fn func_1(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec3<i32>) -> i32 {
    var var_0 = func_4(Struct_1(_wgslsmith_f_op_f32(func_2(13035u, ~_wgslsmith_sub_u32(arg_0.b.x, arg_1.x)))), Struct_1(964f), Struct_2(arg_0.a, arg_0.b ^ ~arg_1.yw, firstTrailingBit(_wgslsmith_clamp_vec4_u32(select(arg_1, arg_0.c, false), arg_1, arg_0.c)), vec2<i32>(arg_0.d.x, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.x, arg_0.d.x, u_input.b), arg_2)) << (_wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.x, arg_1.x), min(vec2<u32>(arg_0.b.x, 46990u), arg_0.b)) % vec2<u32>(32u))));
    var var_1 = _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(firstTrailingBit(global1[_wgslsmith_index_u32(~(arg_1.x | 61064u), 13u)]), u_input.e), abs(reverseBits(countOneBits(_wgslsmith_add_vec4_i32(global1[_wgslsmith_index_u32(13209u, 13u)], u_input.e)))));
    let var_2 = !vec4<bool>(all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false), true)), true, !(84184u < firstTrailingBit(56505u)), true);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * _wgslsmith_div_f32(arg_0.a.x, arg_0.a.x))) + _wgslsmith_f_op_f32(f32(-1f) * -1097f)));
    let var_4 = vec3<bool>(true, false, !all(select(!var_2.xy, !var_2.xw, vec2<bool>(var_2.x, var_2.x))));
    return ~u_input.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 13>();
    let var_0 = func_1(Struct_2(vec2<f32>(global0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a), global0.a)), ~min(vec2<u32>(0u, 61836u), vec2<u32>(67506u, 4294967295u)), ~firstLeadingBit(vec4<u32>(0u, 45754u, 45064u, 15709u)), abs(_wgslsmith_mod_vec2_i32(~u_input.c.yx, _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, 99336i), vec2<i32>(8860i, u_input.a))))), vec4<u32>(~(~max(69521u, 27435u)), firstTrailingBit(0u), 1u, 0u), countOneBits(u_input.c));
    global1 = array<vec4<i32>, 13>();
    var var_1 = false;
    var var_2 = true;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(158f)) * _wgslsmith_div_f32(global0.a, 2290f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(179f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.a)))))));
    var_1 = all(select(!vec4<bool>(true, false, all(vec4<bool>(true, false, true, true)), var_0 >= -2147483647i), !vec4<bool>(true, true, all(vec3<bool>(true, true, true)), false), vec4<bool>(true, true, true, true)));
    let var_4 = Struct_1(global0.a);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e.x, firstTrailingBit(~_wgslsmith_div_u32(57323u, 54098u)) >> (~(~1u) % 32u), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(1456f))))))), abs(1u));
}

