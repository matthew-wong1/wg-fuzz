struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: f32, arg_2: vec4<i32>) -> vec2<f32> {
    let var_0 = Struct_4(-13955i);
    var var_1 = ~vec4<u32>(~(~(4294967295u & u_input.a)), ~12253u, _wgslsmith_dot_vec4_u32(~(vec4<u32>(13805u, u_input.a, u_input.a, 57523u) >> (vec4<u32>(4294967295u, 54630u, 4294967295u, u_input.a) % vec4<u32>(32u))), ~(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) & vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))), 1u);
    var_1 = _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(reverseBits(min(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, var_1.x, 4294967295u, u_input.a), vec4<u32>(u_input.a, 4294967295u, 20750u, 4294967295u)), vec4<u32>(var_1.x, 4294967295u, 22307u, var_1.x))), vec4<u32>(1u, 4294967295u, var_1.x, var_1.x)), ~abs(min(~vec4<u32>(0u, u_input.a, 4294967295u, 28064u), ~vec4<u32>(var_1.x, 53864u, var_1.x, 34167u))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_0.x, arg_0.x, -458f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1, 2121f, arg_1, -816f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_0.x, -2262f, 891f))))));
    var var_3 = 0i;
    return _wgslsmith_f_op_vec2_f32(abs(var_2.xz));
}

fn func_2() -> Struct_4 {
    var var_0 = Struct_4(_wgslsmith_div_i32(-1i, _wgslsmith_sub_i32(-17950i, -16630i) >> (~_wgslsmith_mod_u32(u_input.a, 4294967295u) % 32u)));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(212f, -1095f), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(741f, -1256f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-195f, -182f))))))) * _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1339f, -779f), vec2<f32>(-480f, -1315f))))), 246f, -(vec4<i32>(var_0.a, var_0.a, -7125i, 2147483647i) ^ vec4<i32>(0i, -1i, 58086i, 17480i)))));
    var var_2 = Struct_3(Struct_1(var_1.x), ~16522u, Struct_2(Struct_1(-216f)));
    var var_3 = Struct_3(Struct_1(var_1.x), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(13474u, var_2.b, u_input.a) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.a, 87227u), vec3<u32>(44716u, 1u, 0u), vec3<u32>(41454u, var_2.b, 4294967295u)) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, var_2.b, 6083u) >> (vec3<u32>(113387u, 4294967295u, 25102u) % vec3<u32>(32u)), ~vec3<u32>(u_input.a, 1421u, 4294967295u))), var_2.c);
    var var_4 = select(vec3<bool>(true, true, true), select(select(vec3<bool>(all(vec4<bool>(false, false, false, false)), var_0.a <= var_0.a, true), vec3<bool>(true, true, true), _wgslsmith_mod_u32(var_2.b, u_input.a) <= ~21111u), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), var_2.a.a >= -196f), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), false)))));
    return Struct_4(1i);
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: bool, arg_3: bool) -> Struct_4 {
    var var_0 = func_2();
    var var_1 = !select(!select(select(vec4<bool>(arg_2, false, arg_3, arg_2), vec4<bool>(arg_3, arg_2, arg_2, false), vec4<bool>(true, false, true, arg_2)), select(vec4<bool>(true, arg_2, false, false), vec4<bool>(arg_3, true, arg_3, false), arg_3), all(vec2<bool>(true, arg_3))), !(!vec4<bool>(arg_2, arg_3, false, true)), !(!(arg_3 && arg_3)));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-397f, 2043f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1790f)) + _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(-1307f + -1167f)))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-365f))))));
    let var_3 = select(-vec3<i32>(-1i, _wgslsmith_sub_i32(-1i, 1i), i32(-1i) * -13317i), vec3<i32>(-reverseBits(reverseBits(5536i)), _wgslsmith_sub_i32(-16755i, var_0.a), -1i), var_1.zzz);
    var_0 = func_2();
    return Struct_4(-2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(abs(4911u), ~1i, !all(vec2<bool>(false, true)), false);
    var_0 = Struct_4(_wgslsmith_sub_i32(~(-37500i), _wgslsmith_dot_vec3_i32(-vec3<i32>(var_0.a, var_0.a, var_0.a), _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.a, var_0.a, -13950i), vec3<i32>(var_0.a, var_0.a, var_0.a)))) | _wgslsmith_mult_i32(~firstTrailingBit(0i), firstTrailingBit(~var_0.a)));
    let var_1 = Struct_1(-136f);
    let var_2 = any(!vec4<bool>(true, ~0u >= _wgslsmith_sub_u32(0u, u_input.a), true, true));
    let var_3 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1219f, var_1.a)), 1f)));
    var_0 = Struct_4(~(_wgslsmith_mult_i32(firstTrailingBit(var_0.a), 0i) ^ ~(-2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(~max(~abs(vec2<u32>(65259u, u_input.a)), countOneBits(~vec2<u32>(18392u, u_input.a))), firstTrailingBit(abs(countOneBits(~vec4<u32>(u_input.a, 1u, u_input.a, 1492u)))));
}

