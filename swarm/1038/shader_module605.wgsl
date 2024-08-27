struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: f32,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 8>;

var<private> global1: f32;

var<private> global2: array<u32, 30> = array<u32, 30>(645u, 49046u, 0u, 31445u, 40490u, 12089u, 63478u, 53476u, 4294967295u, 4294967295u, 66126u, 0u, 1u, 18115u, 14406u, 1u, 0u, 1u, 30994u, 35716u, 1u, 4294967295u, 55494u, 50108u, 10702u, 47100u, 1u, 4294967295u, 96107u, 22057u);

var<private> global3: array<i32, 28>;

var<private> global4: Struct_1 = Struct_1(vec4<i32>(31505i, 1i, 41106i, 24867i), true, 402f, 0u, 758f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: vec4<f32>, arg_1: u32, arg_2: vec4<u32>, arg_3: f32) -> bool {
    return !(global4.e == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1003f, global4.c))));
}

fn func_3() -> u32 {
    global1 = global4.e;
    var var_0 = _wgslsmith_div_i32(global4.a.x, max(global4.a.x, global3[_wgslsmith_index_u32(41760u, 28u)]));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.e) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2062f, global4.e)))))));
    var var_1 = vec3<i32>(-global3[_wgslsmith_index_u32(min(_wgslsmith_div_u32(u_input.a, 0u), 4294967295u), 28u)], 10680i, -global3[_wgslsmith_index_u32(~(~(~global4.d)), 28u)]);
    var var_2 = Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(firstTrailingBit(_wgslsmith_dot_vec3_i32(global4.a.zwz, global4.a.zxz)), -1i, _wgslsmith_add_i32(-1i, -2147483647i), ~_wgslsmith_div_i32(global4.a.x, 2147483647i)), global4.a), true == !global4.b, 253f, global2[_wgslsmith_index_u32(0u, 30u)], global4.c);
    return _wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(global4.d, 8u)], ~((~vec4<u32>(u_input.a, 1u, global2[_wgslsmith_index_u32(42105u, 30u)], 0u) >> (global0[_wgslsmith_index_u32(61463u, 8u)] % vec4<u32>(32u))) | ~select(vec4<u32>(global2[_wgslsmith_index_u32(u_input.a, 30u)], 1u, var_2.d, global2[_wgslsmith_index_u32(0u, 30u)]), vec4<u32>(global4.d, 1u, 4294967295u, 9888u), vec4<bool>(global4.b, global4.b, false, false))));
}

fn func_2() -> u32 {
    let var_0 = any(select(!select(!vec2<bool>(global4.b, global4.b), vec2<bool>(global4.b, global4.b), vec2<bool>(true, true)), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), all(!vec4<bool>(global4.b, false, true, global4.b))));
    let var_1 = !(false || !all(!vec3<bool>(true, global4.b, global4.b)));
    global2 = array<u32, 30>();
    global1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(global4.e, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global4.c, 2450f) + 1454f), 638f))) + global4.e);
    var var_2 = Struct_1(vec4<i32>(countOneBits(select(-73318i, 1i, global4.b)), global3[_wgslsmith_index_u32(global4.d, 28u)], ~(~global3[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global4.d, 30u)], 28u)]), min(-global4.a.x, ~_wgslsmith_dot_vec3_i32(global4.a.ywx, vec3<i32>(global3[_wgslsmith_index_u32(62246u, 28u)], global3[_wgslsmith_index_u32(0u, 28u)], -1i)))), global4.a.x > -51846i, global4.e, _wgslsmith_add_u32(~_wgslsmith_mod_u32(abs(0u), global2[_wgslsmith_index_u32(~global4.d, 30u)]), func_3()), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.c * global4.e)))));
    return var_2.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(func_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.c, global4.c, global4.c, global4.c)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global4.c, -1000f, 478f, 830f) * vec4<f32>(-122f, global4.c, global4.c, 218f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1299f, global4.c, global4.c, global4.c) + vec4<f32>(global4.c, global4.e, 435f, global4.e))), 29873u, _wgslsmith_clamp_vec4_u32(vec4<u32>(25851u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(750u, 65582u)), 49089u, u_input.a), ~_wgslsmith_mult_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(global4.d, 30u)], global2[_wgslsmith_index_u32(u_input.a, 30u)], 64198u, global2[_wgslsmith_index_u32(u_input.a, 30u)]), vec4<u32>(u_input.a, global2[_wgslsmith_index_u32(4294967295u, 30u)], u_input.a, 0u)), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 1u, u_input.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(51076u, 30u)], 30u)]) | global0[_wgslsmith_index_u32(u_input.a, 8u)], ~vec4<u32>(1u, global2[_wgslsmith_index_u32(global4.d, 30u)], u_input.a, global4.d))), global4.e), !(global4.e > _wgslsmith_f_op_f32(max(global4.e, _wgslsmith_f_op_f32(global4.e + global4.e)))), true);
    var var_1 = global4.b;
    let var_2 = 4294967295u;
    let var_3 = Struct_1(~global4.a, 22856u > (func_2() >> (~_wgslsmith_div_u32(0u, u_input.a) % 32u)), global4.e, ~20917u, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1806f + 782f), -166f)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(4294967295u, _wgslsmith_clamp_u32(1u, firstTrailingBit(u_input.a), 4294967295u >> (var_2 % 32u)), abs(1u)), ~(~(~(~global0[_wgslsmith_index_u32(var_3.d, 8u)]))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.e, global4.c, 578f) * vec3<f32>(var_3.e, -443f, 847f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-481f, var_3.e, 1902f) + vec3<f32>(var_3.e, global4.e, global4.e)))))), vec3<u32>(~u_input.a, max(~21207u, var_2), 44822u), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(0u, ~u_input.a), var_3.d), 28u)]);
}

