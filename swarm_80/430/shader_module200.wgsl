struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_2,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec3<i32>,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(24271u, Struct_1(-4334i)), vec2<u32>(58255u, 4294967295u), Struct_2(1u, Struct_1(68i)), -1269f, -1i);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec4<f32>, arg_3: i32) -> i32 {
    var var_0 = Struct_1(arg_0.b.a);
    let var_1 = arg_1 ^ ~_wgslsmith_dot_vec4_u32(vec4<u32>(~arg_0.a, _wgslsmith_dot_vec2_u32(u_input.b.xz, global0.b), countOneBits(arg_1), 4294967295u), reverseBits(vec4<u32>(arg_0.a, global0.c.a, 1u, global0.b.x)));
    let var_2 = Struct_3(Struct_2(_wgslsmith_mult_u32(0u, 4081u), global0.c.b), reverseBits(vec2<u32>(~99669u, ~22147u)), Struct_2(34762u, arg_0.b), global0.d, max(countOneBits(1i), _wgslsmith_add_i32(_wgslsmith_mod_i32(arg_0.b.a, 0i), -23705i)));
    var var_3 = var_2;
    var var_4 = var_2;
    return 66234i;
}

fn func_2() -> Struct_1 {
    global0 = Struct_3(Struct_2(_wgslsmith_sub_u32(countOneBits(4294967295u), 1u), global0.c.b), u_input.b.yz, Struct_2(abs(~(~u_input.a)), Struct_1(global0.a.b.a)), -107f, ~(~((global0.e | 0i) & -1i)));
    var var_0 = !(reverseBits(~global0.e) >= select(global0.c.b.a, 29854i, true || (global0.b.x > global0.c.a)));
    var var_1 = countOneBits(firstLeadingBit(vec3<i32>(global0.e, global0.e, global0.e)));
    var var_2 = vec2<f32>(global0.d, _wgslsmith_f_op_f32(floor(global0.d)));
    return Struct_1((func_3(global0.c, ~4294967295u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-368f, -341f, -1785f, global0.d)), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, global0.a.b.a, var_1.x), vec3<i32>(global0.c.b.a, -32479i, global0.c.b.a))) << (global0.c.a % 32u)) & _wgslsmith_sub_i32(var_1.x, -(var_1.x ^ 23456i)));
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: u32) -> vec3<f32> {
    let var_0 = Struct_3(global0.a, ~(~(~vec2<u32>(arg_2, arg_2))), Struct_2(select(1523u, 4294967295u, all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)))), func_2()), -584f, ~global0.e);
    global0 = Struct_3(Struct_2(4294967295u, Struct_1(-9771i)), abs(vec2<u32>(reverseBits(~arg_2), ~26731u)), global0.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.d * global0.d))), var_0.a.b.a);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.d, arg_1) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(2371f, var_0.d)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.d, -1616f) + vec2<f32>(var_0.d, -2830f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-110f, -877f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, 233f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1784f, global0.d)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1))))));
    global0 = Struct_3(var_0.c, min(vec2<u32>(global0.a.a, abs(38895u >> (1u % 32u))), u_input.b.xy), Struct_2(select(1u, ~1u, false == all(vec3<bool>(true, false, true))), func_2()), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1243f - _wgslsmith_f_op_f32(-562f + -1943f)), -567f)), 18992i);
    global0 = var_0;
    return vec3<f32>(_wgslsmith_f_op_f32(select(-1101f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1562f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d))), !select(true, all(vec4<bool>(true, false, false, true)), true))), _wgslsmith_div_f32(-1354f, arg_1), _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(abs(1000f)), false)));
}

fn func_4(arg_0: vec3<f32>) -> Struct_3 {
    var var_0 = vec3<i32>(max(_wgslsmith_mod_i32(-1i, global0.c.b.a), _wgslsmith_clamp_i32(global0.c.b.a, -13748i, -firstTrailingBit(global0.c.b.a))), _wgslsmith_dot_vec2_i32(-firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, global0.c.b.a), vec2<i32>(4822i, -10874i))), vec2<i32>(countOneBits(_wgslsmith_div_i32(global0.a.b.a, -42406i)), -(~39438i))), abs(_wgslsmith_clamp_i32(global0.e, 14894i, 4246i)) & ~global0.e);
    var var_1 = select(select(!vec2<bool>(any(vec3<bool>(false, false, false)), true), vec2<bool>(false, any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false)))), !any(vec2<bool>(false, true))), vec2<bool>(true, any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), all(select(vec4<bool>(any(vec2<bool>(false, false)), false, any(vec4<bool>(true, true, true, false)), all(vec4<bool>(false, false, false, true))), vec4<bool>(true, true, true, true), !(u_input.a == 9671u))));
    var var_2 = vec2<u32>(reverseBits(_wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.a, u_input.a), ~9927u)), select(4294967295u, 0u, false)) | abs(u_input.b.zz);
    var var_3 = _wgslsmith_mod_vec3_i32(max(vec3<i32>(~var_0.x, 1i, _wgslsmith_mult_i32(global0.a.b.a, -38548i)), _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, global0.a.b.a, -23253i), vec3<i32>(global0.a.b.a, 0i, var_0.x)) << (u_input.b % vec3<u32>(32u))), ~vec3<i32>(global0.c.b.a, i32(-1i) * -1i, global0.c.b.a)) ^ -_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 2147483647i, ~(-2147483647i)), vec3<i32>(-global0.a.b.a, ~2147483647i, -var_0.x));
    var_3 = vec3<i32>(-21672i, 1i, var_3.x << (_wgslsmith_mod_u32(var_2.x, u_input.b.x) % 32u));
    return Struct_3(global0.c, u_input.b.zx, Struct_2(33785u, Struct_1(_wgslsmith_dot_vec3_i32(~vec3<i32>(-1i, global0.a.b.a, 2147483647i), vec3<i32>(var_3.x, 20309i, global0.c.b.a)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(860f + arg_0.x)), 1928f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d - global0.d) - 2855f)), ~_wgslsmith_mult_i32(var_0.x ^ (45692i | var_0.x), -2147483647i));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: i32) -> Struct_1 {
    let var_0 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d, global0.d, global0.d))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.d, global0.d, -1150f) + vec3<f32>(966f, 946f, 1737f))))))).c;
    let var_1 = reverseBits(max(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(var_0.a, 0u), ~var_0.a), ~(~vec2<u32>(var_0.a, global0.b.x))), select(arg_1.c.a, arg_0.a, select(true, true, all(vec3<bool>(true, true, true))))));
    global0 = Struct_3(var_0, global0.b, Struct_2(~select(u_input.a >> (var_1 % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.a.a, arg_1.a.a, 4294967295u), u_input.b), all(vec4<bool>(false, false, false, false))), var_0.b), _wgslsmith_div_f32(global0.d, -1000f), 3259i);
    let var_2 = !vec4<bool>(any(vec3<bool>(global0.e >= arg_1.c.b.a, all(vec3<bool>(false, false, false)), true)), true, false, (2147483647i >> (var_1 % 32u)) == -_wgslsmith_mod_i32(arg_2, 5205i));
    global0 = Struct_3(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-181f, -1408f, 708f), vec3<f32>(global0.d, -444f, global0.d))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.d, arg_1.d, -2253f) - vec3<f32>(global0.d, -151f, -216f))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(448f, 776f, 1425f))))))).a, _wgslsmith_div_vec2_u32(reverseBits(_wgslsmith_mult_vec2_u32(global0.b, countOneBits(vec2<u32>(92581u, var_0.a)))), ~firstLeadingBit(~vec2<u32>(var_1, 93078u))), func_4(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(461f, global0.d, 1144f) * vec3<f32>(global0.d, 929f, -1480f))))))).c, _wgslsmith_f_op_f32(floor(global0.d)), firstLeadingBit(arg_2));
    return Struct_1(arg_0.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(_wgslsmith_mult_i32(~countOneBits(global0.c.b.a), _wgslsmith_dot_vec2_i32(-vec2<i32>(-74682i, 1i), vec2<i32>(_wgslsmith_sub_i32(global0.c.b.a, global0.a.b.a), global0.c.b.a))), -19052i, ~firstLeadingBit(-381i));
    var var_1 = func_5(global0.a, func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(u_input.a >> (0u % 32u), _wgslsmith_f_op_f32(round(global0.d)), _wgslsmith_clamp_u32(0u, global0.a.a, 550u))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.d, -1138f, -784f))))))), var_0.x & -55669i);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-632f, _wgslsmith_f_op_vec3_f32(func_1(~global0.a.a, -723f, _wgslsmith_dot_vec3_u32(u_input.b, u_input.b))).x)), -977f, _wgslsmith_f_op_f32(select(460f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d)), _wgslsmith_f_op_f32(-global0.d)), select(false, false, true) == (global0.d == _wgslsmith_f_op_f32(round(562f))))), func_4(vec3<f32>(_wgslsmith_f_op_f32(sign(global0.d)), -1000f, -510f)).d);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(global0.d, global0.d))))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-662f))))));
    let var_4 = vec3<u32>(33608u, reverseBits(4294967295u), u_input.a);
    var_1 = global0.a.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(903f, _wgslsmith_f_op_f32(var_2.x + var_2.x))))), var_2.yxz, ~abs(firstLeadingBit(vec3<i32>(global0.c.b.a, var_1.a, -60725i))), func_5(Struct_2(~(~1u), global0.a.b), Struct_3(Struct_2(~0u, global0.c.b), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, var_4.x), vec2<u32>(0u, var_4.x)), global0.a, -311f, var_1.a), 1i).a, vec4<f32>(_wgslsmith_f_op_f32(885f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(var_2.x)), _wgslsmith_f_op_f32(trunc(var_2.x))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(global0.d, _wgslsmith_f_op_f32(-global0.d))), 1430f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))), global0.d));
}

