struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec2<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> f32 {
    var var_0 = Struct_1(firstTrailingBit(~(~abs(arg_0.a))), arg_0.b);
    let var_1 = Struct_1(arg_0.a, vec4<i32>(reverseBits(-2147483647i), 4064i, _wgslsmith_div_i32(arg_0.b.x, min(_wgslsmith_dot_vec3_i32(var_0.a, arg_0.a), _wgslsmith_dot_vec4_i32(var_0.b, vec4<i32>(6870i, arg_0.a.x, 32339i, u_input.a)))), -u_input.c));
    return 823f;
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> vec4<i32> {
    let var_0 = firstLeadingBit(arg_1.a.xx);
    let var_1 = reverseBits(_wgslsmith_sub_vec2_i32(select(_wgslsmith_add_vec2_i32(vec2<i32>(0i, -2682i), vec2<i32>(19824i, 31103i)), reverseBits(arg_1.a.yz), select(vec2<bool>(arg_0.x, false), vec2<bool>(arg_0.x, arg_0.x), arg_0.x)), arg_3.a.xx) ^ abs(arg_1.b.yw));
    return arg_1.b << ((_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(1u, u_input.b)), u_input.b ^ u_input.b), min(vec4<u32>(u_input.b, u_input.b, 0u, 60165u) | vec4<u32>(u_input.b, u_input.b, u_input.b, 29906u), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b) >> (vec4<u32>(u_input.b, 66016u, 36878u, 86184u) % vec4<u32>(32u)))) | (reverseBits(vec4<u32>(u_input.b, u_input.b, 39634u, u_input.b)) << (vec4<u32>(~u_input.b, firstTrailingBit(u_input.b), 27124u, u_input.b) % vec4<u32>(32u)))) % vec4<u32>(32u));
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_add_u32(select(_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.b, u_input.b), ~select(u_input.b, 1u, false)), u_input.b, _wgslsmith_f_op_f32(func_2(Struct_1(vec3<i32>(0i, -33187i, u_input.a), vec4<i32>(u_input.a, 2147483647i, 2147483647i, -1i)), _wgslsmith_f_op_f32(floor(1000f)))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(621f * -456f))), 1u);
    let var_1 = select(vec2<bool>(false, !any(vec2<bool>(true, true))), !(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true))), true);
    let var_2 = Struct_1(select(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, u_input.c, ~(-1i)), vec3<i32>(~317i, u_input.c, u_input.c)), ~(~(vec3<i32>(2147483647i, 0i, u_input.a) & vec3<i32>(-47558i, 1i, 1i))), false), -func_3(select(select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(false, var_1.x, true, true), var_1.x), !vec4<bool>(var_1.x, var_1.x, true, var_1.x), var_0 > 83284u), Struct_1(vec3<i32>(u_input.c, u_input.c, u_input.c), -vec4<i32>(0i, -12329i, 1i, 1i)), ~u_input.c >> (var_0 % 32u), Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(-2589i, u_input.a, -1i), vec3<i32>(u_input.c, u_input.a, u_input.c)), vec4<i32>(u_input.c, -2147483647i, u_input.c, -26035i))));
    let var_3 = select(vec3<bool>(false | var_1.x, false, false), vec3<bool>(true, var_1.x, all(vec4<bool>(true, any(vec2<bool>(var_1.x, false)), false, any(vec3<bool>(true, var_1.x, false))))), !vec3<bool>(var_1.x, !var_1.x, all(vec4<bool>(true, var_1.x, false, var_1.x))));
    let var_4 = vec4<f32>(443f, -695f, _wgslsmith_f_op_f32(613f * 1343f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-172f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f)))), -433f));
    return var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!(!select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), true), vec4<bool>(true, true, false, false), true)), vec4<bool>(true & any(vec3<bool>(true, true, true)), false, false, true), vec4<bool>(all(vec3<bool>(true, true, true)), false, any(!select(vec2<bool>(true, true), vec2<bool>(false, false), false)), all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false))));
    var var_1 = !vec4<bool>(any(vec3<bool>(var_0.x, any(vec4<bool>(false, var_0.x, true, var_0.x)), -52581i <= u_input.c)), !select(u_input.c >= -1i, !var_0.x, u_input.b == 0u), !var_0.x, var_0.x);
    var_0 = !(!select(select(vec4<bool>(true, var_1.x, var_1.x, var_1.x), !vec4<bool>(var_1.x, var_0.x, false, false), !vec4<bool>(false, true, var_0.x, false)), vec4<bool>(func_1(), !var_0.x, true, true), select(select(vec4<bool>(false, true, var_0.x, true), vec4<bool>(false, true, var_1.x, true), vec4<bool>(false, true, true, false)), !vec4<bool>(false, var_1.x, var_0.x, var_0.x), -1i <= u_input.c)));
    let var_2 = Struct_1(vec3<i32>(func_3(!(!vec4<bool>(false, var_0.x, true, true)), Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.c, u_input.c), vec3<i32>(u_input.a, u_input.a, 58363i)), firstTrailingBit(vec4<i32>(-2147483647i, 1i, u_input.a, u_input.a))), ~u_input.a, Struct_1(-vec3<i32>(u_input.a, u_input.c, u_input.a), select(vec4<i32>(2147483647i, u_input.a, 2147483647i, u_input.c), vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.a), false))).x, abs(u_input.a), -55405i), ~select(vec4<i32>(max(u_input.c, -29146i), -1i, -38609i, -39519i), -vec4<i32>(u_input.c, u_input.a, 16817i, u_input.a), !select(vec4<bool>(var_0.x, false, true, var_0.x), vec4<bool>(var_1.x, var_0.x, var_0.x, true), false)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.x, _wgslsmith_mod_vec2_u32(firstTrailingBit(~abs(vec2<u32>(u_input.b, 1u))), _wgslsmith_mult_vec2_u32(vec2<u32>(6504u, ~0u), _wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.b, 1u), max(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(u_input.b, 38945u))))), 2147483647i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-903f, 315f)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(379f, -661f) + vec2<f32>(-1863f, -1000f)))), vec2<f32>(-511f, 1692f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -365f), 1179f, 680f)), vec3<f32>(1792f, -131f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1015f)), _wgslsmith_div_f32(-295f, -411f))))));
}

