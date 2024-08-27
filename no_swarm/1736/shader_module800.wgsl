struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: f32,
    d: u32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec4<i32>,
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: Struct_3, arg_3: vec3<i32>) -> vec4<i32> {
    var var_0 = Struct_2(_wgslsmith_mult_i32(2147483647i, 1i) & (arg_3.x << (33862u % 32u)), arg_2.b.d.b, ~vec3<u32>(select(arg_2.b.c.x, ~70509u, true), ~_wgslsmith_div_u32(0u, arg_2.b.c.x), ~arg_2.b.b.x), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * arg_2.b.d.c))), ~arg_2.b.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-1257f))))), 1u, arg_2.b.d.e));
    var_0 = Struct_2(select(23546i | _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(arg_3.yz, vec2<i32>(var_0.a, 2147483647i)), arg_1), 61884i, !any(vec4<bool>(true, arg_2.b.d.e.x, false, true)) & false), firstLeadingBit(vec3<u32>(~arg_2.b.b.x, 190u, var_0.b.x)), _wgslsmith_sub_vec3_u32(select(var_0.d.b, ~arg_2.b.d.b, select(!vec3<bool>(arg_2.b.d.e.x, false, var_0.d.e.x), arg_2.b.d.e.wyx, select(vec3<bool>(arg_2.b.d.e.x, true, var_0.d.e.x), var_0.d.e.zwz, false))), ~reverseBits(vec3<u32>(var_0.d.d, arg_2.b.d.b.x, arg_2.b.c.x) | vec3<u32>(var_0.b.x, arg_2.b.c.x, arg_2.b.d.d))), Struct_1(arg_2.b.d.a, vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(arg_2.b.d.b, var_0.c), 29374u), 94882u, var_0.c.x), -275f, arg_2.b.d.b.x, select(select(vec4<bool>(arg_2.b.d.e.x, false, false, true), vec4<bool>(false, var_0.d.e.x, arg_2.b.d.e.x, arg_2.b.d.e.x), select(var_0.d.e, var_0.d.e, arg_2.b.d.e.x)), !var_0.d.e, select(vec4<bool>(var_0.d.e.x, false, false, arg_2.b.d.e.x), vec4<bool>(true, arg_2.b.d.e.x, arg_2.b.d.e.x, arg_2.b.d.e.x), true))));
    var_0 = Struct_2(~(~_wgslsmith_dot_vec2_i32(~vec2<i32>(var_0.a, -20393i), arg_3.zz ^ arg_3.xz)), select(~((vec3<u32>(arg_2.b.d.b.x, arg_2.b.d.b.x, 1u) ^ vec3<u32>(var_0.c.x, 8421u, var_0.b.x)) << ((vec3<u32>(arg_2.b.d.b.x, 85225u, 0u) | arg_2.b.d.b) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(arg_2.b.d.d, arg_2.b.c.x, arg_2.b.d.b.x), reverseBits(vec3<u32>(31662u, var_0.c.x, 0u))), ~(vec3<u32>(arg_2.b.d.b.x, 4294967295u, 0u) & vec3<u32>(arg_2.b.d.d, 0u, arg_2.b.b.x)), min(~vec3<u32>(var_0.d.b.x, arg_2.b.c.x, arg_2.b.b.x), var_0.c)), vec3<bool>(all(!var_0.d.e), var_0.d.e.x, false)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(min(1u, 1003u), _wgslsmith_mod_u32(44077u, 45936u), arg_2.b.d.d), var_0.c, vec3<u32>(~arg_2.b.c.x, var_0.d.d, _wgslsmith_dot_vec2_u32(var_0.b.zz, vec2<u32>(7934u, 17470u)))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_0.d.a, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(396f, -562f))), var_0.d.e.ww))), abs(~var_0.d.b) & vec3<u32>(arg_2.b.d.b.x, _wgslsmith_mod_u32(var_0.c.x, 8843u), var_0.d.d << (61127u % 32u)), arg_0, 5175u, vec4<bool>(var_0.d.e.x, any(select(vec3<bool>(var_0.d.e.x, true, true), vec3<bool>(false, false, arg_2.b.d.e.x), vec3<bool>(var_0.d.e.x, true, false))), false, false)));
    var var_1 = select(!var_0.d.e, vec4<bool>(!var_0.d.e.x, select(67104u <= ~arg_2.b.c.x, var_0.d.e.x, false), arg_2.b.b.x == abs(~0u), true), all(var_0.d.e.xxw) | arg_2.b.d.e.x);
    var_1 = vec4<bool>(true, arg_2.b.d.e.x, true, var_0.d.e.x);
    return vec4<i32>(firstTrailingBit(-31789i), ~select(-21643i, -u_input.a, select(var_1.x, true, true)), -2147483647i, 15936i) ^ vec4<i32>(21768i, firstLeadingBit(-1i), -9625i, -2147483647i << (~_wgslsmith_add_u32(1u, arg_2.b.b.x) % 32u));
}

fn func_2(arg_0: bool, arg_1: vec3<bool>) -> u32 {
    var var_0 = -1i;
    var var_1 = ~(vec4<i32>(-1i) * -func_3(_wgslsmith_f_op_f32(-696f * -512f), -21745i, Struct_3(vec4<f32>(-425f, 106f, -940f, 1059f), Struct_2(u_input.a, vec3<u32>(29192u, 20175u, 1u), vec3<u32>(43971u, 57495u, 4294967295u), Struct_1(vec2<f32>(746f, -427f), vec3<u32>(29052u, 1u, 72487u), -2267f, 4294967295u, vec4<bool>(true, arg_0, arg_0, false)))), vec3<i32>(u_input.a, u_input.a, u_input.a) | vec3<i32>(-2147483647i, -12578i, -31950i)));
    var var_2 = Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -310f)))))), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(49580u, 26957u, 0u), vec3<u32>(1u, 1u, 1u)), 30936u, ~_wgslsmith_div_u32(102744u, 25143u)), -417f, ~0u, select(select(vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(true, true, arg_1.x, arg_1.x), !vec4<bool>(true, true, arg_0, false)), select(vec4<bool>(arg_0, arg_0, arg_1.x, arg_1.x), select(vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x), vec4<bool>(true, false, true, arg_0), arg_1.x), all(vec4<bool>(arg_0, arg_0, false, arg_1.x))), select(all(arg_1.xx), false, arg_0))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), ~vec3<u32>(0u, 61628u, 1u), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(913f, -2176f)) - _wgslsmith_div_f32(-1000f, -243f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 1908f)))), ~(~(~19071u)), !select(!vec4<bool>(arg_0, false, arg_0, false), !vec4<bool>(false, true, arg_1.x, arg_1.x), !vec4<bool>(arg_0, arg_0, true, arg_0))));
    let var_3 = ~_wgslsmith_sub_u32(var_2.a.b.x, firstLeadingBit(var_2.a.d)) | var_2.b.d;
    var var_4 = Struct_4(var_2.a, Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b.c, var_2.b.c) * var_2.a.a), vec2<f32>(-305f, -1166f)), ~vec3<u32>(~0u, _wgslsmith_div_u32(var_3, var_3), ~var_3), 662f, var_2.a.b.x, var_2.b.e));
    return 11979u;
}

fn func_1(arg_0: Struct_5, arg_1: vec3<u32>) -> Struct_2 {
    let var_0 = 1479f;
    let var_1 = arg_1.zy;
    var var_2 = _wgslsmith_add_u32(abs(arg_1.x), 7474u << (max(func_2(true, !vec3<bool>(true, false, arg_0.a.x)), ~10745u) % 32u));
    let var_3 = Struct_4(Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0)), _wgslsmith_f_op_f32(var_0 - -884f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-866f, -1498f)))), arg_1, 1145f, 4294967295u, vec4<bool>(arg_0.a.x | all(vec3<bool>(arg_0.a.x, arg_0.a.x, true)), all(vec2<bool>(arg_0.a.x, false)) || true, !all(vec4<bool>(arg_0.a.x, arg_0.a.x, true, arg_0.a.x)), true & all(vec3<bool>(false, false, arg_0.a.x)))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(var_0, 2196f), vec2<f32>(var_0, 1223f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-386f, -2156f), vec2<f32>(var_0, var_0))))), max(_wgslsmith_div_vec3_u32(vec3<u32>(2706u, var_1.x, var_1.x), countOneBits(arg_1)), select(~vec3<u32>(0u, arg_1.x, arg_1.x), arg_1 ^ arg_1, vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x))), -1516f, 1u, !select(!vec4<bool>(true, arg_0.a.x, false, arg_0.a.x), select(vec4<bool>(true, arg_0.a.x, arg_0.a.x, false), vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, true), vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, false)), !arg_0.a.x)));
    let var_4 = _wgslsmith_f_op_f32(min(var_3.b.c, _wgslsmith_f_op_f32(trunc(var_3.a.a.x))));
    return Struct_2(2147483647i, arg_1, _wgslsmith_mult_vec3_u32(vec3<u32>(3047u, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_3.b.d, 0u, 4294967295u), var_3.b.b)) >> (~vec3<u32>(4294967295u, arg_1.x, var_1.x) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_div_u32(arg_1.x, ~37394u), _wgslsmith_mod_u32(func_2(arg_0.a.x, vec3<bool>(var_3.a.e.x, arg_0.a.x, true)), 1u), _wgslsmith_add_u32(37382u, ~48126u))), var_3.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_5(vec2<bool>(_wgslsmith_add_i32(-45603i, u_input.a) >= -1i, true)), vec3<u32>(_wgslsmith_div_u32(~_wgslsmith_clamp_u32(0u, 0u, 1u), 0u), 0u, 1u));
    var var_1 = Struct_2(~1i, vec3<u32>(abs(min(11939u, 6423u)), _wgslsmith_mult_u32(_wgslsmith_div_u32(1u, 94597u), var_0.b.x), 1u), abs(~(vec3<u32>(13417u, 43260u, 95886u) & vec3<u32>(var_0.b.x, 706u, 1u))), var_0.d);
    var_1 = func_1(Struct_5(func_1(Struct_5(var_1.d.e.yx), vec3<u32>(firstLeadingBit(var_0.c.x), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c.x, 1u, 0u, var_1.d.b.x), vec4<u32>(var_1.b.x, 1u, 4294967295u, 0u)))).d.e.yw), _wgslsmith_add_vec3_u32(vec3<u32>(var_1.c.x, var_1.b.x, _wgslsmith_dot_vec3_u32(var_1.b, var_0.c)), _wgslsmith_add_vec3_u32(vec3<u32>(1u, var_1.b.x, var_0.b.x) >> (vec3<u32>(var_0.d.b.x, 4294967295u, 1u) % vec3<u32>(32u)), vec3<u32>(var_1.d.d, 4294967295u, 28502u) << (var_0.d.b % vec3<u32>(32u))) ^ _wgslsmith_mod_vec3_u32(~var_1.b, ~vec3<u32>(var_0.b.x, 44127u, 36322u))));
    var var_2 = var_1.d;
    let var_3 = Struct_4(func_1(Struct_5(func_1(Struct_5(var_2.e.zy), var_1.d.b).d.e.yy), select(vec3<u32>(~var_2.d, var_1.c.x, ~var_2.d), vec3<u32>(~4294967295u, 4294967295u, 1u), all(select(vec4<bool>(var_2.e.x, var_0.d.e.x, var_0.d.e.x, var_0.d.e.x), var_1.d.e, var_2.e)))).d, var_1.d);
    let var_4 = 1u;
    let var_5 = false;
    var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_1.d.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-695f, var_1.d.c) + vec2<f32>(var_1.d.a.x, var_3.a.c)) + _wgslsmith_f_op_vec2_f32(floor(var_2.a))), !var_5)) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_0.d.a)))), var_3.a.b, var_0.d.a.x, max(var_1.b.x << (firstLeadingBit(var_0.d.d) % 32u), 0u), vec4<bool>(select(all(!var_3.b.e.ww), !(var_1.d.e.x | true), var_2.e.x), false, any(select(!vec2<bool>(false, var_2.e.x), var_2.e.xw, vec2<bool>(var_2.e.x, var_3.b.e.x))), true || !(true || var_5)));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mod_vec3_i32(abs(vec3<i32>(0i, var_1.a, -1i)), ~vec3<i32>(-2147483647i, var_1.a, var_0.a)) ^ (vec3<i32>(var_0.a, ~15285i, -1i) | vec3<i32>(~var_1.a, var_1.a, _wgslsmith_div_i32(2147483647i, -1i))), _wgslsmith_f_op_f32(min(145f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1712f * 1017f))))), abs(~(~vec4<i32>(-3758i, var_0.a, 1i, -2147483647i)) >> (_wgslsmith_div_vec4_u32(~vec4<u32>(41669u, var_1.c.x, var_4, 19941u), abs(vec4<u32>(var_1.d.b.x, var_4, var_0.c.x, 1u))) % vec4<u32>(32u))));
}

