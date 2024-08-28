struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: Struct_2, arg_3: u32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-1043f, _wgslsmith_f_op_f32(max(810f, 568f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(548f, 757f)))))));
    let var_1 = arg_2.a;
    let var_2 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(var_0, 1190f)))), _wgslsmith_div_f32(var_0, -936f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(-1608f)), _wgslsmith_f_op_f32(exp2(var_0))), vec2<f32>(var_0, _wgslsmith_f_op_f32(round(-1513f))))), arg_0 | !(_wgslsmith_sub_u32(arg_3, arg_1.a.a.x) == 77993u)));
    var var_3 = u_input.b;
    let var_4 = max(vec3<u32>(40840u, _wgslsmith_div_u32(4294967295u, (4294967295u | arg_1.a.c.x) | var_1.c.x), abs(33309u)), ~(arg_2.a.a.zzx & vec3<u32>(arg_2.a.a.x, arg_3, 4294967295u)));
    return 50715u;
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: i32) -> vec4<bool> {
    var var_0 = Struct_2(arg_0, select(select(select(select(vec2<bool>(false, false), vec2<bool>(false, true), true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true)), !select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(all(vec4<bool>(false, true, false, true)), true)), select(!select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(true, true), all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)))), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true)))));
    let var_1 = !(!select(vec4<bool>(true, true, var_0.b.x, 33732i > arg_2), vec4<bool>(var_0.b.x, var_0.b.x, true, var_0.b.x), true));
    var_0 = Struct_2(Struct_1(~(~vec4<u32>(4294967295u, 49149u, 38239u, arg_0.a.x)) ^ reverseBits(arg_0.c >> (vec4<u32>(arg_0.c.x, u_input.c.x, 7315u, var_0.a.c.x) % vec4<u32>(32u))), -vec3<i32>(-1i, arg_1 & arg_1, ~var_0.a.b.x), vec4<u32>(~(38367u | arg_0.a.x), _wgslsmith_sub_u32(0u & arg_0.a.x, _wgslsmith_div_u32(arg_0.a.x, 27753u)), 1u, ~abs(1u))), var_1.zz);
    var var_2 = abs(vec3<i32>(~_wgslsmith_sub_i32(-2147483647i, var_0.a.b.x), ~select(_wgslsmith_dot_vec2_i32(arg_0.b.zx, vec2<i32>(arg_2, 0i)), ~3826i, !var_0.b.x), 1i << (countOneBits(~46883u) % 32u)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(-398f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-727f, -1000f, false)), -724f, !var_1.x)))));
    return var_1;
}

fn func_2() -> Struct_1 {
    let var_0 = ~u_input.e.x;
    var var_1 = select(select(!select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true), select(!func_3(Struct_1(vec4<u32>(10514u, u_input.c.x, 1u, u_input.c.x), vec3<i32>(1i, 26243i, -2147483647i), vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, 16399u)), 2147483647i, var_0), vec4<bool>(false, true, true, all(vec2<bool>(true, true))), true)), !vec4<bool>(true, !any(vec3<bool>(true, true, true)), true, false), any(select(select(func_3(Struct_1(vec4<u32>(6312u, u_input.c.x, u_input.c.x, 59570u), u_input.e, vec4<u32>(4294967295u, u_input.c.x, 55534u, u_input.c.x)), u_input.a, 0i).yxw, vec3<bool>(true, true, true), true), !func_3(Struct_1(vec4<u32>(1u, 0u, 65861u, u_input.c.x), u_input.e, vec4<u32>(4294967295u, u_input.c.x, 1u, u_input.c.x)), 36021i, u_input.b).wxz, select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), func_3(Struct_1(vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, u_input.c.x), u_input.e, u_input.c), u_input.e.x, u_input.b).zyx, func_3(Struct_1(vec4<u32>(60900u, u_input.c.x, u_input.c.x, 1u), vec3<i32>(u_input.a, var_0, -1i), vec4<u32>(u_input.c.x, 4294967295u, 15126u, u_input.c.x)), u_input.a, -2147483647i).wxy))));
    var_1 = vec4<bool>(var_1.x, !(!(!(false && var_1.x))), false, true);
    var_1 = !select(select(!(!vec4<bool>(var_1.x, var_1.x, true, var_1.x)), vec4<bool>(true, var_1.x, !var_1.x, true), !var_1.x), !func_3(Struct_1(u_input.c, u_input.e, vec4<u32>(4294967295u, 0u, u_input.c.x, 15968u)), u_input.d, 2147483647i), !(!(!vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x))));
    var_1 = vec4<bool>(!var_1.x == var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -141f) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -889f)))), !var_1.x, true);
    return Struct_1(u_input.c, -u_input.e, _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, 75382u, 41946u, u_input.c.x), _wgslsmith_mult_vec4_u32(u_input.c, vec4<u32>(15186u, u_input.c.x, 38187u, u_input.c.x))), ~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x)), ~(~(~u_input.c)), ~(~u_input.c)));
}

fn func_4(arg_0: u32, arg_1: vec4<i32>, arg_2: vec4<i32>, arg_3: Struct_2) -> vec4<f32> {
    var var_0 = !any(func_3(Struct_1(vec4<u32>(9022u, arg_3.a.c.x, arg_3.a.c.x, arg_3.a.c.x), abs(arg_2.xyy), ~u_input.c), 2147483647i, arg_1.x).xy);
    var var_1 = (_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4647u, 1u, arg_0, 1u), arg_3.a.a), _wgslsmith_sub_u32(arg_3.a.c.x, ~4294967295u)) | 0u) != (arg_3.a.c.x ^ _wgslsmith_dot_vec3_u32((vec3<u32>(arg_0, arg_0, u_input.c.x) << (vec3<u32>(1u, 0u, arg_3.a.a.x) % vec3<u32>(32u))) << ((vec3<u32>(1u, u_input.c.x, 82579u) >> (arg_3.a.c.zyy % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(u_input.c.yxy, ~arg_3.a.a.zzx)));
    var var_2 = 45193i;
    let var_3 = _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_sub_u32(arg_0, 7987u), 1u) << (u_input.c.x % 32u), func_1(arg_3.b.x, Struct_2(arg_3.a, arg_3.b), Struct_2(func_2(), arg_3.b), arg_3.a.a.x), _wgslsmith_clamp_u32(abs(~0u), ~16572u, ~arg_0)), ~vec3<u32>(abs(func_2().a.x), _wgslsmith_sub_u32(~12351u, u_input.c.x), func_2().a.x));
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1999f)) * -513f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-668f + 433f), -1765f), _wgslsmith_f_op_f32(-160f - -131f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-538f * -817f))))), 1f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-506f + _wgslsmith_f_op_f32(step(-989f, 1515f))), -1000f), 1f));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_4.x), _wgslsmith_f_op_f32(f32(-1f) * -1329f), _wgslsmith_f_op_f32(var_4.x + -1263f), -1071f), var_4), vec4<f32>(-2611f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_4.x))), -609f, var_4.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    let var_1 = _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_dot_vec2_u32(u_input.c.yw, vec2<u32>(func_1(true, Struct_2(Struct_1(vec4<u32>(37186u, 4294967295u, 78915u, 1u), u_input.e, vec4<u32>(var_0, 1u, 4294967295u, 94476u)), vec2<bool>(false, false)), Struct_2(Struct_1(vec4<u32>(u_input.c.x, var_0, var_0, var_0), u_input.e, u_input.c), vec2<bool>(false, true)), u_input.c.x), var_0)) ^ (4294967295u << (u_input.c.x % 32u)), vec4<i32>(-5276i, -22794i, u_input.a, ~7209i) | abs(vec4<i32>(u_input.d | u_input.d, -1i, _wgslsmith_mod_i32(5853i, u_input.d), _wgslsmith_dot_vec4_i32(vec4<i32>(19486i, 3710i, -28315i, -17849i), vec4<i32>(44867i, u_input.a, -32622i, u_input.d)))), -_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d, u_input.e.x, 1i, -2147483647i), vec4<i32>(-2147483647i, 64965i, 1i, -14604i)), vec4<i32>(-2892i, -1i, -8986i, u_input.d) << (vec4<u32>(4294967295u, 77039u, 1u, 0u) % vec4<u32>(32u))), ~reverseBits(vec4<i32>(u_input.b, u_input.b, 0i, u_input.b))), Struct_2(func_2(), func_3(func_2(), u_input.d, -abs(u_input.a)).xy)));
    var var_2 = _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(1659f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.x, 882f))), 1u != u_input.c.x)))));
    var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(2478f, var_1.x, all(vec3<bool>(true, false, true))))))));
    var var_3 = Struct_2(func_2(), func_3(Struct_1(vec4<u32>(~0u, u_input.c.x, var_0, 17418u), ~min(vec3<i32>(2802i, -15318i, 4113i), u_input.e), vec4<u32>(39765u, var_0, u_input.c.x, func_2().a.x)), -(u_input.e.x >> (var_0 % 32u)), _wgslsmith_div_i32(abs(-2147483647i), u_input.e.x)).ww);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, 996f, ~var_3.a.c.x << (_wgslsmith_sub_u32(60647u, (u_input.c.x ^ 4294967295u) ^ _wgslsmith_dot_vec2_u32(u_input.c.zy, vec2<u32>(1u, u_input.c.x))) % 32u));
}

