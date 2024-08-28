struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: bool;

var<private> global2: array<f32, 24>;

var<private> global3: array<Struct_3, 24>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: vec2<bool>) -> vec3<bool> {
    global3 = array<Struct_3, 24>();
    global0 = Struct_2(global0.a, global0.b, arg_1.b.c);
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(-1815f)), arg_0, -912f, global0.b.a) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -505f), _wgslsmith_f_op_f32(ceil(-699f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1200f + -612f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + 1434f) * global0.c.a)));
    let var_2 = global0.b.b;
    return !(!select(select(!vec3<bool>(true, arg_2.x, true), !vec3<bool>(arg_2.x, false, false), arg_1.c), vec3<bool>(arg_1.c, !arg_2.x, false), !arg_1.c));
}

fn func_2() -> Struct_1 {
    var var_0 = vec2<bool>(!(true | any(vec4<bool>(true, true, true, true))), !all(func_3(797f, global3[_wgslsmith_index_u32(~5645u, 24u)], vec2<bool>(true, false))));
    var var_1 = var_0.x;
    return global0.c;
}

fn func_1(arg_0: u32, arg_1: Struct_4) -> vec2<u32> {
    var var_0 = !select(!vec2<bool>(any(vec2<bool>(false, true)), all(vec2<bool>(false, true))), !vec2<bool>(all(vec2<bool>(true, false)), true), all(vec2<bool>(any(vec2<bool>(true, true)), true)));
    var var_1 = arg_1.b >> ((~(~_wgslsmith_add_u32(1u, arg_1.c.b)) & u_input.c) % 32u);
    var var_2 = Struct_2(-(~arg_1.b), func_2(), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~u_input.c, 24u)])), ~1u));
    let var_3 = Struct_2(u_input.b.x, var_2.b, var_2.b);
    let var_4 = firstTrailingBit(_wgslsmith_add_u32(28036u, _wgslsmith_div_u32(1u, u_input.c)) << (~(var_3.c.b << (1u % 32u)) % 32u)) > global0.b.b;
    return firstTrailingBit(abs(~(select(vec2<u32>(25728u, u_input.c), vec2<u32>(39448u, 4294967295u), var_0.x) << (countOneBits(vec2<u32>(global0.c.b, 5054u)) % vec2<u32>(32u)))));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: f32, arg_3: vec4<f32>) -> u32 {
    var var_0 = -940f;
    var_0 = _wgslsmith_div_f32(arg_3.x, _wgslsmith_div_f32(arg_3.x, global2[_wgslsmith_index_u32(~(firstLeadingBit(1u) & u_input.c), 24u)]));
    let var_1 = func_2();
    let var_2 = _wgslsmith_add_i32(min(i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 1i, 0i, 17705i), u_input.b), -max(18793i, 1i) & arg_1.b.a), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(select(vec2<i32>(global0.a, u_input.a), vec2<i32>(u_input.a, -21i), vec2<bool>(arg_1.c, arg_1.c)), _wgslsmith_sub_vec2_i32(vec2<i32>(arg_1.b.a, global0.a), vec2<i32>(u_input.b.x, 2147483647i))), -1i), vec2<i32>(_wgslsmith_mod_i32(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 2147483647i, global0.a, u_input.a), u_input.b)), global0.a)));
    var var_3 = global0.c;
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(~u_input.c, ~func_4(func_1(u_input.c, Struct_4(Struct_1(-670f, u_input.c), global0.a, global0.b)), global3[_wgslsmith_index_u32(~global0.c.b, 24u)], global0.c.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 24u)], 730f, -894f, global0.c.a) + vec4<f32>(-246f, global0.b.a, 626f, -1932f))));
    let var_1 = ~select(firstLeadingBit(vec4<i32>(-2147483647i, _wgslsmith_add_i32(u_input.b.x, global0.a), _wgslsmith_mod_i32(u_input.b.x, global0.a), max(-17836i, -1i))), ~vec4<i32>(_wgslsmith_clamp_i32(2147483647i, u_input.a, -20830i), 1i, -2147483647i, i32(-1i) * -1i), vec4<bool>(true, true, all(vec4<bool>(true, true, true, true)), true));
    var var_2 = global3[_wgslsmith_index_u32(~var_0, 24u)];
    let x = u_input.a;
    s_output = StorageBuffer(1i, ~(~40953u), ~(~(~vec3<u32>(38797u, 27735u, 0u))), countOneBits(vec4<u32>(98234u, select(u_input.c >> (u_input.c % 32u), ~global0.b.b, true), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(39562u, global0.b.b, var_0), global0.c.b), 41519u)));
}

