struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<i32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_3;

var<private> global2: Struct_2;

var<private> global3: vec4<f32>;

var<private> global4: array<u32, 15> = array<u32, 15>(4294967295u, 0u, 0u, 3836u, 8009u, 23011u, 60111u, 4294967295u, 27062u, 4294967295u, 0u, 17208u, 0u, 43108u, 0u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_3) -> vec4<u32> {
    global0 = arg_1;
    var var_0 = vec4<f32>(455f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.a)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.a.a))), _wgslsmith_f_op_f32(-global2.a.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-339f - global2.d) * 109f), _wgslsmith_f_op_f32(-arg_1.a.a));
    let var_1 = _wgslsmith_div_vec2_f32(global3.yz, global3.zy);
    var var_2 = select(vec3<bool>(!global1.a.x, select(true, any(select(vec3<bool>(global1.a.x, arg_0.a.x, true), global1.a, vec3<bool>(global1.a.x, true, global1.a.x))), all(vec2<bool>(true, arg_2.a.x))), arg_2.a.x), select(select(select(!vec3<bool>(arg_2.a.x, arg_0.a.x, true), vec3<bool>(arg_2.a.x, arg_0.a.x, arg_0.a.x), any(arg_0.a.yy)), global1.a, global0.a.a < _wgslsmith_f_op_f32(abs(-119f))), select(select(vec3<bool>(arg_0.a.x, arg_2.a.x, arg_0.a.x), vec3<bool>(arg_0.a.x, true, true), true && arg_0.a.x), global1.a, vec3<bool>(arg_0.a.x && arg_0.a.x, true, global1.a.x)), false != arg_0.a.x), true);
    let var_3 = Struct_2(global0.a, Struct_1(arg_1.d), u_input.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(348f)))));
    return _wgslsmith_sub_vec4_u32(select(vec4<u32>(_wgslsmith_dot_vec2_u32(max(vec2<u32>(0u, 0u), vec2<u32>(global4[_wgslsmith_index_u32(u_input.b, 15u)], u_input.b)), ~vec2<u32>(global4[_wgslsmith_index_u32(56959u, 15u)], u_input.b)), global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(global4[_wgslsmith_index_u32(1u, 15u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b, 15u)], 15u)]), 1u), 15u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(~min(49672u, 4294967295u), 15u)], 15u)], 4294967295u), vec4<u32>(global4[_wgslsmith_index_u32(~21044u, 15u)], _wgslsmith_add_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(38511u, 15u)], 15u)] >> (84428u % 32u), 15u)], 15u)], min(44833u, 11303u)), min(~49072u, ~u_input.b), global4[_wgslsmith_index_u32(~abs(20491u), 15u)]), vec4<bool>(true, true, !(arg_2.a.x & arg_0.a.x), false)), vec4<u32>(~_wgslsmith_sub_u32(~1u, ~u_input.b), 1u, ~abs(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(36095u, 15u)], 15u)], 15u)]), ~min(max(u_input.b, 42905u), firstTrailingBit(46681u))));
}

fn func_2(arg_0: vec3<u32>, arg_1: u32) -> f32 {
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, _wgslsmith_f_op_f32(global0.b.a - global2.a.a), global0.d, _wgslsmith_f_op_f32(-global0.d)) + vec4<f32>(global3.x, _wgslsmith_f_op_f32(global0.d + -410f), global0.b.a, global0.a.a)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global2.a.a, global0.b.a, global0.a.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(590f, -600f, global2.b.a, global3.x)), all(vec3<bool>(global1.a.x, false, true)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(400f, 1000f, global2.b.a, -389f), vec4<f32>(global2.a.a, -1000f, 157f, -297f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.a, global3.x, global3.x, global2.b.a) * vec4<f32>(global2.a.a, global2.d, global3.x, -1303f))))));
    let var_0 = _wgslsmith_mod_i32(2147483647i, _wgslsmith_mult_i32(~(-2210i), countOneBits(~(-4675i))) >> (abs(u_input.b) % 32u));
    let var_1 = abs(_wgslsmith_div_vec4_u32(~min(vec4<u32>(10116u, 0u, 4294967295u, 131851u), vec4<u32>(arg_1, arg_0.x, u_input.b, 1u)) | min(vec4<u32>(1u, arg_0.x, u_input.b, 1u), max(vec4<u32>(global4[_wgslsmith_index_u32(1u, 15u)], arg_1, 0u, arg_1), vec4<u32>(u_input.b, arg_0.x, 4294967295u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b, 15u)], 15u)]))), select(func_3(Struct_3(vec3<bool>(false, true, false), global0.c.ywx), Struct_2(global2.a, Struct_1(global2.a.a), vec4<i32>(-1i, -46442i, global2.c.x, -19753i), global3.x), Struct_3(global1.a, global1.b)), select(~vec4<u32>(global4[_wgslsmith_index_u32(1u, 15u)], global4[_wgslsmith_index_u32(arg_0.x, 15u)], arg_1, 4294967295u), ~vec4<u32>(arg_1, 4294967295u, 1u, arg_1), false), !(!vec4<bool>(true, global1.a.x, true, false)))));
    global2 = Struct_2(Struct_1(1452f), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1104f)), vec4<i32>(-firstLeadingBit(global1.b.x), global2.c.x, firstLeadingBit(~(~1i)), var_0), 819f);
    let var_2 = Struct_1(-722f);
    return _wgslsmith_f_op_f32(var_2.a * 1513f);
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: u32, arg_3: i32) -> Struct_4 {
    var var_0 = ~abs(vec3<i32>(select(_wgslsmith_mod_i32(8998i, global1.b.x), -11896i, select(arg_0.x, true, global1.a.x)), arg_3, abs(global0.c.x)));
    var_0 = global2.c.xyy;
    var var_1 = -global1.b;
    let var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_1.a, arg_1.a, arg_1.e))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, 1127f, arg_1.a.x, global3.x) * vec4<f32>(arg_1.a.x, arg_1.a.x, 789f, global0.b.a)), arg_1.a))) - _wgslsmith_div_vec4_f32(arg_1.a, _wgslsmith_f_op_vec4_f32(arg_1.a + vec4<f32>(507f, global2.a.a, -1000f, arg_1.a.x)))), 1u, abs(countOneBits(-2147483647i)), ~_wgslsmith_add_vec3_i32(vec3<i32>(i32(-1i) * -1i, -2147483647i, 2147483647i), select(countOneBits(vec3<i32>(arg_1.d.x, arg_1.d.x, -13544i)), -vec3<i32>(-11026i, arg_3, arg_1.c), arg_0.zxz)), !(!(!(!arg_1.e))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_2(~vec3<u32>(77104u, arg_1.b, 4294967295u), _wgslsmith_div_u32(4294967295u, var_2.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x + global3.x) - _wgslsmith_f_op_f32(-1904f * global3.x)), -313f), arg_1.a.xxx));
    return arg_1;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_4) -> Struct_1 {
    var var_0 = func_1(arg_1.e, arg_1, _wgslsmith_mult_u32(4294967295u, 0u), abs(global1.b.x | global1.b.x)).e.xz;
    var var_1 = Struct_2(Struct_1(-161f), Struct_1(_wgslsmith_f_op_f32(global3.x - -889f)), vec4<i32>(reverseBits(-15007i), 21389i, arg_1.d.x, firstTrailingBit(global0.c.x)), -1055f);
    let var_2 = var_0.x;
    let var_3 = !func_1(select(vec4<bool>(any(arg_1.e.wx), true, true, true), !arg_1.e, !(arg_1.e.x || arg_1.e.x)), func_1(arg_1.e, Struct_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d, -712f, 553f, global2.d) - vec4<f32>(-1180f, var_1.d, -1139f, -861f)), 11678u, 30050i, vec3<i32>(-1i, arg_1.c, global0.c.x), !arg_1.e), u_input.b, 1i), _wgslsmith_dot_vec3_u32(~vec3<u32>(36867u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(28488u, 15u)], 15u)], 15u)], global4[_wgslsmith_index_u32(32304u, 15u)]) ^ vec3<u32>(8529u, global4[_wgslsmith_index_u32(u_input.b, 15u)], 31081u), reverseBits(~vec3<u32>(global4[_wgslsmith_index_u32(arg_1.b, 15u)], 34682u, 0u))), -57340i).e.ywx;
    var var_4 = arg_1.e;
    return Struct_1(func_1(select(arg_1.e, arg_1.e, vec4<bool>(all(vec2<bool>(var_0.x, false)), any(vec4<bool>(true, false, false, false)), true, all(arg_1.e))), arg_1, u_input.b, countOneBits(global2.c.x) << (55829u % 32u)).a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_4(vec2<u32>(firstTrailingBit(1u | global4[_wgslsmith_index_u32(u_input.b, 15u)]), _wgslsmith_dot_vec2_u32(~vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b, 15u)], 15u)], 4294967295u), vec2<u32>(u_input.b, u_input.b) << (vec2<u32>(47054u, 0u) % vec2<u32>(32u)))), func_1(select(select(vec4<bool>(true, false, global1.a.x, global1.a.x), vec4<bool>(global1.a.x, false, global1.a.x, true), true), vec4<bool>(global1.a.x, false, global1.a.x, global1.a.x), vec4<bool>(true, true, true, global1.a.x)), Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1272f, global3.x, -594f, global0.a.a)), 0u, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.c.x, 2712i), global1.b.zx), vec3<i32>(-1i, -59794i, 0i), !vec4<bool>(false, global1.a.x, global1.a.x, global1.a.x)), max(u_input.b, global4[_wgslsmith_index_u32(u_input.b, 15u)]) >> (~u_input.b % 32u), ~_wgslsmith_dot_vec3_i32(global1.b, global1.b))), Struct_1(global2.b.a), global2.c, global3.x);
    global0 = Struct_2(func_4(~(~(vec2<u32>(1119u, u_input.b) >> (vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], 1u) % vec2<u32>(32u)))), Struct_4(_wgslsmith_f_op_vec4_f32(select(func_1(vec4<bool>(global1.a.x, global1.a.x, true, global1.a.x), Struct_4(vec4<f32>(668f, -1004f, -831f, 994f), 18948u, 2147483647i, global2.c.zxz, vec4<bool>(global1.a.x, false, global1.a.x, global1.a.x)), global4[_wgslsmith_index_u32(50265u, 15u)], -32040i).a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-948f, -1662f, 412f, global0.a.a)), select(vec4<bool>(global1.a.x, global1.a.x, global1.a.x, false), vec4<bool>(global1.a.x, true, false, true), vec4<bool>(global1.a.x, global1.a.x, true, false)))), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(27988u, 0u)), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(global4[_wgslsmith_index_u32(4294967295u, 15u)], 1u))), 15u)], ~global2.c.x | max(2147483647i, -36111i), (global2.c.zwx << (vec3<u32>(u_input.b, u_input.b, 37597u) % vec3<u32>(32u))) & ~var_0.c.xyz, vec4<bool>(global1.a.x, global1.a.x, false, any(global1.a.zy)))), global0.a, var_0.c, var_0.a.a);
    let var_1 = Struct_2(global2.a, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1389f, var_0.a.a)) - global3.x) * func_4(vec2<u32>(4294967295u, u_input.b) | vec2<u32>(1015u, u_input.b), Struct_4(vec4<f32>(646f, global3.x, 1072f, var_0.d), global4[_wgslsmith_index_u32(u_input.b, 15u)], -1i, vec3<i32>(-27659i, u_input.c.x, global1.b.x), vec4<bool>(global1.a.x, global1.a.x, true, global1.a.x))).a)), firstLeadingBit(vec4<i32>(u_input.c.x, _wgslsmith_sub_i32(_wgslsmith_div_i32(-7330i, -2147483647i), var_0.c.x), max(countOneBits(global1.b.x), _wgslsmith_mod_i32(8575i, global1.b.x)), _wgslsmith_div_i32(global1.b.x, firstLeadingBit(global2.c.x)))), 265f);
    global1 = Struct_3(global1.a, _wgslsmith_sub_vec3_i32(vec3<i32>(global1.b.x, u_input.d.x, 2147483647i), _wgslsmith_mult_vec3_i32(global1.b, var_0.c.wzz)));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec3<u32>(global4[_wgslsmith_index_u32(4294967295u, 15u)], u_input.b, 55248u), u_input.b))), var_0.d)) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(853f, -314f)), vec2<f32>(_wgslsmith_f_op_f32(313f + global2.b.a), _wgslsmith_f_op_f32(max(-1281f, global2.d))))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c);
}

