struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>) -> vec3<u32> {
    let var_0 = !any(!select(!vec4<bool>(false, global0.c, false, false), !vec4<bool>(true, global0.c, global0.c, false), select(vec4<bool>(global0.c, global0.c, false, global0.c), vec4<bool>(global0.c, true, global0.c, global0.c), vec4<bool>(global0.c, false, global0.c, false))));
    global0 = Struct_1(global0.b.x, global0.b, !(!global0.c | global0.c));
    let var_1 = Struct_1(_wgslsmith_mod_u32(firstLeadingBit(_wgslsmith_clamp_u32(reverseBits(8373u), global0.a >> (u_input.a % 32u), global0.a)), global0.a), (~vec3<u32>(7468u, u_input.a, 81496u) & _wgslsmith_mod_vec3_u32(vec3<u32>(global0.b.x, global0.b.x, u_input.a), firstTrailingBit(vec3<u32>(4294967295u, u_input.a, u_input.a)))) & _wgslsmith_div_vec3_u32(~global0.b, ~(~global0.b)), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), -vec4<i32>(-61582i, -1i, -1i, -1i))) > ~_wgslsmith_dot_vec2_i32(vec2<i32>(27266i, -17484i), countOneBits(vec2<i32>(16495i, -1i))));
    var var_2 = arg_0.x;
    let var_3 = arg_0;
    return _wgslsmith_div_vec3_u32(vec3<u32>(~(~u_input.a >> (~global0.b.x % 32u)), u_input.a >> (u_input.a % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(firstTrailingBit(u_input.a), countOneBits(17684u)), ~vec2<u32>(u_input.a, 0u))), ~abs(vec3<u32>(global0.b.x >> (47414u % 32u), ~0u, reverseBits(global0.a))));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: u32, arg_3: i32) -> Struct_1 {
    let var_0 = 1u;
    global0 = Struct_1(~(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global0.b.x, arg_2, 4294967295u) << (vec4<u32>(var_0, u_input.a, u_input.a, arg_2) % vec4<u32>(32u)), min(vec4<u32>(u_input.a, 4294967295u, var_0, arg_2), vec4<u32>(25640u, 0u, global0.a, arg_2))) | _wgslsmith_dot_vec3_u32(vec3<u32>(var_0, 35624u, var_0) ^ global0.b, ~vec3<u32>(u_input.a, arg_2, 0u))), vec3<u32>(4294967295u & ~arg_2, abs(max(global0.b.x, ~u_input.a)), 0u), global0.c);
    global0 = Struct_1(~u_input.a, func_3(vec3<f32>(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-2282f, arg_1)) - _wgslsmith_f_op_f32(-113f + 723f)), _wgslsmith_f_op_f32(f32(-1f) * -1086f))), _wgslsmith_f_op_f32(ceil(-390f)) < _wgslsmith_f_op_f32(ceil(1000f)));
    let var_1 = Struct_1(_wgslsmith_dot_vec3_u32(~vec3<u32>(44849u, _wgslsmith_sub_u32(arg_2, 40070u), select(12831u, arg_2, true)), select(vec3<u32>(select(19954u, var_0, true), _wgslsmith_clamp_u32(u_input.a, 73809u, arg_2), global0.a), global0.b, !(arg_3 < -77590i))), global0.b << (vec3<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(var_0, 4294967295u), global0.b.x ^ 1u), 9722u, ~u_input.a | (1u | arg_2)) % vec3<u32>(32u)), global0.c);
    let var_2 = Struct_1(_wgslsmith_mult_u32(var_1.b.x, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b.x, 4294967295u), vec2<u32>(var_1.b.x, 44317u)), arg_2)) & select(var_1.a, ~143188u & ~var_1.a, true), firstLeadingBit(vec3<u32>(~var_0, var_1.b.x, ~(~global0.a))), false);
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = func_2(-1i, 1f, 55270u, 23732i);
    var_0 = arg_0;
    global0 = func_2(-1i, 201f, 1u, -1i);
    var var_1 = Struct_1(0u, _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(~abs(global0.b), _wgslsmith_clamp_vec3_u32(arg_0.b, vec3<u32>(arg_0.a, u_input.a, arg_0.a), var_0.b) ^ arg_0.b), ~(~vec3<u32>(u_input.a, global0.a, 77101u))), all(arg_1));
    let var_2 = Struct_1(0u, arg_0.b, ~(var_0.b.x ^ var_0.b.x) == u_input.a);
    return var_2;
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    global0 = func_4(func_2(countOneBits(42703i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-806f, -163f))), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(~global0.b.x, abs(0u)), 45676u, 57290u), min(-_wgslsmith_sub_i32(-35450i, -2147483647i), _wgslsmith_clamp_i32(~(-54443i), 1i, ~19925i))), !select(!arg_0.zy, vec2<bool>(global0.c, any(vec4<bool>(false, true, true, arg_0.x))), vec2<bool>(global0.c || arg_0.x, all(arg_0.wy))));
    var var_0 = _wgslsmith_div_vec4_u32(firstTrailingBit(firstLeadingBit(~vec4<u32>(global0.a, u_input.a, 0u, 1u))), vec4<u32>(global0.a, global0.a, global0.b.x | ~1u, ~(firstLeadingBit(u_input.a) >> (min(u_input.a, 1u) % 32u))));
    let var_1 = Struct_1(~u_input.a, global0.b, false);
    let var_2 = Struct_1(~(~43378u), vec3<u32>(u_input.a, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(select(vec4<u32>(4294967295u, 0u, var_0.x, 58173u), vec4<u32>(var_0.x, var_1.a, 4294967295u, 0u), arg_0), vec4<u32>(10191u, 23718u, var_0.x, 14757u)), vec4<u32>(var_1.a, var_0.x, 70335u << (global0.a % 32u), 79661u)), ~1u), any(vec2<bool>(!(global0.c & true), all(!arg_0))));
    var var_3 = true;
    return Struct_1(~41206u, _wgslsmith_mult_vec3_u32(vec3<u32>(1u, func_4(func_4(Struct_1(var_2.b.x, vec3<u32>(var_0.x, 37608u, 43743u), var_1.c), vec2<bool>(var_1.c, var_1.c)), !vec2<bool>(arg_0.x, var_1.c)).b.x, var_0.x), vec3<u32>(~func_3(vec3<f32>(-1000f, -1759f, 152f)).x, ~var_1.b.x ^ firstLeadingBit(91896u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a, 28487u, 22021u, 5077u), vec4<u32>(global0.a, var_2.a, 55261u, var_2.b.x)) | 4294967295u)), any(!vec4<bool>(global0.c, arg_0.x, arg_0.x, true)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec3<f32>) -> Struct_1 {
    global0 = Struct_1(max(4294967295u, 1u), _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(~arg_0.a, _wgslsmith_sub_u32(1u, 1u), 4294967295u & arg_0.b.x), abs(~arg_1.b)), arg_0.b), true);
    global0 = Struct_1(~func_4(func_2(1i, _wgslsmith_f_op_f32(max(arg_3.x, 136f)), 0u, -672i), select(!vec2<bool>(arg_0.c, true), vec2<bool>(global0.c, global0.c), true)).a, min(vec3<u32>(u_input.a, _wgslsmith_sub_u32(4294967295u, global0.b.x) >> (~16298u % 32u), 4294967295u), vec3<u32>(arg_0.a, 36644u, ~_wgslsmith_mult_u32(u_input.a, 1u))), select(arg_0.c, !(func_2(20847i, arg_3.x, 13409u, 0i).c == true), !(_wgslsmith_f_op_f32(-arg_2.x) < _wgslsmith_f_op_f32(floor(-1074f)))));
    var var_0 = 5596i;
    var_0 = countOneBits(_wgslsmith_mod_i32(_wgslsmith_add_i32(1i, -1i) >> (1u % 32u), firstTrailingBit(~_wgslsmith_mult_i32(0i, 60170i))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(func_1(select(select(vec4<bool>(global0.c, false, global0.c, global0.c), vec4<bool>(global0.c, global0.c, global0.c, true), all(vec3<bool>(global0.c, global0.c, global0.c))), !vec4<bool>(false, global0.c, false, global0.c), false)), Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(global0.b, vec3<u32>(0u, 4670u, 36512u)), global0.b), global0.b, true), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1f, 1f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 330f, 1f) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2467f * 707f)), _wgslsmith_f_op_f32(abs(-1032f)), _wgslsmith_f_op_f32(-1350f - -250f))));
    global0 = func_1(select(vec4<bool>(global0.c, true, func_5(func_1(vec4<bool>(false, global0.c, global0.c, false)), Struct_1(u_input.a, vec3<u32>(49944u, 27715u, global0.b.x), global0.c), vec2<f32>(-1862f, -654f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-301f, -454f, 1503f))).c, true), select(select(select(vec4<bool>(global0.c, true, global0.c, true), vec4<bool>(false, true, false, global0.c), vec4<bool>(global0.c, global0.c, global0.c, global0.c)), vec4<bool>(global0.c, global0.c, false, true), vec4<bool>(global0.c, false, false, true)), !select(vec4<bool>(true, false, global0.c, global0.c), vec4<bool>(global0.c, global0.c, global0.c, global0.c), global0.c), !(!vec4<bool>(global0.c, false, true, global0.c))), vec4<bool>(false, any(!vec2<bool>(global0.c, global0.c)), true, _wgslsmith_mod_u32(global0.a, u_input.a) > 0u)));
    global0 = func_5(func_1(vec4<bool>(global0.c, true, global0.c, func_1(select(vec4<bool>(global0.c, false, global0.c, false), vec4<bool>(global0.c, false, global0.c, global0.c), vec4<bool>(false, global0.c, global0.c, true))).c)), Struct_1(8628u, global0.b, true), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1874f - -100f) + -585f), 1000f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(482f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), 104f)));
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(491f, 338f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(619f, 758f), vec2<f32>(-1384f, -522f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1450f, 495f) - vec2<f32>(1207f, -727f)))), !(!vec2<bool>(global0.c, false))))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(1f - var_0.x), var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(min(-vec4<i32>(23117i, 38751i, 0i, 2147483647i) >> (vec4<u32>(u_input.a, countOneBits(u_input.a), ~0u, u_input.a) % vec4<u32>(32u)), select(vec4<i32>(0i, ~0i, select(27869i, 48408i, false), _wgslsmith_mult_i32(1i, 2147483647i)), firstTrailingBit(vec4<i32>(1i, 1i, 1i, 1i)), true)), 19375u, firstTrailingBit(~(~(~vec2<i32>(1i, 2147483647i)))), 2088f);
}

