struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1000f;

var<private> global1: array<i32, 32>;

var<private> global2: vec4<i32> = vec4<i32>(21868i, -41541i, i32(-2147483648), -1i);

var<private> global3: array<vec4<bool>, 22>;

var<private> global4: array<vec2<f32>, 7>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: u32, arg_3: Struct_1) -> vec3<bool> {
    global2 = ~(~(~(-max(vec4<i32>(u_input.a, -16626i, -1i, arg_3.a), vec4<i32>(-1i, 0i, u_input.a, global1[_wgslsmith_index_u32(arg_2, 32u)])))));
    let var_0 = global2.x;
    var var_1 = !select(vec3<bool>(true, true, all(global3[_wgslsmith_index_u32(arg_2, 22u)])), vec3<bool>(any(vec4<bool>(true, arg_1, false, false)), _wgslsmith_f_op_f32(step(-1342f, -936f)) > _wgslsmith_f_op_f32(f32(-1f) * -605f), any(vec3<bool>(true, true, true))), any(select(!vec3<bool>(false, arg_1, arg_1), vec3<bool>(false, true, arg_1), true)));
    let var_2 = -378f;
    global3 = array<vec4<bool>, 22>();
    return select(vec3<bool>(all(global3[_wgslsmith_index_u32(~0u, 22u)]), false, !var_1.x), select(vec3<bool>(select(false | arg_1, true, false), true, firstLeadingBit(arg_2) != arg_2), vec3<bool>(false, 1i == ~arg_3.a, all(vec2<bool>(arg_1, true))), var_1.x), !select(!vec3<bool>(var_1.x, arg_1, var_1.x), vec3<bool>(!arg_1, 0u < arg_2, var_1.x), !(!var_1.x)));
}

fn func_2() -> vec3<bool> {
    let var_0 = !select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), func_3(-40973i, true, 0u, Struct_1(global1[_wgslsmith_index_u32(18081u, 32u)]))), vec3<bool>(true, true, true), func_3(min(global2.x, -7674i), true, ~1u, Struct_1(global2.x))), vec3<bool>(!any(global3[_wgslsmith_index_u32(1u, 22u)]), true, true), vec3<bool>(true, true, false));
    var var_1 = _wgslsmith_div_vec3_u32(~select(_wgslsmith_clamp_vec3_u32(vec3<u32>(14193u, 23576u, 85705u), vec3<u32>(4204u, 16566u, 1u), vec3<u32>(14616u, 19365u, 26160u)), ~(~vec3<u32>(18964u, 86040u, 4294967295u)), !select(var_0, var_0, true)), abs(~vec3<u32>(_wgslsmith_add_u32(22539u, 0u), 1u, 4294967295u)));
    var var_2 = !global3[_wgslsmith_index_u32(reverseBits(0u), 22u)];
    global3 = array<vec4<bool>, 22>();
    var var_3 = ~reverseBits(reverseBits(countOneBits(vec4<u32>(var_1.x, var_1.x, 61586u, 0u) >> (vec4<u32>(4294967295u, 0u, var_1.x, var_1.x) % vec4<u32>(32u)))));
    return var_0;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(firstLeadingBit(_wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(1u, 32u)], 16285i ^ ~global2.x, ~(global2.x ^ -5322i))));
    let var_1 = var_0;
    global0 = 886f;
    global4 = array<vec2<f32>, 7>();
    let var_2 = func_2();
    return Struct_1(1i | (global1[_wgslsmith_index_u32(59869u, 32u)] | var_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(_wgslsmith_div_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(~(~23906u), 32u)], min(0i, u_input.a), ~(-global2.x), -2247i), ~vec4<i32>(~global2.x, ~global1[_wgslsmith_index_u32(18240u, 32u)], 1549i, i32(-1i) * -1i)));
    global1 = array<i32, 32>();
    let var_1 = 0u;
    var var_2 = func_1();
    var var_3 = _wgslsmith_f_op_f32(1924f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-107f))));
    let var_4 = 0i;
    let var_5 = func_1();
    let var_6 = Struct_1(abs(var_4));
    let var_7 = _wgslsmith_div_u32(firstTrailingBit(~14627u ^ (var_1 & 49205u)) ^ _wgslsmith_dot_vec2_u32(abs(min(vec2<u32>(6118u, 1u), vec2<u32>(var_1, var_1))), vec2<u32>(4294967295u, var_1)), ~abs(var_1));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(countOneBits(countOneBits(1u)), var_1, 81776u) & select(~_wgslsmith_mod_vec3_u32(vec3<u32>(25329u, var_1, 4294967295u), vec3<u32>(4294967295u, 30973u, var_1)), ~(vec3<u32>(var_1, var_1, 1u) >> (vec3<u32>(4294967295u, 37435u, 4294967295u) % vec3<u32>(32u))), func_2().x), -1000f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-243f, -1213f, -692f, 1000f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-2000f, 1107f, -1140f, 1852f))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-589f, -474f, -959f, -609f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-386f, 2739f, -1079f, -819f)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true)))))));
}

