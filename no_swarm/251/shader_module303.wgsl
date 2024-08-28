struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<f32>,
    d: i32,
    e: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec4<i32>) -> i32 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(arg_0, arg_0)))), _wgslsmith_div_f32(-1711f, arg_1.a.x)) + _wgslsmith_f_op_f32(f32(-1f) * -146f)), arg_2.x, ~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, ~13328u, 1u), firstLeadingBit(vec4<u32>(4294967295u, 34625u, 50285u, 4365u)) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), vec4<u32>(1u, 1u, 1u, 1u)), vec3<u32>(24102u, 22011u, ~_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(30905u, 0u, 21777u)), vec3<u32>(4294967295u, 4294967295u, 1u))));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)) + _wgslsmith_f_op_f32(arg_0 - arg_1.a.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)) - _wgslsmith_f_op_f32(select(305f, arg_1.a.x, all(vec2<bool>(true, true)))))), var_0.b, ~(~vec4<u32>(60384u, _wgslsmith_mult_u32(var_0.d.x, 1u), max(var_0.c.x, 31175u), ~31429u)), var_0.d);
    let var_2 = Struct_2(var_1.d.x, Struct_1(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a.x), 1f), 1099f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(round(var_1.a))))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(907f)), _wgslsmith_f_op_f32(-var_1.a)), -2124f, _wgslsmith_f_op_f32(583f * _wgslsmith_f_op_f32(floor(730f))), var_1.a), vec4<f32>(_wgslsmith_f_op_f32(abs(1775f)), _wgslsmith_f_op_f32(f32(-1f) * -623f), arg_0, arg_0))), u_input.a, vec4<f32>(var_0.a, var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)) + _wgslsmith_f_op_f32(select(171f, 1041f, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1540f, -202f))))));
    return ~(-21450i);
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> u32 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(min(arg_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1.a.x)) * 1353f))), arg_0, _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~abs(vec4<u32>(1u, 1u, 1u, 1u))), vec3<u32>(abs(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(11449u, 4294967295u), vec2<u32>(0u, 22891u)))), countOneBits(1u), _wgslsmith_div_u32(0u, ~(~16652u))));
    let var_1 = var_0.d;
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.x, arg_1.a.x) + vec2<f32>(852f, 1648f))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.x, var_0.a)), vec2<f32>(1613f, _wgslsmith_f_op_f32(round(-101f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_f_op_f32(min(1309f, var_0.a)))) * arg_1.a.xz), vec2<bool>(all(select(select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)))), false)));
    var var_3 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, -1988f, arg_1.a.x) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, var_2.x, arg_1.a.x) + vec3<f32>(-641f, var_0.a, 370f))), _wgslsmith_f_op_vec3_f32(arg_1.a - arg_1.a))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(arg_1.a, vec3<f32>(2290f, -1124f, var_0.a), true))))));
    var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.a + arg_1.a.x))), _wgslsmith_f_op_f32(arg_1.a.x * -510f), var_0.a)));
    return 1u;
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(arg_0 * arg_0);
    var var_1 = vec4<f32>(-959f, arg_0, var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(abs(var_0))))));
    let var_2 = u_input.a;
    var var_3 = -(~reverseBits(vec4<i32>(1i, 1i, 1i, 1i))) ^ -vec4<i32>(u_input.a, var_2, u_input.a, _wgslsmith_clamp_i32(var_2, u_input.a, var_2));
    let var_4 = _wgslsmith_add_u32(func_4(func_3(_wgslsmith_f_op_f32(arg_1.a.x - 1178f), arg_1, vec4<i32>(-4748i, var_3.x, var_2, u_input.a)) | ~1i, arg_1), _wgslsmith_add_u32(_wgslsmith_div_u32(4294967295u, abs(29533u)), _wgslsmith_add_u32(1u, 1u)) ^ _wgslsmith_clamp_u32(0u, _wgslsmith_mult_u32(1u, _wgslsmith_div_u32(72412u, 4294967295u)), ~0u));
    return _wgslsmith_f_op_f32(round(-1234f));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<u32>) -> Struct_1 {
    var var_0 = vec4<bool>(!arg_0.x, any(select(!(!vec3<bool>(arg_0.x, true, false)), !(!arg_0), arg_0)), all(select(!arg_0, arg_0, vec3<bool>(true || arg_0.x, any(vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x)), false))), !arg_0.x);
    let var_1 = ~min(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, arg_1.x, 48541u, arg_1.x), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.x, arg_1.x, arg_1.x, 0u), vec4<u32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x))), arg_1.x), ~_wgslsmith_add_vec2_u32(firstLeadingBit(arg_1.yy), arg_1.xz));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-608f, 1000f, 187f, -133f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_2(-1000f, Struct_1(vec3<f32>(-345f, 1112f, 2083f)))), _wgslsmith_f_op_f32(1742f * -922f), -928f, -353f))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(458f, 1461f, -1401f, 2311f), vec4<f32>(-789f, -783f, 1000f, 201f), true)))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(838f, -932f, -1051f, -1298f), vec4<f32>(405f, -370f, 880f, 413f), vec4<bool>(true, var_0.x, arg_0.x, false)))))))));
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(sign(var_2.x)), 484f, -1431f));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3) -> Struct_2 {
    let var_0 = select(select(true, all(vec4<bool>(true, true, true, true)), select(true, any(vec4<bool>(false, true, true, true)), any(vec3<bool>(true, true, true)))), !any(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)))), !any(vec2<bool>(true, true)));
    var var_1 = vec2<u32>(4294967295u, arg_0.a);
    let var_2 = arg_1.a;
    var var_3 = arg_1;
    var var_4 = 4294967295u;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_2(11616u, func_1(vec3<bool>(true, true, true), ~(~vec3<u32>(20593u, 4294967295u, 20054u))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-201f, -466f, _wgslsmith_div_f32(425f, -1397f), _wgslsmith_f_op_f32(-1012f - 316f)))), ~u_input.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(select(306f, -2193f, true)), 1200f, _wgslsmith_f_op_f32(f32(-1f) * -328f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -638f, -446f, -732f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-795f, -334f, -216f, 1478f)), true)))), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1169f + 895f), _wgslsmith_f_op_f32(f32(-1f) * -288f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-802f + -866f))), u_input.a, ~vec4<u32>(1u, 1u, 1u, 1u), ~countOneBits(~vec3<u32>(39452u, 41960u, 9313u))));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(sign(func_5(Struct_2(var_0.a, Struct_1(var_0.c.zzy), _wgslsmith_f_op_vec4_f32(-var_0.e), _wgslsmith_sub_i32(0i, -21613i), var_0.e), Struct_3(_wgslsmith_f_op_f32(1368f - var_0.e.x), u_input.a, _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.a, var_0.a, var_0.a, 84132u), vec4<u32>(var_0.a, var_0.a, 4294967295u, 4294967295u)), ~vec3<u32>(var_0.a, 4294967295u, var_0.a))).e.x)), var_0.d, _wgslsmith_add_vec4_u32(vec4<u32>(var_0.a, ~_wgslsmith_sub_u32(16633u, var_0.a), var_0.a, var_0.a), (~vec4<u32>(var_0.a, 1u, 1u, 4294967295u) << (_wgslsmith_mod_vec4_u32(vec4<u32>(37u, var_0.a, 0u, var_0.a), vec4<u32>(var_0.a, var_0.a, 52882u, var_0.a)) % vec4<u32>(32u))) | _wgslsmith_add_vec4_u32(vec4<u32>(var_0.a, 59600u, var_0.a, 73427u) ^ vec4<u32>(var_0.a, var_0.a, var_0.a, 82489u), abs(vec4<u32>(var_0.a, var_0.a, 3096u, 42445u)))), vec3<u32>(var_0.a, ~520u, _wgslsmith_dot_vec4_u32(~reverseBits(vec4<u32>(0u, var_0.a, 0u, var_0.a)), abs(vec4<u32>(74280u, var_0.a, var_0.a, var_0.a) >> (vec4<u32>(var_0.a, var_0.a, var_0.a, var_0.a) % vec4<u32>(32u))))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_i32(-56173i, _wgslsmith_div_i32(max(var_0.d, -58844i), select(u_input.a, -30688i, true))), vec4<u32>(var_0.a, _wgslsmith_dot_vec4_u32(vec4<u32>(select(var_0.a, var_0.a, false), var_0.a, var_1.d.x, abs(29218u)), ~select(vec4<u32>(4294967295u, var_1.d.x, 76773u, 0u), var_1.c, true)), ~firstLeadingBit(4294967295u) >> (_wgslsmith_dot_vec3_u32(var_1.c.xwz, vec3<u32>(4294967295u, 0u, 4294967295u)) % 32u), ~var_0.a), var_1.d);
}

