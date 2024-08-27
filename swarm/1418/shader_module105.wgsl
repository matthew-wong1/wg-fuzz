struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: bool;

var<private> global2: array<vec3<u32>, 2> = array<vec3<u32>, 2>(vec3<u32>(0u, 15739u, 12846u), vec3<u32>(28114u, 1u, 30097u));

var<private> global3: Struct_2;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: vec2<bool>, arg_3: Struct_1) -> vec4<u32> {
    global0 = Struct_2(abs(select(-global0.a, firstLeadingBit(global0.a & global3.a), true)), vec3<bool>(all(!vec2<bool>(arg_1.x, arg_1.x)), true, arg_3.c.x != _wgslsmith_f_op_f32(max(498f, _wgslsmith_div_f32(2360f, 241f)))), global3.c);
    global0 = Struct_2(global3.a, global3.b, arg_3);
    global1 = arg_2.x;
    global2 = array<vec3<u32>, 2>();
    global1 = select(true, false, arg_1.x);
    return _wgslsmith_add_vec4_u32(~firstTrailingBit(max(abs(vec4<u32>(1u, 1u, global3.c.a, global3.c.a)), min(vec4<u32>(global3.c.a, global3.c.a, 4294967295u, global0.c.a), vec4<u32>(arg_3.a, global3.c.a, 4294967295u, global0.c.a)))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, ~4294967295u, u_input.a.x | 49385u, select(arg_3.a, 4294967295u, false)), ~abs(vec4<u32>(4294967295u, 1u, 44215u, 4294967295u))));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: u32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(801f, -610f)) + _wgslsmith_f_op_f32(f32(-1f) * -183f))));
    global2 = array<vec3<u32>, 2>();
    var_0 = -643f;
    let var_1 = _wgslsmith_clamp_vec4_u32(firstTrailingBit(func_3(!vec3<bool>(global3.b.x, true, true), !vec4<bool>(true, global0.b.x, false, global3.b.x), vec2<bool>(global3.b.x, false), Struct_1(0u, global0.c.b, global0.c.c))), vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, 0u, arg_1), u_input.a), global0.c.a), global0.c.a, min(arg_1, 4294967295u), arg_2), reverseBits(firstLeadingBit(max(vec4<u32>(global0.c.a, 0u, global3.c.a, global0.c.a), vec4<u32>(global3.c.a, 4294967295u, arg_2, 68181u))))) | ~_wgslsmith_clamp_vec4_u32(vec4<u32>(global3.c.a, _wgslsmith_dot_vec3_u32(vec3<u32>(273u, 1u, 12229u), vec3<u32>(12326u, 11679u, global0.c.a)), 37450u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_1, 0u, 27793u), vec4<u32>(23880u, 96041u, 22324u, arg_1))), vec4<u32>(48115u, 37740u, firstLeadingBit(arg_1), _wgslsmith_sub_u32(arg_2, 1u)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(12335u, 4294967295u, 0u, arg_1), vec4<u32>(global3.c.a, global3.c.a, 37171u, 40169u)));
    global1 = all(select(vec4<bool>((9849i != arg_0) & (global3.b.x != global0.b.x), global0.b.x, false, true), vec4<bool>(all(!vec3<bool>(global0.b.x, global3.b.x, global0.b.x)), global0.b.x, true, any(global0.b.yy)), global0.b.x));
    return global3.c.a;
}

fn func_1() -> i32 {
    var var_0 = min(vec2<u32>(global0.c.a, ~(~func_2(35437i, global0.c.a, 6591u))), vec2<u32>(~_wgslsmith_sub_u32(~global3.c.a, ~global3.c.a), global3.c.a));
    var var_1 = ~global3.a.x & countOneBits(global0.a.x);
    var_0 = ~u_input.a.xy;
    let var_2 = _wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(global3.c.a, 2u)] ^ countOneBits(global2[_wgslsmith_index_u32(~(~global0.c.a), 2u)]), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, ~(u_input.a.x ^ global3.c.a), 15750u), countOneBits(_wgslsmith_add_vec3_u32(~u_input.a, vec3<u32>(0u, var_0.x, 1u) << (vec3<u32>(12090u, 0u, var_0.x) % vec3<u32>(32u))))));
    var_0 = reverseBits(~vec2<u32>(_wgslsmith_clamp_u32(u_input.a.x, ~99090u, var_0.x), u_input.a.x));
    return global0.a.x;
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: Struct_3, arg_3: vec4<i32>) -> u32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1136f - 1171f)))), arg_1)), global0.c.c.x, _wgslsmith_div_f32(-1000f, -191f), arg_1);
    let var_1 = Struct_3(!any(!vec4<bool>(false, global3.b.x, global0.b.x, false)), 1000f, abs(-arg_2.d.b), arg_2.d);
    let var_2 = -615f;
    var var_3 = !(!arg_2.a);
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(405f - 406f) * global3.c.c.x) * arg_1), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(237f, _wgslsmith_f_op_f32(-global3.c.c.x), arg_2.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.c.c.x))));
    return var_1.d.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_add_u32(func_4(func_1(), _wgslsmith_f_op_f32(round(global3.c.c.x)), Struct_3(false, global3.c.c.x, global3.c.b, Struct_1(2456u, 1i, vec3<f32>(global0.c.c.x, 1000f, global0.c.c.x))), vec4<i32>(global3.a.x, global0.a.x, -35965i, global0.c.b)), ~4294967295u) | max(1u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, ~global0.c.a), global0.c.a));
    global2 = array<vec3<u32>, 2>();
    global2 = array<vec3<u32>, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(39262i), _wgslsmith_mod_vec2_i32(global0.a.yz, global0.a.ww), u_input.a.yz, _wgslsmith_mult_vec4_u32(~vec4<u32>(max(global3.c.a, global0.c.a), global3.c.a, 75685u, 6413u), ~vec4<u32>(global0.c.a, global3.c.a, 4294967295u, 40720u) & vec4<u32>(func_4(2147483647i, global0.c.c.x, Struct_3(false, global3.c.c.x, global0.c.b, global3.c), vec4<i32>(2147483647i, 11712i, global0.c.b, 1i)), u_input.a.x, u_input.a.x, func_4(global3.c.b, global0.c.c.x, Struct_3(true, -1612f, global0.c.b, Struct_1(u_input.a.x, 2147483647i, global0.c.c)), vec4<i32>(global3.a.x, 24079i, 15276i, 0i)))), firstLeadingBit(vec3<i32>(_wgslsmith_div_i32(49126i ^ global3.c.b, global0.c.b ^ -28499i), abs(global3.a.x), countOneBits(global0.a.x) ^ global3.a.x)));
}

