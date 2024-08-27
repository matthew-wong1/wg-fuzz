struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec3<u32>,
}

struct Struct_4 {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
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

var<private> global0: array<vec3<f32>, 3>;

var<private> global1: Struct_3 = Struct_3(Struct_1(vec3<bool>(false, false, false)), 55749u, vec3<u32>(10985u, 42394u, 0u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> vec2<bool> {
    global0 = array<vec3<f32>, 3>();
    let var_0 = vec2<u32>(~(~25580u), _wgslsmith_div_u32(0u, u_input.d));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(340f - -1511f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-368f)), _wgslsmith_div_f32(1581f, -179f)))))));
    var var_2 = Struct_3(global1.a, abs(u_input.d), vec3<u32>(select(_wgslsmith_sub_u32(12582u, _wgslsmith_sub_u32(110300u, var_0.x)), var_0.x, !global1.a.a.x), u_input.d, var_0.x));
    var var_3 = ~(~(~vec4<u32>(4294967295u, u_input.d, var_2.c.x, global1.b) ^ _wgslsmith_clamp_vec4_u32(~vec4<u32>(var_0.x, 28396u, 1977u, 4294967295u), max(vec4<u32>(23228u, global1.c.x, u_input.d, 0u), vec4<u32>(global1.b, var_0.x, var_2.b, 4888u)), vec4<u32>(global1.b, global1.b, 1u, 42862u))));
    return vec2<bool>(global1.a.a.x, global1.a.a.x);
}

fn func_4(arg_0: i32, arg_1: vec2<bool>) -> u32 {
    let var_0 = select(select(!(!select(vec3<bool>(true, arg_1.x, false), global1.a.a, global1.a.a)), select(select(!global1.a.a, !vec3<bool>(false, global1.a.a.x, true), global1.a.a), !select(global1.a.a, global1.a.a, global1.a.a), global1.a.a), !select(select(vec3<bool>(true, arg_1.x, true), vec3<bool>(true, false, false), vec3<bool>(arg_1.x, true, global1.a.a.x)), select(vec3<bool>(global1.a.a.x, true, arg_1.x), global1.a.a, vec3<bool>(arg_1.x, global1.a.a.x, false)), select(global1.a.a, global1.a.a, true))), select(global1.a.a, vec3<bool>(arg_1.x, global1.a.a.x, true), !(_wgslsmith_f_op_f32(trunc(-1377f)) <= 1602f)), global1.a.a.x);
    global0 = array<vec3<f32>, 3>();
    var var_1 = vec4<f32>(-614f, _wgslsmith_f_op_f32(f32(-1f) * -277f), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -435f))), -1458f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-328f, _wgslsmith_f_op_f32(max(858f, -467f)))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(1322f))))) - -1000f));
    var var_2 = Struct_2(arg_0 >= -24896i, global1.a, ~1u < _wgslsmith_clamp_u32(_wgslsmith_mult_u32(select(global1.c.x, 3145u, arg_1.x), ~u_input.d), ~3215u, 60280u), global1.a, vec2<u32>(_wgslsmith_dot_vec3_u32(select(~global1.c, global1.c, arg_1.x), _wgslsmith_add_vec3_u32(countOneBits(global1.c), select(vec3<u32>(global1.b, global1.c.x, global1.b), global1.c, var_0))), firstTrailingBit(~min(1u, 1u))));
    var var_3 = Struct_2(true | (global1.b <= 62444u), var_2.b, true, Struct_1(!select(global1.a.a, select(global1.a.a, var_0, var_2.b.a.x), vec3<bool>(true, var_2.c, var_0.x))), vec2<u32>(min(4294967295u, 1u), _wgslsmith_mult_u32(~u_input.d, ~0u)) << (global1.c.zy % vec2<u32>(32u)));
    return u_input.d;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: bool) -> Struct_1 {
    let var_0 = 742u & func_4(u_input.c | 37042i, select(select(vec2<bool>(true, true), vec2<bool>(global1.a.a.x, false), true), arg_1, select(func_3(), select(arg_0.a.xy, vec2<bool>(arg_1.x, arg_2), vec2<bool>(arg_1.x, arg_1.x)), select(global1.a.a.zx, arg_0.a.yx, arg_0.a.yz))));
    let var_1 = -(vec3<i32>(-1i) * -vec3<i32>(~u_input.c, u_input.a, ~0i));
    var var_2 = Struct_4(_wgslsmith_div_u32(4294967295u, _wgslsmith_add_u32(0u, global1.c.x)), ~firstTrailingBit(firstLeadingBit(select(global1.c.xx, vec2<u32>(4294967295u, u_input.d), arg_1))), -abs(vec2<i32>(u_input.b, 2147483647i)) ^ (vec2<i32>(var_1.x | 5633i, var_1.x & -25282i) >> (global1.c.xx % vec2<u32>(32u))), reverseBits(countOneBits(~34836i)));
    var var_3 = arg_0;
    var var_4 = global1.c.x ^ _wgslsmith_sub_u32(_wgslsmith_add_u32(var_0, ~var_0), firstLeadingBit(u_input.d));
    return Struct_1(select(vec3<bool>(true, arg_1.x, true), vec3<bool>(!any(var_3.a.zy), _wgslsmith_add_u32(var_0, var_0) < max(0u, var_0), true), !vec3<bool>(arg_1.x, global1.a.a.x, arg_0.a.x | arg_1.x)));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_4, arg_3: vec2<u32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1614f, 1773f, -1573f, 1169f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1663f, 413f, 740f, 380f) * vec4<f32>(297f, -435f, 282f, -1457f)))))));
    var var_1 = _wgslsmith_clamp_i32(min(_wgslsmith_add_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 1i), vec2<i32>(-28807i, 0i)), -2147483647i), (max(2147483647i, u_input.a) >> (firstTrailingBit(44448u) % 32u)) << (countOneBits(_wgslsmith_mod_u32(1u, u_input.d)) % 32u)), u_input.c, -27526i);
    return Struct_3(global1.a, countOneBits(min(4294967295u, arg_2.a)), reverseBits(_wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(0u, 4294967295u, 0u)), global1.c, ~(vec3<u32>(global1.b, 1u, 18262u) & vec3<u32>(arg_2.b.x, global1.b, u_input.d)))));
}

fn func_1() -> Struct_3 {
    let var_0 = global1.c;
    global1 = func_5(Struct_2(global1.a.a.x, Struct_1(vec3<bool>(true, !global1.a.a.x, !global1.a.a.x)), var_0.x >= (min(36834u, global1.c.x) | global1.b), func_2(global1.a, select(vec2<bool>(false, true), !vec2<bool>(global1.a.a.x, false), global1.a.a.x), global1.a.a.x), max(global1.c.zx ^ select(var_0.xx, vec2<u32>(u_input.d, var_0.x), global1.a.a.x), reverseBits(vec2<u32>(u_input.d, var_0.x)))), vec3<i32>(abs(u_input.c), -1i, abs(11244i) | u_input.b) ^ vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-30942i, u_input.b, -2147483647i) | vec3<i32>(23055i, u_input.a, -5175i), min(vec3<i32>(-10142i, u_input.a, u_input.c), vec3<i32>(-69998i, u_input.c, u_input.a))), -1i, min(u_input.b, u_input.a)), Struct_4(u_input.d, min(_wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(u_input.d, 70608u)), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 70253u), vec2<u32>(u_input.d, 52740u))), global1.c.yz), vec2<i32>(u_input.b & -2147483647i, u_input.a) ^ vec2<i32>(-2147483647i, -u_input.b), u_input.c), ~vec2<u32>((global1.c.x ^ 45278u) >> (var_0.x % 32u), global1.c.x));
    return func_5(Struct_2(!(~u_input.c > firstLeadingBit(1i)), Struct_1(!func_5(Struct_2(global1.a.a.x, global1.a, false, Struct_1(vec3<bool>(false, global1.a.a.x, false)), global1.c.xx), vec3<i32>(u_input.c, 2147483647i, u_input.b), Struct_4(u_input.d, global1.c.yz, vec2<i32>(-1i, -57707i), 2147483647i), var_0.yx).a.a), global1.a.a.x, global1.a, select(var_0.xz, ~vec2<u32>(u_input.d, var_0.x), global1.a.a.x)), abs(vec3<i32>(_wgslsmith_div_i32(u_input.b << (u_input.d % 32u), ~2147483647i), _wgslsmith_div_i32(u_input.b, u_input.c << (global1.c.x % 32u)), _wgslsmith_div_i32(abs(-642i), u_input.b))), Struct_4(_wgslsmith_sub_u32(abs(~var_0.x), ~func_4(14474i, global1.a.a.yz)), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 57079u), global1.c.zx), abs(u_input.d)) << (var_0.yx % vec2<u32>(32u)), -select(vec2<i32>(u_input.c, 0i) ^ vec2<i32>(-41885i, -6221i), select(vec2<i32>(u_input.a, u_input.b), vec2<i32>(12160i, u_input.b), vec2<bool>(false, global1.a.a.x)), true), u_input.b), vec2<u32>(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(global1.c.x, var_0.x, 0u, global1.b)), ~(vec4<u32>(u_input.d, global1.c.x, global1.b, u_input.d) & vec4<u32>(94009u, var_0.x, var_0.x, var_0.x))), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, 1u, 4294967295u, 37698u), _wgslsmith_sub_vec4_u32(vec4<u32>(global1.c.x, var_0.x, global1.c.x, global1.b), vec4<u32>(var_0.x, u_input.d, 4294967295u, global1.c.x))), _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(20711u, 1u, 4294967295u, u_input.d), vec4<u32>(global1.c.x, global1.b, u_input.d, 4294967295u)), vec4<u32>(10389u, var_0.x, 42165u, global1.b) << (vec4<u32>(var_0.x, 0u, 1u, 56915u) % vec4<u32>(32u))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec4<u32>(~_wgslsmith_sub_u32(u_input.d, global1.c.x), ~23712u, global1.b, 1u);
    global1 = func_1();
    var var_1 = -(~2147483647i);
    global1 = func_5(Struct_2(!global1.a.a.x, Struct_1(global1.a.a), true, Struct_1(vec3<bool>(global1.a.a.x, !global1.a.a.x, global1.a.a.x)), global1.c.yy), vec3<i32>(-u_input.c, -1i, u_input.a), Struct_4(_wgslsmith_dot_vec2_u32(vec2<u32>(45960u >> (global1.b % 32u), ~0u), var_0.zy), ~vec2<u32>(1u, 63901u), ~(-vec2<i32>(376i, u_input.c)) ^ vec2<i32>(reverseBits(u_input.b), u_input.c), i32(-1i) * -24526i), ~vec2<u32>(firstTrailingBit(~0u), min(u_input.d | var_0.x, u_input.d)));
    var_1 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-115f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -768f) * 1156f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(235f))))))));
}

