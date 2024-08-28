struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<f32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1;

var<private> global2: bool;

var<private> global3: Struct_1;

var<private> global4: array<i32, 5> = array<i32, 5>(-9457i, 37881i, i32(-2147483648), 15387i, 5335i);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> u32 {
    var var_0 = vec3<bool>(all(select(!vec4<bool>(true, global0.b, global1.b, global0.b), vec4<bool>(global1.c.x < global1.c.x, !global0.b, !global1.b, !global0.b), true)), global3.b, true);
    let var_1 = all(vec2<bool>(true, !global0.b));
    global3 = Struct_1(global1.d.x, !(!all(vec2<bool>(false, global0.b))), global1.c, countOneBits(u_input.b.yx));
    let var_2 = min(0i, ~_wgslsmith_mult_i32(-(global4[_wgslsmith_index_u32(global0.d.x, 5u)] & global4[_wgslsmith_index_u32(1u, 5u)]), reverseBits(global4[_wgslsmith_index_u32(global3.a, 5u)])));
    let var_3 = -497f;
    return _wgslsmith_clamp_u32(23432u, 121576u & abs(min(_wgslsmith_add_u32(u_input.a.x, 4294967295u), 30849u)), global0.d.x);
}

fn func_2() -> bool {
    global3 = Struct_1(func_3(), !all(vec3<bool>(global0.b, true, !global1.b)), _wgslsmith_f_op_vec4_f32(round(global1.c)), ~_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(~global0.d, u_input.a), ~u_input.b.xx));
    var var_0 = Struct_1(_wgslsmith_add_u32(~(6460u >> ((0u | u_input.b.x) % 32u)), firstTrailingBit(global3.a)), true, global3.c, global0.d << (vec2<u32>(49033u, 0u) % vec2<u32>(32u)));
    global1 = Struct_1(~(~(~0u)), any(!vec2<bool>(global3.b, global3.b)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.c) - global0.c)))), global3.d);
    var var_1 = Struct_1(_wgslsmith_add_u32(~(~(~4294967295u)), _wgslsmith_dot_vec4_u32(~(vec4<u32>(18723u, global3.d.x, 1u, 60760u) & vec4<u32>(global0.a, global3.d.x, 1u, global0.a)), ~select(vec4<u32>(u_input.a.x, 69203u, global1.d.x, 1u), vec4<u32>(global1.a, 39128u, global1.d.x, 16147u), false))), global0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(155f, var_0.c.x, _wgslsmith_f_op_f32(1134f - global3.c.x), 843f) * global1.c)), _wgslsmith_clamp_vec2_u32(~vec2<u32>(abs(u_input.b.x), global1.a), select(u_input.a, ~global0.d, select(vec2<bool>(true, false), vec2<bool>(global3.b, global3.b), false)) & ~_wgslsmith_div_vec2_u32(global3.d, global1.d), _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(98821u, 26188u), global0.d), vec2<u32>(~u_input.b.x, 0u))));
    global3 = Struct_1(1u, global1.b, vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.c.x - var_0.c.x), _wgslsmith_f_op_f32(floor(2126f)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global3.c.x))), -927f, var_0.c.x), min(~(~u_input.b.zy), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, global3.d.x), _wgslsmith_clamp_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, 4294967295u, var_0.d.x), vec3<u32>(0u, global0.d.x, global3.a))), _wgslsmith_mod_u32(74620u ^ global3.d.x, 45843u >> (global3.a % 32u)))));
    return _wgslsmith_dot_vec3_i32(vec3<i32>(~_wgslsmith_mult_i32(-14102i, -24007i), global4[_wgslsmith_index_u32(reverseBits(0u << (u_input.b.x % 32u)), 5u)], abs(1i)), -vec3<i32>(1i, -1i, 0i)) >= -677i;
}

fn func_1(arg_0: bool, arg_1: vec4<bool>, arg_2: vec3<bool>, arg_3: i32) -> u32 {
    let var_0 = Struct_1(firstTrailingBit(global1.d.x | _wgslsmith_add_u32(u_input.a.x, 40846u)), func_2(), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-788f, _wgslsmith_div_f32(585f, -2768f), _wgslsmith_f_op_f32(global0.c.x * 1577f), global1.c.x) * vec4<f32>(-131f, _wgslsmith_f_op_f32(round(global3.c.x)), 1470f, _wgslsmith_f_op_f32(-1880f - 1805f))) - global1.c), _wgslsmith_mod_vec2_u32(~_wgslsmith_mult_vec2_u32(u_input.b.xx, u_input.b.yy), max(countOneBits(vec2<u32>(global1.a, 4294967295u)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, global0.a), global3.d)) & ~_wgslsmith_mod_vec2_u32(vec2<u32>(global0.a, 4294967295u), global0.d)));
    global1 = var_0;
    let var_1 = !all(!arg_1.wxy);
    let var_2 = var_0;
    global2 = false;
    return abs(~u_input.a.x) ^ ~(global3.a >> (max(36925u, var_2.a) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 18831i <= global4[_wgslsmith_index_u32(global0.a, 5u)];
    global3 = Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(~global0.d.x << (func_1(global1.b, vec4<bool>(true, true, true, global1.b), vec3<bool>(true, global3.b, false), -1i) % 32u), global3.d.x, ~1u), ~u_input.b | vec3<u32>(u_input.b.x, 55455u ^ global0.d.x, global3.d.x & 1u)), false, global0.c, u_input.a);
    global4 = array<i32, 5>();
    var var_1 = ~_wgslsmith_add_vec4_u32(~vec4<u32>(_wgslsmith_sub_u32(global1.d.x, global3.a), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.d.x, global0.a, 45125u, 4294967295u), vec4<u32>(51391u, 4294967295u, global1.a, 1u)), global1.a, func_3()), abs(abs(~vec4<u32>(46476u, 46986u, 1u, 4294967295u))));
    global0 = Struct_1(~_wgslsmith_dot_vec4_u32(select(~vec4<u32>(global0.a, 4294967295u, global0.a, var_1.x), vec4<u32>(global1.d.x, 0u, global1.d.x, 24546u), !vec4<bool>(global0.b, global3.b, global1.b, global3.b)), abs(vec4<u32>(global1.d.x, 10484u, 66456u, 0u) ^ vec4<u32>(29308u, var_1.x, 27135u, global1.d.x))), !(!(!all(vec3<bool>(true, global1.b, global3.b)))), _wgslsmith_f_op_vec4_f32(-global0.c), _wgslsmith_sub_vec2_u32(vec2<u32>(~firstTrailingBit(27965u), _wgslsmith_div_u32(4294967295u, 4294967295u)), _wgslsmith_add_vec2_u32((global3.d | vec2<u32>(106471u, 0u)) << (vec2<u32>(u_input.a.x, 58696u) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(global1.d, vec2<u32>(var_1.x, 99615u)), max(vec2<u32>(u_input.b.x, global1.a), vec2<u32>(global1.d.x, 0u))))));
    let var_2 = Struct_1(~(~0u), func_2(), global3.c, ~_wgslsmith_div_vec2_u32(firstLeadingBit(_wgslsmith_add_vec2_u32(var_1.zx, u_input.a)), global1.d));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x))), _wgslsmith_f_op_f32(ceil(-577f)));
    global4 = array<i32, 5>();
    var var_4 = Struct_1(max(var_1.x, 45446u), false, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global1.c.x), 1680f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.x)), var_2.c.x)), global3.d);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(select(var_1.zx, firstTrailingBit(vec2<u32>(var_2.a, var_1.x) ^ var_2.d), select(vec2<bool>(true, true), !vec2<bool>(var_4.b, global3.b), global0.b))), 62024u, global0.d, ~(~func_3()), _wgslsmith_f_op_f32(select(1235f, var_3.x, var_4.b)));
}

