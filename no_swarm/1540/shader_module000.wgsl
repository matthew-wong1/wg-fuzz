struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: vec2<u32>) -> u32 {
    return u_input.a;
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = ~countOneBits(func_3(Struct_1(-2147483647i, -39747i, arg_0), vec4<i32>(-274i, -35063i, -3987i, 0i), Struct_1(43983i, -2147483647i, arg_0), countOneBits(vec2<u32>(u_input.a, u_input.a)))) << (u_input.a % 32u);
    var var_1 = -1i;
    var_1 = 0i;
    var_1 = -1i;
    var var_2 = Struct_1(_wgslsmith_mult_i32(_wgslsmith_mod_i32(~(~2147483647i), _wgslsmith_mult_i32(max(1i, 0i), 1i)), i32(-1i) * -1i), _wgslsmith_mod_i32(30257i, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(-1i, 0i), _wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, -17248i), vec2<i32>(-18356i, 35676i))), firstTrailingBit(1i))), all(vec3<bool>(true, (u_input.a < var_0) | !arg_0, true)));
    return _wgslsmith_f_op_f32(f32(-1f) * -855f);
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: u32) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * -1048f));
    let var_1 = Struct_1(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(~firstTrailingBit(vec4<i32>(21431i, -1i, 0i, -15785i)), ~(-vec4<i32>(1i, -2147483647i, 13334i, -2147483647i))), firstLeadingBit(_wgslsmith_div_i32(33770i, _wgslsmith_sub_i32(23706i, -1192i)))), -23839i, false);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(var_1.c)) + _wgslsmith_f_op_f32(select(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.x)))), false)));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.x, arg_1.x, arg_1.x), vec3<f32>(arg_1.x, -767f, -193f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(206f, arg_1.x, arg_1.x))))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-588f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-757f, arg_1.x, var_1.c)) * 1192f), 153f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1.x, -935f, -3238f))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-798f, -1117f, arg_1.x) - vec3<f32>(-995f, 1004f, arg_1.x))))), var_1.c)));
    var_0 = var_3.x;
    return max(select(_wgslsmith_div_vec2_u32(~arg_0.xz, ~arg_0.zy), _wgslsmith_sub_vec2_u32(arg_0.xy, select(vec2<u32>(71300u, arg_2), vec2<u32>(21605u, 9145u), vec2<bool>(true, var_1.c))) & (arg_0.yx & ~vec2<u32>(arg_0.x, u_input.a)), select(select(!vec2<bool>(var_1.c, var_1.c), !vec2<bool>(false, var_1.c), all(vec2<bool>(var_1.c, true))), select(!vec2<bool>(var_1.c, var_1.c), !vec2<bool>(var_1.c, var_1.c), vec2<bool>(true, true)), vec2<bool>(var_1.c, all(vec3<bool>(false, true, var_1.c))))), firstTrailingBit(abs(_wgslsmith_div_vec2_u32(vec2<u32>(51332u, u_input.a), arg_0.yz))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!(!vec3<bool>(true, all(vec2<bool>(false, false)), false)), vec3<bool>((u_input.a < _wgslsmith_mult_u32(u_input.a, u_input.a)) == false, 1i < max(_wgslsmith_add_i32(30362i, 2621i), select(16126i, 31398i, true)), true), !select(vec3<bool>(all(vec4<bool>(true, false, true, true)), all(vec2<bool>(false, false)), true), vec3<bool>(true, true, true), false));
    let var_1 = Struct_1(_wgslsmith_clamp_i32(-2147483647i, select(max(2940i, ~57001i), 1i, !(!var_0.x)), -2147483647i), countOneBits(-1i), var_0.x);
    var var_2 = !(!(!vec2<bool>(!var_1.c, var_1.c)));
    var_2 = !(!var_0.xx);
    let var_3 = min(func_1(_wgslsmith_div_vec3_u32(min(vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)) & vec3<u32>(4294967295u, 4294967295u, u_input.a), vec3<u32>(1u & u_input.a, 83200u ^ u_input.a, u_input.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 521f)), vec2<f32>(206f, -227f)))), ~(~u_input.a)), ~select(abs(vec2<u32>(12676u, u_input.a)), ~vec2<u32>(u_input.a, 0u), vec2<bool>(var_2.x || true, !var_1.c)));
    var var_4 = ~(~(_wgslsmith_add_vec3_i32(abs(vec3<i32>(var_1.b, -1i, var_1.b)), select(vec3<i32>(2147483647i, var_1.a, -11956i), vec3<i32>(var_1.b, var_1.a, -1i), false)) | firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, -14176i, var_1.a), vec3<i32>(var_1.a, 0i, var_1.a)))));
    let var_5 = 4294967295u;
    var var_6 = all(var_0.zy);
    let var_7 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(min(reverseBits(u_input.a), ~var_3.x), var_3.x, u_input.a, reverseBits(countOneBits(~1u))), ~(var_3.x | 0u), _wgslsmith_div_vec4_u32(~vec4<u32>(func_1(vec3<u32>(var_3.x, var_3.x, var_3.x), vec2<f32>(-1178f, 187f), var_5).x, func_1(vec3<u32>(46033u, 4294967295u, 56681u), vec2<f32>(1000f, -856f), 68199u).x, _wgslsmith_div_u32(u_input.a, 101764u), 963u), vec4<u32>(func_1(vec3<u32>(var_3.x, var_5, 34228u) << (vec3<u32>(var_3.x, u_input.a, u_input.a) % vec3<u32>(32u)), vec2<f32>(-920f, 1251f), 1u).x, firstTrailingBit(_wgslsmith_mult_u32(1u, 1u)), ~func_3(Struct_1(var_1.b, 57597i, true), vec4<i32>(var_4.x, var_4.x, 1i, 2147483647i), var_1, vec2<u32>(0u, 3048u)), ~abs(4294967295u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2063f)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-221f)) + -220f), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - 1459f) - _wgslsmith_div_f32(-488f, 978f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(447f * 690f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1048f - -1064f) + -2004f))));
}

