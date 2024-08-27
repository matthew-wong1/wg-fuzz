struct Struct_1 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: array<Struct_1, 19>;

var<private> global2: array<u32, 16>;

var<private> global3: array<vec3<i32>, 26>;

var<private> global4: vec3<i32> = vec3<i32>(52357i, 0i, 16092i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> f32 {
    global3 = array<vec3<i32>, 26>();
    return _wgslsmith_f_op_f32(-794f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -462f)) - _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-1086f - _wgslsmith_f_op_f32(f32(-1f) * -551f)))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = global4.x;
    global2 = array<u32, 16>();
    let var_1 = -countOneBits(0i) & -global4.x;
    var var_2 = true | all(!vec3<bool>(all(vec4<bool>(false, false, true, true)), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 16u)], 16u)] >= 67485u, false));
    global1 = array<Struct_1, 19>();
    return 4294967295u;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(reverseBits(firstLeadingBit(u_input.c)), vec4<u32>(firstLeadingBit(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(arg_1.b, 4294967295u)), u_input.b)), abs(_wgslsmith_clamp_u32(~arg_1.b, ~global2[_wgslsmith_index_u32(79118u, 16u)], ~1u)), 42950u, _wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(4294967295u, global2[_wgslsmith_index_u32(71856u, 16u)]), arg_0.b), 1u))), 16u)];
    var var_0 = !vec2<bool>((_wgslsmith_add_i32(32993i, -1i) < -global4.x) | true, _wgslsmith_div_u32(21779u, ~1u) > countOneBits(u_input.c.x));
    global1 = array<Struct_1, 19>();
    var var_1 = _wgslsmith_f_op_f32(abs(-778f));
    let var_2 = vec3<bool>(false, all(select(vec4<bool>(true | var_0.x, !var_0.x, var_0.x, var_0.x & var_0.x), !(!vec4<bool>(var_0.x, var_0.x, true, false)), !select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(false, true, false, var_0.x), vec4<bool>(var_0.x, true, var_0.x, var_0.x)))), var_0.x);
    return Struct_1(-187f, _wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.b.x, _wgslsmith_mod_u32(global2[_wgslsmith_index_u32(arg_1.b, 16u)], 4294967295u)), 0u) >> (_wgslsmith_sub_u32(arg_1.b, global2[_wgslsmith_index_u32(arg_1.b, 16u)]) % 32u));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: vec4<f32>) -> f32 {
    var var_0 = func_4(func_4(func_4(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0.b, _wgslsmith_mod_u32(global2[_wgslsmith_index_u32(arg_0.b, 16u)], arg_0.b)), 19u)], Struct_1(-237f, abs(arg_0.b))), func_4(arg_0, Struct_1(arg_0.a, arg_0.b))), func_4(func_4(Struct_1(_wgslsmith_f_op_f32(1049f + arg_2.x), arg_0.b ^ 1u), func_4(global1[_wgslsmith_index_u32(1u, 19u)], Struct_1(arg_0.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 16u)], 16u)]))), Struct_1(509f, u_input.a.x)));
    var var_1 = arg_2.xy;
    global2 = array<u32, 16>();
    var var_2 = func_4(arg_0, global1[_wgslsmith_index_u32(17597u, 19u)]);
    global4 = _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, _wgslsmith_mod_i32(1i, global4.x), ~(-2147483647i)), global3[_wgslsmith_index_u32(var_0.b, 26u)]), vec3<i32>(reverseBits(-2147483647i), countOneBits(0i), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(global4.x, global4.x, -1i), global3[_wgslsmith_index_u32(arg_0.b, 26u)]), global3[_wgslsmith_index_u32(25984u, 26u)] >> (u_input.a % vec3<u32>(32u)))) | -vec3<i32>(_wgslsmith_add_i32(-1i, -2147483647i), global4.x, -73565i));
    return var_0.a;
}

fn func_1(arg_0: i32, arg_1: vec3<u32>) -> i32 {
    global0 = global2[_wgslsmith_index_u32(0u, 16u)];
    global0 = global2[_wgslsmith_index_u32(~0u, 16u)];
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec4_u32(u_input.c, u_input.c << (abs(~u_input.c) % vec4<u32>(32u)))), 19u)];
    var var_1 = _wgslsmith_f_op_f32(func_5(func_4(Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2()))), ~func_3(global1[_wgslsmith_index_u32(u_input.b.x, 19u)], global1[_wgslsmith_index_u32(4294967295u, 19u)])), global1[_wgslsmith_index_u32(1u, 19u)]), select(true, true, !(1i >= reverseBits(global4.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, var_0.a, 1072f, var_0.a) * vec4<f32>(461f, var_0.a, var_0.a, 1915f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, 1125f, var_0.a, var_0.a)) - vec4<f32>(-692f, var_0.a, 1000f, -608f))))));
    global4 = vec3<i32>(-reverseBits((arg_0 & arg_0) & (global4.x | -17260i)), ~(~(max(global4.x, 22778i) ^ reverseBits(-2147483647i))), arg_0);
    return -max(2147483647i, global4.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global4.x;
    var var_1 = -vec4<i32>(_wgslsmith_mod_i32(1i, 1i) >> (1u % 32u), func_1(firstTrailingBit(41583i), _wgslsmith_mod_vec3_u32(u_input.a, u_input.a)) << ((~4294967295u | _wgslsmith_dot_vec4_u32(vec4<u32>(76876u, 4294967295u, 7547u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 16u)], 16u)]), u_input.c)) % 32u), _wgslsmith_mod_i32(-(~9925i), 12034i), -1i);
    global3 = array<vec3<i32>, 26>();
    let var_2 = -global4.x;
    var var_3 = 1u >> ((0u | select(u_input.c.x, 0u, 17059i > -var_2)) % 32u);
    var var_4 = -50022i;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(select(_wgslsmith_clamp_vec2_u32(u_input.b, u_input.c.yw, vec2<u32>(u_input.a.x, 3115u)), u_input.b, !any(vec2<bool>(false, true)))), _wgslsmith_add_u32(1u, 1u));
}

