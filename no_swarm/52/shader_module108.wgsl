struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32) -> vec4<bool> {
    var var_0 = 760f;
    let var_1 = 8103i;
    var var_2 = Struct_2(_wgslsmith_dot_vec3_i32(-vec3<i32>(-19474i, -30992i, -1i), -vec3<i32>(arg_0.a, 2147483647i, firstLeadingBit(44385i))));
    var var_3 = Struct_1(true, any(!select(vec2<bool>(arg_1.b, arg_1.a), !vec2<bool>(false, arg_1.a), all(vec4<bool>(arg_1.b, arg_1.b, false, arg_1.a)))));
    var var_4 = ~vec2<u32>(arg_2, 0u);
    return select(select(vec4<bool>(!arg_1.b && false, var_3.a, max(-1i, var_1) > 1i, true), vec4<bool>((arg_2 & 1u) >= u_input.a, false, true, !select(false, true, true)), arg_1.b), !select(select(!vec4<bool>(false, true, var_3.a, true), vec4<bool>(var_3.a, true, false, arg_1.a), select(vec4<bool>(var_3.a, false, arg_1.a, arg_1.b), vec4<bool>(arg_1.b, true, arg_1.b, arg_1.b), true)), vec4<bool>(true, all(vec4<bool>(arg_1.a, true, arg_1.a, true)), true, true), vec4<bool>(select(false, arg_1.b, true), all(vec4<bool>(arg_1.b, arg_1.b, var_3.a, true)), !var_3.b, !arg_1.a)), !var_3.a);
}

fn func_4(arg_0: i32, arg_1: vec4<bool>, arg_2: u32) -> bool {
    var var_0 = Struct_1(false, true);
    let var_1 = arg_1;
    var_0 = Struct_1(func_3(Struct_2(~(-9745i ^ u_input.b)), Struct_1(true, true & var_0.a), u_input.a).x, var_1.x);
    var_0 = Struct_1(true, true);
    let var_2 = Struct_2(2147483647i);
    return !(u_input.c >= -56713i);
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: f32, arg_3: i32) -> f32 {
    var var_0 = Struct_2(-firstTrailingBit(_wgslsmith_clamp_i32(arg_3, 1i, _wgslsmith_mod_i32(-54685i, u_input.c))));
    var var_1 = Struct_1(true, arg_0.a && func_4(u_input.c, select(func_3(Struct_2(var_0.a), arg_0, 0u), select(vec4<bool>(true, true, arg_0.a, false), vec4<bool>(true, arg_0.a, arg_0.a, arg_0.b), vec4<bool>(true, arg_0.b, true, arg_0.b)), vec4<bool>(false, arg_0.b, false, arg_0.b)), ~countOneBits(u_input.a)));
    var var_2 = abs(_wgslsmith_dot_vec4_i32(~(~select(vec4<i32>(6287i, u_input.c, var_0.a, -1i), vec4<i32>(1i, 0i, 0i, var_0.a), vec4<bool>(true, false, arg_0.a, false))), abs(vec4<i32>(var_0.a, -8125i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_3, -2147483647i, arg_3), vec3<i32>(9288i, 2147483647i, arg_3)), min(arg_3, var_0.a)))));
    var_0 = Struct_2(arg_3);
    let var_3 = arg_0;
    return -636f;
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(488f - -924f), -2319f, _wgslsmith_f_op_f32(f32(-1f) * -162f)))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-166f, _wgslsmith_f_op_f32(-1000f + -1005f), -181f), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 1813f, 1000f), vec3<f32>(444f, 1141f, -565f)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1021f, 1000f, 461f), vec3<f32>(-567f, -216f, 932f))))))) - vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(false, false), -902f, 214f, u_input.b)) + _wgslsmith_f_op_f32(-1259f - 610f)), _wgslsmith_f_op_f32(abs(-813f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2326f))), _wgslsmith_f_op_f32(max(-427f, _wgslsmith_f_op_f32(step(-614f, _wgslsmith_f_op_f32(abs(-218f))))))));
    let var_1 = Struct_2(~1261i);
    var var_2 = Struct_1(all(func_3(Struct_2(-1i), Struct_1(true, true), u_input.a).xyx), -64944i >= _wgslsmith_mod_i32(1i, var_1.a));
    let var_3 = Struct_1(var_2.a, true);
    var var_4 = Struct_1(true, var_0.x <= var_0.x);
    return false;
}

fn func_5(arg_0: vec4<u32>) -> u32 {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(450f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-143f))), _wgslsmith_f_op_f32(f32(-1f) * -278f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(247f * 539f), -708f, -898f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1257f, 913f, 1651f))) * vec3<f32>(-109f, -676f, 107f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-732f, -1231f, 2081f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1083f), _wgslsmith_f_op_f32(func_2(Struct_1(true, true), -1000f, 224f, -1i)), 295f), any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false))))), all(func_3(Struct_2(1i), Struct_1(true, true), _wgslsmith_mod_u32(u_input.a, 45059u))))));
    let var_1 = firstTrailingBit(reverseBits(arg_0.wz));
    var var_2 = var_1.x << (u_input.a % 32u);
    var_2 = ~(arg_0.x ^ 21894u);
    var var_3 = Struct_1(firstTrailingBit(29433u) != u_input.a, !all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(false, false, false))));
    return reverseBits(u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(true, true);
    var var_1 = 1i;
    let var_2 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) * _wgslsmith_f_op_f32(ceil(-484f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(1509f, -601f, var_0.b))))), _wgslsmith_f_op_f32(293f - _wgslsmith_f_op_f32(-106f * _wgslsmith_f_op_f32(step(594f, -558f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(abs(-878f)))))));
    var_1 = -1i;
    var var_3 = -(vec2<i32>(2147483647i, -1i) >> (~(~(~vec2<u32>(44715u, u_input.a))) % vec2<u32>(32u)));
    let var_4 = func_5(_wgslsmith_add_vec4_u32(select(vec4<u32>(u_input.a, 1u, 22510u, u_input.a) >> (vec4<u32>(3468u, u_input.a, 4810u, 0u) % vec4<u32>(32u)), ~vec4<u32>(u_input.a, u_input.a, 1u, 1u), func_1()), vec4<u32>(0u, u_input.a, ~49281u, 4294967295u))) & (u_input.a << (~u_input.a % 32u));
    var_3 = vec2<i32>(u_input.c, -select(-2147483647i, -u_input.c, _wgslsmith_mult_u32(4294967295u, 1u) < ~u_input.a));
    var_3 = min((vec2<i32>(u_input.c, _wgslsmith_add_i32(var_3.x, -10874i)) << ((vec2<u32>(1u, u_input.a) << (_wgslsmith_sub_vec2_u32(vec2<u32>(var_4, 66474u), vec2<u32>(u_input.a, var_4)) % vec2<u32>(32u))) % vec2<u32>(32u))) | reverseBits(~vec2<i32>(u_input.b, -2147483647i)), ~select(reverseBits(vec2<i32>(0i, u_input.b) << (vec2<u32>(u_input.a, var_4) % vec2<u32>(32u))), ~(-vec2<i32>(u_input.b, u_input.c)), !(!vec2<bool>(var_0.b, false))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(sign(var_2.x)), _wgslsmith_f_op_f32(-var_2.x), var_2.x) + vec4<f32>(_wgslsmith_f_op_f32(abs(-156f)), -881f, _wgslsmith_f_op_f32(ceil(1923f)), _wgslsmith_f_op_f32(f32(-1f) * -472f))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) * var_2.x), var_2.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.x))), var_2.x)));
}

