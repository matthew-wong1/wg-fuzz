struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: Struct_2,
    d: vec3<i32>,
    e: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_3,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec4<bool>, 2>;

var<private> global2: array<bool, 8> = array<bool, 8>(true, false, false, true, true, false, true, true);

var<private> global3: array<f32, 13>;

var<private> global4: array<f32, 13>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    global1 = array<vec4<bool>, 2>();
    var var_0 = arg_0;
    var_0 = Struct_1(arg_0.a, var_0.b, true, arg_0.d);
    var var_1 = min(_wgslsmith_add_i32(~u_input.c, -38880i), ~(((-45381i << (arg_0.b % 32u)) | _wgslsmith_add_i32(1i, u_input.c)) ^ _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a, u_input.c), vec2<i32>(u_input.c, u_input.c))));
    var var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.a.x, -1198f, var_0.a.x, 1078f), vec4<f32>(var_0.d, -167f, global3[_wgslsmith_index_u32(arg_0.b, 13u)], 991f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d, arg_0.d, global4[_wgslsmith_index_u32(u_input.e.x, 13u)], arg_0.a.x) * vec4<f32>(arg_0.d, global4[_wgslsmith_index_u32(55046u, 13u)], -463f, arg_0.a.x))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1487f, var_0.a.x, global3[_wgslsmith_index_u32(arg_0.b, 13u)], global3[_wgslsmith_index_u32(arg_0.b, 13u)])))))));
    return Struct_2(-(~vec4<i32>(-13213i, -67921i, -13230i, u_input.c) >> (~(vec4<u32>(arg_0.b, 0u, 0u, 42630u) | u_input.e) % vec4<u32>(32u))));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: Struct_2) -> vec2<u32> {
    let var_0 = 1i;
    let var_1 = false;
    let var_2 = _wgslsmith_mod_i32(-1i, i32(-1i) * -13007i);
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(538f + _wgslsmith_f_op_f32(arg_2.a.x - arg_1.x)))), 828f, -1161f);
    let var_4 = _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(61071u, 6750u), ~u_input.e.xx, ~vec2<u32>(u_input.e.x, 30948u)), u_input.e.zx), 13u)] * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.x)))));
    return u_input.d.yx;
}

fn func_1() -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(trunc(327f));
    var var_1 = _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(-347f * _wgslsmith_div_f32(-239f, var_0)));
    var var_2 = vec2<bool>(!global2[_wgslsmith_index_u32(1u, 8u)], true);
    var var_3 = ~(~func_3(_wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(-29559i, u_input.a, -58147i, u_input.a)), vec4<i32>(2147483647i, -1i, -1i, 6767i)), vec2<f32>(1660f, _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(u_input.d.x, 13u)] - 571f)), Struct_3(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0, 567f, 541f, 1009f), vec4<f32>(-623f, global4[_wgslsmith_index_u32(1u, 13u)], 1531f, global4[_wgslsmith_index_u32(u_input.d.x, 13u)]), vec4<bool>(false, var_2.x, global2[_wgslsmith_index_u32(u_input.b, 8u)], global2[_wgslsmith_index_u32(u_input.b, 8u)]))), Struct_2(vec4<i32>(1i, u_input.c, -1i, 11566i)), func_2(Struct_1(vec3<f32>(var_0, global3[_wgslsmith_index_u32(u_input.d.x, 13u)], 297f), u_input.e.x, var_2.x, var_0)), vec3<i32>(u_input.a, u_input.c, u_input.a), 9006i), Struct_2(_wgslsmith_mult_vec4_i32(vec4<i32>(-5889i, 2147483647i, u_input.c, 14151i), vec4<i32>(u_input.c, u_input.a, u_input.a, u_input.a)))));
    let var_4 = _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(select(select(vec2<i32>(2694i, 0i), vec2<i32>(-3141i, 0i), vec2<bool>(global2[_wgslsmith_index_u32(var_3.x, 8u)], false)), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, -51715i), vec2<i32>(u_input.a, u_input.c)), false), _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(-3987i, u_input.c)), -vec2<i32>(u_input.c, -1i))), ~vec2<i32>(-1i, min(u_input.a, 31551i))) <= u_input.c;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(3095f + -356f)), -439f, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.d.x << (1u % 32u), 13u)] + _wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(4294967295u, 13u)]))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(30780u, 13u)]);
    var var_1 = u_input.e.x;
    let var_2 = global2[_wgslsmith_index_u32(634u, 8u)];
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4[_wgslsmith_index_u32(u_input.b, 13u)], -503f, global3[_wgslsmith_index_u32(u_input.e.x, 13u)]))) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(1687f + global4[_wgslsmith_index_u32(u_input.d.x, 13u)]), _wgslsmith_f_op_f32(round(558f)), -672f), _wgslsmith_f_op_vec3_f32(func_1())))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global4[_wgslsmith_index_u32(u_input.e.x >> (0u % 32u), 13u)], -108f, -1000f), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(859f, global4[_wgslsmith_index_u32(1u, 13u)], global4[_wgslsmith_index_u32(u_input.b, 13u)]), vec3<f32>(106f, -968f, 648f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global4[_wgslsmith_index_u32(u_input.d.x, 13u)], -596f, global3[_wgslsmith_index_u32(u_input.b, 13u)]) - vec3<f32>(global3[_wgslsmith_index_u32(68831u, 13u)], global3[_wgslsmith_index_u32(0u, 13u)], global3[_wgslsmith_index_u32(32202u, 13u)])))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1869f, global4[_wgslsmith_index_u32(u_input.d.x, 13u)], 1147f), vec3<f32>(global3[_wgslsmith_index_u32(u_input.b, 13u)], global4[_wgslsmith_index_u32(u_input.b, 13u)], global3[_wgslsmith_index_u32(u_input.d.x, 13u)]))))))));
    var_0 = _wgslsmith_f_op_f32(-var_3.x);
    let var_4 = u_input.d.xz;
    var var_5 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~var_4.x, 13u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -138f))), _wgslsmith_f_op_vec3_f32(func_1()).x), _wgslsmith_add_u32(abs(1u), 0u) >> (min(u_input.b, reverseBits(max(53393u, u_input.e.x))) % 32u), global2[_wgslsmith_index_u32(14008u, 8u)], _wgslsmith_f_op_f32(f32(-1f) * -113f));
    global1 = array<vec4<bool>, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(~select(-(~vec3<i32>(u_input.c, u_input.a, u_input.a)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.c, u_input.c), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, -31804i, 0i), vec3<i32>(u_input.c, u_input.a, u_input.c))), select(true, true, true)), -1000f, reverseBits(~u_input.a), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 1i, -2147483647i), vec3<i32>(u_input.a, 13375i, 2147483647i)) >> ((var_4.x ^ u_input.e.x) % 32u), 5753i, -firstLeadingBit(u_input.c)) & reverseBits(vec3<i32>(u_input.c, firstTrailingBit(581i), u_input.a)));
}

