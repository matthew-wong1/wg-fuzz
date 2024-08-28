struct Struct_1 {
    a: bool,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 6> = array<u32, 6>(0u, 16285u, 0u, 4294967295u, 10206u, 1u);

var<private> global1: vec4<bool> = vec4<bool>(true, false, true, true);

var<private> global2: bool = false;

var<private> global3: Struct_1;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1) -> i32 {
    global3 = Struct_1(false, _wgslsmith_f_op_vec3_f32(max(arg_1.b, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(arg_1.b.x + -1014f), _wgslsmith_f_op_f32(max(-873f, -1115f)), 1444f))))));
    let var_0 = all(!(!global1.yxw));
    var var_1 = ~u_input.c.x;
    let var_2 = arg_1;
    let var_3 = arg_1;
    return -2863i;
}

fn func_3(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_1, arg_3: u32) -> vec2<bool> {
    global2 = true;
    var var_0 = Struct_1(select(global3.a, _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b, u_input.b, u_input.a.x, u_input.b), vec4<i32>(u_input.a.x, -11429i, -1i, u_input.b)) <= -36731i, true), global3.b);
    let var_1 = arg_2;
    global3 = var_1;
    global0 = array<u32, 6>();
    return global1.xy;
}

fn func_1() -> vec3<u32> {
    let var_0 = vec4<i32>(2147483647i, u_input.a.x, select(countOneBits(~func_2(u_input.a, Struct_1(true, vec3<f32>(global3.b.x, -854f, global3.b.x)))), func_2(u_input.a, Struct_1(!global3.a, global3.b)), global1.x), ~(i32(-1i) * -2147483647i));
    var var_1 = Struct_1(any(func_3(~max(vec4<u32>(0u, 1u, global0[_wgslsmith_index_u32(1u, 6u)], 19718u), vec4<u32>(u_input.c.x, u_input.c.x, 31641u, 0u)), all(!vec2<bool>(true, global1.x)), Struct_1(false, vec3<f32>(1094f, -2579f, 347f)), max(max(52034u, 48630u), 1u))), _wgslsmith_f_op_vec3_f32(-global3.b));
    var_1 = Struct_1(any(!vec2<bool>(global3.b.x >= 963f, true)), var_1.b);
    var var_2 = Struct_1(!(!global3.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.b * var_1.b) * _wgslsmith_div_vec3_f32(vec3<f32>(-476f, -207f, -1154f), var_1.b)) - global3.b));
    let var_3 = select(vec3<i32>(u_input.a.x, 26521i, max(-28037i, i32(-1i) * -u_input.b)), select(var_0.ywz, reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, 0i, 45069i) ^ var_0.wxw, u_input.a)), !global1.wxy), !vec3<bool>(any(select(global1.wyx, vec3<bool>(global3.a, true, var_2.a), global1.zwz)), !all(vec4<bool>(true, var_1.a, false, global3.a)), any(vec2<bool>(true, var_2.a)) && true));
    return _wgslsmith_mod_vec3_u32(vec3<u32>(~global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(33636u, 1333u, 1u), vec3<u32>(4294967295u, 4294967295u, 1u)), 6u)], ~firstTrailingBit(max(global0[_wgslsmith_index_u32(49804u, 6u)], u_input.c.x)), 15773u), firstTrailingBit(firstLeadingBit(_wgslsmith_div_vec3_u32(~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9161u, 6u)], 6u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23368u, 6u)], 6u)], 6u)], u_input.c.x), vec3<u32>(58316u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 6u)], 6u)], 6u)])))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~func_1() ^ abs(~vec3<u32>(u_input.c.x, 0u, u_input.c.x) | vec3<u32>(~global0[_wgslsmith_index_u32(16115u, 6u)], func_1().x, 47498u));
    global0 = array<u32, 6>();
    var var_1 = Struct_1(_wgslsmith_div_f32(-1000f, 342f) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1245f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 914f, -294f) * vec3<f32>(-1264f, -947f, -1000f)), global3.b)))));
    var var_2 = Struct_1(all(vec2<bool>(true, !var_1.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.b)));
    var var_3 = 1i >> (abs(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(45678u, global0[_wgslsmith_index_u32(8500u, 6u)], global0[_wgslsmith_index_u32(1u, 6u)], 42497u), vec4<u32>(426u, 94689u, u_input.c.x, 13553u)), min(vec4<u32>(u_input.c.x, 1281u, global0[_wgslsmith_index_u32(var_0.x, 6u)], u_input.c.x), vec4<u32>(0u, u_input.c.x, 4294967295u, 10929u))), _wgslsmith_dot_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(65902u, 6u)], 51210u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.x, 6u)], 6u)], 30773u), ~vec4<u32>(u_input.c.x, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 6u)], 6u)], 6u)], var_0.x)))) % 32u);
    var var_4 = var_2.b.x;
    var var_5 = global3.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(29146u, _wgslsmith_div_u32(_wgslsmith_mult_u32(1u, u_input.c.x), ~(global0[_wgslsmith_index_u32(1u, 6u)] | 1u))));
}

