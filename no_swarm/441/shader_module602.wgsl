struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: u32,
    d: vec2<bool>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<f32>,
    c: u32,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5> = array<bool, 5>(true, false, true, true, true);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: i32, arg_1: vec2<bool>, arg_2: vec2<f32>) -> vec3<u32> {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(arg_2.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(445f, arg_2.x), 341f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-342f, 967f))), arg_2.x))), reverseBits(countOneBits(_wgslsmith_mod_u32(u_input.a, 40478u))));
    global0 = array<bool, 5>();
    global0 = array<bool, 5>();
    global0 = array<bool, 5>();
    var var_1 = vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a, ~u_input.a | 63359u, var_0.b), 5u)] | (1674f != _wgslsmith_div_f32(_wgslsmith_div_f32(-965f, arg_2.x), 1429f)), arg_1.x, arg_1.x);
    return _wgslsmith_sub_vec3_u32(vec3<u32>(~(~1u), u_input.a, ~4294967295u), min(~(~vec3<u32>(35683u, 24097u, var_0.b)), ~(vec3<u32>(1u, u_input.a, 4053u) >> (vec3<u32>(4249u, u_input.a, 57045u) % vec3<u32>(32u)))) << (vec3<u32>(_wgslsmith_dot_vec3_u32(select(vec3<u32>(1u, u_input.a, 4294967295u), vec3<u32>(u_input.a, var_0.b, 1u), global0[_wgslsmith_index_u32(0u, 5u)]), vec3<u32>(51654u, u_input.a, var_0.b) >> (vec3<u32>(0u, 4294967295u, u_input.a) % vec3<u32>(32u))), u_input.a, _wgslsmith_clamp_u32(var_0.b, var_0.b, 1u)) % vec3<u32>(32u)));
}

fn func_3(arg_0: vec4<u32>) -> u32 {
    let var_0 = Struct_1(select(select(!(!vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 5u)], true, true)), !select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 5u)], true, true, false), vec4<bool>(global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(arg_0.x, 5u)], false, global0[_wgslsmith_index_u32(6451u, 5u)]), true), global0[_wgslsmith_index_u32(1u, 5u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 5u)], false, all(!vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 5u)], global0[_wgslsmith_index_u32(arg_0.x, 5u)])), !all(vec3<bool>(global0[_wgslsmith_index_u32(arg_0.x, 5u)], global0[_wgslsmith_index_u32(arg_0.x, 5u)], global0[_wgslsmith_index_u32(arg_0.x, 5u)]))), vec4<bool>(false, global0[_wgslsmith_index_u32(reverseBits(31842u), 5u)], global0[_wgslsmith_index_u32(arg_0.x, 5u)], any(vec3<bool>(global0[_wgslsmith_index_u32(0u, 5u)], false, global0[_wgslsmith_index_u32(94115u, 5u)])))), 130f);
    var var_1 = ~_wgslsmith_div_u32(arg_0.x, arg_0.x);
    global0 = array<bool, 5>();
    let var_2 = Struct_2(select(var_0.a.xw, vec2<bool>(_wgslsmith_dot_vec2_u32(arg_0.wy, arg_0.zz) > func_2(2147483647i, vec2<bool>(var_0.a.x, global0[_wgslsmith_index_u32(u_input.a, 5u)]), vec2<f32>(-866f, 1000f)).x, true), true), ~arg_0.yxw | ~reverseBits(~vec3<u32>(0u, 1u, u_input.a)), (94555u << (arg_0.x % 32u)) << (arg_0.x % 32u), var_0.a.yx, vec3<u32>(u_input.a, min(_wgslsmith_mult_u32(0u, abs(31781u)), ~u_input.a ^ firstTrailingBit(1u)), _wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.a, 57450u) ^ ~arg_0.x, _wgslsmith_sub_u32(countOneBits(1751u), u_input.a))));
    global0 = array<bool, 5>();
    return _wgslsmith_mod_u32(_wgslsmith_div_u32(arg_0.x, _wgslsmith_div_u32(~arg_0.x, var_2.e.x)), reverseBits(5844u)) & arg_0.x;
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> u32 {
    var var_0 = arg_0.a.xx;
    var var_1 = Struct_2(!arg_0.a.zw, countOneBits(_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(4294967295u, u_input.a, u_input.a)), select(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(11785u, u_input.a, u_input.a), true) | _wgslsmith_div_vec3_u32(vec3<u32>(14072u, u_input.a, 1u), vec3<u32>(u_input.a, u_input.a, 76401u)), vec3<u32>(~u_input.a, ~u_input.a, 49598u))), ~(~34610u), arg_0.a.yy, ~func_2(-_wgslsmith_mod_i32(u_input.b, u_input.b), arg_0.a.zw, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0.b, -2019f))))));
    let var_2 = u_input.b;
    let var_3 = Struct_4(Struct_2(!arg_0.a.zw, countOneBits(vec3<u32>(func_3(vec4<u32>(u_input.a, u_input.a, 1u, var_1.b.x)), 4294967295u, var_1.b.x)), u_input.a, select(var_1.a, arg_0.a.xz, all(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 5u)], global0[_wgslsmith_index_u32(u_input.a, 5u)], false))), vec3<u32>(u_input.a, var_1.c, 1u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(arg_0.b)))), arg_0.b)), ~(((u_input.a >> (0u % 32u)) >> (_wgslsmith_div_u32(var_1.c, 71854u) % 32u)) << (~func_2(var_2, vec2<bool>(var_0.x, arg_1), vec2<f32>(910f, arg_0.b)).x % 32u)), Struct_3(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, arg_0.b, 1658f, arg_0.b) + vec4<f32>(1040f, -1175f, arg_0.b, arg_0.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, arg_0.b, -1059f, arg_0.b) + vec4<f32>(1254f, arg_0.b, -1878f, -1319f))))), _wgslsmith_dot_vec2_u32(~vec2<u32>(var_1.b.x, var_1.e.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 31902u), _wgslsmith_sub_vec2_u32(var_1.e.yy, vec2<u32>(6891u, 1u)), vec2<u32>(13574u, 1738u) << (var_1.b.zx % vec2<u32>(32u))))));
    let var_4 = all(vec2<bool>(!select(true, var_1.a.x, arg_1), any(!arg_0.a))) | arg_0.a.x;
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, abs(-22632i), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~abs(vec4<u32>(72937u, 1u, 4294967295u, 930u)), vec4<u32>(28974u, 1u, 4294967295u, ~u_input.a)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(2704u, u_input.a, u_input.a, 1u), countOneBits(vec4<u32>(34723u, u_input.a, 0u, 26183u))) | vec4<u32>(u_input.a, func_1(Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 5u)], true, true, global0[_wgslsmith_index_u32(u_input.a, 5u)]), -276f), global0[_wgslsmith_index_u32(4294967295u, 5u)]), _wgslsmith_mod_u32(20327u, 95660u), _wgslsmith_div_u32(20003u, 68975u))), vec2<f32>(_wgslsmith_f_op_f32(-673f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(571f, -603f)), -228f))), _wgslsmith_f_op_f32(floor(720f))), -firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(19124i, u_input.b, u_input.b, u_input.b), -vec4<i32>(-2147483647i, u_input.b, u_input.b, u_input.b))));
}

