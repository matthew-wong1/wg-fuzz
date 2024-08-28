struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30> = array<i32, 30>(48721i, 2147483647i, -38081i, 2147483647i, 1i, 21644i, -154i, i32(-2147483648), -1i, -36504i, 8933i, 1i, -1i, 0i, 16165i, -5576i, 19212i, 1i, 5364i, 1i, -1i, -37629i, i32(-2147483648), -64695i, -37172i, -1590i, 1i, -12450i, 1i, i32(-2147483648));

var<private> global1: array<f32, 6> = array<f32, 6>(1977f, 1536f, 577f, 1000f, -677f, -1324f);

var<private> global2: vec4<f32> = vec4<f32>(2140f, 113f, 209f, 485f);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: Struct_1, arg_3: Struct_4) -> u32 {
    global1 = array<f32, 6>();
    var var_0 = u_input.b;
    var var_1 = !(!(!(!arg_3.a.d.a)));
    global1 = array<f32, 6>();
    var_0 = vec4<u32>(var_0.x, arg_3.a.b, ~arg_3.a.b, firstLeadingBit(_wgslsmith_clamp_u32(41653u, u_input.b.x, ~arg_3.b.b.b)));
    return countOneBits(arg_1.a.b);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2) -> u32 {
    global0 = array<i32, 30>();
    var var_0 = -2147483647i;
    global2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2.x, global2.x, global2.x, global2.x)))))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.x))), _wgslsmith_f_op_f32(-1786f + arg_1.c), arg_0.x, -101f), vec4<f32>(_wgslsmith_f_op_f32(round(global2.x)), 593f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.c + arg_1.c), _wgslsmith_f_op_f32(trunc(arg_1.c)), true && arg_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.c, global2.x)))), arg_1.a));
    global1 = array<f32, 6>();
    var_0 = _wgslsmith_dot_vec2_i32(u_input.a.zy, vec2<i32>(abs(u_input.c ^ 0i) | -1973i, global0[_wgslsmith_index_u32(firstLeadingBit(~4294967295u), 30u)]));
    return countOneBits((arg_1.b >> (~(~arg_1.b) % 32u)) & (~(2186u | u_input.d) << (arg_1.b % 32u)));
}

fn func_4(arg_0: vec4<u32>, arg_1: bool, arg_2: f32) -> vec2<i32> {
    global1 = array<f32, 6>();
    var var_0 = firstTrailingBit(arg_0 | abs(vec4<u32>(5056u ^ u_input.b.x, ~21874u, ~38300u, ~123908u)));
    var var_1 = _wgslsmith_clamp_u32(~(~arg_0.x), countOneBits(1u << (~4294967295u % 32u)), select(min(116137u << (var_0.x % 32u), _wgslsmith_mod_u32(arg_0.x, u_input.d) ^ 54768u), _wgslsmith_dot_vec2_u32(arg_0.yy, _wgslsmith_mult_vec2_u32(u_input.b.wx, u_input.b.zy) & var_0.ww), !(!(arg_1 != true))));
    var var_2 = _wgslsmith_f_op_f32(-global2.x);
    global1 = array<f32, 6>();
    return max(-u_input.a.yy, vec2<i32>(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(0u, 30u)] ^ global0[_wgslsmith_index_u32(1266u, 30u)], -41547i), u_input.c));
}

fn func_1(arg_0: Struct_3, arg_1: vec3<f32>) -> bool {
    global0 = array<i32, 30>();
    global1 = array<f32, 6>();
    let var_0 = -func_4(vec4<u32>(arg_0.b.b | u_input.d, ~4294967295u, arg_0.b.b, func_2(vec2<bool>(arg_0.b.d.a, true), Struct_4(Struct_2(arg_0.b.d.a, 4294967295u, arg_0.b.c, arg_0.b.d), arg_0), Struct_1(arg_0.b.d.a), Struct_4(Struct_2(arg_0.b.a, 4294967295u, global2.x, arg_0.b.d), arg_0))) ^ vec4<u32>(30284u, func_3(global2.zw, Struct_2(arg_0.b.d.a, arg_0.b.b, arg_1.x, Struct_1(true))), min(0u, 122542u), _wgslsmith_add_u32(arg_0.b.b, 1811u)), !arg_0.b.d.a, 900f);
    let var_1 = global0[_wgslsmith_index_u32(u_input.d, 30u)];
    let var_2 = any(!(!select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, arg_0.b.d.a, true), arg_0.b.a), vec4<bool>(true, arg_0.b.d.a, arg_0.b.d.a, true), arg_0.b.a)));
    return _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(~4294967295u, 6u)])) == _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - 1079f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -359f))) > global1[_wgslsmith_index_u32(~(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 5204u), vec2<u32>(37186u, 23570u)) | _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, u_input.d, u_input.b.x, u_input.b.x), u_input.b)), 6u)];
    global2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global1[_wgslsmith_index_u32(u_input.d, 6u)], -1077f, global2.x)))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -1678f, -670f, global2.x)))))), select(vec4<bool>(all(vec2<bool>(var_0, false)) != true, false, true, !(!var_0)), vec4<bool>(!func_1(Struct_3(vec3<i32>(-58462i, 0i, global0[_wgslsmith_index_u32(19827u, 30u)]), Struct_2(true, 49683u, 1000f, Struct_1(true))), global2.zyz), true, var_0 & var_0, 41629u == u_input.d), select(select(!vec4<bool>(var_0, false, var_0, var_0), select(vec4<bool>(true, false, var_0, true), vec4<bool>(var_0, true, var_0, false), var_0), func_1(Struct_3(vec3<i32>(u_input.c, global0[_wgslsmith_index_u32(251u, 30u)], 0i), Struct_2(false, 1u, -1324f, Struct_1(var_0))), global2.wwx)), vec4<bool>(var_0 == var_0, true, all(vec3<bool>(true, true, var_0)), true), true))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.xwy));
    var var_2 = var_1.x;
    var var_3 = select(u_input.b.xw, reverseBits(~(vec2<u32>(49190u, u_input.b.x) >> (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u)))), vec2<bool>(var_0, true));
    let var_4 = u_input.b.zx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(global2.x + 1682f), ~var_3.x, -45396i);
}

