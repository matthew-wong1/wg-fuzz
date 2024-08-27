struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec3<f32>,
    e: Struct_3,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: Struct_4,
    d: Struct_4,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> vec2<f32> {
    let var_0 = firstTrailingBit(abs(~vec3<i32>(-1i, u_input.d, 2147483647i)) | _wgslsmith_mod_vec3_i32(-(~vec3<i32>(u_input.d, -1i, u_input.d)), _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.d, u_input.d, u_input.d), vec3<i32>(u_input.d, 1i, u_input.d)), reverseBits(vec3<i32>(-34954i, 0i, u_input.d)))));
    let var_1 = u_input.b.wy;
    var var_2 = Struct_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2044f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, -477f)) - -607f), _wgslsmith_f_op_f32(f32(-1f) * -543f))), vec4<i32>(var_0.x, var_0.x, _wgslsmith_dot_vec4_i32(firstLeadingBit(select(vec4<i32>(1i, 2147483647i, var_0.x, var_0.x), vec4<i32>(u_input.d, 31881i, u_input.d, u_input.d), vec4<bool>(false, true, false, false))), vec4<i32>(u_input.d >> (25752u % 32u), countOneBits(-41623i), 2147483647i ^ var_0.x, _wgslsmith_dot_vec3_i32(var_0, var_0))), _wgslsmith_add_i32(~u_input.d >> (1u % 32u), min(reverseBits(var_0.x), -u_input.d))), Struct_4(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1007f, 939f, -1069f) + vec3<f32>(1073f, -790f, 1194f)) * vec3<f32>(222f, -1912f, 1050f)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(1324f, 1174f) - vec2<f32>(198f, 345f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, 2149f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(828f, 117f) * vec2<f32>(-1000f, -218f))))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(floor(-410f)), _wgslsmith_f_op_f32(select(1232f, 391f, false))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1311f - 780f)), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-274f + 567f) + _wgslsmith_f_op_f32(floor(-138f)))), Struct_3(Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 0u, 33342u, var_1.x), u_input.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(-629f, 1147f) - vec2<f32>(-1000f, -339f)), 25252i << (u_input.c % 32u), var_0.x), Struct_1(~u_input.b, vec2<f32>(-1000f, -1000f), 0i, u_input.d), select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), Struct_2(Struct_1(vec4<u32>(var_1.x, 1u, 73479u, 1u), vec2<f32>(-240f, 178f), 8365i, 49365i), select(vec2<bool>(false, true), vec2<bool>(false, true), true)), Struct_2(Struct_1(vec4<u32>(7771u, var_1.x, u_input.b.x, u_input.c), vec2<f32>(482f, -136f), var_0.x, var_0.x), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true))))), Struct_4(vec3<f32>(_wgslsmith_f_op_f32(floor(-1254f)), _wgslsmith_f_op_f32(ceil(-1502f)), 1000f), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(sign(1142f)), _wgslsmith_f_op_f32(ceil(766f))))), vec2<f32>(_wgslsmith_f_op_f32(round(-486f)), _wgslsmith_f_op_f32(-134f + _wgslsmith_f_op_f32(369f - -152f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1730f * 145f)), _wgslsmith_f_op_f32(-935f - -968f), -1000f), Struct_3(Struct_1(vec4<u32>(var_1.x, 1u, 53969u, 46554u) << (vec4<u32>(var_1.x, 58903u, var_1.x, 25620u) % vec4<u32>(32u)), vec2<f32>(-1000f, 178f), 1i, 0i), Struct_1(~vec4<u32>(46800u, var_1.x, u_input.c, 1u), _wgslsmith_f_op_vec2_f32(vec2<f32>(-187f, 2347f) + vec2<f32>(-1534f, -1953f)), min(2147483647i, u_input.d), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, u_input.d, 1i, var_0.x), vec4<i32>(var_0.x, var_0.x, 1i, u_input.d))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true)), Struct_2(Struct_1(vec4<u32>(0u, 52685u, u_input.a, 30940u), vec2<f32>(-2325f, 701f), u_input.d, 2147483647i), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false))), Struct_2(Struct_1(u_input.b, vec2<f32>(432f, -1875f), 1i, u_input.d), vec2<bool>(true, true)))), true);
    let var_3 = var_2.c;
    var var_4 = Struct_2(Struct_1(vec4<u32>(41198u, firstLeadingBit(1u), 0u, 0u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(739f, var_2.d.c.x)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.d.c) * _wgslsmith_f_op_vec2_f32(-var_2.c.d.xx))), ~_wgslsmith_mult_i32(_wgslsmith_add_i32(-2147483647i, 38502i), 0i), firstLeadingBit(_wgslsmith_div_i32(_wgslsmith_clamp_i32(-1i, -4949i, var_3.e.b.d), abs(var_2.d.e.a.d)))), select(vec2<bool>(_wgslsmith_add_u32(var_3.e.a.a.x, 96481u) > ~4294967295u, false), !select(!vec2<bool>(var_3.e.c.x, var_2.d.e.e.b.x), vec2<bool>(var_2.c.e.e.b.x, true), all(var_2.c.e.c.xxx)), true));
    return var_3.d.xy;
}

fn func_2(arg_0: i32) -> Struct_4 {
    let var_0 = Struct_2(Struct_1(~_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.b, u_input.b), u_input.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-156f, 352f) - _wgslsmith_f_op_vec2_f32(func_3()))), -arg_0, firstTrailingBit(-_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, arg_0), vec2<i32>(9763i, 33215i)))), select(!vec2<bool>(u_input.d == 19537i, all(vec4<bool>(false, true, false, true))), vec2<bool>(true, true), true));
    let var_1 = Struct_1(_wgslsmith_mult_vec4_u32(~(~var_0.a.a << (firstLeadingBit(u_input.b) % vec4<u32>(32u))), vec4<u32>(~(~var_0.a.a.x), ~65937u, var_0.a.a.x, 60630u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(632f, 1000f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.b.x, var_0.a.b.x) + var_0.a.b)))), _wgslsmith_mod_i32(var_0.a.d, _wgslsmith_mod_i32(2147483647i, 2147483647i)), 1i);
    return Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.a.b.x, -1316f, -396f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-179f, 309f, -688f)))), _wgslsmith_div_vec3_f32(vec3<f32>(var_1.b.x, var_0.a.b.x, -811f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(494f, var_0.a.b.x, -416f))), true)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.b.x, var_0.a.b.x, var_1.b.x) - vec3<f32>(var_0.a.b.x, var_1.b.x, var_0.a.b.x)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(447f, var_1.b.x))), vec2<f32>(-192f, 834f), vec3<f32>(var_0.a.b.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.b.x + -1244f), var_1.b.x) * var_1.b.x), var_1.b.x), Struct_3(var_0.a, var_1, !vec4<bool>(true, all(vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x)), var_0.b.x, false), var_0, Struct_2(var_1, vec2<bool>(var_0.b.x, !var_0.b.x))));
}

fn func_1(arg_0: Struct_4) -> i32 {
    let var_0 = vec2<bool>(true, any(arg_0.e.e.b));
    let var_1 = func_2(-2147483647i);
    let var_2 = firstTrailingBit(_wgslsmith_add_vec2_u32(~vec2<u32>(1u, abs(10879u)), vec2<u32>(min(~1u, u_input.a), ~_wgslsmith_mod_u32(var_1.e.e.a.a.x, arg_0.e.a.a.x))));
    let var_3 = u_input.b;
    var var_4 = func_2(~var_1.e.d.a.d).e;
    return var_1.e.d.a.c;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_2) -> Struct_4 {
    let var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-966f, _wgslsmith_f_op_f32(abs(arg_0)), _wgslsmith_f_op_f32(arg_3.a.b.x * 1336f)) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1.b.x, arg_1.b.x, arg_0))))))), reverseBits(abs(vec4<i32>(-u_input.d, abs(-36217i), abs(2147483647i), _wgslsmith_add_i32(1i, arg_1.c)))), func_2(abs(1063i)), Struct_4(_wgslsmith_f_op_vec3_f32(sign(func_2(select(u_input.d, arg_3.a.d, arg_2.x)).d)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.a.b.x, 437f) + vec2<f32>(arg_1.b.x, arg_3.a.b.x))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3()).x * _wgslsmith_div_f32(arg_3.a.b.x, -380f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1.b.x, 1000f, -877f), vec3<f32>(676f, arg_0, arg_3.a.b.x)))), Struct_3(arg_3.a, func_2(arg_1.c).e.e.a, !select(vec4<bool>(false, arg_2.x, true, true), vec4<bool>(arg_2.x, arg_2.x, false, arg_2.x), vec4<bool>(false, false, arg_3.b.x, arg_3.b.x)), Struct_2(Struct_1(u_input.b, vec2<f32>(-1000f, arg_0), u_input.d, arg_1.c), !vec2<bool>(arg_3.b.x, true)), func_2(-1i).e.e)), func_2(_wgslsmith_div_i32(0i, -67737i)).d.x < arg_1.b.x);
    let var_1 = _wgslsmith_f_op_f32(floor(var_0.d.e.e.a.b.x));
    let var_2 = var_0;
    let var_3 = var_0.c;
    let var_4 = -2147483647i;
    return func_2(var_0.c.e.d.a.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(true, true, !(all(vec4<bool>(false, false, true, true)) != false), select(false, true, any(vec4<bool>(false, true, all(vec3<bool>(false, false, true)), any(vec2<bool>(true, true))))));
    let var_1 = vec2<i32>(~u_input.d, -1346i);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-614f + 1000f), _wgslsmith_f_op_f32(-1992f * -470f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-139f, 275f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(970f + -273f), _wgslsmith_div_f32(-653f, 838f)) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-975f, -642f))))));
    let var_3 = func_4(var_2.x, Struct_1(vec4<u32>(0u, ~u_input.b.x, firstLeadingBit(~u_input.a), u_input.c), vec2<f32>(-367f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(select(734f, var_2.x, var_0.x)), var_0.x))), i32(-1i) * -func_1(Struct_4(vec3<f32>(1000f, -619f, 292f), vec2<f32>(879f, 1110f), vec2<f32>(var_2.x, -370f), vec3<f32>(var_2.x, 559f, var_2.x), Struct_3(Struct_1(u_input.b, vec2<f32>(1037f, -414f), 1i, var_1.x), Struct_1(u_input.b, vec2<f32>(-1127f, var_2.x), 2147483647i, 81141i), vec4<bool>(true, var_0.x, var_0.x, true), Struct_2(Struct_1(u_input.b, vec2<f32>(var_2.x, var_2.x), -34982i, var_1.x), vec2<bool>(false, var_0.x)), Struct_2(Struct_1(u_input.b, vec2<f32>(1116f, -1752f), var_1.x, 2147483647i), vec2<bool>(var_0.x, true))))), -2147483647i), func_2(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(var_1.x, u_input.d), reverseBits(var_1.x), ~2147483647i) << (~firstLeadingBit(1409u) % 32u)).e.d.b, func_2(var_1.x).e.e);
    let var_4 = vec4<u32>(~_wgslsmith_clamp_u32(var_3.e.a.a.x, ~(~var_3.e.a.a.x), ~1u), 46783u, reverseBits(73045u), ~_wgslsmith_clamp_u32(reverseBits(4294967295u << (u_input.b.x % 32u)), u_input.a, 23820u));
    let var_5 = func_2(-1i).e.e;
    var var_6 = false;
    var var_7 = Struct_2(func_2(1i).e.a, var_0.yw);
    let x = u_input.a;
    s_output = StorageBuffer(var_4, func_2(abs(u_input.d)).d.x);
}

