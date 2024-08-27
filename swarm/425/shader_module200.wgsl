struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec4<bool>,
    d: vec2<u32>,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_4 {
    a: bool,
    b: vec4<i32>,
    c: f32,
    d: vec2<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<u32> {
    let var_0 = vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(-select(vec2<i32>(2147483647i, -34954i), vec2<i32>(0i, 65855i), vec2<bool>(true, true)), (vec2<i32>(-2147483647i, 2147483647i) >> (u_input.b % vec2<u32>(32u))) | -vec2<i32>(68979i, -1030i)), -vec2<i32>(select(-54043i, -2147483647i, false), 6426i)), -2147483647i, 1i ^ _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(min(vec2<i32>(1i, 17027i), vec2<i32>(-62295i, 23603i)), vec2<i32>(-44618i, -10559i) >> (vec2<u32>(u_input.a.x, u_input.b.x) % vec2<u32>(32u))), vec2<i32>(_wgslsmith_div_i32(-67739i, 3884i), ~33830i)));
    var var_1 = any(vec4<bool>(true, all(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true))), true, _wgslsmith_mod_i32(1i, select(var_0.x, 12538i, false)) != ~(-9265i)));
    var_1 = all(select(vec3<bool>(true, true, true), vec3<bool>(!all(vec3<bool>(false, true, true)), all(vec2<bool>(true, true)), false), true | all(vec2<bool>(true, true))));
    var_1 = true;
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-2391f)))), 558f) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(649f, _wgslsmith_f_op_f32(-157f - -369f))))));
    return u_input.a.zw;
}

fn func_2() -> Struct_1 {
    var var_0 = abs(_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(17526i, i32(-1i) * -49674i), ~_wgslsmith_add_i32(0i, 4845i)), -(vec2<i32>(1i, 1i) >> (func_3() % vec2<u32>(32u)))));
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(120f, 1462f), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1545f, -337f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1018f, 1192f))))), !vec2<bool>(!all(vec2<bool>(true, true)), !all(vec4<bool>(true, true, true, false))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.a.a.x), _wgslsmith_f_op_f32(min(var_1.a.a.x, -1000f)))), _wgslsmith_f_op_f32(575f - _wgslsmith_div_f32(597f, var_1.a.a.x))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(var_1.a.a))))));
    var_0 = vec2<i32>(2147483647i, ~var_0.x);
    var_0 = min(vec2<i32>(var_0.x, var_0.x), vec2<i32>(-66788i, firstTrailingBit(-2147483647i)));
    return Struct_1(var_1.a.a);
}

fn func_1(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: u32) -> u32 {
    let var_0 = arg_2.a;
    var var_1 = arg_0.a.a.x;
    var var_2 = func_2();
    let var_3 = -1572f;
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(864f, -790f, 580f), vec3<f32>(615f, 962f, arg_0.a.a.x)), vec3<f32>(241f, 962f, 1000f))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, -830f, -200f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.x, var_2.a.x, -722f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(911f, -1468f, -910f)) - vec3<f32>(var_3, arg_0.a.a.x, 1801f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3, -775f, -610f))), vec3<bool>(any(vec3<bool>(false, arg_0.b.x, arg_0.b.x)), !arg_2.e, arg_2.c.x))))));
    return 0u << ((u_input.c & firstLeadingBit(arg_2.b.x)) % 32u);
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> Struct_4 {
    let var_0 = any(arg_0.c);
    var var_1 = Struct_2(arg_0.a, _wgslsmith_mult_vec2_u32((_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.d.x, u_input.c), arg_0.d) >> ((u_input.a.wy | arg_0.b) % vec2<u32>(32u))) << (min(u_input.b, u_input.a.zx) % vec2<u32>(32u)), abs(func_3())), !select(arg_0.c, vec4<bool>(!arg_0.e, true, all(arg_0.c.yzy), var_0), arg_0.e), vec2<u32>(~19782u >> ((_wgslsmith_sub_u32(4294967295u, arg_0.d.x) >> (_wgslsmith_mult_u32(0u, arg_0.b.x) % 32u)) % 32u), 4294967295u), true);
    var_1 = Struct_2(arg_0.a, arg_0.b, var_1.c, vec2<u32>(var_1.b.x, var_1.d.x), var_0);
    var_1 = arg_0;
    var var_2 = !vec4<bool>(var_1.c.x, !var_1.e, true, false & var_1.c.x);
    return Struct_4(true, vec4<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(836i, -2147483647i, -2147483647i), ~_wgslsmith_add_vec3_i32(vec3<i32>(-10401i, 76199i, 0i), vec3<i32>(40780i, -6325i, -36666i))), ~(-73472i), -40926i, _wgslsmith_sub_i32(countOneBits(-2147483647i) << (arg_0.d.x % 32u), _wgslsmith_mod_i32(1i, 1i))), 1306f, !var_1.c.wy, Struct_2(arg_0.a, var_1.d, vec4<bool>(any(select(vec3<bool>(false, var_2.x, var_1.c.x), arg_0.c.wzy, var_1.c.wxx)), true, all(var_1.c.wx), true), abs(vec2<u32>(30972u, arg_0.b.x)) | vec2<u32>(~arg_0.b.x, _wgslsmith_mod_u32(arg_0.d.x, var_1.b.x)), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_2(Struct_1(vec2<f32>(1f, -455f)), vec2<u32>(reverseBits(~4294967295u), 58403u & func_1(Struct_3(Struct_1(vec2<f32>(-358f, 1551f)), vec2<bool>(false, true)), vec3<i32>(1i, -1i, 0i), Struct_2(Struct_1(vec2<f32>(1375f, 1232f)), u_input.b, vec4<bool>(false, false, false, true), u_input.b, false), u_input.c)), !(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), true)), u_input.b, any(vec4<bool>(true, true, true, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(381f, -505f)), _wgslsmith_f_op_f32(floor(1f))));
    let var_1 = true;
    let var_2 = -_wgslsmith_add_vec2_i32(firstLeadingBit(-(~vec2<i32>(var_0.b.x, 18915i))), ~countOneBits(var_0.b.wy));
    var_0 = Struct_4(false, var_0.b, -916f, vec2<bool>(true & (1u < ~u_input.c), false), var_0.e);
    var_0 = func_4(func_4(func_4(Struct_2(func_4(var_0.e, var_0.c).e.a, func_3(), var_0.e.c, select(vec2<u32>(u_input.c, var_0.e.b.x), var_0.e.b, false), !var_1), -940f).e, _wgslsmith_f_op_f32(-var_0.c)).e, var_0.c);
    var_0 = Struct_4(var_0.c >= -893f, vec4<i32>(1i, -_wgslsmith_sub_i32(1i, 30268i), ~67979i, _wgslsmith_sub_i32(var_0.b.x & var_2.x, 2147483647i)), _wgslsmith_f_op_f32(ceil(var_0.e.a.a.x)), !var_0.e.c.xy, var_0.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-666f + -379f), _wgslsmith_div_f32(var_0.e.a.a.x, var_0.e.a.a.x));
}

