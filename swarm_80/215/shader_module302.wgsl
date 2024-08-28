struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 1> = array<bool, 1>(true);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec2<f32>) -> bool {
    return !any(vec4<bool>(global0[_wgslsmith_index_u32(98704u, 1u)], false, any(!vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.e, 1u)])), !select(true, true, global0[_wgslsmith_index_u32(9476u, 1u)])));
}

fn func_2(arg_0: vec4<i32>) -> Struct_2 {
    global0 = array<bool, 1>();
    var var_0 = Struct_3(all(vec3<bool>(any(vec4<bool>(false, true, global0[_wgslsmith_index_u32(u_input.e, 1u)], global0[_wgslsmith_index_u32(4294967295u, 1u)])) && select(true, true, true), !global0[_wgslsmith_index_u32(u_input.e, 1u)] | true, false)), Struct_1(vec4<u32>(u_input.d, u_input.d, _wgslsmith_div_u32(~0u, ~u_input.e), _wgslsmith_mult_u32(1836u, 1u) >> ((u_input.d | 10398u) % 32u))));
    var_0 = Struct_3((func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-733f, -454f) * vec2<f32>(-1000f, 541f))) && true) != true, Struct_1(~min(var_0.b.a << (vec4<u32>(u_input.e, var_0.b.a.x, 1u, var_0.b.a.x) % vec4<u32>(32u)), countOneBits(vec4<u32>(11202u, var_0.b.a.x, u_input.e, 18389u)))));
    let var_1 = Struct_4(arg_0.x, 2147483647i);
    return Struct_2(_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-37168i, abs(var_1.a)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, -2147483647i), vec2<i32>(0i, var_1.b)) << (vec2<u32>(1u, 33412u) % vec2<u32>(32u))), _wgslsmith_sub_vec2_i32(u_input.a.wy, select(_wgslsmith_mod_vec2_i32(u_input.b.xx, vec2<i32>(-2147483647i, var_1.b)), vec2<i32>(arg_0.x, -50065i) | vec2<i32>(u_input.b.x, 67823i), vec2<bool>(true, true))), -countOneBits(select(arg_0.yz, vec2<i32>(1i, var_1.a), true))), ~(~u_input.e), select(var_1.b << (~_wgslsmith_dot_vec2_u32(var_0.b.a.xw, vec2<u32>(u_input.e, u_input.d)) % 32u), ~firstLeadingBit(-var_1.a), true), ~var_0.b.a.xww, var_0.b);
}

fn func_1(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_2) -> f32 {
    global0 = array<bool, 1>();
    var var_0 = func_2(u_input.b);
    var_0 = Struct_2(func_2(vec4<i32>(~(~var_0.a.x), ~(i32(-1i) * -2147483647i), 69807i, 36085i)).a, 1u, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, 4931i, var_0.c) >> (abs(vec3<u32>(var_0.e.a.x, 11027u, 0u)) % vec3<u32>(32u)), min(vec3<i32>(5273i, u_input.a.x, u_input.b.x) >> (vec3<u32>(var_0.e.a.x, 4294967295u, u_input.d) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, arg_1, u_input.a.x), u_input.a.zwy, vec3<i32>(arg_1, u_input.b.x, u_input.c)))) & (func_2(u_input.b).c << ((133u & arg_2.b) % 32u)), select(select(vec3<u32>(19920u, 0u, u_input.e) ^ vec3<u32>(54220u, 92646u, 34579u), vec3<u32>(arg_2.b, 4294967295u, var_0.b), false) | vec3<u32>(4294967295u, u_input.e ^ 3335u, ~1u), ~_wgslsmith_sub_vec3_u32(arg_2.d & arg_2.e.a.wyy, max(var_0.e.a.xww, var_0.d)), global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec4_u32(arg_2.e.a | var_0.e.a, firstTrailingBit(vec4<u32>(arg_2.d.x, var_0.b, 49355u, 18203u)))), 1u)]), Struct_1(arg_2.e.a));
    var var_1 = arg_2.a;
    let var_2 = 17822u >> (~(max(1u | arg_2.d.x, var_0.e.a.x) << (~_wgslsmith_div_u32(arg_2.b, arg_2.b) % 32u)) % 32u);
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-2807f)) + -226f), -298f)) - 799f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(860f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.d, 1u)]), ~(-18871i), Struct_2(u_input.b.xx, u_input.e, u_input.a.x, vec3<u32>(u_input.e, 1u, 1u), Struct_1(vec4<u32>(35888u, 0u, u_input.e, 4294967295u)))))), _wgslsmith_f_op_f32(sign(576f)))), -246f, _wgslsmith_f_op_f32(trunc(-1321f)));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1228f, var_0.x, -1051f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(391f, -1571f, 1000f, var_0.x)))), select(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.e, 1u)], true, false, false), vec4<bool>(false, false, false, global0[_wgslsmith_index_u32(u_input.e, 1u)]), vec4<bool>(global0[_wgslsmith_index_u32(75200u, 1u)], false, false, global0[_wgslsmith_index_u32(u_input.d, 1u)])), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.d, 1u)], global0[_wgslsmith_index_u32(13174u, 1u)], global0[_wgslsmith_index_u32(u_input.d, 1u)], false), true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, -410f, var_0.x, var_0.x), vec4<f32>(1410f, -537f, -420f, var_0.x))))) - vec4<f32>(_wgslsmith_f_op_f32(ceil(1094f)), _wgslsmith_f_op_f32(2336f * var_0.x), _wgslsmith_f_op_f32(max(-289f, var_0.x)), _wgslsmith_f_op_f32(min(537f, var_0.x))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -245f))))));
    let var_2 = global0[_wgslsmith_index_u32(~firstLeadingBit(~90597u ^ ~u_input.e), 1u)] & true;
    let var_3 = 40038i;
    var var_4 = -26520i;
    global0 = array<bool, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(~abs(_wgslsmith_mult_vec3_u32(~vec3<u32>(0u, 10543u, 28949u), ~vec3<u32>(u_input.e, u_input.e, u_input.d))), _wgslsmith_add_vec4_i32(u_input.a, u_input.a), u_input.a, u_input.d);
}

