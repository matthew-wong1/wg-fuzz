struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec3<f32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: u32,
    b: f32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: vec4<i32>,
    c: f32,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 22>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: Struct_5) -> bool {
    global0 = array<bool, 22>();
    global0 = array<bool, 22>();
    return !(!all(!select(vec3<bool>(false, arg_2.d.a.x, false), vec3<bool>(global0[_wgslsmith_index_u32(285u, 22u)], arg_2.d.a.x, global0[_wgslsmith_index_u32(1u, 22u)]), vec3<bool>(false, true, arg_2.d.a.x))));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec3<i32>) -> vec2<bool> {
    let var_0 = !func_3(_wgslsmith_add_i32(~arg_2.x, ~(arg_2.x << (u_input.b.x % 32u))), Struct_3(countOneBits(arg_1.d), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(260f, arg_0)), _wgslsmith_div_f32(arg_1.b, arg_0)))), Struct_5(_wgslsmith_clamp_i32(0i >> (u_input.d % 32u), u_input.a.x, 26786i), vec4<i32>(u_input.a.x, u_input.a.x ^ arg_2.x, u_input.a.x, u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-244f * 525f)), arg_1, arg_1.d));
    let var_1 = Struct_5(-(i32(-1i) * -(i32(-1i) * -2147483647i)), -u_input.a, arg_1.b, arg_1, ~max(u_input.d, ~arg_1.d | ~u_input.c));
    global0 = array<bool, 22>();
    let var_2 = Struct_1(arg_1.a, _wgslsmith_f_op_f32(arg_1.c.x * _wgslsmith_f_op_f32(f32(-1f) * -600f)), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-913f - 1580f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.b - 1460f))))), _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0 + -854f)))), 1000f), ~(~_wgslsmith_add_u32(9621u & var_1.d.d, max(u_input.b.x, 1u))));
    global0 = array<bool, 22>();
    return var_1.d.a;
}

fn func_1() -> StorageBuffer {
    let var_0 = select(vec2<bool>(false, true), select(select(vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, u_input.c), 22u)], true), vec2<bool>(true, false), vec2<bool>(true, true)), !select(vec2<bool>(global0[_wgslsmith_index_u32(10070u, 22u)], global0[_wgslsmith_index_u32(u_input.b.x, 22u)]), !vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.d, 22u)]), vec2<bool>(false, true)), !(!select(vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 22u)]), vec2<bool>(global0[_wgslsmith_index_u32(51081u, 22u)], global0[_wgslsmith_index_u32(4294967295u, 22u)]), false))), !select(!(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 22u)], false)), func_2(_wgslsmith_f_op_f32(-183f - -1348f), Struct_1(vec2<bool>(global0[_wgslsmith_index_u32(88184u, 22u)], false), -1000f, vec3<f32>(-1735f, 160f, -369f), 65915u), ~vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), func_2(_wgslsmith_f_op_f32(-157f - -906f), Struct_1(vec2<bool>(false, false), 1000f, vec3<f32>(1301f, -1653f, -698f), 24974u), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, 0i, 38134i), vec3<i32>(u_input.a.x, -2147483647i, 2147483647i)))));
    var var_1 = ~u_input.a.x;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1704f + -1000f), 128f))))));
    var var_3 = Struct_1(var_0, var_2, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, 183f, var_2) + vec3<f32>(var_2, var_2, var_2))))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1207f, var_2, var_2)) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1898f, var_2, 1499f), vec3<f32>(var_2, 2506f, var_2)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2, var_2, var_2), vec3<f32>(-1024f, -298f, -928f), global0[_wgslsmith_index_u32(u_input.c, 22u)])), vec3<f32>(var_2, var_2, var_2)))))), firstTrailingBit(~(~(~0u))));
    var var_4 = Struct_4(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, _wgslsmith_f_op_f32(var_2 - var_2), var_3.c.x, _wgslsmith_f_op_f32(floor(772f)))))), Struct_1(var_3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.c.x + var_2))), var_3.c, u_input.c));
    return StorageBuffer(select(u_input.a.xx, vec2<i32>(1i, _wgslsmith_mult_i32(~u_input.a.x, -11627i)), var_4.b.a.x && any(vec3<bool>(var_0.x, true, true))), _wgslsmith_f_op_f32(var_3.c.x - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1392f), var_2))))), u_input.b.zz);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

