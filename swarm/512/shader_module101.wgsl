struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<f32>,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1>;

var<private> global1: bool = true;

var<private> global2: array<f32, 24> = array<f32, 24>(798f, 994f, 188f, 1000f, -273f, -1857f, 1181f, -325f, -488f, -372f, -1517f, -1234f, -286f, -116f, 2573f, 1745f, -871f, 287f, 479f, 753f, -935f, 1078f, -782f, -497f);

var<private> global3: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(-1i, 100070u, vec3<u32>(0u, 59471u, 10101u)), Struct_1(1i, 21970u, vec3<u32>(51508u, 1u, 13327u)), Struct_1(20953i, 73299u, vec3<u32>(4294967295u, 41462u, 1u)), Struct_1(i32(-2147483648), 4294967295u, vec3<u32>(4294967295u, 1u, 1u)), Struct_1(-5805i, 44224u, vec3<u32>(57493u, 4294967295u, 4294967295u)), Struct_1(16792i, 4294967295u, vec3<u32>(5295u, 0u, 26178u)), Struct_1(1i, 25262u, vec3<u32>(1u, 79977u, 1u)), Struct_1(2147483647i, 113067u, vec3<u32>(1u, 0u, 34859u)), Struct_1(-450i, 16956u, vec3<u32>(4294967295u, 1u, 49558u)), Struct_1(0i, 4294967295u, vec3<u32>(1u, 1u, 1u)), Struct_1(2147483647i, 1u, vec3<u32>(65147u, 4294967295u, 1u)), Struct_1(16969i, 1u, vec3<u32>(1u, 26144u, 64514u)), Struct_1(i32(-2147483648), 59368u, vec3<u32>(4619u, 0u, 0u)), Struct_1(-1i, 4294967295u, vec3<u32>(1u, 0u, 1u)), Struct_1(-422i, 1u, vec3<u32>(1u, 6215u, 88566u)), Struct_1(-6686i, 0u, vec3<u32>(0u, 4294967295u, 24621u)), Struct_1(-4299i, 4294967295u, vec3<u32>(0u, 75086u, 0u)), Struct_1(68303i, 0u, vec3<u32>(0u, 34218u, 6451u)), Struct_1(0i, 4294967295u, vec3<u32>(3865u, 14015u, 0u)), Struct_1(2147483647i, 4294967295u, vec3<u32>(4294967295u, 58454u, 3952u)), Struct_1(2147483647i, 36137u, vec3<u32>(11620u, 43921u, 1u)), Struct_1(-9574i, 80751u, vec3<u32>(0u, 4294967295u, 26846u)), Struct_1(-23997i, 25478u, vec3<u32>(36329u, 1u, 5367u)), Struct_1(-670i, 37226u, vec3<u32>(78412u, 3094u, 0u)), Struct_1(2147483647i, 39468u, vec3<u32>(0u, 4294967295u, 4294967295u)), Struct_1(-1i, 55111u, vec3<u32>(12273u, 24479u, 1u)), Struct_1(i32(-2147483648), 0u, vec3<u32>(4825u, 4294967295u, 1u)), Struct_1(-1i, 4294967295u, vec3<u32>(1u, 25955u, 61967u)), Struct_1(2147483647i, 1u, vec3<u32>(4294967295u, 62099u, 14867u)), Struct_1(0i, 1u, vec3<u32>(0u, 1u, 4294967295u)), Struct_1(32367i, 12588u, vec3<u32>(22836u, 1u, 57534u)));

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1) -> i32 {
    global2 = array<f32, 24>();
    global1 = all(!(!(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), true))));
    let var_0 = Struct_1(~_wgslsmith_div_i32(arg_0.a, ~arg_0.a), firstTrailingBit(24989u), ~reverseBits(min(vec3<u32>(8084u, u_input.d.x, arg_0.c.x), u_input.d.wzw)) & vec3<u32>(firstLeadingBit(~34650u), ~4294967295u, ~arg_0.b));
    global0 = array<Struct_1, 1>();
    global1 = any(vec3<bool>(true, any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), false), all(vec2<bool>(true, true)))), false | all(vec3<bool>(false, true, true))));
    return arg_0.a;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: f32, arg_3: f32) -> Struct_1 {
    var var_0 = !(!(!(!select(vec4<bool>(arg_1.x, false, true, false), vec4<bool>(arg_1.x, true, arg_1.x, true), vec4<bool>(false, true, arg_1.x, arg_1.x)))));
    var var_1 = _wgslsmith_f_op_f32(-1239f + -1221f);
    var var_2 = vec2<i32>(u_input.a, countOneBits(~u_input.b));
    var var_3 = -vec4<i32>(40968i, (var_2.x & (i32(-1i) * -13417i)) | func_3(global0[_wgslsmith_index_u32(11663u, 1u)]), -var_2.x & (1i << (u_input.d.x % 32u)), abs(_wgslsmith_dot_vec4_i32(max(vec4<i32>(771i, 1i, -27180i, var_2.x), vec4<i32>(u_input.a, 41386i, 7233i, u_input.b)), -vec4<i32>(u_input.b, u_input.a, u_input.b, 46690i))));
    let var_4 = Struct_1(var_3.x, ~(~(~1u)), vec3<u32>(firstLeadingBit(~96567u | u_input.c.x), ~((1u ^ u_input.d.x) >> (_wgslsmith_mod_u32(u_input.c.x, 0u) % 32u)), 4294967295u));
    return var_4;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> vec2<bool> {
    global0 = array<Struct_1, 1>();
    var var_0 = func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 24u)], 1000f, 402f), vec3<f32>(583f, global2[_wgslsmith_index_u32(u_input.d.x, 24u)], global2[_wgslsmith_index_u32(arg_0.b, 24u)]))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-520f, 514f, global2[_wgslsmith_index_u32(u_input.d.x, 24u)]) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global2[_wgslsmith_index_u32(arg_0.b, 24u)], global2[_wgslsmith_index_u32(4294967295u, 24u)], 314f), vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 24u)], -334f, 483f)))))), vec2<bool>(any(vec2<bool>(true, false)), ~(i32(-1i) * -2147483647i) < max(_wgslsmith_clamp_i32(arg_0.a, 46554i, 8614i), ~8233i)), global2[_wgslsmith_index_u32(~(~arg_1.b), 24u)], -870f);
    var var_1 = _wgslsmith_add_vec3_i32(-select(countOneBits(countOneBits(vec3<i32>(-4598i, -1i, -2147483647i))), vec3<i32>(_wgslsmith_clamp_i32(arg_0.a, -33277i, u_input.a), arg_1.a, _wgslsmith_clamp_i32(arg_0.a, 54888i, u_input.a)), true == (u_input.c.x <= u_input.c.x)), select(vec3<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(arg_1.a, 26168i), vec2<i32>(var_0.a, u_input.b) << (vec2<u32>(2745u, arg_0.b) % vec2<u32>(32u))), arg_1.a, arg_0.a), vec3<i32>(i32(-1i) * -1i, -4408i & _wgslsmith_mod_i32(var_0.a, var_0.a), abs(~var_0.a)), vec3<bool>(true, true, true)));
    let var_2 = 16524i;
    var var_3 = select(select(any(vec4<bool>(all(vec2<bool>(false, true)), true, any(vec2<bool>(true, true)), true)), false, false), any(vec4<bool>(any(vec2<bool>(false, true)), any(vec3<bool>(true, true, false)), true, any(vec2<bool>(true, false)))) & !(_wgslsmith_f_op_f32(f32(-1f) * -828f) <= _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_0.c.x, 24u)])), global2[_wgslsmith_index_u32(var_0.b, 24u)] == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-136f + global2[_wgslsmith_index_u32(arg_1.b, 24u)]))) + -671f));
    return !select(select(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(true, true), false), any(vec4<bool>(true, true, true, false))), true), vec2<bool>(all(vec3<bool>(true, true, true)), false), vec2<bool>(true, true));
}

fn func_4(arg_0: vec2<bool>, arg_1: f32, arg_2: bool, arg_3: Struct_1) -> u32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(~arg_3.c.x, _wgslsmith_clamp_u32(4294967295u, u_input.d.x, 4294967295u)), firstLeadingBit(min(arg_3.b, u_input.d.x))), 24u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(0u, 24u)], 288f))))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-271f, _wgslsmith_f_op_f32(abs(1000f))))), arg_1);
    global1 = !(any(arg_0) || ((_wgslsmith_f_op_f32(-arg_1) != _wgslsmith_f_op_f32(-arg_1)) & arg_0.x));
    var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -286f))), arg_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2072f), _wgslsmith_f_op_f32(trunc(1813f)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, arg_1, -618f) + vec3<f32>(1000f, 1213f, 830f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, global2[_wgslsmith_index_u32(21923u, 24u)], global2[_wgslsmith_index_u32(4430u, 24u)]), vec3<f32>(1579f, -1000f, var_0.x), vec3<bool>(true, arg_0.x, arg_0.x))), false || arg_0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, arg_1)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, global2[_wgslsmith_index_u32(arg_3.c.x, 24u)])) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -858f, 203f) * vec3<f32>(global2[_wgslsmith_index_u32(31235u, 24u)], arg_1, global2[_wgslsmith_index_u32(u_input.d.x, 24u)]))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x)) - vec3<f32>(arg_1, global2[_wgslsmith_index_u32(arg_3.c.x, 24u)], arg_1)))))));
    return firstLeadingBit(abs(~u_input.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 1>();
    let var_0 = vec4<u32>(u_input.c.x, _wgslsmith_mult_u32(64991u, func_4(!func_1(Struct_1(0i, 0u, vec3<u32>(4294967295u, u_input.d.x, u_input.c.x)), global3[_wgslsmith_index_u32(25815u, 31u)]), 649f, func_1(func_2(vec3<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 24u)], 943f, global2[_wgslsmith_index_u32(87771u, 24u)]), vec2<bool>(true, true), global2[_wgslsmith_index_u32(u_input.d.x, 24u)], 206f), Struct_1(-2147483647i, u_input.d.x, vec3<u32>(1u, 1u, 4294967295u))).x, func_2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1046f, -527f, global2[_wgslsmith_index_u32(1u, 24u)]))), vec2<bool>(false, false), global2[_wgslsmith_index_u32(0u, 24u)], global2[_wgslsmith_index_u32(~73210u, 24u)]))), 0u, u_input.c.x);
    let var_1 = !vec2<bool>(select(false, true, true), true);
    var var_2 = countOneBits(u_input.d.zwy);
    global3 = array<Struct_1, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.x ^ 39064u, _wgslsmith_sub_vec2_u32(vec2<u32>(func_2(vec3<f32>(-269f, global2[_wgslsmith_index_u32(0u, 24u)], 1266f), vec2<bool>(var_1.x, var_1.x), -222f, global2[_wgslsmith_index_u32(11774u, 24u)]).b, ~var_0.x), ~(~var_0.yy)) | firstTrailingBit(vec2<u32>(1u, 1u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(8756u, 24u)], 469f, global2[_wgslsmith_index_u32(43679u, 24u)]))) * vec3<f32>(-3139f, _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(503u, 24u)], global2[_wgslsmith_index_u32(0u, 24u)], true)), _wgslsmith_div_f32(-1704f, global2[_wgslsmith_index_u32(68717u, 24u)]))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global2[_wgslsmith_index_u32(19716u, 24u)], -1443f, -462f))) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1369f, -733f, -440f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 24u)], -276f, global2[_wgslsmith_index_u32(u_input.d.x, 24u)])))))), -6278i, vec4<i32>(u_input.a, 68542i, 1i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.b, u_input.b), vec4<i32>(-18974i, 0i, -51980i, -1i))) & vec4<i32>(u_input.a, min(-1i, ~u_input.b), ~(~(-2147483647i)), -2147483647i));
}

