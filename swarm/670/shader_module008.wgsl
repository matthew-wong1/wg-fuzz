struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: i32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: f32,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 18> = array<vec2<u32>, 18>(vec2<u32>(35639u, 1u), vec2<u32>(4294967295u, 13803u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 43607u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 6352u), vec2<u32>(47481u, 11155u), vec2<u32>(35581u, 0u), vec2<u32>(13476u, 0u), vec2<u32>(77826u, 0u), vec2<u32>(4294967295u, 117018u), vec2<u32>(14363u, 40529u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(40885u, 43600u), vec2<u32>(4294967295u, 42670u), vec2<u32>(4977u, 4214u), vec2<u32>(28712u, 1u), vec2<u32>(7062u, 4931u));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: vec4<u32>) -> u32 {
    global0 = array<vec2<u32>, 18>();
    let var_0 = Struct_1(~_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(arg_0, -arg_0), ~(-arg_0)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a, -1000f, arg_2.a) * vec3<f32>(arg_2.a, arg_2.a, arg_2.a))))), vec4<f32>(1145f, _wgslsmith_f_op_f32(-arg_2.a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(arg_2.a, 1439f, false || arg_2.b.x)), 947f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a))), ~arg_1.x, ~arg_3);
    var var_1 = ~_wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec3_u32(max(reverseBits(var_0.e.yzy), vec3<u32>(55487u, arg_3.x, arg_3.x) | vec3<u32>(1u, arg_3.x, var_0.e.x)), arg_3.ywx >> (~vec3<u32>(0u, 1u, arg_3.x) % vec3<u32>(32u))));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -2118f);
    var var_3 = _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(max(arg_0.xw, firstLeadingBit(arg_0.ww)), _wgslsmith_add_vec2_i32(~arg_1.xz, -vec2<i32>(arg_0.x, -35118i))) << (reverseBits(_wgslsmith_add_vec2_u32(firstTrailingBit(var_0.e.yz), var_0.e.yz)) % vec2<u32>(32u)), min(abs(vec2<i32>(i32(-1i) * -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.x, u_input.a.x), vec2<i32>(12052i, var_0.a.x)))), _wgslsmith_sub_vec2_i32(var_0.a.yz, vec2<i32>(~(-2147483647i), -6217i))));
    return var_0.e.x << (((_wgslsmith_mod_u32(_wgslsmith_mod_u32(30523u, arg_2.c), ~4294967295u) >> ((arg_2.c >> (firstTrailingBit(17363u) % 32u)) % 32u)) | max(_wgslsmith_clamp_u32(~arg_2.c, abs(58734u), ~arg_2.c), select(1u, firstTrailingBit(12696u), any(arg_2.b.yx)))) % 32u);
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: Struct_2, arg_3: bool) -> u32 {
    let var_0 = arg_2.b.xzx;
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.a)));
    let var_2 = arg_2;
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.a))))));
    let var_4 = ~_wgslsmith_mult_i32(countOneBits(_wgslsmith_div_i32(firstLeadingBit(-55489i), _wgslsmith_dot_vec2_i32(vec2<i32>(21770i, 57188i), u_input.b))), u_input.a.x);
    return _wgslsmith_div_u32(~25780u, ~arg_2.c << (31949u % 32u));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(-firstTrailingBit(_wgslsmith_mod_vec4_i32(max(vec4<i32>(u_input.b.x, u_input.a.x, 0i, 1i), vec4<i32>(u_input.a.x, u_input.b.x, 2147483647i, u_input.b.x)), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.a.x) & vec4<i32>(2147483647i, 19420i, u_input.b.x, -2147483647i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(987f, 104f, 216f))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(306f, -742f, 210f, -980f), vec4<f32>(-151f, 790f, -1000f, -866f), vec4<bool>(false, false, true, true))), _wgslsmith_div_vec4_f32(vec4<f32>(-967f, -419f, -177f, -117f), vec4<f32>(-551f, -559f, -150f, 1115f)), vec4<bool>(false, true, false, false)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1661f, 1297f, 1784f, -1000f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(946f, 420f, 1272f, 177f))))), ~u_input.b.x, vec4<u32>(firstTrailingBit(0u), countOneBits(26719u) >> (_wgslsmith_sub_u32(firstTrailingBit(464u), ~59738u) % 32u), ~1u, func_4(u_input.b.x == ~(-129i), _wgslsmith_f_op_f32(-3363f - _wgslsmith_f_op_f32(round(1235f))), Struct_2(-2019f, vec4<bool>(true, true, true, false), func_3(vec4<i32>(-2147483647i, u_input.b.x, u_input.a.x, -1i), vec4<i32>(u_input.b.x, u_input.a.x, -2147483647i, u_input.b.x), Struct_2(637f, vec4<bool>(false, true, true, false), 60107u), vec4<u32>(1u, 1u, 1u, 4294967295u))), true)));
    global0 = array<vec2<u32>, 18>();
    var var_1 = firstTrailingBit(u_input.b.x | ~u_input.a.x);
    return Struct_1(vec4<i32>(-u_input.a.x, u_input.b.x, max(~var_0.d, var_0.a.x), var_0.a.x) << (~vec4<u32>(1u, ~var_0.e.x, firstLeadingBit(var_0.e.x), var_0.e.x) % vec4<u32>(32u)), var_0.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_0.c, var_0.c) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, var_0.b.x, 2084f, -1227f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, -324f, var_0.c.x, -597f))))), _wgslsmith_dot_vec4_i32(var_0.a, ~(~var_0.a)) >> ((_wgslsmith_dot_vec4_u32(var_0.e, var_0.e) | abs(112373u)) % 32u), ~(~vec4<u32>(var_0.e.x, abs(var_0.e.x), ~4294967295u, 26253u)));
}

fn func_1() -> vec3<bool> {
    var var_0 = func_2();
    var_0 = Struct_1(var_0.a, var_0.c.ywy, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.c * var_0.c))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.c + vec4<f32>(var_0.b.x, -705f, 103f, -226f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, var_0.c.x, var_0.b.x, -545f) * vec4<f32>(var_0.c.x, var_0.b.x, 481f, var_0.c.x))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(var_0.c - var_0.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(498f, -609f, -770f, -1414f)))), vec4<bool>(true, false, false, false)))), -14439i, vec4<u32>(_wgslsmith_mod_u32(firstTrailingBit(_wgslsmith_div_u32(28015u, 15605u)), var_0.e.x), var_0.e.x, _wgslsmith_add_u32(firstLeadingBit(var_0.e.x), ~0u), ~_wgslsmith_mult_u32(var_0.e.x << (var_0.e.x % 32u), _wgslsmith_dot_vec3_u32(var_0.e.xxx, var_0.e.ywy))));
    var_0 = Struct_1(abs(~vec4<i32>(var_0.d, var_0.d, 36054i, var_0.a.x) | (vec4<i32>(-1i) * -vec4<i32>(1i, 23460i, 80963i, u_input.a.x))), var_0.b, var_0.c, min(reverseBits(var_0.a.x) | _wgslsmith_dot_vec4_i32(var_0.a | var_0.a, abs(vec4<i32>(-20126i, -2147483647i, u_input.a.x, 11687i))), ~(-31194i)), _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.e.x, _wgslsmith_clamp_u32(34905u, var_0.e.x, var_0.e.x) << (_wgslsmith_div_u32(var_0.e.x, 10737u) % 32u), var_0.e.x, ~abs(4294967295u)), ~var_0.e));
    global0 = array<vec2<u32>, 18>();
    var_0 = Struct_1(max(~(~var_0.a), var_0.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.c.ywy), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, 368f, 424f) * vec3<f32>(var_0.c.x, var_0.c.x, var_0.b.x))) - var_0.b)), _wgslsmith_f_op_vec4_f32(-var_0.c), var_0.d, _wgslsmith_clamp_vec4_u32(var_0.e, _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(var_0.e, vec4<u32>(35120u, 4294967295u, var_0.e.x, 28547u)) << (abs(var_0.e) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.e.x, 1u, var_0.e.x, 4294967295u), vec4<u32>(var_0.e.x, 4294967295u, var_0.e.x, var_0.e.x) >> (vec4<u32>(53521u, var_0.e.x, 86010u, 0u) % vec4<u32>(32u)))), abs(var_0.e)));
    return vec3<bool>(true, true, !any(select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), true), vec4<bool>(false, false, true, false), u_input.a.x >= 2668i)));
}

fn func_5(arg_0: vec3<bool>, arg_1: i32, arg_2: vec3<bool>) -> Struct_3 {
    return Struct_3(Struct_2(-177f, select(vec4<bool>(true, true, true, true), vec4<bool>(true | arg_0.x, all(vec4<bool>(false, arg_0.x, arg_0.x, true)), false, all(vec4<bool>(false, false, arg_2.x, arg_2.x))), any(!vec4<bool>(true, false, arg_0.x, arg_2.x))), firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 9203u, 0u, 4443u), vec4<u32>(40833u, 1u, 8993u, 0u)) << (_wgslsmith_div_u32(9017u, 34435u) % 32u))), u_input.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-990f, -1109f, true)), _wgslsmith_f_op_f32(min(696f, -710f))))))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1951f - -1543f))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1010f, -1000f) * -132f)), vec4<bool>(true, true, true, true), ~func_2().e.x), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(!select(vec3<bool>(u_input.b.x > 2147483647i, true, true), func_1(), select(vec3<bool>(true, true, false), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false), false)), 25959i, select(vec3<bool>(2147483647i <= (3752i & u_input.b.x), false, any(vec3<bool>(false, false, false))), vec3<bool>(true, any(vec4<bool>(false, true, true, true)), true), true));
    let x = u_input.a;
    s_output = StorageBuffer(func_2().e.x);
}

