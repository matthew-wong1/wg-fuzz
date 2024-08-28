struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: u32,
    c: Struct_2,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10>;

var<private> global1: array<vec4<u32>, 24>;

var<private> global2: array<Struct_4, 15> = array<Struct_4, 15>(Struct_4(true), Struct_4(true), Struct_4(false), Struct_4(true), Struct_4(false), Struct_4(true), Struct_4(false), Struct_4(false), Struct_4(true), Struct_4(true), Struct_4(false), Struct_4(true), Struct_4(true), Struct_4(true), Struct_4(true));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2(arg_0: vec3<u32>) -> Struct_4 {
    let var_0 = max(countOneBits(_wgslsmith_mod_vec3_i32(abs(vec3<i32>(u_input.d.x, u_input.c.x, -2147483647i)), ~reverseBits(vec3<i32>(-2147483647i, -1i, u_input.c.x)))), vec3<i32>(1i, -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, 1i, u_input.d.x), vec3<i32>(u_input.d.x, u_input.d.x, -8018i) >> (u_input.a % vec3<u32>(32u))), -u_input.c.x));
    global0 = array<bool, 10>();
    global1 = array<vec4<u32>, 24>();
    let var_1 = _wgslsmith_f_op_f32(-425f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(666f + 1462f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(307f, 1273f))) - _wgslsmith_f_op_f32(-752f - -969f))));
    global2 = array<Struct_4, 15>();
    return global2[_wgslsmith_index_u32(74377u, 15u)];
}

fn func_3(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: i32) -> vec2<f32> {
    let var_0 = Struct_3(_wgslsmith_sub_vec4_u32(vec4<u32>(reverseBits(u_input.b), ~1u, ~u_input.b, 14144u), _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(global1[_wgslsmith_index_u32(u_input.b, 24u)], global1[_wgslsmith_index_u32(24281u, 24u)]), ~vec4<u32>(u_input.a.x, 0u, 68136u, u_input.a.x))) ^ global1[_wgslsmith_index_u32(max(reverseBits(_wgslsmith_mod_u32(u_input.a.x, u_input.b)), ~u_input.b), 24u)], ~u_input.a.x, Struct_2(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-478f * -539f))), _wgslsmith_f_op_f32(f32(-1f) * -127f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(191f))), 1f)));
    let var_1 = Struct_1(u_input.d.x, false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1155f)))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.a.x)), abs(~(~80036u)));
    var var_2 = arg_0.a;
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_0.c.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(var_0.c.a))))), func_2(u_input.a).a && (_wgslsmith_clamp_i32(25794i, -30796i, 1i) >= 36833i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(3343f, 516f, var_0.c.a.x, _wgslsmith_f_op_f32(var_0.c.a.x - var_0.c.a.x))))));
    global2 = array<Struct_4, 15>();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(var_0.c.a.xw, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_3.yw * vec2<f32>(var_0.c.a.x, var_3.x)) * vec2<f32>(657f, var_0.c.a.x))))));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: vec2<f32>, arg_3: f32) -> Struct_3 {
    let var_0 = _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(firstLeadingBit(~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d.x, u_input.d.x, -3248i), vec3<i32>(-1i, 36133i, 2147483647i))), vec3<i32>(~(-72214i), ~u_input.c.x, -1679i) << (u_input.a % vec3<u32>(32u))), 16356i & reverseBits(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(u_input.c.x, -28539i, 0i, u_input.c.x)), ~vec4<i32>(u_input.c.x, 1i, u_input.c.x, -1i))));
    var var_1 = 19760i;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(158f))))), -1135f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(arg_2.x))))) * _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(floor(452f)))));
    var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.x, arg_1.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - _wgslsmith_f_op_f32(f32(-1f) * -490f))), _wgslsmith_f_op_f32(round(var_2.x))));
    let var_3 = !(!(var_0 < (i32(-1i) * -2147483647i)));
    return Struct_3(_wgslsmith_clamp_vec4_u32(~global1[_wgslsmith_index_u32(countOneBits(u_input.b), 24u)], global1[_wgslsmith_index_u32(~8303u, 24u)], abs(select(reverseBits(vec4<u32>(0u, u_input.b, u_input.a.x, u_input.b)), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 89782u) ^ vec4<u32>(7639u, 4294967295u, u_input.a.x, 4294967295u), var_0 >= 2147483647i))), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~u_input.a | vec3<u32>(u_input.b, u_input.a.x, u_input.a.x), u_input.a), u_input.a), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(var_2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_3))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) * _wgslsmith_f_op_f32(-arg_3)), arg_2.x)));
}

fn func_5(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_3, arg_3: vec4<bool>) -> vec2<u32> {
    global2 = array<Struct_4, 15>();
    let var_0 = arg_2;
    global0 = array<bool, 10>();
    var var_1 = vec2<bool>(!arg_3.x, any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, arg_3.x, false), select(vec3<bool>(true, false, false), vec3<bool>(arg_3.x, true, true), arg_3.yww), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 10u)], false, false)), true)));
    global0 = array<bool, 10>();
    return ~vec2<u32>(~0u, ~arg_2.a.x);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_4, arg_2: i32) -> i32 {
    let var_0 = func_5(_wgslsmith_div_vec2_i32(-vec2<i32>(arg_2, min(-69164i, -13412i)), vec2<i32>(-2147483647i, -_wgslsmith_mult_i32(3727i, -28204i))), u_input.b, func_4(func_2(vec3<u32>(~arg_0.a.x, ~57325u, countOneBits(arg_0.a.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0.c.a.x, 1000f))) - vec2<f32>(arg_0.c.a.x, arg_0.c.a.x)) - _wgslsmith_f_op_vec2_f32(func_3(func_2(vec3<u32>(2387u, 34450u, 4294967295u)), !vec4<bool>(arg_1.a, false, global0[_wgslsmith_index_u32(u_input.a.x, 10u)], true), arg_2))), arg_0.c.a.xz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-387f)) - _wgslsmith_f_op_f32(exp2(arg_0.c.a.x)))), vec4<bool>(true, arg_0.c.a.x < _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1093f + -491f), -185f)), any(!vec4<bool>(false, true, false, arg_1.a)), true));
    global0 = array<bool, 10>();
    var var_1 = abs(min(var_0, vec2<u32>(36775u, min(~arg_0.a.x, 1u))));
    let var_2 = all(select(!select(!vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 10u)]), vec2<bool>(arg_1.a, false), true), select(select(vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 10u)], true), !vec2<bool>(true, arg_1.a), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 10u)], global0[_wgslsmith_index_u32(3618u, 10u)])), !select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 10u)], global0[_wgslsmith_index_u32(arg_0.b, 10u)]), vec2<bool>(true, false), vec2<bool>(global0[_wgslsmith_index_u32(1u, 10u)], true)), !global0[_wgslsmith_index_u32(1u, 10u)]), vec2<bool>(true, arg_1.a)));
    return firstTrailingBit(-_wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.d.x >> (1u % 32u), i32(-1i) * -23367i), select(i32(-1i) * -2147483647i, min(-1i, u_input.c.x), global0[_wgslsmith_index_u32(~5071u, 10u)])));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 33869u;
    global1 = array<vec4<u32>, 24>();
    var_0 = ~u_input.b;
    var var_1 = Struct_1(_wgslsmith_add_i32(_wgslsmith_mod_i32(func_1(Struct_3(global1[_wgslsmith_index_u32(13192u, 24u)], 1u, Struct_2(vec4<f32>(-605f, 483f, -1495f, -101f))), Struct_4(global0[_wgslsmith_index_u32(u_input.b, 10u)]), u_input.d.x), -1i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, -114032i, -37411i, u_input.c.x), ~vec4<i32>(u_input.d.x, 40721i, -17094i, u_input.c.x))) & -u_input.c.x, true, false || !global0[_wgslsmith_index_u32(u_input.b << (u_input.a.x % 32u), 10u)], (_wgslsmith_sub_u32(~1u, ~u_input.b) | 0u) >> (~u_input.b % 32u));
    let var_2 = vec4<f32>(-610f, -927f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_4(global2[_wgslsmith_index_u32(var_1.d >> (22348u % 32u), 15u)], vec2<f32>(-622f, -1867f), vec2<f32>(1379f, -565f), -787f).c.a.x)), func_4(func_2(vec3<u32>(u_input.a.x >> (12829u % 32u), 51461u >> (var_1.d % 32u), 42577u)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(329f, -1052f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-188f + 264f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-748f, -255f))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1114f, 801f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(592f, -969f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1763f)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-615f, 1108f))))).c.a.x);
    global0 = array<bool, 10>();
    var var_3 = select(0u, ~(~(~(~var_1.d))), !var_1.c);
    let var_4 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_i32(func_1(func_4(Struct_4(false), var_2.yy, var_2.wy, 495f), global2[_wgslsmith_index_u32(4294967295u, 15u)], _wgslsmith_mult_i32(1i, var_4)), u_input.c.x), _wgslsmith_dot_vec3_u32(~(~_wgslsmith_clamp_vec3_u32(u_input.a, vec3<u32>(1u, 0u, var_1.d), vec3<u32>(73352u, var_1.d, var_1.d))), max(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(u_input.a, u_input.a), vec3<u32>(24257u, var_1.d, 0u) | vec3<u32>(9926u, var_1.d, 1u)), _wgslsmith_mult_vec3_u32(min(vec3<u32>(u_input.a.x, 5600u, 0u), u_input.a), ~u_input.a))), firstLeadingBit(-2147483647i), var_4);
}

