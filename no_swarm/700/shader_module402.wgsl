struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: f32,
    d: f32,
    e: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1352f;

var<private> global1: array<u32, 26>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: u32) -> f32 {
    var var_0 = true;
    let var_1 = vec3<bool>(arg_1.d.a.x, false, true != arg_1.d.a.x);
    let var_2 = Struct_3(arg_1.a, -(~vec4<i32>(countOneBits(u_input.a.x), arg_1.b.x, u_input.a.x, ~arg_0.b.x)), _wgslsmith_f_op_f32(-arg_1.a.x), arg_1.d);
    global0 = _wgslsmith_f_op_f32(1541f * 2413f);
    global0 = _wgslsmith_f_op_f32(ceil(-721f));
    return -1541f;
}

fn func_2(arg_0: vec4<u32>) -> f32 {
    var var_0 = false;
    var_0 = true;
    let var_1 = !vec2<bool>(any(vec3<bool>(all(vec4<bool>(true, true, true, false)), true, true)), true);
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1870f, -678f, 514f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -134f, 1025f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1691f, -108f, 196f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(964f + -976f), -2192f, _wgslsmith_f_op_f32(func_3(Struct_3(vec2<f32>(-422f, -1513f), vec4<i32>(-75722i, u_input.a.x, u_input.b, u_input.e), -311f, Struct_1(vec4<bool>(var_1.x, true, true, true), -125f, -160f)), Struct_3(vec2<f32>(-1000f, -411f), vec4<i32>(u_input.e, 24389i, u_input.a.x, -2147483647i), 962f, Struct_1(vec4<bool>(var_1.x, var_1.x, true, var_1.x), -1259f, 940f)), global1[_wgslsmith_index_u32(arg_0.x, 26u)]))))), vec3<bool>((0i & (u_input.b ^ 1i)) > -1i, !any(vec2<bool>(var_1.x, var_1.x)), all(var_1))));
    var_0 = abs(-6339i) > max(_wgslsmith_dot_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(33521i, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, 37961i, -10903i)), vec4<i32>(u_input.b, _wgslsmith_mod_i32(u_input.e, 0i), 72183i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, u_input.b, 1i), vec3<i32>(u_input.a.x, u_input.e, 3479i)))), u_input.b);
    return _wgslsmith_f_op_f32(-1925f - -794f);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: i32) -> vec3<f32> {
    var var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.b, _wgslsmith_dot_vec4_i32(arg_1.b, max(_wgslsmith_add_vec4_i32(vec4<i32>(arg_2, 52350i, 1i, 2147483647i), vec4<i32>(-2147483647i, -1i, 1i, arg_2)), select(vec4<i32>(0i, u_input.e, -336i, 14108i), arg_0.b, vec4<bool>(arg_0.d.a.x, arg_1.d.a.x, true, false))))), abs(firstTrailingBit(vec3<i32>(_wgslsmith_mult_i32(arg_1.b.x, 45539i), 1i, -2147483647i))));
    var var_1 = arg_0.d.a.yx;
    var_1 = select(vec2<bool>(var_1.x, true), !arg_1.d.a.xy, !arg_0.d.a.x);
    var var_2 = u_input.d;
    let var_3 = arg_1.b.x;
    return vec3<f32>(arg_0.c, arg_1.a.x, _wgslsmith_f_op_f32(func_3(Struct_3(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.a.x, arg_1.d.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-565f, -327f))), -vec4<i32>(u_input.e, arg_1.b.x, var_3, -4577i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(839f - 1000f), -844f), Struct_1(arg_1.d.a, _wgslsmith_f_op_f32(-arg_1.d.b), 377f)), Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(358f, 921f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.d.b, 202f) + vec2<f32>(arg_1.d.b, arg_0.c))), vec4<i32>(~25625i, ~var_3, 12452i, arg_2), -481f, Struct_1(!vec4<bool>(true, true, false, arg_1.d.a.x), _wgslsmith_f_op_f32(arg_0.d.c + -721f), _wgslsmith_f_op_f32(step(arg_1.d.b, -293f)))), _wgslsmith_mult_u32(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(firstTrailingBit(0u), 26u)], ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 26u)], 26u)], 26u)]), 1u))));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: vec4<f32>) -> vec3<i32> {
    global0 = _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(floor(arg_2.x))) + _wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(trunc(arg_1.x)))) + -545f));
    var var_0 = Struct_2(Struct_1(!vec4<bool>(u_input.d > 65628u, all(vec4<bool>(true, false, true, true)), any(vec2<bool>(false, true)), false), -1164f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_2.x)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(240f, arg_1.x))))), _wgslsmith_f_op_vec3_f32(func_4(Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, arg_1.x)), ~_wgslsmith_mod_vec4_i32(vec4<i32>(1821i, arg_0.x, 0i, 14800i), vec4<i32>(arg_0.x, -1i, u_input.a.x, 12113i)), _wgslsmith_f_op_f32(func_2(abs(vec4<u32>(0u, u_input.d, global1[_wgslsmith_index_u32(27316u, 26u)], 1u)))), Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(trunc(arg_1.x)), _wgslsmith_f_op_f32(arg_2.x * 1000f))), Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_1.xy, arg_1.yx))), vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, -1i, -27737i, -19196i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * 1227f)), Struct_1(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), true), -539f, _wgslsmith_f_op_f32(1064f - 410f))), u_input.a.x)), -1630f, arg_2.x, -13255i);
    var var_1 = u_input.e;
    var_0 = Struct_2(Struct_1(!vec4<bool>(any(vec4<bool>(true, var_0.a.a.x, true, var_0.a.a.x)), var_0.a.a.x, true, !var_0.a.a.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)))), _wgslsmith_f_op_f32(select(-1235f, 580f, false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(638f)), 1605f, 273f)) - _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(var_0.b)), _wgslsmith_f_op_vec3_f32(ceil(arg_2.xzz))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1233f, -1000f, var_0.c)))), -1703f, _wgslsmith_f_op_f32(ceil(-1597f)), 2147483647i);
    let var_2 = _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(countOneBits(~vec2<u32>(75655u, u_input.d)), vec2<u32>(global1[_wgslsmith_index_u32(~39909u, 26u)], global1[_wgslsmith_index_u32(1u, 26u)])), ~max(vec2<u32>(1u, 0u) ^ vec2<u32>(69689u, u_input.d), vec2<u32>(u_input.d, global1[_wgslsmith_index_u32(u_input.d, 26u)]))) >> (countOneBits(~(~vec2<u32>(3583u, 20320u)) ^ _wgslsmith_mult_vec2_u32(vec2<u32>(43549u, 54431u), vec2<u32>(15404u, global1[_wgslsmith_index_u32(u_input.c, 26u)]))) % vec2<u32>(32u));
    return ~vec3<i32>(_wgslsmith_clamp_i32(~u_input.a.x, var_0.e, ~(-20792i)), countOneBits(arg_0.x), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.e, -41494i, arg_0.x) | vec3<i32>(-1i, u_input.e, arg_0.x), abs(vec3<i32>(72766i, var_0.e, arg_0.x)))) & select(firstTrailingBit(vec3<i32>(-1i, arg_0.x, -arg_0.x)), ~select(vec3<i32>(1i, u_input.a.x, 13662i) << (vec3<u32>(27974u, u_input.d, var_2.x) % vec3<u32>(32u)), ~vec3<i32>(arg_0.x, var_0.e, arg_0.x), var_0.a.a.x), var_0.a.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(-14640i | countOneBits(-u_input.a.x), _wgslsmith_dot_vec3_i32(-func_1(vec2<i32>(2147483647i, -2147483647i), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1082f, 631f, -1619f), vec3<f32>(1301f, 2115f, -434f), false)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -250f, 189f, -1316f) + vec4<f32>(698f, -1481f, -188f, -1000f))), vec3<i32>(firstTrailingBit(2147483647i), max(max(-1i, u_input.e), ~1i), -1i)));
    global0 = -1976f;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1402f * -520f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(404f, -1907f)), _wgslsmith_f_op_f32(418f + -321f)), _wgslsmith_f_op_f32(f32(-1f) * -1632f))));
    var var_2 = select(!select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), all(vec2<bool>(false, true)))), select(vec3<bool>(select(false, true, true) || any(vec3<bool>(true, false, true)), !(var_1.x != var_1.x), true), vec3<bool>(true, false, true), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true), true)), !(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), vec3<bool>(false, true, false), any(vec2<bool>(false, true)))));
    var var_3 = var_0.x;
    let var_4 = Struct_2(Struct_1(!select(vec4<bool>(true, true, true, var_2.x), vec4<bool>(true, true, true, true), !vec4<bool>(false, var_2.x, true, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-469f * var_1.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(var_1.zy, vec4<i32>(21224i, var_0.x, 0i, u_input.a.x), 111f, Struct_1(vec4<bool>(var_2.x, var_2.x, var_2.x, true), var_1.x, 136f)), Struct_3(vec2<f32>(var_1.x, var_1.x), vec4<i32>(31902i, 0i, -28635i, -33512i), -1039f, Struct_1(vec4<bool>(true, var_2.x, true, var_2.x), var_1.x, var_1.x)), global1[_wgslsmith_index_u32(u_input.c, 26u)])))))), vec3<f32>(-536f, -1570f, _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(floor(var_1.x)))))), var_1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec3_f32(func_4(Struct_3(_wgslsmith_f_op_vec2_f32(min(var_1.xy, vec2<f32>(var_1.x, -1089f))), vec4<i32>(30629i, 2147483647i, var_0.x, u_input.e), var_1.x, Struct_1(vec4<bool>(true, var_2.x, var_2.x, true), 1388f, var_1.x)), Struct_3(var_1.zx, ~vec4<i32>(0i, u_input.b, var_0.x, 16599i), _wgslsmith_f_op_f32(-var_1.x), Struct_1(vec4<bool>(true, var_2.x, true, var_2.x), -449f, -981f)), -23300i)).x)), var_0.x);
    var var_5 = vec3<i32>(var_4.e, ~_wgslsmith_sub_i32(~_wgslsmith_dot_vec2_i32(var_0, u_input.a), -1i), var_0.x);
    let var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e, _wgslsmith_div_f32(-782f, -1235f));
}

