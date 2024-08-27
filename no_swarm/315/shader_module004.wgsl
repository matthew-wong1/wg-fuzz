struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(130f)))));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1713f);
    let var_1 = (~abs(-u_input.a) | max(~countOneBits(-22958i), u_input.a)) == u_input.a;
    var_0 = 1358f;
    var var_2 = true;
    return _wgslsmith_mod_u32((~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 86180u), vec2<u32>(38174u, 4294967295u)) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(4294967295u, 4294967295u, 37746u))) ^ 0u, _wgslsmith_clamp_u32(reverseBits(1u), ~_wgslsmith_clamp_u32(reverseBits(4294967295u), select(18866u, 4294967295u, false), ~428u), _wgslsmith_dot_vec3_u32(~select(vec3<u32>(26241u, 26272u, 0u), vec3<u32>(1u, 1u, 0u), vec3<bool>(false, false, true)), select(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(30890u, 21862u, 0u), true))));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_5(Struct_3(_wgslsmith_mult_vec2_i32(vec2<i32>(~(-10387i), max(u_input.a, -2147483647i)), vec2<i32>(u_input.a, -2147483647i)), Struct_1(vec3<i32>(1i, _wgslsmith_mod_i32(u_input.a, u_input.a), -6836i >> (1u % 32u)), vec2<u32>(1u, func_3()), -332f), _wgslsmith_f_op_f32(f32(-1f) * -1702f), Struct_1(vec3<i32>(_wgslsmith_mod_i32(1i, u_input.a), u_input.a, _wgslsmith_add_i32(u_input.a, 0i)), vec2<u32>(1u, 1u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-322f - 533f), _wgslsmith_f_op_f32(abs(-622f))))));
    let var_1 = _wgslsmith_add_i32(-59720i, -1i);
    var var_2 = select((~(~var_0.a.d.b.x) >> (var_0.a.b.b.x % 32u)) <= ~4294967295u, select(true, all(vec3<bool>(true, false, true)), all(vec4<bool>(true, true, true, true))), all(select(vec4<bool>(true, true, all(vec2<bool>(true, false)), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false))));
    let var_3 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.c, _wgslsmith_f_op_f32(f32(-1f) * -321f), _wgslsmith_f_op_f32(-var_0.a.d.c))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-313f, 452f, -1000f)), vec3<f32>(var_0.a.c, var_0.a.d.c, var_0.a.d.c))))));
    let var_4 = Struct_1(-(firstLeadingBit(var_0.a.b.a) << (abs(min(vec3<u32>(0u, 42681u, 0u), vec3<u32>(var_0.a.d.b.x, 0u, 1u))) % vec3<u32>(32u))), vec2<u32>(var_0.a.b.b.x, max(~var_0.a.d.b.x << (var_0.a.d.b.x % 32u), var_0.a.b.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_3.x, var_0.a.c)) + -1178f))));
    return Struct_1(var_4.a, firstTrailingBit(~abs(~var_0.a.d.b)), var_3.x);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec2<u32>, arg_3: Struct_4) -> f32 {
    let var_0 = 46167u;
    let var_1 = ~(~(vec3<u32>(1u, 1u, ~0u) ^ reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(arg_0.b.x, arg_2.x, arg_2.x), vec3<u32>(49452u, 4294967295u, arg_0.b.x)))));
    let var_2 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a) - _wgslsmith_div_f32(arg_3.a, -1000f)), !(!select(select(vec3<bool>(arg_3.b.x, false, arg_3.b.x), arg_3.b, true), !arg_3.b, all(vec4<bool>(arg_3.b.x, arg_3.b.x, false, false)))));
    var var_3 = vec2<u32>(1230u, 11274u);
    var var_4 = Struct_1(vec3<i32>(-1i) * -vec3<i32>(2147483647i, -arg_0.a.x, ~arg_0.a.x), vec2<u32>(0u, 45050u), _wgslsmith_f_op_f32(f32(-1f) * -165f));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.c * _wgslsmith_f_op_f32(round(arg_0.c))), _wgslsmith_div_f32(var_4.c, 843f)))));
}

fn func_1() -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-346f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(217f + 809f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(305f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(576f + 340f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_2(), _wgslsmith_add_i32(-u_input.a, u_input.a << (1u % 32u)), vec2<u32>(1u, 1u) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 52306u), vec2<u32>(11502u, 50096u), vec2<u32>(13943u, 23485u)) % vec2<u32>(32u)), Struct_4(-265f, vec3<bool>(false, true, false)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(604f - _wgslsmith_f_op_f32(f32(-1f) * -341f)) + _wgslsmith_f_op_f32(max(-1315f, func_2().c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1097f * 1004f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-160f)))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -524f), _wgslsmith_f_op_f32(func_4(func_2(), 1i << (1u % 32u), vec2<u32>(4294967295u, 4294967295u), Struct_4(631f, vec3<bool>(true, true, false))))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-641f, var_0.x, var_0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-354f, var_0.x, 1955f)), vec3<bool>(false, true, false))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, 656f, 226f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, var_0.x, 643f), vec3<f32>(465f, var_0.x, -938f), vec3<bool>(true, false, false))))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-707f, var_0.x, -1005f) - vec3<f32>(var_0.x, var_0.x, -197f)) * vec3<f32>(627f, var_0.x, var_0.x)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_0.x, -387f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-680f, -462f, var_0.x), vec3<f32>(-849f, var_0.x, 375f))))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x))))));
    var var_1 = Struct_5(Struct_3(~(-(~vec2<i32>(-2147483647i, u_input.a))), Struct_1(_wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a)), abs(~vec2<u32>(0u, 4294967295u)), -494f), -540f, func_2()));
    var_1 = Struct_5(var_1.a);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_i32(((i32(-1i) * -84568i) & u_input.a) << (1u % 32u), _wgslsmith_dot_vec3_i32(max(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(countOneBits(33567i), _wgslsmith_add_i32(-1i, 2147483647i), -25069i)), ~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, u_input.a, 120327i), vec3<i32>(u_input.a, 2147483647i, u_input.a))));
    let var_1 = func_1();
    let var_2 = abs(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(var_1.b.x, 4294967295u, var_1.b.x, 27137u), min(~vec4<u32>(90403u, 67417u, 10022u, 4294967295u), select(vec4<u32>(var_1.b.x, var_1.b.x, var_1.b.x, 34967u), vec4<u32>(0u, 4294967295u, var_1.b.x, 0u), vec4<bool>(true, false, false, false)))), ~abs(vec4<u32>(var_1.b.x, 21870u, var_1.b.x, 4294967295u))));
    var var_3 = Struct_4(_wgslsmith_f_op_f32(-var_1.c), !select(vec3<bool>(var_1.a.x <= 0i, var_1.a.x >= -1i, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), false));
    let var_4 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(956f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-180f, -869f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(726f, 1245f) - vec2<f32>(471f, var_3.a))))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_1.c, 114f), var_2.x);
}

