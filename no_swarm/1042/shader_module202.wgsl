struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec2<f32>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_3;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_4) -> bool {
    let var_0 = -arg_0.b;
    global1 = Struct_3(global1.a, vec3<u32>(global1.b.x, 56626u, global1.b.x), arg_2.a, vec2<i32>(-1i, global1.c.b >> (_wgslsmith_mod_u32(u_input.a ^ u_input.a, 1u) % 32u)));
    return (firstLeadingBit(33873u) != (~(u_input.a << (4294967295u % 32u)) | _wgslsmith_div_u32(53878u, 11957u))) | (true & (_wgslsmith_div_f32(498f, -1000f) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.c.e)))));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> i32 {
    let var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(sign(arg_1.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.x))))), arg_0.x), 1i);
    var var_1 = select(!vec4<bool>(true, (1i << (global1.b.x % 32u)) == ~var_0.b, false, true), !(!vec4<bool>(true, true, true, all(vec3<bool>(true, false, false)))), all(vec2<bool>(countOneBits(9320u) != u_input.a, true)));
    global0 = var_0.a.x;
    var var_2 = all(!(!var_1.xzz));
    let var_3 = _wgslsmith_f_op_f32(-var_0.a.x);
    return -_wgslsmith_mod_i32(abs(-(1i ^ global1.d.x)), -(~_wgslsmith_div_i32(u_input.b.x, 46529i)));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: Struct_1) -> i32 {
    let var_0 = global1.a.x;
    var var_1 = Struct_3(global1.a, _wgslsmith_mult_vec3_u32(vec3<u32>(max(~21489u, _wgslsmith_add_u32(global1.b.x, 13057u)), 55699u, 0u), reverseBits(~global1.b) >> (~_wgslsmith_sub_vec3_u32(global1.b, global1.b) % vec3<u32>(32u))), Struct_1(_wgslsmith_f_op_vec3_f32(-global1.a.ywz), arg_0.a.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global1.a.x, 1000f), vec2<f32>(-1000f, 1937f)))), _wgslsmith_add_i32(global1.d.x, _wgslsmith_mod_i32(17036i, 15290i)), 559f), firstLeadingBit(global1.d));
    var var_2 = arg_0;
    let var_3 = Struct_2(var_1.a.zy, ~reverseBits(-11880i));
    let var_4 = ~(-20948i);
    return -1i;
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    var var_0 = vec4<i32>(_wgslsmith_sub_i32(global1.d.x & min(abs(u_input.b.x), ~global1.d.x), func_4(Struct_4(Struct_1(global1.a.zxw, -10214i, global1.c.a.xy, arg_0.x, -234f), global1.c.a.x, vec2<bool>(true, true)), vec2<bool>(true, true), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(683f, 1177f, global1.a.x) + vec3<f32>(-247f, -1989f, 121f)), u_input.b.x, global1.a.yz, func_3(global1.a, Struct_1(vec3<f32>(114f, -1186f, 303f), -558i, vec2<f32>(global1.c.a.x, global1.c.a.x), u_input.b.x, 1130f)), _wgslsmith_f_op_f32(f32(-1f) * -267f)))), u_input.b.x, 2147483647i, _wgslsmith_mult_i32(8332i, firstTrailingBit(firstTrailingBit(-6619i))));
    let var_1 = select(vec2<bool>(false, false), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, false)), vec2<bool>(any(vec4<bool>(true, false, false, true)), true), false), all(vec2<bool>(select(507f < global1.a.x, var_0.x < 2147483647i, true), true | (36559u != global1.b.x))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-global1.a.yy), global1.d.x);
    let var_3 = !any(vec3<bool>(all(select(vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(var_1.x, false, true), vec3<bool>(var_1.x, var_1.x, true))), false, true));
    var var_4 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-820f, 270f))) + _wgslsmith_f_op_f32(f32(-1f) * -108f)), _wgslsmith_f_op_f32(floor(global1.c.c.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1903f + _wgslsmith_f_op_f32(floor(-170f))), _wgslsmith_f_op_f32(global1.a.x * _wgslsmith_f_op_f32(select(-1000f, -521f, var_1.x))))), _wgslsmith_f_op_f32(-738f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) + global1.a.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.x, _wgslsmith_f_op_f32(sign(var_2.a.x)), _wgslsmith_f_op_f32(step(var_2.a.x, 1000f)), 614f) - global1.a));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.x, 1154f, var_4.x)), global1.a.xxw)), _wgslsmith_sub_i32(58175i, _wgslsmith_mult_i32(-66722i, -_wgslsmith_dot_vec3_i32(arg_0, arg_0))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(1467f, 1056f)), _wgslsmith_f_op_f32(global1.c.e + 674f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a.x, var_4.x))), _wgslsmith_f_op_vec2_f32(trunc(global1.a.wy)))), -2147483647i, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(1880f)))))));
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: Struct_3) -> Struct_4 {
    var var_0 = countOneBits(_wgslsmith_mod_u32(global1.b.x, 0u));
    var var_1 = 305u;
    let var_2 = all(vec3<bool>(true, arg_1, true));
    var_0 = ~arg_2.b.x;
    var_0 = global1.b.x;
    return Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 503f, -1617f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 1016f, arg_2.a.x)), func_1(Struct_2(vec2<f32>(1152f, -461f), -1i), countOneBits(vec2<i32>(-19387i, arg_2.d.x)), Struct_4(Struct_1(vec3<f32>(1997f, 510f, global1.a.x), arg_2.c.b, global1.a.wy, 1i, 856f), global1.a.x, vec2<bool>(false, arg_1))))), firstLeadingBit(~arg_2.c.d << (46719u % 32u)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -895f))))), ~(~reverseBits(arg_2.c.d)), arg_0), -810f, !select(!(!vec2<bool>(arg_1, var_2)), select(select(vec2<bool>(false, arg_1), vec2<bool>(true, false), vec2<bool>(var_2, true)), !vec2<bool>(arg_1, arg_1), select(vec2<bool>(var_2, false), vec2<bool>(arg_1, arg_1), vec2<bool>(var_2, false))), 2147483647i == (arg_2.c.d >> (0u % 32u))));
}

fn func_6(arg_0: Struct_4, arg_1: u32, arg_2: Struct_4, arg_3: f32) -> StorageBuffer {
    var var_0 = func_5(arg_2.a.e, all(select(select(select(vec3<bool>(true, true, arg_0.c.x), vec3<bool>(false, true, arg_0.c.x), vec3<bool>(true, arg_0.c.x, arg_2.c.x)), vec3<bool>(true, false, arg_0.c.x), arg_0.c.x), select(vec3<bool>(true, arg_2.c.x, false), !vec3<bool>(arg_0.c.x, arg_2.c.x, arg_2.c.x), !arg_0.c.x), _wgslsmith_f_op_f32(1784f * arg_0.a.a.x) >= _wgslsmith_f_op_f32(f32(-1f) * -556f))), Struct_3(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(arg_3, -269f, arg_2.a.a.x, arg_0.a.c.x), _wgslsmith_f_op_vec4_f32(select(global1.a, global1.a, vec4<bool>(false, false, true, arg_2.c.x)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(global1.a - global1.a))))), max(global1.b, vec3<u32>(arg_1, global1.b.x, arg_1)) ^ global1.b, global1.c, u_input.b.zz));
    let var_1 = min(4294967295u, _wgslsmith_add_u32(u_input.a, 0u));
    global0 = arg_0.a.e;
    let var_2 = !(13406u != _wgslsmith_mult_u32(select(var_1, global1.b.x, arg_0.c.x) | _wgslsmith_sub_u32(u_input.a, global1.b.x), var_1));
    var var_3 = Struct_1(arg_2.a.a, global1.c.b, global1.c.c, _wgslsmith_clamp_i32(-u_input.b.x, ~global1.d.x, countOneBits(reverseBits(-5810i ^ global1.c.d))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-766f)))), -316f)));
    return StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(var_3.a.x * var_0.b), _wgslsmith_f_op_f32(1322f + global1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1993f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(846f, var_0.b, -1407f)) * var_0.a.a))), global1.a.xwy), vec2<u32>(~1u, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_1, 78917u, 7483u, var_1) & vec4<u32>(88127u, u_input.a, var_1, 42930u), _wgslsmith_mult_vec4_u32(vec4<u32>(global1.b.x, 4294967295u, 4294967295u, u_input.a), vec4<u32>(0u, 66627u, 80844u, 1u))), ~(vec4<u32>(arg_1, 17451u, u_input.a, global1.b.x) << (vec4<u32>(23453u, var_1, var_1, arg_1) % vec4<u32>(32u))))), _wgslsmith_div_vec2_u32(global1.b.xy, global1.b.yz), func_2(select(vec3<i32>(var_0.a.b, -2147483647i >> (1u % 32u), arg_2.a.d), -(~u_input.b.wyy), select(!vec3<bool>(var_0.c.x, false, arg_2.c.x), !vec3<bool>(var_0.c.x, false, true), var_0.c.x))).b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u;
    var var_1 = select(select(vec3<bool>(true, !(53846u != global1.b.x), 4294967295u >= ~global1.b.x), select(vec3<bool>(true, u_input.a != global1.b.x, false), vec3<bool>(true, true, all(vec3<bool>(true, false, false))), min(global1.c.d, 1i) <= reverseBits(17538i)), vec3<bool>(select(true, all(vec4<bool>(true, true, false, true)), true), global1.c.a.x > _wgslsmith_f_op_f32(f32(-1f) * -471f), !any(vec3<bool>(false, true, true)))), select(vec3<bool>(false | func_1(Struct_2(global1.c.a.zx, 1i), u_input.b.yz, Struct_4(Struct_1(global1.a.zzz, global1.c.b, global1.a.xw, global1.c.d, global1.a.x), global1.c.a.x, vec2<bool>(false, false))), any(vec4<bool>(true, true, true, true)), true), vec3<bool>(true, true, true), all(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))), global1.b.x > _wgslsmith_mult_u32(_wgslsmith_add_u32(global1.b.x, _wgslsmith_mult_u32(u_input.a, 42773u)), ~_wgslsmith_clamp_u32(0u, 4294967295u, u_input.a)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-812f + _wgslsmith_f_op_f32(global1.a.x * _wgslsmith_f_op_f32(sign(global1.c.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x - global1.a.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(7279u, u_input.a, 20121u) | vec3<u32>(1u, 66024u, 36920u), global1.b) == global1.b.x)));
    let x = u_input.a;
    s_output = func_6(Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.c.a.x, 644f, 846f))))), ~(~(-47844i)), _wgslsmith_f_op_vec2_f32(-global1.a.xx), global1.c.d, _wgslsmith_f_op_f32(global1.a.x + _wgslsmith_f_op_f32(max(1093f, var_2)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.c.c.x), _wgslsmith_f_op_f32(490f + 368f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1044f + global1.c.e))), vec2<bool>(true, any(vec3<bool>(var_1.x, var_1.x, false)) == !var_1.x)), abs(0u), func_5(_wgslsmith_f_op_f32(var_2 - _wgslsmith_f_op_f32(ceil(525f))), false, Struct_3(_wgslsmith_f_op_vec4_f32(-global1.a), global1.b, func_2(firstLeadingBit(u_input.b.yzw)), ~_wgslsmith_div_vec2_i32(vec2<i32>(global1.c.b, global1.d.x), global1.d))), _wgslsmith_div_f32(-542f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(func_2(u_input.b.zyx).c.x)), -752f)));
}

