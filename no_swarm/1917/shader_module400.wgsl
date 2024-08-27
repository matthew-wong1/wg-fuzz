struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: i32,
    c: Struct_3,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<u32>,
    c: u32,
    d: vec2<bool>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 11> = array<Struct_3, 11>(Struct_3(vec3<u32>(0u, 0u, 53855u), vec4<f32>(-1390f, 150f, -380f, 991f), Struct_1(vec4<bool>(true, false, true, false)), Struct_1(vec4<bool>(false, true, true, true))), Struct_3(vec3<u32>(21242u, 0u, 0u), vec4<f32>(1000f, -1000f, -1023f, 655f), Struct_1(vec4<bool>(false, false, true, true)), Struct_1(vec4<bool>(true, true, false, false))), Struct_3(vec3<u32>(21763u, 3879u, 58730u), vec4<f32>(1000f, -898f, 1262f, -303f), Struct_1(vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(false, true, true, true))), Struct_3(vec3<u32>(75001u, 0u, 64252u), vec4<f32>(-1357f, -719f, 719f, 472f), Struct_1(vec4<bool>(true, true, true, false)), Struct_1(vec4<bool>(false, false, true, false))), Struct_3(vec3<u32>(1u, 0u, 4294967295u), vec4<f32>(1658f, 573f, -1443f, -324f), Struct_1(vec4<bool>(true, false, true, true)), Struct_1(vec4<bool>(true, true, true, false))), Struct_3(vec3<u32>(4294967295u, 43125u, 1502u), vec4<f32>(1314f, -2173f, -1246f, -853f), Struct_1(vec4<bool>(false, false, true, false)), Struct_1(vec4<bool>(false, true, true, false))), Struct_3(vec3<u32>(1u, 29376u, 25125u), vec4<f32>(307f, -710f, -1227f, 874f), Struct_1(vec4<bool>(true, true, true, false)), Struct_1(vec4<bool>(true, false, false, false))), Struct_3(vec3<u32>(0u, 4079u, 0u), vec4<f32>(-745f, -1694f, 1606f, 438f), Struct_1(vec4<bool>(true, false, true, true)), Struct_1(vec4<bool>(false, true, true, true))), Struct_3(vec3<u32>(1u, 41332u, 1u), vec4<f32>(-2013f, -1850f, 1682f, 880f), Struct_1(vec4<bool>(true, false, true, true)), Struct_1(vec4<bool>(false, true, true, true))), Struct_3(vec3<u32>(0u, 7447u, 0u), vec4<f32>(326f, 1075f, 673f, 2998f), Struct_1(vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(true, false, false, true))), Struct_3(vec3<u32>(0u, 1u, 38018u), vec4<f32>(-1259f, 204f, -1357f, 1000f), Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(false, true, false, false))));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: u32, arg_3: u32) -> f32 {
    var var_0 = Struct_4(select(vec4<i32>(~_wgslsmith_mult_i32(u_input.b.x, u_input.b.x), firstLeadingBit(u_input.c.x & 2147483647i), 8196i, u_input.b.x), vec4<i32>(_wgslsmith_div_i32(u_input.b.x, 1i), _wgslsmith_dot_vec2_i32(~u_input.c.yz, u_input.b.xy), -2147483647i, u_input.b.x), !select(vec4<bool>(arg_1.x, arg_0.a.x, arg_1.x, arg_0.a.x), vec4<bool>(arg_1.x, arg_0.a.x, arg_0.a.x, true), true)), ~_wgslsmith_sub_i32(u_input.c.x, (-2147483647i ^ u_input.c.x) ^ ~u_input.b.x), global0[_wgslsmith_index_u32(29096u, 11u)], Struct_2(u_input.b.x, Struct_1(arg_0.a)));
    global0 = array<Struct_3, 11>();
    global0 = array<Struct_3, 11>();
    var_0 = Struct_4(~(-(~abs(vec4<i32>(var_0.a.x, -2147483647i, var_0.d.a, -2147483647i)))), abs(abs(~_wgslsmith_div_i32(var_0.b, u_input.c.x))), Struct_3(firstTrailingBit(abs(var_0.c.a << (vec3<u32>(3661u, arg_3, arg_3) % vec3<u32>(32u)))), var_0.c.b, arg_0, var_0.c.c), Struct_2(_wgslsmith_mod_i32(var_0.d.a, _wgslsmith_mult_i32(-1i, reverseBits(u_input.b.x))), var_0.c.c));
    var var_1 = ~(-u_input.c.x << (4294967295u % 32u));
    return _wgslsmith_f_op_f32(-var_0.c.b.x);
}

fn func_2() -> vec2<f32> {
    var var_0 = Struct_2(_wgslsmith_add_i32(u_input.c.x, firstLeadingBit(abs(min(u_input.c.x, 32832i)))), Struct_1(!vec4<bool>(all(vec3<bool>(false, false, false)), true, true, select(true, true, false))));
    global0 = array<Struct_3, 11>();
    let var_1 = Struct_2(u_input.b.x, Struct_1(vec4<bool>(all(!vec4<bool>(true, true, var_0.b.a.x, false)), true, true, var_0.b.a.x)));
    var_0 = Struct_2(~u_input.b.x, Struct_1(!var_0.b.a));
    var var_2 = var_0.a;
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2126f, -337f))) - vec2<f32>(342f, _wgslsmith_f_op_f32(func_3(var_0.b, select(var_1.b.a, var_1.b.a, vec4<bool>(false, false, false, false)), ~65030u, 4294967295u)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-137f, -110f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1170f, 889f))))))), true));
}

fn func_1(arg_0: vec2<bool>) -> Struct_2 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1504f), _wgslsmith_div_f32(1616f, -751f))) - _wgslsmith_f_op_f32(ceil(393f))) + -947f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-473f * _wgslsmith_div_f32(344f, _wgslsmith_f_op_f32(508f + -705f))), _wgslsmith_f_op_f32(ceil(1086f)))));
    var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-806f, -1842f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(956f, -693f))))));
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) - vec2<f32>(955f, 1037f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1522f, var_0.x))) + _wgslsmith_f_op_vec2_f32(func_2())))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.x, -137f)) + _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(min(379f, var_0.x)))), 1712f));
    global0 = array<Struct_3, 11>();
    let var_2 = !(!(!vec4<bool>(27508i <= u_input.c.x, !arg_0.x, arg_0.x, any(vec4<bool>(false, arg_0.x, false, false)))));
    return Struct_2(-_wgslsmith_add_i32(-u_input.c.x, firstLeadingBit(u_input.b.x)) ^ 25800i, Struct_1(var_2));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 11>();
    let var_0 = func_1(vec2<bool>(true, u_input.a < _wgslsmith_div_u32(u_input.a, 0u)));
    global0 = array<Struct_3, 11>();
    var var_1 = Struct_5(global0[_wgslsmith_index_u32(u_input.a, 11u)], ~abs(_wgslsmith_add_vec2_u32(u_input.e.zz ^ u_input.d.xw, _wgslsmith_sub_vec2_u32(u_input.d.zw, u_input.d.zz))), ~(_wgslsmith_sub_u32(14489u, u_input.d.x) ^ 3823u), var_0.b.a.zy, abs(7987i));
    var var_2 = !vec2<bool>(var_1.a.c.a.x, !(!any(vec3<bool>(false, var_1.a.d.a.x, var_0.b.a.x))));
    var var_3 = Struct_5(var_1.a, ~(~(~vec2<u32>(4294967295u, 4294967295u))), ~(35497u >> ((71721u & u_input.e.x) % 32u)), func_1(!var_0.b.a.zz).b.a.wy, _wgslsmith_dot_vec3_i32(vec3<i32>(~1i, i32(-1i) * -var_1.e, 2147483647i), -vec3<i32>(22942i, _wgslsmith_dot_vec4_i32(u_input.c, u_input.c), _wgslsmith_dot_vec2_i32(u_input.b.zz, u_input.c.yw))));
    var_3 = Struct_5(Struct_3(~var_3.a.a, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(var_3.a.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a.b.x, var_1.a.b.x, var_3.a.b.x, 307f) - var_3.a.b)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.b.x, -1401f, -344f, var_3.a.b.x) + var_1.a.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a.b.x, var_3.a.b.x, -761f, -1069f)))))), func_1(var_3.a.d.a.ww).b, func_1(!select(vec2<bool>(false, true), vec2<bool>(var_0.b.a.x, true), var_1.d)).b), vec2<u32>(_wgslsmith_mult_u32(var_1.a.a.x, ~(var_3.b.x | 1u)), var_3.c), 18217u, !(!vec2<bool>(!var_0.b.a.x, 19549i >= var_1.e)), _wgslsmith_dot_vec4_i32(-u_input.c, vec4<i32>(-10584i, 3843i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 2147483647i, u_input.c.x, var_0.a), u_input.c) << (4294967295u % 32u), _wgslsmith_sub_i32(u_input.c.x, _wgslsmith_sub_i32(u_input.c.x, -70473i)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32((vec3<i32>(-18840i, var_3.e, var_1.e) & ~vec3<i32>(var_1.e, -46308i, u_input.c.x)) << (var_3.a.a % vec3<u32>(32u)), vec3<i32>(-1i) * -vec3<i32>(1i, var_1.e, var_3.e)), var_3.a.b.yw);
}

