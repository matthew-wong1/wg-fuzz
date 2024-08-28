struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: vec3<f32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-143f, 519f, 420f, -547f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec2<f32>, arg_3: Struct_2) -> f32 {
    let var_0 = -534f;
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1031f, var_0, arg_2.x, 1409f)))))) + vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(674f - 353f))), arg_0.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -754f))), _wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1)));
    let var_1 = 1u;
    var var_2 = true && ((true & all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)))) || true);
    var var_3 = 1217f;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(169f, arg_1.x), _wgslsmith_div_f32(-835f, -1000f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(arg_2.x))))), -2055f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1035f * var_0) - 1136f)));
}

fn func_3(arg_0: Struct_1) -> vec3<i32> {
    let var_0 = arg_0;
    global0 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-2423f * _wgslsmith_f_op_f32(round(822f))), 1517f, any(vec2<bool>(true, true)))), arg_0.b, -451f, _wgslsmith_f_op_f32(trunc(-140f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-530f, 182f, var_0.d.x, -690f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1477f, -928f, var_0.d.x, arg_0.d.x) * vec4<f32>(global0.x, arg_0.b, var_0.b, -1181f)), false))))));
    let var_1 = arg_0.a;
    var var_2 = _wgslsmith_dot_vec4_i32(var_0.e, _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, -2147483647i, ~_wgslsmith_dot_vec2_i32(arg_0.e.wx, arg_0.e.yw), 1i), vec4<i32>(-var_0.e.x, arg_0.e.x, max(1i, -2147483647i), i32(-1i) * -53738i)));
    var_2 = firstLeadingBit(var_0.e.x);
    return vec3<i32>(firstTrailingBit(0i << (~_wgslsmith_mult_u32(4294967295u, 1u) % 32u)), _wgslsmith_add_i32(select(_wgslsmith_add_i32(-2349i & var_0.e.x, abs(arg_0.e.x)), ~(-31613i), !(39856i >= arg_0.e.x)), var_0.e.x), arg_0.e.x);
}

fn func_2(arg_0: vec3<f32>, arg_1: bool) -> vec2<u32> {
    var var_0 = Struct_2(max(-20874i, -937i), _wgslsmith_clamp_vec3_i32(func_3(Struct_1(~84880u, _wgslsmith_f_op_f32(955f * -1240f), abs(vec4<u32>(0u, 0u, 4294967295u, 5455u)), global0.xyy, vec4<i32>(55479i, -2147483647i, 20533i, -11339i))), vec3<i32>(min(3466i, 1i), 1i, _wgslsmith_mod_i32(1i, firstTrailingBit(30197i))), vec3<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -1i), vec2<i32>(29266i, 0i)), ~firstLeadingBit(-1i), -(~53860i))), _wgslsmith_dot_vec4_u32(firstTrailingBit(~select(vec4<u32>(3632u, 27864u, 47969u, u_input.a), vec4<u32>(22328u, 0u, 62783u, 54253u), vec4<bool>(false, arg_1, true, true))), _wgslsmith_mod_vec4_u32(abs(~vec4<u32>(0u, u_input.a, 1u, 0u)), max(vec4<u32>(64148u, 4294967295u, u_input.a, u_input.a), vec4<u32>(u_input.a, 43103u, 4294967295u, u_input.a)) | max(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(9910u, u_input.a, 17666u, 29807u)))));
    var var_1 = vec4<i32>(var_0.a, abs(_wgslsmith_mod_i32(-(0i | var_0.a), firstLeadingBit(reverseBits(23217i)))), _wgslsmith_clamp_i32(-46729i, -2147483647i, reverseBits(-16038i)), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(var_0.b.xz | _wgslsmith_sub_vec2_i32(var_0.b.xz, var_0.b.yx), _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(var_0.b.xz, var_0.b.zx), var_0.b.xx)), -vec2<i32>(var_0.b.x, ~var_0.a)));
    let var_2 = vec2<bool>(arg_1, all(vec2<bool>(any(select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, true), vec2<bool>(arg_1, true))), _wgslsmith_div_f32(-197f, 1075f) != _wgslsmith_f_op_f32(max(-694f, arg_0.x)))));
    var_0 = Struct_2(22687i, -var_1.xyw, 18336u);
    var var_3 = Struct_2(var_1.x << (~_wgslsmith_clamp_u32(0u, var_0.c, u_input.a << (1u % 32u)) % 32u), vec3<i32>(func_3(Struct_1(u_input.a, _wgslsmith_div_f32(-282f, global0.x), vec4<u32>(u_input.a, u_input.a, 4294967295u, 1u), _wgslsmith_div_vec3_f32(global0.xxy, arg_0), _wgslsmith_clamp_vec4_i32(vec4<i32>(-9265i, -12531i, var_0.b.x, var_0.a), vec4<i32>(var_1.x, -38374i, var_1.x, var_1.x), vec4<i32>(-39715i, var_0.a, 32978i, -52186i)))).x, 0i, _wgslsmith_div_i32(min(0i, var_0.a) ^ ~var_0.a, reverseBits(var_0.b.x))), firstTrailingBit(u_input.a));
    return _wgslsmith_mod_vec2_u32(~(~(~vec2<u32>(0u, u_input.a))), ~(vec2<u32>(_wgslsmith_div_u32(var_3.c, 90385u), ~14508u) >> (abs(select(vec2<u32>(5399u, 78558u), vec2<u32>(u_input.a, var_3.c), false)) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!select(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true), vec3<bool>(true, global0.x != 1192f, any(vec2<bool>(false, false))), true));
    let var_1 = func_2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(Struct_1(0u, global0.x, vec4<u32>(u_input.a, 0u, u_input.a, 4294967295u), global0.wxx, vec4<i32>(47853i, 13234i, -2147483647i, 25871i)), vec4<f32>(-2452f, global0.x, global0.x, -275f), global0.xz, Struct_2(2147483647i, vec3<i32>(-35468i, 1394i, -40463i), u_input.a))), _wgslsmith_div_f32(global0.x, -868f))), _wgslsmith_f_op_f32(ceil(-925f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.x, -125f, 1577f))))))), false);
    var var_2 = vec3<f32>(global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global0.x, _wgslsmith_f_op_f32(func_1(Struct_1(var_1.x, global0.x, vec4<u32>(47394u, 71025u, 57725u, u_input.a), global0.yyx, vec4<i32>(2147483647i, -2147483647i, -2147483647i, -1i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-505f, -730f, 289f, global0.x) * vec4<f32>(global0.x, 242f, global0.x, global0.x)), vec2<f32>(420f, 808f), Struct_2(-11310i, vec3<i32>(-31844i, -1i, 1479i), 15984u))))), _wgslsmith_f_op_f32(func_1(Struct_1(var_1.x, _wgslsmith_f_op_f32(global0.x * global0.x), min(vec4<u32>(12762u, var_1.x, var_1.x, 93389u), vec4<u32>(33928u, var_1.x, var_1.x, var_1.x)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.x, global0.x, -967f))), vec4<i32>(33329i, 2147483647i, -8335i, -1i)), vec4<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x, _wgslsmith_f_op_f32(max(global0.x, global0.x)), global0.x), vec2<f32>(global0.x, _wgslsmith_f_op_f32(max(754f, 1081f))), Struct_2(99139i, max(vec3<i32>(-1i, 1i, 6581i), vec3<i32>(1i, -1i, -28156i)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_1.x, 50728u, var_1.x), vec4<u32>(0u, 46648u, var_1.x, var_1.x)))))), global0.x);
    let var_3 = Struct_1(firstLeadingBit(~_wgslsmith_sub_u32(1u, _wgslsmith_mult_u32(66190u, var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + var_2.x) + _wgslsmith_f_op_f32(max(1718f, 764f))))), ~countOneBits(~vec4<u32>(0u, var_1.x, 6556u, u_input.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-180f)))), 795f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.x, -317f, var_0.x)) * -1012f)) + _wgslsmith_f_op_vec3_f32(-global0.xxy)), firstLeadingBit(min(countOneBits(vec4<i32>(2147483647i, -1i, 0i, -6810i)), vec4<i32>(1i, 1i, 1i, 1i))) >> ((min(~vec4<u32>(var_1.x, 1u, var_1.x, 0u), vec4<u32>(4294967295u, 56442u, 5473u, u_input.a)) ^ min(~vec4<u32>(u_input.a, 4294967295u, 0u, 0u), ~vec4<u32>(u_input.a, var_1.x, var_1.x, var_1.x))) % vec4<u32>(32u)));
    var var_4 = Struct_2(var_3.e.x, vec3<i32>(_wgslsmith_sub_i32(countOneBits(var_3.e.x), var_3.e.x & -2147483647i), _wgslsmith_mult_i32(var_3.e.x, -_wgslsmith_dot_vec2_i32(var_3.e.yx, vec2<i32>(8640i, -1i))), _wgslsmith_sub_i32(var_3.e.x, firstLeadingBit(var_3.e.x))), ~1u & var_3.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<i32>(var_3.e.x, var_3.e.x), vec2<i32>(0i, ~(-49462i)), !select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, var_0.x), true)));
}

