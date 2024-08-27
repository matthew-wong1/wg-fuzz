struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: u32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 16> = array<vec3<u32>, 16>(vec3<u32>(4294967295u, 1u, 8340u), vec3<u32>(56814u, 1622u, 4294967295u), vec3<u32>(47071u, 23017u, 4294967295u), vec3<u32>(27131u, 61795u, 1u), vec3<u32>(1u, 1u, 21310u), vec3<u32>(24106u, 0u, 4294967295u), vec3<u32>(16697u, 1u, 29992u), vec3<u32>(1u, 0u, 15887u), vec3<u32>(17277u, 79793u, 22114u), vec3<u32>(0u, 54169u, 33216u), vec3<u32>(1u, 0u, 1u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(4294967295u, 16266u, 1u), vec3<u32>(4294967295u, 40305u, 1u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(4294967295u, 1u, 20928u));

var<private> global1: bool;

var<private> global2: array<Struct_1, 28>;

var<private> global3: array<vec2<bool>, 10> = array<vec2<bool>, 10>(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32) -> f32 {
    return -727f;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: i32, arg_3: Struct_1) -> vec3<f32> {
    let var_0 = 0u;
    global2 = array<Struct_1, 28>();
    let var_1 = select(vec4<bool>(arg_0.a, arg_3.a, !arg_3.a, arg_0.a), !(!vec4<bool>(!arg_3.a, arg_3.a, any(global3[_wgslsmith_index_u32(7448u, 10u)]), true)), false);
    var var_2 = arg_3.b.x ^ ~1u;
    let var_3 = arg_3;
    return vec3<f32>(-1008f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(361f, var_3.d.x), arg_1, !arg_3.a)) + -2019f) * -1013f), 1000f);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>) -> bool {
    var var_0 = _wgslsmith_mult_i32(max(-1i, -select(-2147483647i, _wgslsmith_sub_i32(-2147483647i, -2147483647i), true)), 2147483647i);
    global2 = array<Struct_1, 28>();
    var var_1 = Struct_1(u_input.a > ~u_input.a, arg_0.b, arg_0.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(660f, 473f, arg_0.d.x, arg_1.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(178f, 308f, arg_1.x, arg_1.x))))));
    var var_2 = _wgslsmith_f_op_f32(round(-254f));
    var var_3 = _wgslsmith_f_op_vec3_f32(func_4(Struct_1(false, firstTrailingBit(~(~vec4<u32>(var_1.b.x, arg_0.c, 4294967295u, var_1.c))), 1u, vec4<f32>(_wgslsmith_f_op_f32(func_3(~arg_0.b.x)), var_1.d.x, var_1.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.d.x)) - arg_0.d.x))), _wgslsmith_f_op_f32(abs(1094f)), _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(_wgslsmith_add_i32(-15847i, 1874i), ~19464i)), vec2<i32>(1i, 1i)), global2[_wgslsmith_index_u32(reverseBits(~_wgslsmith_mod_u32(arg_0.c | var_1.b.x, var_1.b.x)), 28u)]));
    return !(all(vec2<bool>(all(vec4<bool>(arg_0.a, true, var_1.a, var_1.a)), true || var_1.a)) & true);
}

fn func_1(arg_0: vec3<bool>) -> vec4<bool> {
    var var_0 = firstTrailingBit(~u_input.a) > abs(u_input.a);
    let var_1 = !(!(!(true || arg_0.x)));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-557f, _wgslsmith_div_f32(1653f, 1000f), 896f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1215f, -1560f) + vec3<f32>(553f, 1000f, -791f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1036f, -227f, 446f)))))), (true & !(arg_0.x != false)) | func_2(global2[_wgslsmith_index_u32(32504u, 28u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(2335f, -146f) * vec2<f32>(1277f, 1692f)))));
    let var_3 = select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), select(any(vec2<bool>(false, all(vec4<bool>(arg_0.x, true, var_1, var_1)))), false, arg_0.x));
    global1 = select(var_3.x, !var_3.x, -19220i < firstLeadingBit(_wgslsmith_clamp_i32(1i, 8079i, 1i)));
    return vec4<bool>(var_1, ~85115u >= _wgslsmith_clamp_u32(1u, u_input.a, max(15738u ^ u_input.a, 4294967295u)), arg_0.x, var_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 34529u;
    global3 = array<vec2<bool>, 10>();
    var var_1 = vec2<f32>(838f, _wgslsmith_f_op_f32(281f * _wgslsmith_div_f32(-1466f, _wgslsmith_f_op_f32(f32(-1f) * -1624f))));
    var var_2 = Struct_1(-961f >= var_1.x, select(~vec4<u32>(u_input.a, 1u, var_0, 1u >> (var_0 % 32u)), ~(~(~vec4<u32>(var_0, var_0, var_0, 497u))), select(vec4<bool>(any(vec3<bool>(true, true, false)), true, true, true), !func_1(vec3<bool>(true, false, false)), true)), _wgslsmith_dot_vec4_u32(vec4<u32>(53616u, 4294967295u, 10785u, ~17110u), _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(91902u, var_0, 76336u, 20310u), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0, var_0, u_input.a, 30580u), vec4<u32>(u_input.a, var_0, 0u, 14525u))), ~select(vec4<u32>(28592u, 40546u, 3535u, u_input.a), vec4<u32>(var_0, 0u, u_input.a, u_input.a), true))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -299f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1156f, _wgslsmith_f_op_f32(1466f + -1097f), true))), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(abs(-949f))));
    var var_3 = _wgslsmith_clamp_u32(var_0, 0u, 6192u) ^ ~4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-152f, _wgslsmith_f_op_f32(select(-377f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(var_2.b.x)) - _wgslsmith_f_op_f32(ceil(638f))), any(!global3[_wgslsmith_index_u32(4294967295u, 10u)]))), _wgslsmith_f_op_f32(max(-982f, _wgslsmith_f_op_f32(min(-633f, -353f))))));
}

