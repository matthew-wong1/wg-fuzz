struct Struct_1 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, true, false);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1289f, -328f, -186f) * vec3<f32>(-214f, 221f, 782f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1454f, -161f, 1676f) - vec3<f32>(1000f, -1414f, -894f))))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1402f, 739f, 701f), vec3<f32>(658f, -1957f, 1618f))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, -350f, -1544f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1083f, -1220f, -1156f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1946f, 899f, -1732f) + vec3<f32>(177f, -1682f, -664f)))))));
    var var_1 = -1531i;
    return select(vec2<bool>(global0.x, global0.x), vec2<bool>(true, true), !(var_0.x >= var_0.x));
}

fn func_2(arg_0: vec2<u32>, arg_1: bool) -> f32 {
    global0 = vec4<bool>(all(!vec4<bool>(global0.x, true, true, arg_1)), true, true, true);
    let var_0 = !select(func_3(), vec2<bool>(true, false), _wgslsmith_sub_u32(10340u, _wgslsmith_sub_u32(arg_0.x, arg_0.x)) <= 30878u);
    global0 = vec4<bool>(!arg_1, any(!(!global0.wwz)), all(global0.wwx), false);
    let var_1 = Struct_3(Struct_2(_wgslsmith_div_f32(-702f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-228f))))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(517f, -210f), vec2<f32>(191f, 522f))), min(19465i, u_input.b)), max(~(~vec3<u32>(u_input.c, 4013u, arg_0.x)), ~vec3<u32>(1u, 0u, u_input.c)), Struct_1(vec2<f32>(1f, 1f), i32(-1i) * -57267i), vec4<bool>(global0.x, global0.x, true, var_0.x)));
    var var_2 = min(~u_input.a.zy | _wgslsmith_sub_vec2_i32(~abs(u_input.a.xx), abs(u_input.a.zx) >> ((var_1.a.c.xz & var_1.a.c.xx) % vec2<u32>(32u))), _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.a.yx, _wgslsmith_add_vec2_i32(firstTrailingBit(u_input.a.yx), _wgslsmith_mult_vec2_i32(u_input.a.xy, u_input.a.xy))), firstLeadingBit(-firstLeadingBit(u_input.a.yy))));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(694f, -459f))))))));
}

fn func_1() -> vec3<f32> {
    global0 = !select(!select(vec4<bool>(false, true, true, global0.x), vec4<bool>(false, global0.x, true, global0.x), !global0.x), vec4<bool>(true, true, u_input.d < firstTrailingBit(u_input.a.x), true), true);
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2017f, 1561f, 492f) + vec3<f32>(-503f, -1469f, -578f)))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -575f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(702f + 962f)), 336f)) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1835f), _wgslsmith_f_op_f32(floor(-526f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-919f - 679f) * _wgslsmith_f_op_f32(select(-984f, -1853f, global0.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1404f) * _wgslsmith_f_op_f32(549f + -294f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<u32>(3426u, 1u), global0.x))))));
    global0 = vec4<bool>(global0.x, true, true, !(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-545f)))) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -540f))));
    var var_1 = var_0.x;
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -869f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.yx, _wgslsmith_f_op_vec2_f32(round(var_0.zx))))), ~(~(~firstLeadingBit(u_input.b))));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(435f, -955f, false)), 765f, _wgslsmith_f_op_f32(floor(670f))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1()), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1664f, -1434f, -1657f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1226f, -114f, -1332f), vec3<f32>(1044f, -1080f, 3614f))))))));
    global0 = select(vec4<bool>(var_0.x >= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1514f, var_0.x)), any(vec4<bool>(global0.x | true, false != global0.x, any(vec4<bool>(false, global0.x, true, true)), !global0.x)), global0.x || any(vec2<bool>(global0.x, global0.x)), true), vec4<bool>(~(-2147483647i) != _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, u_input.d, u_input.a.x, 8935i) << (vec4<u32>(u_input.c, u_input.c, 23951u, u_input.c) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, u_input.a.x, u_input.b, 25373i), vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, u_input.a.x))), !(any(vec2<bool>(global0.x, global0.x)) | func_3().x), all(vec3<bool>(true, true, false)) | true, _wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_1()).x, var_0.x) == _wgslsmith_f_op_vec3_f32(func_1()).x), !select(select(select(vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(global0.x, true, false, true), global0.x), select(vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(true, false, global0.x, global0.x), false), !global0.x), select(select(vec4<bool>(global0.x, global0.x, false, true), vec4<bool>(false, global0.x, global0.x, global0.x), global0.x), select(vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(global0.x, true, true, global0.x), true), global0.x), (i32(-1i) * -1i) != _wgslsmith_div_i32(u_input.d, -2147483647i)));
    let var_1 = any(select(global0.yzz, global0.yxx, global0.x));
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(func_1()).x, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-599f, -659f)), _wgslsmith_div_i32(~(~6760i), u_input.b)), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 60141u), vec2<u32>(u_input.c, 1u)) & reverseBits(4294967295u), ~firstTrailingBit(1u), 309u) ^ vec3<u32>(firstTrailingBit(u_input.c) << (u_input.c % 32u), firstLeadingBit(abs(66227u)), u_input.c), Struct_1(var_0.zz, _wgslsmith_dot_vec4_i32(abs(-vec4<i32>(u_input.d, u_input.b, u_input.b, u_input.a.x)), vec4<i32>(u_input.b, -20754i, 3462i, u_input.a.x) | countOneBits(vec4<i32>(u_input.b, u_input.b, u_input.a.x, u_input.a.x)))), !(!vec4<bool>(var_1, !global0.x, select(false, true, true), any(vec4<bool>(false, global0.x, false, false)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-var_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1378f, -374f, var_2.a))))))));
    let var_4 = _wgslsmith_sub_vec2_i32(abs(vec2<i32>(-1i) * -vec2<i32>(u_input.a.x, u_input.b)), u_input.a.yz) ^ u_input.a.zx;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(1u, min(_wgslsmith_mult_u32(u_input.c, 9104u), var_2.c.x | var_2.c.x) & _wgslsmith_mult_u32(var_2.c.x >> (u_input.c % 32u), var_2.c.x)));
}

