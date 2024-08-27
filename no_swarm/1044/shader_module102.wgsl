struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec2<f32>,
    d: f32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: vec2<f32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_2) -> u32 {
    var var_0 = any(!select(!select(vec3<bool>(false, arg_2.a, arg_2.a), vec3<bool>(arg_2.a, arg_2.a, true), vec3<bool>(arg_2.a, true, arg_2.a)), vec3<bool>(true, true, any(vec2<bool>(true, arg_2.a))), vec3<bool>(all(vec3<bool>(arg_2.a, arg_2.a, arg_2.a)), arg_2.a, select(true, false, true))));
    let var_1 = vec3<i32>(reverseBits(min(18423i, select(_wgslsmith_sub_i32(42870i, -20999i), global0.x, !arg_2.a))), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.b.x, -47127i, 0i), global0.wzw), _wgslsmith_clamp_i32(17555i, 4332i, -countOneBits(arg_2.b.x)));
    var var_2 = _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, abs(4294967295u), 1u), vec4<u32>(~0u, 7326u, 13585u, max(1u, 31081u))) | max(vec4<u32>(firstTrailingBit(39517u), firstTrailingBit(42007u), ~4294967295u, _wgslsmith_add_u32(0u, 4294967295u)), abs(vec4<u32>(1u, 1u, 1u, 1u))), (max(~vec4<u32>(60101u, 14408u, 45665u, 58812u), ~vec4<u32>(4294967295u, 53866u, 4294967295u, 28429u)) << (vec4<u32>(1u, max(4294967295u, 0u), _wgslsmith_dot_vec2_u32(vec2<u32>(30619u, 1u), vec2<u32>(0u, 4294967295u)), ~84102u) % vec4<u32>(32u))) ^ ~firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u)));
    let var_3 = -1211f;
    var var_4 = !(!(!(!select(vec3<bool>(arg_2.a, arg_2.a, arg_2.a), vec3<bool>(arg_2.a, arg_2.a, arg_2.a), vec3<bool>(arg_2.a, false, true)))));
    return ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(14981u, 0u), vec2<u32>(1u, 4294967295u)) << (_wgslsmith_sub_u32(1u, 0u) % 32u), reverseBits(_wgslsmith_add_u32(0u, 35160u))));
}

fn func_2(arg_0: vec3<bool>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -622f, global1.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, _wgslsmith_f_op_f32(1000f - -158f), _wgslsmith_f_op_f32(-global1.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 959f, global1.x))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -231f, 464f))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(175f, 769f, global1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(605f, global1.x, global1.x)), global1.x > global1.x))))));
    var var_1 = _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(35742u, 4294967295u), vec2<u32>(57030u, 1589u)), vec2<u32>(1u, 1u)), vec2<u32>(1u, 1u)), _wgslsmith_mod_vec2_u32(abs(vec2<u32>(143419u, func_3(-1000f, vec4<i32>(global0.x, global0.x, u_input.a, 1i), Struct_2(arg_0.x, vec4<i32>(global0.x, global0.x, global0.x, global0.x))))), select(vec2<u32>(abs(15400u), ~9861u), ~firstLeadingBit(vec2<u32>(0u, 0u)), !(arg_0.x | false))));
    global1 = var_0.yx;
    global0 = abs(max(max(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-4104i, u_input.a), vec2<i32>(2147483647i, global0.x)), 37152i, 2147483647i, -1i), vec4<i32>(-u_input.a, _wgslsmith_clamp_i32(u_input.a, 2147483647i, global0.x), 58077i, _wgslsmith_mult_i32(u_input.a, 2147483647i))), vec4<i32>(-1i) * -(vec4<i32>(global0.x, global0.x, 0i, -81646i) << (vec4<u32>(53653u, 1u, 17227u, var_1.x) % vec4<u32>(32u)))));
    var_1 = _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(~_wgslsmith_clamp_vec2_u32(max(vec2<u32>(var_1.x, 1614u), vec2<u32>(var_1.x, var_1.x)), firstTrailingBit(vec2<u32>(var_1.x, var_1.x)), vec2<u32>(4294967295u, 11477u) >> (vec2<u32>(53121u, var_1.x) % vec2<u32>(32u))), vec2<u32>(var_1.x, 0u)), _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(~1u, 1u << (0u % 32u)), ~(vec2<u32>(var_1.x, 4294967295u) ^ vec2<u32>(var_1.x, 4294967295u))), vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(1u, var_1.x), min(110177u, var_1.x)), ~0u)));
    return _wgslsmith_clamp_i32(-2147483647i | global0.x, _wgslsmith_sub_i32(~select(u_input.a, global0.x, var_1.x != var_1.x), _wgslsmith_add_i32(countOneBits(_wgslsmith_sub_i32(u_input.a, 2147483647i)), -1i)), 46125i);
}

fn func_1(arg_0: Struct_3, arg_1: f32, arg_2: bool) -> Struct_1 {
    let var_0 = Struct_2(true, -vec4<i32>(func_2(!vec3<bool>(arg_0.a, false, arg_2)), _wgslsmith_dot_vec4_i32(-vec4<i32>(-21091i, u_input.a, -2147483647i, -21728i), countOneBits(vec4<i32>(-2147483647i, -22463i, u_input.a, u_input.a))), -43166i, abs(abs(u_input.a))));
    let var_1 = Struct_1(arg_0.b.x | 188024u, vec3<u32>(firstTrailingBit(reverseBits(arg_0.b.x)), 7499u, arg_0.b.x), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1714f + global1.x), _wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(sign(985f)), arg_2 || all(vec3<bool>(true, false, arg_2)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(900f * -219f), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - arg_1) * arg_1)) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, -1276f) + vec2<f32>(arg_1, 994f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1093f, arg_1), vec2<f32>(global1.x, 100f), vec2<bool>(var_0.a, arg_0.a))))))));
    let var_2 = arg_1;
    global0 = var_0.b;
    let var_3 = true;
    return Struct_1((_wgslsmith_sub_u32(var_1.a & 4294967295u, arg_0.b.x) & 4294967295u) << (arg_0.b.x % 32u), ~_wgslsmith_mult_vec3_u32(var_1.b, vec3<u32>(0u, _wgslsmith_mult_u32(0u, var_1.b.x), ~arg_0.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.c - _wgslsmith_f_op_vec2_f32(-var_1.e)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(902f))) - var_2)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(var_1.e.x + -303f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(668f + -1000f))))));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: i32, arg_3: Struct_1) -> i32 {
    var var_0 = max(_wgslsmith_div_vec4_u32(countOneBits(~vec4<u32>(arg_3.a, arg_3.b.x, arg_3.b.x, arg_3.b.x)), ~vec4<u32>(min(1486u, 80927u), ~arg_3.b.x, _wgslsmith_mod_u32(26428u, 1u), _wgslsmith_sub_u32(1u, arg_3.a))), select(~vec4<u32>(arg_3.a, arg_3.a, 0u, arg_3.b.x), ~(~vec4<u32>(arg_3.b.x, 58693u, arg_3.a, 20554u)), !(!vec4<bool>(false, false, arg_1.a, arg_0.x))) | select(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_3.b.x, arg_3.b.x, arg_3.b.x, arg_3.b.x), max(vec4<u32>(arg_3.b.x, arg_3.b.x, 63743u, arg_3.a), vec4<u32>(99521u, arg_3.a, 0u, 1u)), select(vec4<u32>(4294967295u, 3735u, arg_3.a, arg_3.b.x), vec4<u32>(arg_3.a, arg_3.a, 0u, 22013u), true)), ~vec4<u32>(51819u, 34035u, arg_3.b.x, arg_3.b.x), select(vec4<bool>(true, arg_0.x, arg_0.x, arg_1.a), select(vec4<bool>(false, true, arg_1.a, true), vec4<bool>(true, false, arg_1.a, true), arg_1.a), any(vec4<bool>(true, false, true, false)))));
    var_0 = reverseBits(abs(abs(_wgslsmith_add_vec4_u32(vec4<u32>(arg_3.b.x, arg_3.b.x, var_0.x, 4294967295u), max(vec4<u32>(49321u, arg_3.a, 4294967295u, 1u), vec4<u32>(101509u, var_0.x, 16745u, var_0.x))))));
    var var_1 = Struct_3(select(_wgslsmith_f_op_f32(-arg_3.d) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.x))), arg_1.a, true), abs(~vec3<u32>(max(var_0.x, arg_3.b.x), var_0.x | 7050u, ~var_0.x)));
    var_1 = Struct_3(!all(arg_0.xz), min(~var_0.xzy << (var_1.b % vec3<u32>(32u)), var_0.wzw));
    var var_2 = var_1.a;
    return min(~(~(-41966i)), -24330i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -vec3<i32>(u_input.a, reverseBits(func_4(vec3<bool>(true, true, true), Struct_2(false, vec4<i32>(global0.x, -1i, global0.x, 2147483647i)), global0.x, func_1(Struct_3(true, vec3<u32>(0u, 72756u, 1u)), global1.x, true))), func_4(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true)), Struct_2(true, _wgslsmith_mult_vec4_i32(vec4<i32>(global0.x, 2147483647i, u_input.a, -1i), vec4<i32>(-26433i, u_input.a, -7670i, u_input.a))), reverseBits(abs(global0.x)), func_1(Struct_3(true, vec3<u32>(1u, 1u, 0u)), global1.x, false)));
    let var_1 = -(~(~select(global0.x, -1i, false)) & -global0.x);
    var var_2 = select(global0.wxy, vec3<i32>(firstLeadingBit(global0.x & ~(-6832i)), global0.x, 2147483647i), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), !select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), false));
    var_2 = -global0.yxw;
    var_2 = -vec3<i32>(34826i, ~(-2147483647i), reverseBits(max(_wgslsmith_mod_i32(52465i, -52893i), 1i)));
    var var_3 = false;
    var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)));
}

