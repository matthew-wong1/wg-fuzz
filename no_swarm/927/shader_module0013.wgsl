struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_1,
    d: vec2<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec2<u32>,
    c: bool,
    d: u32,
}

struct Struct_5 {
    a: i32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(4294967295u, 0u);

var<private> global1: array<vec3<f32>, 18> = array<vec3<f32>, 18>(vec3<f32>(-379f, -410f, 1000f), vec3<f32>(-1000f, -485f, -1080f), vec3<f32>(-979f, -1667f, -247f), vec3<f32>(128f, 1344f, 485f), vec3<f32>(209f, -1088f, -710f), vec3<f32>(-2241f, 352f, 207f), vec3<f32>(975f, -1323f, 310f), vec3<f32>(-1000f, 722f, 1040f), vec3<f32>(-1327f, -2415f, -1214f), vec3<f32>(-598f, 110f, -104f), vec3<f32>(131f, 2865f, -615f), vec3<f32>(121f, 865f, 346f), vec3<f32>(1103f, -1433f, -1195f), vec3<f32>(1434f, 1789f, 749f), vec3<f32>(267f, -222f, -641f), vec3<f32>(428f, -367f, -951f), vec3<f32>(391f, -442f, -1479f), vec3<f32>(1820f, 854f, -658f));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec3<bool>, arg_1: f32, arg_2: vec4<u32>, arg_3: u32) -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2123f, arg_1, -1000f, 697f)) - vec4<f32>(arg_1, -743f, arg_1, arg_1)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, 2073f, -647f) - vec4<f32>(arg_1, -1833f, 377f, 500f)))))), all(!vec4<bool>(true, u_input.b.x < u_input.b.x, arg_1 <= -483f, true)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(457f, _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.a.x)) + -1429f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -467f), _wgslsmith_div_f32(308f, 549f)))), var_0.b);
    let var_2 = !vec4<bool>(var_0.b, false, true & !any(vec4<bool>(var_0.b, true, var_0.b, true)), true);
    let var_3 = Struct_5(-reverseBits(u_input.a), vec3<i32>(abs(_wgslsmith_div_i32(u_input.a, 1i)), u_input.a | max(u_input.a, _wgslsmith_clamp_i32(u_input.a, u_input.a, 2147483647i)), -1i));
    global1 = array<vec3<f32>, 18>();
    return arg_0.x;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = Struct_3(Struct_2(vec2<i32>(1040i, _wgslsmith_mult_i32(u_input.a, u_input.a) >> (u_input.b.x % 32u))), countOneBits(36735i), arg_1, vec2<bool>(all(!(!vec4<bool>(arg_2.b, true, arg_2.b, true))), true), Struct_2(vec2<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.a, -10932i), vec3<i32>(u_input.a, u_input.a, -36561i)), u_input.a), select(0i, -2147483647i, false) << (u_input.b.x % 32u))));
    global0 = ~u_input.b.xz;
    let var_1 = Struct_5(-32251i, vec3<i32>(_wgslsmith_div_i32(countOneBits(21888i), _wgslsmith_div_i32(u_input.a, var_0.b)), -2147483647i, _wgslsmith_sub_i32(-27730i, ~(-260i))) ^ firstLeadingBit(abs(vec3<i32>(var_0.e.a.x, -13807i, u_input.a))));
    global0 = vec2<u32>(global0.x, _wgslsmith_div_u32((_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(global0.x, global0.x, u_input.b.x)) | _wgslsmith_div_u32(u_input.b.x, global0.x)) >> (~0u % 32u), 4294967295u));
    var var_2 = var_0.a;
    return var_0.d;
}

fn func_2() -> vec4<i32> {
    var var_0 = !select(vec2<bool>(true, true), func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(3594f, 979f, -303f, -212f) + vec4<f32>(-1040f, 1000f, -719f, -456f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-308f, 1391f, -401f, 1477f) - vec4<f32>(916f, -1509f, -592f, -1094f))), Struct_1(vec4<f32>(-245f, 1135f, -561f, -1454f), true), Struct_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1590f, 1483f, 277f, 1073f), vec4<f32>(866f, 891f, -1006f, 1000f))), func_3(vec3<bool>(true, true, false), -542f, vec4<u32>(29783u, u_input.b.x, global0.x, global0.x), 10232u))), vec2<bool>(true, func_3(vec3<bool>(true, true, true), _wgslsmith_f_op_f32(-591f - 625f), ~vec4<u32>(global0.x, u_input.b.x, u_input.b.x, 39502u), u_input.b.x)));
    var var_1 = Struct_4(false != var_0.x, countOneBits(u_input.b.xx), true, ~u_input.b.x);
    var_0 = vec2<bool>(!var_1.c, false);
    return countOneBits(firstTrailingBit(vec4<i32>(u_input.a ^ u_input.a, -10580i, -u_input.a, ~u_input.a)) & (_wgslsmith_div_vec4_i32(-vec4<i32>(-7122i, u_input.a, 0i, u_input.a), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -2147483647i, 1i, u_input.a), vec4<i32>(-2147483647i, 20625i, 10498i, u_input.a))) | vec4<i32>(19045i, abs(-55268i), -2147483647i, 37239i)));
}

fn func_5(arg_0: vec3<f32>, arg_1: vec4<i32>) -> bool {
    global1 = array<vec3<f32>, 18>();
    let var_0 = _wgslsmith_f_op_f32(step(-144f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x - -459f), _wgslsmith_f_op_f32(-968f * _wgslsmith_f_op_f32(arg_0.x - arg_0.x))), _wgslsmith_f_op_f32(abs(arg_0.x)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, arg_0.x, arg_0.x)) - vec4<f32>(var_0, -167f, arg_0.x, var_0)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, var_0, var_0, -150f)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-776f, var_0, var_0, var_0)))) * vec4<f32>(var_0, _wgslsmith_div_f32(arg_0.x, var_0), 1399f, 1000f))));
    var var_2 = -12169i;
    let var_3 = arg_1.zwz;
    return select(true, 4294967295u < u_input.b.x, -799f > _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0), _wgslsmith_div_f32(1378f, arg_0.x))));
}

fn func_1(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_2, arg_3: f32) -> i32 {
    var var_0 = func_5(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, arg_3)))), arg_0), -func_2() << (_wgslsmith_mult_vec4_u32(vec4<u32>(~u_input.b.x, ~1u, _wgslsmith_sub_u32(global0.x, 4294967295u), 1u), vec4<u32>(global0.x, countOneBits(u_input.b.x), 41458u, firstTrailingBit(0u))) % vec4<u32>(32u)));
    let var_1 = arg_0.x;
    let var_2 = global0.x;
    global1 = array<vec3<f32>, 18>();
    let var_3 = Struct_3(arg_2, 32338i, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1310f, -265f, arg_3, 1220f), vec4<f32>(-139f, 1198f, arg_0.x, 623f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(123f, 203f, -255f, arg_3)), u_input.b.x > 1u))), select(true, true, any(func_4(vec4<f32>(-607f, -1356f, var_1, 765f), Struct_1(vec4<f32>(arg_3, -404f, var_1, -687f), false), Struct_1(vec4<f32>(arg_0.x, 497f, 3040f, -1211f), true))))), !(!(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)))), arg_2);
    return 39879i;
}

fn func_6(arg_0: vec4<i32>) -> f32 {
    var var_0 = Struct_5(~arg_0.x, _wgslsmith_clamp_vec3_i32(arg_0.xww, ~firstLeadingBit(arg_0.yyz >> (u_input.b % vec3<u32>(32u))), ~firstTrailingBit(-vec3<i32>(-1i, -2147483647i, arg_0.x))));
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-2315f)) + -537f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(883f)))))))));
    var var_2 = ~_wgslsmith_mod_u32(_wgslsmith_sub_u32(20112u, 1u << (_wgslsmith_sub_u32(u_input.b.x, 46390u) % 32u)), 1u);
    var_2 = 1u;
    global1 = array<vec3<f32>, 18>();
    return -2294f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_6(vec4<i32>(func_1(global1[_wgslsmith_index_u32(13449u, 18u)], u_input.a, Struct_2(vec2<i32>(u_input.a, -1i)), -839f), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, 58008i, u_input.a)), 2147483647i, countOneBits(u_input.a)))) + _wgslsmith_f_op_f32(func_6(-(vec4<i32>(1i, 1i, u_input.a, -1i) ^ vec4<i32>(u_input.a, u_input.a, 59109i, u_input.a))))));
    global0 = countOneBits(~reverseBits(u_input.b.yy));
    var var_1 = !(!select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), vec3<bool>(true, false, true)), u_input.b.x != (75980u << (global0.x % 32u))));
    var_1 = !(!select(vec3<bool>(var_1.x, true, true), !vec3<bool>(var_1.x, false, false), (false & var_1.x) && true));
    let var_2 = Struct_4((-43311i | _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 1i, u_input.a, 0i), vec4<i32>(u_input.a, u_input.a, u_input.a, -2147483647i)), abs(u_input.a))) != min(-43846i, func_1(_wgslsmith_div_vec3_f32(global1[_wgslsmith_index_u32(0u, 18u)], global1[_wgslsmith_index_u32(0u, 18u)]), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 0i, -46386i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), Struct_2(vec2<i32>(-1i, -16381i)), var_0)), ~(~u_input.b.zx), false, max(~1789u, 0u));
    var_1 = vec3<bool>(true, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0))))) == _wgslsmith_f_op_f32(floor(var_0)), any(var_1.zz));
    var var_3 = Struct_5(-32736i, -_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-26990i, u_input.a, u_input.a), vec3<i32>(-40393i, u_input.a, 1i)) >> (~u_input.b % vec3<u32>(32u)), vec3<i32>(38693i, func_2().x, 21998i & u_input.a)));
    var_3 = Struct_5(abs(_wgslsmith_div_i32(-1i, min(-u_input.a, min(var_3.a, u_input.a)))), firstLeadingBit(vec3<i32>(_wgslsmith_dot_vec3_i32(var_3.b, var_3.b), ~u_input.a, 1i)));
    let var_4 = global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<i32>(-1i, max(func_2().x, -28128i), reverseBits(countOneBits(-1i)), _wgslsmith_sub_i32(firstLeadingBit(u_input.a), var_3.b.x)), firstTrailingBit(min(select(vec4<i32>(u_input.a, var_3.a, var_3.b.x, var_3.a), vec4<i32>(u_input.a, u_input.a, -7896i, -2147483647i), vec4<bool>(false, false, var_1.x, var_2.c)), ~vec4<i32>(u_input.a, 8588i, u_input.a, -34725i))), !(var_1.x & !var_2.a)), min(_wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(var_2.b.x, 0u)), ~select(vec2<u32>(global0.x, u_input.b.x), var_2.b, false)), _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(countOneBits(var_2.b), var_2.b), max(select(u_input.b.yz, var_2.b, var_2.c), ~u_input.b.xx))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(-vec4<i32>(1i, 1i, 1i, 1i)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 1161f, 534f, 169f)))));
}

