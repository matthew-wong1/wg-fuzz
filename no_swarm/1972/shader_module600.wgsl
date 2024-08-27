struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<u32>, arg_1: u32) -> bool {
    let var_0 = vec4<bool>(false, (true & any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false)))) & select(true, true, true), -1206f != _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -779f))), false);
    let var_1 = -1447f;
    var var_2 = var_1;
    var var_3 = select(var_0.xzy, var_0.yxw, vec3<bool>(any(vec4<bool>(any(var_0), var_0.x, var_0.x == false, false)), false, _wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(min(-1550f, 346f))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1)))));
    var_3 = select(var_0.xzz, var_0.xxw, vec3<bool>(var_3.x, !all(select(var_0.xx, var_0.zx, var_0.xx)), all(!select(vec2<bool>(true, var_0.x), vec2<bool>(var_3.x, var_0.x), vec2<bool>(var_0.x, var_3.x)))));
    return 0i < _wgslsmith_clamp_i32(-2147483647i, _wgslsmith_mult_i32(43451i << (~arg_1 % 32u), -36091i), -1i);
}

fn func_2(arg_0: u32) -> Struct_2 {
    var var_0 = Struct_3(Struct_1(min(~vec2<i32>(1i, 1i), vec2<i32>(~(-60951i), 16530i)), (-7759i << (arg_0 % 32u)) >> (~_wgslsmith_mod_u32(arg_0, 0u) % 32u)), _wgslsmith_mult_u32(15654u, arg_0), _wgslsmith_f_op_f32(sign(-2507f)), !select(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, false)));
    var var_1 = u_input.a;
    var var_2 = Struct_2((func_3(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.b, arg_0, arg_0), vec3<u32>(var_0.b, 11940u, 4455u)), var_0.b) | var_0.d.x) == !all(vec3<bool>(true, true, true)));
    var var_3 = Struct_4(Struct_3(Struct_1(vec2<i32>(var_0.a.b, -1i), 0i), 0u, _wgslsmith_f_op_f32(sign(-336f)), vec3<bool>(true, var_0.a.a.x == 2147483647i, true)), ~(~_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(34134u, 41370u, 21757u)), ~vec3<u32>(4294967295u, var_0.b, u_input.a))), -31788i);
    let var_4 = Struct_4(Struct_3(var_3.a.a, _wgslsmith_mod_u32(~(~var_0.b), 34560u), _wgslsmith_f_op_f32(-var_0.c), !var_3.a.d), reverseBits(_wgslsmith_mod_u32(~countOneBits(u_input.a), max(4294967295u, var_3.b))), -_wgslsmith_div_i32(_wgslsmith_mod_i32(-var_3.a.a.b, -697i), countOneBits(-8391i)));
    return Struct_2(true);
}

fn func_1() -> Struct_2 {
    return func_2(u_input.a << (28221u % 32u));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec2<u32>) -> Struct_2 {
    var var_0 = select(select(!(!(!arg_1.zy)), !select(!arg_1.zy, !vec2<bool>(false, arg_0.a), !arg_1.x), all(!vec2<bool>(false, arg_0.a))), select(!(!select(arg_1.zx, vec2<bool>(arg_1.x, false), vec2<bool>(true, true))), select(arg_1.zz, vec2<bool>(arg_1.x, all(vec4<bool>(arg_1.x, arg_1.x, arg_0.a, arg_1.x))), vec2<bool>(arg_1.x, !arg_1.x)), vec2<bool>(any(!vec4<bool>(true, arg_1.x, arg_0.a, arg_1.x)), arg_1.x)), !select(select(arg_1.zx, arg_1.yx, !arg_1.yy), arg_1.yy, !arg_0.a));
    let var_1 = max(~max(max(vec4<u32>(u_input.a, u_input.a, arg_2.x, arg_2.x), ~vec4<u32>(u_input.a, 1u, arg_2.x, 10004u)), vec4<u32>(4294967295u & arg_2.x, 1u, 0u, ~0u)), ~vec4<u32>(arg_2.x, 1u, 33955u, 4294967295u));
    let var_2 = !func_3(var_1.yyw, ~27511u);
    let var_3 = Struct_4(Struct_3(Struct_1(vec2<i32>(abs(-95857i), _wgslsmith_dot_vec4_i32(vec4<i32>(-24998i, 23928i, -13231i, 1i), vec4<i32>(-24917i, -5051i, -18995i, 28040i))), 0i), ~_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 75637u, 4294967295u), var_1), 42317u), -257f, select(vec3<bool>(true, arg_1.x && true, arg_2.x > 24733u), arg_1, true)), 0u, 1i);
    var var_4 = true;
    return Struct_2((min(i32(-1i) * -5258i, var_3.c) | -97749i) <= var_3.a.a.a.x);
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_4) -> Struct_1 {
    let var_0 = ~vec3<i32>(1i, arg_0.x, reverseBits(-arg_2.a.a.b));
    let var_1 = Struct_3(arg_2.a.a, select(0u, abs(~firstLeadingBit(1u)), any(vec4<bool>(arg_2.a.d.x, false, all(arg_2.a.d.xz), any(arg_2.a.d.yy)))), arg_2.a.c, !vec3<bool>(arg_1.a, true, all(select(vec3<bool>(true, arg_2.a.d.x, false), vec3<bool>(arg_1.a, false, arg_1.a), vec3<bool>(arg_2.a.d.x, false, true)))));
    return Struct_1(arg_2.a.a.a, reverseBits(abs(-2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~countOneBits(vec4<i32>(abs(-1i), firstLeadingBit(-42090i), _wgslsmith_mult_i32(-1i, -2147483647i), -15120i) >> (vec4<u32>(1u, 20831u, _wgslsmith_mult_u32(u_input.a, u_input.a), 4294967295u) % vec4<u32>(32u)));
    let var_1 = ~32913u;
    var var_2 = ~(i32(-1i) * -(var_0.x ^ (i32(-1i) * -1i)));
    let var_3 = func_5(abs(_wgslsmith_mod_vec3_i32(abs(vec3<i32>(var_0.x, 0i, var_0.x)), var_0.xwz ^ -vec3<i32>(var_0.x, -1i, var_0.x))), func_4(func_1(), select(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, false)), _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(11601u, 92468u, u_input.a, 43815u), vec4<u32>(0u, u_input.a, u_input.a, u_input.a))), firstLeadingBit(vec2<u32>(0u, var_1) >> (vec2<u32>(u_input.a, var_1) % vec2<u32>(32u))))), Struct_4(Struct_3(Struct_1(~vec2<i32>(var_0.x, 12596i), var_0.x), 4294967295u << (u_input.a % 32u), _wgslsmith_f_op_f32(f32(-1f) * -234f), vec3<bool>(true, true, true)), 19272u, 7090i));
    var_2 = 18069i;
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(399f, 1065f, -919f) * vec3<f32>(-637f, 1046f, -739f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1421f, -179f, -420f) + vec3<f32>(-381f, 1000f, -1589f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(2368f, -1526f, -917f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(429f, 1132f, -1147f)), vec3<f32>(-1053f, 278f, -920f)))));
    let var_5 = Struct_4(Struct_3(Struct_1(vec2<i32>(-var_0.x, -var_0.x), var_3.b), _wgslsmith_dot_vec4_u32(firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, var_1, 2486u), vec4<u32>(1u, 1u, 40582u, 1u), vec4<u32>(var_1, var_1, u_input.a, 5721u))), ~(~vec4<u32>(var_1, 4294967295u, var_1, 0u))), 894f, vec3<bool>(true, true, true)), _wgslsmith_sub_u32(~u_input.a, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 54042u, u_input.a), vec3<u32>(u_input.a, 18093u, 1u))), ~3422i);
    var var_6 = _wgslsmith_sub_vec4_i32(abs(var_0), ~var_0);
    var var_7 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.b, abs(~_wgslsmith_dot_vec3_u32(~vec3<u32>(var_5.b, var_7.a.b, 55219u), select(vec3<u32>(u_input.a, var_5.a.b, var_1), vec3<u32>(var_7.b, var_7.a.b, var_7.a.b), var_5.a.d))), vec3<i32>(_wgslsmith_mult_i32(-1i, _wgslsmith_mod_i32(-50100i, var_6.x)) | var_3.b, reverseBits(var_6.x), firstTrailingBit(-2147483647i)));
}

