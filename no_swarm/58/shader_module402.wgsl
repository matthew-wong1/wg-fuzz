struct Struct_1 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
    c: vec3<i32>,
    d: Struct_3,
    e: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
    d: Struct_2,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 3>;

var<private> global1: array<Struct_1, 10>;

var<private> global2: array<Struct_1, 12>;

var<private> global3: u32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: i32) -> vec2<i32> {
    global0 = array<i32, 3>();
    let var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-462f, 585f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1041f, -1896f))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-379f, -179f)), _wgslsmith_div_vec2_f32(vec2<f32>(-1274f, -186f), vec2<f32>(-764f, -1017f))))))));
    global2 = array<Struct_1, 12>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(299f * _wgslsmith_f_op_f32(f32(-1f) * -1905f)));
    global2 = array<Struct_1, 12>();
    return reverseBits(select(u_input.a.zz, reverseBits(min(u_input.d & u_input.a.wz, u_input.d)), !(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)))));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: Struct_5, arg_3: f32) -> vec2<bool> {
    let var_0 = _wgslsmith_clamp_vec4_i32(u_input.e, _wgslsmith_clamp_vec4_i32(vec4<i32>(5829i, global0[_wgslsmith_index_u32(~arg_2.d.b.b.x, 3u)], select(func_1(global0[_wgslsmith_index_u32(13600u, 3u)]).x, 0i, true), func_1(2147483647i).x), u_input.a, countOneBits(~u_input.a)), vec4<i32>(global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(21603u, 4294967295u, arg_2.d.b.a), vec3<u32>(u_input.b, 56156u, u_input.b)), u_input.c.x), 3u)], global0[_wgslsmith_index_u32(u_input.c.x, 3u)], 1i, (global0[_wgslsmith_index_u32(3445u, 3u)] | u_input.e.x) & global0[_wgslsmith_index_u32(1u, 3u)]));
    var var_1 = firstTrailingBit(~abs(vec2<u32>(24931u, 4294967295u)));
    let var_2 = vec2<i32>(global0[_wgslsmith_index_u32(select(_wgslsmith_mult_u32(reverseBits(select(var_1.x, 4294967295u, arg_2.e.x)), 36457u), u_input.c.x, arg_0.x), 3u)], -(~2147483647i));
    let var_3 = Struct_3(2736u, ~vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-30661i, u_input.a.x), max(var_2, var_2)), min(_wgslsmith_dot_vec4_i32(var_0, var_0), ~1i)));
    global1 = array<Struct_1, 10>();
    return select(!arg_0.yz, vec2<bool>(true, !(_wgslsmith_mod_u32(arg_2.d.b.b.x, arg_2.c.b.b.x) == _wgslsmith_add_u32(arg_2.b.b.a, arg_2.d.b.b.x))), any(select(!(!arg_0), !vec4<bool>(true, true, arg_0.x, true), arg_2.e.x)));
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    global0 = array<i32, 3>();
    var var_0 = Struct_3(71317u, ~(~(vec2<i32>(-30627i, -2147483647i) & vec2<i32>(global0[_wgslsmith_index_u32(1u, 3u)], u_input.e.x))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(568f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-771f, 1478f))))))), -843f);
    let var_2 = u_input.a.wwx;
    var var_3 = !select(!(!select(vec2<bool>(arg_1, arg_1), vec2<bool>(false, false), true)), !func_3(vec4<bool>(arg_1, arg_1, arg_1, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-449f, 1000f, -933f)), Struct_5(5403u, Struct_2(vec2<f32>(-709f, 1924f), Struct_1(var_0.a, vec2<u32>(0u, 4294967295u))), Struct_2(vec2<f32>(837f, -814f), Struct_1(45803u, vec2<u32>(var_0.a, 18975u))), Struct_2(vec2<f32>(1720f, -201f), global1[_wgslsmith_index_u32(arg_0.a, 10u)]), vec3<bool>(false, false, false)), -216f), (1333f < _wgslsmith_f_op_f32(step(291f, -1090f))) && !any(vec2<bool>(true, true)));
    return global1[_wgslsmith_index_u32(min(_wgslsmith_clamp_u32(var_0.a, ~(4294967295u ^ _wgslsmith_sub_u32(arg_0.a, var_0.a)), _wgslsmith_mult_u32(abs(~8645u), ~(~var_0.a))), _wgslsmith_add_u32(var_0.a, ((u_input.b ^ 47299u) | u_input.c.x) & max(max(22904u, var_0.a), firstTrailingBit(69680u)))), 10u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_2) -> vec4<bool> {
    let var_0 = vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_2.x, 1328f)), _wgslsmith_f_op_f32(1047f + arg_3.a.x)) + arg_2.x) != -397f, u_input.c.x <= _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(43926u, arg_3.b.b.x, arg_1.a, 12343u), vec4<u32>(41385u, arg_3.b.a, arg_1.b.x, u_input.b) | vec4<u32>(1u, 1u, 40974u, u_input.b)), countOneBits(2357u) | select(24486u, 32687u, false), arg_0.a));
    let var_1 = Struct_3(0u, vec2<i32>(select(firstTrailingBit(select(global0[_wgslsmith_index_u32(101340u, 3u)], -2147483647i, var_0.x)), u_input.a.x, _wgslsmith_add_u32(29470u, arg_3.b.b.x) > ~u_input.c.x), 0i));
    var var_2 = 42860u;
    global0 = array<i32, 3>();
    let var_3 = max(abs(~u_input.d.x ^ 1i), _wgslsmith_div_i32(2147483647i | u_input.d.x, 2147483647i)) & global0[_wgslsmith_index_u32(~4294967295u, 3u)];
    return vec4<bool>(func_3(vec4<bool>(all(select(vec3<bool>(true, var_0.x, true), vec3<bool>(true, var_0.x, var_0.x), true)), select(var_0.x, var_0.x, true) || true, true, !(!var_0.x)), vec3<f32>(_wgslsmith_f_op_f32(round(arg_3.a.x)), arg_2.x, 415f), Struct_5(arg_1.a, arg_3, Struct_2(vec2<f32>(-1048f, -738f), Struct_1(45788u, arg_0.b)), Struct_2(vec2<f32>(arg_3.a.x, -1021f), arg_1), !(!vec3<bool>(true, true, var_0.x))), 2443f).x, true | (!var_0.x | false), any(vec4<bool>(true, !all(vec4<bool>(var_0.x, var_0.x, true, var_0.x)), true, !var_0.x)), true && any(vec4<bool>(all(vec3<bool>(false, true, true)), var_0.x, true, false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec2_i32(reverseBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(36543i, _wgslsmith_div_i32(global0[_wgslsmith_index_u32(1u, 3u)], u_input.e.x)), vec2<i32>(_wgslsmith_sub_i32(u_input.a.x, 848i), u_input.a.x ^ u_input.e.x), -u_input.d)), ~(func_1(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b, 140u), 3u)]) ^ reverseBits(~u_input.e.zw)));
    global0 = array<i32, 3>();
    global1 = array<Struct_1, 10>();
    var var_1 = any(!select(func_4(func_2(global1[_wgslsmith_index_u32(0u, 10u)], false), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c.x, u_input.b), 12u)], _wgslsmith_f_op_vec3_f32(vec3<f32>(193f, -1490f, -264f) + vec3<f32>(692f, 879f, -497f)), Struct_2(vec2<f32>(240f, 757f), global2[_wgslsmith_index_u32(70780u, 12u)])), vec4<bool>(true, false, false, all(vec3<bool>(true, true, false))), vec4<bool>(true, true, true, true)));
    global0 = array<i32, 3>();
    let var_2 = Struct_4(Struct_3(u_input.b, ~(~vec2<i32>(-37479i, u_input.e.x))), abs(vec4<i32>(max(9586i | var_0.x, reverseBits(4329i)), 61421i, i32(-1i) * -u_input.a.x, -global0[_wgslsmith_index_u32(u_input.c.x, 3u)] & _wgslsmith_dot_vec2_i32(u_input.d, u_input.d))), u_input.e.xzw, Struct_3(73122u, firstTrailingBit(vec2<i32>(1i, abs(var_0.x)))), Struct_3(u_input.b, reverseBits(u_input.a.yw)));
    let var_3 = global1[_wgslsmith_index_u32(1u, 10u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(1521f)), u_input.c, vec2<i32>(-1i) * -vec2<i32>(-u_input.d.x, var_2.c.x), ~_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(u_input.b, var_2.d.a, var_2.d.a, var_2.a.a)), select(vec4<u32>(var_3.a, var_2.d.a, u_input.b, var_3.a), vec4<u32>(47115u, 25643u, var_2.a.a, 4294967295u), select(true, false, false))), firstLeadingBit(~u_input.e));
}

