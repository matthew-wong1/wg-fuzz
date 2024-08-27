struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
    d: vec4<u32>,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4, arg_2: f32) -> i32 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(-443f - _wgslsmith_f_op_f32(-arg_2))))), Struct_1(countOneBits(reverseBits(vec2<i32>(u_input.a.x, -1i))) & vec2<i32>(13400i, abs(1i)), _wgslsmith_mult_i32(u_input.b.x, max(-10406i, u_input.d.x)) ^ 1i), Struct_2(Struct_1(~select(u_input.d, vec2<i32>(1i, -23230i), arg_1.a.x), u_input.b.x), Struct_1(abs(reverseBits(u_input.a)), u_input.a.x), Struct_1(u_input.d, 1i)), countOneBits(countOneBits(abs(vec4<u32>(0u, 0u, 59109u, 52463u)))));
    var_0 = Struct_3(arg_2, Struct_1(u_input.a, ~(-2147483647i)), var_0.c, var_0.d);
    var_0 = Struct_3(var_0.a, var_0.c.b, Struct_2(Struct_1(-(vec2<i32>(u_input.b.x, 332i) | var_0.c.a.a), var_0.b.b), Struct_1(u_input.d, -20056i), var_0.b), ~firstTrailingBit(~_wgslsmith_div_vec4_u32(var_0.d, var_0.d)));
    var var_1 = arg_1.a;
    var_0 = Struct_3(var_0.a, var_0.b, var_0.c, var_0.d);
    return ~(~1i);
}

fn func_2(arg_0: vec2<i32>) -> vec3<f32> {
    let var_0 = Struct_2(Struct_1(vec2<i32>(-2147483647i, ~(-2105i)), reverseBits(~arg_0.x)), Struct_1(vec2<i32>(~func_3(Struct_4(vec2<bool>(true, true)), Struct_4(vec2<bool>(false, true)), -1171f), _wgslsmith_div_i32(~(-1i), arg_0.x)), _wgslsmith_clamp_i32(u_input.d.x, -31673i, 2147483647i)), Struct_1(vec2<i32>(~arg_0.x, 2147483647i), -func_3(Struct_4(vec2<bool>(false, true)), Struct_4(vec2<bool>(false, false)), -1000f)));
    var var_1 = abs(vec3<u32>(4294967295u, ~0u, 1u));
    var var_2 = Struct_2(Struct_1(vec2<i32>(-1i) * -arg_0, 27459i), Struct_1(u_input.d, _wgslsmith_dot_vec3_i32(u_input.b, -(~u_input.b))), var_0.c);
    var_1 = ~vec3<u32>(6442u, var_1.x, 0u);
    var var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1471f))), 1f), 103f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(468f, 277f)))), vec2<f32>(_wgslsmith_f_op_f32(-1387f + -2542f), -1680f)))));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -369f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_3.x)))));
}

fn func_4(arg_0: vec3<f32>) -> i32 {
    let var_0 = func_3(Struct_4(vec2<bool>(0i <= u_input.b.x, true)), Struct_4(!select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)))), _wgslsmith_f_op_f32(f32(-1f) * -564f));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_2(u_input.d)).x))), Struct_1(u_input.d, i32(-1i) * -_wgslsmith_mult_i32(var_0, -1i)), Struct_2(Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(10034i, var_0), _wgslsmith_mod_vec2_i32(u_input.a, u_input.b.xx)), _wgslsmith_mod_i32(u_input.c, -var_0)), Struct_1(u_input.a, _wgslsmith_div_i32(-36645i, 1i)), Struct_1(u_input.b.xy, -u_input.c)), ~vec4<u32>(1u, 1u, 1u, 1u));
    let var_2 = false;
    var_1 = Struct_3(_wgslsmith_f_op_f32(-var_1.a), Struct_1(_wgslsmith_clamp_vec2_i32(-vec2<i32>(var_1.c.b.a.x, -2147483647i), u_input.b.yz, _wgslsmith_mod_vec2_i32(-var_1.b.a, countOneBits(vec2<i32>(var_0, u_input.d.x)))), var_1.c.c.b), var_1.c, select(var_1.d, _wgslsmith_add_vec4_u32(var_1.d, vec4<u32>(21066u & var_1.d.x, 77155u >> (1u % 32u), var_1.d.x ^ 10552u, _wgslsmith_sub_u32(var_1.d.x, var_1.d.x))), select(select(!vec4<bool>(var_2, true, var_2, var_2), !vec4<bool>(var_2, var_2, true, true), var_2), vec4<bool>(true, true, var_2, var_2), var_2)));
    let var_3 = min(vec3<u32>(_wgslsmith_sub_u32(var_1.d.x | (21202u >> (var_1.d.x % 32u)), 18724u), firstLeadingBit(~_wgslsmith_dot_vec2_u32(var_1.d.wx, vec2<u32>(var_1.d.x, 0u))), _wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(11628u, var_1.d.x), 44022u), var_1.d.x)), var_1.d.zzw);
    return u_input.c;
}

fn func_1(arg_0: Struct_5, arg_1: vec2<bool>, arg_2: f32) -> vec2<i32> {
    let var_0 = vec2<i32>(~(~(-countOneBits(u_input.a.x))), func_4(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(vec2<i32>(28102i, u_input.b.x))) - vec3<f32>(arg_2, 555f, arg_2)), vec3<f32>(-1121f, _wgslsmith_f_op_f32(floor(arg_2)), _wgslsmith_f_op_f32(-524f * arg_2))))));
    let var_1 = ~var_0.x;
    var var_2 = _wgslsmith_mult_vec4_i32(-abs(vec4<i32>(var_0.x, var_1, -var_1, u_input.a.x)), _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(abs(16386i), ~(-43976i), ~var_0.x, -81579i), _wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(var_0.x, -2147483647i, u_input.a.x, u_input.d.x)), max(vec4<i32>(var_1, 2147483647i, u_input.c, u_input.c), vec4<i32>(var_1, 1i, var_0.x, u_input.a.x)), vec4<i32>(var_0.x, -2147483647i, u_input.b.x, var_1)), vec4<i32>(var_0.x, var_0.x, -var_0.x, 1i)), vec4<i32>(_wgslsmith_dot_vec4_i32(max(vec4<i32>(-2147483647i, 47620i, u_input.d.x, 2147483647i), vec4<i32>(11805i, u_input.d.x, 1i, var_0.x)), min(vec4<i32>(2147483647i, -15248i, 70397i, 1i), vec4<i32>(4438i, -2147483647i, var_0.x, 24911i))), -_wgslsmith_add_i32(9725i, u_input.b.x), u_input.b.x, ~(-u_input.a.x))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_2, 1371f)))))))));
    var_2 = -(~(-vec4<i32>(58310i, u_input.c, var_2.x, var_1) | _wgslsmith_sub_vec4_i32(~vec4<i32>(1i, 1i, var_1, var_1), vec4<i32>(-2147483647i, -4940i, var_0.x, u_input.d.x))));
    return countOneBits(countOneBits(vec2<i32>(var_2.x, -29915i)) & ~(_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, -43744i), vec2<i32>(u_input.d.x, 18740i)) << (vec2<u32>(1u, 1u) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_5(true), vec2<bool>(!all(vec4<bool>(false, false, false, true)), all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), -827f);
    var var_1 = vec3<bool>(true, true, true);
    var_1 = !select(!select(select(vec3<bool>(var_1.x, false, true), vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x)), vec3<bool>(var_1.x, true, true), select(vec3<bool>(true, false, true), vec3<bool>(var_1.x, true, var_1.x), true)), !vec3<bool>(var_1.x, true, !var_1.x), vec3<bool>(!(!var_1.x), var_1.x, !select(var_1.x, false, var_1.x)));
    var var_2 = Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(u_input.d.x, 2147483647i), -var_0.x), vec2<i32>(-var_0.x, -1i)) | func_1(Struct_5(!var_1.x), select(var_1.xz, vec2<bool>(var_1.x, false), true != var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(150f, -914f))), _wgslsmith_add_i32(-49962i << (_wgslsmith_dot_vec4_u32(~vec4<u32>(81874u, 1u, 4294967295u, 4294967295u), ~vec4<u32>(0u, 0u, 6215u, 0u)) % 32u), func_3(Struct_4(var_1.zx), Struct_4(vec2<bool>(false, var_1.x)), -328f) ^ u_input.a.x));
    let var_3 = Struct_5(-50710i <= -_wgslsmith_sub_i32(var_0.x, func_1(Struct_5(var_1.x), var_1.zy, -298f).x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(~(~(~vec2<u32>(36273u, 0u))), firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), firstTrailingBit(vec2<u32>(1u, 59602u)), firstLeadingBit(vec2<u32>(4294967295u, 1u))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(1297f, -1298f, -754f), vec3<f32>(330f, -381f, -343f)))))), vec3<i32>(_wgslsmith_dot_vec3_i32(max(vec3<i32>(-11994i, u_input.b.x, var_0.x), vec3<i32>(u_input.d.x, 0i, 30631i)), ~vec3<i32>(-1i, var_2.b, u_input.b.x)), 1i, u_input.a.x) << ((vec3<u32>(1u, 1u, 1u) ^ select(~vec3<u32>(4294967295u, 17612u, 63805u), abs(vec3<u32>(2700u, 20869u, 172u)), var_1.x)) % vec3<u32>(32u)));
}

