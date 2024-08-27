struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec2<i32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(23824i, 0i, 1i, 0i);

var<private> global1: f32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1233f - -816f), 1000f, 1361f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1431f, -1000f, 1575f))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-486f, 615f, -2085f), vec3<f32>(267f, 843f, -1762f), vec3<bool>(false, false, true)))))), vec3<f32>(625f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1089f + 1058f) + 438f), 648f)));
    var var_1 = Struct_3(Struct_2(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d.x, 4294967295u, 14993u), vec3<u32>(0u, u_input.d.x, u_input.d.x)), vec3<u32>(22627u, ~4294967295u, 12834u)), Struct_1(_wgslsmith_div_i32(1i, u_input.a) | _wgslsmith_add_i32(global0.x, u_input.b.x), vec2<bool>(true, true), select(u_input.b.yy << (vec2<u32>(u_input.d.x, 0u) % vec2<u32>(32u)), u_input.b.zy ^ vec2<i32>(-24808i, 1i), select(true, true, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(604f, var_0.x), var_0.xz, vec2<bool>(false, true))))), Struct_1(-36183i ^ u_input.b.x, vec2<bool>(true, true), countOneBits(max(vec2<i32>(u_input.c.x, -78398i), u_input.b.yz)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_0.zx))))), Struct_1(-u_input.c.x, select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(true, true), true), !select(vec2<bool>(true, true), vec2<bool>(false, true), true)), -select(abs(vec2<i32>(-57335i, 2147483647i)), firstTrailingBit(global0.xy), true), vec2<f32>(var_0.x, var_0.x)));
    let var_2 = vec4<u32>(firstLeadingBit(_wgslsmith_dot_vec2_u32(var_1.a.a.xx, reverseBits(var_1.a.a.xy))), min(~min(4294967295u, _wgslsmith_div_u32(4294967295u, u_input.d.x)), ~abs(0u)), 59200u, _wgslsmith_clamp_u32(6245u, 4294967295u, ~u_input.d.x));
    let var_3 = !select(vec3<bool>(true, true, true), select(select(!vec3<bool>(true, false, var_1.a.b.b.x), select(vec3<bool>(var_1.b.b.x, false, true), vec3<bool>(var_1.b.b.x, var_1.a.b.b.x, false), vec3<bool>(var_1.a.c.b.x, var_1.b.b.x, false)), select(vec3<bool>(var_1.a.b.b.x, var_1.b.b.x, var_1.b.b.x), vec3<bool>(false, var_1.b.b.x, var_1.b.b.x), var_1.b.b.x)), !(!vec3<bool>(true, false, var_1.a.b.b.x)), false), select(select(vec3<bool>(false, var_1.a.b.b.x, true), select(vec3<bool>(false, var_1.a.b.b.x, var_1.b.b.x), vec3<bool>(var_1.b.b.x, var_1.b.b.x, true), false), select(vec3<bool>(var_1.a.b.b.x, var_1.a.b.b.x, var_1.b.b.x), vec3<bool>(false, var_1.b.b.x, true), vec3<bool>(var_1.b.b.x, var_1.a.b.b.x, var_1.b.b.x))), vec3<bool>(var_1.b.b.x, u_input.d.x < 4294967295u, false), var_1.a.c.b.x));
    let var_4 = var_1.a;
    return (u_input.d.x >> (8427u % 32u)) ^ _wgslsmith_mod_u32(reverseBits(u_input.d.x), _wgslsmith_mult_u32(var_2.x, 1u));
}

fn func_2(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = vec3<f32>(arg_0.d.x, arg_0.d.x, 1000f);
    var var_1 = Struct_3(Struct_2(vec3<u32>(~func_3(), ~u_input.d.x, _wgslsmith_mult_u32(u_input.d.x, u_input.d.x)), Struct_1(~_wgslsmith_clamp_i32(0i, -2279i, 29278i), !(!vec2<bool>(arg_0.b.x, true)), _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(u_input.b.yy, vec2<i32>(0i, arg_0.a)), ~vec2<i32>(-60243i, 148i)), _wgslsmith_div_vec2_f32(arg_0.d, _wgslsmith_f_op_vec2_f32(vec2<f32>(-3134f, 1426f) + arg_0.d))), arg_0), Struct_1(~global0.x & arg_0.c.x, arg_0.b, vec2<i32>(i32(-1i) * -2147483647i, arg_0.a), vec2<f32>(569f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-156f, -1102f)))));
    let var_2 = any(!select(select(!vec3<bool>(false, arg_0.b.x, false), !vec3<bool>(false, var_1.a.b.b.x, false), select(vec3<bool>(true, var_1.b.b.x, var_1.b.b.x), vec3<bool>(false, true, false), vec3<bool>(arg_0.b.x, var_1.b.b.x, true))), !vec3<bool>(arg_0.b.x, var_1.b.b.x, false), vec3<bool>(all(vec2<bool>(arg_0.b.x, arg_0.b.x)), arg_0.b.x, true)));
    var var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.x, var_0.x, 1000f, 726f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.x, -584f, var_0.x, var_1.a.b.d.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-141f, 132f, 1017f, -1077f) * vec4<f32>(-740f, var_1.b.d.x, var_0.x, var_1.a.b.d.x))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_1.b.d.x, -1315f, arg_0.d.x) + vec4<f32>(-1356f, arg_0.d.x, 1512f, -774f)) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.a.c.d.x, var_0.x, var_1.a.c.d.x, -1000f), vec4<f32>(arg_0.d.x, arg_0.d.x, var_1.b.d.x, -634f)))))))));
    let var_4 = _wgslsmith_mod_u32(~0u, ~(~(max(4294967295u, var_1.a.a.x) | reverseBits(u_input.d.x))));
    return !var_1.b.b;
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: vec4<bool>, arg_3: Struct_2) -> vec4<u32> {
    var var_0 = global0.yzy >> (vec3<u32>(49632u, _wgslsmith_mult_u32(_wgslsmith_add_u32(1u, ~u_input.d.x), ~_wgslsmith_div_u32(arg_0, u_input.d.x)), ~34037u) % vec3<u32>(32u));
    var var_1 = -1000f;
    var var_2 = func_2(arg_3.b);
    let var_3 = arg_3.a.x;
    var_2 = arg_3.c.b;
    return countOneBits(vec4<u32>(96545u, 1u, ~(~_wgslsmith_add_u32(44174u, arg_0)), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(arg_0, arg_0, 4294967295u, arg_0)), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 37377u, var_3, arg_3.a.x), ~vec4<u32>(arg_0, 52794u, arg_3.a.x, 88970u)))));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: f32, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = vec3<u32>(~_wgslsmith_add_u32(0u, u_input.d.x), select(~(~1u), u_input.d.x, 1i < _wgslsmith_add_i32(global0.x, global0.x)), abs(46796u)) ^ vec3<u32>(~4294967295u, 4294967295u, ~(~select(u_input.d.x, 32471u, true)));
    var var_1 = !(_wgslsmith_add_u32(var_0.x, 13392u) >= var_0.x);
    global0 = max(vec4<i32>(2147483647i, u_input.a, -arg_1.x, -select(min(u_input.b.x, 1i), arg_1.x, true)), vec4<i32>(firstTrailingBit(global0.x), _wgslsmith_sub_i32(max(1i, u_input.a), arg_3.x), arg_3.x, _wgslsmith_div_i32(global0.x, countOneBits(arg_1.x))));
    var var_2 = ((988f >= _wgslsmith_f_op_f32(-arg_2)) || false) || !((abs(u_input.a) != _wgslsmith_mod_i32(global0.x, 1i)) & (arg_2 < _wgslsmith_div_f32(arg_2, 1552f)));
    var_2 = true;
    return Struct_1(arg_1.x, !vec2<bool>(all(vec2<bool>(true, true)), select(true, true, all(vec4<bool>(true, true, true, true)))), global0.yz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_2, 508f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-453f, arg_2), vec2<f32>(-1134f, 1870f), true)) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_2, arg_2), vec2<f32>(441f, arg_2)))))));
}

fn func_5(arg_0: Struct_1) -> bool {
    global0 = vec4<i32>(arg_0.c.x, abs(_wgslsmith_clamp_i32(u_input.c.x, _wgslsmith_sub_i32(arg_0.c.x, u_input.c.x >> (17802u % 32u)), 63272i)), _wgslsmith_dot_vec3_i32(~global0.xzy >> (vec3<u32>(3696u, u_input.d.x, u_input.d.x ^ 65413u) % vec3<u32>(32u)), -firstLeadingBit(vec3<i32>(global0.x, arg_0.c.x, global0.x)) >> (~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d.x, 0u, u_input.d.x), vec3<u32>(u_input.d.x, u_input.d.x, 71870u)) % vec3<u32>(32u))), -1i);
    let var_0 = vec4<i32>(arg_0.a, select(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(-1i, 30869i), _wgslsmith_mod_i32(arg_0.a, 1i)), u_input.b.zy), ~arg_0.c.x, 320f == _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.d.x + arg_0.d.x)))), -2147483647i, (0i >> (u_input.d.x % 32u)) | _wgslsmith_mult_i32(-2385i, countOneBits(countOneBits(u_input.a))));
    global1 = _wgslsmith_f_op_f32(arg_0.d.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.d.x - arg_0.d.x), _wgslsmith_f_op_f32(f32(-1f) * -188f), arg_0.b.x)))) - arg_0.d.x));
    global0 = ~var_0;
    let var_1 = func_4(select(min(firstLeadingBit(vec4<u32>(30887u, 21473u, 59967u, 13849u) | vec4<u32>(u_input.d.x, 1u, 1u, u_input.d.x)), vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 48143u) & func_1(83244u, -2147483647i, vec4<bool>(false, arg_0.b.x, arg_0.b.x, arg_0.b.x), Struct_2(vec3<u32>(7640u, u_input.d.x, u_input.d.x), Struct_1(global0.x, arg_0.b, vec2<i32>(-1i, -8768i), vec2<f32>(384f, arg_0.d.x)), Struct_1(2147483647i, arg_0.b, vec2<i32>(var_0.x, arg_0.c.x), vec2<f32>(183f, 185f))))), ~(~vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x)), vec4<bool>(false, !arg_0.b.x, arg_0.b.x, true | func_4(vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x), global0.xw, -2393f, var_0.zxy).b.x)), firstLeadingBit(var_0.xw), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1826f)), _wgslsmith_f_op_f32(sign(arg_0.d.x))), global0.wzw);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.x;
    let var_1 = vec4<bool>(true, false, func_5(func_4(func_1(u_input.d.x & u_input.d.x, global0.x, select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false)), Struct_2(vec3<u32>(u_input.d.x, u_input.d.x, 43097u), Struct_1(u_input.c.x, vec2<bool>(true, false), vec2<i32>(-1678i, global0.x), vec2<f32>(570f, -114f)), Struct_1(u_input.c.x, vec2<bool>(false, false), vec2<i32>(u_input.c.x, global0.x), vec2<f32>(3180f, -1000f)))), u_input.c.zz, -873f, -global0.xwx)), false);
    let var_2 = Struct_2(vec3<u32>(~((u_input.d.x & 26374u) | ~u_input.d.x), 38844u, ~u_input.d.x), Struct_1(u_input.b.x, var_1.xx, ~(~global0.yz << (_wgslsmith_mult_vec2_u32(u_input.d, vec2<u32>(u_input.d.x, 5291u)) % vec2<u32>(32u))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1592f, -144f) + vec2<f32>(-923f, -1000f))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-531f, -512f), vec2<f32>(279f, 957f)))))))), Struct_1(i32(-1i) * -global0.x, var_1.xz, global0.xx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-240f, -2287f))))));
    global1 = _wgslsmith_f_op_f32(ceil(var_2.b.d.x));
    var var_3 = _wgslsmith_mult_i32(firstLeadingBit(~(i32(-1i) * -559i)), _wgslsmith_sub_i32(~2147483647i, firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(16475i, u_input.a, -2147483647i, -6208i), vec4<i32>(-2147483647i, 2147483647i, u_input.a, u_input.b.x)))));
    var_3 = firstTrailingBit(u_input.b.x);
    let var_4 = var_2.b.d.x;
    let var_5 = Struct_3(var_2, Struct_1(2147483647i, vec2<bool>(true, any(select(var_2.b.b, vec2<bool>(var_2.c.b.x, false), var_2.c.b.x))), _wgslsmith_mod_vec2_i32(~select(global0.wx, global0.wx, true), u_input.b.xz), vec2<f32>(-146f, var_4)));
    var var_6 = Struct_2(min(abs(abs(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, var_2.a.x, 37878u), var_5.a.a))), var_5.a.a), Struct_1(global0.x, vec2<bool>(!(!var_1.x), false), vec2<i32>(func_4(vec4<u32>(u_input.d.x, u_input.d.x, 4294967295u, 7724u), u_input.b.yx, _wgslsmith_f_op_f32(round(-1098f)), vec3<i32>(global0.x, 32632i, 0i)).a, _wgslsmith_dot_vec4_i32(-vec4<i32>(var_5.a.c.a, 17561i, 1i, 0i), vec4<i32>(-1i, 15187i, -170i, u_input.b.x))), var_5.b.d), Struct_1(abs(var_2.b.a), var_2.c.b, _wgslsmith_div_vec2_i32(-_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), vec2<i32>(var_5.a.c.a, var_2.b.a)), select(vec2<i32>(var_5.a.c.c.x, u_input.a) | vec2<i32>(var_5.b.a, u_input.a), var_2.c.c, !var_1.yz)), var_5.b.d));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_i32(_wgslsmith_div_i32(abs(global0.x), _wgslsmith_mod_i32(var_5.b.c.x, u_input.c.x)), abs(max(68820i, 19249i))), _wgslsmith_mult_i32(-reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, -1i, var_6.c.c.x, 3550i), vec4<i32>(1i, 7820i, 53318i, global0.x))), global0.x));
}

