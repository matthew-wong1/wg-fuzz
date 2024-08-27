struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: i32,
    d: vec3<f32>,
    e: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30> = array<u32, 30>(0u, 0u, 136744u, 18686u, 4294967295u, 60401u, 34761u, 9947u, 43616u, 20589u, 36674u, 66642u, 1026u, 1u, 1u, 4294967295u, 77467u, 50585u, 1u, 372u, 0u, 0u, 0u, 4294967295u, 25421u, 4708u, 101235u, 1u, 1u, 54601u);

var<private> global1: array<Struct_4, 31>;

var<private> global2: Struct_2;

var<private> global3: array<f32, 32>;

var<private> global4: array<bool, 26> = array<bool, 26>(true, true, true, false, false, false, true, false, false, true, false, true, false, false, true, false, false, false, true, false, false, true, false, true, true, true);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>) -> i32 {
    var var_0 = vec2<bool>(67403i < u_input.b, ~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -55036i), _wgslsmith_sub_vec2_i32(vec2<i32>(-22176i, global2.a.c), vec2<i32>(global2.a.c, global2.a.c))) > -21915i);
    let var_1 = vec3<u32>(global0[_wgslsmith_index_u32(~(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, ~25737u), 30u)] << (global0[_wgslsmith_index_u32(select(_wgslsmith_mod_u32(global2.b, 4294967295u), countOneBits(arg_0.b.x), true), 30u)] % 32u)), 30u)], 0u & arg_0.b.x, abs(21346u));
    let var_2 = Struct_2(arg_0, ~arg_0.b.x);
    global4 = array<bool, 26>();
    let var_3 = reverseBits(vec4<u32>(_wgslsmith_mod_u32(4294967295u, min(0u, _wgslsmith_mult_u32(var_1.x, global0[_wgslsmith_index_u32(1u, 30u)]))), ~min(_wgslsmith_dot_vec2_u32(vec2<u32>(global2.a.b.x, 2742u), vec2<u32>(var_1.x, var_2.b)), 2884u), firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(11485u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.b.x, 30u)], 30u)]) >> (var_2.a.b % vec2<u32>(32u)), firstLeadingBit(arg_0.b))), 37173u));
    return global2.a.c;
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(0u, 32u)], global2.a.a, 841f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(arg_0.b, 32u)], -1305f, global2.a.a)))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(global2.a.a, 226f, -1959f), vec3<f32>(-167f, 381f, -947f)))), vec3<f32>(_wgslsmith_f_op_f32(573f - global2.a.a), _wgslsmith_f_op_f32(global2.a.a + arg_0.a.a), 1f), global4[_wgslsmith_index_u32(4294967295u, 26u)]))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(global2.a.b.x, 32u)], global2.a.a, 412f), vec3<f32>(global2.a.a, -849f, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 30u)], 32u)])), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1761f, global3[_wgslsmith_index_u32(19137u, 32u)], 1762f), vec3<f32>(global2.a.a, arg_0.a.a, global3[_wgslsmith_index_u32(0u, 32u)])))))) + vec3<f32>(_wgslsmith_div_f32(-418f, 1000f), _wgslsmith_div_f32(global3[_wgslsmith_index_u32(1u & global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4926u, 30u)], 30u)], 32u)], global2.a.a), 1f)));
    global0 = array<u32, 30>();
    global0 = array<u32, 30>();
    return ~_wgslsmith_sub_u32(11161u, ~arg_0.b);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(global2.a, 93161u);
    var var_1 = func_4(var_0, _wgslsmith_mult_i32(-func_3(global2.a, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global3[_wgslsmith_index_u32(global2.a.b.x, 32u)], global3[_wgslsmith_index_u32(4294967295u, 32u)])))), u_input.b));
    global3 = array<f32, 32>();
    return Struct_1(596f, max(~var_0.a.b, global2.a.b), _wgslsmith_mod_i32(2187i, func_3(Struct_1(-1303f, ~vec2<u32>(global0[_wgslsmith_index_u32(58560u, 30u)], 0u), reverseBits(global2.a.c)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.a, var_0.a.a)), vec2<f32>(577f, var_0.a.a)))));
}

fn func_1() -> bool {
    let var_0 = Struct_4(global2.a.b.x, func_2(), _wgslsmith_add_i32(1i, i32(-1i) * -1i), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(7381u, 30u)], 32u)], global2.a.a), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global2.b, 32u)]), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.a.b.x, 30u)], 32u)] - 1039f)), vec3<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 32u)]), _wgslsmith_f_op_f32(min(global2.a.a, -1481f)), -255f))))), Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(1625f, global3[_wgslsmith_index_u32(30740u, 32u)]) - vec2<f32>(global2.a.a, global2.a.a)), vec2<f32>(global2.a.a, 1847f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1147f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.a, global2.a.a))))));
    var var_1 = func_2();
    global2 = Struct_2(func_2(), ~(var_0.b.b.x | func_4(Struct_2(global2.a, 4294967295u), abs(var_1.c))));
    let var_2 = -460f;
    let var_3 = !(!select(vec2<bool>(var_1.a == global2.a.a, any(vec4<bool>(false, true, true, false))), select(!vec2<bool>(global4[_wgslsmith_index_u32(0u, 26u)], true), !vec2<bool>(true, global4[_wgslsmith_index_u32(var_0.a, 26u)]), global4[_wgslsmith_index_u32(77657u, 26u)] | true), vec2<bool>(true, false)));
    return !global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(9251u, _wgslsmith_add_u32(4294967295u ^ var_1.b.x, _wgslsmith_mod_u32(global2.a.b.x, 1u))), 26u)] && global4[_wgslsmith_index_u32(global2.b, 26u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global1 = array<Struct_4, 31>();
    let var_1 = abs(select(countOneBits(-vec3<i32>(-10679i, -1i, u_input.a.x) & firstTrailingBit(u_input.a.wwz)), countOneBits(firstTrailingBit(firstTrailingBit(u_input.a.www))), firstTrailingBit(u_input.b) < global2.a.c));
    global2 = Struct_2(global2.a, min(~4251u, global2.b));
    let var_2 = u_input.a.xy;
    let var_3 = vec2<f32>(-1670f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global2.a.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(321f * 552f))))));
    global2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-141f, global3[_wgslsmith_index_u32(global2.b, 32u)])) + _wgslsmith_f_op_f32(-var_3.x))), ~_wgslsmith_mod_vec2_u32(global2.a.b, vec2<u32>(global2.b, global0[_wgslsmith_index_u32(67114u, 30u)]) >> (global2.a.b % vec2<u32>(32u))), i32(-1i) * -13571i), global2.b);
    global4 = array<bool, 26>();
    let var_4 = Struct_3(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(642f, -1095f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(747f, -1647f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.a, global3[_wgslsmith_index_u32(1u, 32u)])))), vec2<f32>(2014f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1122f, var_3.x))), vec2<bool>(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2553u, 30u)], 26u)], all(vec3<bool>(var_0, var_0, var_0))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(global2.b, 4294967295u, global0[_wgslsmith_index_u32(global2.b, 30u)])), vec3<u32>(global2.b, firstTrailingBit(_wgslsmith_add_u32(41330u, global0[_wgslsmith_index_u32(global2.a.b.x, 30u)])), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(14280u, 0u, 4294967295u), 30u)], 30u)]), countOneBits(_wgslsmith_add_vec3_u32(~vec3<u32>(48120u, 30409u, global0[_wgslsmith_index_u32(global2.b, 30u)]), vec3<u32>(global0[_wgslsmith_index_u32(82287u, 30u)], 58611u, 16166u) ^ vec3<u32>(67068u, 54851u, 1u)))), _wgslsmith_f_op_f32(trunc(var_3.x)), vec4<u32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(max(vec4<u32>(global0[_wgslsmith_index_u32(global2.a.b.x, 30u)], 20360u, global2.b, global0[_wgslsmith_index_u32(1u, 30u)]), select(vec4<u32>(55229u, global2.b, global2.a.b.x, global2.a.b.x), vec4<u32>(global2.a.b.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 30u)], 30u)], 30u)], global0[_wgslsmith_index_u32(4294967295u, 30u)], 4294967295u), var_0)), ~(~vec4<u32>(global0[_wgslsmith_index_u32(global2.b, 30u)], 128306u, 290u, global2.b))), 30u)], 21105u, select(13829u, ~(~global2.b), true), firstTrailingBit(max(39063u ^ global2.b, abs(global0[_wgslsmith_index_u32(global2.b, 30u)])))));
}

