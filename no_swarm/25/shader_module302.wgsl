struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: Struct_1,
    d: vec4<bool>,
    e: f32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29> = array<bool, 29>(true, true, false, false, true, false, false, true, true, false, false, false, true, true, false, true, true, false, true, true, false, false, true, true, true, true, false, true, true);

var<private> global1: Struct_1;

var<private> global2: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(Struct_1(-1i)), Struct_2(Struct_1(-1i)), Struct_2(Struct_1(-1i)), Struct_2(Struct_1(i32(-2147483648))), Struct_2(Struct_1(5491i)), Struct_2(Struct_1(1i)), Struct_2(Struct_1(28711i)), Struct_2(Struct_1(2147483647i)), Struct_2(Struct_1(2147483647i)), Struct_2(Struct_1(0i)), Struct_2(Struct_1(2147483647i)), Struct_2(Struct_1(1i)), Struct_2(Struct_1(1i)), Struct_2(Struct_1(567i)), Struct_2(Struct_1(-1i)), Struct_2(Struct_1(-20417i)), Struct_2(Struct_1(i32(-2147483648))), Struct_2(Struct_1(-25219i)));

var<private> global3: array<f32, 10>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    global0 = array<bool, 29>();
    let var_0 = false;
    var var_1 = any(vec4<bool>(true, false, true == !global0[_wgslsmith_index_u32(18716u, 29u)], _wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(4294967295u, 10u)])) != _wgslsmith_f_op_f32(floor(-240f))));
    var_1 = global0[_wgslsmith_index_u32(27613u, 29u)];
    let var_2 = any(select(vec3<bool>(arg_1, any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 29u)], var_0, false)), global0[_wgslsmith_index_u32(~u_input.a, 29u)]), vec3<bool>(-41982i != global1.a, true, !arg_1), true)) || arg_1;
    return Struct_1(~firstTrailingBit(countOneBits(1i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(4669u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(~u_input.a, 5270u), u_input.a)), 10u)]));
    let var_1 = firstLeadingBit(vec3<u32>(~u_input.a, 14377u, ~1u));
    var var_2 = -firstLeadingBit(u_input.b);
    global2 = array<Struct_2, 18>();
    let var_3 = Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(~17450i, u_input.b), vec2<i32>(-11590i << (~u_input.a % 32u), countOneBits(~(-2147483647i)))));
    return Struct_4(vec4<f32>(_wgslsmith_f_op_f32(floor(1211f)), 485f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~51184u, abs(58528u), 19014u), 10u)])), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(var_0, -750f, true)), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(var_1.x, 10u)] - 2326f), -1128f, var_0)))), !(global0[_wgslsmith_index_u32(u_input.a, 29u)] | select(false, global0[_wgslsmith_index_u32(u_input.a, 29u)], global0[_wgslsmith_index_u32(1u, 29u)])) | !(~(-10228i) == global1.a));
}

fn func_1(arg_0: vec4<u32>, arg_1: i32, arg_2: bool) -> Struct_4 {
    var var_0 = false;
    global0 = array<bool, 29>();
    global3 = array<f32, 10>();
    var var_1 = func_3(func_2(Struct_1(51382i), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, -1i) | vec2<i32>(u_input.b, arg_1), _wgslsmith_div_vec2_i32(vec2<i32>(arg_1, -2147483647i), vec2<i32>(59636i, 19405i))) <= global1.a), func_2(func_2(func_2(Struct_1(-1i), -2465f <= global3[_wgslsmith_index_u32(arg_0.x, 10u)]), true), true & global0[_wgslsmith_index_u32(1u, 29u)]));
    var var_2 = any(!vec3<bool>(arg_2, arg_2, u_input.b != 2147483647i));
    return func_3(func_2(Struct_1(_wgslsmith_dot_vec3_i32(min(vec3<i32>(arg_1, global1.a, arg_1), vec3<i32>(u_input.b, arg_1, 13245i)), abs(vec3<i32>(40657i, 855i, global1.a)))), var_1.a.x >= 2000f), func_2(Struct_1(-global1.a | firstLeadingBit(arg_1)), false));
}

fn func_4(arg_0: i32, arg_1: vec3<f32>, arg_2: u32, arg_3: Struct_4) -> u32 {
    let var_0 = Struct_1(u_input.b);
    var var_1 = _wgslsmith_div_vec4_f32(func_3(func_2(Struct_1(_wgslsmith_clamp_i32(1i, 2147483647i, var_0.a)), !(arg_3.c | true)), Struct_1(arg_0)).a, _wgslsmith_f_op_vec4_f32(arg_3.a - arg_3.a));
    var var_2 = global2[_wgslsmith_index_u32(~arg_2, 18u)];
    global1 = Struct_1(_wgslsmith_mult_i32(abs(-1i), ~(-28671i)));
    global3 = array<f32, 10>();
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(func_4(_wgslsmith_div_i32(global1.a, 1i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(u_input.a, 10u)], 1000f, 930f)), ~0u, func_1(vec4<u32>(0u, 4294967295u, u_input.a, u_input.a), -19302i, true)) << (abs(49840u) % 32u), ~u_input.a, ~4294967295u) ^ vec3<u32>(~3096u, u_input.a, 16874u);
    global1 = func_2(func_2(func_2(func_2(Struct_1(2147483647i), global0[_wgslsmith_index_u32(u_input.a, 29u)]), global0[_wgslsmith_index_u32(4294967295u, 29u)]), !(!global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, 5639u), 29u)])), false);
    let var_1 = var_0;
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(31010u, 10u)], global3[_wgslsmith_index_u32(16218u, 10u)])) * _wgslsmith_f_op_f32(max(-1000f, global3[_wgslsmith_index_u32(23182u, 10u)]))), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, u_input.a), 10u)])), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1217f) - vec2<f32>(-1000f, global3[_wgslsmith_index_u32(var_0.x, 10u)])) - vec2<f32>(-1000f, -1000f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(463f, 723f), vec2<f32>(-1815f, global3[_wgslsmith_index_u32(4294967295u, 10u)]))))), !(!(!vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 29u)]))))), vec2<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~1u, 1u), 10u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1113f, 923f))) - _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~63461u, 10u)] + _wgslsmith_f_op_f32(f32(-1f) * -581f)))));
    var var_3 = !vec2<bool>(!global0[_wgslsmith_index_u32(0u, 29u)], _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(1000f, global3[_wgslsmith_index_u32(5563u, 10u)])), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.a, 10u)] * global3[_wgslsmith_index_u32(0u, 10u)]))) > global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, ~4294967295u), 10u)]);
    var var_4 = min(u_input.a, u_input.a);
    var_3 = vec2<bool>(!(1u >= _wgslsmith_mod_u32(~u_input.a, var_0.x | var_1.x)), select(!select(var_3.x, global0[_wgslsmith_index_u32(var_1.x, 29u)], true), !any(vec2<bool>(var_3.x, false)), any(!vec2<bool>(global0[_wgslsmith_index_u32(var_1.x, 29u)], var_3.x))) | true);
    var var_5 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(229f, 1204f))), var_2, global0[_wgslsmith_index_u32(~(~0u), 29u)]));
    let var_6 = countOneBits(select(-vec3<i32>(_wgslsmith_mult_i32(36245i, global1.a), 2147483647i, min(0i, u_input.b)), vec3<i32>(firstLeadingBit(reverseBits(u_input.b)), countOneBits(u_input.b), _wgslsmith_mult_i32(global1.a, u_input.b) & (56051i << (u_input.a % 32u))), select(!select(vec3<bool>(global0[_wgslsmith_index_u32(38000u, 29u)], false, false), vec3<bool>(var_3.x, var_3.x, var_3.x), var_3.x), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), !vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 29u)], false, global0[_wgslsmith_index_u32(1u, 29u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

