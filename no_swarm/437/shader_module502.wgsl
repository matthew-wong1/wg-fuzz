struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: bool, arg_1: vec4<i32>, arg_2: u32, arg_3: u32) -> vec4<u32> {
    let var_0 = Struct_1(!((arg_1.x & -1i) <= 1i));
    let var_1 = select(!(!select(!vec3<bool>(true, arg_0, false), vec3<bool>(arg_0, true, var_0.a), true)), vec3<bool>(any(vec4<bool>(arg_2 >= 11665u, var_0.a, var_0.a, false)), true, true & var_0.a), true);
    let var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(1367f)), -866f)) * vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1058f)), _wgslsmith_f_op_f32(1404f * 578f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -246f), _wgslsmith_f_op_f32(select(-710f, -1142f, var_0.a))))))));
    var var_3 = Struct_1(false);
    var_3 = var_0;
    return _wgslsmith_add_vec4_u32(~firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 14271u, arg_2, arg_2), vec4<u32>(25857u, arg_2, 76985u, 110646u)) | firstTrailingBit(vec4<u32>(1u, 0u, 8202u, 19513u))), max((~vec4<u32>(10351u, 0u, 4294967295u, 0u) << (vec4<u32>(42675u, u_input.b, 19365u, 0u) % vec4<u32>(32u))) << ((_wgslsmith_div_vec4_u32(vec4<u32>(15017u, 4294967295u, arg_2, 55779u), vec4<u32>(arg_2, 1u, 69798u, 78421u)) ^ _wgslsmith_add_vec4_u32(vec4<u32>(arg_2, u_input.b, u_input.b, u_input.b), vec4<u32>(arg_3, arg_2, 4294967295u, 0u))) % vec4<u32>(32u)), ~firstLeadingBit(vec4<u32>(u_input.b, arg_3, u_input.b, 8605u) >> (vec4<u32>(arg_2, arg_3, 28927u, u_input.b) % vec4<u32>(32u)))));
}

fn func_4(arg_0: vec4<u32>, arg_1: u32, arg_2: i32) -> vec3<f32> {
    let var_0 = Struct_1(!any(vec3<bool>(true, false, arg_1 < u_input.b)));
    let var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, -263f, _wgslsmith_f_op_f32(-279f + 1061f))))))));
    let var_3 = vec4<u32>(~abs(~(~46858u)), u_input.b, _wgslsmith_sub_u32(~arg_0.x, arg_0.x), 1u);
    var var_4 = 125411u;
    return var_2;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(800f, _wgslsmith_f_op_f32(1000f + -1377f), _wgslsmith_div_f32(730f, 864f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1281f, 1088f, _wgslsmith_f_op_f32(max(1644f, 1423f))) - vec3<f32>(1f, 1f, 1f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(func_3(false, u_input.c, 0u, u_input.b), 34088u, 1i)))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-774f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_div_f32(-1000f, var_0.x))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(330f, var_0.x, var_0.x))), vec3<f32>(-1086f, -900f, 685f), all(vec2<bool>(false, false)))) * vec3<f32>(var_0.x, _wgslsmith_f_op_f32(round(var_0.x)), var_0.x)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -311f)), var_0.x, var_0.x), any(vec3<bool>(true, true, true)) & true)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1684f - _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))));
    let var_2 = Struct_1(false);
    return var_2;
}

fn func_1(arg_0: vec2<i32>, arg_1: bool) -> f32 {
    var var_0 = func_2();
    var_0 = func_2();
    let var_1 = (!(u_input.c.x > (-29059i << (0u % 32u))) & !(!all(vec4<bool>(arg_1, false, true, var_0.a)))) & (-2147483647i < _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a, u_input.c.x, -2147483647i, u_input.c.x), u_input.c));
    var var_2 = Struct_1(!(((arg_0.x >> (4294967295u % 32u)) << (~u_input.b % 32u)) > (u_input.c.x << (u_input.b % 32u))));
    var_2 = func_2();
    return 687f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(u_input.c.zz);
    var var_1 = u_input.c;
    let var_2 = false;
    let var_3 = ~vec3<u32>(~(~(~91008u)), u_input.b, 0u);
    let var_4 = vec3<bool>(var_2, true, _wgslsmith_f_op_f32(-456f - _wgslsmith_f_op_f32(floor(1f))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(280f * 172f), _wgslsmith_f_op_f32(-1520f * -1416f)))));
    let var_5 = _wgslsmith_f_op_f32(func_1(var_0, var_4.x));
    let var_6 = func_2();
    var var_7 = any(select(var_4.yy, select(select(vec2<bool>(var_4.x, true), vec2<bool>(true, var_4.x), select(var_4.zz, var_4.xy, false)), vec2<bool>(true, true), any(select(vec4<bool>(true, var_4.x, true, var_4.x), vec4<bool>(true, true, true, false), vec4<bool>(var_6.a, false, false, false)))), false));
    var_1 = vec4<i32>(17556i, _wgslsmith_add_i32(~_wgslsmith_dot_vec3_i32(~vec3<i32>(var_1.x, u_input.c.x, var_0.x), u_input.c.wyz), _wgslsmith_sub_i32(var_0.x | -39504i, var_0.x << (1u % 32u)) & min(_wgslsmith_add_i32(1i, var_0.x), _wgslsmith_add_i32(74884i, 3147i))), max(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(u_input.c.zzx, select(vec3<i32>(0i, u_input.c.x, var_0.x), vec3<i32>(27715i, u_input.a, 49130i), var_2)), vec3<i32>(var_0.x << (93758u % 32u), _wgslsmith_div_i32(u_input.a, 65398i), abs(var_0.x))), 0i), 22902i);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, ~(~_wgslsmith_div_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, 1i, 30914i, -13994i), vec4<i32>(u_input.c.x, var_1.x, -1i, var_0.x)))), _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(firstLeadingBit(u_input.c), -vec4<i32>(-1i, u_input.c.x, var_1.x, var_0.x)), firstLeadingBit(reverseBits(u_input.c))) & _wgslsmith_mult_vec4_i32(select(u_input.c | vec4<i32>(var_0.x, -36100i, u_input.a, var_0.x), firstTrailingBit(u_input.c), !vec4<bool>(var_4.x, var_6.a, var_2, true)), ~_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, -59336i, u_input.c.x, -27568i), vec4<i32>(var_1.x, -2147483647i, var_0.x, 1i))), var_5, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1344f, _wgslsmith_f_op_f32(var_5 * var_5)))));
}

