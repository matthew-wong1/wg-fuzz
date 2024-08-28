struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: f32, arg_1: vec2<i32>) -> f32 {
    var var_0 = vec2<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(~u_input.e, 32482u) >> (u_input.b.x % 32u), reverseBits(u_input.e)), firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(7125u, 1u))));
    var_0 = ~(u_input.c >> ((vec2<u32>(_wgslsmith_clamp_u32(10315u, u_input.c.x, var_0.x), var_0.x) & vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.b.wyw, u_input.b.zyy), abs(var_0.x))) % vec2<u32>(32u)));
    let var_1 = Struct_1(-abs(_wgslsmith_add_i32(~arg_1.x, 2147483647i)), true, _wgslsmith_dot_vec2_i32(u_input.a.xz, arg_1));
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1249f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(round(arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -169f)) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1010f, -878f, 1045f, 1000f)))))))));
    var var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(var_2.x, -1156f), -1667f) + _wgslsmith_f_op_f32(abs(arg_0)))))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_0)), _wgslsmith_f_op_f32(select(106f, -1109f, true)));
}

fn func_2() -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1594f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-1125f - 504f), vec2<i32>(u_input.a.x, u_input.a.x))), _wgslsmith_f_op_f32(-412f - -1332f))) - -1000f);
    let var_1 = reverseBits(firstTrailingBit(u_input.a.x));
    var var_2 = !vec2<bool>(select(any(vec3<bool>(true, true, true)), true, true), all(vec3<bool>(true, any(vec2<bool>(false, false)), true)));
    let var_3 = Struct_1(reverseBits(max(_wgslsmith_mod_i32(u_input.a.x, -1i) ^ u_input.a.x, _wgslsmith_dot_vec4_i32(~u_input.a, _wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(-3963i, -28172i, u_input.a.x, u_input.a.x))))), var_2.x, u_input.a.x);
    let var_4 = _wgslsmith_dot_vec2_u32(select(countOneBits(u_input.c), vec2<u32>(u_input.c.x, ~reverseBits(19454u)), !any(vec4<bool>(var_2.x, false, true, false))), _wgslsmith_sub_vec2_u32(select(u_input.b.yy, firstLeadingBit(u_input.b.ww), vec2<bool>(var_3.b, true)), u_input.c) | ~_wgslsmith_div_vec2_u32(u_input.b.ww, select(u_input.b.wz, vec2<u32>(0u, u_input.e), false)));
    return vec3<u32>(select(~reverseBits(_wgslsmith_div_u32(37598u, u_input.c.x)), ~var_4, all(select(select(vec2<bool>(var_2.x, true), vec2<bool>(false, var_2.x), true), vec2<bool>(true, true), !vec2<bool>(var_2.x, true)))), _wgslsmith_mult_u32(62651u, firstLeadingBit(~var_4)), ~u_input.b.x);
}

fn func_4(arg_0: bool, arg_1: vec3<u32>) -> Struct_1 {
    var var_0 = u_input.a.yy;
    var_0 = u_input.a.yy;
    var var_1 = ~(-1i) << (arg_1.x % 32u);
    var var_2 = -69957i;
    var_2 = u_input.a.x;
    return Struct_1(var_0.x | ~abs(~42845i), -67721i == _wgslsmith_div_i32(~min(0i, -2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, var_0.x, var_0.x), vec3<i32>(u_input.a.x, var_0.x, var_0.x) >> (vec3<u32>(97685u, u_input.c.x, 61822u) % vec3<u32>(32u)))), var_0.x);
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: i32) -> i32 {
    let var_0 = func_4(_wgslsmith_clamp_i32(10444i, -34854i, arg_1) == select(i32(-1i) * -29253i, arg_0, true), firstTrailingBit(func_2()));
    let var_1 = Struct_1(func_4(var_0.b, abs(func_2())).c, var_0.b, u_input.a.x);
    let var_2 = ~(38154u << (1u % 32u));
    var var_3 = _wgslsmith_dot_vec2_i32(u_input.a.wy, vec2<i32>(select(u_input.a.x, var_0.a, true), abs(_wgslsmith_sub_i32(var_1.a >> (4294967295u % 32u), -var_0.c))));
    var var_4 = countOneBits(_wgslsmith_sub_vec2_u32(firstLeadingBit(u_input.c), u_input.c));
    return 66079i;
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = u_input.d;
    let var_1 = !(func_4(true, _wgslsmith_clamp_vec3_u32(u_input.b.zxx, vec3<u32>(4294967295u, 4294967295u, u_input.c.x), vec3<u32>(u_input.b.x, u_input.e, 4832u)) >> (~vec3<u32>(u_input.d, 4294967295u, 69623u) % vec3<u32>(32u))).b && any(select(vec4<bool>(arg_1.b, false, arg_1.b, arg_1.b), select(vec4<bool>(true, true, true, arg_1.b), vec4<bool>(true, false, arg_1.b, false), false), vec4<bool>(arg_1.b, arg_1.b, false, arg_1.b))));
    var_0 = ~u_input.d | _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.b.zyx, vec3<u32>(firstLeadingBit(u_input.d), u_input.d, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.e, u_input.e, 1u), vec4<u32>(u_input.b.x, u_input.e, u_input.e, u_input.e)))), u_input.e);
    let var_2 = select(arg_1.b, true, !(any(select(vec3<bool>(true, var_1, arg_1.b), vec3<bool>(true, var_1, true), vec3<bool>(arg_1.b, var_1, arg_1.b))) && (all(vec4<bool>(false, arg_1.b, var_1, var_1)) | select(arg_1.b, true, var_1))));
    let var_3 = _wgslsmith_f_op_f32(func_3(320f, u_input.a.yy));
    return arg_1;
}

fn func_6(arg_0: u32, arg_1: bool, arg_2: vec2<i32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_sub_i32(0i, min(-26184i, arg_2.x)), true, _wgslsmith_div_i32(u_input.a.x & _wgslsmith_sub_i32(~0i, -2147483647i), ~(-33186i)));
    var var_1 = _wgslsmith_div_u32(arg_0, max(0u, u_input.e));
    let var_2 = arg_3;
    var var_3 = var_0;
    var var_4 = func_5(arg_2, Struct_1(_wgslsmith_dot_vec3_i32(select(u_input.a.xww, vec3<i32>(-64545i, -2147483647i, var_3.a), vec3<bool>(false, arg_1, true)), vec3<i32>(-26177i, -73462i, arg_3.a)), true, var_0.a >> (0u % 32u)));
    return Struct_1(max(0i, ~(-2147483647i)), true, -4584i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(657f, 1084f), vec2<f32>(595f, -936f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(209f, 984f) * vec2<f32>(-2333f, 828f)))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(308f, -1000f), vec2<f32>(-848f, -650f), true))), vec2<f32>(var_0.x, -949f), true)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(var_0 + vec2<f32>(-732f, 1309f)))))));
    var_1 = var_0;
    var var_2 = u_input.b.xzy;
    var var_3 = func_6(min(_wgslsmith_add_u32(~_wgslsmith_mult_u32(4294967295u, var_2.x), 30604u & u_input.c.x), ~u_input.e), ~(~var_2.x) >= 1u, u_input.a.wy, func_5(vec2<i32>(countOneBits(func_1(1i, u_input.a.x, u_input.a.x)), -6569i), func_4(2147483647i != _wgslsmith_clamp_i32(-18289i, u_input.a.x, -16995i), _wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.b.x, 7237u, 1u), u_input.b.xwx))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.xzx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1089f, _wgslsmith_f_op_f32(-var_1.x))))) - -419f), vec2<f32>(792f, _wgslsmith_f_op_f32(-449f * -547f)));
}

