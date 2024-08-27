struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> i32 {
    global0 = true || select(any(vec2<bool>(all(vec3<bool>(true, global1.x, false)), false & arg_0.a.x)), !all(!arg_0.a.yz), true);
    var var_0 = !any(select(vec4<bool>(true, any(arg_0.a), false, arg_0.a.x), !select(vec4<bool>(true, true, true, global1.x), vec4<bool>(global1.x, global1.x, global1.x, arg_0.a.x), false), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, arg_0.a.x, arg_0.a.x, true), global1.x)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-1061f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-1031f)), -305f, global1.x || true)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-616f)), 1000f)))) + 1405f);
    var var_2 = firstLeadingBit(u_input.a.x);
    var var_3 = abs(max(countOneBits(u_input.a.xy), _wgslsmith_div_vec2_i32(u_input.a.yx, u_input.a.zy) | -(u_input.a.yy & vec2<i32>(0i, arg_0.b))));
    return ~(~countOneBits(min(var_3.x, 0i)));
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    var var_0 = -19625i;
    let var_1 = Struct_1(vec3<bool>(any(!vec4<bool>(global1.x, false, global1.x, global1.x)), select(!(!global1.x), global1.x, false), true), ~_wgslsmith_sub_i32(-u_input.a.x, reverseBits(1i)));
    var var_2 = Struct_2(var_1, vec3<i32>(max(-u_input.a.x, var_1.b), u_input.a.x, -1i));
    var_2 = Struct_2(Struct_1(!vec3<bool>(0i == var_2.a.b, var_1.a.x, true), func_3(Struct_1(!vec3<bool>(var_2.a.a.x, global1.x, true), u_input.a.x), u_input.b)), (abs(vec3<i32>(var_2.a.b, 0i, var_1.b) >> (vec3<u32>(39287u, 4294967295u, u_input.b) % vec3<u32>(32u))) >> (select(select(vec3<u32>(u_input.b, 18447u, 1u), vec3<u32>(4294967295u, u_input.b, u_input.b), true), ~vec3<u32>(4294967295u, u_input.b, 15723u), var_2.a.a.x) % vec3<u32>(32u))) & vec3<i32>(1i, ~0i, ~(~u_input.a.x)));
    global0 = any(vec4<bool>(select(!(!var_2.a.a.x), any(var_1.a), true), var_2.a.a.x, u_input.b > firstLeadingBit(1u), true));
    return Struct_1(var_1.a, 2147483647i);
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(!select(arg_0.a.a, arg_0.a.a, func_2(vec2<f32>(1039f, -211f)).a), 1i), arg_0.b);
    let var_1 = vec3<u32>(~(_wgslsmith_dot_vec2_u32(vec2<u32>(49354u, u_input.b), abs(vec2<u32>(u_input.b, 54318u))) ^ 17025u), ~63688u, 48861u);
    let var_2 = func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-800f, _wgslsmith_f_op_f32(-437f * -336f)))).a;
    let var_3 = func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-164f, 826f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1306f, 273f)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -1751f), vec2<f32>(-584f, -298f)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-518f, -224f), vec2<f32>(221f, -1871f), vec2<bool>(var_0.a.a.x, false)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(112f, -1000f))))));
    let var_4 = countOneBits(firstTrailingBit(vec3<u32>(var_1.x, 52674u, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 0u, u_input.b, u_input.b), _wgslsmith_mod_vec4_u32(vec4<u32>(43374u, 4294967295u, var_1.x, 1u), vec4<u32>(var_1.x, u_input.b, 1u, var_1.x))))));
    return arg_0;
}

fn func_1(arg_0: u32) -> Struct_2 {
    let var_0 = func_4(Struct_2(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(381f, 1949f) + vec2<f32>(1000f, -1118f)))), u_input.a), abs(0i));
    var var_1 = true;
    var_1 = func_2(vec2<f32>(1444f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -385f)))).a.x;
    var_1 = true;
    var var_2 = Struct_2(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(623f, 1120f)))), -(var_0.b ^ _wgslsmith_mod_vec3_i32(vec3<i32>(-1080i, u_input.a.x, u_input.a.x), -var_0.b)));
    return var_0;
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: vec4<bool>, arg_3: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_mult_u32(min(u_input.b, u_input.b), 0u >> (_wgslsmith_dot_vec2_u32(select(~vec2<u32>(u_input.b, 4294967295u), firstTrailingBit(vec2<u32>(17850u, u_input.b)), arg_2.x), countOneBits(~vec2<u32>(u_input.b, u_input.b))) % 32u));
    let var_1 = _wgslsmith_dot_vec2_u32(min(~vec2<u32>(0u, ~u_input.b), vec2<u32>(_wgslsmith_mod_u32(~var_0, ~u_input.b), reverseBits(~u_input.b))), _wgslsmith_div_vec2_u32(~_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(var_0, 40630u), vec2<u32>(73233u, 1u)), ~vec2<u32>(u_input.b, 4294967295u)), vec2<u32>(u_input.b, ~2240u)));
    global1 = vec2<bool>(!any(vec2<bool>(arg_3.a.a.x, !global1.x)), func_1(_wgslsmith_sub_u32(~_wgslsmith_add_u32(var_1, u_input.b), firstTrailingBit(u_input.b))).a.a.x);
    let var_2 = _wgslsmith_dot_vec3_u32(select(min(firstTrailingBit(vec3<u32>(u_input.b, 1u, 4294967295u)), _wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.b, 1u, 4294967295u), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(0u, 28348u, 0u), vec3<u32>(var_1, u_input.b, 1631u)))), _wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(var_1, 19412u, var_0) << (vec3<u32>(var_0, 4294967295u, var_0) % vec3<u32>(32u))), ~vec3<u32>(4294967295u, u_input.b, var_0)), !vec3<bool>(var_1 > 0u, false, arg_0.a.x)), reverseBits(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, var_1, var_0), vec3<u32>(var_0, 0u, 4294967295u)) >> (~1u % 32u), ~u_input.b, 1u)));
    let var_3 = -arg_0.b;
    return func_4(func_1(_wgslsmith_clamp_u32(abs(var_2) | ~1u, _wgslsmith_mult_u32(0u, _wgslsmith_clamp_u32(var_2, 1u, 33347u)), 16309u)), ~_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(8609i, arg_0.b, 0i, -2147483647i), select(vec4<i32>(-1i, u_input.a.x, -2147483647i, 30847i), vec4<i32>(u_input.a.x, -460i, arg_0.b, var_3), vec4<bool>(arg_0.a.x, arg_0.a.x, false, arg_0.a.x))), ~vec4<i32>(arg_0.b, -2147483647i, arg_3.b.x, -1i) | (vec4<i32>(8602i, u_input.a.x, arg_0.b, -37697i) << (vec4<u32>(1u, 18705u, var_2, 40924u) % vec4<u32>(32u)))));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool) -> vec2<u32> {
    global1 = !func_4(Struct_2(Struct_1(!arg_1.a, 0i), -(arg_0.b >> (vec3<u32>(u_input.b, 4294967295u, u_input.b) % vec3<u32>(32u)))), u_input.a.x).a.a.xz;
    let var_0 = func_5(Struct_1(select(!vec3<bool>(true, true, global1.x), arg_0.a.a, vec3<bool>(false, any(arg_0.a.a), arg_0.a.a.x || false)), func_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2592f, 196f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(938f, 303f) + vec2<f32>(-1506f, 2479f)), func_5(Struct_1(arg_1.a, 15992i), 261f, vec4<bool>(arg_1.a.x, arg_2, false, true), arg_0).a.a.x))).b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(f32(-1f) * -174f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -387f))), !(!(!select(vec4<bool>(arg_2, arg_0.a.a.x, arg_1.a.x, arg_0.a.a.x), vec4<bool>(arg_0.a.a.x, arg_0.a.a.x, arg_0.a.a.x, false), vec4<bool>(arg_2, false, true, true)))), arg_0).a.a.zz;
    let var_1 = func_3(arg_1, 4294967295u) ^ -9739i;
    global0 = _wgslsmith_div_u32(firstLeadingBit(_wgslsmith_dot_vec3_u32(~vec3<u32>(31249u, u_input.b, u_input.b), max(vec3<u32>(4294967295u, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, 36983u)))), abs(4294967295u)) > abs(15029u);
    let var_2 = vec4<u32>(u_input.b, u_input.b, 12519u, 50955u);
    return ~_wgslsmith_mult_vec2_u32(max(var_2.yx, vec2<u32>(19542u, 1u)), ~firstTrailingBit(~vec2<u32>(var_2.x, u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec2_u32(vec2<u32>(countOneBits(firstLeadingBit(firstTrailingBit(2165u))), 0u), vec2<u32>(~u_input.b, _wgslsmith_mult_u32(~u_input.b, 1u)) >> (func_6(func_5(Struct_1(vec3<bool>(true, global1.x, global1.x), u_input.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1294f), !vec4<bool>(false, global1.x, global1.x, true), func_1(4294967295u)), Struct_1(func_1(u_input.b).a.a, -u_input.a.x), global1.x) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-939f, 605f), 1485f), vec2<f32>(-219f, _wgslsmith_f_op_f32(floor(-887f))))));
}

