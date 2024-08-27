struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
    d: f32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(8661u, 0u, 0u);

var<private> global1: array<Struct_2, 19>;

var<private> global2: array<Struct_4, 16> = array<Struct_4, 16>(Struct_4(Struct_2(Struct_1(vec2<u32>(4294967295u, 37580u), 1000f), vec3<i32>(2147483647i, 1i, -1i)), Struct_1(vec2<u32>(81635u, 16821u), 181f), 2147483647i, 791f), Struct_4(Struct_2(Struct_1(vec2<u32>(1u, 70474u), -1165f), vec3<i32>(10656i, -1i, 0i)), Struct_1(vec2<u32>(4294967295u, 7960u), -109f), -421i, 385f), Struct_4(Struct_2(Struct_1(vec2<u32>(4294967295u, 48361u), -910f), vec3<i32>(49045i, i32(-2147483648), i32(-2147483648))), Struct_1(vec2<u32>(4294967295u, 52587u), -327f), -31790i, -198f), Struct_4(Struct_2(Struct_1(vec2<u32>(9084u, 17264u), 1962f), vec3<i32>(i32(-2147483648), -7346i, -25863i)), Struct_1(vec2<u32>(18253u, 1u), 952f), i32(-2147483648), -483f), Struct_4(Struct_2(Struct_1(vec2<u32>(27094u, 4294967295u), 559f), vec3<i32>(-37791i, -1i, 46714i)), Struct_1(vec2<u32>(0u, 1u), -521f), 0i, -409f), Struct_4(Struct_2(Struct_1(vec2<u32>(4294967295u, 38285u), 249f), vec3<i32>(i32(-2147483648), 0i, i32(-2147483648))), Struct_1(vec2<u32>(4294967295u, 0u), 1313f), 37357i, -1291f), Struct_4(Struct_2(Struct_1(vec2<u32>(8898u, 4294967295u), 357f), vec3<i32>(2147483647i, 2147483647i, -24489i)), Struct_1(vec2<u32>(24710u, 1u), -568f), -22610i, 1148f), Struct_4(Struct_2(Struct_1(vec2<u32>(43519u, 4294967295u), 698f), vec3<i32>(-17208i, 1i, 2041i)), Struct_1(vec2<u32>(15698u, 0u), 611f), 25430i, 800f), Struct_4(Struct_2(Struct_1(vec2<u32>(33089u, 39295u), 1000f), vec3<i32>(i32(-2147483648), i32(-2147483648), 15494i)), Struct_1(vec2<u32>(82355u, 0u), 408f), 39247i, 422f), Struct_4(Struct_2(Struct_1(vec2<u32>(47269u, 0u), 235f), vec3<i32>(2147483647i, -1i, 0i)), Struct_1(vec2<u32>(32605u, 67032u), -1763f), -9908i, -1377f), Struct_4(Struct_2(Struct_1(vec2<u32>(4294967295u, 59232u), -1000f), vec3<i32>(-25684i, 2147483647i, -27716i)), Struct_1(vec2<u32>(1u, 0u), -1000f), 0i, 1000f), Struct_4(Struct_2(Struct_1(vec2<u32>(1u, 13945u), -178f), vec3<i32>(2147483647i, -1i, 67833i)), Struct_1(vec2<u32>(92649u, 4172u), -484f), 1i, -1079f), Struct_4(Struct_2(Struct_1(vec2<u32>(28851u, 99520u), -858f), vec3<i32>(-7294i, -61158i, -55995i)), Struct_1(vec2<u32>(4294967295u, 0u), -951f), 2147483647i, -397f), Struct_4(Struct_2(Struct_1(vec2<u32>(60041u, 4294967295u), 903f), vec3<i32>(2147483647i, 1i, 13514i)), Struct_1(vec2<u32>(29803u, 0u), 309f), i32(-2147483648), -838f), Struct_4(Struct_2(Struct_1(vec2<u32>(4294967295u, 4294967295u), -1000f), vec3<i32>(12149i, i32(-2147483648), -1i)), Struct_1(vec2<u32>(0u, 4178u), -1514f), 0i, 2227f), Struct_4(Struct_2(Struct_1(vec2<u32>(0u, 0u), -271f), vec3<i32>(17674i, 49173i, -25653i)), Struct_1(vec2<u32>(2045u, 4294967295u), 1022f), i32(-2147483648), -1275f));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: vec4<bool>) -> i32 {
    global1 = array<Struct_2, 19>();
    global0 = u_input.a;
    var var_0 = global1[_wgslsmith_index_u32(u_input.a.x, 19u)];
    var var_1 = vec2<bool>(arg_2.x | true, !all(select(arg_2.ww, select(vec2<bool>(true, arg_2.x), arg_2.xy, vec2<bool>(arg_2.x, false)), !arg_2.wx)));
    var var_2 = ~_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(firstTrailingBit(u_input.b), i32(-1i) * -15195i), -max(0i, 1i), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(u_input.d.zz, var_0.b.xy), vec2<i32>(33141i, arg_0))), u_input.c.xzz);
    return firstLeadingBit(-2147483647i);
}

fn func_3() -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, -1203f, 765f, 1121f))))))));
    return vec2<i32>(0i, 1i);
}

fn func_1(arg_0: Struct_1) -> f32 {
    let var_0 = _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(-func_2(-24725i, -993f, vec4<bool>(false, true, false, false)), 0i), -u_input.c.x), u_input.c.wx, (vec2<i32>(u_input.e.x, -1i) | func_3()) & -abs(~u_input.e));
    global2 = array<Struct_4, 16>();
    global0 = abs(_wgslsmith_sub_vec3_u32(u_input.a, _wgslsmith_add_vec3_u32(abs(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 0u, global0.x), u_input.a)), _wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(0u, u_input.a.x, global0.x)), u_input.a))));
    let var_1 = select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !vec3<bool>(985f <= arg_0.b, select(false, true, false), select(true, true, true)), ~_wgslsmith_div_u32(1u, 1u) <= global0.x), select(!select(vec3<bool>(false, true, false), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false), any(vec3<bool>(false, true, false))), !(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true)), vec3<bool>(true, ~69542u > (arg_0.a.x >> (global0.x % 32u)), all(select(vec2<bool>(true, true), vec2<bool>(false, true), false)))), select(vec3<bool>(true, _wgslsmith_f_op_f32(f32(-1f) * -1398f) < arg_0.b, any(vec2<bool>(false, false))), select(vec3<bool>(any(vec2<bool>(true, false)), true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), all(vec4<bool>(false, false, false, true)))), true));
    let var_2 = _wgslsmith_div_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(global0.x, 30320u), arg_0.a, u_input.a.zx), _wgslsmith_mod_vec2_u32(vec2<u32>(29593u ^ u_input.a.x, _wgslsmith_div_u32(86807u, 7973u)) << (~vec2<u32>(arg_0.a.x, 28386u) % vec2<u32>(32u)), max(~u_input.a.zy, u_input.a.xz)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.b))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_add_vec3_u32(vec3<u32>(~(~_wgslsmith_clamp_u32(0u, 67807u, 0u)), min(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 1u)), 43261u << (u_input.a.x % 32u)) << (1u % 32u), firstLeadingBit(_wgslsmith_div_u32(86464u, 25788u) & _wgslsmith_clamp_u32(global0.x, 4294967295u, 25935u))), ~vec3<u32>(~(~u_input.a.x), u_input.a.x, ~global0.x << ((1u << (1u % 32u)) % 32u)));
    global0 = vec3<u32>(u_input.a.x, _wgslsmith_mult_u32(abs(1u), 28648u), ~reverseBits(_wgslsmith_div_u32(global0.x, u_input.a.x))) ^ u_input.a;
    global2 = array<Struct_4, 16>();
    var var_0 = _wgslsmith_sub_vec2_i32(vec2<i32>(abs(0i) >> (firstTrailingBit(u_input.a.x) % 32u), 0i), u_input.d.yw);
    var_0 = reverseBits(max(vec2<i32>(_wgslsmith_clamp_i32(countOneBits(u_input.d.x), 1i, ~(-1i)), countOneBits(_wgslsmith_dot_vec3_i32(u_input.c.ywy, u_input.d.zyx))), min(-u_input.e, reverseBits(abs(vec2<i32>(u_input.c.x, -2147483647i))))));
    let var_1 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(func_1(Struct_1(~global0.zx, -371f))), -125f, _wgslsmith_f_op_f32(sign(249f))), !(((global0.x <= global0.x) || all(vec2<bool>(false, false))) || true), global1[_wgslsmith_index_u32(13273u, 19u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 2080f, -336f, 435f) - vec4<f32>(var_1.a.x, 667f, var_1.c.a.b, var_1.a.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(937f, -1000f, 1585f, 465f) * vec4<f32>(334f, -316f, -301f, var_1.c.a.b)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1841f, -928f, -108f, var_1.a.x) - vec4<f32>(-964f, var_1.c.a.b, var_1.c.a.b, -1451f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1059f, -317f, var_1.c.a.b, var_1.c.a.b))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.a.b, 415f, 1180f, var_1.a.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(367f, 1000f, var_0.x != u_input.b)))) * var_1.c.a.b), 1i, var_1.c.b.x, _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(20837u, var_1.c.a.a.x), 26080u), _wgslsmith_mod_u32(reverseBits(var_1.c.a.a.x), var_1.c.a.a.x)), vec2<u32>(33762u, 25671u)));
}

