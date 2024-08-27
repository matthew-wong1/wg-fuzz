struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<f32>,
    d: vec2<f32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: vec2<i32>,
    d: Struct_2,
    e: bool,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: u32,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: i32,
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: Struct_2) -> vec4<i32> {
    let var_0 = !arg_2.a;
    var var_1 = Struct_3(Struct_2(var_0), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(779f, 846f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(661f))), all(vec4<bool>(true, arg_2.a, var_0, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1391f))), abs(_wgslsmith_div_vec2_i32(-vec2<i32>(u_input.b, 2147483647i), -select(arg_0, arg_0, false))), arg_2, ((arg_1.x << (44125u % 32u)) <= -2147483647i) || (arg_1.x <= (i32(-1i) * -arg_0.x)));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(var_1.b.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(514f, var_1.b.x))), -873f, any(vec3<bool>(arg_2.a, true, all(vec3<bool>(var_0, true, var_0)))))), 1128f, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, var_1.b.x, -1980f))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.x, var_1.b.x)))), u_input.c.zww);
    var_2 = Struct_1(var_1.b.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(163f)) * -1000f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -265f) - var_1.b.x)), 1354f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(var_2.c, var_2.c)))), var_1.b, ~(~vec3<u32>(u_input.d.x, 0u, 0u)) | ~u_input.a.xyx);
    var var_3 = u_input.c.x;
    return select(firstTrailingBit(vec4<i32>(firstLeadingBit(0i), -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(-8202i, u_input.b, var_1.c.x), arg_1), arg_0.x)) ^ (~(-vec4<i32>(-2147483647i, arg_0.x, 1i, arg_0.x)) >> (u_input.a % vec4<u32>(32u))), _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_1.c.x, arg_0.x, arg_0.x, 26393i), min(vec4<i32>(arg_0.x, 0i, -50343i, 20729i), vec4<i32>(59096i, -1i, 2147483647i, arg_1.x))), vec4<i32>(~arg_0.x, _wgslsmith_clamp_i32(-21120i, -1i, 14578i), ~arg_1.x, 2147483647i)) ^ (vec4<i32>(_wgslsmith_sub_i32(arg_1.x, 0i), i32(-1i) * -81528i, var_1.c.x, 14206i) >> (vec4<u32>(_wgslsmith_add_u32(u_input.c.x, var_2.e.x), u_input.d.x, ~19838u, _wgslsmith_add_u32(var_2.e.x, u_input.a.x)) % vec4<u32>(32u))), var_0);
}

fn func_2(arg_0: bool, arg_1: bool) -> Struct_2 {
    var var_0 = -((vec4<i32>(1i, 4736i, -u_input.b, _wgslsmith_mod_i32(u_input.e, 0i)) >> (~(vec4<u32>(10643u, 0u, u_input.a.x, 13576u) >> (u_input.a % vec4<u32>(32u))) % vec4<u32>(32u))) | (vec4<i32>(-1i) * -func_3(vec2<i32>(u_input.e, u_input.e), vec3<i32>(u_input.b, 1i, u_input.e), Struct_2(false))));
    let var_1 = Struct_1(810f, -1000f, vec3<f32>(1272f, -496f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-512f, -2365f) * -583f)), vec2<f32>(-1372f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-489f + -142f)))), vec3<u32>(53936u, 1u, 41200u));
    var var_2 = reverseBits(var_0.x);
    var_2 = u_input.b;
    let var_3 = Struct_1(var_1.a, _wgslsmith_f_op_f32(var_1.b - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-933f)))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(var_1.c.x + _wgslsmith_f_op_f32(-371f + 673f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-706f)) - _wgslsmith_f_op_f32(-526f * var_1.a)), -472f))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a, var_1.b) - _wgslsmith_div_f32(var_1.b, var_1.d.x)), 1f))), _wgslsmith_sub_vec3_u32(vec3<u32>(~var_1.e.x, 0u, 44679u), vec3<u32>(_wgslsmith_div_u32(~u_input.a.x, 0u & u_input.c.x), firstTrailingBit(1u), _wgslsmith_div_u32(75869u, u_input.c.x) & u_input.c.x)));
    return Struct_2(select(_wgslsmith_f_op_f32(var_1.b * var_3.b) < _wgslsmith_div_f32(var_1.b, 799f), true, !arg_1) || !(abs(0u) <= u_input.c.x));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: Struct_1) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_3.a * _wgslsmith_div_f32(_wgslsmith_f_op_f32(1341f * _wgslsmith_f_op_f32(arg_2.x * 162f)), -1118f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(469f, -1108f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.d.x - arg_2.x) + arg_0.x)))));
    let var_1 = vec4<i32>(u_input.e, abs(-u_input.e), ~(i32(-1i) * -4009i), max(firstTrailingBit(_wgslsmith_mod_i32(u_input.e, u_input.b)), _wgslsmith_div_i32(-2650i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.e, u_input.b, 0i), vec4<i32>(u_input.b, u_input.b, u_input.e, u_input.e)))) & u_input.b);
    var_0 = _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.x, -892f) - _wgslsmith_f_op_f32(-arg_2.x)));
    let var_2 = func_2(any(select(!select(vec2<bool>(arg_1.a, false), vec2<bool>(true, arg_1.a), vec2<bool>(arg_1.a, true)), !select(vec2<bool>(arg_1.a, true), vec2<bool>(arg_1.a, arg_1.a), false), !arg_1.a)), any(vec2<bool>(true, true)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-147f)), arg_0.x) * -379f)));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-502f, arg_2.x) * vec2<f32>(arg_3.b, arg_3.b))), arg_3.c.xz, arg_1.a)) - vec2<f32>(_wgslsmith_f_op_f32(min(196f, arg_2.x)), _wgslsmith_f_op_f32(ceil(659f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(true, false, true, any(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true))));
    let var_1 = u_input.d.zy;
    let var_2 = Struct_3(Struct_2(var_0.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(vec3<f32>(335f, 338f, -1249f), Struct_2(true), vec3<f32>(1000f, 1000f, 866f), Struct_1(-825f, -897f, vec3<f32>(980f, -1349f, -246f), vec2<f32>(841f, -1044f), u_input.a.wyy))) - _wgslsmith_div_vec2_f32(vec2<f32>(-1537f, 2751f), vec2<f32>(1000f, 645f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-446f, -893f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-231f, 213f) + vec2<f32>(1177f, -684f))))), countOneBits(vec2<i32>(-1i, 0i)), Struct_2(true), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(var_1.x, ~0u, 0u), abs(4294967295u) << (var_1.x % 32u), abs(var_1.x) << (firstTrailingBit(52174u) % 32u)) < _wgslsmith_add_u32(27440u, ~(~529u)));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1411f - _wgslsmith_f_op_f32(f32(-1f) * -1324f))), var_2.b.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1061f - _wgslsmith_f_op_f32(f32(-1f) * -891f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_2.b.x + -446f), 1247f, 153f)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.b.x, var_2.b.x))), _wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.b.x, var_2.b.x, var_2.b.x), vec3<f32>(var_2.b.x, var_2.b.x, var_2.b.x), var_0.wyz)), var_2.d, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b.x, var_2.b.x, 426f) - vec3<f32>(var_2.b.x, var_2.b.x, -845f)), Struct_1(670f, var_2.b.x, vec3<f32>(var_2.b.x, -358f, var_2.b.x), var_2.b, vec3<u32>(4294967295u, u_input.a.x, u_input.c.x)))).x, _wgslsmith_f_op_f32(-var_2.b.x))), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-190f)) * -335f))), var_2.b.x), ~u_input.c.wxz);
    var_3 = Struct_1(-316f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_3.b))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_3.a, var_2.b.x, 2199f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(var_3.c)))) * _wgslsmith_f_op_vec3_f32(-var_3.c)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_3.c.zy))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2.b.x, -1853f)) * _wgslsmith_f_op_f32(-var_2.b.x)), _wgslsmith_f_op_vec2_f32(func_1(var_3.c, Struct_2(false), _wgslsmith_f_op_vec3_f32(var_3.c * var_3.c), Struct_1(-1100f, 100f, vec3<f32>(582f, var_2.b.x, -1329f), vec2<f32>(-1803f, var_2.b.x), var_3.e))).x))), ~vec3<u32>(~firstTrailingBit(var_1.x), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 4294967295u, 1u), var_3.e), select(var_1.x, 25551u, false), var_1.x), 26389u));
    let var_4 = Struct_4(select(!var_0.ww, var_0.wz, select(select(vec2<bool>(false, var_0.x), vec2<bool>(var_2.d.a, false), false), select(!vec2<bool>(false, var_0.x), vec2<bool>(true, true), var_0.yz), vec2<bool>(true, true))), abs(var_3.e.zz), _wgslsmith_mod_u32(select(1u, reverseBits(~var_1.x), var_2.a.a), ~var_3.e.x), Struct_3(Struct_2(false), vec2<f32>(-1040f, var_2.b.x), reverseBits(var_2.c), Struct_2(true), select(!all(vec4<bool>(false, var_2.d.a, var_0.x, var_0.x)), !var_2.a.a, any(select(vec2<bool>(true, false), var_0.yw, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.x);
}

