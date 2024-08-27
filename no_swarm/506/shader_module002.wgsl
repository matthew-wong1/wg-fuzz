struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec2<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2> = array<bool, 2>(true, false);

var<private> global1: i32;

var<private> global2: array<vec4<f32>, 22> = array<vec4<f32>, 22>(vec4<f32>(1669f, 1259f, -146f, -1802f), vec4<f32>(-1211f, -1598f, -1000f, 516f), vec4<f32>(-1463f, -936f, 452f, 360f), vec4<f32>(1162f, -1000f, -127f, 2148f), vec4<f32>(-595f, 428f, 1218f, 1072f), vec4<f32>(705f, -1000f, 1000f, -250f), vec4<f32>(-913f, 1000f, -415f, -484f), vec4<f32>(1000f, 492f, 425f, -686f), vec4<f32>(1301f, -1000f, -656f, 430f), vec4<f32>(-849f, -926f, -374f, 631f), vec4<f32>(-719f, -774f, 329f, 610f), vec4<f32>(-533f, 652f, 425f, 1861f), vec4<f32>(1112f, -683f, 2682f, 666f), vec4<f32>(-797f, 754f, 1429f, -160f), vec4<f32>(725f, -1806f, 723f, -785f), vec4<f32>(1218f, -1000f, -322f, 760f), vec4<f32>(-1274f, 1535f, -1000f, -939f), vec4<f32>(-413f, -484f, -292f, -1318f), vec4<f32>(-484f, -1425f, -1351f, 374f), vec4<f32>(-1380f, 252f, 1662f, -160f), vec4<f32>(-482f, -1000f, 890f, -231f), vec4<f32>(-1041f, -274f, -570f, -724f));

var<private> global3: array<Struct_1, 21>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: i32) -> bool {
    let var_0 = Struct_1(13302i, !(!global0[_wgslsmith_index_u32(1u, 2u)]), arg_1.x);
    global3 = array<Struct_1, 21>();
    global1 = (~1i >> (_wgslsmith_mult_u32(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, u_input.c.x), vec4<u32>(u_input.b, 0u, 40956u, 1u))), _wgslsmith_sub_u32(u_input.c.x & u_input.c.x, _wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, 23111u))) % 32u)) << (abs(_wgslsmith_div_u32(1u, ~_wgslsmith_sub_u32(u_input.b, u_input.b))) % 32u);
    let var_1 = -791f;
    global2 = array<vec4<f32>, 22>();
    return _wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(f32(-1f) * -331f)) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.b.x)) * _wgslsmith_f_op_f32(step(-1820f, _wgslsmith_f_op_f32(-var_1))));
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> Struct_3 {
    var var_0 = arg_1;
    var var_1 = all(vec4<bool>(!(var_0.b && global0[_wgslsmith_index_u32(49297u, 2u)]), func_3(Struct_2(Struct_1(2147483647i, global0[_wgslsmith_index_u32(u_input.b, 2u)], var_0.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c, var_0.c))), vec4<f32>(_wgslsmith_f_op_f32(1122f + -137f), _wgslsmith_div_f32(497f, -508f), -1000f, _wgslsmith_f_op_f32(-var_0.c)), 0i), all(select(select(vec4<bool>(false, false, arg_1.b, false), vec4<bool>(arg_1.b, arg_1.b, false, true), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 2u)], var_0.b, var_0.b, var_0.b)), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 2u)], false, global0[_wgslsmith_index_u32(arg_0, 2u)], false), vec4<bool>(global0[_wgslsmith_index_u32(93438u, 2u)], global0[_wgslsmith_index_u32(arg_0, 2u)], true, global0[_wgslsmith_index_u32(98984u, 2u)]), vec4<bool>(true, var_0.b, global0[_wgslsmith_index_u32(u_input.c.x, 2u)], true)), select(vec4<bool>(arg_1.b, var_0.b, var_0.b, true), vec4<bool>(global0[_wgslsmith_index_u32(24702u, 2u)], true, true, false), arg_1.b))), true));
    let var_2 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(-27367i ^ (_wgslsmith_add_i32(arg_1.a, u_input.a) >> (u_input.c.x % 32u)), var_0.a), ~u_input.a);
    return Struct_3(Struct_2(Struct_1(6608i, false, var_0.c), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1058f, 933f)) + vec2<f32>(_wgslsmith_f_op_f32(exp2(var_0.c)), -432f))), min(_wgslsmith_mult_vec3_i32(-_wgslsmith_add_vec3_i32(vec3<i32>(var_0.a, 0i, var_0.a), vec3<i32>(u_input.a, -1i, var_0.a)), _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_2, arg_1.a, u_input.a), vec3<i32>(0i, u_input.a, 60249i)), vec3<i32>(u_input.a, 0i, arg_1.a))), countOneBits(vec3<i32>(2147483647i, _wgslsmith_mult_i32(2147483647i, var_2), 0i))));
}

fn func_1() -> vec3<bool> {
    var var_0 = func_2(_wgslsmith_dot_vec3_u32(~firstTrailingBit(max(vec3<u32>(u_input.b, u_input.c.x, 4294967295u), vec3<u32>(0u, u_input.b, 0u))), ~u_input.c), Struct_1(min(_wgslsmith_mult_i32(1i, u_input.a), -2147483647i) << (~_wgslsmith_clamp_u32(u_input.c.x, 0u, u_input.b) % 32u), global0[_wgslsmith_index_u32(u_input.c.x, 2u)], -836f));
    var_0 = func_2(_wgslsmith_div_u32(1u, min(33756u >> (~u_input.c.x % 32u), 0u)), Struct_1(1i, global0[_wgslsmith_index_u32(u_input.b, 2u)] && false, _wgslsmith_f_op_f32(-var_0.a.b.x)));
    global0 = array<bool, 2>();
    let var_1 = func_2(~select(1u, min(~26776u, _wgslsmith_mod_u32(u_input.b, 84367u)), true), global3[_wgslsmith_index_u32(~min(reverseBits(u_input.c.x), ~_wgslsmith_clamp_u32(67423u, u_input.b, 27137u)), 21u)]).a.a;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1272f), var_1.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -108f), -444f))), var_0.a.b.x);
    return !vec3<bool>(!(var_1.b || global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(24956u, u_input.b, 4294967295u), 2u)]), global0[_wgslsmith_index_u32(u_input.b, 2u)], select(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 1u >> (u_input.c.x % 32u)), 2u)], var_1.b & var_0.a.a.b, false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(false, true, true);
    let var_1 = select(func_1(), var_0, !global0[_wgslsmith_index_u32(~(~4294967295u), 2u)]);
    let var_2 = vec2<i32>(min(abs(u_input.a), _wgslsmith_clamp_i32(reverseBits(-2147483647i), -11129i, 1i)), _wgslsmith_dot_vec3_i32((vec3<i32>(u_input.a, 2147483647i, 2147483647i) & vec3<i32>(-9502i, u_input.a, u_input.a)) >> (~u_input.c % vec3<u32>(32u)), -(~vec3<i32>(10970i, u_input.a, 5173i)))) >> ((u_input.c.zx ^ vec2<u32>(0u, countOneBits(73758u))) % vec2<u32>(32u));
    var var_3 = _wgslsmith_div_u32(~select(_wgslsmith_add_u32(u_input.b, ~u_input.c.x), u_input.b, var_0.x), u_input.c.x);
    var var_4 = ~(~(~(~_wgslsmith_clamp_u32(u_input.c.x, 26720u, 0u))));
    var_3 = _wgslsmith_dot_vec3_u32(vec3<u32>(abs(36683u), 0u, ~firstLeadingBit(~74483u)), abs(u_input.c));
    let var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(-u_input.a, u_input.a), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1753f), _wgslsmith_f_op_f32(1084f + 1864f), -1250f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1709f + 287f) + -616f) + _wgslsmith_f_op_f32(step(-1062f, _wgslsmith_f_op_f32(step(710f, 401f)))))), ~vec2<u32>(u_input.b, 0u), firstLeadingBit(~vec2<i32>(2147483647i, _wgslsmith_mult_i32(u_input.a, 1i))), vec2<i32>(u_input.a, 9973i));
}

