struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec2<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: vec2<f32>;

var<private> global2: array<f32, 9> = array<f32, 9>(1000f, -1613f, -308f, -289f, -1620f, -123f, 165f, -1616f, -1000f);

var<private> global3: vec3<u32> = vec3<u32>(0u, 4294967295u, 1u);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> i32 {
    return -15640i;
}

fn func_3(arg_0: f32, arg_1: i32) -> bool {
    var var_0 = Struct_1(0i);
    var var_1 = _wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(u_input.a, 9u)], -698f)))), global2[_wgslsmith_index_u32(select(50400u, ~u_input.b, !(!global0.x)), 9u)]))));
    var var_2 = firstLeadingBit(_wgslsmith_mult_u32(global3.x, _wgslsmith_sub_u32(~55183u, ~global3.x)));
    var_1 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, 23598u, 4294967295u, ~(~1u)), reverseBits(firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, global3.x, 96403u, 4294967295u), vec4<u32>(u_input.a, u_input.b, u_input.a, 24690u))))), global3.x), 9u)];
    let var_3 = Struct_1(-countOneBits(func_2()));
    return true;
}

fn func_1() -> Struct_2 {
    let var_0 = vec4<i32>(abs(select(func_2(), 1i, func_3(global1.x, 1i) || true)), i32(-1i) * -2147483647i, 10561i, i32(-1i) * -(~(-9177i)));
    let var_1 = Struct_1(-21813i);
    var var_2 = Struct_1(_wgslsmith_mod_i32(-20415i, var_1.a));
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1081f, global2[_wgslsmith_index_u32(0u, 9u)]))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1206f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-440f - global1.x) + 1367f)))));
    var var_3 = ~_wgslsmith_mod_i32(10472i, 10694i) != _wgslsmith_clamp_i32(var_2.a & abs(func_2()), -9339i, _wgslsmith_dot_vec2_i32(min(firstLeadingBit(var_0.xz), var_0.xw), -var_0.yz));
    return Struct_2(var_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(abs(global3.x), 8590u, 58114u >> (1u % 32u), ~4294967295u) ^ _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a, 1u, 72363u, 19111u), ~vec4<u32>(58087u, 0u, global3.x, global3.x)), ~_wgslsmith_add_vec4_u32(vec4<u32>(77551u, global3.x, u_input.a, u_input.a), vec4<u32>(global3.x, 24131u, 44248u, u_input.a) ^ vec4<u32>(1u, global3.x, u_input.a, 4294967295u))) ^ vec4<u32>(abs(~(37158u << (u_input.b % 32u))), _wgslsmith_clamp_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(21610u, 42372u), global3.x), 0u, global3.x), firstLeadingBit(~u_input.b << (~13661u % 32u)), _wgslsmith_sub_u32(~5510u, abs(39717u)) | u_input.a);
    global0 = !(!select(vec4<bool>(!global0.x, all(vec4<bool>(global0.x, true, false, true)), global0.x, true), !(!vec4<bool>(false, global0.x, true, true)), vec4<bool>(false, false, all(vec3<bool>(true, false, global0.x)), true)));
    let var_1 = Struct_1(1i);
    let var_2 = vec3<bool>(false, true, true);
    let var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -830f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-853f * 1000f), _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1753f, global1.x)))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1061f, global1.x) + vec2<f32>(983f, 431f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-502f, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-global1.x))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(504f, 1776f, global2[_wgslsmith_index_u32(var_0.x, 9u)]) - vec3<f32>(global2[_wgslsmith_index_u32(var_0.x, 9u)], global2[_wgslsmith_index_u32(1u, 9u)], global2[_wgslsmith_index_u32(48526u, 9u)])) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(44539u, 9u)], global2[_wgslsmith_index_u32(0u, 9u)], -1058f) * vec3<f32>(global1.x, 1313f, global1.x)))))), var_0.zw, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -780f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(global1.x)))), 1f)));
}

