struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<u32>,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<u32>, arg_1: bool) -> bool {
    let var_0 = select(select(max(firstLeadingBit(u_input.a), vec3<u32>(u_input.a.x, ~49373u, 26671u)), select(_wgslsmith_mod_vec3_u32(abs(u_input.a), select(u_input.a, u_input.a, false)), _wgslsmith_sub_vec3_u32(select(vec3<u32>(107724u, u_input.a.x, arg_0.x), vec3<u32>(4294967295u, 44498u, u_input.a.x), vec3<bool>(false, arg_1, false)), u_input.a), select(!vec3<bool>(arg_1, true, false), vec3<bool>(arg_1, arg_1, arg_1), arg_1)), all(!select(vec2<bool>(false, true), vec2<bool>(arg_1, false), vec2<bool>(true, false)))), select(vec3<u32>(u_input.a.x, countOneBits(27306u), min(20297u, u_input.a.x)) | (vec3<u32>(0u, u_input.a.x, u_input.a.x) >> (_wgslsmith_mult_vec3_u32(u_input.a, u_input.a) % vec3<u32>(32u))), _wgslsmith_mod_vec3_u32(~(~vec3<u32>(10931u, 39084u, arg_0.x)), vec3<u32>(~41803u, abs(u_input.a.x), _wgslsmith_dot_vec3_u32(u_input.a, u_input.a))), !(!select(vec3<bool>(true, false, arg_1), vec3<bool>(true, false, false), false))), vec3<bool>(!(arg_1 && (1u <= u_input.a.x)), false, true));
    global0 = -738f;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2149f, 880f))))));
    global0 = _wgslsmith_f_op_f32(ceil(452f));
    var var_2 = u_input.a.x;
    return !(-1i < reverseBits(-(0i >> (u_input.a.x % 32u))));
}

fn func_2(arg_0: Struct_1) -> f32 {
    var var_0 = select(!select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), true), vec2<bool>(false, func_3(u_input.a.zx, true))), select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), !(!select(vec2<bool>(true, true), vec2<bool>(false, false), false)), !((u_input.a.x >= 2556u) || false)), vec2<bool>(!select(any(vec3<bool>(false, true, false)), true, true), false));
    let var_1 = !vec4<bool>(any(select(vec2<bool>(true, true), !vec2<bool>(true, var_0.x), !vec2<bool>(var_0.x, var_0.x))), var_0.x, true, var_0.x && (any(vec3<bool>(false, var_0.x, true)) || any(vec3<bool>(var_0.x, false, false))));
    var var_2 = u_input.a.x;
    let var_3 = vec3<bool>(!var_0.x & any(var_1.xz), !var_0.x, !(!((var_1.x && true) && var_1.x)));
    var_0 = var_3.zy;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(170f + arg_0.a), _wgslsmith_f_op_f32(-639f + -333f))), arg_0.a, true)))));
}

fn func_1() -> i32 {
    let var_0 = any(!vec3<bool>(true, any(vec3<bool>(false, true, false)), true)) & (_wgslsmith_f_op_f32(func_2(Struct_1(_wgslsmith_f_op_f32(519f + -1308f)))) < 1f);
    var var_1 = vec3<u32>(firstTrailingBit(4294967295u) << (~min(1u, u_input.a.x) % 32u), min(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 0u, u_input.a.x, 4294967295u), vec4<u32>(24757u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(4294967295u, 32160u, u_input.a.x, 4294967295u)), select(vec4<u32>(u_input.a.x, u_input.a.x, 20505u, 0u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<bool>(true, var_0, true, true))) << (u_input.a.x % 32u), _wgslsmith_mod_u32(0u, ~_wgslsmith_clamp_u32(63723u, u_input.a.x, 1u))), ~(~(~28984u)));
    var var_2 = Struct_1(-260f);
    global0 = _wgslsmith_f_op_f32(var_2.a * 917f);
    let var_3 = Struct_1(505f);
    return ~_wgslsmith_mult_i32(min(-2147483647i, -31985i), 1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1166f;
    var var_1 = _wgslsmith_mod_i32(1i, -7074i) & func_1();
    var var_2 = Struct_1(163f);
    var_0 = _wgslsmith_f_op_f32(var_2.a + var_2.a);
    var_2 = Struct_1(var_2.a);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1106f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(var_2.a)), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(abs(vec2<i32>(20770i, -2147483647i) >> (vec2<u32>(60695u, u_input.a.x) % vec2<u32>(32u))), ~vec2<i32>(-70429i, 0i)), countOneBits(vec2<i32>(1i, 1i))), select(u_input.a.zx, vec2<u32>(~(~u_input.a.x), _wgslsmith_mult_u32(26761u << (u_input.a.x % 32u), u_input.a.x)), all(vec4<bool>(true, true, var_2.a < var_2.a, true))), _wgslsmith_mod_vec2_i32(vec2<i32>(func_1(), _wgslsmith_dot_vec4_i32(vec4<i32>(18434i, 8052i, 16467i, -55311i), vec4<i32>(0i, -2147483647i, -26i, -26607i)) ^ ~(-1i)), ~vec2<i32>(firstLeadingBit(2147483647i), firstLeadingBit(-2147483647i))), 92025u);
}

