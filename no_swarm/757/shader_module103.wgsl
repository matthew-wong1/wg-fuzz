struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: bool,
    c: Struct_2,
    d: Struct_2,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 24>;

var<private> global1: array<Struct_2, 17>;

var<private> global2: array<f32, 10> = array<f32, 10>(1000f, 338f, -276f, 1550f, 798f, 1122f, -315f, 2200f, -822f, -123f);

var<private> global3: f32 = -117f;

var<private> global4: array<f32, 21> = array<f32, 21>(-625f, 241f, 1403f, -1657f, -1000f, 157f, -362f, 478f, 332f, 1287f, 387f, 213f, -1003f, -811f, -333f, -1101f, -287f, 1146f, -2365f, 1469f, 1240f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: u32, arg_3: vec4<f32>) -> u32 {
    global3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) * _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_2, 10u)])) - global2[_wgslsmith_index_u32(countOneBits(~21655u), 10u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x - _wgslsmith_div_f32(-1291f, _wgslsmith_f_op_f32(-391f - 724f))))));
    let var_0 = -1i != u_input.b;
    var var_1 = -68724i;
    var var_2 = ~40115u < _wgslsmith_sub_u32(~1u, _wgslsmith_add_u32(29554u, u_input.a.x << (_wgslsmith_dot_vec3_u32(u_input.a.zzw, u_input.a.yyx) % 32u)));
    global4 = array<f32, 21>();
    return 0u;
}

fn func_3(arg_0: u32) -> vec2<u32> {
    global4 = array<f32, 21>();
    let var_0 = Struct_2(Struct_1(true), vec2<f32>(global2[_wgslsmith_index_u32(arg_0, 10u)], _wgslsmith_f_op_f32(f32(-1f) * -656f)), false, Struct_1(!all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false))));
    let var_1 = Struct_2(Struct_1(all(!(!vec3<bool>(var_0.d.a, true, true)))), _wgslsmith_f_op_vec2_f32(var_0.b - _wgslsmith_f_op_vec2_f32(-var_0.b)), var_0.d.a, Struct_1(!var_0.d.a));
    global3 = _wgslsmith_f_op_f32(select(-1267f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(abs(max(u_input.a.x, 19147u >> (1u % 32u))), 10u)] * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.b.x, global2[_wgslsmith_index_u32(33967u, 10u)])) - global4[_wgslsmith_index_u32(select(0u, arg_0, var_1.a.a), 21u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), -1000f) < var_0.b.x));
    var var_2 = firstTrailingBit(vec3<u32>(~0u, 69415u, ~arg_0 | max(arg_0, 64603u)));
    return ~_wgslsmith_clamp_vec2_u32(var_2.yz, ~_wgslsmith_div_vec2_u32(max(vec2<u32>(39423u, arg_0), vec2<u32>(var_2.x, 44722u)), abs(vec2<u32>(33238u, u_input.a.x))), vec2<u32>(119349u, u_input.a.x));
}

fn func_1() -> vec2<bool> {
    var var_0 = u_input.a.yy;
    global0 = array<Struct_2, 24>();
    let var_1 = vec3<f32>(-1000f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.a.x, _wgslsmith_add_u32(38756u, u_input.a.x)), func_3(func_2(true, Struct_1(true), var_0.x, vec4<f32>(-1150f, global4[_wgslsmith_index_u32(u_input.a.x, 21u)], global2[_wgslsmith_index_u32(1u, 10u)], -545f)))), 10u)] + -712f), global4[_wgslsmith_index_u32(0u, 21u)]);
    var var_2 = true;
    var var_3 = reverseBits(vec2<i32>(_wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.b, u_input.b, 33426i) & vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, -2147483647i, u_input.b) << (vec3<u32>(u_input.a.x, 67681u, var_0.x) % vec3<u32>(32u)), true), ~select(vec3<i32>(-1i, -32229i, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b), true)), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.b, u_input.b, u_input.b)), ~firstTrailingBit(vec3<i32>(u_input.b, u_input.b, -3388i)))));
    return select(vec2<bool>(any(vec2<bool>(true, true)), true), select(vec2<bool>(!any(vec2<bool>(true, true)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), !any(vec4<bool>(false, true, false, true))), !(var_0.x >= _wgslsmith_mult_u32(15085u | u_input.a.x, reverseBits(0u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 17>();
    var var_0 = u_input.a;
    var var_1 = Struct_3(select(!func_1(), vec2<bool>(any(select(vec2<bool>(true, false), vec2<bool>(true, false), true)), true), true), select(true, true, false), global1[_wgslsmith_index_u32(21450u, 17u)], global0[_wgslsmith_index_u32(u_input.a.x, 24u)], vec2<bool>(reverseBits(select(u_input.b, u_input.b, true)) == 1i, true));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-135f - var_1.d.b.x), -267f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(19343u, 10u)] - global2[_wgslsmith_index_u32(45297u, 10u)]), _wgslsmith_f_op_f32(exp2(var_1.c.b.x)))))) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~4294967295u, 10u)]), _wgslsmith_f_op_f32(-177f * var_1.d.b.x));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(142f * _wgslsmith_f_op_f32(floor(var_1.c.b.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 10u)]) - -228f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.b.x + _wgslsmith_f_op_f32(f32(-1f) * -1030f)))) * -955f);
    let x = u_input.a;
    s_output = StorageBuffer(65290u, max(-firstLeadingBit(u_input.b), _wgslsmith_mult_i32(-1i, 41861i)), _wgslsmith_f_op_f32(floor(-417f)), vec2<u32>(firstLeadingBit(u_input.a.x), _wgslsmith_sub_u32(u_input.a.x, reverseBits(~var_0.x))));
}

