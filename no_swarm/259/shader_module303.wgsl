struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 21>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> bool {
    var var_0 = u_input.c.yy;
    var_0 = -_wgslsmith_add_vec2_i32(~vec2<i32>(_wgslsmith_sub_i32(arg_1.c, arg_0.c), 13082i), ~u_input.c.zx);
    var var_1 = u_input.a.x;
    var var_2 = global0[_wgslsmith_index_u32(4294967295u, 21u)];
    let var_3 = _wgslsmith_f_op_vec2_f32(round(arg_0.d.yw));
    return arg_1.b;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<u32>) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-724f - _wgslsmith_f_op_f32(step(991f, 279f))) + -277f))), -1279f));
    global0 = array<vec3<bool>, 21>();
    var var_1 = ~reverseBits(arg_0.x);
    var var_2 = ~58905u;
    var var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(234f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(454f - 1141f)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(178f, -1642f), 1111f)))), -998f, true));
    return select(!vec3<bool>(false, true, func_3(Struct_2(Struct_1(vec3<bool>(true, false, true), 890f), true, 2147483647i, vec4<f32>(-591f, -336f, 115f, -550f)), Struct_2(Struct_1(global0[_wgslsmith_index_u32(1u, 21u)], -1000f), false, u_input.c.x, vec4<f32>(761f, 1269f, 446f, -142f)))), vec3<bool>(!(!all(vec3<bool>(false, false, true))), !all(vec4<bool>(false, false, true, false)), true), select(!select(!global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0.x, arg_1.x), 21u)], vec3<bool>(false, true, false)), vec3<bool>(true, true, true), global0[_wgslsmith_index_u32(abs(~(~122849u)), 21u)]));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: u32, arg_3: Struct_2) -> Struct_1 {
    let var_0 = select(func_2(_wgslsmith_mult_vec4_u32(vec4<u32>(16537u, 4294967295u, 0u, u_input.d), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_2, 0u, arg_2, arg_2), u_input.b)) >> (u_input.b % vec4<u32>(32u)), ~vec3<u32>(firstTrailingBit(0u), ~arg_1, u_input.b.x)), !arg_3.a.a, !arg_3.a.a.x);
    var var_1 = _wgslsmith_dot_vec2_u32(u_input.a, u_input.b.yw);
    global0 = array<vec3<bool>, 21>();
    var_1 = ~(countOneBits(1u) >> (u_input.a.x % 32u));
    var var_2 = arg_3;
    return var_2.a;
}

fn func_4(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_2, arg_3: Struct_1) -> bool {
    return arg_3.a.x;
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = !vec2<bool>(true, arg_1 & (_wgslsmith_div_u32(16830u, 1u) < ~u_input.a.x));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2.x * arg_2.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1958f, arg_0.d.x))))), 152f, _wgslsmith_f_op_f32(select(arg_2.x, _wgslsmith_f_op_f32(max(arg_0.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(-arg_0.a.b)))), all(vec4<bool>(true, true, arg_0.c > -8577i, true)))));
    let var_2 = ~firstTrailingBit(~countOneBits(_wgslsmith_mod_vec3_u32(u_input.b.zyz, u_input.b.wwx)));
    var var_3 = (~(vec4<i32>(-1i) * -vec4<i32>(-1i, u_input.c.x, 2331i, 1i)) << (max(u_input.b, u_input.b >> (u_input.b % vec4<u32>(32u))) % vec4<u32>(32u))) | ~_wgslsmith_div_vec4_i32(vec4<i32>(~u_input.c.x, -u_input.c.x, abs(u_input.c.x), u_input.c.x), reverseBits(select(vec4<i32>(arg_0.c, 2040i, -15687i, -1i), vec4<i32>(arg_0.c, arg_0.c, 0i, -33203i), vec4<bool>(arg_1, arg_1, false, true))));
    var var_4 = ~reverseBits(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a, var_2.xx), _wgslsmith_mult_vec2_u32(u_input.b.yx, vec2<u32>(8486u, 0u))) >> (var_2.xz % vec2<u32>(32u)));
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 21>();
    global0 = array<vec3<bool>, 21>();
    let var_0 = ~max(vec4<i32>(countOneBits(i32(-1i) * -2915i), u_input.c.x, ~_wgslsmith_mod_i32(u_input.c.x, 21960i), abs(0i)), -vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 0i, -4861i), vec3<i32>(u_input.c.x, -2147483647i, u_input.c.x)), _wgslsmith_add_i32(u_input.c.x, 0i), i32(-1i) * -20107i, u_input.c.x | u_input.c.x));
    global0 = array<vec3<bool>, 21>();
    global0 = array<vec3<bool>, 21>();
    global0 = array<vec3<bool>, 21>();
    var var_1 = Struct_2(func_5(Struct_2(Struct_1(global0[_wgslsmith_index_u32(u_input.d ^ u_input.b.x, 21u)], _wgslsmith_f_op_f32(-469f - 503f)), false, -17847i, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(466f, -640f, -518f, 908f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -349f, 702f, 1122f) + vec4<f32>(-1181f, 1232f, -1000f, -1280f)))), func_4(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(0i, u_input.c.x, var_0.x, var_0.x), var_0), -vec4<i32>(-2147483647i, 8036i, var_0.x, u_input.c.x)), -1000f, Struct_2(func_1(u_input.c.x, 13844u, u_input.d, Struct_2(Struct_1(global0[_wgslsmith_index_u32(38833u, 21u)], -1324f), true, u_input.c.x, vec4<f32>(-448f, -514f, -2696f, 371f))), true, ~1i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(428f, 487f, -899f, 264f))), Struct_1(func_1(-58660i, u_input.d, u_input.b.x, Struct_2(Struct_1(global0[_wgslsmith_index_u32(u_input.d, 21u)], -1771f), true, -24166i, vec4<f32>(1000f, 173f, -612f, -684f))).a, _wgslsmith_f_op_f32(f32(-1f) * -1206f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-945f, 557f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(494f, 895f))))), any(vec2<bool>(_wgslsmith_add_u32(u_input.a.x, 20922u) < _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), vec2<u32>(1u, u_input.b.x)), !any(vec2<bool>(false, false)))), var_0.x, vec4<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-399f * _wgslsmith_f_op_f32(1000f + 645f)) + _wgslsmith_f_op_f32(780f - 1f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-454f - _wgslsmith_f_op_f32(-845f * 299f)), -199f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1176f + _wgslsmith_f_op_f32(-172f - 500f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(326f - -453f))))));
    var_1 = Struct_2(Struct_1(vec3<bool>(true, true, false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-303f - var_1.a.b) * var_1.d.x) - 1000f)), var_1.a.a.x, -(-17410i & u_input.c.x), var_1.d);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1i) * -vec4<i32>(var_0.x, _wgslsmith_dot_vec4_i32(var_0, var_0), -37298i, -var_0.x), vec3<u32>(16923u, _wgslsmith_add_u32(~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.a.x, u_input.a.x), u_input.b.xwy)), u_input.b.x) << (_wgslsmith_mult_vec3_u32(abs(_wgslsmith_add_vec3_u32(u_input.b.wxy, vec3<u32>(u_input.b.x, u_input.b.x, 44774u))), ~u_input.b.yzx) % vec3<u32>(32u)), ~abs(firstTrailingBit(u_input.b)));
}

