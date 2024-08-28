struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct Struct_5 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 16>;

var<private> global1: array<Struct_1, 15>;

var<private> global2: array<vec2<bool>, 7>;

var<private> global3: Struct_2;

var<private> global4: i32;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2) -> vec3<bool> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-404f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(global3.c.x, 16u)])))), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(select(_wgslsmith_div_u32(firstLeadingBit(global3.a.x), _wgslsmith_sub_u32(55582u, 25729u)), arg_0.c.x, all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), true))), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(global3.a.x, firstTrailingBit(44070u)), countOneBits(global3.c.x), ~global3.c.x), _wgslsmith_mod_u32((arg_0.c.x | u_input.e) ^ ~global3.c.x, 0u)), 16u)]);
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -766f, var_0.x)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1021f, -686f, var_0.x, var_0.x), vec4<f32>(2196f, global0[_wgslsmith_index_u32(arg_0.a.x, 16u)], global0[_wgslsmith_index_u32(global3.c.x, 16u)], 395f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 16u)], -860f, 319f, var_0.x), vec4<f32>(var_0.x, global0[_wgslsmith_index_u32(u_input.c, 16u)], var_0.x, 1174f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(201f, var_0.x, 741f, var_0.x))))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, global0[_wgslsmith_index_u32(0u, 16u)], var_0.x, global0[_wgslsmith_index_u32(20580u, 16u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 830f, var_0.x, var_0.x)))))), vec4<f32>(var_0.x, -1510f, 113f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c, 16u)] - var_0.x), global0[_wgslsmith_index_u32(firstLeadingBit(arg_0.c.x) << (global3.a.x % 32u), 16u)]))), false));
    var var_2 = -210f;
    let var_3 = _wgslsmith_clamp_vec4_i32(u_input.b, -_wgslsmith_div_vec4_i32(u_input.b, u_input.b), _wgslsmith_div_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, global3.b.x, u_input.a, 23179i), min(u_input.b, u_input.b)), u_input.b));
    global1 = array<Struct_1, 15>();
    return !vec3<bool>(true, any(vec4<bool>(false, true, false, false)) == true, any(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true)));
}

fn func_2(arg_0: bool, arg_1: Struct_4) -> vec3<u32> {
    var var_0 = select(vec4<bool>(31988u != u_input.c, true, all(select(func_3(Struct_2(global3.a, vec2<i32>(26103i, -1i), vec2<u32>(76780u, arg_1.b.x))), vec3<bool>(false, true, false), false)), !(!all(vec2<bool>(true, arg_0)))), !vec4<bool>(!arg_0, true, arg_0, arg_0), vec4<bool>(func_3(Struct_2(vec4<u32>(arg_1.b.x, arg_1.b.x, 44847u, 11368u), vec2<i32>(-2147483647i, global3.b.x), arg_1.b.yz)).x | true, ((i32(-1i) * -2147483647i) <= firstTrailingBit(u_input.d)) || (-1947f > _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(0u, 16u)]))), any(func_3(Struct_2(vec4<u32>(arg_1.b.x, 4294967295u, 4294967295u, 70282u), vec2<i32>(-23455i, 1i), global3.a.yy)).zx), true));
    var var_1 = Struct_4(_wgslsmith_sub_i32(-11413i, _wgslsmith_mult_i32(u_input.a, _wgslsmith_div_i32(38337i, u_input.d & arg_1.a))), vec3<u32>(0u, _wgslsmith_dot_vec2_u32(countOneBits(select(vec2<u32>(u_input.c, u_input.c), vec2<u32>(37647u, u_input.c), true)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, arg_1.b.x), vec2<u32>(22634u, 0u), vec2<u32>(1u, 60419u))), countOneBits(~arg_1.b.x)), _wgslsmith_add_vec2_i32(firstTrailingBit(-max(global3.b, vec2<i32>(-53175i, u_input.d))), u_input.b.xw));
    var_0 = vec4<bool>(!(-1000f > _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(319f))))), false, var_0.x, var_0.x);
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(var_1.b.yz), ~var_1.b.yx), 15u)];
    var var_3 = abs(~vec3<u32>(countOneBits(u_input.e), global3.c.x, ~arg_1.b.x) | ~(~(~global3.a.ywy)));
    return global3.a.zwz;
}

fn func_1(arg_0: vec3<u32>, arg_1: u32) -> Struct_4 {
    let var_0 = Struct_4(-4069i, ~(~_wgslsmith_sub_vec3_u32(func_2(true, Struct_4(-18237i, vec3<u32>(arg_1, 5318u, 73438u), vec2<i32>(global3.b.x, -12541i))), vec3<u32>(59340u, 4883u, arg_1))), vec2<i32>(_wgslsmith_div_i32(~_wgslsmith_mod_i32(global3.b.x, -5581i), 1i), -2147483647i));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + global0[_wgslsmith_index_u32(15805u, 16u)]) * _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(u_input.c, 16u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_1, 16u)] * global0[_wgslsmith_index_u32(u_input.e, 16u)]) * 1692f), _wgslsmith_f_op_f32(-1865f - global0[_wgslsmith_index_u32(~54293u, 16u)]))));
    global3 = Struct_2(vec4<u32>(0u, ~(~(~u_input.c)), countOneBits(1u), _wgslsmith_add_u32(arg_0.x | _wgslsmith_div_u32(var_0.b.x, 1u), 4294967295u)), select(vec2<i32>(global3.b.x, global3.b.x) | vec2<i32>(_wgslsmith_div_i32(25095i, -48739i), global3.b.x & var_0.c.x), vec2<i32>(_wgslsmith_div_i32(-2147483647i, countOneBits(var_0.a)), var_0.c.x), vec2<bool>(true, true && (var_1.x >= var_1.x))), global3.c);
    var var_2 = ~var_0.b.xz;
    let var_3 = true;
    return var_0;
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_4) -> bool {
    return any(!vec3<bool>(!any(global2[_wgslsmith_index_u32(arg_2.b.x, 7u)]), false, any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, all(global2[_wgslsmith_index_u32(u_input.e, 7u)])))) | func_4(711f, Struct_2(firstLeadingBit(vec4<u32>(global3.c.x, 56367u, 1u, 72594u)), vec2<i32>(u_input.a, global3.b.x), vec2<u32>(firstLeadingBit(u_input.e), ~u_input.c)), func_1(select(global3.a.wxx, vec3<u32>(u_input.e, 0u, 6077u), true), global3.c.x));
    var_0 = all(!(!vec3<bool>(all(vec4<bool>(false, true, false, false)), all(global2[_wgslsmith_index_u32(u_input.c, 7u)]), true)));
    global1 = array<Struct_1, 15>();
    global0 = array<f32, 16>();
    let var_1 = !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(false, true, false) == true), !func_3(Struct_2(global3.a, global3.b, global3.c)), vec3<bool>(false == any(vec2<bool>(false, false)), true, any(vec3<bool>(true, false, true))));
    let var_2 = Struct_1(global3.c.x, -(~vec3<i32>(global3.b.x | -1i, global3.b.x | -46799i, global3.b.x >> (71438u % 32u))), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstTrailingBit(countOneBits(global3.a.x)), 21352u), 16u)], -44750i);
    var var_3 = var_1.x;
    var_0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.c, var_2.c)), ~u_input.d);
}

