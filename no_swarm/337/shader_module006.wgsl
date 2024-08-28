struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: bool,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = select(vec4<bool>(true, true, !all(select(vec4<bool>(arg_0.c, true, true, false), vec4<bool>(true, arg_0.c, false, arg_0.c), vec4<bool>(arg_0.c, false, arg_0.c, arg_0.c))), !all(vec4<bool>(arg_0.c, false, arg_0.c, true))), !select(vec4<bool>(all(vec4<bool>(arg_0.c, arg_0.c, arg_0.c, arg_0.c)), u_input.a <= 6434u, false, arg_0.c), select(select(vec4<bool>(arg_0.c, arg_0.c, arg_0.c, false), vec4<bool>(arg_0.c, arg_0.c, arg_0.c, false), vec4<bool>(false, arg_0.c, true, arg_0.c)), vec4<bool>(arg_0.c, false, arg_0.c, arg_0.c), vec4<bool>(false, arg_0.c, false, false)), true), !select(select(vec4<bool>(arg_0.c, true, arg_0.c, true), vec4<bool>(false, arg_0.c, false, arg_0.c), arg_0.c), !vec4<bool>(arg_0.c, arg_0.c, true, arg_0.c), vec4<bool>(arg_0.c, false, true, true)));
    var var_1 = arg_0;
    var var_2 = arg_0;
    var var_3 = firstTrailingBit(firstLeadingBit(vec3<u32>(1u, var_1.d.x, _wgslsmith_sub_u32(~29551u, var_2.b.x))));
    let var_4 = Struct_1(select(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(63578i, 8661i, 5099i)), ~firstTrailingBit(vec3<i32>(0i, -8739i, 30597i))), _wgslsmith_sub_i32(_wgslsmith_sub_i32(var_1.a, 0i), var_1.a), true), vec3<u32>(u_input.a | max(_wgslsmith_dot_vec3_u32(var_1.b, vec3<u32>(1u, var_2.d.x, 0u)), 1u & u_input.a), var_1.d.x, _wgslsmith_sub_u32(8010u, countOneBits(arg_0.b.x)) & _wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.a, 2838u), 4294967295u)), !(!(!var_0.x | var_1.c)), _wgslsmith_sub_vec3_u32(vec3<u32>(75035u, _wgslsmith_sub_u32(u_input.a, 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 38716u, 0u, arg_0.d.x), vec4<u32>(1u, var_2.d.x, var_1.b.x, 4294967295u))) & _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 0u, var_1.d.x), var_1.d), arg_0.b, vec3<u32>(var_2.d.x, 79613u, 5122u) & arg_0.b), ~(~(~vec3<u32>(u_input.a, u_input.a, 4294967295u)))));
    return 5979i >> (var_3.x % 32u);
}

fn func_2(arg_0: vec4<i32>, arg_1: i32) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-865f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(350f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-870f + 725f)) + 964f)));
    let var_1 = reverseBits(-vec2<i32>(max(1i, _wgslsmith_mod_i32(arg_0.x, 1i)), func_3(Struct_1(2147483647i, vec3<u32>(133074u, u_input.a, u_input.a), true, vec3<u32>(u_input.a, 3143u, u_input.a)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), -1174f, -1000f));
    var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -158f, var_2.x)), _wgslsmith_f_op_vec3_f32(-var_0))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(var_0))), true))) * var_0);
    let var_3 = select(!vec2<bool>(true, all(select(vec2<bool>(false, false), vec2<bool>(false, true), false))), !select(vec2<bool>(true, true), vec2<bool>(true, true), true), true);
    return arg_0.yz;
}

fn func_1() -> bool {
    let var_0 = Struct_1(_wgslsmith_dot_vec2_i32(select(func_2(vec4<i32>(-1i, -2147483647i, 1i, 2147483647i), 0i), select(vec2<i32>(-53129i, -53497i), vec2<i32>(-1i, 1i), vec2<bool>(false, false)), true) | -vec2<i32>(1i, -5972i), vec2<i32>(1i, 1i)), ~_wgslsmith_mod_vec3_u32(~min(vec3<u32>(0u, 4294967295u, u_input.a), vec3<u32>(1u, 9445u, u_input.a)), abs(~vec3<u32>(u_input.a, 31798u, 4294967295u))), !((~u_input.a != min(u_input.a, u_input.a)) || true), select(~(~vec3<u32>(u_input.a, 67380u, 71333u)) | ~abs(vec3<u32>(107640u, u_input.a, u_input.a)), countOneBits(~vec3<u32>(u_input.a, u_input.a, 20781u)) >> (_wgslsmith_mult_vec3_u32(abs(vec3<u32>(u_input.a, 35094u, u_input.a)), vec3<u32>(u_input.a, u_input.a, u_input.a)) % vec3<u32>(32u)), vec3<bool>(true, false, !any(vec3<bool>(true, false, false)))));
    let var_1 = true;
    let var_2 = _wgslsmith_dot_vec2_i32(-max(-(vec2<i32>(-42504i, 1i) << (var_0.b.yy % vec2<u32>(32u))), -select(vec2<i32>(-1i, -1i), vec2<i32>(39641i, var_0.a), false)), ~select(max(vec2<i32>(var_0.a, 64526i), vec2<i32>(24457i, var_0.a)), vec2<i32>(1i, var_0.a), select(vec2<bool>(var_0.c, var_1), vec2<bool>(true, true), true)) | _wgslsmith_mod_vec2_i32(vec2<i32>(var_0.a, -27206i) << (vec2<u32>(1u, 598u) % vec2<u32>(32u)), ~vec2<i32>(-1418i, 43908i)));
    let var_3 = var_0;
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -703f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-340f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(425f))))))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_u32(u_input.a, _wgslsmith_add_u32(u_input.a, _wgslsmith_sub_u32(firstTrailingBit(~10334u), u_input.a)), ~_wgslsmith_mod_u32(_wgslsmith_mod_u32(~49771u, ~38278u), 82416u));
    let var_1 = ~(~1i);
    var var_2 = ~(~vec3<u32>(26932u, 26797u, u_input.a));
    var var_3 = max(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(70524u, 4294967295u << (var_2.x % 32u)), 1366u, ~(12162u >> (var_2.x % 32u)), min(firstLeadingBit(var_0), 15091u)), abs(vec4<u32>(1u, 34763u, 6714u >> (var_0 % 32u), 7996u))), abs(~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(24308u, u_input.a, 10071u), vec3<u32>(60024u, u_input.a, 0u)), max(20191u, var_0), 61671u, u_input.a ^ var_0)));
    let var_4 = all(select(vec2<bool>(true, true), select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(select(false, true, true), false), all(vec4<bool>(true, true, true, true))), func_1()));
    var_2 = ~(~(~(var_3.yxz & vec3<u32>(77645u, 43u, 18550u)))) << (((vec3<u32>(36510u, _wgslsmith_mod_u32(var_2.x, 67990u), 4294967295u) | ~(~vec3<u32>(29335u, var_0, 0u))) ^ (var_3.zyx >> (var_3.xzw % vec3<u32>(32u)))) % vec3<u32>(32u));
    let var_5 = (max(abs(-vec2<i32>(-19312i, var_1)), -(vec2<i32>(var_1, -2147483647i) << (var_2.yx % vec2<u32>(32u)))) >> (~abs(var_2.xz) % vec2<u32>(32u))) & (~(~select(vec2<i32>(-2147483647i, var_1), vec2<i32>(var_1, 0i), vec2<bool>(var_4, false))) ^ (_wgslsmith_div_vec2_i32(max(vec2<i32>(var_1, -5191i), vec2<i32>(1155i, var_1)), vec2<i32>(0i, 2147483647i)) | func_2(min(vec4<i32>(-2147483647i, var_1, 15164i, var_1), vec4<i32>(var_1, 12698i, -2147483647i, var_1)), var_1)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(0i >> (var_0 % 32u), var_1, 0i), ~(-1i), ~var_3.wxz);
}

