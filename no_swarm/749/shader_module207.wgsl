struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 10>;

var<private> global1: array<vec4<f32>, 15> = array<vec4<f32>, 15>(vec4<f32>(1138f, 1403f, 443f, -152f), vec4<f32>(176f, -903f, -1384f, -339f), vec4<f32>(-174f, -126f, 1000f, 2414f), vec4<f32>(420f, 448f, 878f, -704f), vec4<f32>(-784f, 626f, 767f, 1670f), vec4<f32>(-500f, 1766f, 1280f, 1499f), vec4<f32>(112f, -817f, -1098f, 1311f), vec4<f32>(-1173f, 332f, 1063f, 198f), vec4<f32>(-1228f, -168f, 144f, 922f), vec4<f32>(171f, 944f, -651f, 1508f), vec4<f32>(380f, -1456f, 967f, 160f), vec4<f32>(1000f, -1657f, 1102f, 389f), vec4<f32>(1000f, -288f, -1051f, -1218f), vec4<f32>(1330f, 1366f, 638f, -349f), vec4<f32>(318f, -1535f, -208f, 551f));

var<private> global2: array<vec4<f32>, 21>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2, arg_3: vec2<i32>) -> i32 {
    global1 = array<vec4<f32>, 15>();
    let var_0 = !((all(!vec2<bool>(arg_2.a.c, false)) & (select(-1i, arg_2.a.b, arg_0.a.c) < _wgslsmith_dot_vec2_i32(vec2<i32>(arg_3.x, 45827i), arg_3))) & true);
    let var_1 = _wgslsmith_mod_u32(4294967295u, 8407u) & _wgslsmith_add_u32(arg_1, arg_1);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * 1232f));
    let var_3 = arg_2.a;
    return _wgslsmith_sub_i32(var_3.b, _wgslsmith_div_i32(countOneBits(-_wgslsmith_add_i32(arg_2.a.b, arg_0.a.b)), arg_2.a.b << (var_1 % 32u)));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: i32) -> Struct_2 {
    global0 = array<i32, 10>();
    var var_0 = _wgslsmith_mult_i32(arg_1.a.b, func_3(Struct_2(Struct_1(arg_1.a.a, global0[_wgslsmith_index_u32(44555u, 10u)], arg_1.a.c)), ~u_input.b, arg_1, vec2<i32>(-1i, arg_1.a.b))) ^ arg_2.x;
    global0 = array<i32, 10>();
    global1 = array<vec4<f32>, 15>();
    var var_1 = Struct_1(~arg_1.a.a >> (vec4<u32>(~(u_input.b ^ arg_1.a.a.x), u_input.b, arg_1.a.a.x, min(select(89267u, u_input.b, true), ~18203u)) % vec4<u32>(32u)), -2147483647i, (arg_1.a.a.x == countOneBits(u_input.b)) || (_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(1u, 10u)] << (u_input.b % 32u), max(30081i, arg_0.x)) >= ~arg_1.a.b));
    return arg_1;
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> Struct_2 {
    global2 = array<vec4<f32>, 21>();
    let var_0 = -2147483647i;
    let var_1 = Struct_1(~arg_1.a.a, 1i, true);
    var var_2 = ~(i32(-1i) * -((global0[_wgslsmith_index_u32(arg_1.a.a.x, 10u)] << (1u % 32u)) << ((arg_1.a.a.x >> (u_input.b % 32u)) % 32u)));
    global1 = array<vec4<f32>, 15>();
    return func_2(countOneBits(-(vec4<i32>(var_0, -2147483647i, arg_1.a.b, 0i) >> ((arg_1.a.a | vec4<u32>(arg_1.a.a.x, 36820u, var_1.a.x, arg_1.a.a.x)) % vec4<u32>(32u)))), func_2(max(-(~vec4<i32>(-17981i, var_1.b, 41505i, var_1.b)), ~vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 10u)], var_1.b, 2147483647i, var_1.b)), Struct_2(Struct_1(vec4<u32>(53452u, 0u, var_1.a.x, 1121u), var_1.b << (71366u % 32u), false & arg_1.a.c)), vec4<i32>(firstLeadingBit(var_1.b | 2147483647i), ~1i, var_1.b, 28279i), ~firstTrailingBit(var_1.b) ^ -_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b, -57452i, u_input.a), vec3<i32>(global0[_wgslsmith_index_u32(var_1.a.x, 10u)], var_1.b, -2147483647i))), select(-(~abs(vec4<i32>(arg_1.a.b, 4109i, u_input.a, 1i))), -(~(-vec4<i32>(0i, -1i, 1i, global0[_wgslsmith_index_u32(arg_1.a.a.x, 10u)]))), select(select(vec4<bool>(arg_1.a.c, false, arg_1.a.c, arg_1.a.c), select(vec4<bool>(var_1.c, arg_1.a.c, true, false), vec4<bool>(true, arg_1.a.c, arg_1.a.c, arg_1.a.c), vec4<bool>(false, arg_1.a.c, arg_1.a.c, true)), !vec4<bool>(var_1.c, arg_1.a.c, false, arg_1.a.c)), select(!vec4<bool>(var_1.c, var_1.c, var_1.c, var_1.c), select(vec4<bool>(false, arg_1.a.c, var_1.c, arg_1.a.c), vec4<bool>(false, var_1.c, var_1.c, false), vec4<bool>(arg_1.a.c, false, var_1.c, arg_1.a.c)), select(vec4<bool>(false, var_1.c, false, arg_1.a.c), vec4<bool>(var_1.c, arg_1.a.c, var_1.c, var_1.c), false)), select(vec4<bool>(var_1.c, false, false, true), select(vec4<bool>(true, true, var_1.c, var_1.c), vec4<bool>(var_1.c, false, false, arg_1.a.c), vec4<bool>(false, arg_1.a.c, false, arg_1.a.c)), select(vec4<bool>(arg_1.a.c, true, var_1.c, arg_1.a.c), vec4<bool>(var_1.c, false, true, true), true)))), -global0[_wgslsmith_index_u32(var_1.a.x, 10u)]);
}

fn func_1() -> Struct_1 {
    global1 = array<vec4<f32>, 15>();
    var var_0 = all(vec2<bool>(!(!any(vec3<bool>(true, false, true))), true));
    global2 = array<vec4<f32>, 21>();
    let var_1 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2166f))), func_2(vec4<i32>(u_input.a, firstLeadingBit(1i), u_input.a, -22214i), Struct_2(Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 50294u, 46973u, u_input.b), vec4<u32>(21738u, u_input.b, 4294967295u, u_input.b)), global0[_wgslsmith_index_u32(4294967295u, 10u)] | 91334i, true)), vec4<i32>(-54572i << (u_input.b % 32u), ~(-2147483647i), 2147483647i, ~global0[_wgslsmith_index_u32(u_input.b, 10u)]), ~_wgslsmith_add_i32(0i, u_input.c.x)));
    global1 = array<vec4<f32>, 15>();
    return Struct_1(var_1.a.a, -2147483647i, any(!select(!vec2<bool>(var_1.a.c, true), select(vec2<bool>(false, var_1.a.c), vec2<bool>(true, false), var_1.a.c), !var_1.a.c)));
}

fn func_5(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_1) -> vec4<f32> {
    var var_0 = _wgslsmith_clamp_u32(arg_2.a.x, 21561u, max(~(~u_input.b) >> (~(~u_input.b) % 32u), 64849u));
    let var_1 = func_2(-(~(~min(vec4<i32>(u_input.c.x, 56184i, 2147483647i, 1i), vec4<i32>(u_input.a, arg_2.b, -2147483647i, arg_2.b)))), Struct_2(arg_2), ~(~(~(-vec4<i32>(u_input.a, u_input.c.x, global0[_wgslsmith_index_u32(0u, 10u)], 74799i)))), 1i);
    var var_2 = Struct_2(Struct_1(~(~reverseBits(vec4<u32>(arg_1, 39571u, 0u, 0u))), global0[_wgslsmith_index_u32(var_1.a.a.x, 10u)], func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-857f, 1171f)) + _wgslsmith_f_op_f32(1963f * -175f)), Struct_2(Struct_1(var_1.a.a, var_1.a.b, var_1.a.c))).a.c));
    let var_3 = arg_2;
    var var_4 = !(!(arg_2.c & func_1().c));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1034f, -1561f, -1694f, 893f) - _wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(u_input.b, 15u)] * vec4<f32>(1342f, 1053f, -101f, -480f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_5(~vec3<u32>(~(u_input.b >> (13391u % 32u)), abs(_wgslsmith_mult_u32(u_input.b, 46149u)), 9788u), 1u, func_1()));
    global0 = array<i32, 10>();
    var var_1 = false;
    var var_2 = true;
    var var_3 = select(!select(vec2<bool>(true, false), select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), true), true), select(!select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false))), select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(false, false), false), select(global0[_wgslsmith_index_u32(115137u, 10u)], 28546i, true) < _wgslsmith_div_i32(22342i, u_input.a)), select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(false, false), func_2(vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 10u)], -2147483647i, 0i, u_input.c.x), Struct_2(Struct_1(vec4<u32>(0u, 4294967295u, u_input.b, 1u), -22343i, true)), vec4<i32>(global0[_wgslsmith_index_u32(29184u, 10u)], global0[_wgslsmith_index_u32(u_input.b, 10u)], 2147483647i, 2147483647i), 16064i).a.c), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)))), !vec2<bool>(!(-1463f <= var_0.x), ~u_input.a > _wgslsmith_div_i32(-21976i, -19506i)));
    let var_4 = var_0.ww;
    let var_5 = 5568i ^ u_input.a;
    var var_6 = _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, u_input.c.x), reverseBits(vec2<i32>(1i, ~(-17799i))));
    let x = u_input.a;
    s_output = StorageBuffer(select(~select(min(u_input.c, vec2<i32>(var_6.x, 1i)), -vec2<i32>(global0[_wgslsmith_index_u32(u_input.b, 10u)], 1i), !vec2<bool>(var_3.x, var_3.x)), select(-_wgslsmith_add_vec2_i32(u_input.c, u_input.c), vec2<i32>(-8023i, 1i), !(var_3.x & var_3.x)), func_1().c && true), ~(~firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b, 6986u, u_input.b), vec4<u32>(u_input.b, u_input.b, 0u, 0u)))), ~(~func_4(var_0.x, Struct_2(Struct_1(vec4<u32>(1u, u_input.b, 0u, u_input.b), 90747i, var_3.x))).a.a.ww & (vec2<u32>(u_input.b, u_input.b) << (abs(vec2<u32>(u_input.b, u_input.b)) % vec2<u32>(32u)))), ~(~4294967295u));
}

