struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27>;

var<private> global1: vec4<f32> = vec4<f32>(1219f, 1003f, -657f, 545f);

var<private> global2: bool = false;

var<private> global3: Struct_1;

var<private> global4: bool = false;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec3<bool>) -> f32 {
    var var_0 = -2111f;
    global3 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(global3.a, vec3<f32>(global1.x, arg_0, -1172f))) + _wgslsmith_f_op_vec3_f32(step(global3.a, vec3<f32>(732f, 373f, global3.a.x)))), _wgslsmith_f_op_vec3_f32(-global3.a)))), true, !(_wgslsmith_clamp_u32(16977u, u_input.c >> (u_input.d % 32u), 4294967295u) >= ~0u));
    let var_1 = -2147483647i;
    var var_2 = min(vec4<i32>(~34263i, select(var_1, -41291i, select(!global3.c, false == arg_1.x, false)), -2147483647i, 16966i), vec4<i32>(_wgslsmith_div_i32(countOneBits(1i), 8934i), ((var_1 ^ 5533i) & var_1) << (88633u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(~1i, min(u_input.a.x, 2147483647i)), firstLeadingBit(u_input.a.yy >> (vec2<u32>(u_input.c, 44682u) % vec2<u32>(32u)))), max(u_input.a.x >> (u_input.c % 32u), _wgslsmith_sub_i32(1i, ~var_1))));
    let var_3 = firstTrailingBit(firstLeadingBit(_wgslsmith_sub_i32(_wgslsmith_sub_i32(-30119i, var_1) >> ((u_input.d | u_input.d) % 32u), 0i)));
    return arg_0;
}

fn func_2() -> bool {
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global0[_wgslsmith_index_u32(0u, 27u)], -404f))))))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(6186u, 27u)], 873f))), _wgslsmith_f_op_f32(-global3.a.x), _wgslsmith_f_op_f32(global1.x * 411f), _wgslsmith_f_op_f32(global3.a.x + _wgslsmith_f_op_f32(select(604f, -1688f, global3.c)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(u_input.d, 27u)], global0[_wgslsmith_index_u32(17210u, 27u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-1631f, vec3<bool>(global3.b, global3.c, global3.c)))), global0[_wgslsmith_index_u32(u_input.c, 27u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(u_input.d, 27u)])))))));
    global0 = array<f32, 27>();
    var var_0 = -308i;
    let var_1 = Struct_1(global3.a, 0u > (~(u_input.d << (1u % 32u)) & ~(~u_input.d)), global3.b | global3.c);
    return false;
}

fn func_1(arg_0: bool, arg_1: vec4<f32>) -> bool {
    let var_0 = func_2();
    global0 = array<f32, 27>();
    var var_1 = var_0;
    let var_2 = ~(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.c, 82514u, u_input.d), vec3<u32>(4294967295u, u_input.d, u_input.d)) ^ ~vec3<u32>(u_input.d, 0u, 1u)) ^ ~vec3<u32>(u_input.c, 7641u, _wgslsmith_mod_u32(max(0u, 8609u), max(u_input.c, 0u)));
    var var_3 = vec2<i32>(-1i) * -abs(u_input.a.wx);
    return select(false, true, 40569u != u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = Struct_1(global1.zyw, any(vec4<bool>(func_1(true, vec4<f32>(global1.x, global1.x, 433f, global3.a.x)) & (global3.b && false), true, any(select(vec3<bool>(true, true, global3.c), vec3<bool>(global3.b, true, false), true)), global3.b)), true);
    global4 = true & var_1.c;
    var_0 = func_2();
    var var_2 = _wgslsmith_f_op_f32(-global1.x);
    var_0 = func_1(!func_1(_wgslsmith_f_op_f32(step(-786f, 657f)) >= _wgslsmith_f_op_f32(global3.a.x - 1055f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, global0[_wgslsmith_index_u32(u_input.d, 27u)], -280f, -106f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.x, -551f, -528f, -1322f)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(607f, 834f, -294f, global3.a.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.x, 569f, -886f, global1.x)))))));
    let var_3 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(247f, global0[_wgslsmith_index_u32(u_input.d, 27u)], -1098f, 415f))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, global3.a.x, global1.x, global0[_wgslsmith_index_u32(35293u, 27u)]) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global3.a.x, -138f, 1309f, 496f)))), vec4<f32>(-1711f, global0[_wgslsmith_index_u32(~1u, 27u)], _wgslsmith_f_op_f32(-global3.a.x), _wgslsmith_f_op_f32(step(-2327f, -1919f))))))), select(abs(~(-vec4<i32>(-39550i, -10506i, 19955i, 45622i))), reverseBits(u_input.a), !vec4<bool>(var_3 == -9531i, true, global3.c & true, all(vec4<bool>(global3.b, false, global3.c, true)))), _wgslsmith_f_op_f32(-global3.a.x));
}

