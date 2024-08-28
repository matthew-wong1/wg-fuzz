struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec4<f32>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: bool,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<u32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: i32,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: f32) -> vec4<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1811f, -382f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(584f, arg_2) + vec2<f32>(arg_2, -299f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1195f, -1585f)))) + vec2<f32>(-156f, _wgslsmith_f_op_f32(-arg_2))), u_input.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, arg_2, -407f, -720f))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_2, -570f, arg_2, arg_2), vec4<f32>(-1207f, -831f, 548f, -550f))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(982f, -259f, -792f, 1100f) * vec4<f32>(arg_2, arg_2, arg_2, 119f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1464f, 575f, 1358f, 1392f) * vec4<f32>(arg_2, 1553f, 1166f, arg_2))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1154f, -722f, -775f, 1000f) - vec4<f32>(1242f, arg_2, 1545f, -772f)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-899f, 1807f, -1000f, arg_2))))))), arg_2, arg_0 || select(false, !(arg_0 & false), select(arg_0, true, arg_0)));
    let var_1 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2))))), -301f, _wgslsmith_f_op_f32(-arg_2)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 84408u, 0u), vec3<u32>(_wgslsmith_sub_u32(40478u, var_0.b), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 4294967295u, u_input.b), vec4<u32>(var_0.b, u_input.a, var_0.b, 1u)), ~var_0.b)));
    var var_2 = vec2<bool>(select(any(vec3<bool>(any(vec4<bool>(true, arg_0, var_0.e, arg_0)), false, -506f <= var_0.d)), false, var_0.e & any(select(vec4<bool>(var_0.e, false, true, true), vec4<bool>(var_0.e, var_0.e, false, var_0.e), arg_0))), var_0.e);
    var_2 = select(!(!vec2<bool>(!arg_0, any(vec4<bool>(true, true, var_2.x, var_0.e)))), !select(select(vec2<bool>(var_2.x, var_0.e), vec2<bool>(var_0.e, arg_0), var_0.e), vec2<bool>(var_0.e, all(vec4<bool>(var_2.x, true, var_2.x, true))), vec2<bool>(true, !var_0.e)), select(arg_0, false, abs(abs(arg_1)) > (-2147483647i << (~var_1.b.x % 32u))));
    var_2 = select(!(!(!select(vec2<bool>(var_0.e, false), vec2<bool>(false, false), false))), vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.a.x))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), var_0.e), true);
    return vec4<bool>(true, any(vec3<bool>(arg_0, var_2.x, all(select(vec4<bool>(true, arg_0, var_2.x, false), vec4<bool>(arg_0, false, true, true), true)))), !var_2.x, _wgslsmith_f_op_f32(var_0.d + var_0.a.x) > _wgslsmith_div_f32(var_1.a.x, arg_2));
}

fn func_4(arg_0: vec3<u32>, arg_1: bool) -> vec2<bool> {
    let var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(671f, -819f, -847f), vec3<f32>(420f, 2226f, -139f)))))), vec3<f32>(_wgslsmith_f_op_f32(-210f + -1427f), _wgslsmith_div_f32(-789f, _wgslsmith_f_op_f32(f32(-1f) * -962f)), 701f))), !vec2<bool>(arg_1 == arg_1, true), _wgslsmith_dot_vec4_i32(~_wgslsmith_div_vec4_i32(min(vec4<i32>(0i, -1i, -28893i, -8771i), vec4<i32>(-39776i, 25142i, 0i, -2147483647i)), ~vec4<i32>(0i, -2147483647i, -2147483647i, 7634i)), ~(-select(vec4<i32>(11023i, 0i, -27746i, 0i), vec4<i32>(-1i, 1i, 80840i, 2147483647i), vec4<bool>(true, arg_1, arg_1, arg_1)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-494f, -1162f)), 317f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -663f))))), u_input.c);
    var var_1 = _wgslsmith_mod_vec2_i32(vec2<i32>(-var_0.c, firstLeadingBit(-9199i)) >> ((firstTrailingBit(arg_0.yy) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.x, u_input.a), arg_0.zz) % vec2<u32>(32u))) % vec2<u32>(32u)), max(_wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(var_0.c, var_0.c)), _wgslsmith_add_vec2_i32(vec2<i32>(var_0.c, var_0.c), vec2<i32>(-36146i, 0i))), vec2<i32>(reverseBits(-16507i), var_0.c))) & countOneBits(countOneBits(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, 2147483647i) & vec2<i32>(var_0.c, 12105i), -vec2<i32>(2147483647i, var_0.c))));
    var var_2 = Struct_2(_wgslsmith_mult_u32(u_input.c, _wgslsmith_div_u32(_wgslsmith_sub_u32(arg_0.x, _wgslsmith_sub_u32(u_input.b, var_0.e)), 59023u)), true);
    let var_3 = Struct_1(var_0.a.zy, ~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.c, var_2.a), ~vec2<u32>(u_input.a, var_0.e)), vec2<u32>(5656u, var_0.e)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-452f, 877f, 1029f, 421f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, -460f, var_0.a.x, -2215f))))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(abs(var_0.d)), var_0.a.x, _wgslsmith_f_op_f32(-214f * var_0.d)), vec4<f32>(_wgslsmith_f_op_f32(min(var_0.a.x, var_0.d)), var_0.a.x, var_0.a.x, -515f)))), _wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(sign(var_0.a.x))), !arg_1);
    let var_4 = vec3<u32>(4294967295u, ~var_2.a, 0u);
    return !vec2<bool>(all(!func_3(true, var_0.c, var_3.c.x).wy), var_0.b.x || func_3(var_2.b, var_0.c, _wgslsmith_f_op_f32(918f * var_3.a.x)).x);
}

fn func_2(arg_0: Struct_4, arg_1: i32) -> vec3<i32> {
    var var_0 = 4294967295u;
    var_0 = arg_0.e;
    var var_1 = func_4(vec3<u32>(min(u_input.c, 25047u), _wgslsmith_add_u32(0u, _wgslsmith_sub_u32(arg_0.e, u_input.c)), 48340u), all(func_3(arg_0.b.x, _wgslsmith_sub_i32(~arg_1, arg_0.c), arg_0.a.x)));
    return vec3<i32>(arg_1, ~(~(-1i) << (_wgslsmith_mod_u32(arg_0.e, u_input.c) % 32u)) << (~1u % 32u), _wgslsmith_mult_i32(arg_0.c, ~(-(arg_0.c << (4294967295u % 32u)))));
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_sub_vec3_i32((func_2(Struct_4(vec3<f32>(-1267f, 1348f, -292f), vec2<bool>(false, true), 2151i, 1453f, 30865u), 29246i) ^ -vec3<i32>(0i, 0i, 0i)) | abs(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, -1i, -39984i), vec3<i32>(0i, 64110i, 0i))), vec3<i32>(1i, 1i, 1i)) | _wgslsmith_mult_vec3_i32(~(-vec3<i32>(1i, 70782i, 1i)), -vec3<i32>(_wgslsmith_mod_i32(2147483647i, 44239i), 1i, firstLeadingBit(63281i)));
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1120f)) - -403f), -206f, 1181f) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1021f, -456f, -586f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-833f, -132f, -878f) * vec3<f32>(-1581f, -920f, -1199f))))), abs(vec3<u32>(max(u_input.c, _wgslsmith_dot_vec2_u32(vec2<u32>(1173u, 1u), vec2<u32>(u_input.a, u_input.c))), ~(~u_input.c), (u_input.b << (u_input.c % 32u)) | min(4294967295u, 0u))));
    let var_2 = !all(vec2<bool>(false, _wgslsmith_mult_i32(-1i, var_0.x) > var_0.x));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -710f));
    let var_4 = Struct_4(var_1.a, func_4(~var_1.b, false), countOneBits(-1i), 168f, _wgslsmith_div_u32(var_1.b.x, firstLeadingBit(u_input.b)));
    return Struct_2(countOneBits((var_1.b.x ^ 4294967295u) << (abs(var_4.e) % 32u)), ~var_4.c > -3153i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = func_1();
    var_1 = Struct_2(~26385u, false);
    let var_2 = vec3<bool>(!var_0, !var_1.b, true);
    var_1 = func_1();
    let var_3 = Struct_2(u_input.c, true);
    var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(432f, -27443i, ~(~max(vec2<u32>(u_input.a, var_1.a), vec2<u32>(48913u, 28369u)) | vec2<u32>(u_input.a >> (13568u % 32u), 37701u)));
}

