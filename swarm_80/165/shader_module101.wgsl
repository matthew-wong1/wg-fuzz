struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<f32>,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: Struct_1,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-16200i, 0i);

var<private> global1: f32 = 617f;

var<private> global2: array<i32, 1>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<i32>) -> bool {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-918f)))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1412f)))), 796f, select(true, false || all(vec3<bool>(false, false, true)), false))));
    global2 = array<i32, 1>();
    var var_0 = vec4<bool>(!any(select(vec2<bool>(false, false), vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, u_input.c.x > u_input.c.x, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), any(vec4<bool>(true, false, true, true))))), select(true, any(vec2<bool>(false, true)), any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)))), false);
    global2 = array<i32, 1>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1549f)) - -862f);
    return true;
}

fn func_2(arg_0: bool, arg_1: vec4<u32>, arg_2: u32) -> Struct_1 {
    let var_0 = vec4<bool>(func_3(max(vec4<i32>(global2[_wgslsmith_index_u32(0u, 1u)], global0.x, 5145i, global2[_wgslsmith_index_u32(13171u, 1u)]), vec4<i32>(-53294i, global2[_wgslsmith_index_u32(arg_1.x, 1u)], global2[_wgslsmith_index_u32(u_input.c.x, 1u)], global0.x)) | ~vec4<i32>(-2147483647i, -2147483647i, 21090i, global0.x)) && false, !any(select(!vec2<bool>(true, arg_0), vec2<bool>(arg_0, arg_0), true)), arg_0, all(vec4<bool>(false, false, false, all(vec4<bool>(false, arg_0, true, arg_0)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-381f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2021f + -3069f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2291f)), _wgslsmith_f_op_f32(f32(-1f) * -1114f)));
    let var_2 = -global2[_wgslsmith_index_u32(9246u, 1u)];
    var var_3 = vec4<bool>(!((all(vec3<bool>(true, arg_0, false)) | arg_0) | (reverseBits(1u) >= arg_2)), true || any(vec4<bool>(var_0.x || arg_0, !arg_0, true, true)), !all(vec2<bool>(var_0.x, var_0.x)) | arg_0, !(_wgslsmith_mod_u32(37028u, u_input.d << (arg_2 % 32u)) > countOneBits(0u)));
    let var_4 = Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.x, 1728f)))))), ~max(-vec4<i32>(var_2, -24347i, global0.x, 2147483647i), reverseBits(vec4<i32>(global0.x, 2147483647i, var_2, -1i))) << (_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(arg_1, vec4<u32>(1u, 0u, 54083u, u_input.b)), arg_1), vec4<u32>(~arg_2, ~54199u, _wgslsmith_add_u32(arg_2, 56635u), abs(32265u))) % vec4<u32>(32u)), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(852f, -1840f))), -223f, _wgslsmith_f_op_f32(var_1.x + var_1.x)), arg_1.x, ~(~arg_1.xzy), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, -103f, 1000f)))), ~67784u), vec2<bool>(!any(select(var_0, var_0, true)), var_0.x));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_1.wyz), var_4.c.d.xwy))), var_4.c.e, vec3<u32>(18508u, arg_2, arg_2), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1267f, var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(217f, var_4.a) - _wgslsmith_f_op_f32(-var_1.x)), var_1.x, -774f)), _wgslsmith_add_u32(u_input.c.x, _wgslsmith_add_u32(u_input.b, 38582u)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec4<f32>) -> f32 {
    let var_0 = Struct_2(arg_0.a.x, -vec4<i32>(global0.x, -select(1i, global2[_wgslsmith_index_u32(arg_1.c.c.x, 1u)], true), global0.x, global2[_wgslsmith_index_u32(56185u << (_wgslsmith_clamp_u32(u_input.d, 57974u, 1u) % 32u), 1u)]), Struct_1(_wgslsmith_f_op_vec3_f32(arg_0.d.wzw - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.d.yxy) * _wgslsmith_f_op_vec3_f32(trunc(arg_3.yyx)))), arg_2.e, ~firstLeadingBit(u_input.c.wxy), _wgslsmith_f_op_vec4_f32(-arg_3), ~(~func_2(false, u_input.a, 57733u).b)), vec2<bool>(true, all(select(select(vec2<bool>(false, arg_1.d.x), vec2<bool>(true, arg_1.d.x), arg_1.d), arg_1.d, !vec2<bool>(false, arg_1.d.x)))));
    global0 = -var_0.b.yx;
    let var_1 = var_0;
    let var_2 = var_0.c;
    global2 = array<i32, 1>();
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(134f - _wgslsmith_div_f32(-564f, _wgslsmith_f_op_f32(f32(-1f) * -402f))), _wgslsmith_f_op_f32(var_2.a.x - arg_2.d.x)));
}

fn func_1(arg_0: vec4<f32>) -> vec2<i32> {
    let var_0 = Struct_1(vec3<f32>(821f, _wgslsmith_f_op_f32(func_4(func_2(all(vec2<bool>(false, false)), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 1u, u_input.b, 4294967295u), vec4<u32>(1u, u_input.b, u_input.a.x, 1u)), ~0u), Struct_2(_wgslsmith_f_op_f32(abs(arg_0.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(21853i, global0.x, global2[_wgslsmith_index_u32(18853u, 1u)], global2[_wgslsmith_index_u32(u_input.c.x, 1u)]), vec4<i32>(-44943i, global0.x, global0.x, 39634i)), func_2(false, u_input.c, 21598u), select(vec2<bool>(true, false), vec2<bool>(false, true), false)), Struct_1(vec3<f32>(arg_0.x, arg_0.x, arg_0.x), _wgslsmith_mod_u32(80989u, 4294967295u), vec3<u32>(u_input.a.x, 4294967295u, 4294967295u), _wgslsmith_f_op_vec4_f32(ceil(arg_0)), u_input.d), _wgslsmith_f_op_vec4_f32(max(arg_0, vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(114f * _wgslsmith_f_op_f32(-arg_0.x)) - -1025f)), _wgslsmith_mod_u32(abs(u_input.c.x), ~(~u_input.b) | u_input.b), u_input.a.xzw, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-863f, -438f, arg_0.x, arg_0.x)))))), _wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(firstTrailingBit(3015u), 42195u), 19172u), u_input.b >> (reverseBits(4294967295u) % 32u)));
    let var_1 = reverseBits(~(~1u));
    global2 = array<i32, 1>();
    var var_2 = Struct_2(var_0.a.x, -min(vec4<i32>(0i, global0.x, ~(-2147483647i), -80636i), vec4<i32>(1i, global0.x, 17950i, global2[_wgslsmith_index_u32(1u, 1u)]) ^ -vec4<i32>(global0.x, 1i, global0.x, global2[_wgslsmith_index_u32(var_0.e, 1u)])), func_2(false, u_input.c, var_1), !vec2<bool>(any(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false)), true));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(846f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.d.x + arg_0.x), 1f)), arg_0.x)), ~((_wgslsmith_add_vec4_i32(var_2.b, vec4<i32>(global2[_wgslsmith_index_u32(u_input.d, 1u)], global2[_wgslsmith_index_u32(var_2.c.c.x, 1u)], global0.x, 30469i)) ^ var_2.b) | _wgslsmith_mult_vec4_i32(~vec4<i32>(-1i, global2[_wgslsmith_index_u32(var_2.c.b, 1u)], 0i, global0.x), var_2.b)), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -859f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -873f) + _wgslsmith_f_op_f32(select(arg_0.x, -723f, true))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.c.d.x, -1932f))), var_2.c.e, var_2.c.c, _wgslsmith_f_op_vec4_f32(sign(func_2(any(var_2.d), ~u_input.c, ~u_input.b).d)), abs(_wgslsmith_sub_u32(var_2.c.c.x & 1u, var_2.c.b))), var_2.d);
    return vec2<i32>(select(_wgslsmith_dot_vec3_i32(abs(firstLeadingBit(vec3<i32>(var_3.b.x, global0.x, 2147483647i))), _wgslsmith_mult_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(var_1, 1u)], global0.x, 0i) & vec3<i32>(var_3.b.x, var_3.b.x, global0.x), _wgslsmith_mult_vec3_i32(var_2.b.ywz, vec3<i32>(global2[_wgslsmith_index_u32(80100u, 1u)], global0.x, -2147483647i)))), global0.x, false), global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = min(reverseBits(firstLeadingBit(func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-709f, 937f, -270f, -985f) - vec4<f32>(-1520f, -131f, -1107f, 256f))))), -_wgslsmith_sub_vec2_i32(select(_wgslsmith_mult_vec2_i32(vec2<i32>(-20553i, 2147483647i), vec2<i32>(global0.x, global0.x)), vec2<i32>(global2[_wgslsmith_index_u32(17546u, 1u)], global2[_wgslsmith_index_u32(u_input.d, 1u)]) & vec2<i32>(2147483647i, global2[_wgslsmith_index_u32(44643u, 1u)]), vec2<bool>(true, true)), -abs(vec2<i32>(0i, global2[_wgslsmith_index_u32(0u, 1u)]))));
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-520f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-650f, -220f)), _wgslsmith_f_op_f32(-1233f + -752f))))), max(~((vec4<i32>(global2[_wgslsmith_index_u32(u_input.c.x, 1u)], -19009i, global2[_wgslsmith_index_u32(1u, 1u)], 6674i) << (vec4<u32>(4294967295u, u_input.d, u_input.d, u_input.b) % vec4<u32>(32u))) >> (~u_input.a % vec4<u32>(32u))), -(~(-vec4<i32>(-1i, -2147483647i, -2147483647i, 1i)))), Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1406f, 2078f, 524f)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1072f, 1047f, -941f)))))), firstTrailingBit(select(1u, 0u, true)), vec3<u32>(u_input.c.x, 0u, u_input.a.x), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-func_2(true, vec4<u32>(u_input.a.x, 47388u, 53021u, u_input.a.x), u_input.b).d))), _wgslsmith_add_u32(~countOneBits(75641u), u_input.d)), !select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(true, true, false, true))));
    var var_1 = var_0.c;
    var var_2 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-458f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-854f)))))));
    global2 = array<i32, 1>();
    var_2 = _wgslsmith_f_op_vec2_f32(select(var_0.c.d.wy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.d.wy + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1519f, -676f))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1436f, -223f)))))), _wgslsmith_f_op_f32(-var_1.a.x) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_0.a)))))));
    var var_3 = var_1.a.xz;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, var_0.c.a.yx);
}

