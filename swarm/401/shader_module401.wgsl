struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: f32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: f32,
    d: i32,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: vec2<i32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<f32>,
    d: vec2<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_4 = Struct_4(-33654i, Struct_3(2147483647i, Struct_2(Struct_1(vec4<bool>(false, true, false, false), 63436u), Struct_1(vec4<bool>(true, true, true, false), 100944u), vec4<i32>(-35661i, 0i, -1i, i32(-2147483648)), 1268f), -737f, 0i), vec2<i32>(2147483647i, -1i), -208f);

var<private> global2: array<vec2<f32>, 5> = array<vec2<f32>, 5>(vec2<f32>(-1134f, 692f), vec2<f32>(-732f, -798f), vec2<f32>(1438f, 1252f), vec2<f32>(-1020f, -1000f), vec2<f32>(1223f, 1002f));

var<private> global3: array<vec2<bool>, 9>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<u32>) -> u32 {
    let var_0 = u_input.d;
    var var_1 = Struct_1(select(select(vec4<bool>(global1.b.b.b.a.x, all(vec4<bool>(global1.b.b.b.a.x, global1.b.b.a.a.x, global1.b.b.a.a.x, false)), true, global1.b.b.a.a.x), select(vec4<bool>(global1.b.b.b.a.x, true, global1.b.b.b.a.x, global1.b.b.a.a.x), select(global1.b.b.b.a, global1.b.b.a.a, false), global1.b.b.a.a.x), select(vec4<bool>(global1.b.b.b.a.x, global1.b.b.a.a.x, true, true), vec4<bool>(true, true, global1.b.b.a.a.x, false), !global1.b.b.b.a)), !global1.b.b.b.a, vec4<bool>(false, global1.b.b.a.a.x, all(vec4<bool>(global1.b.b.a.a.x, global1.b.b.a.a.x, global1.b.b.a.a.x, true)), !any(vec3<bool>(false, true, global1.b.b.a.a.x)))), 23451u);
    let var_2 = vec4<i32>(-2147483647i, select(((41110i << (var_1.b % 32u)) & u_input.d) & global1.b.a, abs(u_input.d | var_0), !global1.b.b.a.a.x), global1.b.a, 0i);
    global1 = Struct_4(~(-2156i), global1.b, vec2<i32>(reverseBits(global1.b.a), u_input.c.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.d), _wgslsmith_f_op_f32(-arg_0.x))))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(144f - global1.d)) - 789f)) + arg_0.x);
    return arg_1.x;
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> Struct_3 {
    var var_0 = reverseBits(vec4<u32>(72091u, ~global1.b.b.a.b, ~4294967295u, func_3(vec4<f32>(-448f, -1616f, 996f, 988f), vec2<u32>(arg_1.b, 4294967295u)) << (_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(9864u, 0u, 0u, global1.b.b.b.b)), ~vec4<u32>(global1.b.b.a.b, global1.b.b.b.b, u_input.a, arg_2)) % 32u)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, _wgslsmith_div_f32(-432f, arg_0))), global2[_wgslsmith_index_u32(~reverseBits(abs(3979u)), 5u)], arg_1.a.x)));
    global3 = array<vec2<bool>, 9>();
    var var_2 = select(global1.b.b.b.a, vec4<bool>(all(select(!vec3<bool>(false, true, arg_1.a.x), arg_1.a.wyw, false == arg_1.a.x)), any(vec2<bool>(!global1.b.b.a.a.x, global1.b.b.b.a.x)), arg_2 < abs(_wgslsmith_mod_u32(15445u, arg_2)), -2147483647i <= global1.c.x), !(~6619u <= reverseBits(~global1.b.b.a.b)));
    var var_3 = _wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(54050u, var_0.x) >> (4294967295u % 32u), 5u)]);
    return Struct_3(0i, global1.b.b, global1.b.b.d, select(select(max(-global1.b.a, global1.b.a << (0u % 32u)), global1.c.x, false), u_input.d, !arg_1.a.x));
}

fn func_1() -> Struct_4 {
    var var_0 = -327f;
    global1 = Struct_4(0i, func_2(-1562f, Struct_1(vec4<bool>(global1.b.b.a.a.x, global1.b.b.b.a.x, -1859f < global1.d, true), 11478u), global1.b.b.a.b), ~global1.c, 1f);
    var_0 = 121f;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global1.b.b.d + global1.d), _wgslsmith_f_op_f32(select(-829f, _wgslsmith_f_op_f32(step(-362f, 640f)), !global1.b.b.a.a.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(global1.b.c)))), _wgslsmith_f_op_f32(global1.d - global1.b.b.d))));
    var var_2 = _wgslsmith_sub_i32(u_input.c.x, ~reverseBits(-countOneBits(-2147483647i)));
    return Struct_4(21694i, global1.b, vec2<i32>(-69500i, ~global1.c.x), _wgslsmith_f_op_f32(-506f + global1.b.c));
}

fn func_4(arg_0: Struct_4, arg_1: u32, arg_2: Struct_3, arg_3: Struct_2) -> f32 {
    var var_0 = global1.b;
    let var_1 = _wgslsmith_f_op_f32(max(arg_0.b.b.d, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.c + arg_0.d) + _wgslsmith_f_op_f32(trunc(168f))), _wgslsmith_f_op_f32(select(arg_3.d, -1473f, !var_0.b.b.a.x | false))))));
    let var_2 = _wgslsmith_div_u32(select(countOneBits(arg_2.b.a.b), ~firstLeadingBit(57399u), false), u_input.b);
    var var_3 = Struct_2(arg_0.b.b.a, var_0.b.a, var_0.b.c, 2867f);
    return _wgslsmith_f_op_f32(round(-1016f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(func_4(func_1(), global1.b.b.a.b, global1.b, func_2(func_1().b.b.d, func_2(global1.b.c, Struct_1(vec4<bool>(global1.b.b.a.a.x, false, global1.b.b.a.a.x, false), u_input.b), ~global1.b.b.b.b).b.a, u_input.a).b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(global1.b.c)), global1.d)))), _wgslsmith_f_op_f32(-global1.b.b.d), _wgslsmith_f_op_f32(f32(-1f) * -171f));
    var var_1 = Struct_4(global1.a, global1.b, ~u_input.c.yy, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-2116f, 1368f)))));
    var var_2 = func_2(global1.b.b.d, Struct_1(var_1.b.b.b.a, 58590u), global1.b.b.b.b & 48690u).b.a;
    let var_3 = vec2<bool>(_wgslsmith_mult_u32(~var_1.b.b.b.b ^ 0u, global1.b.b.a.b) >= ~var_1.b.b.a.b, !var_2.a.x);
    var var_4 = Struct_3(~0i, Struct_2(Struct_1(func_1().b.b.a.a, func_1().b.b.a.b), global1.b.b.a, ~var_1.b.b.c, _wgslsmith_f_op_f32(f32(-1f) * -1335f)), var_1.b.b.d, abs(var_1.a));
    let x = u_input.a;
    s_output = StorageBuffer(~(-vec2<i32>(var_1.c.x, var_4.a << (var_4.b.a.b % 32u))), _wgslsmith_dot_vec4_i32(-var_1.b.b.c, func_1().b.b.c), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_4.b.d, var_0.x, global1.d, 323f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_4.c, -539f, var_0.x, var_1.b.b.d), vec4<f32>(var_4.c, -2222f, var_4.b.d, var_4.b.d))))))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(func_1().d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + global1.b.c))), global2[_wgslsmith_index_u32(~(~97652u ^ (global1.b.b.a.b ^ 4294967295u)), 5u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_1.d, -247f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global1.b.c)), -1763f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), var_4.b.d) + vec4<f32>(func_2(global1.b.c, func_1().b.b.b, ~0u).b.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.b.d) - _wgslsmith_f_op_f32(sign(var_4.c))), 873f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-584f - -828f)))));
}

