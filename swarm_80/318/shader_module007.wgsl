struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<u32>,
    e: i32,
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> bool {
    let var_0 = Struct_1(true, vec4<bool>(false, any(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1486f - -216f)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1260f, -835f)) + _wgslsmith_f_op_f32(-496f - 873f)), select(any(vec2<bool>(true, true)), all(vec3<bool>(true, false, true)), false)), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(u_input.c, select(u_input.b.x, 20624u, true)), 27245u), abs(~u_input.b.ww)), max(vec2<u32>(u_input.b.x, _wgslsmith_mult_u32(~u_input.c, ~34690u)), ~vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.b.zyw, u_input.b.www), u_input.d.x)), -27959i);
    var var_1 = firstTrailingBit(countOneBits(select(u_input.a.x, abs(-1i), var_0.a))) | 1i;
    var var_2 = -959f;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(229f * -2162f));
    var_1 = var_0.e;
    return all(var_0.b.xx);
}

fn func_2() -> bool {
    let var_0 = Struct_1(all(vec3<bool>(true, true, true)) | select(true == (-5494i == u_input.e), true, !select(true, true, false)), select(vec4<bool>(true, all(vec2<bool>(true, false)), any(vec3<bool>(true, true, true)), any(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)))), !vec4<bool>(true, true, true, func_3()), all(vec4<bool>(true, true, true, true))), 0u, u_input.b.wx, firstTrailingBit(-26884i));
    let var_1 = Struct_1(all(!(!(!vec2<bool>(true, var_0.b.x)))), var_0.b, 77920u, vec2<u32>(~0u, 0u), -(var_0.e >> (~(u_input.c << (var_0.d.x % 32u)) % 32u)));
    var var_2 = reverseBits(firstLeadingBit(~(~var_1.d.x)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2421f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1535f), -1000f, !var_1.b.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1210f, 166f, true))))));
    let var_4 = var_0;
    return _wgslsmith_dot_vec2_u32(vec2<u32>(4542u, var_1.d.x), abs(vec2<u32>(~4294967295u, var_0.d.x))) != firstLeadingBit(_wgslsmith_mult_u32(var_4.d.x, var_1.c));
}

fn func_1(arg_0: Struct_1) -> vec2<i32> {
    var var_0 = arg_0.e;
    let var_1 = !select(!arg_0.b.xx, !vec2<bool>(false, func_2()), arg_0.b.yw);
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1631f, 200f))))))), -150f);
    let var_4 = _wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.c), vec2<u32>(arg_0.c, 0u)), 24200u), 1u & arg_0.c, abs(_wgslsmith_mult_u32(47845u, arg_0.d.x)))), firstTrailingBit(_wgslsmith_sub_vec3_u32(~vec3<u32>(arg_0.d.x, arg_0.d.x, u_input.d.x), min(~vec3<u32>(0u, u_input.b.x, 20124u), vec3<u32>(arg_0.c, arg_0.c, u_input.b.x)))));
    return vec2<i32>(u_input.a.x, -u_input.a.x) << (_wgslsmith_sub_vec2_u32(select(arg_0.d, _wgslsmith_div_vec2_u32(~vec2<u32>(51495u, 49904u), ~vec2<u32>(21435u, 3417u)), false), var_4.xz) % vec2<u32>(32u));
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: Struct_1, arg_3: vec2<i32>) -> f32 {
    var var_0 = u_input.b;
    var_0 = u_input.b;
    var var_1 = Struct_1(any(!arg_2.b.yy), vec4<bool>((i32(-1i) * -arg_2.e) > _wgslsmith_dot_vec3_i32(min(vec3<i32>(u_input.a.x, -1i, -1i), u_input.a), countOneBits(u_input.a)), arg_0, false, arg_0), u_input.b.x, u_input.b.xz, ~arg_3.x);
    var_1 = Struct_1(true, vec4<bool>(arg_0, true, !all(!var_1.b.yzz), 911f > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -733f)))), ~(85527u ^ arg_2.c), ~(~vec2<u32>(17195u, var_0.x)) << (vec2<u32>(reverseBits(33962u | u_input.d.x), ~_wgslsmith_mod_u32(var_1.d.x, u_input.d.x)) % vec2<u32>(32u)), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(firstTrailingBit(u_input.a.zz << (vec2<u32>(65426u, 56160u) % vec2<u32>(32u))), arg_3), u_input.a.xx));
    var_0 = ~u_input.b;
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(func_4(!(4294967295u != u_input.c), any(vec3<bool>(true, true, true)), Struct_1(true, vec4<bool>(false, true, true, true), ~1u, u_input.b.zy | u_input.d, ~u_input.e), _wgslsmith_add_vec2_i32(func_1(Struct_1(true, vec4<bool>(false, false, false, true), u_input.c, u_input.d, -2147483647i)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, u_input.e), vec2<i32>(u_input.a.x, u_input.e))))), _wgslsmith_f_op_f32(-1916f * 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1355f)))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(400f, 310f, -788f, -941f) + vec4<f32>(831f, -543f, 251f, 2114f)) + vec4<f32>(-1819f, -481f, 970f, 1000f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1372f, -811f, -118f, -2170f) * vec4<f32>(-563f, -1000f, 497f, 1701f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(530f, 354f, -218f, -1000f))) + vec4<f32>(_wgslsmith_f_op_f32(-628f * 1626f), _wgslsmith_f_op_f32(abs(609f)), -1000f, 1520f)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-var_0.xy);
    var var_2 = Struct_1(any(!(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false))), vec4<bool>(!((u_input.a.x <= u_input.a.x) != all(vec2<bool>(false, true))), true, !func_3(), true), _wgslsmith_clamp_u32(u_input.c, min(_wgslsmith_div_u32(~u_input.b.x, _wgslsmith_mod_u32(u_input.c, 34179u)), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, 6820u, u_input.b.x, 12404u)), 1u)), 0u), u_input.b.yy, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.a.xx, select(vec2<i32>(-1i, -21034i), u_input.a.zy, false) & _wgslsmith_sub_vec2_i32(u_input.a.xx, u_input.a.zz)), -2147483647i));
    let var_3 = select(select(vec3<bool>(func_2(), true, false), select(select(select(var_2.b.zyy, var_2.b.wwx, var_2.a), !vec3<bool>(var_2.a, var_2.a, false), any(vec4<bool>(var_2.a, var_2.a, var_2.a, true))), var_2.b.zyz, _wgslsmith_mod_u32(1u, u_input.c) < 0u), all(vec4<bool>(!var_2.a, var_2.b.x, var_2.a | false, 78348u != var_2.d.x))), !select(select(var_2.b.zzw, vec3<bool>(true, var_2.b.x, var_2.b.x), true), select(select(var_2.b.xxy, var_2.b.xyx, var_2.b.yzw), !var_2.b.xyy, var_2.b.x), any(select(vec4<bool>(var_2.a, false, false, var_2.a), var_2.b, var_2.b.x))), select(vec3<bool>(true, func_2(), true), var_2.b.xzy, any(!var_2.b.ywy)));
    var var_4 = var_3.x;
    let var_5 = Struct_1(true, vec4<bool>(var_2.b.x, !var_3.x, ((u_input.a.x != u_input.e) == true) | all(!vec2<bool>(var_2.b.x, false)), var_2.b.x), firstLeadingBit(_wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, u_input.c, 1u, var_2.c), u_input.b), u_input.b)), var_2.d, _wgslsmith_dot_vec4_i32(vec4<i32>(~2147483647i, _wgslsmith_mod_i32(1i, -u_input.a.x), 1i, var_2.e), _wgslsmith_mod_vec4_i32(select(abs(vec4<i32>(var_2.e, 47315i, var_2.e, u_input.e)), -vec4<i32>(var_2.e, -1i, -20487i, var_2.e), select(var_2.b.x, false, var_2.b.x)), (vec4<i32>(0i, u_input.e, u_input.a.x, -48771i) >> (vec4<u32>(u_input.d.x, var_2.c, var_2.c, 0u) % vec4<u32>(32u))) ^ vec4<i32>(34188i, -25811i, 60601i, 0i))));
    let var_6 = Struct_1(false, vec4<bool>(func_3(), var_3.x, func_3(), false), reverseBits(u_input.b.x), vec2<u32>(0u, abs(var_2.c) & var_5.d.x) & u_input.d, ~firstLeadingBit(~(var_5.e | u_input.a.x)));
    var var_7 = _wgslsmith_mod_u32(~abs(_wgslsmith_dot_vec2_u32(vec2<u32>(19490u, var_5.c), reverseBits(var_5.d))), u_input.c);
    let var_8 = _wgslsmith_mult_u32(_wgslsmith_sub_u32(49462u, u_input.b.x) & var_2.c, 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(max(vec2<u32>(var_8, ~u_input.b.x), var_6.d >> (vec2<u32>(_wgslsmith_clamp_u32(67377u, 1u, 57963u), 1u) % vec2<u32>(32u))));
}

