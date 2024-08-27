struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: vec3<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 7> = array<vec3<f32>, 7>(vec3<f32>(-342f, -1519f, -1073f), vec3<f32>(1851f, -994f, 452f), vec3<f32>(1553f, -292f, -1171f), vec3<f32>(-474f, 587f, 475f), vec3<f32>(-947f, 1535f, -574f), vec3<f32>(307f, 1084f, -687f), vec3<f32>(1037f, 482f, -304f));

var<private> global1: array<vec4<i32>, 22>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<bool>) -> f32 {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(2003f, -418f, -367f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(109271u, 7u)] - vec3<f32>(1071f, 1308f, -1732f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-654f, -2226f, -962f)))));
    let var_1 = Struct_2(vec3<u32>(~1u, abs(1u), 4294967295u), false, vec3<f32>(_wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x + -1000f))))), var_0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + -855f), _wgslsmith_f_op_f32(-var_0.x)))));
    var_0 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1527f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1434f, var_0.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.x - var_1.c.x) * -1319f)), _wgslsmith_f_op_f32(var_0.x * 1640f))));
    var var_2 = (var_1.a.x >> (var_1.a.x % 32u)) & var_1.a.x;
    global1 = array<vec4<i32>, 22>();
    return -306f;
}

fn func_2(arg_0: i32) -> u32 {
    global1 = array<vec4<i32>, 22>();
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), true))) + 324f) + -1530f), _wgslsmith_f_op_f32(func_3(vec4<bool>(292f <= _wgslsmith_f_op_f32(trunc(-969f)), all(select(vec2<bool>(false, false), vec2<bool>(true, true), true)), all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true))), all(vec2<bool>(false, false))))));
    global0 = array<vec3<f32>, 7>();
    let var_1 = var_0.x;
    global0 = array<vec3<f32>, 7>();
    return _wgslsmith_mod_u32(~firstLeadingBit(1u << (1u % 32u)), _wgslsmith_clamp_u32(28503u, 1u, ~0u));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: Struct_3) -> i32 {
    var var_0 = false;
    var var_1 = select(vec4<bool>(any(vec3<bool>(true, true, true)), true, !(any(vec2<bool>(false, false)) || false), true), vec4<bool>((abs(arg_0.x) <= 46754u) && any(vec4<bool>(true, false, false, true)), !(any(vec3<bool>(false, true, true)) || true), false, false | any(vec4<bool>(true, true, true, true))), any(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    let var_2 = Struct_2(arg_1.zwz, !(!(all(vec4<bool>(var_1.x, var_1.x, var_1.x, true)) == true)), global0[_wgslsmith_index_u32(arg_1.x, 7u)]);
    global0 = array<vec3<f32>, 7>();
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 400f, 572f, var_2.c.x))))));
    return _wgslsmith_dot_vec3_i32(~_wgslsmith_mod_vec3_i32(max(vec3<i32>(u_input.a, -47740i, 0i), vec3<i32>(0i, u_input.a, u_input.a)), firstTrailingBit(vec3<i32>(u_input.a, u_input.a, u_input.a))), _wgslsmith_clamp_vec3_i32(select(-vec3<i32>(u_input.a, u_input.a, 2147483647i), vec3<i32>(0i, -32769i, u_input.a), select(vec3<bool>(var_2.b, var_1.x, var_2.b), vec3<bool>(true, true, var_2.b), var_1.zxx)), -vec3<i32>(u_input.a, u_input.a, u_input.a), abs(-vec3<i32>(u_input.a, u_input.a, u_input.a)))) << (firstTrailingBit(~_wgslsmith_mult_u32(var_2.a.x, _wgslsmith_mod_u32(2177u, 32751u))) % 32u);
}

fn func_1(arg_0: u32, arg_1: u32) -> bool {
    var var_0 = -9744i;
    var var_1 = ~_wgslsmith_mod_vec2_u32(abs(~_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, arg_1), vec2<u32>(arg_0, arg_1))), _wgslsmith_div_vec2_u32(abs(vec2<u32>(arg_1, arg_0) ^ vec2<u32>(arg_0, 1u)), firstTrailingBit(firstLeadingBit(vec2<u32>(arg_1, arg_1)))));
    var var_2 = Struct_1(-vec3<i32>(_wgslsmith_clamp_i32(u_input.a, ~u_input.a, 1i), 0i, _wgslsmith_mult_i32(reverseBits(5311i), u_input.a)), min(firstLeadingBit(~var_1.x), var_1.x), firstLeadingBit(-_wgslsmith_add_i32(-2147483647i, _wgslsmith_mult_i32(u_input.a, u_input.a))), func_4((~vec2<u32>(1u, var_1.x) >> (~vec2<u32>(arg_1, var_1.x) % vec2<u32>(32u))) >> (min(vec2<u32>(arg_0, arg_1) << (vec2<u32>(arg_1, arg_1) % vec2<u32>(32u)), vec2<u32>(var_1.x, 1u)) % vec2<u32>(32u)), vec4<u32>(countOneBits(~arg_1), abs(90121u) << (func_2(10920i) % 32u), select(arg_0, 4294967295u, true), func_2(~u_input.a)), Struct_3(~abs(vec3<u32>(28472u, 1u, var_1.x)))));
    var_2 = Struct_1(var_2.a, arg_1, 26296i, -var_2.c);
    let var_3 = Struct_4(Struct_3(_wgslsmith_add_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(80490u, 4294967295u, arg_1), vec3<u32>(0u, 0u, var_2.b)), max(vec3<u32>(var_1.x, 1u, var_2.b) & vec3<u32>(4294967295u, arg_0, var_1.x), ~vec3<u32>(11860u, var_1.x, arg_1)))), 4294967295u);
    return any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), false)) | (false || all(vec3<bool>(true, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(select(vec3<bool>(true, true, select(false, true, true)), vec3<bool>(func_1(4294967295u, 3359u), false, false), true), vec3<bool>(true, true, true), vec3<bool>(all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false)), true, true)), !select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true)), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), vec3<bool>(!(!any(vec4<bool>(false, false, false, true))), true, -384f == _wgslsmith_f_op_f32(trunc(-611f))));
    let var_1 = Struct_1(~vec3<i32>(11397i, 2147483647i, firstLeadingBit(min(u_input.a, u_input.a))), 84536u, u_input.a, u_input.a);
    let var_2 = ~(abs(vec4<u32>(var_1.b, var_1.b, 16953u, 5182u) ^ vec4<u32>(var_1.b, 74227u, 48704u, var_1.b)) >> (_wgslsmith_mult_vec4_u32(~(~vec4<u32>(4294967295u, 9143u, 23521u, 21482u)), vec4<u32>(var_1.b, var_1.b, ~0u, ~var_1.b)) % vec4<u32>(32u)));
    let var_3 = Struct_2(var_2.wzz, var_0.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1981f, _wgslsmith_f_op_f32(f32(-1f) * -1531f), _wgslsmith_f_op_f32(f32(-1f) * -1280f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(322f)), _wgslsmith_f_op_f32(f32(-1f) * -433f), _wgslsmith_f_op_f32(sign(287f))))));
    let var_4 = Struct_3(var_2.wwz ^ _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(1u, 5587u, 35044u)), ~var_2.xzw), ~min(var_3.a, vec3<u32>(4294967295u, 0u, var_2.x))));
    let var_5 = Struct_4(Struct_3(firstTrailingBit(var_3.a)), ~abs(_wgslsmith_mod_u32(func_2(u_input.a), 4294967295u)));
    global0 = array<vec3<f32>, 7>();
    let var_6 = _wgslsmith_mult_vec2_i32(var_1.a.xx, max(select(vec2<i32>(u_input.a, ~(-1i)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -55405i, var_1.d), var_1.a), _wgslsmith_dot_vec4_i32(vec4<i32>(-97592i, u_input.a, -859i, 46216i), global1[_wgslsmith_index_u32(4294967295u, 22u)])), u_input.a < _wgslsmith_sub_i32(var_1.c, -32964i)), abs(-(var_1.a.zz & vec2<i32>(1i, 6390i)))));
    var var_7 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(var_3.c.x, var_3.c.x)), -1377f, _wgslsmith_div_f32(1156f, var_3.c.x)) - global0[_wgslsmith_index_u32(0u, 7u)]))) + _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 1u), 7u)]));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(0u, _wgslsmith_add_u32(_wgslsmith_add_u32(1u, 1u), var_1.b), 0u), -303f, var_3.a.x, -1228f);
}

