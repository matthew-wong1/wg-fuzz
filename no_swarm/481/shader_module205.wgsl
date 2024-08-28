struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
    c: u32,
    d: vec3<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(20912u, 4294967295u, 11353u, 1u);

var<private> global1: bool = true;

var<private> global2: array<Struct_2, 22>;

var<private> global3: array<vec4<f32>, 30> = array<vec4<f32>, 30>(vec4<f32>(-2010f, -1000f, -1447f, 1635f), vec4<f32>(-1000f, -1344f, 976f, -1641f), vec4<f32>(1419f, -554f, -1919f, 1000f), vec4<f32>(-1302f, -143f, -287f, -397f), vec4<f32>(570f, 193f, 302f, 1000f), vec4<f32>(506f, 2124f, -333f, 516f), vec4<f32>(409f, -1966f, -402f, 1314f), vec4<f32>(502f, 564f, 415f, -703f), vec4<f32>(1371f, 924f, -462f, -211f), vec4<f32>(670f, -139f, -358f, 1087f), vec4<f32>(1323f, 1027f, -1646f, 1244f), vec4<f32>(-485f, -436f, 636f, 2114f), vec4<f32>(1000f, 397f, -1919f, 1195f), vec4<f32>(895f, -1947f, -1972f, 1000f), vec4<f32>(-553f, 550f, 406f, 212f), vec4<f32>(-1766f, -920f, -1000f, 1306f), vec4<f32>(964f, -831f, 398f, 342f), vec4<f32>(708f, -2180f, -725f, -900f), vec4<f32>(1498f, -423f, -764f, -352f), vec4<f32>(-1921f, -529f, 113f, -728f), vec4<f32>(1227f, -143f, -791f, 808f), vec4<f32>(-2118f, 916f, -222f, -1000f), vec4<f32>(464f, -1000f, -2386f, -1000f), vec4<f32>(-538f, -380f, 566f, 1367f), vec4<f32>(1875f, 829f, -326f, -941f), vec4<f32>(352f, 758f, -680f, -652f), vec4<f32>(186f, -2047f, -1062f, -780f), vec4<f32>(1285f, -1459f, 2079f, -1143f), vec4<f32>(-1537f, -1693f, 753f, -598f), vec4<f32>(-101f, 820f, -849f, 1310f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> f32 {
    var var_0 = 4294967295u & _wgslsmith_dot_vec3_u32(select(global0.yyw, vec3<u32>(abs(u_input.a.x), _wgslsmith_div_u32(4294967295u, 1u), global0.x | global0.x), vec3<bool>(false, true, true)), ~_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(u_input.a.xyy, vec3<u32>(global0.x, global0.x, u_input.a.x)), ~vec3<u32>(1u, 83582u, 1u)));
    global0 = select(~select(firstTrailingBit(vec4<u32>(u_input.b, u_input.b, 81994u, global0.x)), (u_input.a | vec4<u32>(4294967295u, global0.x, global0.x, u_input.b)) & vec4<u32>(1u, 40797u, u_input.a.x, u_input.b), vec4<bool>(all(vec2<bool>(false, false)), true, true, true)), vec4<u32>(4550u, ~u_input.b, 1u, 34123u ^ ~global0.x), (true | ((587u < u_input.a.x) | (u_input.c <= -2147483647i))) && !(!any(vec3<bool>(true, true, true))));
    global2 = array<Struct_2, 22>();
    global0 = vec4<u32>(reverseBits(u_input.b), ~((_wgslsmith_mod_u32(global0.x, 4294967295u) | 67919u) | 22214u), ~(~_wgslsmith_mod_u32(u_input.b, u_input.b) >> (firstLeadingBit(6358u | u_input.b) % 32u)), _wgslsmith_mod_u32(global0.x, ~(~u_input.a.x)));
    let var_1 = global2[_wgslsmith_index_u32(28723u, 22u)];
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(-523f, 1f) + -1922f);
}

fn func_2(arg_0: u32, arg_1: bool) -> Struct_3 {
    global2 = array<Struct_2, 22>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(ceil(-328f)), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-1903f))))));
    var var_1 = false;
    return Struct_3(vec4<bool>(arg_1, select(true, any(vec2<bool>(true, arg_1)), arg_1) && all(select(vec2<bool>(false, arg_1), vec2<bool>(false, true), vec2<bool>(arg_1, false))), arg_1, true), ~firstLeadingBit(select(u_input.b, 0u, true)), ~max(min(27657u, arg_0) ^ (4294967295u << (arg_0 % 32u)), u_input.b), !(!(!vec3<bool>(arg_1, true, arg_1))), Struct_1((-212i < u_input.c) || (~global0.x > _wgslsmith_add_u32(0u, u_input.a.x)), -(~(u_input.c >> (global0.x % 32u)))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> bool {
    var var_0 = -1i;
    var_0 = 0i;
    var var_1 = func_2(~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(global0.zx, vec2<u32>(global0.x, 56514u)), ~u_input.a.zz), false);
    let var_2 = Struct_2(Struct_1(false, -(~reverseBits(12129i))), vec2<bool>(false, all(vec2<bool>(arg_1.b.x, arg_0.a)) & any(var_1.d)));
    return all(!vec3<bool>(false, _wgslsmith_clamp_u32(1u, 36960u, 1u) != select(30912u, u_input.a.x, false), true));
}

fn func_4(arg_0: vec3<bool>, arg_1: bool, arg_2: bool) -> bool {
    let var_0 = u_input.a.ywz;
    var var_1 = arg_0;
    var var_2 = select(vec2<bool>(!arg_0.x, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, global0.x, 14529u, var_0.x), vec4<u32>(15316u, 4294967295u, 1u, global0.x)), ~vec4<u32>(global0.x, u_input.b, global0.x, 75439u)) != 19839u), vec2<bool>(!(!var_1.x), ~min(84889u, u_input.b) <= _wgslsmith_sub_u32(var_0.x, var_0.x)), true);
    global2 = array<Struct_2, 22>();
    let var_3 = any(vec2<bool>(true, arg_1));
    return !arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec3<i32>(_wgslsmith_mod_i32(-u_input.c, -7403i) & u_input.c, 9997i, ~(select(u_input.c, u_input.c, true) >> (~6884u % 32u))), vec3<i32>(u_input.c, u_input.c, min(u_input.c, -77825i)), vec3<bool>(true, func_4(vec3<bool>(true, true, true), func_1(Struct_1(true, u_input.c), global2[_wgslsmith_index_u32(14596u, 22u)], global2[_wgslsmith_index_u32(1u, 22u)]) && true, select(select(false, true, true), true, false)), true));
    global3 = array<vec4<f32>, 30>();
    let var_1 = vec3<i32>(u_input.c, u_input.c, 13122i);
    var var_2 = ~(global0.zx | u_input.a.wx);
    var var_3 = func_2(_wgslsmith_div_u32(~_wgslsmith_clamp_u32(var_2.x, 4294967295u, 45218u) ^ min(firstTrailingBit(51123u), var_2.x ^ 1u), firstTrailingBit(u_input.a.x)), func_1(Struct_1(true, min(~u_input.c, u_input.c)), Struct_2(func_2(~0u, false).e, select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global0.yy, min(global0.xx, global0.wz) | ~u_input.a.xw), 22u)]));
    let x = u_input.a;
    s_output = StorageBuffer(778f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(612f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1437f)) - -1498f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -836f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-201f + 597f) * _wgslsmith_f_op_f32(select(-541f, 1000f, false)))))), u_input.a);
}

