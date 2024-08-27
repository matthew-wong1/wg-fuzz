struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 21>;

var<private> global1: u32;

var<private> global2: array<vec4<u32>, 23> = array<vec4<u32>, 23>(vec4<u32>(4294967295u, 39544u, 1u, 24144u), vec4<u32>(0u, 0u, 0u, 27876u), vec4<u32>(8075u, 0u, 76115u, 83515u), vec4<u32>(20004u, 0u, 4893u, 4294967295u), vec4<u32>(1u, 33598u, 76551u, 4294967295u), vec4<u32>(0u, 1u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 0u, 88100u, 52033u), vec4<u32>(1u, 4294967295u, 69497u, 71228u), vec4<u32>(0u, 1u, 10542u, 0u), vec4<u32>(1u, 0u, 4294967295u, 0u), vec4<u32>(0u, 4294967295u, 30116u, 4294967295u), vec4<u32>(1u, 59007u, 4294967295u, 68174u), vec4<u32>(0u, 10819u, 10404u, 0u), vec4<u32>(12765u, 1u, 1u, 91276u), vec4<u32>(13571u, 1u, 26733u, 6769u), vec4<u32>(16652u, 4294967295u, 1514u, 48457u), vec4<u32>(1u, 1u, 0u, 1u), vec4<u32>(13802u, 1u, 119863u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 0u, 1u), vec4<u32>(25237u, 17921u, 4294967295u, 44944u), vec4<u32>(21421u, 4294967295u, 36184u, 0u), vec4<u32>(49648u, 4294967295u, 1u, 32994u), vec4<u32>(68241u, 1u, 15395u, 33156u));

var<private> global3: u32 = 4294967295u;

var<private> global4: array<vec3<f32>, 22>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec4<u32>, arg_1: u32) -> bool {
    let var_0 = countOneBits(-1i);
    var var_1 = vec2<u32>(53292u, arg_0.x);
    global0 = array<vec3<f32>, 21>();
    return _wgslsmith_add_i32(var_0, var_0) < firstTrailingBit(countOneBits(_wgslsmith_add_i32(-22446i, var_0)));
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    global0 = array<vec3<f32>, 21>();
    let var_0 = !(!vec2<bool>(any(vec2<bool>(false, arg_0.c)), func_2(vec4<u32>(1u, 1u, 41635u, 4294967295u), max(u_input.a, arg_0.b.x))));
    global1 = ~arg_0.b.x;
    let var_1 = vec3<bool>(false, arg_0.a.x, !(57261u == ~(~arg_0.b.x)));
    global1 = 1u;
    return Struct_1(!select(vec2<bool>(!var_0.x, true), arg_0.a, !arg_0.a), vec4<u32>(_wgslsmith_mod_u32(~1u, 57403u), firstLeadingBit(1u), arg_0.b.x, ~(~arg_0.b.x)) | vec4<u32>(~4294967295u, ~arg_0.b.x ^ ~u_input.a, 3661u, ~arg_0.b.x), !(!(!var_1.x)));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> vec4<u32> {
    let var_0 = func_1(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1, 492f))));
    global2 = array<vec4<u32>, 23>();
    global0 = array<vec3<f32>, 21>();
    let var_1 = (u_input.e ^ abs(u_input.e)) << (~(~select(vec2<u32>(977u, u_input.a), reverseBits(vec2<u32>(var_0.b.x, 17458u)), !vec2<bool>(arg_0.a.x, false))) % vec2<u32>(32u));
    var var_2 = -400f != _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1 * arg_1)))))));
    return select(~(~reverseBits(vec4<u32>(40586u, 19198u, 12280u, var_0.b.x))), arg_0.b, !var_0.a.x);
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: Struct_2) -> StorageBuffer {
    let var_0 = Struct_3(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.a, 13729u), abs(vec2<u32>(4294967295u, 4294967295u))));
    var var_1 = !select(vec2<bool>(arg_0.x == _wgslsmith_div_i32(1i, arg_0.x), any(!vec3<bool>(arg_2.d.a.x, true, false))), arg_2.a, all(vec3<bool>(arg_2.b.a.x, true, any(vec3<bool>(true, arg_2.b.c, true)))));
    var var_2 = func_1(Struct_1(select(!arg_2.b.a, select(vec2<bool>(var_1.x, true), !vec2<bool>(arg_2.d.a.x, false), true), select(!arg_2.d.a, !arg_2.a, var_1.x & arg_2.a.x)), select(_wgslsmith_div_vec4_u32(arg_2.b.b, arg_2.b.b), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, arg_2.d.b.x, u_input.a, arg_1.a), vec4<u32>(var_0.a, u_input.a, 1u, 1u)), arg_2.d.b), select(select(vec4<bool>(false, var_1.x, var_1.x, arg_2.a.x), vec4<bool>(false, false, arg_2.b.c, var_1.x), vec4<bool>(true, true, var_1.x, arg_2.a.x)), !vec4<bool>(true, arg_2.b.c, var_1.x, true), true)), func_1(arg_2.b, _wgslsmith_f_op_f32(f32(-1f) * -1640f)).a.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1447f, -1000f)) + -702f))));
    global0 = array<vec3<f32>, 21>();
    let var_3 = Struct_2(select(vec2<bool>(arg_2.a.x, false), var_2.a, arg_2.a), arg_2.d, any(vec2<bool>(var_1.x, false)), arg_2.b);
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(2937f, -254f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-354f)), _wgslsmith_f_op_f32(trunc(-3352f)))))), vec2<u32>(~_wgslsmith_mod_u32(~0u, max(91868u, 12372u)), 15369u | (1u ^ ~arg_2.b.b.x)), vec3<f32>(_wgslsmith_f_op_f32(trunc(-478f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(694f, -1000f)) + _wgslsmith_f_op_f32(f32(-1f) * -146f)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-305f, 182f) - 1245f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-533f))))), _wgslsmith_clamp_u32(30279u, var_2.b.x, ~(~arg_2.d.b.x & 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(~(~select(vec2<i32>(u_input.e.x, u_input.d), select(vec2<i32>(-2147483647i, u_input.e.x), u_input.e, vec2<bool>(true, true)), vec2<bool>(true, true))), Struct_3(0u), Struct_2(!(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false))), Struct_1(vec2<bool>(any(vec4<bool>(true, true, false, true)), false), func_3(func_1(Struct_1(vec2<bool>(false, true), global2[_wgslsmith_index_u32(53691u, 23u)], true), 2119f), -1288f), all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)))), true, Struct_1(vec2<bool>(true, true), vec4<u32>(~u_input.c.x, ~12607u, 4294967295u, 18234u), true)));
}

