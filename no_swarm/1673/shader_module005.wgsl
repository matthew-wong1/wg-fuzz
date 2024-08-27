struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
    c: f32,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 23704u;

var<private> global1: Struct_1 = Struct_1(true, vec4<i32>(0i, i32(-2147483648), 67719i, -32445i), 0i);

var<private> global2: array<vec2<f32>, 22> = array<vec2<f32>, 22>(vec2<f32>(-1000f, -646f), vec2<f32>(520f, 1035f), vec2<f32>(-1068f, 1000f), vec2<f32>(-157f, 119f), vec2<f32>(-318f, 608f), vec2<f32>(-1247f, -120f), vec2<f32>(2402f, -651f), vec2<f32>(189f, 299f), vec2<f32>(1000f, 531f), vec2<f32>(522f, 854f), vec2<f32>(719f, -878f), vec2<f32>(739f, -1100f), vec2<f32>(-332f, 590f), vec2<f32>(-582f, 456f), vec2<f32>(2508f, -1511f), vec2<f32>(-783f, 2374f), vec2<f32>(504f, 663f), vec2<f32>(555f, 2284f), vec2<f32>(-805f, 1079f), vec2<f32>(-926f, 1000f), vec2<f32>(279f, 1000f), vec2<f32>(-1247f, 651f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec3<f32> {
    let var_0 = select(vec3<bool>(false, (1i != (-16637i ^ u_input.c.x)) == true, false), !select(vec3<bool>(any(vec4<bool>(false, global1.a, global1.a, false)), true, true), vec3<bool>(global1.a && true, true, !global1.a), select(vec3<bool>(global1.a, global1.a, true), !vec3<bool>(global1.a, true, false), all(vec4<bool>(false, false, global1.a, global1.a)))), vec3<bool>(global1.a, all(select(vec2<bool>(global1.a, global1.a), vec2<bool>(global1.a, global1.a), false)), global1.a));
    global2 = array<vec2<f32>, 22>();
    let var_1 = global1.b;
    let var_2 = Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 0u), vec4<u32>(u_input.b.x, 0u, u_input.a, 0u)), vec4<u32>(~u_input.b.x, _wgslsmith_mod_u32(u_input.b.x, 44027u), u_input.a, ~19916u))), 22u)], -858f, -850f, -14240i, _wgslsmith_div_i32(global1.b.x, 1i) < _wgslsmith_div_i32(-4514i, ~u_input.d));
    var var_3 = _wgslsmith_div_vec4_u32(~min(~vec4<u32>(28612u, 4294967295u, u_input.a, u_input.b.x), ~vec4<u32>(54167u, u_input.a, u_input.b.x, 23848u) | _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, u_input.a, u_input.b.x, 68051u), vec4<u32>(0u, u_input.a, 1u, u_input.a))), vec4<u32>(u_input.b.x, abs(u_input.b.x), reverseBits(u_input.b.x), ~(u_input.a ^ ~36820u)));
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -729f), var_2.b, -1107f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.x, var_2.c, 308f) - vec3<f32>(172f, 189f, -465f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-560f, -681f, 312f) - vec3<f32>(var_2.a.x, -1000f, -365f))) * vec3<f32>(_wgslsmith_f_op_f32(trunc(var_2.c)), 384f, 354f))), !var_0));
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3()))) + vec3<f32>(610f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-1364f)), -1260f, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-918f, 667f)) - _wgslsmith_div_f32(-396f, 1407f)))));
    var var_1 = !(!global1.a);
    let var_2 = vec2<bool>(global1.a, false);
    global0 = firstLeadingBit(u_input.a >> (6770u % 32u));
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.x, 423f))) - vec2<f32>(_wgslsmith_f_op_vec3_f32(func_3()).x, -860f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-362f + var_0.x) + _wgslsmith_f_op_f32(var_0.x * _wgslsmith_div_f32(var_0.x, -315f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-620f)))), u_input.c.x, false);
    return _wgslsmith_f_op_f32(1067f * -1598f);
}

fn func_1(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: i32) -> f32 {
    var var_0 = arg_2;
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -967f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-481f)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(u_input.b.x, 22u)]) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-598f, -256f) + global2[_wgslsmith_index_u32(12405u, 22u)])))))), _wgslsmith_f_op_f32(f32(-1f) * -389f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-521f)) * -672f))), u_input.c.x, false);
    global0 = ~(~u_input.a);
    var var_2 = u_input.a;
    global0 = _wgslsmith_mult_u32(~firstTrailingBit(abs(firstTrailingBit(9998u))), arg_0);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1044f;
    var var_1 = ~global1.b.zyx ^ vec3<i32>(0i, _wgslsmith_add_i32(40378i, max(-u_input.c.x, 1i)), 1i);
    let var_2 = _wgslsmith_dot_vec2_i32(~countOneBits(reverseBits(min(vec2<i32>(-9503i, -6785i), vec2<i32>(global1.c, u_input.c.x)))), _wgslsmith_div_vec2_i32(vec2<i32>(-select(-15647i, -2147483647i, true), 0i), _wgslsmith_add_vec2_i32(global1.b.wx, global1.b.xz)));
    let var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(min(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.a, 4294967295u)), select(u_input.b.xx, vec2<u32>(u_input.b.x, 31431u), global1.a)) & _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(20227u, u_input.b.x, 0u, 4294967295u), vec4<u32>(u_input.a, 33898u, u_input.a, 72653u)), vec4<u32>(u_input.a, u_input.b.x, u_input.b.x, u_input.a)), 22u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, u_input.a), 22u)])))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-594f + _wgslsmith_div_f32(-331f, 689f)), var_0)), _wgslsmith_f_op_f32(max(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(37714u, vec2<bool>(global1.a, global1.a), Struct_1(false, vec4<i32>(global1.c, u_input.c.x, var_1.x, var_2), 11724i), 2147483647i)))))), ~min(43212i, global1.c), !select(global1.a, global1.a, any(vec2<bool>(true, global1.a))));
    let var_4 = var_3;
    global1 = Struct_1(!(!(!any(vec4<bool>(true, var_3.e, false, false)))), ~global1.b, abs(~max(_wgslsmith_clamp_i32(-27880i, global1.c, -2147483647i), 1i)));
    let var_5 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.a.x, 1611f) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0, -2558f)))))) + vec2<f32>(_wgslsmith_f_op_f32(-403f * _wgslsmith_f_op_f32(round(-1097f))), var_3.a.x)), _wgslsmith_f_op_f32(func_1(~38143u, select(vec2<bool>(true, var_4.d <= var_2), select(vec2<bool>(var_3.e, true), select(vec2<bool>(var_3.e, var_4.e), vec2<bool>(true, var_3.e), vec2<bool>(global1.a, global1.a)), select(vec2<bool>(true, var_3.e), vec2<bool>(var_4.e, var_3.e), vec2<bool>(global1.a, var_3.e))), all(select(vec3<bool>(true, var_4.e, true), vec3<bool>(true, global1.a, false), vec3<bool>(true, var_3.e, var_4.e)))), Struct_1(false, global1.b, -_wgslsmith_add_i32(-47676i, global1.b.x)), countOneBits(1i))), _wgslsmith_f_op_f32(max(1406f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_4.c - -1424f))))), _wgslsmith_div_i32(var_1.x, ~max(~u_input.c.x, -var_2)), any(select(vec3<bool>(all(vec2<bool>(true, var_4.e)), true, any(vec4<bool>(true, var_4.e, global1.a, global1.a))), !vec3<bool>(var_4.e, var_4.e, false), any(select(vec4<bool>(global1.a, var_3.e, false, var_4.e), vec4<bool>(true, var_4.e, true, var_4.e), vec4<bool>(true, false, true, global1.a))))));
    global2 = array<vec2<f32>, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(~(vec4<u32>(_wgslsmith_mult_u32(1u, 533u), 4294967295u, u_input.a, _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, u_input.b.x, u_input.a))) ^ vec4<u32>(_wgslsmith_sub_u32(1u, 0u), u_input.a, 19727u, min(u_input.a, u_input.b.x))));
}

