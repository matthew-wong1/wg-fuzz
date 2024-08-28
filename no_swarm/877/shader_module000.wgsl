struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec4<f32>,
    d: u32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> u32 {
    var var_0 = Struct_3(Struct_1(-1i, select(abs(vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(4294967295u, 0u) % vec2<u32>(32u))), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(58944u, u_input.a)), all(vec2<bool>(false, false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-269f, 919f, 1052f, 596f)))) - vec4<f32>(-279f, _wgslsmith_f_op_f32(-325f - 1805f), _wgslsmith_f_op_f32(f32(-1f) * -681f), _wgslsmith_f_op_f32(1000f + 797f))), reverseBits(1u), _wgslsmith_mod_vec4_u32(firstLeadingBit(countOneBits(vec4<u32>(4294967295u, 4581u, 1u, 0u))), vec4<u32>(30091u, 4294967295u, u_input.a, u_input.a))), select(vec4<bool>(true, !all(vec2<bool>(true, false)), any(vec3<bool>(false, true, true)) | false, true), vec4<bool>(true, all(vec4<bool>(true, true, true, true)), !select(true, true, false), true), !(true && any(vec3<bool>(true, true, true)))), ~u_input.a);
    var var_1 = var_0.a.c.x;
    let var_2 = Struct_2(true, 1i, var_0.a);
    var var_3 = var_0.a;
    var var_4 = vec3<u32>(~var_3.b.x, select(~var_0.c, _wgslsmith_mult_u32(~_wgslsmith_sub_u32(38109u, var_0.a.e.x), min(~var_0.a.d, var_2.c.e.x)), !(all(var_0.b.xzy) || true)), _wgslsmith_add_u32(abs(u_input.a), _wgslsmith_mod_u32(_wgslsmith_div_u32(~1u, 4294967295u & var_2.c.b.x), _wgslsmith_mult_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, var_3.d, var_2.c.e.x, 5940u), var_3.e)))));
    return firstTrailingBit(var_3.e.x);
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: vec2<i32>) -> vec4<f32> {
    var var_0 = Struct_1(min(_wgslsmith_div_i32(15085i, ~(~(-46400i))), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.b, _wgslsmith_add_vec3_i32(vec3<i32>(1i, arg_2.x, arg_2.x), u_input.b)), ~vec3<i32>(2147483647i, 0i, arg_2.x))), max(_wgslsmith_clamp_vec2_u32(select(vec2<u32>(33354u, u_input.a), abs(vec2<u32>(arg_0, 1u)), true), max(~vec2<u32>(arg_0, arg_0), vec2<u32>(1u, 4294967295u)), _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(23334u, 80252u), vec2<u32>(0u, arg_0)), ~vec2<u32>(arg_0, arg_1))), ~vec2<u32>(u_input.a, ~3836u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1731f, -168f, 295f, -804f), vec4<f32>(-132f, -1000f, -647f, -394f)))) - _wgslsmith_div_vec4_f32(vec4<f32>(-103f, 744f, -375f, 1343f), vec4<f32>(718f, 801f, 338f, 289f)))), 77863u << (arg_1 % 32u), select(~abs(vec4<u32>(arg_0, 351u, u_input.a, 57625u)), _wgslsmith_mult_vec4_u32(vec4<u32>(55783u, u_input.a, arg_1, 20748u), vec4<u32>(arg_1, 18850u, 31773u, 0u)) & vec4<u32>(u_input.a, 53158u, 0u, 0u), false) & ~(~vec4<u32>(52613u, arg_1, u_input.a, arg_1)));
    let var_1 = firstLeadingBit(firstLeadingBit(-abs(var_0.a)));
    var_0 = Struct_1(select(u_input.b.x, i32(-1i) * -(var_0.a | u_input.b.x), (all(vec4<bool>(false, true, true, false)) | true) && true), var_0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(var_0.c, var_0.c))))), 0u ^ ~(~(~u_input.a)), ~abs(~_wgslsmith_mod_vec4_u32(vec4<u32>(51963u, 1u, var_0.d, 4294967295u), vec4<u32>(u_input.a, 4294967295u, u_input.a, 0u))));
    let var_2 = all(select(select(vec3<bool>(true, -18265i > arg_2.x, false), vec3<bool>(false, u_input.c > var_1, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), select(vec3<bool>(select(false, false, false), any(vec3<bool>(true, false, true)), true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false)))), true));
    var_0 = Struct_1(var_0.a, ~var_0.e.wz, vec4<f32>(1551f, var_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-569f + _wgslsmith_f_op_f32(-var_0.c.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(-126f - -947f))), 1u, var_0.e);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(508f, var_0.c.x, var_0.c.x, var_0.c.x), var_0.c) - var_0.c))), var_0.c)));
}

fn func_2(arg_0: vec4<bool>, arg_1: i32) -> Struct_3 {
    var var_0 = Struct_1(firstLeadingBit(-63580i), ~(~abs(vec2<u32>(u_input.a, u_input.a)) | ~(~vec2<u32>(u_input.a, 40619u))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(func_4(~1u, func_3(), vec2<i32>(max(2147483647i, arg_1), reverseBits(6948i)))))), 32052u, ~_wgslsmith_clamp_vec4_u32(firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.a, 35687u, u_input.a), vec4<u32>(69783u, u_input.a, u_input.a, 48523u))), countOneBits(vec4<u32>(6961u, u_input.a, 14549u, u_input.a) >> (vec4<u32>(u_input.a, 1u, u_input.a, u_input.a) % vec4<u32>(32u))), vec4<u32>(63438u, u_input.a, 13305u, u_input.a) ^ ~vec4<u32>(29340u, 0u, 0u, 1u)));
    var var_1 = Struct_1(i32(-1i) * -14713i, _wgslsmith_sub_vec2_u32(~(~var_0.b), _wgslsmith_add_vec2_u32(select(var_0.e.xx, max(vec2<u32>(38067u, var_0.d), vec2<u32>(var_0.e.x, 1u)), true), vec2<u32>(abs(var_0.b.x), var_0.e.x))), var_0.c, abs(abs(_wgslsmith_mod_u32(u_input.a, max(37981u, 1u)))), firstLeadingBit(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(min(var_0.e, vec4<u32>(48015u, var_0.e.x, var_0.d, var_0.d)), vec4<u32>(16055u, u_input.a, var_0.e.x, var_0.d)), abs(var_0.e))));
    var_1 = Struct_1((max(_wgslsmith_sub_i32(var_1.a, 54464i), 14861i) | (~60687i & ~var_1.a)) & -reverseBits(abs(2147483647i)), var_0.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(3210u, var_0.d, u_input.b.xx)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.c + vec4<f32>(-2170f, -385f, 1055f, var_0.c.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(u_input.a, u_input.a, u_input.b.yy))))), 60778u, var_0.e);
    var var_2 = Struct_3(Struct_1(1i, var_1.b, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1965f, -1000f, -2400f, var_1.c.x) * vec4<f32>(173f, -2465f, 1001f, 951f)))))), u_input.a, var_0.e), select(vec4<bool>(select(arg_0.x, arg_0.x || arg_0.x, false), arg_0.x, !any(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x)), arg_0.x), arg_0, select(select(vec4<bool>(true, true, true, true), select(arg_0, arg_0, arg_0), select(arg_0, vec4<bool>(false, arg_0.x, true, arg_0.x), arg_0.x)), !select(arg_0, arg_0, arg_0), all(!arg_0.yzw))), abs((var_0.b.x >> (_wgslsmith_mod_u32(97421u, 4294967295u) % 32u)) ^ max(~23154u, 0u)));
    let var_3 = ~var_1.a;
    return Struct_3(Struct_1(-_wgslsmith_mod_i32(-22802i, max(var_2.a.a, 11273i)), _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(var_0.e.xy, var_0.b), vec2<u32>(18736u, 28102u)) & (~var_1.b >> (var_1.b % vec2<u32>(32u))), vec4<f32>(var_0.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.c.x - var_0.c.x), _wgslsmith_f_op_f32(var_2.a.c.x - 508f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1629f * var_2.a.c.x)), var_2.a.c.x), 1u, var_2.a.e), vec4<bool>(false, _wgslsmith_add_i32(30256i, 45289i) < arg_1, select(true, false, var_2.b.x | false), false), func_3());
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = func_2(!(!vec4<bool>(all(vec2<bool>(false, true)), true, true, true)), countOneBits(firstLeadingBit(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-11802i, 2147483647i, 0i), u_input.b), -2147483647i))));
    var var_1 = var_0.a;
    let var_2 = var_0.b.x;
    let var_3 = var_0.a;
    var_1 = var_0.a;
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    let var_1 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(1000f, -452f))))));
    var_0 = ~select(~(~(~4294967295u)), 1u, true);
    var var_2 = firstTrailingBit(2147483647i);
    var var_3 = Struct_2(((var_1.c.x >= -736f) == !(var_1.b.x != u_input.a)) | (true & func_2(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true)), var_1.a).b.x), 0i, func_1(_wgslsmith_f_op_f32(trunc(-295f))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.x);
}

