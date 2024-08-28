struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> i32 {
    let var_0 = -firstLeadingBit(vec2<i32>(~0i, -1i));
    let var_1 = _wgslsmith_div_vec3_u32(vec3<u32>(0u | ~(u_input.b.x | u_input.b.x), _wgslsmith_dot_vec2_u32(max(vec2<u32>(u_input.b.x, 80810u), vec2<u32>(1u, u_input.b.x)), vec2<u32>(0u ^ u_input.b.x, u_input.b.x & 94431u)), ~((u_input.b.x | 4294967295u) | (u_input.b.x >> (u_input.b.x % 32u)))), select(firstTrailingBit(~(~vec3<u32>(4294967295u, 1u, 4294967295u))), vec3<u32>(78349u, u_input.b.x, 0u), !vec3<bool>(all(vec2<bool>(true, true)), all(vec3<bool>(true, true, false)), true)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-412f)), 907f)))) + 941f));
    let var_3 = 2147483647i;
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)) - 975f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2, -280f))));
    return ~var_3;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> vec4<i32> {
    let var_0 = _wgslsmith_dot_vec2_u32(u_input.b.yz, _wgslsmith_mod_vec2_u32(vec2<u32>(~u_input.b.x, u_input.b.x), _wgslsmith_div_vec2_u32(vec2<u32>(11057u, ~0u), vec2<u32>(~u_input.b.x, ~30161u))));
    let var_1 = arg_0.a.x >= u_input.a;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(324f)));
    let var_3 = vec2<bool>(true, var_1);
    var_2 = -1000f;
    return reverseBits(~max(arg_1.b.a, (vec4<i32>(0i, u_input.a, arg_1.a, -2147483647i) | vec4<i32>(21572i, 2147483647i, u_input.a, -24865i)) ^ abs(vec4<i32>(arg_0.a.x, 26062i, arg_0.a.x, arg_1.b.a.x))));
}

fn func_2() -> vec3<u32> {
    var var_0 = Struct_1(~vec4<i32>(u_input.a, ~33171i ^ _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(0i, 56757i)), -(i32(-1i) * -1i), _wgslsmith_mult_i32(36705i, u_input.a)));
    var var_1 = var_0.a;
    var_0 = Struct_1(firstLeadingBit(var_0.a));
    let var_2 = abs(abs(func_4(Struct_1(_wgslsmith_clamp_vec4_i32(var_0.a, var_0.a, vec4<i32>(1i, var_1.x, 2147483647i, var_0.a.x))), Struct_2(func_3(), Struct_1(var_0.a)))));
    var_0 = Struct_1(var_2);
    return u_input.b;
}

fn func_5(arg_0: vec3<u32>, arg_1: i32, arg_2: vec2<i32>, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_add_vec4_u32(reverseBits(_wgslsmith_mod_vec4_u32(~(vec4<u32>(u_input.b.x, 0u, 1u, 33184u) << (vec4<u32>(1u, 1u, u_input.b.x, 26452u) % vec4<u32>(32u))), vec4<u32>(4294967295u, firstTrailingBit(13103u), firstLeadingBit(8631u), arg_0.x))), max(~(vec4<u32>(arg_0.x, arg_0.x, u_input.b.x, 39300u) & vec4<u32>(4294967295u, 0u, 4294967295u, u_input.b.x)) ^ ~vec4<u32>(arg_0.x, 1u, arg_0.x, 6746u), vec4<u32>(u_input.b.x, u_input.b.x, 1u, reverseBits(min(1u, u_input.b.x)))));
    let var_1 = vec4<i32>(-1i, abs(-1i) & select(arg_2.x & arg_2.x, func_4(Struct_1(vec4<i32>(20120i, arg_1, arg_1, 30004i)), Struct_2(arg_1, Struct_1(vec4<i32>(arg_1, 5193i, u_input.a, arg_1)))).x, 5466i == u_input.a), arg_1, -_wgslsmith_mult_i32(arg_2.x, i32(-1i) * -1i)) << (var_0 % vec4<u32>(32u));
    return Struct_1(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(abs(_wgslsmith_add_vec4_i32(vec4<i32>(arg_1, u_input.a, 4118i, var_1.x), var_1)), func_4(Struct_1(var_1), Struct_2(2147483647i, Struct_1(var_1)))), min(reverseBits(-var_1), ~(-vec4<i32>(u_input.a, -2147483647i, u_input.a, 0i)))));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = func_5(~(select(abs(u_input.b), u_input.b, !arg_0) ^ (func_2() << (vec3<u32>(u_input.b.x, u_input.b.x, 28901u) % vec3<u32>(32u)))), u_input.a, (~vec2<i32>(u_input.a, u_input.a) & (vec2<i32>(1i, 1i) ^ firstLeadingBit(vec2<i32>(u_input.a, 2147483647i)))) & ~(-abs(vec2<i32>(u_input.a, u_input.a))), vec3<f32>(-1335f, arg_1, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-427f - -1180f)))));
    let var_1 = firstTrailingBit(func_2());
    var var_2 = Struct_1(vec4<i32>(-49542i, 1i, min(-21229i, _wgslsmith_dot_vec2_i32(var_0.a.zw, ~var_0.a.wz)), firstLeadingBit(~min(-2147483647i, var_0.a.x))));
    var_0 = func_5(vec3<u32>(44734u, 50397u, 13517u), var_2.a.x >> (1u % 32u), vec2<i32>((i32(-1i) * -2147483647i) >> (~var_1.x % 32u), _wgslsmith_mod_i32(_wgslsmith_mult_i32(firstTrailingBit(var_0.a.x), 29335i << (var_1.x % 32u)), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(46256i, -2147483647i, var_2.a.x), 2335i))), vec3<f32>(arg_1, arg_1, 2754f));
    var_2 = Struct_1(-vec4<i32>(_wgslsmith_dot_vec3_i32(var_2.a.xyw, var_2.a.wwx), 31859i, _wgslsmith_mult_i32(u_input.a, 23775i), _wgslsmith_div_i32(-1i, 2147483647i)) & -(-vec4<i32>(-7043i, -44302i, u_input.a, var_0.a.x) | -var_0.a));
    return func_5(vec3<u32>(u_input.b.x, ~(~(~22253u)), ~1u), 1i, vec2<i32>(_wgslsmith_mult_i32(min(u_input.a, var_2.a.x), func_4(Struct_1(var_0.a), Struct_2(-17515i, Struct_1(vec4<i32>(39864i, -24975i, -3466i, 26996i)))).x) ^ 2147483647i, var_0.a.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1, arg_1, arg_1), vec3<f32>(arg_1, 1000f, -2198f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, 140f)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, 686f)), vec3<f32>(arg_1, arg_1, arg_1), vec3<bool>(true, arg_0, arg_2.x))))));
}

fn func_6(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_1;
    var var_1 = vec2<bool>(true, false);
    var_1 = vec2<bool>(true, var_1.x);
    var var_2 = all(!vec4<bool>(var_1.x, !(!var_1.x), max(u_input.a, u_input.a) >= u_input.a, var_1.x));
    let var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0))))));
    return arg_2;
}

fn func_7(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec4<bool>) -> Struct_2 {
    var var_0 = arg_2;
    var var_1 = ~arg_0;
    var var_2 = true;
    var var_3 = Struct_2(var_0.a, Struct_1(arg_1.a));
    let var_4 = Struct_2(-20749i, Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(32483i << (0u % 32u), -2147483647i, var_3.a, -1i), arg_2.b.a)));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(firstLeadingBit(~(~vec4<u32>(78678u, 0u, u_input.b.x, u_input.b.x))), func_6(286f, Struct_2(u_input.a, func_1(true, _wgslsmith_div_f32(-929f, -413f), vec4<bool>(true, true, true, false))), Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, u_input.a, -2518i, -2147483647i), abs(vec4<i32>(u_input.a, 45582i, 42102i, u_input.a)), vec4<i32>(u_input.a, u_input.a, u_input.a, 18704i)))), Struct_2(firstLeadingBit(u_input.a), Struct_1(~(-vec4<i32>(-2271i, -16048i, u_input.a, u_input.a)))), select(select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true)), vec4<bool>(any(vec3<bool>(false, false, true)), false, all(vec2<bool>(true, true)), select(false, true, true)), true), vec4<bool>(true, true, true, true), select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false))), vec4<bool>(true, true, true, true), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_u32(u_input.b.zx, ~vec2<u32>(31230u, _wgslsmith_dot_vec2_u32(u_input.b.xx, vec2<u32>(60322u, u_input.b.x)))));
}

