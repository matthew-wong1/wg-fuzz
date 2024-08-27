struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(-1i, -65053i), true, vec2<u32>(2061u, 0u));

var<private> global1: array<i32, 9> = array<i32, 9>(-1i, i32(-2147483648), -1i, -29537i, 0i, 0i, -2556i, i32(-2147483648), -45144i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec4<f32>) -> vec3<bool> {
    return vec3<bool>(arg_1.b, true, arg_1.b);
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: i32, arg_3: vec4<bool>) -> bool {
    global1 = array<i32, 9>();
    let var_0 = -64080i;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -215f), 1f, _wgslsmith_f_op_f32(-522f * _wgslsmith_f_op_f32(floor(-1910f)))), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-527f, 1378f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-543f - -846f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1461f)), _wgslsmith_f_op_f32(-1728f * -388f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(260f, -160f, -698f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-172f, 1425f, 411f))) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-923f, -1750f, -556f)))) - vec3<f32>(_wgslsmith_f_op_f32(sign(892f)), 485f, _wgslsmith_f_op_f32(-284f * -1391f)))));
    var var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(680f)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.x)))))));
    return arg_0.b;
}

fn func_2(arg_0: u32, arg_1: vec3<bool>, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_1(abs(global0.a), func_3(Struct_1(vec2<i32>(2147483647i, -11317i), !arg_1.x && true, ~_wgslsmith_sub_vec2_u32(vec2<u32>(64508u, u_input.a), global0.c)), any(vec3<bool>(arg_1.x, arg_1.x, any(vec4<bool>(true, global0.b, global0.b, true)))), _wgslsmith_clamp_i32(~global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global0.c.x, 1u), 9u)], select(2147483647i, -1i, !arg_1.x), 2147483647i), vec4<bool>(arg_1.x, select(false, arg_2.x < arg_2.x, true != global0.b), !all(arg_1), arg_1.x)), min(global0.c, u_input.d) ^ countOneBits(~(global0.c >> (vec2<u32>(54771u, global0.c.x) % vec2<u32>(32u)))));
    global0 = Struct_1(_wgslsmith_div_vec2_i32(select(u_input.b.wx, vec2<i32>(global0.a.x, u_input.c), func_1(vec3<i32>(global0.a.x, global0.a.x, 0i), Struct_1(var_0.a, arg_1.x, vec2<u32>(0u, 9326u)), vec4<f32>(arg_2.x, -1393f, 905f, 779f)).x) >> ((_wgslsmith_sub_vec2_u32(global0.c, vec2<u32>(0u, 2849u)) | vec2<u32>(15290u, arg_0)) % vec2<u32>(32u)), vec2<i32>(~(-u_input.b.x), 50232i)), false, ~(~(vec2<u32>(global0.c.x, arg_0) << (abs(vec2<u32>(41343u, var_0.c.x)) % vec2<u32>(32u)))));
    var var_1 = ~u_input.b >> (~min(~(~vec4<u32>(u_input.d.x, u_input.a, 16808u, arg_0)), ~vec4<u32>(1u, 4294967295u, arg_0, global0.c.x) | vec4<u32>(105129u, 16065u, u_input.a, 0u)) % vec4<u32>(32u));
    global0 = Struct_1(var_0.a, true, select(countOneBits(u_input.d), var_0.c, vec2<bool>(false, global0.b)));
    var var_2 = var_0.b;
    return Struct_1(vec2<i32>(-12210i, u_input.b.x), all(!vec3<bool>(any(vec4<bool>(var_0.b, var_0.b, true, global0.b)), false, global1[_wgslsmith_index_u32(global0.c.x, 9u)] == 36668i)), select(max(vec2<u32>(arg_0, arg_0), u_input.d) ^ _wgslsmith_mult_vec2_u32(var_0.c, vec2<u32>(1u, 4018u)), select(vec2<u32>(global0.c.x, 36771u) | vec2<u32>(var_0.c.x, 67865u), ~vec2<u32>(global0.c.x, 0u), -4789i == global1[_wgslsmith_index_u32(var_0.c.x, 9u)]), all(arg_1)) >> (max(select(vec2<u32>(u_input.d.x, 49051u), firstLeadingBit(vec2<u32>(0u, var_0.c.x)), !global0.b), (vec2<u32>(4294967295u, 1u) ^ vec2<u32>(u_input.a, 4294967295u)) & _wgslsmith_mod_vec2_u32(vec2<u32>(global0.c.x, global0.c.x), vec2<u32>(0u, var_0.c.x))) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_2(51086u, !(!(!func_1(u_input.b.zxy, Struct_1(global0.a, true, global0.c), vec4<f32>(-555f, 1363f, -1000f, -425f)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(-132f, _wgslsmith_f_op_f32(f32(-1f) * -865f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1141f + -1875f) - _wgslsmith_f_op_f32(1000f * -397f)), _wgslsmith_div_f32(-1169f, _wgslsmith_f_op_f32(select(-739f, 1700f, true)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1718f, -798f, 1000f), vec3<f32>(-596f, -2117f, -1000f)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1401f, 1000f, 289f))))))));
    global0 = func_2(95239u, !vec3<bool>(global0.b, true, true), vec3<f32>(_wgslsmith_f_op_f32(-1245f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-157f, -1000f) - _wgslsmith_f_op_f32(ceil(-296f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1310f) + 936f), 485f));
    var var_0 = func_2(u_input.d.x, !(!(!vec3<bool>(global0.b, global0.b, false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1686f, 1000f, -1167f))) * vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1300f, 1657f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1582f, -226f)), 846f)));
    var_0 = func_2(33451u, select(vec3<bool>(true, true, true), select(vec3<bool>(func_3(Struct_1(global0.a, var_0.b, u_input.d), global0.b, global1[_wgslsmith_index_u32(var_0.c.x, 9u)], vec4<bool>(var_0.b, global0.b, var_0.b, true)), var_0.b, any(vec4<bool>(global0.b, var_0.b, false, var_0.b))), vec3<bool>(all(vec2<bool>(true, false)), func_3(Struct_1(u_input.b.wx, true, global0.c), false, 26306i, vec4<bool>(false, var_0.b, false, var_0.b)), var_0.b || false), vec3<bool>(true, true, true)), !(!(!vec3<bool>(true, false, global0.b)))), vec3<f32>(293f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(604f + -465f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1803f * -1050f), _wgslsmith_f_op_f32(-1000f - -226f)))), -854f));
    var var_1 = 1i;
    global1 = array<i32, 9>();
    let var_2 = Struct_1(-firstTrailingBit(vec2<i32>(-global0.a.x, -global0.a.x)), all(vec4<bool>(global0.b, !(!global0.b), global0.b, global0.b)), _wgslsmith_mult_vec2_u32(vec2<u32>(~var_0.c.x >> (~1u % 32u), ~_wgslsmith_mod_u32(u_input.a, global0.c.x)), vec2<u32>(countOneBits(4457u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c.x, 0u, 4294967295u, 4294967295u), vec4<u32>(global0.c.x, 0u, 46480u, u_input.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(global0.c, min(firstLeadingBit(_wgslsmith_mult_u32(global0.c.x, 4294967295u)), 45113u), -625f, 552f, abs(vec3<u32>(global0.c.x, ~(~var_2.c.x), _wgslsmith_div_u32(global0.c.x, 68556u & u_input.d.x))));
}

