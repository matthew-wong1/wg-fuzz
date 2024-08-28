struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: f32,
    d: vec2<u32>,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: vec4<bool>,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(-27148i);

var<private> global1: vec4<f32>;

var<private> global2: vec2<f32> = vec2<f32>(-1134f, 140f);

var<private> global3: Struct_1 = Struct_1(1049f, vec3<u32>(2754u, 3023u, 4878u), 699f, vec2<u32>(0u, 4294967295u), 4294967295u);

var<private> global4: vec4<i32> = vec4<i32>(29947i, 2147483647i, 0i, -30199i);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32) -> vec2<f32> {
    global1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-194f)) - 750f))) - -923f), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-global3.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1413f))))));
    global1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(1089f, global2.x)), _wgslsmith_f_op_f32(select(593f, global1.x, false)), _wgslsmith_f_op_f32(trunc(global3.c)), _wgslsmith_f_op_f32(f32(-1f) * -614f))))));
    var var_0 = ~(~(~(~global3.d.x)));
    var var_1 = vec4<u32>(44183u, ~(~(~arg_0)), _wgslsmith_mult_u32(4294967295u << (_wgslsmith_dot_vec3_u32(global3.b, global3.b) % 32u), 0u), arg_0) | countOneBits(firstTrailingBit(min(~vec4<u32>(72906u, arg_0, arg_0, 1u), vec4<u32>(arg_0, 28165u, 1u, global3.b.x) | vec4<u32>(arg_0, arg_0, 4294967295u, global3.d.x))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.xz) * _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global1.x * -513f), global2.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global2.x)))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(global1.wy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global1.xw, vec2<f32>(global2.x, -948f))))), global1.wz)));
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: Struct_4, arg_3: f32) -> vec4<f32> {
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(~reverseBits(countOneBits(10328u)))) + _wgslsmith_f_op_vec2_f32(global1.ww - vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_3)), _wgslsmith_f_op_f32(step(arg_0, -760f)))));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_1)), _wgslsmith_f_op_f32(floor(global1.x))) * 743f);
    var var_1 = Struct_4(-(i32(-1i) * -_wgslsmith_mult_i32(arg_2.a, arg_2.a)));
    var_1 = Struct_4(global0.a);
    global2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(518f, _wgslsmith_f_op_f32(ceil(arg_3)), -1264f > global3.a)) * _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-482f, global1.x)))), 1633f);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, 701f, 1604f, -316f) + vec4<f32>(var_0, -1491f, global2.x, 219f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, global1.x, 724f, -811f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-121f, global3.a, -755f, 1000f) + vec4<f32>(1324f, -621f, var_0, -220f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-864f, arg_1, 2102f, global1.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-350f, -824f, -2144f, -305f)))))));
}

fn func_1() -> Struct_2 {
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-422f, 899f, global1.x, 1000f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -479f, global1.x, global1.x)) - _wgslsmith_f_op_vec4_f32(func_2(-1339f, global3.a, Struct_4(global4.x), global2.x))))));
    var var_0 = Struct_3(Struct_1(195f, min(~reverseBits(global3.b), global3.b), global3.a, vec2<u32>(~(~0u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(19521u, 24343u, 11496u, global3.e), vec4<u32>(1u, global3.d.x, 88639u, global3.d.x))), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 86112u, 1u, 4294967295u), countOneBits(vec4<u32>(global3.b.x, 13556u, global3.b.x, 0u))))), vec4<u32>(global3.e, ~(~(20870u << (global3.e % 32u))), global3.e, ~global3.b.x << (_wgslsmith_add_u32(global3.b.x, ~1u) % 32u)));
    var var_1 = vec2<bool>(!select(global0.a <= _wgslsmith_sub_i32(-1i, 2147483647i), _wgslsmith_f_op_f32(global1.x + var_0.a.c) <= _wgslsmith_f_op_f32(-var_0.a.c), _wgslsmith_add_u32(var_0.b.x, 0u) >= var_0.a.d.x), ~(~global4.x) > global0.a);
    return Struct_2(var_1.x, var_0.a, ~0i, vec4<bool>(-38547i < _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(global4.wy, global4.zw), _wgslsmith_clamp_i32(-1010i, u_input.a.x, 0i)), true, any(vec2<bool>(false, true)), select(var_1.x, true, select(var_1.x, !var_1.x, true))), all(vec4<bool>(var_1.x, true, global0.a <= 651i, !var_1.x)));
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> Struct_3 {
    let var_0 = 1040f;
    var var_1 = vec3<bool>(true, arg_0.a, ~global3.e > 1u);
    var var_2 = _wgslsmith_add_vec3_u32(~(~global3.b), global3.b);
    var var_3 = var_1.x;
    return Struct_3(func_1().b, ~(~vec4<u32>(0u, 0u, global3.b.x, global3.b.x)) & vec4<u32>(var_2.x | _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 90952u, 1596u), vec3<u32>(var_2.x, 4294967295u, arg_0.b.b.x)), global3.b.x, 67821u, arg_0.b.d.x));
}

fn func_5(arg_0: Struct_3) -> vec2<u32> {
    var var_0 = -1i;
    let var_1 = func_4(Struct_2(true, arg_0.a, ~u_input.b.x, !vec4<bool>(func_1().e, any(vec2<bool>(false, false)), all(vec3<bool>(false, false, true)), true), false), reverseBits(global4.x)).a;
    global1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.a.a, global2.x, arg_0.a.a, global2.x), vec4<f32>(-893f, -540f, 988f, -296f))) - _wgslsmith_div_vec4_f32(vec4<f32>(-1036f, global2.x, arg_0.a.a, global1.x), vec4<f32>(global2.x, -2697f, arg_0.a.c, 325f))))), vec4<f32>(_wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a.a, global2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), global2.x, 1624f)));
    global0 = Struct_4(~38568i);
    let var_2 = Struct_3(func_1().b, vec4<u32>(4294967295u, 0u, 0u, ~1u));
    return _wgslsmith_clamp_vec2_u32(min(abs(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0.b.x, global3.b.x), vec2<u32>(1u, arg_0.a.b.x))), vec2<u32>(~arg_0.a.e, _wgslsmith_mult_u32(48842u, 75112u))), countOneBits(var_1.b.zz), ~(~_wgslsmith_mult_vec2_u32(global3.d, vec2<u32>(55827u, arg_0.b.x)))) & vec2<u32>(_wgslsmith_clamp_u32(~(0u ^ var_2.b.x), ~4294967295u, 35333u), _wgslsmith_div_u32(reverseBits(~0u), countOneBits(func_4(Struct_2(false, Struct_1(-1379f, vec3<u32>(var_2.b.x, 1u, global3.e), 1177f, arg_0.b.ww, var_2.a.b.x), 14753i, vec4<bool>(true, false, false, true), true), global4.x).b.x)));
}

fn func_6(arg_0: u32, arg_1: vec2<u32>, arg_2: vec4<i32>) -> Struct_3 {
    var var_0 = _wgslsmith_clamp_u32(abs(~(~(~arg_0))), reverseBits((arg_0 & _wgslsmith_add_u32(1u, 0u)) | arg_1.x), _wgslsmith_sub_u32(73552u, ~_wgslsmith_sub_u32(_wgslsmith_div_u32(37551u, 1u), ~global3.d.x)));
    global3 = func_1().b;
    return Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1265f - func_1().b.a) - -877f), vec3<u32>(global3.b.x, select(global3.e, _wgslsmith_mod_u32(arg_0, 49658u), false), arg_0), _wgslsmith_f_op_f32(global2.x * -918f), global3.b.zx, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(33255u, 4294967295u, arg_1.x, 0u), vec4<u32>(global3.d.x, 32407u, 4294967295u, 4294967295u))), vec4<u32>(~arg_0, firstTrailingBit(global3.d.x), 4294967295u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global3.b.x, 4294967295u, 38152u), ~vec4<u32>(18975u, arg_0, arg_0, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(~37638u, func_5(func_4(func_1(), 2147483647i)), -select(vec4<i32>(-19499i, u_input.a.x, ~global4.x, func_1().c), firstLeadingBit(vec4<i32>(u_input.b.x, -2147483647i, global0.a, 22438i)) & vec4<i32>(19937i, 7692i, global4.x, u_input.a.x), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true))));
    global0 = Struct_4(-1i);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(364f, 983f, -921f), vec3<f32>(global1.x, global1.x, global3.a), vec3<bool>(false, false, true))) - _wgslsmith_f_op_vec3_f32(-global1.zxx)), _wgslsmith_f_op_vec3_f32(abs(global1.zxz)))));
    var var_2 = global1.wy;
    var var_3 = Struct_2(countOneBits(func_1().c << (29162u % 32u)) < u_input.b.x, func_1().b, global4.x >> (_wgslsmith_sub_u32((50573u << (0u % 32u)) ^ (global3.b.x ^ 1u), func_5(Struct_3(var_0.a, vec4<u32>(2700u, 0u, 52244u, 1u))).x) % 32u), vec4<bool>(all(vec4<bool>(true, func_1().e, any(vec3<bool>(true, false, true)), func_1().a)), false, true, true), ~(~1u) > ~var_0.a.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(global3.b.x, -_wgslsmith_sub_i32(17859i, -23200i), vec4<i32>(var_3.c, ~var_3.c, var_3.c, ~firstLeadingBit(countOneBits(7843i))), _wgslsmith_div_i32(~1i, _wgslsmith_sub_i32(-76257i, _wgslsmith_mod_i32(u_input.a.x, _wgslsmith_add_i32(-24934i, global4.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -936f)), var_0.a.c))));
}

