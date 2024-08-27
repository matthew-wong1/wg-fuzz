struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: vec4<u32>,
    d: vec4<bool>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 20>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> bool {
    global0 = array<vec3<f32>, 20>();
    let var_0 = Struct_2(true, -2147483647i, ~(~vec4<u32>(0u, 11986u, 1u, 52609u)) << (vec4<u32>(reverseBits(1u), _wgslsmith_div_u32(1u, _wgslsmith_clamp_u32(34727u, 4294967295u, 10769u)), 98091u, 17674u) % vec4<u32>(32u)), !vec4<bool>(any(vec2<bool>(true, false)), true, -9764i > max(18551i, u_input.b), true), all(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
    global0 = array<vec3<f32>, 20>();
    let var_1 = Struct_1(-vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(19911i, u_input.b, -1i), vec3<i32>(36345i, var_0.b, 5313i), vec3<i32>(u_input.b, 15328i, 0i)), _wgslsmith_mult_vec3_i32(vec3<i32>(-61284i, 2147483647i, u_input.b), vec3<i32>(var_0.b, -2147483647i, 1i))), -54627i), ~_wgslsmith_mult_vec4_i32(vec4<i32>(1i, var_0.b ^ -1i, var_0.b, u_input.a), (vec4<i32>(var_0.b, -2147483647i, var_0.b, 1i) & vec4<i32>(-30407i, 0i, -32642i, 29453i)) | vec4<i32>(-67034i, var_0.b, u_input.b, u_input.a)), vec2<u32>(4294967295u, min(_wgslsmith_clamp_u32(1u, 65966u, _wgslsmith_div_u32(var_0.c.x, var_0.c.x)), _wgslsmith_mult_u32(~0u, var_0.c.x))), firstTrailingBit(max(1i, u_input.a)), 0u);
    let var_2 = !(var_0.e & !(any(var_0.d.wx) | (var_0.c.x < 0u)));
    return !var_0.e;
}

fn func_2(arg_0: vec2<bool>) -> vec3<i32> {
    var var_0 = Struct_2(select(_wgslsmith_mod_u32(~0u, 4294967295u), 4294967295u << (~4294967295u % 32u), arg_0.x) != ~0u, -29707i, ~vec4<u32>(1u, 1u, 1u, 1u) >> (~vec4<u32>(abs(0u), _wgslsmith_clamp_u32(4294967295u, 54614u, 1u), _wgslsmith_sub_u32(22368u, 4300u), 1u) % vec4<u32>(32u)), select(vec4<bool>(false, all(select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), arg_0.x)), false, !arg_0.x), select(!select(vec4<bool>(true, arg_0.x, false, true), vec4<bool>(arg_0.x, false, false, arg_0.x), true), vec4<bool>(false, true, func_3(), arg_0.x), !(!vec4<bool>(arg_0.x, false, arg_0.x, false))), vec4<bool>(all(vec2<bool>(true, arg_0.x)), !arg_0.x, arg_0.x, true == any(vec3<bool>(false, true, true)))), !(arg_0.x | false));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1304f) * _wgslsmith_f_op_f32(f32(-1f) * -798f)))), _wgslsmith_f_op_f32(step(-187f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2224f))))));
    var_0 = Struct_2(!any(select(select(vec2<bool>(var_0.d.x, true), arg_0, var_0.d.x), select(var_0.d.xy, vec2<bool>(var_0.e, var_0.d.x), arg_0.x), arg_0)), u_input.a & _wgslsmith_add_i32(var_0.b, firstLeadingBit(1i)), ~var_0.c, select(select(var_0.d, vec4<bool>(func_3(), true, func_3(), var_0.d.x), any(!var_0.d)), var_0.d, select(true, all(vec2<bool>(var_0.e, var_0.d.x)), all(!vec3<bool>(arg_0.x, var_0.d.x, true)))), true);
    var_0 = Struct_2(true, _wgslsmith_mult_i32(~u_input.b, reverseBits(-max(var_0.b, 1i))), ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.c.x, var_0.c.x, 4294967295u, var_0.c.x), vec4<u32>(87133u, var_0.c.x, 22864u, 48012u))), !select(!var_0.d, !select(var_0.d, vec4<bool>(false, true, true, false), var_0.a), !(!var_0.d)), !arg_0.x);
    var var_2 = -select(vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(25062i, var_0.b), vec2<i32>(u_input.b, -21912i)), 1i ^ u_input.b), ~var_0.b, i32(-1i) * -76718i, -19420i), _wgslsmith_div_vec4_i32(vec4<i32>(0i, i32(-1i) * -15557i, -11312i ^ u_input.b, 4421i), vec4<i32>(_wgslsmith_add_i32(-1i, 1i), var_0.b, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b, var_0.b, var_0.b), vec3<i32>(16837i, var_0.b, var_0.b)), _wgslsmith_add_i32(-1i, var_0.b))), !(arg_0.x & arg_0.x) && true);
    return firstTrailingBit(max(var_2.zzw, vec3<i32>(_wgslsmith_mult_i32(var_0.b, -18872i), _wgslsmith_div_i32(var_0.b, 0i), var_0.b))) ^ vec3<i32>(-3627i, var_0.b, abs(~firstTrailingBit(-75889i)));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<i32>) -> vec2<i32> {
    var var_0 = !(!vec4<bool>(true, true, false, !func_3()));
    var var_1 = ~abs(-select(firstLeadingBit(arg_0.xx), _wgslsmith_mod_vec2_i32(arg_1.yz, vec2<i32>(arg_0.x, u_input.a)), !var_0.x));
    let var_2 = _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(~1u, select(0u, abs(1u), true))), ~vec2<u32>(max(1u, firstTrailingBit(1u)), 119306u));
    var_0 = select(!select(vec4<bool>(all(vec3<bool>(var_0.x, false, var_0.x)), func_3(), true, !var_0.x), select(!vec4<bool>(false, false, var_0.x, true), vec4<bool>(var_0.x, true, true, true), !vec4<bool>(true, true, false, var_0.x)), vec4<bool>(var_0.x, true, var_0.x, var_0.x)), vec4<bool>(true, true, var_0.x, !select(true, true, true)), vec4<bool>(all(!(!vec2<bool>(false, var_0.x))), var_0.x, false, !(!all(vec4<bool>(var_0.x, true, false, true)))));
    var_1 = firstLeadingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(var_1.x, -arg_0.x) >> ((vec2<u32>(9591u, var_2) & firstLeadingBit(vec2<u32>(85412u, var_2))) % vec2<u32>(32u)), arg_1.yz));
    return -vec2<i32>(arg_1.x, ~(~u_input.a));
}

fn func_1() -> u32 {
    var var_0 = Struct_1(func_4(-select(vec4<i32>(-1i, u_input.b, u_input.b, u_input.b) << (vec4<u32>(35241u, 56137u, 40719u, 25124u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(90924i, u_input.b, 6339i, -28343i), vec4<i32>(30607i, -2147483647i, 6192i, u_input.a)), vec4<bool>(true, true, false, false)), _wgslsmith_mod_vec3_i32(func_2(select(vec2<bool>(false, false), vec2<bool>(false, true), false)), vec3<i32>(max(30054i, u_input.a), abs(9779i), -38065i))), _wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a << (23956u % 32u), _wgslsmith_sub_i32(-11780i, u_input.a), _wgslsmith_sub_i32(-1i, u_input.b), -57953i)), vec4<i32>(-1i, _wgslsmith_dot_vec3_i32(-vec3<i32>(31902i, 72197i, u_input.a), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, 0i, u_input.b), vec3<i32>(u_input.b, u_input.a, u_input.a))), abs(u_input.a & u_input.a), u_input.a)), vec2<u32>(abs(_wgslsmith_add_u32(~61147u, _wgslsmith_div_u32(4294967295u, 98749u))), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 38424u), vec2<u32>(1u, 1u))), u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, _wgslsmith_mult_u32(max(48521u, 112082u), 1u), _wgslsmith_sub_u32(~0u, ~11528u)), abs(max(vec3<u32>(1u, 1u, 1u), vec3<u32>(0u, 4294967295u, 31817u)))));
    var var_1 = Struct_1(-_wgslsmith_add_vec2_i32(~firstTrailingBit(vec2<i32>(u_input.a, var_0.d)), var_0.a), vec4<i32>(u_input.b, 2147483647i, max(~_wgslsmith_mod_i32(u_input.b, u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(-3873i, var_0.d, 6523i, -2147483647i) ^ var_0.b, vec4<i32>(-2147483647i, var_0.a.x, u_input.b, u_input.b) << (vec4<u32>(var_0.c.x, 0u, 40647u, var_0.c.x) % vec4<u32>(32u)))), ~_wgslsmith_add_i32(var_0.d << (17892u % 32u), _wgslsmith_mult_i32(var_0.d, u_input.a))), countOneBits(abs(~(var_0.c ^ vec2<u32>(0u, 49179u)))), var_0.d, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(firstLeadingBit(~vec3<u32>(0u, 4294967295u, var_0.c.x)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(103879u, var_0.e, 1u), vec3<u32>(var_0.c.x, var_0.c.x, var_0.c.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.e, 25336u, var_0.e), ~vec3<u32>(7513u, 0u, var_0.c.x))), reverseBits(vec3<u32>(var_0.e ^ 4294967295u, 0u, 4294967295u))));
    var var_2 = ~firstTrailingBit(select(firstTrailingBit(vec4<u32>(56162u, var_0.e, 61858u, 0u)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(50626u, var_0.e, var_0.e), vec3<u32>(var_0.e, var_0.e, var_1.e)), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c.x, var_1.c.x, 64647u, 4294967295u), vec4<u32>(var_1.e, 1u, 54689u, 0u)), var_0.c.x, var_1.e), false));
    var_2 = vec4<u32>(~var_0.c.x, ~(47034u >> (countOneBits(~var_0.c.x) % 32u)), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(var_1.c.x, 67988u, 20060u) & var_2.zyw, _wgslsmith_div_vec3_u32(~var_2.zww, vec3<u32>(var_1.c.x, var_1.c.x, var_0.e))), vec3<u32>(~95651u, 4294967295u, ~1u)), 1u);
    let var_3 = Struct_2(func_3(), -21695i, vec4<u32>(var_1.e, 15313u, _wgslsmith_dot_vec2_u32(var_0.c, _wgslsmith_mod_vec2_u32(~var_2.xw, _wgslsmith_mod_vec2_u32(var_2.wx, var_0.c))), _wgslsmith_div_u32(~var_1.e, ~2154u)), select(vec4<bool>(all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false))), any(vec2<bool>(true, true)), true, true), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false)), !vec4<bool>(true, var_0.c.x > 4294967295u, func_3(), true)), select(true, select(~58309u, min(18769u, var_1.e), true) == ~0u, all(vec4<bool>(true, any(vec4<bool>(true, false, true, false)), true, any(vec3<bool>(false, true, false))))));
    return ~(~(~countOneBits(0u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(u_input.a, -u_input.b, select(min(u_input.a, 1i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 26779i, u_input.a), -vec3<i32>(u_input.a, -2147483647i, u_input.b)), true) | u_input.b, u_input.a);
    var var_1 = _wgslsmith_mod_i32(2147483647i, _wgslsmith_mult_i32(u_input.b, var_0.x) >> (min(func_1(), 1u) % 32u));
    var var_2 = abs(var_0.zy) << (~select(vec2<u32>(_wgslsmith_div_u32(4294967295u, 9962u), 77929u), vec2<u32>(1u, _wgslsmith_div_u32(0u, 3277u)), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec3<bool>(true, false, true)))) % vec2<u32>(32u));
    global0 = array<vec3<f32>, 20>();
    let var_3 = u_input.b;
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1000f * 936f), -1066f, _wgslsmith_f_op_f32(f32(-1f) * -1493f), _wgslsmith_f_op_f32(-2349f + -596f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -656f, 340f, -355f)))));
    var var_5 = Struct_1(var_0.xy, select(vec4<i32>(var_3, var_2.x & min(u_input.a, -1i), ~2147483647i, 0i), vec4<i32>(_wgslsmith_add_i32(u_input.b, -var_2.x), -5310i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(25712i, u_input.a, var_3, -18621i), vec4<i32>(var_3, 22638i, var_2.x, 2147483647i)), _wgslsmith_dot_vec4_i32(vec4<i32>(var_3, 0i, var_0.x, var_0.x), vec4<i32>(var_2.x, var_3, var_3, u_input.b)) | _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 10586i), var_0.zz)), true), ~vec2<u32>(1u, 1u), ~(-5440i), ((reverseBits(29915u) << (func_1() % 32u)) | abs(1u)) << (max(~(~4486u), 1u) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_mult_vec3_u32(min(vec3<u32>(1u, var_5.c.x, 61652u), vec3<u32>(var_5.e, var_5.e, var_5.c.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(var_5.c.x, 10895u, 119887u), vec3<u32>(0u, 0u, var_5.c.x))) >> (~(~vec3<u32>(0u, var_5.e, var_5.c.x)) % vec3<u32>(32u))));
}

