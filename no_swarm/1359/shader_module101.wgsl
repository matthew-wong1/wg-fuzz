struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: bool,
    d: i32,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 2> = array<Struct_4, 2>(Struct_4(44925u, Struct_1(vec4<u32>(60882u, 24745u, 31481u, 7412u)), 4294967295u), Struct_4(4294967295u, Struct_1(vec4<u32>(38760u, 44445u, 13243u, 4294967295u)), 12279u));

var<private> global1: array<vec3<i32>, 24>;

var<private> global2: array<f32, 12> = array<f32, 12>(-711f, -826f, -574f, -907f, -269f, 2631f, -621f, -1521f, 1692f, 1000f, -626f, 508f);

var<private> global3: array<bool, 24> = array<bool, 24>(false, true, false, false, true, true, true, true, true, true, false, true, false, false, true, false, true, true, true, true, false, true, false, true);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1() -> i32 {
    return ~(u_input.b.x ^ (abs(_wgslsmith_sub_i32(0i, 3458i)) << (~(~u_input.a.x) % 32u)));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: f32, arg_3: vec3<bool>) -> Struct_4 {
    global3 = array<bool, 24>();
    global0 = array<Struct_4, 2>();
    global0 = array<Struct_4, 2>();
    return Struct_4(33180u, Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d.x, firstTrailingBit(31061u), u_input.a.x, 0u), (vec4<u32>(42838u, u_input.a.x, u_input.c, u_input.c) | u_input.a) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d.x, 4294967295u, 21314u, 12978u), vec4<u32>(u_input.c, u_input.d.x, u_input.a.x, u_input.d.x), vec4<u32>(0u, u_input.d.x, u_input.d.x, 4294967295u)))), ~(~u_input.a.x));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_4) -> vec2<f32> {
    global0 = array<Struct_4, 2>();
    var var_0 = !vec2<bool>(arg_1.x, all(select(arg_1, vec2<bool>(global3[_wgslsmith_index_u32(arg_2.c, 24u)], arg_1.x), arg_1)));
    var var_1 = vec2<bool>(!var_0.x, _wgslsmith_f_op_f32(select(-380f, arg_0.b.x, -u_input.b.x <= 44455i)) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_0.b.x)), _wgslsmith_f_op_f32(arg_0.b.x * _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(arg_0.a, 12u)])))));
    var var_2 = arg_2.b.a.x;
    let var_3 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(firstTrailingBit(51327u), 16078u | u_input.c), 24u)] || !(!any(!vec4<bool>(false, global3[_wgslsmith_index_u32(1u, 24u)], true, var_1.x)));
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -807f)), 477f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_3(~4294967295u | _wgslsmith_mult_u32(u_input.c, u_input.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(0u, 12u)], global2[_wgslsmith_index_u32(1u, 12u)], global2[_wgslsmith_index_u32(45643u, 12u)], global2[_wgslsmith_index_u32(u_input.a.x, 12u)])))), !(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, global3[_wgslsmith_index_u32(1u, 24u)]))), func_2(func_1(), _wgslsmith_f_op_f32(step(-431f, _wgslsmith_f_op_f32(1000f * -999f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(21484u, 12u)], global2[_wgslsmith_index_u32(u_input.a.x, 12u)])))), select(!vec3<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 24u)], global3[_wgslsmith_index_u32(5738u, 24u)], global3[_wgslsmith_index_u32(u_input.c, 24u)]), select(vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.d.x, 24u)], global3[_wgslsmith_index_u32(14942u, 24u)]), vec3<bool>(global3[_wgslsmith_index_u32(1u, 24u)], global3[_wgslsmith_index_u32(100216u, 24u)], global3[_wgslsmith_index_u32(u_input.a.x, 24u)]), vec3<bool>(true, false, global3[_wgslsmith_index_u32(u_input.a.x, 24u)])), true)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global2[_wgslsmith_index_u32(1u, 12u)], -825f), vec2<f32>(633f, -431f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(u_input.c, 12u)], 130f) - vec2<f32>(361f, global2[_wgslsmith_index_u32(u_input.d.x, 12u)])) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 12u)], global2[_wgslsmith_index_u32(u_input.c, 12u)]) * vec2<f32>(1349f, -103f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 12u)], global2[_wgslsmith_index_u32(u_input.a.x, 12u)]) - vec2<f32>(484f, global2[_wgslsmith_index_u32(u_input.c, 12u)])) + vec2<f32>(689f, 740f)))));
    global1 = array<vec3<i32>, 24>();
    global1 = array<vec3<i32>, 24>();
    global2 = array<f32, 12>();
    global1 = array<vec3<i32>, 24>();
    var var_1 = !(!select(select(vec2<bool>(global3[_wgslsmith_index_u32(u_input.d.x, 24u)], global3[_wgslsmith_index_u32(1u, 24u)]), vec2<bool>(global3[_wgslsmith_index_u32(0u, 24u)], false), select(global3[_wgslsmith_index_u32(0u, 24u)], global3[_wgslsmith_index_u32(4294967295u, 24u)], global3[_wgslsmith_index_u32(u_input.d.x, 24u)])), vec2<bool>(!global3[_wgslsmith_index_u32(u_input.c, 24u)], global3[_wgslsmith_index_u32(min(57700u, u_input.d.x), 24u)]), true));
    let var_2 = vec4<i32>(~select(~abs(-2147483647i), abs(1i), true), -31616i, -2147483647i, u_input.b.x);
    let var_3 = all(select(vec4<bool>(!(global3[_wgslsmith_index_u32(0u, 24u)] & var_1.x), true, any(vec2<bool>(true, true)), true), select(select(select(vec4<bool>(true, true, global3[_wgslsmith_index_u32(4294967295u, 24u)], true), vec4<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 24u)], global3[_wgslsmith_index_u32(u_input.d.x, 24u)], var_1.x, global3[_wgslsmith_index_u32(0u, 24u)]), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), !vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.c, 24u)], false, false), vec4<bool>(false, var_1.x, false, true)), vec4<bool>(select(true, var_1.x, var_1.x), true, true, global3[_wgslsmith_index_u32(countOneBits(u_input.d.x), 24u)]), !(!vec4<bool>(var_1.x, false, false, false))), vec4<bool>(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(17723u, select(0u, u_input.d.x, false)), 24u)], !all(vec3<bool>(true, global3[_wgslsmith_index_u32(u_input.c, 24u)], global3[_wgslsmith_index_u32(9521u, 24u)])), false, all(vec4<bool>(true, false, var_1.x, var_1.x)))));
    var var_4 = Struct_4(40518u, func_2(-_wgslsmith_mod_i32(1i, var_2.x) & u_input.b.x, 2439f, -636f, select(!vec3<bool>(true, true, var_1.x), select(select(vec3<bool>(var_3, true, var_3), vec3<bool>(true, var_3, global3[_wgslsmith_index_u32(u_input.c, 24u)]), false), select(vec3<bool>(true, false, var_3), vec3<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 24u)], true, false), true), !var_1.x), true)).b, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(-239f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 1000f, 910f)), abs(select(select(~u_input.a.zwy, func_2(10466i, 707f, -633f, vec3<bool>(var_3, global3[_wgslsmith_index_u32(u_input.d.x, 24u)], global3[_wgslsmith_index_u32(0u, 24u)])).b.a.xzw, true), vec3<u32>(u_input.a.x, var_4.b.a.x | u_input.d.x, u_input.d.x), vec3<bool>(-1838f < var_0.x, false, var_1.x & var_3))), _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(func_2(_wgslsmith_mod_i32(var_2.x, -2147483647i), 581f, 382f, vec3<bool>(global3[_wgslsmith_index_u32(1u, 24u)], false, false)).b.a.zyy, var_4.b.a.yyx), ~select(_wgslsmith_div_vec3_u32(var_4.b.a.ywx, vec3<u32>(49804u, u_input.d.x, var_4.c)), func_2(var_2.x, global2[_wgslsmith_index_u32(var_4.b.a.x, 12u)], 322f, vec3<bool>(false, var_3, var_3)).b.a.yxw, any(vec4<bool>(var_3, global3[_wgslsmith_index_u32(u_input.a.x, 24u)], true, false)))), ~vec4<u32>(~_wgslsmith_mod_u32(var_4.b.a.x, 1u), var_4.c, 4294967295u, _wgslsmith_dot_vec2_u32(u_input.d, ~u_input.a.zw)));
}

