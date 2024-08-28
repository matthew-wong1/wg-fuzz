struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec4<f32>,
    d: vec4<u32>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 6>;

var<private> global1: Struct_2 = Struct_2(vec4<i32>(-63684i, i32(-2147483648), 30443i, -1i), Struct_1(vec2<u32>(4294967295u, 4294967295u), 0u), vec4<f32>(204f, -522f, 490f, 1000f), vec4<u32>(28399u, 4294967295u, 0u, 5704u), vec2<bool>(false, true));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_3, arg_1: i32, arg_2: vec4<f32>) -> i32 {
    let var_0 = vec3<bool>(true, true, any(select(!select(vec2<bool>(false, true), global1.e, global1.e), !vec2<bool>(true, global1.e.x), -1i <= _wgslsmith_add_i32(u_input.b.x, u_input.c))));
    global0 = array<bool, 6>();
    global0 = array<bool, 6>();
    let var_1 = global1.e.x;
    let var_2 = _wgslsmith_f_op_f32(-arg_2.x);
    return 42042i;
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>) -> vec2<f32> {
    var var_0 = Struct_3(all(select(vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(true, global1.e.x, arg_0.e.x, global0[_wgslsmith_index_u32(44081u, 6u)])), global1.e.x), vec2<bool>(true, !global1.e.x))), global1.b, !(!select(true, false && arg_0.e.x, global1.e.x)), -2147483647i, global1.b);
    var var_1 = Struct_1(firstLeadingBit(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(arg_0.d.zw, vec2<u32>(var_0.b.a.x, u_input.a)), reverseBits(global1.b.a)) & var_0.e.a), 1u);
    return global1.c.yx;
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec4<i32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(arg_1, vec4<i32>(-2147483647i, min(arg_2.x, arg_1.a.x), func_2(Struct_3(false, Struct_1(vec2<u32>(4294967295u, arg_1.b.a.x), 4294967295u), true, 4839i, global1.b), min(-18397i, -67910i), arg_1.c), 0i))) - global1.c.ww);
    var var_1 = global1.b;
    var var_2 = Struct_1(~var_1.a | select(_wgslsmith_mult_vec2_u32(vec2<u32>(var_1.a.x, 37925u), vec2<u32>(u_input.a, global1.b.b) ^ vec2<u32>(10309u, 4294967295u)), ~(~global1.d.zy), true), _wgslsmith_dot_vec4_u32(vec4<u32>(global1.d.x, _wgslsmith_add_u32(4294967295u & var_1.a.x, _wgslsmith_dot_vec2_u32(arg_1.d.xw, var_1.a)), global1.b.a.x, ~4294967295u), ~_wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, var_1.a.x, 48223u, 53735u), global1.d | vec4<u32>(0u, arg_1.b.b, 4294967295u, var_1.a.x))));
    var var_3 = -arg_2.zz;
    var var_4 = !select(global1.e, vec2<bool>(global1.e.x, true), !select(vec2<bool>(true, global1.e.x), vec2<bool>(global0[_wgslsmith_index_u32(global1.d.x, 6u)], global1.e.x), vec2<bool>(false, arg_1.e.x)));
    return abs(_wgslsmith_div_i32(countOneBits(var_3.x), ~u_input.c) ^ arg_2.x) | _wgslsmith_div_i32(2147483647i, 18242i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 6>();
    global1 = Struct_2(vec4<i32>(min(reverseBits(firstTrailingBit(u_input.b.x)), _wgslsmith_mult_i32(u_input.c | u_input.b.x, u_input.c)), _wgslsmith_dot_vec2_i32(u_input.b.yz, vec2<i32>(0i, global1.a.x)), -1i, func_1(!vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 6u)], global0[_wgslsmith_index_u32(u_input.a, 6u)], true), Struct_2(global1.a | vec4<i32>(global1.a.x, global1.a.x, 2147483647i, -2147483647i), Struct_1(global1.b.a, u_input.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(384f, global1.c.x, -1810f, global1.c.x)), _wgslsmith_add_vec4_u32(global1.d, vec4<u32>(u_input.a, 63181u, 35237u, u_input.a)), !global1.e), ~_wgslsmith_div_vec4_i32(global1.a, vec4<i32>(global1.a.x, global1.a.x, u_input.b.x, global1.a.x)))), global1.b, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1103f, global1.c.x, 648f, 2073f))) + global1.c) + vec4<f32>(global1.c.x, _wgslsmith_f_op_f32(min(-1988f, -1296f)), _wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_f_op_f32(sign(-280f)))))), _wgslsmith_add_vec4_u32(~select(vec4<u32>(global1.b.b, 30582u, global1.b.b, 4294967295u), vec4<u32>(29072u, global1.d.x, global1.b.a.x, global1.b.b), global0[_wgslsmith_index_u32(~0u, 6u)]), _wgslsmith_mod_vec4_u32(global1.d, global1.d)), vec2<bool>(1i > _wgslsmith_dot_vec2_i32(max(global1.a.yy, vec2<i32>(global1.a.x, global1.a.x)), countOneBits(global1.a.wz)), true));
    let var_0 = i32(-1i) * -_wgslsmith_div_i32(_wgslsmith_sub_i32(66410i, -36093i), 38134i);
    var var_1 = -(i32(-1i) * -1i);
    var_1 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(~(~0u), global1.a.x, vec2<f32>(global1.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1502f)));
}

