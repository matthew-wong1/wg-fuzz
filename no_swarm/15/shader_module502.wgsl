struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4> = array<u32, 4>(4294967295u, 4294967295u, 1u, 0u);

var<private> global1: i32;

var<private> global2: array<vec2<u32>, 14> = array<vec2<u32>, 14>(vec2<u32>(69265u, 0u), vec2<u32>(0u, 63205u), vec2<u32>(105294u, 55790u), vec2<u32>(1u, 60397u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(77692u, 4294967295u), vec2<u32>(4294967295u, 26554u), vec2<u32>(68028u, 12275u), vec2<u32>(0u, 0u), vec2<u32>(54989u, 41773u), vec2<u32>(26308u, 0u), vec2<u32>(94086u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(19436u, 1u));

var<private> global3: vec2<u32>;

var<private> global4: array<Struct_2, 30>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: bool, arg_1: vec4<bool>, arg_2: vec2<bool>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = !(all(select(vec4<bool>(arg_2.x, true, true, arg_0), arg_1, vec4<bool>(arg_1.x, true, false, arg_1.x))) || (select(true, select(arg_1.x, false, arg_1.x), arg_3.c == u_input.a.x) && arg_0));
    var var_1 = ~(select(~(~vec4<u32>(global3.x, global3.x, global3.x, global0[_wgslsmith_index_u32(4294967295u, 4u)])), ~vec4<u32>(0u, 78989u, global0[_wgslsmith_index_u32(0u, 4u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(29281u, 4u)], 4u)]) | _wgslsmith_mult_vec4_u32(vec4<u32>(global3.x, global0[_wgslsmith_index_u32(82597u, 4u)], 22212u, global0[_wgslsmith_index_u32(global3.x, 4u)]), vec4<u32>(global3.x, global3.x, 6311u, global3.x)), arg_1) & vec4<u32>(select(55369u, _wgslsmith_mod_u32(39999u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(49964u, 4u)], 4u)]), true), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(48310u, 4u)], global3.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(5437u, 4u)], 4u)]), _wgslsmith_div_vec3_u32(vec3<u32>(30100u, 0u, global3.x), vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 4u)], global0[_wgslsmith_index_u32(47199u, 4u)], 16974u))), 4u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global3.x, 1u), 4u)], 4u)], 84510u));
    var var_2 = ~vec3<i32>(-u_input.b >> (~(global0[_wgslsmith_index_u32(22603u, 4u)] >> (global3.x % 32u)) % 32u), ~12283i & _wgslsmith_clamp_i32(arg_3.c >> (global0[_wgslsmith_index_u32(12362u, 4u)] % 32u), -24758i, -46594i), -reverseBits(u_input.a.x));
    var var_3 = vec3<i32>(arg_3.c, max(-38387i, reverseBits(_wgslsmith_dot_vec2_i32(u_input.a.yy, u_input.a.zz & u_input.a.zy))), 19474i);
    global1 = reverseBits(2147483647i);
    return Struct_1(vec4<bool>(any(!(!arg_1)), !arg_1.x, true, arg_2.x));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec2<f32>) -> vec4<bool> {
    let var_0 = ~(-u_input.a);
    global2 = array<vec2<u32>, 14>();
    global0 = array<u32, 4>();
    global0 = array<u32, 4>();
    var var_1 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(263f, arg_2.x, all(vec2<bool>(arg_1.a.x, arg_0.a.x)))), 1027f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(632f - arg_3.x))), arg_2.x)), ~(-var_0.x));
    return !arg_0.a;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_2) -> f32 {
    var var_0 = !select(arg_2.a, arg_0.a, firstLeadingBit(global0[_wgslsmith_index_u32(~4294967295u, 4u)]) <= ~global3.x);
    var var_1 = arg_1;
    var var_2 = Struct_1(func_3(arg_2, func_2(any(select(vec3<bool>(true, false, true), arg_1.a.yxy, arg_2.a.x)), !var_1.a, select(arg_1.a.zw, vec2<bool>(true, false), var_0.x), Struct_2(arg_3.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(748f, arg_3.b.x)), ~arg_3.c)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.a, arg_3.a, 561f, arg_3.a)))))), arg_3.b));
    let var_3 = !(!vec3<bool>(!(arg_3.c != 2147483647i), all(vec2<bool>(arg_2.a.x, false)) | (true == var_1.a.x), true));
    var var_4 = arg_3.b;
    return -1117f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_i32(min(-2147483647i, max(1072i, ~u_input.b)), -1i);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(false, true, false, false)), global4[_wgslsmith_index_u32(global3.x, 30u)])) - _wgslsmith_div_f32(-436f, 1504f)), 915f)) * _wgslsmith_f_op_f32(f32(-1f) * -482f)));
    global1 = 1i;
    let var_2 = ~(~vec2<u32>(_wgslsmith_mod_u32(global3.x, _wgslsmith_mult_u32(global3.x, global0[_wgslsmith_index_u32(33576u, 4u)])), global0[_wgslsmith_index_u32(~global3.x, 4u)]));
    var var_3 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-738f)), -1832f))), -806f)));
    global0 = array<u32, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x);
}

