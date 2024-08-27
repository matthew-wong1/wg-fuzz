struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29>;

var<private> global1: vec4<f32>;

var<private> global2: array<f32, 32> = array<f32, 32>(-675f, 118f, 643f, 1049f, -1050f, 499f, 1907f, 773f, -185f, -716f, -1000f, -1642f, 131f, 145f, -369f, -1761f, -568f, -123f, 570f, -1690f, 404f, -1000f, 1000f, -939f, -1419f, 812f, -998f, 982f, -1246f, 1200f, 481f, 801f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<u32>) -> u32 {
    return _wgslsmith_sub_u32(~_wgslsmith_mod_u32(49933u, 830u | arg_0.x), ~reverseBits(88320u));
}

fn func_2(arg_0: vec3<u32>) -> i32 {
    let var_0 = global0[_wgslsmith_index_u32(~(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(abs(vec2<u32>(arg_0.x, 0u)), firstTrailingBit(vec2<u32>(24457u, 38298u))), vec2<u32>(arg_0.x, 1u)) >> (select(~1u, 4294967295u, any(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)))) % 32u)), 29u)];
    global0 = array<Struct_1, 29>();
    let var_1 = i32(-1i) * -10406i;
    let var_2 = global0[_wgslsmith_index_u32(select(func_3(~vec2<u32>(1u, 15135u)), 1u, all(vec2<bool>(false, false)) & var_0.a.x) & ~(~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.d.yw, arg_0.xy), _wgslsmith_mult_vec2_u32(arg_0.zy, u_input.d.yz))), 29u)];
    let var_3 = Struct_1(vec4<bool>(false, true, true, !var_0.a.x), 11465u, countOneBits(1u));
    return -2147483647i;
}

fn func_1(arg_0: u32, arg_1: f32) -> bool {
    var var_0 = abs(max(-countOneBits(firstTrailingBit(u_input.c.zxw)), _wgslsmith_mod_vec3_i32(u_input.c.zxx, vec3<i32>(_wgslsmith_sub_i32(-31726i, u_input.c.x), func_2(u_input.d.xxy), ~0i))));
    let var_1 = select(countOneBits(abs(u_input.d)) << (u_input.d % vec4<u32>(32u)), reverseBits(~(~u_input.d)), false) >> (select(vec4<u32>(10550u, firstLeadingBit(43343u) | ~u_input.a, _wgslsmith_sub_u32(max(1u, u_input.a), _wgslsmith_add_u32(arg_0, 120069u)), arg_0), select(u_input.d, reverseBits(vec4<u32>(arg_0, 1u, arg_0, 77600u)), vec4<bool>(any(vec4<bool>(false, false, true, true)), true, false, all(vec3<bool>(true, false, true)))), vec4<bool>(true, false, true, true)) % vec4<u32>(32u));
    let var_2 = _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.d.wxw, ~var_1.xyy), var_1.wzx, u_input.d.wxz);
    var var_3 = global0[_wgslsmith_index_u32(7627u, 29u)];
    var_3 = Struct_1(select(vec4<bool>(true, true & (u_input.c.x >= var_0.x), false, any(!var_3.a.wy)), vec4<bool>(all(!vec3<bool>(false, var_3.a.x, var_3.a.x)), true, true, select(true, 5905u > var_1.x, arg_1 < -1253f)), var_3.a.x), _wgslsmith_clamp_u32(1u, firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(6123u, 4294967295u, u_input.a, var_3.b), vec4<u32>(1u, 54725u, var_2.x, 1u)), 27582u)), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.d.ww << (vec2<u32>(2430u, var_1.x) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(u_input.d.wx, vec2<u32>(var_1.x, u_input.d.x))), 1473u)), var_3.b);
    return true;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec2<u32>) -> vec4<bool> {
    let var_0 = Struct_1(select(vec4<bool>(true, -1461f >= _wgslsmith_f_op_f32(step(global1.x, 1223f)), true, _wgslsmith_mod_u32(34142u, arg_1.c) < countOneBits(1u)), !arg_0, !vec4<bool>(true, !arg_0.x, !arg_1.a.x, true)), max(arg_1.b, abs(~(~1u))), firstTrailingBit(1u));
    global0 = array<Struct_1, 29>();
    global2 = array<f32, 32>();
    global2 = array<f32, 32>();
    global1 = vec4<f32>(_wgslsmith_f_op_f32(min(1007f, _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(max(-1863f, 1188f)))))), _wgslsmith_f_op_f32(f32(-1f) * -1573f), 277f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)) + global2[_wgslsmith_index_u32(~select(1u, 4294967295u, true), 32u)])));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.a >> (1u % 32u), 15883u), 29u)];
    let var_1 = Struct_1(func_4(!vec4<bool>(func_1(7432u, global2[_wgslsmith_index_u32(u_input.a, 32u)]), var_0.a.x, true | var_0.a.x, false == var_0.a.x), Struct_1(var_0.a, var_0.c, ~(~var_0.c)), _wgslsmith_mod_vec2_u32(min(vec2<u32>(71262u, u_input.d.x), select(u_input.d.wx, u_input.d.yy, false)), vec2<u32>(0u, _wgslsmith_div_u32(u_input.d.x, u_input.d.x)))), _wgslsmith_mod_u32(_wgslsmith_mod_u32(var_0.c >> (53177u % 32u), ~(~12519u)), u_input.d.x | abs(_wgslsmith_div_u32(u_input.d.x, 1u))), _wgslsmith_div_u32(1u, u_input.a));
    let var_2 = u_input.c.wyw & u_input.c.www;
    global2 = array<f32, 32>();
    var var_3 = ~vec2<u32>(var_0.b, var_1.b);
    global2 = array<f32, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(104f, var_1.c, vec4<f32>(_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(0u, 32u)])), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.d, vec4<u32>(u_input.d.x, 24451u, var_0.c, var_1.c), vec4<u32>(var_0.c, u_input.d.x, var_0.b, u_input.d.x)), reverseBits(u_input.d)), 32u)]), _wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(var_1.b, var_0.c), 32u)])), global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.d.yz, u_input.d.wy), u_input.d.wz), 32u)]), ~u_input.b);
}

