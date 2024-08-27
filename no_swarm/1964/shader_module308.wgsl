struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: f32,
    d: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: vec3<bool>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(7453i, -17815i, vec2<u32>(56261u, 5194u), 1i, Struct_1(false, false, 25535u));

var<private> global1: i32 = -8740i;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    let var_0 = !vec2<bool>(global0.e.b, 1435f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-986f)) - -217f));
    var var_1 = Struct_4(Struct_1(true, !any(vec3<bool>(true, false, true)), abs(4294967295u << (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 58131u, global0.c.x, global0.c.x), vec4<u32>(4294967295u, 0u, 1u, 10473u)) % 32u))), Struct_2(select(max(u_input.a, u_input.a), -2147483647i, all(var_0)), abs(~(~global0.d)), global0.c >> (global0.c % vec2<u32>(32u)), reverseBits(_wgslsmith_mult_i32(u_input.a << (global0.c.x % 32u), ~(-2147483647i))), global0.e));
    let var_2 = Struct_3(!var_1.a.a || false, Struct_2(select(abs(_wgslsmith_mult_i32(16964i, 28171i)), u_input.a, false), -(~u_input.a << ((1u >> (global0.c.x % 32u)) % 32u)), vec2<u32>(4294967295u, 1u), _wgslsmith_sub_i32(18339i, reverseBits(var_1.b.d)), global0.e), _wgslsmith_f_op_f32(-1209f + _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-234f, -687f), _wgslsmith_f_op_f32(-255f - -440f))))), !select(select(vec2<bool>(var_0.x, var_0.x), select(var_0, vec2<bool>(true, false), var_0.x), true), select(var_0, select(vec2<bool>(true, var_1.b.e.a), var_0, false), global0.e.a || global0.e.b), var_0));
    let var_3 = var_0;
    var var_4 = Struct_5(global0.e, -74162i, Struct_1(0i != ~abs(global0.b), var_0.x, var_2.b.c.x), !(!vec3<bool>(var_1.a.a, global0.e.b, var_0.x)), -((vec4<i32>(var_2.b.a, -391i, var_2.b.b, var_1.b.d) ^ vec4<i32>(-44659i, u_input.a, var_2.b.b, var_1.b.d)) << (select(vec4<u32>(var_2.b.c.x, global0.e.c, 52785u, 4294967295u), vec4<u32>(global0.c.x, 12149u, 53758u, 32200u), vec4<bool>(var_2.a, var_1.b.e.a, var_1.b.e.a, false)) % vec4<u32>(32u))) | select(vec4<i32>(1i, var_1.b.a, abs(-25967i), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.a, var_1.b.d, u_input.a), vec4<i32>(-2147483647i, var_2.b.a, 39300i, 20992i))), countOneBits(-vec4<i32>(var_2.b.d, 1i, 16639i, var_1.b.a)), select(select(vec4<bool>(true, global0.e.b, var_2.a, true), vec4<bool>(true, false, false, false), global0.e.b), select(vec4<bool>(true, false, var_1.b.e.a, true), vec4<bool>(false, var_2.a, var_0.x, true), false), !vec4<bool>(var_2.a, true, true, var_3.x))));
    return ~_wgslsmith_dot_vec3_i32(var_4.e.xwx, countOneBits(min(max(vec3<i32>(global0.b, var_2.b.b, global0.a), var_4.e.wwx), select(vec3<i32>(-358i, var_1.b.d, 1i), vec3<i32>(global0.d, -4582i, var_1.b.b), true))));
}

fn func_4(arg_0: Struct_4) -> vec3<bool> {
    let var_0 = Struct_1(global0.e.a, true, ~arg_0.b.e.c);
    global1 = ~arg_0.b.a;
    let var_1 = global0.c;
    var var_2 = !vec3<bool>(arg_0.a.a, true, arg_0.a.a);
    global1 = abs(-_wgslsmith_add_i32(~_wgslsmith_sub_i32(-1i, 18239i), -global0.a));
    return !(!vec3<bool>(false, all(!vec3<bool>(arg_0.b.e.a, false, false)), false));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 771f, 1000f)), vec3<f32>(547f, 304f, -934f), false || global0.e.a)) + vec3<f32>(-2095f, -437f, 1f))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -527f)), -757f, _wgslsmith_f_op_f32(ceil(-504f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-381f, 1090f, 312f)) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-809f, -250f, -2611f))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-805f, -966f, 362f)))))))));
    global1 = u_input.a;
    var var_1 = Struct_3(all(select(!(!vec3<bool>(true, false, global0.e.a)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, global0.e.b, false), vec3<bool>(false, global0.e.a, global0.e.b), global0.e.a)), true)), Struct_2(countOneBits(u_input.a), i32(-1i) * -(u_input.a ^ 1i), global0.c, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 2147483647i, global0.d) >> (vec3<u32>(global0.e.c, 101901u, global0.e.c) % vec3<u32>(32u)), -vec3<i32>(u_input.a, u_input.a, global0.b)) | global0.a, global0.e), var_0.x, !vec2<bool>(select(true, !global0.e.b, all(vec2<bool>(global0.e.a, global0.e.a))), any(vec2<bool>(global0.e.b, global0.e.b))));
    let var_2 = Struct_5(var_1.b.e, ~u_input.a, global0.e, func_4(Struct_4(Struct_1(true, var_1.d.x, firstLeadingBit(global0.c.x)), Struct_2(func_3(), ~(-10838i), _wgslsmith_sub_vec2_u32(vec2<u32>(62627u, global0.e.c), vec2<u32>(global0.c.x, 4294967295u)), -25798i, global0.e))), vec4<i32>(~14081i, -10764i << (max(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.c.x, 4294967295u, var_1.b.c.x, 4294967295u), vec4<u32>(38996u, 1398u, global0.c.x, 1u)), reverseBits(var_1.b.c.x)) % 32u), 74673i << (~countOneBits(global0.c.x) % 32u), u_input.a ^ (global0.b ^ _wgslsmith_sub_i32(44719i, -38728i))));
    var var_3 = Struct_3(all(!vec3<bool>(true, false, var_2.d.x)), Struct_2(global0.a, -1i, ~(~global0.c), -40689i, var_1.b.e), -504f, vec2<bool>(var_2.d.x, true));
    return Struct_2(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(var_2.e << (~vec4<u32>(global0.c.x, var_1.b.c.x, 49475u, 1u) % vec4<u32>(32u)), vec4<i32>(var_3.b.a, _wgslsmith_mod_i32(2147483647i, var_1.b.a), firstTrailingBit(u_input.a), -22560i)), vec4<i32>(global0.d, var_1.b.d & (global0.b ^ -1i), firstLeadingBit(var_2.b), _wgslsmith_dot_vec3_i32(var_2.e.xxz, _wgslsmith_clamp_vec3_i32(var_2.e.wzy, var_2.e.xyy, vec3<i32>(var_1.b.b, u_input.a, var_2.e.x))))), i32(-1i) * -1i, vec2<u32>(firstLeadingBit(~var_1.b.e.c << (1u % 32u)), 47285u), -(min(u_input.a, var_2.b) & -45443i), var_1.b.e);
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: u32, arg_3: vec4<bool>) -> u32 {
    var var_0 = arg_2;
    global0 = func_2();
    global0 = func_2();
    let var_1 = Struct_3(!any(func_4(Struct_4(Struct_1(global0.e.b, false, 1u), Struct_2(-2147483647i, arg_1, vec2<u32>(global0.c.x, arg_2), arg_0, Struct_1(global0.e.a, false, 66974u)))).yx), func_2(), 685f, vec2<bool>(all(!vec4<bool>(false, false, global0.e.b, true)), ~(arg_0 << (global0.c.x % 32u)) > -_wgslsmith_mult_i32(4125i, u_input.a)));
    let var_2 = abs(_wgslsmith_mod_i32(var_1.b.b, global0.b));
    return _wgslsmith_mult_u32(_wgslsmith_sub_u32(~arg_2, 4294967295u), ~(~4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec4_u32(~((_wgslsmith_sub_vec4_u32(vec4<u32>(global0.e.c, global0.c.x, 67584u, global0.e.c), vec4<u32>(38614u, global0.e.c, global0.c.x, global0.c.x)) ^ vec4<u32>(1525u, 0u, 22150u, global0.e.c)) << (reverseBits(select(vec4<u32>(global0.c.x, 38945u, global0.e.c, 4294967295u), vec4<u32>(1u, global0.c.x, global0.e.c, 51987u), vec4<bool>(global0.e.b, global0.e.b, global0.e.b, false))) % vec4<u32>(32u))), vec4<u32>(select(global0.c.x, 4294967295u, ~global0.e.c >= global0.e.c), 220u, _wgslsmith_mult_u32(reverseBits(func_1(-26284i, -2147483647i, global0.c.x, vec4<bool>(global0.e.b, false, true, global0.e.b))), global0.e.c), global0.e.c));
    global1 = ~_wgslsmith_dot_vec4_i32(vec4<i32>(~select(-1i, 2147483647i, true), func_2().d, -5222i, global0.b), _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-41172i, 1i, global0.d, u_input.a) ^ vec4<i32>(-61640i, -2147483647i, -2147483647i, global0.b), vec4<i32>(u_input.a, 3865i, global0.a, -1i), select(vec4<i32>(global0.a, 2147483647i, u_input.a, -2147483647i), vec4<i32>(-2147483647i, global0.b, global0.d, u_input.a), vec4<bool>(false, true, true, global0.e.b))), vec4<i32>(6819i, min(-1i, 8135i), -global0.b, i32(-1i) * -42449i)));
    var var_1 = ~(~_wgslsmith_clamp_i32(abs(u_input.a), ~(-27548i), ~u_input.a)) ^ 36021i;
    global1 = _wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-25818i, 1i, 30481i, 2853i) & select(vec4<i32>(-72754i, u_input.a, global0.a, 43310i), vec4<i32>(-1i, -2147483647i, global0.a, u_input.a), global0.e.b), ~vec4<i32>(-1i, u_input.a, u_input.a, global0.d)), 0i), 1561i);
    let var_2 = min(u_input.a, -global0.a);
    global0 = Struct_2(-abs(u_input.a), 18481i ^ (_wgslsmith_dot_vec2_i32(max(vec2<i32>(-13585i, var_2), vec2<i32>(u_input.a, -1i)), vec2<i32>(var_2, var_2)) | _wgslsmith_dot_vec4_i32(-vec4<i32>(global0.b, global0.d, u_input.a, 42233i), select(vec4<i32>(u_input.a, global0.d, u_input.a, 40486i), vec4<i32>(global0.a, -2147483647i, global0.a, -2147483647i), true))), _wgslsmith_clamp_vec2_u32(global0.c, _wgslsmith_clamp_vec2_u32(countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0, 0u), vec2<u32>(global0.e.c, 0u))), ~global0.c, _wgslsmith_mod_vec2_u32(global0.c, vec2<u32>(11557u, 31835u)) & vec2<u32>(8328u, global0.e.c)), ~_wgslsmith_add_vec2_u32(abs(vec2<u32>(var_0, global0.e.c)), vec2<u32>(72725u, 64262u) | global0.c)), func_2().d | _wgslsmith_add_i32(-2365i, global0.a & u_input.a), func_2().e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-508f, -1201f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(565f)) * _wgslsmith_f_op_f32(trunc(971f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, 1773f), vec2<f32>(948f, 1209f))) * _wgslsmith_div_vec2_f32(vec2<f32>(291f, 781f), vec2<f32>(726f, 1163f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1291f, -197f) * vec2<f32>(469f, -1077f)))))), -1i);
}

