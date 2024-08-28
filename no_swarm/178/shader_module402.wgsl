struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 32> = array<vec2<i32>, 32>(vec2<i32>(0i, -1i), vec2<i32>(1i, 2483i), vec2<i32>(11109i, 18955i), vec2<i32>(2993i, -20499i), vec2<i32>(-813i, 15514i), vec2<i32>(-15375i, 6781i), vec2<i32>(-1i, 60038i), vec2<i32>(7749i, -4489i), vec2<i32>(1i, -1i), vec2<i32>(10528i, 34239i), vec2<i32>(-1i, 0i), vec2<i32>(2147483647i, -24570i), vec2<i32>(1302i, 5244i), vec2<i32>(0i, 2147483647i), vec2<i32>(2147483647i, -31373i), vec2<i32>(2147483647i, 1i), vec2<i32>(2147483647i, 1i), vec2<i32>(i32(-2147483648), 15990i), vec2<i32>(-467i, 0i), vec2<i32>(1216i, i32(-2147483648)), vec2<i32>(2147483647i, 549i), vec2<i32>(14714i, -88658i), vec2<i32>(12115i, 1i), vec2<i32>(1i, 60294i), vec2<i32>(1i, 69176i), vec2<i32>(-10150i, -39941i), vec2<i32>(2147483647i, 1i), vec2<i32>(-62141i, 0i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(13120i, 5043i), vec2<i32>(2147483647i, 55905i), vec2<i32>(1i, 0i));

var<private> global1: array<i32, 9> = array<i32, 9>(0i, -1i, 14635i, 18376i, -43499i, i32(-2147483648), -1i, 1i, 2147483647i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec2<f32>) -> vec2<u32> {
    return reverseBits(abs(max(countOneBits(vec2<u32>(0u, 13052u)), vec2<u32>(4294967295u, u_input.b) & firstTrailingBit(vec2<u32>(u_input.b, 11358u)))));
}

fn func_3(arg_0: vec2<i32>) -> i32 {
    let var_0 = Struct_1(-(~min(1i, arg_0.x)), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(select(u_input.a, u_input.a, vec4<bool>(false, false, false, true)), vec4<i32>(arg_0.x, global1[_wgslsmith_index_u32(u_input.b, 9u)], global1[_wgslsmith_index_u32(u_input.b, 9u)], -71230i)), _wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(u_input.b, 9u)], arg_0.x, global1[_wgslsmith_index_u32(u_input.b, 9u)], u_input.a.x), vec4<i32>(29463i, global1[_wgslsmith_index_u32(u_input.b, 9u)], u_input.a.x, arg_0.x))) <= -(-global1[_wgslsmith_index_u32(u_input.b, 9u)] & arg_0.x));
    global0 = array<vec2<i32>, 32>();
    global0 = array<vec2<i32>, 32>();
    global1 = array<i32, 9>();
    return _wgslsmith_dot_vec4_i32(vec4<i32>(~(~arg_0.x >> (13718u % 32u)), select(max(var_0.a, global1[_wgslsmith_index_u32(~u_input.b, 9u)]), -var_0.a ^ 2147483647i, u_input.b > ~u_input.b), -2147483647i, reverseBits(max(reverseBits(-2147483647i), firstTrailingBit(global1[_wgslsmith_index_u32(u_input.b, 9u)])))), firstLeadingBit(vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.a.wx, vec2<i32>(var_0.a, u_input.a.x)), i32(-1i) * -11442i, arg_0.x, -11725i)) & -u_input.a);
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_div_i32(-2552i, _wgslsmith_dot_vec4_i32(select(u_input.a, select(vec4<i32>(u_input.a.x, global1[_wgslsmith_index_u32(u_input.b, 9u)], -1i, -1i), u_input.a, false), true), countOneBits(u_input.a))), all(select(vec2<bool>(u_input.a.x >= global1[_wgslsmith_index_u32(0u, 9u)], u_input.a.x <= u_input.a.x), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), true)));
    var var_1 = abs(vec4<i32>(global1[_wgslsmith_index_u32(42813u, 9u)] | u_input.a.x, func_3(max(u_input.a.zy, vec2<i32>(1i, global1[_wgslsmith_index_u32(u_input.b, 9u)]))), firstLeadingBit(-14473i) & var_0.a, global1[_wgslsmith_index_u32(u_input.b, 9u)])) | vec4<i32>(var_0.a | 1i, 0i, 0i, firstTrailingBit(2951i));
    global1 = array<i32, 9>();
    global0 = array<vec2<i32>, 32>();
    let var_2 = Struct_1(u_input.a.x & _wgslsmith_add_i32(global1[_wgslsmith_index_u32(35514u, 9u)], abs(-2147483647i)), true);
    return Struct_2(~vec2<i32>(1i, 1i));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1, arg_3: Struct_2) -> f32 {
    global1 = array<i32, 9>();
    var var_0 = Struct_2(vec2<i32>(_wgslsmith_add_i32(global1[_wgslsmith_index_u32(arg_1 ^ arg_1, 9u)], 52323i), firstTrailingBit(1i)));
    global0 = array<vec2<i32>, 32>();
    global0 = array<vec2<i32>, 32>();
    var var_1 = select(select(vec3<bool>(!arg_2.b, arg_2.b, all(select(vec4<bool>(arg_2.b, arg_2.b, false, arg_2.b), vec4<bool>(arg_2.b, true, arg_2.b, false), vec4<bool>(true, true, arg_2.b, false)))), !vec3<bool>(arg_2.b | arg_2.b, all(vec3<bool>(arg_2.b, true, true)), any(vec2<bool>(arg_2.b, arg_2.b))), !any(vec3<bool>(false, false, arg_2.b))), select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, arg_2.b, arg_2.b), arg_2.b), select(vec3<bool>(true, arg_2.b, false), vec3<bool>(false, false, arg_2.b), true)), !(!vec3<bool>(arg_2.b, arg_2.b, true)), select(!vec3<bool>(arg_2.b, arg_2.b, arg_2.b), select(vec3<bool>(false, arg_2.b, true), vec3<bool>(true, false, false), vec3<bool>(false, arg_2.b, false)), true)), vec3<bool>(any(select(vec4<bool>(false, true, false, false), vec4<bool>(arg_2.b, false, false, arg_2.b), vec4<bool>(arg_2.b, true, false, arg_2.b))), arg_2.b, true), select(!(!vec3<bool>(arg_2.b, arg_2.b, arg_2.b)), select(!vec3<bool>(false, arg_2.b, arg_2.b), !vec3<bool>(true, arg_2.b, arg_2.b), select(vec3<bool>(true, false, true), vec3<bool>(false, true, arg_2.b), vec3<bool>(false, false, arg_2.b))), false)), true);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(782f)))) + _wgslsmith_f_op_f32(min(-1307f, -1080f))) + 346f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-1000f, 1317f, var_1.x))))), -1000f));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 9>();
    var var_0 = ~_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(42754u, 11420u, 25915u) >> (select(46316u, u_input.b, false) % 32u), u_input.b), ~_wgslsmith_sub_vec2_u32(func_1(vec2<f32>(-1000f, 333f)), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(u_input.b, u_input.b))));
    let var_1 = _wgslsmith_f_op_f32(func_4(func_2(), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(15561u, 0u, u_input.b)), vec3<u32>(var_0.x, u_input.b, u_input.b)) << (~_wgslsmith_add_u32(u_input.b, var_0.x) % 32u), u_input.b), Struct_1(_wgslsmith_clamp_i32(u_input.a.x >> ((19707u ^ var_0.x) % 32u), -2147483647i, firstTrailingBit(25749i)), !any(vec2<bool>(true, true))), Struct_2(vec2<i32>(u_input.a.x, _wgslsmith_div_i32(global1[_wgslsmith_index_u32(1u, 9u)], -3695i << (var_0.x % 32u))))));
    var_0 = min(vec2<u32>(~u_input.b, 4294967295u) >> (abs(~vec2<u32>(var_0.x, var_0.x)) % vec2<u32>(32u)), ~countOneBits(vec2<u32>(u_input.b, 4294967295u) | vec2<u32>(var_0.x, u_input.b))) ^ ~firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.x, var_0.x) & vec2<u32>(75191u, u_input.b), abs(vec2<u32>(var_0.x, u_input.b))));
    var var_2 = func_2();
    var var_3 = Struct_2(var_2.a);
    let var_4 = Struct_1(-17115i, true);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.x, 4294967295u), vec2<u32>(74322u, var_0.x)) >> (_wgslsmith_div_vec2_u32(vec2<u32>(0u, var_0.x), vec2<u32>(u_input.b, var_0.x)) % vec2<u32>(32u)), max(abs(vec2<u32>(23290u, 4294967295u)), vec2<u32>(var_0.x, 25018u))), ~0u), 16431i << (max(43163u, func_1(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1, var_1), vec2<f32>(997f, var_1)))).x) % 32u));
}

