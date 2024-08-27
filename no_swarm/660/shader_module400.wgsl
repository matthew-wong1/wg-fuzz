struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: u32,
    d: i32,
    e: bool,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: Struct_3,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> vec3<bool> {
    let var_0 = true;
    var var_1 = 2147483647i;
    var var_2 = (~countOneBits(abs(u_input.a)) | 4294967295u) ^ 0u;
    let var_3 = true;
    var var_4 = Struct_2(Struct_1(firstLeadingBit(abs(abs(vec3<u32>(14836u, 4294967295u, u_input.a)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-692f, 314f, 107f, 158f) * vec4<f32>(1697f, -1537f, 150f, 444f)), vec4<f32>(1619f, -405f, -674f, 796f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-568f, -453f, -632f, 1564f)), true))), ~vec2<u32>(u_input.d, 18652u));
    return select(!(!(!(!vec3<bool>(true, var_0, false)))), select(vec3<bool>(true, true, true), vec3<bool>(true, !select(var_3, false, var_3), any(!vec4<bool>(true, var_3, var_0, var_0))), vec3<bool>(var_0, _wgslsmith_f_op_f32(floor(var_4.a.b.x)) > _wgslsmith_div_f32(var_4.a.b.x, var_4.a.b.x), 49566u == ~u_input.b)), true);
}

fn func_4(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: Struct_3) -> vec3<u32> {
    let var_0 = -select(7374i, 0i, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -288f))) < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1043f))));
    var var_1 = reverseBits(firstLeadingBit(~arg_0.d << (u_input.b % 32u)));
    var var_2 = Struct_2(Struct_1(~vec3<u32>(1u, 1u, 1u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(970f, 308f, -270f, 379f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(666f, -983f, -307f, -171f) - vec4<f32>(486f, -333f, -1854f, -1054f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1050f, -601f, -720f, 682f))))), _wgslsmith_add_vec2_u32(min(vec2<u32>(1088u, 4294967295u), ~vec2<u32>(4294967295u, u_input.b)), abs(~vec2<u32>(4294967295u, u_input.d))) | ~_wgslsmith_add_vec2_u32(vec2<u32>(82844u, arg_2.c), firstTrailingBit(vec2<u32>(0u, u_input.d))));
    let var_3 = Struct_4(_wgslsmith_div_f32(var_2.a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.b.x))), ~(-countOneBits(2147483647i)) << (arg_0.c % 32u), Struct_3(vec3<bool>(all(vec2<bool>(arg_2.b.x, arg_2.e)), arg_0.b.x, !(false & arg_0.a.x)), arg_2.b, ~u_input.a, arg_2.d, 68036i < _wgslsmith_clamp_i32(-var_0, 77983i, arg_1.x)));
    var_2 = Struct_2(var_2.a, _wgslsmith_add_vec2_u32(select(var_2.b, var_2.b, func_3().xx), ~firstTrailingBit(min(var_2.a.a.zz, vec2<u32>(var_3.c.c, 4294967295u)))));
    return ~vec3<u32>(arg_0.c << (~(~5913u) % 32u), ~17014u, 32172u);
}

fn func_2(arg_0: i32) -> f32 {
    var var_0 = Struct_1(func_4(Struct_3(vec3<bool>(true, true, true), func_3(), ~_wgslsmith_sub_u32(108064u, 1u), firstLeadingBit(u_input.c.x) << (1u % 32u), false), vec4<i32>(6716i, -(~(-4366i)), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.c.x), u_input.c.zz)), ~0i), Struct_3(vec3<bool>(true, u_input.e < 1u, true), func_3(), u_input.a, _wgslsmith_mod_i32(0i, 57342i), any(select(vec2<bool>(true, false), vec2<bool>(false, true), false)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1136f, -741f, -838f, 218f) - vec4<f32>(470f, -769f, 1615f, 302f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1478f, -189f, -1172f) - vec4<f32>(488f, 1004f, -143f, -106f)))))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(527f, -620f, 455f, 591f))))));
    let var_1 = ~19i;
    let var_2 = Struct_3(vec3<bool>(978f > _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.b.x * 208f))), true, !all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)))), vec3<bool>(false, any(func_3().yz), false), max(0u, ~(_wgslsmith_clamp_u32(4294967295u, 7093u, 4294967295u) ^ 4294967295u)), u_input.c.x, _wgslsmith_mult_i32(_wgslsmith_div_i32(var_1 & 17804i, ~u_input.c.x), -max(var_1, 0i)) >= (var_1 << (((var_0.a.x << (0u % 32u)) | select(26642u, var_0.a.x, true)) % 32u)));
    var var_3 = abs(u_input.c);
    let var_4 = -927f;
    return var_0.b.x;
}

fn func_1() -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(758f * -633f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(-1590i)) * _wgslsmith_div_f32(-2023f, -523f)) + _wgslsmith_f_op_f32(func_2(max(-11547i, u_input.c.x))))));
    let var_1 = Struct_3(select(!(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), vec3<bool>(true, true, true), ~max(max(_wgslsmith_dot_vec2_u32(vec2<u32>(20476u, 25513u), vec2<u32>(u_input.d, 63254u)), 1u), func_4(Struct_3(vec3<bool>(false, false, false), vec3<bool>(true, true, false), 4294967295u, 17464i, false), -vec4<i32>(u_input.c.x, 11957i, -1i, -14612i), Struct_3(vec3<bool>(true, false, false), vec3<bool>(true, false, false), u_input.e, u_input.c.x, false)).x), u_input.c.x, true);
    let var_2 = _wgslsmith_mod_vec3_i32(~abs(vec3<i32>(_wgslsmith_add_i32(-23088i, 30019i), _wgslsmith_clamp_i32(var_1.d, u_input.c.x, 2147483647i), -56329i)), firstLeadingBit(u_input.c));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -624f));
    let var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-892f, _wgslsmith_f_op_f32(round(-402f)), var_0))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(171f, var_0) + var_0), -471f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0, 402f, true)) + _wgslsmith_f_op_f32(f32(-1f) * -1217f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(730f, _wgslsmith_div_f32(-1259f, var_0), 721f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, var_0))), vec3<f32>(_wgslsmith_f_op_f32(sign(var_0)), var_0, _wgslsmith_f_op_f32(f32(-1f) * -937f)), var_1.e)));
    return Struct_4(_wgslsmith_f_op_f32(trunc(1056f)), var_2.x, Struct_3(!(!var_1.b), select(func_3(), !(!var_1.a), vec3<bool>(true, true, true)), min(_wgslsmith_div_u32(u_input.e, select(var_1.c, var_1.c, false)), _wgslsmith_add_u32(_wgslsmith_sub_u32(0u, u_input.e), reverseBits(var_1.c))), -9386i, !var_1.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -717f)), _wgslsmith_mult_i32(-6055i, _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-1i, 21724i, -30535i, -17039i)), vec4<i32>(u_input.c.x, 2147483647i, -47224i, 34178i)) >> (min(u_input.b, u_input.d) % 32u)), Struct_3(vec3<bool>(true, true, any(vec3<bool>(true, true, true))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), _wgslsmith_sub_u32(52057u, _wgslsmith_sub_u32(4294967295u, u_input.d)), -2147483647i, true));
    let var_1 = vec3<bool>(true, any(!var_0.c.a.zy), -55392i >= (0i | u_input.c.x));
    let var_2 = true;
    var_0 = func_1();
    var_0 = func_1();
    let var_3 = true;
    var_0 = Struct_4(626f, ~min(var_0.b, ~u_input.c.x), var_0.c);
    var_0 = func_1();
    var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + _wgslsmith_f_op_f32(-var_0.a)))), -413f, _wgslsmith_f_op_f32(236f + _wgslsmith_div_f32(690f, var_0.a))), vec3<u32>(~u_input.a, var_0.c.c, 22564u));
}

