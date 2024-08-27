struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: vec3<bool>,
    d: vec2<f32>,
    e: bool,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 9> = array<u32, 9>(4294967295u, 0u, 56775u, 28278u, 1u, 0u, 7872u, 4294967295u, 0u);

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: i32) -> vec2<bool> {
    global0 = array<u32, 9>();
    global0 = array<u32, 9>();
    let var_0 = Struct_2(vec2<bool>(-953f <= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(567f)), _wgslsmith_f_op_f32(abs(-791f)))), !(!(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 9u)], 9u)], 9u)], 9u)] != 0u))));
    var var_1 = vec3<u32>(~74170u, 13851u ^ global0[_wgslsmith_index_u32(15849u, 9u)], 4294967295u);
    var var_2 = vec2<f32>(1179f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-309f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-481f, 740f)) + _wgslsmith_f_op_f32(sign(443f))) * 332f))));
    return var_0.a;
}

fn func_3(arg_0: Struct_3, arg_1: i32) -> vec4<i32> {
    var var_0 = _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(~_wgslsmith_mod_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(21813u, 9u)], 9u)], 9u)], 66325u, 1u, 0u), ~vec4<u32>(0u, 72334u, global0[_wgslsmith_index_u32(10159u, 9u)], 0u)), _wgslsmith_sub_vec4_u32(~reverseBits(vec4<u32>(4294967295u, 0u, 82886u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 9u)], 9u)])), vec4<u32>(1u, firstLeadingBit(25129u), _wgslsmith_add_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 9u)], 9u)], 9u)], 9u)], 9u)], 9u)], 23022u), _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(45159u, 9u)], 4294967295u)))), vec4<u32>((~9922u >> (0u % 32u)) ^ global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 9u)], 9u)], firstTrailingBit(4294967295u), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(countOneBits(global0[_wgslsmith_index_u32(1u, 9u)]), ~1u), 9u)] >> (4294967295u % 32u), firstTrailingBit(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(4294967295u, 9u)], 36267u), 9u)], abs(16583u)))));
    var_0 = reverseBits(~firstTrailingBit(vec4<u32>(var_0.x, var_0.x, global0[_wgslsmith_index_u32(1u, 9u)], _wgslsmith_add_u32(var_0.x, var_0.x))));
    var var_1 = vec3<i32>(~arg_0.a.x, ~_wgslsmith_dot_vec2_i32(abs(vec2<i32>(-1i, -2118i)) << (~vec2<u32>(var_0.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 9u)], 9u)]) % vec2<u32>(32u)), arg_0.a.xy), countOneBits(i32(-1i) * -2147483647i));
    var var_2 = var_0.yz;
    var var_3 = arg_0;
    return min(-(vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.a, var_3.a.yy), 23500i, ~39248i, var_3.a.x ^ -32054i) ^ _wgslsmith_div_vec4_i32(-vec4<i32>(0i, 8576i, var_3.a.x, var_3.a.x), abs(vec4<i32>(-5390i, var_1.x, 0i, -1i)))), countOneBits(-reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(12045i, arg_1, 6990i, -13830i), vec4<i32>(var_1.x, 2147483647i, -420i, 0i)))));
}

fn func_1(arg_0: f32) -> f32 {
    var var_0 = !(!(!func_2(-29933i)));
    global0 = array<u32, 9>();
    var var_1 = vec2<i32>(2147483647i, countOneBits(select(~1i, u_input.a.x, u_input.a.x == (u_input.a.x | u_input.a.x))));
    let var_2 = Struct_1(!vec4<bool>(!select(false, true, true), false, var_0.x, var_0.x), _wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -(vec4<i32>(var_1.x, u_input.a.x, u_input.a.x, var_1.x) >> (vec4<u32>(0u, global0[_wgslsmith_index_u32(1u, 9u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], 9u)], 9u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 9u)], 9u)]) % vec4<u32>(32u))), _wgslsmith_div_vec4_i32(func_3(Struct_3(vec3<i32>(u_input.a.x, u_input.a.x, -13497i), Struct_2(vec2<bool>(true, var_0.x))), _wgslsmith_sub_i32(1i, var_1.x)), -(vec4<i32>(var_1.x, var_1.x, 50549i, u_input.a.x) >> (vec4<u32>(11733u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(40107u, 9u)], 9u)], 9u)], 46974u, 30868u) % vec4<u32>(32u))))), vec3<bool>(any(vec2<bool>(var_0.x, true)), ~max(-2147483647i, -2147483647i) == _wgslsmith_sub_i32(var_1.x, -u_input.a.x), var_0.x), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(arg_0)), arg_0)), vec2<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0)))), true);
    return _wgslsmith_f_op_f32(-522f * var_2.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 9>();
    global0 = array<u32, 9>();
    let var_0 = u_input.a.x;
    var var_1 = u_input.a.x <= u_input.a.x;
    var_1 = !(!(!(!(global0[_wgslsmith_index_u32(25567u, 9u)] > global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], 9u)]))));
    var_1 = (i32(-1i) * -_wgslsmith_div_i32(-var_0, reverseBits(-36073i))) >= _wgslsmith_clamp_i32(var_0 | -25117i, 2147483647i, _wgslsmith_add_i32(24995i, ~(~(-1i))));
    var_1 = false;
    let var_2 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(max(1938f, _wgslsmith_f_op_f32(func_1(-665f)))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-518f + 1f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1362f - 1013f), 919f)), vec2<f32>(1f, 1f), false)), !any(vec3<bool>(true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1620f)), 671f > _wgslsmith_f_op_f32(func_1(var_2.x)))) + 1122f), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(step(-443f, var_2.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, var_2.x))), 514f, -572f));
}

