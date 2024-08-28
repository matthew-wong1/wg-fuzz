struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(371f, 491f, -761f, 476f);

var<private> global1: array<vec2<i32>, 26> = array<vec2<i32>, 26>(vec2<i32>(2847i, 65427i), vec2<i32>(23167i, i32(-2147483648)), vec2<i32>(0i, -39912i), vec2<i32>(-1i, 19767i), vec2<i32>(17045i, -1i), vec2<i32>(14i, i32(-2147483648)), vec2<i32>(41844i, 58485i), vec2<i32>(6770i, -8128i), vec2<i32>(28104i, -16410i), vec2<i32>(4016i, i32(-2147483648)), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(-3093i, -20428i), vec2<i32>(1i, -8363i), vec2<i32>(2147483647i, 5834i), vec2<i32>(-42985i, -1i), vec2<i32>(i32(-2147483648), 9860i), vec2<i32>(54663i, i32(-2147483648)), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(49586i, 4632i), vec2<i32>(-2204i, 0i), vec2<i32>(36580i, 0i), vec2<i32>(-1i, 34926i), vec2<i32>(i32(-2147483648), 37638i), vec2<i32>(1i, 4009i), vec2<i32>(11122i, -21081i), vec2<i32>(2147483647i, -4870i));

var<private> global2: array<Struct_3, 32>;

var<private> global3: vec4<u32> = vec4<u32>(4294967295u, 20254u, 4294967295u, 1u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: u32, arg_1: bool) -> u32 {
    let var_0 = _wgslsmith_add_u32(_wgslsmith_clamp_u32(~_wgslsmith_clamp_u32(~0u, _wgslsmith_mod_u32(global3.x, global3.x), select(65073u, 516u, arg_1)), 0u, _wgslsmith_dot_vec2_u32(reverseBits(reverseBits(vec2<u32>(u_input.c.x, 36699u))), ~(~vec2<u32>(u_input.d.x, global3.x)))), u_input.b.x);
    global2 = array<Struct_3, 32>();
    let var_1 = Struct_2(all(vec2<bool>(all(!vec3<bool>(arg_1, arg_1, arg_1)), !arg_1)), Struct_1(global0.wy), -(~min(0i, u_input.a)) & -2147483647i, Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.xx), vec2<f32>(_wgslsmith_f_op_f32(select(global0.x, -723f, arg_1)), _wgslsmith_f_op_f32(max(241f, -1312f))))), global1[_wgslsmith_index_u32(global3.x ^ (7545u ^ countOneBits(max(12311u, var_0))), 26u)]);
    var var_2 = var_1.d;
    let var_3 = !(!vec4<bool>(false, all(!vec4<bool>(false, arg_1, false, false)), true, !any(vec3<bool>(false, false, true))));
    return select(min(~(~min(var_0, 38439u)), min(40405u, 0u)), countOneBits(countOneBits(1u)), true);
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(trunc(global0.x)))) * -1154f)));
    global3 = _wgslsmith_clamp_vec4_u32(~abs(max(~u_input.b, ~vec4<u32>(global3.x, u_input.b.x, 10819u, 4294967295u))), vec4<u32>(4294967295u, u_input.c.x, 37433u, 17014u), ~_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(global3.x, 4294967295u), 13170u, 1u, global3.x << (4294967295u % 32u)), reverseBits(~u_input.b)));
    var var_1 = global2[_wgslsmith_index_u32(global3.x << (func_3(global3.x, !all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true)))) % 32u), 32u)];
    return Struct_2(true, Struct_1(global0.yz), -(~u_input.a), Struct_1(_wgslsmith_f_op_vec2_f32(ceil(global0.zx))), -min(vec2<i32>(abs(-2147483647i), u_input.a), vec2<i32>(-1i) * -vec2<i32>(0i, 1165i)));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: f32) -> Struct_1 {
    global2 = array<Struct_3, 32>();
    let var_0 = abs(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, u_input.c.x), vec3<u32>(global3.x, global3.x, 61151u)) & _wgslsmith_mult_vec3_u32(global3.wyy, vec3<u32>(1u, global3.x, u_input.b.x)), (u_input.b.zxy | u_input.d.xxy) & (global3.zzx << (u_input.b.xxz % vec3<u32>(32u)))), ~(~global3.wzy)));
    let var_1 = vec4<bool>(arg_0.a, (u_input.a >> ((_wgslsmith_dot_vec3_u32(vec3<u32>(global3.x, 1u, u_input.c.x), vec3<u32>(1u, 1u, 41119u)) >> ((var_0.x >> (u_input.d.x % 32u)) % 32u)) % 32u)) > 16253i, select(false, arg_0.a, arg_0.a), arg_0.a == true);
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.b.a.x, arg_1, -457f, 241f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.a.x, arg_2, -2066f, 1276f))) + _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.b.a.x, arg_1, 1713f, arg_2), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(268f, arg_1, arg_2, 1155f)))))));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2.a.x + 1535f))) - _wgslsmith_f_op_f32(f32(-1f) * -269f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)))), _wgslsmith_f_op_f32(min(325f, arg_2)));
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-573f, var_2.a.x) + arg_0.b.a))) * var_2.a.xw));
}

fn func_1(arg_0: Struct_3) -> vec3<u32> {
    global2 = array<Struct_3, 32>();
    let var_0 = Struct_2(false, func_4(func_2(), global0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(729f, _wgslsmith_f_op_f32(arg_0.a.x + global0.x))))), u_input.a, func_4(func_2(), _wgslsmith_f_op_f32(step(2351f, arg_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1245f * global0.x))), global1[_wgslsmith_index_u32(countOneBits(u_input.c.x), 26u)]);
    global1 = array<vec2<i32>, 26>();
    var var_1 = Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(abs(703f)), global0.x, _wgslsmith_div_f32(-1098f, 673f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.a.x, var_0.b.a.x, var_0.d.a.x, global0.x)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_0.a, vec4<f32>(global0.x, arg_0.a.x, global0.x, -119f)))))));
    let var_2 = Struct_2(true, func_4(func_2(), -1544f, var_0.b.a.x), abs(var_0.c), var_0.b, _wgslsmith_mod_vec2_i32(select(func_2().e, vec2<i32>(max(49089i, -1i), var_0.c), select(!vec2<bool>(false, var_0.a), vec2<bool>(true, var_0.a), false)), -_wgslsmith_div_vec2_i32(func_2().e, func_2().e)));
    return _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(~77078u, ~116958u, global3.x), vec3<u32>(26876u, 4294967295u, u_input.c.x)) << (global3.wyw % vec3<u32>(32u)), ~firstLeadingBit(vec3<u32>(~4294967295u, _wgslsmith_sub_u32(27277u, 1u), u_input.d.x)), _wgslsmith_mult_vec3_u32(global3.xyw, ~global3.zzz | vec3<u32>(u_input.d.x, 1u, u_input.d.x)) ^ global3.yzy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -10573i;
    var var_1 = ~(global3.www >> (~((vec3<u32>(global3.x, global3.x, 44367u) | vec3<u32>(global3.x, global3.x, 34797u)) & countOneBits(global3.ywy)) % vec3<u32>(32u)));
    var_1 = func_1(global2[_wgslsmith_index_u32(2387u, 32u)]);
    var var_2 = !(~u_input.b.x <= u_input.d.x);
    var_2 = false;
    let var_3 = global3.x;
    global1 = array<vec2<i32>, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-1438f)), _wgslsmith_f_op_f32(min(global0.x, 499f)), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(select(916f, 309f, false)))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_div_f32(-1902f, global0.x), _wgslsmith_f_op_f32(round(-269f)), global0.x, global0.x))), true)));
}

