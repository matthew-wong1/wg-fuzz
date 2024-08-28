struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: Struct_3,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec4<bool> {
    let var_0 = u_input.a;
    var var_1 = Struct_5(vec4<bool>(true, true, true, true), vec3<f32>(_wgslsmith_f_op_f32(max(-1932f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-108f, -1473f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1136f, 1551f))))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-2486f, _wgslsmith_f_op_f32(-749f - -519f)), _wgslsmith_div_f32(147f, _wgslsmith_f_op_f32(round(532f)))))), Struct_3(!select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), false), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false)), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), false))), vec4<i32>(~_wgslsmith_mod_i32(var_0, _wgslsmith_mod_i32(var_0, u_input.c.x)), abs(abs(countOneBits(var_0))), _wgslsmith_mod_i32(10574i, 46337i) ^ u_input.c.x, _wgslsmith_div_i32(~max(1339i, var_0), -1i)), ~(vec3<i32>(-22828i, -1i, -2147483647i) >> (abs(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)) % vec3<u32>(32u))));
    var_1 = Struct_5(vec4<bool>(false, var_1.c.a.x, true, true), _wgslsmith_f_op_vec3_f32(trunc(var_1.b)), Struct_3(vec4<bool>(true, !(-1i > var_0), any(var_1.c.a), var_1.c.a.x)), vec4<i32>(-1i) * -var_1.d, var_1.e);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.b.x, 367f, all(select(select(var_1.c.a, vec4<bool>(false, false, var_1.c.a.x, false), var_1.c.a.x), var_1.a, true && var_1.a.x)))) * _wgslsmith_f_op_f32(-2152f - var_1.b.x));
    var_1 = Struct_5(select(vec4<bool>(any(var_1.a.yxy), var_1.c.a.x, true, true), var_1.c.a, true), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(var_1.b, var_1.b)))))), var_1.c, var_1.d, _wgslsmith_mult_vec3_i32(var_1.d.yxy, vec3<i32>(-2147483647i, abs(firstLeadingBit(-2147483647i)), ~(-u_input.c.x))));
    return select(var_1.a, select(vec4<bool>(all(!vec4<bool>(var_1.a.x, false, true, var_1.a.x)), any(select(vec4<bool>(var_1.c.a.x, true, var_1.a.x, var_1.a.x), vec4<bool>(false, var_1.c.a.x, false, var_1.a.x), var_1.c.a.x)), var_1.c.a.x, true), select(!var_1.c.a, vec4<bool>(true, var_1.a.x && false, var_0 <= var_1.e.x, true), select(var_1.a.x, var_1.a.x, var_1.c.a.x)), !var_1.c.a.x && (var_1.b.x < _wgslsmith_f_op_f32(var_1.b.x * var_1.b.x))), select(var_1.c.a, !vec4<bool>(true, true, true & var_1.a.x, var_1.a.x | false), select(!(!vec4<bool>(var_1.a.x, true, false, var_1.c.a.x)), !(!var_1.a), var_1.c.a)));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_5(!select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), true), false), vec4<bool>(true, true, true, true), func_3()), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(1016f, _wgslsmith_f_op_f32(arg_0.b.x + arg_0.b.x), _wgslsmith_f_op_f32(-arg_0.b.x)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.b.x, arg_2.b.x, arg_2.b.x))))))), Struct_3(vec4<bool>(func_3().x, !func_3().x, !func_3().x, true)), -vec4<i32>(u_input.c.x, -arg_0.c.x, -2147483647i, _wgslsmith_clamp_i32(_wgslsmith_div_i32(arg_1.x, arg_1.x), -2147483647i, u_input.c.x)), vec3<i32>(reverseBits(0i), abs(-reverseBits(12381i)), u_input.c.x));
    let var_1 = vec3<i32>(-(arg_0.a.x & 1i), arg_0.c.x, -(_wgslsmith_dot_vec2_i32(-u_input.c, abs(vec2<i32>(arg_1.x, var_0.e.x))) >> ((_wgslsmith_mult_u32(arg_3.x, u_input.b.x) | ~u_input.b.x) % 32u)));
    let var_2 = Struct_5(vec4<bool>(var_0.a.x, any(vec4<bool>(var_0.c.a.x == false, true, true, var_0.d.x < arg_0.a.x)), !(var_0.c.a.x || true), var_0.c.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_0.b, vec3<f32>(_wgslsmith_f_op_f32(arg_2.b.x - arg_0.b.x), _wgslsmith_f_op_f32(trunc(arg_0.b.x)), _wgslsmith_f_op_f32(select(var_0.b.x, var_0.b.x, false)))))), var_0.c, max(~vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-33166i, 16194i), arg_2.a.xx), 26339i, reverseBits(arg_0.a.x), _wgslsmith_dot_vec3_i32(arg_2.a, arg_1)), select(var_0.d, vec4<i32>(-1i, firstLeadingBit(arg_1.x), -83903i, select(arg_0.a.x, -2147483647i, var_0.a.x)), all(select(vec3<bool>(var_0.c.a.x, true, false), var_0.a.xyx, var_0.c.a.x)))), _wgslsmith_mod_vec3_i32(min(~(-vec3<i32>(arg_2.a.x, 40366i, -2772i)), var_0.d.wxw), vec3<i32>(63702i, max(2147483647i, -2147483647i), var_1.x)));
    let var_3 = arg_3;
    var var_4 = Struct_2(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(var_3.xy & (var_3.yy | vec2<u32>(arg_3.x, var_3.x)), _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_3.x, var_3.x), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, arg_3.x), vec2<u32>(u_input.b.x, 4294967295u)), vec2<u32>(81395u, u_input.b.x))), firstLeadingBit(~u_input.b)), var_0.b);
    return Struct_1(arg_1, _wgslsmith_f_op_vec2_f32(var_2.b.yx * var_4.b.xx), _wgslsmith_mod_vec2_i32(arg_0.c, -arg_1.xy & vec2<i32>(arg_2.c.x, arg_1.x)) >> (~_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(var_3.zz, var_3.xy), firstLeadingBit(vec2<u32>(4294967295u, 0u))) % vec2<u32>(32u)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32) -> bool {
    let var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(~(~14283u), _wgslsmith_mod_u32(min(max(1u, 66230u), arg_1.a), ~u_input.b.x), arg_1.a, _wgslsmith_clamp_u32(18927u, _wgslsmith_mult_u32(u_input.b.x, 4294967295u), 1u)), vec4<u32>(44201u, 4294967295u, 0u >> (~abs(arg_1.a) % 32u), firstTrailingBit(abs(select(1u, 0u, false)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_2), 308f, -1000f, _wgslsmith_f_op_f32(min(arg_1.b.x, 116f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.x, -661f, arg_0.b.x, arg_2) + vec4<f32>(arg_0.b.x, -943f, -663f, arg_1.b.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.x, arg_2, arg_0.b.x, -473f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-860f, arg_0.b.x, arg_1.b.x, 485f))) + vec4<f32>(_wgslsmith_f_op_f32(abs(arg_2)), -104f, _wgslsmith_f_op_f32(min(-770f, arg_1.b.x)), 308f))), vec4<f32>(_wgslsmith_f_op_f32(1300f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2)))), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2))), _wgslsmith_f_op_f32(arg_1.b.x - _wgslsmith_f_op_f32(abs(-211f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.b.x, -1434f))))), -39461i > _wgslsmith_div_i32(0i, -reverseBits(u_input.a))));
    let var_2 = Struct_1(-arg_0.a, _wgslsmith_f_op_vec2_f32(trunc(arg_0.b)), u_input.c);
    let var_3 = Struct_3(!vec4<bool>(_wgslsmith_f_op_f32(arg_0.b.x * -433f) > -945f, any(vec4<bool>(true, false, true, false)), any(vec3<bool>(true, true, true)), false));
    var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.x, arg_2, 591f, -1113f) - vec4<f32>(1000f, -1277f, arg_1.b.x, 532f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1537f, arg_1.b.x, arg_1.b.x, arg_0.b.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, 573f, var_1.x, -232f) + vec4<f32>(1000f, arg_2, arg_0.b.x, var_1.x)), vec4<f32>(var_2.b.x, 294f, -968f, 1268f), var_3.a.x && false))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -394f, var_1.x, 813f)) - vec4<f32>(arg_0.b.x, arg_0.b.x, -1909f, var_1.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1498f, arg_0.b.x, 446f, arg_2) - vec4<f32>(var_2.b.x, arg_2, arg_0.b.x, arg_2)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1211f, arg_0.b.x, var_2.b.x, -1078f), vec4<f32>(arg_2, arg_2, var_2.b.x, var_1.x), false))))), any(!vec2<bool>(var_3.a.x, var_3.a.x)) || true));
    return any(vec4<bool>(false, true, any(var_3.a.wwz), var_3.a.x));
}

fn func_1(arg_0: u32) -> vec2<bool> {
    return !vec2<bool>(true, func_4(func_2(Struct_1(vec3<i32>(-1i, 0i, u_input.a), vec2<f32>(-1020f, 2161f), u_input.c), vec3<i32>(u_input.c.x, u_input.c.x, u_input.a), Struct_1(vec3<i32>(-1i, u_input.a, u_input.a), vec2<f32>(1127f, 1296f), vec2<i32>(u_input.a, u_input.c.x)), vec4<u32>(39036u, u_input.b.x, u_input.b.x, 4294967295u)), Struct_2(u_input.b.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(-737f, 765f, -897f) + vec3<f32>(-206f, 418f, -528f))), -2532f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!(!(!func_1(u_input.b.x))), func_1(max(u_input.b.x, ~u_input.b.x)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, select(true, true, false))));
    let var_1 = _wgslsmith_clamp_u32(47077u, _wgslsmith_mult_u32(1u, ~(~1u)), u_input.b.x);
    let var_2 = Struct_4(var_1, Struct_2(firstLeadingBit(~u_input.b.x), vec3<f32>(1f, 1f, 1f)));
    var var_3 = abs(u_input.b & u_input.b);
    let var_4 = Struct_1(~(~vec3<i32>(u_input.c.x, reverseBits(u_input.c.x), -47235i)), var_2.b.b.xz, u_input.c << (vec2<u32>(select(_wgslsmith_div_u32(50171u, 1u), ~var_3.x, true), u_input.b.x) % vec2<u32>(32u)));
    var var_5 = abs(var_4.c.x);
    var_3 = min(~u_input.b, select(_wgslsmith_sub_vec2_u32(~(vec2<u32>(4294967295u, u_input.b.x) & vec2<u32>(4294967295u, var_1)), abs(vec2<u32>(0u, var_2.b.a))), ~vec2<u32>(var_3.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 0u, 30176u), vec4<u32>(var_3.x, var_1, 46419u, 26565u))), vec2<bool>(var_0.x, var_0.x)));
    var_3 = u_input.b;
    var_5 = _wgslsmith_dot_vec4_i32(vec4<i32>(var_4.c.x, _wgslsmith_clamp_i32(-u_input.c.x, u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.c.x, 923i, u_input.a), vec4<i32>(0i, u_input.c.x, var_4.a.x, 25702i))), 2147483647i, ~max(u_input.c.x, 1i)), ~(-vec4<i32>(u_input.a, var_4.a.x, 2147483647i, var_4.c.x))) << (_wgslsmith_sub_u32(1u, var_3.x) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.zx, ~(~vec4<i32>(1i, u_input.a, firstLeadingBit(var_4.c.x), 13830i)), -11725i & -u_input.c.x, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_2.b.b * var_2.b.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b.b.x, var_4.b.x, -404f) + vec3<f32>(-888f, 229f, var_2.b.b.x))), var_0.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.b.b * var_2.b.b) + _wgslsmith_f_op_vec3_f32(abs(var_2.b.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-302f, var_4.b.x, var_4.b.x), var_2.b.b)))))));
}

