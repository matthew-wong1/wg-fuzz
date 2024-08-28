struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -11994i;

var<private> global1: array<vec3<bool>, 14> = array<vec3<bool>, 14>(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false));

var<private> global2: array<u32, 7>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec2<u32>) -> bool {
    global2 = array<u32, 7>();
    let var_0 = ~firstLeadingBit(~select(arg_1.b.yyy, arg_1.b.yyw, true));
    let var_1 = Struct_1(arg_1.a, ~_wgslsmith_clamp_vec4_u32(~reverseBits(vec4<u32>(global2[_wgslsmith_index_u32(arg_1.b.x, 7u)], var_0.x, 28323u, global2[_wgslsmith_index_u32(var_0.x, 7u)])), vec4<u32>(~10180u, ~var_0.x, _wgslsmith_div_u32(var_0.x, 1u), ~4294967295u), _wgslsmith_mod_vec4_u32(arg_1.b, ~vec4<u32>(1u, arg_3.x, 4294967295u, 1u))));
    var var_2 = Struct_1(var_1.a, _wgslsmith_mod_vec4_u32(~(~max(arg_1.b, arg_1.b)), ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(26679u, global2[_wgslsmith_index_u32(48519u, 7u)], global2[_wgslsmith_index_u32(23623u, 7u)], 4294967295u), vec4<u32>(arg_1.b.x, 1u, 4294967295u, 4294967295u)))));
    var var_3 = arg_1;
    return true;
}

fn func_2(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = countOneBits(-u_input.b.x);
    let var_1 = (func_3(_wgslsmith_mod_vec3_i32(-vec3<i32>(var_0, -3805i, var_0), vec3<i32>(var_0, 2147483647i, 0i) ^ u_input.b.zzz), Struct_1(arg_0.x, ~vec4<u32>(global2[_wgslsmith_index_u32(74380u, 7u)], 6204u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(30421u, 7u)], 7u)], 4294967295u)), ~(~vec2<i32>(-1i, 1i)), ~vec2<u32>(global2[_wgslsmith_index_u32(0u, 7u)], global2[_wgslsmith_index_u32(1939u, 7u)]) | (vec2<u32>(43689u, global2[_wgslsmith_index_u32(6068u, 7u)]) & vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(17716u, 7u)], 7u)], global2[_wgslsmith_index_u32(6040u, 7u)]))) && true) | !all(arg_0);
    global1 = array<vec3<bool>, 14>();
    let var_2 = min(_wgslsmith_div_vec2_i32(u_input.b.zy, u_input.b.wx), vec2<i32>(-34260i, -2147483647i));
    var var_3 = select(arg_0.xy, arg_0.yx, select(arg_0.xy, select(vec2<bool>(false, arg_0.x), arg_0.wy, !(!vec2<bool>(false, arg_0.x))), arg_0.xy));
    return Struct_1(any(vec4<bool>(func_3(~vec3<i32>(7652i, 886i, 20378i), Struct_1(var_1, vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 7u)], 7u)], 7u)], 26243u, 35291u, 4294967295u)), vec2<i32>(var_2.x, var_2.x) ^ vec2<i32>(31274i, -22910i), ~vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(52282u, 7u)])), var_1, all(vec2<bool>(false, true)), false)), abs(~abs(vec4<u32>(21051u, 1u, global2[_wgslsmith_index_u32(4294967295u, 7u)], 33037u)) | ~(~vec4<u32>(global2[_wgslsmith_index_u32(21878u, 7u)], 15115u, 14079u, 0u))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: bool) -> u32 {
    let var_0 = ~(~((_wgslsmith_dot_vec3_u32(arg_0.b.xzy, arg_0.b.wyx) >> (~global2[_wgslsmith_index_u32(0u, 7u)] % 32u)) << (_wgslsmith_dot_vec4_u32(~arg_1.b, arg_0.b) % 32u)));
    global2 = array<u32, 7>();
    var var_1 = arg_0.b.x;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-198f)) + 467f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(154f * 231f) - _wgslsmith_f_op_f32(trunc(-673f))))));
    var var_3 = _wgslsmith_dot_vec4_i32(u_input.b, u_input.b);
    return arg_0.b.x;
}

fn func_1() -> u32 {
    let var_0 = true | (true && any(!select(vec2<bool>(false, true), vec2<bool>(true, false), false)));
    global2 = array<u32, 7>();
    let var_1 = -1i;
    global2 = array<u32, 7>();
    let var_2 = Struct_1(true && (any(!vec4<bool>(false, var_0, var_0, false)) | false), vec4<u32>(_wgslsmith_dot_vec4_u32(abs(~vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(13544u, 7u)], 7u)], 4294967295u, 72444u, global2[_wgslsmith_index_u32(11288u, 7u)])), vec4<u32>(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 7u)], 4294967295u), ~37090u, 15228u, global2[_wgslsmith_index_u32(0u, 7u)])), 4294967295u, 70988u, _wgslsmith_div_u32(global2[_wgslsmith_index_u32(func_4(func_2(vec4<bool>(var_0, var_0, var_0, var_0)), func_2(vec4<bool>(true, var_0, var_0, var_0)), !vec4<bool>(false, false, var_0, true), true), 7u)], 148u)));
    return ~25081u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(vec4<bool>(_wgslsmith_add_u32(36114u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(38044u, 7u)], 7u)] << (global2[_wgslsmith_index_u32(0u, 7u)] % 32u)) == func_1(), true, true && !any(vec3<bool>(true, true, false)), true));
    let var_1 = vec2<bool>(!(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(10111u, 7u)], 7u)], 7u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 7u)], 7u)], 7u)], 7u)], 7u)], 7u)]), func_4(Struct_1(true, vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(86666u, 7u)], 7u)], 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 7u)], 7u)], 7u)], 7u)], 19971u)), Struct_1(true, vec4<u32>(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 7u)], 7u)], 12741u, global2[_wgslsmith_index_u32(63407u, 7u)])), vec4<bool>(var_0, var_0, false, true), false)), 7u)], 7u)], 7u)] == 13267u), true);
    var var_2 = !var_0;
    var_2 = !(!(var_1.x && !(!var_0)));
    var var_3 = -abs(-_wgslsmith_dot_vec3_i32(u_input.b.wwy, vec3<i32>(0i, 7526i, u_input.b.x)) >> (14204u % 32u));
    let var_4 = func_2(vec4<bool>(true, true | var_1.x, all(vec2<bool>(false, var_1.x)) && !func_2(vec4<bool>(var_0, false, var_0, true)).a, false));
    let var_5 = var_4;
    global1 = array<vec3<bool>, 14>();
    var var_6 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-258f, _wgslsmith_f_op_f32(sign(154f)), -282f, 1f)))), vec4<f32>(_wgslsmith_f_op_f32(-1327f + -158f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1147f - _wgslsmith_f_op_f32(trunc(1277f))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1568f), 112f))), -1975f, _wgslsmith_f_op_f32(trunc(803f)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_6.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_6.x, -1237f, true)))), _wgslsmith_f_op_f32(-966f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1346f + -1028f))))), vec4<u32>(global2[_wgslsmith_index_u32(~var_5.b.x, 7u)], abs(~(global2[_wgslsmith_index_u32(var_5.b.x, 7u)] ^ 4294967295u)), ~countOneBits(~4294967295u), global2[_wgslsmith_index_u32(0u, 7u)]), var_6.x, 755f);
}

