struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<bool>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: bool,
    b: i32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_2,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(vec2<bool>(true, false), vec3<f32>(305f, -1000f, -330f));

var<private> global1: array<bool, 13> = array<bool, 13>(false, true, false, true, false, true, true, true, false, false, true, false, false);

var<private> global2: vec4<bool>;

var<private> global3: Struct_1 = Struct_1(vec4<u32>(64239u, 41473u, 4294967295u, 0u), vec4<i32>(23241i, i32(-2147483648), 36395i, 22077i), vec2<bool>(true, true), vec3<u32>(0u, 0u, 31632u));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec3<i32>, arg_1: i32, arg_2: u32) -> Struct_5 {
    var var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(22775u, reverseBits(global3.d.x), ~4294967295u, _wgslsmith_clamp_u32(arg_2, 4086u, ~(~1u))), vec4<u32>(_wgslsmith_add_u32(4294967295u, arg_2), arg_2, ~arg_2, _wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(14374u, 1u) & ~global3.d.yx)));
    return Struct_5(global2.zy, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.b * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1815f), _wgslsmith_div_f32(global0.b.x, global0.b.x), global0.b.x)), _wgslsmith_f_op_vec3_f32(exp2(global0.b))));
}

fn func_3(arg_0: f32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-426f, arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.b.x)) * _wgslsmith_f_op_f32(exp2(global0.b.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1727f - -296f), arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2572f))))));
    return ~_wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(global3.a, ~vec4<u32>(21508u, u_input.c.x, 35230u, 37385u)), ~78362u);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: f32, arg_3: bool) -> vec4<bool> {
    global0 = Struct_5(global0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.b - vec3<f32>(1000f, global0.b.x, arg_2)))) * _wgslsmith_f_op_vec3_f32(global0.b - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-506f, arg_2, global0.b.x))))));
    var var_0 = select(!(!vec3<bool>(arg_3, any(global0.a), true)), arg_0, ~u_input.c.x >= 1u);
    var_0 = arg_0;
    global0 = Struct_5(select(!(!(!global2.zx)), !(!select(vec2<bool>(true, true), arg_0.xy, vec2<bool>(global1[_wgslsmith_index_u32(11243u, 13u)], global3.c.x))), global1[_wgslsmith_index_u32(~arg_1.x, 13u)]), global0.b);
    let var_1 = global0.b;
    return select(vec4<bool>(!((-802f != arg_2) || any(vec4<bool>(true, arg_3, true, true))), false, any(vec3<bool>(true, true, any(vec4<bool>(global3.c.x, true, false, global1[_wgslsmith_index_u32(u_input.c.x, 13u)])))), false), !(!(!vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x))), vec4<bool>(firstTrailingBit(global3.b.x) > ~_wgslsmith_mult_i32(0i, -11280i), true, arg_0.x, true));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: vec3<bool>, arg_3: Struct_4) -> bool {
    global0 = func_2(global3.b.wwy, arg_1.x, ~(~_wgslsmith_add_u32(~arg_0.x, 8111u & global3.d.x)));
    let var_0 = func_4(!vec3<bool>(all(global3.c) != (false & arg_3.b.a), firstTrailingBit(arg_1.x) > countOneBits(-45856i), global3.c.x), vec4<u32>(~firstLeadingBit(max(global3.d.x, arg_0.x)), u_input.c.x, ~abs(31275u), _wgslsmith_div_u32(reverseBits(func_3(global0.b.x)), ~_wgslsmith_dot_vec3_u32(arg_0, vec3<u32>(arg_0.x, 0u, 4294967295u)))), 1295f, any(!select(global0.a, global3.c, all(vec2<bool>(false, true)))));
    let var_1 = Struct_3(all(select(!var_0, var_0, func_4(arg_2, global3.a, -725f, global0.a.x))) | all(global2.ywx), arg_1.x);
    let var_2 = global3.a.zx;
    let var_3 = ~_wgslsmith_div_u32(arg_0.x, arg_0.x);
    return global0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_u32(0u, _wgslsmith_mult_u32(global3.d.x, ~(~(global3.d.x & 9223u))));
    global2 = !vec4<bool>(!(any(vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 13u)], global3.c.x, false, false)) && any(vec4<bool>(true, global3.c.x, false, global2.x))), any(vec2<bool>(global1[_wgslsmith_index_u32(select(1u, 1u, true), 13u)], any(vec4<bool>(global0.a.x, false, global3.c.x, true)))), false, any(vec2<bool>(true | global2.x, global2.x && global1[_wgslsmith_index_u32(25520u, 13u)])));
    global2 = !select(select(vec4<bool>(all(vec3<bool>(false, true, global1[_wgslsmith_index_u32(46041u, 13u)])), global3.c.x, false, true), select(vec4<bool>(false, true, false, true), select(vec4<bool>(global2.x, global3.c.x, global3.c.x, false), vec4<bool>(true, false, global0.a.x, global1[_wgslsmith_index_u32(26507u, 13u)]), vec4<bool>(true, global2.x, true, global0.a.x)), !vec4<bool>(global2.x, global3.c.x, global2.x, global2.x)), vec4<bool>(func_1(vec3<u32>(49050u, global3.a.x, 1u), vec4<i32>(-2147483647i, global3.b.x, 0i, -60808i), vec3<bool>(global1[_wgslsmith_index_u32(9903u, 13u)], global0.a.x, false), Struct_4(vec4<f32>(724f, 1275f, global0.b.x, global0.b.x), Struct_2(global3.c.x))), global2.x, global0.a.x | false, !global0.a.x)), !(!vec4<bool>(global3.c.x, global2.x, true, global2.x)), any(vec2<bool>(!global2.x, u_input.c.x < 9798u)));
    let var_1 = global2.wzz;
    let var_2 = abs(~vec2<u32>(var_0, (global3.a.x & global3.a.x) << (1u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(select(var_0, func_3(_wgslsmith_f_op_f32(sign(502f))), global3.c.x), select(-29176i, -2147483647i, ~(~u_input.c.x) < (_wgslsmith_mod_u32(4294967295u, 1u) << ((var_2.x | 45685u) % 32u))));
}

