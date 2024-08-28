struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec4<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 23> = array<u32, 23>(0u, 54021u, 4294967295u, 0u, 1u, 4294967295u, 1550u, 1u, 52507u, 4294967295u, 0u, 28945u, 20392u, 45155u, 27642u, 1u, 30880u, 29699u, 1u, 4294967295u, 0u, 32021u, 0u);

var<private> global1: f32 = -1077f;

var<private> global2: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(true, 570f, 252f, vec2<u32>(11907u, 0u)), Struct_1(true, 746f, 222f, vec2<u32>(1u, 10452u)), Struct_1(false, 2127f, 2327f, vec2<u32>(15927u, 4294967295u)), Struct_1(false, 417f, -1157f, vec2<u32>(5681u, 23824u)), Struct_1(false, -2159f, -1000f, vec2<u32>(4294967295u, 110139u)), Struct_1(true, 627f, -1878f, vec2<u32>(29039u, 71897u)), Struct_1(false, 195f, 1000f, vec2<u32>(72093u, 0u)), Struct_1(false, -605f, -1017f, vec2<u32>(0u, 1u)), Struct_1(false, -330f, -562f, vec2<u32>(0u, 4294967295u)), Struct_1(false, -422f, -1228f, vec2<u32>(11659u, 76607u)), Struct_1(true, -304f, 1526f, vec2<u32>(15384u, 0u)), Struct_1(false, -1018f, -1217f, vec2<u32>(0u, 30995u)), Struct_1(true, -334f, 1649f, vec2<u32>(93395u, 0u)), Struct_1(false, -1328f, 302f, vec2<u32>(15198u, 107456u)), Struct_1(true, -699f, 404f, vec2<u32>(0u, 0u)), Struct_1(false, -495f, -1000f, vec2<u32>(0u, 7029u)), Struct_1(false, 1000f, 1000f, vec2<u32>(4294967295u, 20771u)), Struct_1(true, 362f, 503f, vec2<u32>(4294967295u, 3557u)), Struct_1(false, 257f, 335f, vec2<u32>(19537u, 1u)), Struct_1(true, 1271f, -920f, vec2<u32>(1u, 40100u)), Struct_1(false, 178f, 115f, vec2<u32>(4294967295u, 48876u)), Struct_1(true, 882f, 304f, vec2<u32>(29822u, 1u)), Struct_1(true, -498f, -1651f, vec2<u32>(76003u, 26130u)), Struct_1(true, -131f, -1549f, vec2<u32>(42736u, 4294967295u)), Struct_1(false, -358f, -1000f, vec2<u32>(90464u, 85057u)));

var<private> global3: array<u32, 14> = array<u32, 14>(76559u, 20993u, 0u, 4294967295u, 4294967295u, 16436u, 4294967295u, 1u, 4294967295u, 73853u, 2722u, 19431u, 57517u, 35788u);

var<private> global4: vec4<f32> = vec4<f32>(-1338f, 1000f, -1000f, -592f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32) -> i32 {
    var var_0 = Struct_1(select(any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true))), any(vec2<bool>(true, true)), select(true, !(7586i != arg_0), false)), 590f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(177f, global4.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -768f), _wgslsmith_f_op_f32(round(-357f)))))), !(!all(vec4<bool>(true, false, false, true))))), _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(~91599u, 23u)], _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 23u)], u_input.b), u_input.a)), ~abs(u_input.a.xw)), vec2<u32>(select(0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 23u)], 23u)], 14u)] & 10975u, 14u)], false), reverseBits(abs(68906u))), u_input.d.zz));
    let var_1 = Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.c)))), -1000f, ~(~countOneBits(~vec2<u32>(global0[_wgslsmith_index_u32(89605u, 23u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(46383u, 23u)], 23u)]))));
    let var_2 = var_1.a;
    let var_3 = _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~(~u_input.a), min(u_input.a, vec4<u32>(26367u, 1u, var_0.d.x, 1u)) >> (u_input.a % vec4<u32>(32u))) & _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(max(u_input.d.xy, var_0.d), vec2<u32>(32373u, var_1.d.x)), vec2<u32>(1u, 39070u)), abs(min(var_1.d.x, ~(u_input.c ^ 6254u))));
    global3 = array<u32, 14>();
    return arg_0;
}

fn func_2(arg_0: Struct_1) -> u32 {
    var var_0 = false;
    var var_1 = func_3(abs(countOneBits(_wgslsmith_div_i32(2147483647i, _wgslsmith_sub_i32(-29870i, 3599i)))));
    var var_2 = Struct_1(false, arg_0.b, global4.x, vec2<u32>(~46854u, _wgslsmith_dot_vec2_u32(abs(~arg_0.d), vec2<u32>(0u, ~101030u))));
    var var_3 = false;
    global0 = array<u32, 23>();
    return ~abs(1u);
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> u32 {
    let var_0 = abs(func_2(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(u_input.b, 23u)], ~_wgslsmith_add_u32(u_input.d.x, global0[_wgslsmith_index_u32(4294967295u, 23u)])), 25u)]));
    global0 = array<u32, 23>();
    var var_1 = global2[_wgslsmith_index_u32(arg_1.d.x, 25u)];
    let var_2 = global2[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(41846u, 23u)], 25u)];
    global0 = array<u32, 23>();
    return abs(var_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(true, _wgslsmith_f_op_f32(-1316f + 639f), global4.x, _wgslsmith_sub_vec2_u32(~(_wgslsmith_sub_vec2_u32(vec2<u32>(40157u, 4294967295u), vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 23u)], 1u)) | vec2<u32>(1u, 1u)), firstLeadingBit(~(u_input.a.wz & u_input.d.zy))));
    let var_1 = ~(~select(1u, u_input.d.x, var_0.a) | u_input.b) ^ 1u;
    var var_2 = vec3<i32>(1i, 10030i & (abs(-32080i) & _wgslsmith_clamp_i32(_wgslsmith_sub_i32(0i, 13569i), ~1i, 1i)), reverseBits(61569i));
    var var_3 = global4.x;
    var var_4 = vec3<u32>(global0[_wgslsmith_index_u32(1u << (~_wgslsmith_sub_u32(func_1(1000f, global2[_wgslsmith_index_u32(u_input.b, 25u)]), 1u) % 32u), 23u)], 1u, _wgslsmith_mult_u32(reverseBits(1u), global3[_wgslsmith_index_u32(24086u, 14u)]));
    let var_5 = global2[_wgslsmith_index_u32(12012u, 25u)];
    var var_6 = 1u;
    let var_7 = vec4<i32>(-35737i, 2147483647i, _wgslsmith_sub_i32(var_2.x, _wgslsmith_sub_i32(~(var_2.x | var_2.x), ~(~var_2.x))), -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(min(9960i, _wgslsmith_clamp_i32(-5808i, 2147483647i, var_2.x) ^ 2147483647i), _wgslsmith_clamp_vec3_u32(vec3<u32>(~(var_1 & global3[_wgslsmith_index_u32(37074u, 14u)]), 0u, func_2(Struct_1(false, 1842f, 1000f, vec2<u32>(1u, 4294967295u)))), vec3<u32>(firstTrailingBit(var_4.x), 70075u, var_1), _wgslsmith_div_vec3_u32(~u_input.a.xzy, _wgslsmith_clamp_vec3_u32(~u_input.a.xxx, firstLeadingBit(vec3<u32>(u_input.c, u_input.d.x, var_1)), vec3<u32>(4294967295u, global3[_wgslsmith_index_u32(36961u, 14u)], global3[_wgslsmith_index_u32(8703u, 14u)])))), abs(~_wgslsmith_add_vec2_i32(var_2.zz, -vec2<i32>(var_7.x, 17664i))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(floor(global4.x)), _wgslsmith_f_op_f32(exp2(var_5.b)), var_5.c, _wgslsmith_f_op_f32(global4.x * 2097f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global4.x, var_5.b, global4.x, 1243f), vec4<f32>(426f, -1237f, 570f, 282f)))))))), global4.xxz);
}

