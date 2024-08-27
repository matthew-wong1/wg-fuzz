struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: u32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: f32,
    d: bool,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<f32> {
    let var_0 = countOneBits(u_input.c);
    let var_1 = Struct_5(vec2<i32>(-30575i, u_input.b.x), vec2<u32>(~(~21709u), reverseBits(~min(0u, 0u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-372f, _wgslsmith_f_op_f32(round(1287f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-173f - _wgslsmith_f_op_f32(floor(951f)))))));
    var var_2 = -1i;
    var var_3 = _wgslsmith_dot_vec3_i32(vec3<i32>(-_wgslsmith_add_i32(var_1.a.x, u_input.b.x ^ u_input.b.x), firstTrailingBit(_wgslsmith_add_i32(u_input.b.x, -38090i)), 1i), _wgslsmith_sub_vec3_i32(u_input.b, ~_wgslsmith_mod_vec3_i32(u_input.b, u_input.b << (vec3<u32>(0u, 4294967295u, u_input.a.x) % vec3<u32>(32u)))));
    var_3 = -1i;
    return _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(var_1.d))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.c - var_1.c) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.c.x, 1305f))))))));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(780f, 1195f) * vec2<f32>(531f, 226f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(122f, -898f), vec2<f32>(404f, 1628f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(164f, -948f)))))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-314f, 954f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(174f)))), !vec4<bool>(any(vec2<bool>(false, true)), any(vec4<bool>(false, false, true, true)), any(vec2<bool>(false, true)), true), u_input.a.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 358f) - vec2<f32>(-1467f, 537f)))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-272f, 469f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-519f, -1086f) * vec2<f32>(-1209f, 759f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-791f, 269f) + vec2<f32>(-292f, -1185f)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_3())))));
    var var_1 = var_0.b.c;
    var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-353f))), _wgslsmith_f_op_f32(step(-230f, var_0.a.x))))), var_0.b, _wgslsmith_f_op_vec2_f32(floor(var_0.b.d)));
    let var_2 = Struct_4(all(!vec3<bool>(true, var_0.b.b.x, var_0.b.b.x)), 900f, 285f, all(!var_0.b.b));
    var var_3 = true;
    return Struct_2(vec2<f32>(1796f, var_2.b), var_0.b, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(var_0.c)))) + var_0.a))));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<u32>) -> vec4<u32> {
    let var_0 = vec2<u32>(arg_1.x, u_input.a.x);
    var var_1 = func_2();
    var var_2 = -57286i;
    var var_3 = Struct_3(vec3<i32>(_wgslsmith_mod_i32(-13090i, 2147483647i), reverseBits(~u_input.b.x), ~1i), func_2(), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.x), -538f))), var_1.b.b, arg_1.x, var_1.a), func_2());
    let var_4 = Struct_5(_wgslsmith_div_vec2_i32(var_3.a.xx, ~var_3.a.yy) >> (vec2<u32>(u_input.c << (_wgslsmith_dot_vec2_u32(u_input.a.xy, vec2<u32>(1u, 4294967295u)) % 32u), var_3.c.c & 19444u) % vec2<u32>(32u)), countOneBits(~firstTrailingBit(arg_1.yx)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -653f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3()).x)), var_3.b.c.x);
    return ~vec4<u32>(var_3.d.b.c, _wgslsmith_div_u32(0u, 42166u), var_1.b.c, ~u_input.a.x);
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: vec4<i32>) -> bool {
    var var_0 = Struct_5(select(abs(select(_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, u_input.b.x), arg_3.xy, vec2<i32>(arg_1.x, arg_1.x)), min(vec2<i32>(-1i, u_input.b.x), vec2<i32>(arg_3.x, -9229i)), !arg_2.b.x)), -_wgslsmith_add_vec2_i32(vec2<i32>(arg_1.x, u_input.b.x) << (vec2<u32>(arg_0.x, u_input.a.x) % vec2<u32>(32u)), -arg_1.yx), select(arg_2.b.ww, vec2<bool>(arg_2.b.x, arg_2.b.x), arg_2.b.x)), min(abs(u_input.a.yy), abs(u_input.a.zx)), vec2<f32>(arg_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1514f * -1229f) + 2380f) * _wgslsmith_f_op_f32(max(848f, _wgslsmith_f_op_f32(select(arg_2.a, 1115f, arg_2.b.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(arg_2.d.x, -981f))))))));
    let var_1 = func_2().b;
    var var_2 = func_2();
    var var_3 = firstTrailingBit(arg_3);
    var_0 = Struct_5(var_3.yw, ~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, 18668u), reverseBits(vec2<u32>(4294967295u, var_1.c)), vec2<u32>(35218u, arg_2.c)) & vec2<u32>(reverseBits(_wgslsmith_div_u32(u_input.a.x, u_input.a.x)), var_1.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.x, -817f) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-938f, var_1.d.x)))))), -1182f);
    return var_2.b.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-292f, 342f))), _wgslsmith_f_op_f32(sign(-455f))), 766f, true | (0u <= abs(~u_input.a.x)));
    var var_1 = vec2<bool>(var_0.a, func_4(func_1(vec4<bool>(var_0.d, false, !var_0.d, var_0.d), ~u_input.a | ~vec3<u32>(u_input.a.x, 1u, u_input.c)), _wgslsmith_add_vec3_i32(u_input.b, vec3<i32>(-1i, u_input.b.x, 2147483647i) << (countOneBits(u_input.a) % vec3<u32>(32u))), Struct_1(_wgslsmith_div_f32(-2274f, _wgslsmith_f_op_f32(1000f + var_0.c)), func_2().b.b, u_input.a.x, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, 116f))))), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, -42435i, -26333i, 7499i), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), min(vec4<i32>(-18462i, 0i, 1i, 2147483647i), vec4<i32>(u_input.b.x, 2661i, u_input.b.x, u_input.b.x))) >> (vec4<u32>(62915u, 7225u, _wgslsmith_mult_u32(u_input.a.x, 7156u), 1u) % vec4<u32>(32u))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-var_0.b), var_0.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(340f, var_0.b) + vec2<f32>(1000f, var_0.c))))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c * var_0.b)), !select(vec4<bool>(var_0.d, var_1.x, var_0.a, var_1.x), !vec4<bool>(var_1.x, false, false, true), func_4(vec4<u32>(64168u, u_input.c, u_input.c, u_input.c), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), Struct_1(878f, vec4<bool>(true, false, true, false), 0u, vec2<f32>(-591f, var_0.c)), vec4<i32>(u_input.b.x, 1i, u_input.b.x, u_input.b.x))), countOneBits(min(~u_input.c, 38989u)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-699f, _wgslsmith_f_op_f32(trunc(var_0.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(559f, var_0.b) + vec2<f32>(var_0.b, var_0.c)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, var_0.c) * vec2<f32>(var_0.c, -954f)));
    var var_3 = Struct_4(1i > firstTrailingBit(u_input.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -248f))), _wgslsmith_f_op_f32(round(718f)), (true & !var_0.d) & true);
    var_1 = !var_2.b.b.zw;
    var var_4 = var_3.c;
    let var_5 = firstLeadingBit(_wgslsmith_div_vec2_u32(vec2<u32>(firstTrailingBit(_wgslsmith_mod_u32(2122u, 1u)), countOneBits(u_input.a.x)), reverseBits(vec2<u32>(~1u, 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -418f, -575f), vec3<f32>(var_0.b, var_2.c.x, var_3.c)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1581f, var_0.c, var_3.b), vec3<f32>(-190f, -1202f, 567f)) + vec3<f32>(883f, 936f, var_3.b)))), -_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, u_input.b.x, u_input.b.x), -u_input.b, abs(vec3<i32>(0i, u_input.b.x, 5501i))) ^ _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(-u_input.b, vec3<i32>(-56813i, u_input.b.x, u_input.b.x)), -select(u_input.b, vec3<i32>(u_input.b.x, -9720i, 0i), var_2.b.b.x), _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, -1i), u_input.b), ~u_input.b, u_input.b)));
}

