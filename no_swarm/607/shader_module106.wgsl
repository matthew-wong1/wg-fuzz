struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: f32,
    d: u32,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -773f;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<f32>, arg_1: i32) -> f32 {
    global0 = _wgslsmith_div_f32(arg_0.x, arg_0.x);
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1882f, -2462f, false)))))));
    return arg_0.x;
}

fn func_2(arg_0: vec2<bool>) -> Struct_3 {
    let var_0 = Struct_3(Struct_1(~(-vec3<i32>(u_input.b, 0i, u_input.a.x)) >> (abs(u_input.c.xwx) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1421f, _wgslsmith_div_f32(-960f, 1169f), _wgslsmith_f_op_f32(f32(-1f) * -1671f), -1553f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-240f * -561f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -501f) + _wgslsmith_f_op_f32(round(-719f))), any(!vec2<bool>(true, arg_0.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<f32>(1032f, -1000f, 272f, 1000f), u_input.d)) + -1049f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -728f)))) + _wgslsmith_f_op_f32(min(-1334f, 330f))), Struct_2(u_input.c.ww, Struct_1(vec3<i32>(0i, reverseBits(u_input.d), u_input.d), vec4<f32>(-334f, _wgslsmith_f_op_f32(106f - -545f), _wgslsmith_f_op_f32(1714f * -943f), _wgslsmith_f_op_f32(-496f * -857f)), _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(f32(-1f) * -383f)))), 2027f, ~(~6270u) | _wgslsmith_dot_vec3_u32(u_input.c.zzx, u_input.c.zxz), abs(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.c.x, 0u, u_input.c.x, u_input.c.x), ~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 15613u)))));
    let var_1 = _wgslsmith_f_op_f32(-var_0.c.c) != var_0.c.c;
    global0 = _wgslsmith_f_op_f32(select(991f, -1708f, var_1));
    global0 = -219f;
    let var_2 = vec4<bool>(true, !(_wgslsmith_f_op_f32(-var_0.a.c) == _wgslsmith_f_op_f32(f32(-1f) * -271f)), var_0.c.c > var_0.c.b.c, arg_0.x);
    return Struct_3(Struct_1((~var_0.c.b.a | var_0.c.b.a) | _wgslsmith_div_vec3_i32(vec3<i32>(-1i, 30711i, 0i) << (var_0.c.e.zwy % vec3<u32>(32u)), var_0.c.b.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(574f)), -492f, 1427f, var_0.b)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.b * -223f), _wgslsmith_f_op_f32(sign(1106f)), true))))), -1166f, Struct_2(~countOneBits(u_input.c.zy), Struct_1(firstTrailingBit(var_0.c.b.a) ^ vec3<i32>(var_0.c.b.a.x, 0i, 20587i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.c.b.b) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.a.b.x, -173f, var_0.c.c, var_0.c.b.b.x), var_0.c.b.b))), var_0.a.c), -864f, _wgslsmith_mult_u32(max(11120u, 10336u), countOneBits(firstTrailingBit(6382u))), vec4<u32>(min(4294967295u, 1u), ~_wgslsmith_add_u32(var_0.c.e.x, var_0.c.d), ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c.a.x, u_input.c.x), u_input.c.xz), _wgslsmith_mod_u32(var_0.c.a.x, var_0.c.e.x << (var_0.c.d % 32u)))));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: vec4<u32>) -> vec3<u32> {
    var var_0 = _wgslsmith_dot_vec4_u32(~(~vec4<u32>(~u_input.c.x, reverseBits(arg_2.x), ~30681u, ~1u)), firstLeadingBit(firstLeadingBit(_wgslsmith_div_vec4_u32(~vec4<u32>(arg_0.c.d, 11607u, arg_0.c.a.x, arg_0.c.e.x), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, 0u, arg_0.c.d, arg_2.x), vec4<u32>(u_input.c.x, 14454u, 4294967295u, 80876u))))));
    var var_1 = Struct_4(arg_0.c.b, _wgslsmith_mod_u32(max(45780u, 0u), 41673u), -1347f, vec2<u32>(u_input.c.x, 1u));
    var_0 = ~0u;
    var var_2 = Struct_2(countOneBits(vec2<u32>(u_input.c.x, var_1.b)), var_1.a, 234f, ~_wgslsmith_clamp_u32(arg_0.c.a.x, min(abs(u_input.c.x), 0u), max(1u, ~arg_0.c.d)), min(_wgslsmith_add_vec4_u32(vec4<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, arg_2.x, arg_2.x, var_1.d.x), arg_0.c.e), _wgslsmith_div_u32(arg_2.x, 0u), 0u), arg_0.c.e), ~(~_wgslsmith_add_vec4_u32(arg_0.c.e, vec4<u32>(var_1.b, arg_2.x, u_input.c.x, var_1.d.x)))));
    var var_3 = _wgslsmith_f_op_f32(sign(521f));
    return (~vec3<u32>(59368u, 33119u, ~0u) | vec3<u32>(4294967295u ^ arg_2.x, ~(~76616u), _wgslsmith_mod_u32(0u, _wgslsmith_mult_u32(arg_0.c.e.x, var_2.d)))) >> (firstTrailingBit(~(~vec3<u32>(1u, 18128u, var_2.e.x))) % vec3<u32>(32u));
}

fn func_1(arg_0: f32) -> vec4<i32> {
    var var_0 = min(u_input.c.wxx & u_input.c.wyw, func_4(func_2(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(true, true))), ~vec2<i32>(abs(-2147483647i), ~1i), vec4<u32>(u_input.c.x, 33091u, ~u_input.c.x >> (~u_input.c.x % 32u), u_input.c.x)));
    global0 = 2789f;
    let var_1 = Struct_2(firstLeadingBit(_wgslsmith_sub_vec2_u32(var_0.yz, ~vec2<u32>(u_input.c.x, 1u) ^ ~var_0.zy)), func_2(!vec2<bool>(all(vec2<bool>(true, true)), true)).c.b, 652f, ~33192u, ~(reverseBits(vec4<u32>(26178u, 8240u, var_0.x, 9026u)) << (vec4<u32>(var_0.x, u_input.c.x, u_input.c.x, var_0.x) % vec4<u32>(32u))));
    var var_2 = _wgslsmith_div_f32(var_1.b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.b.x * arg_0))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1248f, 569f) - _wgslsmith_f_op_f32(exp2(var_1.b.c))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0 - -746f)))) + arg_0);
    var var_3 = Struct_2(func_4(func_2(vec2<bool>(select(false, false, true), true)), ~abs(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, -1i), var_1.b.a.zz)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, 1u, 1u, var_0.x), ~u_input.c)).xz, var_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, var_1.b.c))) * -817f), var_0.x, ~(vec4<u32>(~u_input.c.x, 4294967295u, _wgslsmith_div_u32(u_input.c.x, 53358u), ~var_1.d) << (~var_1.e % vec4<u32>(32u))));
    return vec4<i32>(var_3.b.a.x, firstTrailingBit(select(2650i, 12426i, true)), -(~_wgslsmith_dot_vec2_i32(-vec2<i32>(-2147483647i, 1i), select(vec2<i32>(var_1.b.a.x, 21486i), var_3.b.a.zx, false))), ~(-(~u_input.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec4_i32(func_1(_wgslsmith_f_op_f32(660f + _wgslsmith_f_op_f32(sign(400f)))) >> (vec4<u32>(abs(_wgslsmith_div_u32(u_input.c.x, u_input.c.x)), ~(u_input.c.x ^ 4294967295u), 1u, 0u) % vec4<u32>(32u)), -_wgslsmith_mod_vec4_i32(select(vec4<i32>(u_input.b, -20034i, u_input.a.x, 6129i), vec4<i32>(u_input.a.x, -1i, -100336i, -7037i), vec4<bool>(true, true, true, true)) << (abs(vec4<u32>(1u, 0u, 4294967295u, 0u)) % vec4<u32>(32u)), -vec4<i32>(19533i, -35311i, u_input.a.x, 13496i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_0, -1i, var_0), u_input.c.zxw, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1614f - -864f)), _wgslsmith_f_op_f32(step(-128f, -1583f)))) + -781f), _wgslsmith_add_vec4_i32(~countOneBits(countOneBits(vec4<i32>(u_input.d, u_input.a.x, u_input.b, var_0))), -(vec4<i32>(-1i) * -vec4<i32>(var_0, var_0, 1i, u_input.d))));
}

