struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<f32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 3> = array<vec2<u32>, 3>(vec2<u32>(19632u, 0u), vec2<u32>(20933u, 0u), vec2<u32>(1u, 12164u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> f32 {
    var var_0 = _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(~1u, countOneBits(1u) >> (_wgslsmith_clamp_u32(arg_0, arg_0, arg_0) % 32u), firstLeadingBit(1u))), firstTrailingBit(_wgslsmith_add_vec3_u32(select(vec3<u32>(0u, 77757u, arg_0), vec3<u32>(7798u, arg_0, 70679u), true), _wgslsmith_add_vec3_u32(vec3<u32>(arg_0, 0u, arg_0), vec3<u32>(arg_0, arg_0, 4294967295u)))) << (~vec3<u32>(38391u, ~13584u, arg_0 >> (4294967295u % 32u)) % vec3<u32>(32u)));
    var_0 = _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(12755u << (min(1u, arg_0) % 32u), 4294967295u, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(global0[_wgslsmith_index_u32(11514u, 3u)], global0[_wgslsmith_index_u32(arg_0, 3u)], global0[_wgslsmith_index_u32(arg_0, 3u)]) ^ _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0, 0u), vec2<u32>(arg_0, arg_0)), _wgslsmith_mod_vec2_u32(~vec2<u32>(arg_0, 4294967295u), min(global0[_wgslsmith_index_u32(arg_0, 3u)], vec2<u32>(1u, arg_0))))), ~arg_0, 86299u);
    var var_1 = Struct_1(1155f, _wgslsmith_f_op_f32(f32(-1f) * -321f) >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-307f)))))), vec4<f32>(1000f, 420f, _wgslsmith_f_op_f32(abs(-455f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-199f * 212f))))), vec3<i32>(-76022i, ~abs(firstTrailingBit(0i)), u_input.a.x));
    var_0 = 1u;
    let var_2 = Struct_1(555f, true, var_1.c, abs(var_1.d));
    return _wgslsmith_f_op_f32(var_2.a * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1306f - var_1.c.x))));
}

fn func_4(arg_0: i32, arg_1: vec2<u32>, arg_2: vec2<i32>, arg_3: Struct_1) -> vec2<u32> {
    let var_0 = arg_3;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a))) > 1608f;
    global0 = array<vec2<u32>, 3>();
    let var_2 = arg_3;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.c.x)))), false | (!var_2.b & true), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1033f, -1239f, -1444f, arg_3.c.x)) * arg_3.c)))), ~select(countOneBits(vec3<i32>(arg_3.d.x, 2147483647i, var_0.d.x)), vec3<i32>(0i, var_2.d.x, u_input.a.x), !(!vec3<bool>(false, var_1, arg_3.b))));
    return vec2<u32>(~(~(~arg_1.x)), arg_1.x) ^ vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(13645u, 0u), 102635u), _wgslsmith_mult_vec2_u32(max(vec2<u32>(arg_1.x, arg_1.x), arg_1), arg_1)), arg_1.x);
}

fn func_2() -> vec2<f32> {
    global0 = array<vec2<u32>, 3>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-174f)) + _wgslsmith_f_op_f32(-1f)) - -249f), true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(-498f)), _wgslsmith_f_op_f32(trunc(-173f)), _wgslsmith_f_op_f32(f32(-1f) * -706f), _wgslsmith_f_op_f32(-1308f - -1776f))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1548f, 136f, -1738f, 638f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1325f, 816f, 880f, -821f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-254f, 700f, -1862f, -239f)), all(vec3<bool>(true, true, true))))), vec3<i32>(i32(-1i) * -28991i, u_input.a.x, u_input.a.x));
    global0 = array<vec2<u32>, 3>();
    let var_1 = ~func_4(var_0.d.x, firstTrailingBit(vec2<u32>(1u, 71846u) | abs(global0[_wgslsmith_index_u32(4294967295u, 3u)])), max(var_0.d.xx, _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, var_0.d.x))), Struct_1(-889f, !var_0.b, vec4<f32>(_wgslsmith_f_op_f32(func_3(13613u)), -610f, var_0.a, _wgslsmith_f_op_f32(2635f - var_0.c.x)), vec3<i32>(-var_0.d.x, u_input.a.x, u_input.a.x)));
    var_0 = Struct_1(249f, var_0.b, var_0.c, vec3<i32>(var_0.d.x, firstLeadingBit(u_input.a.x) & -abs(var_0.d.x), var_0.d.x));
    return _wgslsmith_f_op_vec2_f32(var_0.c.zy - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.c.x, var_0.a), _wgslsmith_f_op_vec2_f32(select(var_0.c.yz, vec2<f32>(976f, var_0.c.x), vec2<bool>(false, false))), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.a, var_0.a))))), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(var_0.c.x)))), -1000f)));
}

fn func_1(arg_0: vec4<u32>, arg_1: i32, arg_2: i32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_2());
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(sign(var_0.x)), var_0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec2_f32(func_2()).x)), var_0.x);
    global0 = array<vec2<u32>, 3>();
    var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.wx * var_1.zw) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2()))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) + var_1.xx)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(var_1.xw, _wgslsmith_f_op_vec2_f32(abs(var_1.ww)), -1550f >= var_0.x)))), vec2<bool>(false, true))));
    var var_2 = var_1;
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(0u, countOneBits(~(~1u)), min(1u, 100360u));
    var var_1 = _wgslsmith_div_u32(~_wgslsmith_mult_u32(~var_0.x, ~(~var_0.x)), var_0.x);
    global0 = array<vec2<u32>, 3>();
    var_0 = reverseBits(select(vec3<u32>(12376u, 1u, 0u), ~vec3<u32>(var_0.x, var_0.x, var_0.x) ^ (vec3<u32>(var_0.x, var_0.x, 37271u) | vec3<u32>(92593u, 31398u, 21120u)), vec3<bool>(any(vec4<bool>(false, false, true, false)), 11255i < u_input.a.x, u_input.a.x >= u_input.a.x))) << (vec3<u32>(~49184u, ~(~1u), func_1(reverseBits(vec4<u32>(var_0.x, 7519u, 4294967295u, var_0.x)) | ~vec4<u32>(24903u, var_0.x, var_0.x, 40792u), abs(u_input.a.x >> (var_0.x % 32u)), u_input.a.x)) % vec3<u32>(32u));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(var_0.x)), _wgslsmith_f_op_f32(954f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -751f))))), select(!(!any(vec4<bool>(true, false, true, true))), !select(false, false, true) & true, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(266f + _wgslsmith_f_op_f32(256f - 363f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1159f, 1622f)), 1188f, _wgslsmith_f_op_f32(f32(-1f) * -740f))), _wgslsmith_clamp_vec3_i32(min(vec3<i32>(-51258i, -51837i, 52660i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)) >> (abs(vec3<u32>(19069u, var_0.x, 1u)) % vec3<u32>(32u)), max(-vec3<i32>(1i, 52464i, u_input.a.x), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(1i, u_input.a.x, 1i))), countOneBits(select(vec3<i32>(-16868i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, 21096i), true))) << (~_wgslsmith_clamp_vec3_u32(vec3<u32>(65777u, var_0.x, 1u), reverseBits(vec3<u32>(3595u, 62353u, 4294967295u)), ~vec3<u32>(var_0.x, var_0.x, var_0.x)) % vec3<u32>(32u)));
    let var_3 = select(select(vec2<bool>(any(vec2<bool>(var_2.b, true)), any(!vec4<bool>(false, true, true, var_2.b))), select(vec2<bool>(false, var_2.b), !vec2<bool>(var_2.b, var_2.b), var_2.b), !select(select(vec2<bool>(false, var_2.b), vec2<bool>(var_2.b, var_2.b), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(var_2.b, false))), select(select(select(select(vec2<bool>(false, var_2.b), vec2<bool>(var_2.b, false), vec2<bool>(var_2.b, var_2.b)), vec2<bool>(var_2.b, true), select(vec2<bool>(var_2.b, var_2.b), vec2<bool>(true, true), true)), !select(vec2<bool>(false, true), vec2<bool>(false, var_2.b), var_2.b), any(!vec3<bool>(false, var_2.b, var_2.b))), select(vec2<bool>(any(vec2<bool>(false, var_2.b)), true), !(!vec2<bool>(var_2.b, var_2.b)), true), var_2.b), select(!vec2<bool>(false, all(vec2<bool>(false, false))), select(vec2<bool>(var_2.b, var_2.b || true), select(vec2<bool>(true, true), !vec2<bool>(var_2.b, var_2.b), vec2<bool>(true, false)), var_2.b), !(var_0.x != (var_0.x >> (1u % 32u)))));
    let var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(17063u);
}

