struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: bool,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec4<u32>,
    c: f32,
    d: Struct_2,
    e: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(976f)) * _wgslsmith_f_op_f32(select(-240f, -405f, false)))), 133f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1494f, -579f)), 282f) * -163f)) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(224f))))), -579f, -1426f));
    var var_1 = Struct_1(-1851f);
    let var_2 = -u_input.a;
    var var_3 = Struct_5(Struct_2(vec2<u32>(28398u, 1u), -39268i), Struct_3(Struct_2(select(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(20538u, 5486u)), select(vec2<u32>(2605u, 4294967295u), vec2<u32>(0u, 54041u), vec2<bool>(true, true)), true), 0i), -29622i, true, !(all(vec3<bool>(true, false, false)) | true), Struct_1(var_0.x)), Struct_4(1u, vec4<u32>(reverseBits(1u), _wgslsmith_mod_u32(min(4294967295u, 1u), 1u), ~abs(1u), ~select(4294967295u, 44053u, false)), var_1.a, Struct_2(~_wgslsmith_clamp_vec2_u32(vec2<u32>(30091u, 1u), vec2<u32>(8771u, 0u), vec2<u32>(2006u, 4294967295u)), -var_2.x), all(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, true, true)))));
    var var_4 = _wgslsmith_f_op_f32(f32(-1f) * -564f);
    return var_0.x;
}

fn func_2(arg_0: u32, arg_1: vec3<i32>, arg_2: vec4<u32>) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1709f * 841f) + _wgslsmith_f_op_f32(f32(-1f) * -1514f)))))));
    var_0 = _wgslsmith_f_op_f32(func_3());
    var var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -1000f))), _wgslsmith_f_op_f32(-1f)));
    let var_2 = var_1.a;
    var var_3 = Struct_5(Struct_2(~(~firstTrailingBit(vec2<u32>(arg_0, 0u))), _wgslsmith_sub_i32(~(-24143i) | _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, 54985i, arg_1.x), vec3<i32>(-27863i, -71370i, 1i)), _wgslsmith_mod_i32(arg_1.x, _wgslsmith_sub_i32(19651i, arg_1.x)))), Struct_3(Struct_2(arg_2.zz, arg_1.x), 55091i, true, (1014f > _wgslsmith_f_op_f32(floor(var_1.a))) | true, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)))), Struct_4(abs(1u >> (1u % 32u)), max(arg_2, arg_2), var_1.a, Struct_2(_wgslsmith_add_vec2_u32(~vec2<u32>(71366u, arg_0), arg_2.ww), reverseBits(_wgslsmith_dot_vec3_i32(arg_1, arg_1))), any(vec4<bool>(true, true, true, true))));
    return vec4<u32>(~arg_0, arg_2.x, arg_2.x, _wgslsmith_add_u32(~25061u, arg_2.x));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2) -> Struct_3 {
    let var_0 = _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.a, vec4<i32>(arg_1.b, -(u_input.a.x & arg_1.b), ~(-19995i), u_input.a.x << ((20348u << (arg_1.a.x % 32u)) % 32u))), abs(u_input.a) ^ -vec4<i32>(_wgslsmith_mult_i32(38448i, 472i), u_input.a.x, u_input.a.x, arg_1.b), _wgslsmith_mult_vec4_i32(u_input.a << (_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.a.x, arg_1.a.x, arg_1.a.x, arg_1.a.x), func_2(arg_1.a.x, u_input.a.xyy, vec4<u32>(arg_1.a.x, arg_1.a.x, arg_1.a.x, arg_1.a.x))) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_mult_i32(firstTrailingBit(32837i), 0i | arg_1.b), -arg_1.b ^ _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.b, u_input.a.x, 0i, -2147483647i), vec4<i32>(arg_1.b, -1i, u_input.a.x, -6039i)), -_wgslsmith_mod_i32(arg_1.b, -34214i), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.b, u_input.a.x, 2147483647i, 11529i), vec4<i32>(2147483647i, -64230i, u_input.a.x, arg_1.b)), u_input.a))));
    let var_1 = ~_wgslsmith_sub_vec3_i32(abs(u_input.a.yxz), ~vec3<i32>(abs(u_input.a.x), var_0.x, firstLeadingBit(-10135i)));
    let var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(805f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(1049f, -449f, true)), -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))));
    let var_3 = _wgslsmith_f_op_f32(max(var_2.a, _wgslsmith_f_op_f32(var_2.a - var_2.a)));
    let var_4 = Struct_5(Struct_2(_wgslsmith_mod_vec2_u32(vec2<u32>(76171u, 72793u), arg_1.a) & ~_wgslsmith_clamp_vec2_u32(arg_1.a, arg_1.a, vec2<u32>(23237u, 1u)), u_input.a.x | -_wgslsmith_dot_vec3_i32(var_0.xyx, var_0.zyx)), Struct_3(arg_1, -1483i, false, all(!(!vec3<bool>(false, false, arg_0.x))), var_2), Struct_4(arg_1.a.x, ~select(~vec4<u32>(arg_1.a.x, 1u, 0u, 30719u), vec4<u32>(29582u, arg_1.a.x, 4294967295u, 11194u), false), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-357f * var_2.a) - var_2.a), _wgslsmith_f_op_f32(max(var_3, -728f)), !(var_1.x > 51977i))), Struct_2(~firstLeadingBit(arg_1.a), ~(arg_1.b ^ var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_3))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3 + 1272f))));
    return Struct_3(arg_1, 21859i ^ var_1.x, !(!arg_0.x), true, Struct_1(_wgslsmith_f_op_f32(select(833f, -1534f, !all(vec3<bool>(true, var_4.b.c, var_4.c.e))))));
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: vec2<bool>) -> bool {
    let var_0 = reverseBits(select(max(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 129300u, 80160u, arg_0.a.a.x) ^ vec4<u32>(30626u, arg_0.a.a.x, arg_0.a.a.x, 38552u), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.a.a.x, 31371u, 39673u, arg_0.a.a.x), vec4<u32>(arg_0.a.a.x, 720u, 19630u, arg_0.a.a.x), vec4<u32>(arg_0.a.a.x, arg_0.a.a.x, arg_0.a.a.x, 29891u)), vec4<u32>(arg_0.a.a.x, 26636u, arg_0.a.a.x, 0u)), _wgslsmith_add_vec4_u32(vec4<u32>(55958u, 3398u, 49019u, 17340u) ^ vec4<u32>(arg_0.a.a.x, arg_0.a.a.x, arg_0.a.a.x, 0u), vec4<u32>(arg_0.a.a.x, arg_0.a.a.x, 2714u, arg_0.a.a.x) >> (vec4<u32>(3041u, arg_0.a.a.x, arg_0.a.a.x, arg_0.a.a.x) % vec4<u32>(32u)))), vec4<u32>(0u, arg_0.a.a.x, min(1u, max(4294967295u, 9059u)), arg_0.a.a.x), vec4<bool>(false, false, all(arg_2) == any(vec4<bool>(arg_2.x, arg_0.d, true, true)), true)));
    let var_1 = Struct_4(_wgslsmith_clamp_u32(~min(~var_0.x, _wgslsmith_div_u32(1u, 47989u)), ~1u, var_0.x), ~firstLeadingBit(var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-274f + arg_0.e.a)))), func_1(vec4<bool>(all(!vec4<bool>(false, arg_2.x, false, false)), !(arg_2.x && true), all(!vec4<bool>(true, arg_0.d, arg_2.x, false)), arg_0.d), arg_0.a).a, true);
    var var_2 = Struct_1(arg_0.e.a);
    var var_3 = vec2<bool>(func_1(select(!(!vec4<bool>(arg_0.d, true, false, false)), select(select(vec4<bool>(true, var_1.e, true, true), vec4<bool>(var_1.e, false, true, true), vec4<bool>(arg_0.d, false, true, arg_2.x)), !vec4<bool>(false, true, arg_0.d, true), arg_2.x), select(select(vec4<bool>(true, var_1.e, arg_2.x, arg_0.c), vec4<bool>(arg_2.x, arg_0.d, arg_0.d, false), true), !vec4<bool>(arg_0.c, arg_0.c, arg_0.c, arg_2.x), select(vec4<bool>(var_1.e, true, arg_2.x, arg_0.c), vec4<bool>(false, true, false, true), vec4<bool>(arg_2.x, false, true, arg_0.d)))), Struct_2(vec2<u32>(min(1u, 0u), ~4294967295u), -55160i)).c, true);
    var_2 = func_1(vec4<bool>(any(vec2<bool>(true, true)), false, func_1(select(vec4<bool>(arg_0.c, true, true, arg_0.c), vec4<bool>(arg_0.d, true, var_1.e, var_3.x), arg_0.c), Struct_2(vec2<u32>(var_0.x, 7357u), var_1.d.b)).b != ~(var_1.d.b << (1u % 32u)), ((0i & arg_1) >= u_input.a.x) || any(vec3<bool>(false, var_3.x, var_3.x))), var_1.d).e;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(-1i, 2147483647i, _wgslsmith_dot_vec2_i32(~vec2<i32>(select(u_input.a.x, u_input.a.x, true), _wgslsmith_mod_i32(247i, 1i)), vec2<i32>(~u_input.a.x, -(~(-35568i)))), 1i);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -159f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -444f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(301f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(552f)) - _wgslsmith_f_op_f32(round(-1323f))))));
    let var_2 = Struct_3(Struct_2(_wgslsmith_mod_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(1u, 0u)), vec2<u32>(1u, 1u)), 1i), (17651i ^ var_0.x) | 0i, func_4(func_1(vec4<bool>(true, true, true, true), Struct_2(vec2<u32>(1u, 1u), 45579i)), u_input.a.x, vec2<bool>(true, false)) | !(func_4(Struct_3(Struct_2(vec2<u32>(44709u, 4294967295u), -17597i), var_0.x, false, false, Struct_1(var_1)), var_0.x, vec2<bool>(true, true)) && (u_input.a.x <= 0i)), true, Struct_1(_wgslsmith_f_op_f32(676f + _wgslsmith_f_op_f32(f32(-1f) * -1036f))));
    var var_3 = var_2.a;
    let var_4 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(var_1);
}

