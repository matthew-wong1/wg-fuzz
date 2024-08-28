struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: u32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: i32,
    b: Struct_3,
    c: Struct_4,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: i32, arg_3: Struct_3) -> bool {
    let var_0 = min(vec3<i32>(_wgslsmith_mult_i32(2147483647i, arg_2) ^ 8278i, -7647i, arg_2), vec3<i32>(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2, arg_2, arg_2), vec3<i32>(arg_2, 0i, arg_2))), -13695i, arg_2)) | vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(select(arg_2, -4836i, false), -arg_2), _wgslsmith_mod_i32(arg_2, -2147483647i) ^ (-30638i >> (arg_0.a.a.x % 32u))), -31652i, arg_2);
    var var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(arg_2, -(var_0.x << (0u % 32u)), ~(~(-arg_2))), var_0);
    var_1 = abs(var_0);
    return false;
}

fn func_2() -> i32 {
    let var_0 = Struct_3(Struct_2(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 105058u), vec3<u32>(40679u, u_input.a, u_input.a)))));
    let var_1 = any(vec3<bool>(select(true, any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true))), !func_3(var_0, 39101u, 1249i, var_0)), any(vec2<bool>(true, true)), true));
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1613f), -1072f));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -265f), _wgslsmith_div_f32(-164f, 496f)))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1463f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1044f + -148f))) * -1000f))));
    let var_3 = Struct_3(Struct_2(var_0.a.a));
    return select(-19217i, -1i, true) | countOneBits(5634i);
}

fn func_1() -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(-1464f * -1121f);
    let var_1 = vec3<i32>(19835i, -50837i, -(_wgslsmith_dot_vec2_i32(vec2<i32>(13847i, 2147483647i), vec2<i32>(-24867i, 57975i)) >> (~31257u % 32u))) >> (_wgslsmith_add_vec3_u32(select(min(vec3<u32>(u_input.a, 39699u, 4294967295u), vec3<u32>(17786u, u_input.a, 1u)), vec3<u32>(56654u, 1u, u_input.a), true) << (abs(~vec3<u32>(24451u, 21467u, u_input.a)) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(~vec3<u32>(47248u, u_input.a, 0u), ~vec3<u32>(u_input.a, 0u, 1u)) >> (vec3<u32>(abs(1u), u_input.a, min(u_input.a, u_input.a)) % vec3<u32>(32u))) % vec3<u32>(32u));
    let var_2 = func_2();
    var_0 = _wgslsmith_f_op_f32(-972f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-662f)) + _wgslsmith_f_op_f32(-612f - 464f)))))));
    var_0 = 994f;
    return !vec2<bool>(true, _wgslsmith_add_u32(u_input.a, 26917u) == ~10054u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-10917i, -34039i, -39401i), vec3<i32>(-2905i, -61619i, 78118i)), max(-5756i, 0i), i32(-1i) * -18346i, min(-1i, 2147483647i))), -(~(~vec4<i32>(1i, -37392i, 16855i, 0i))));
    var var_1 = _wgslsmith_div_u32(u_input.a, ~select(u_input.a, u_input.a, true));
    let var_2 = true;
    let var_3 = !(!(!(var_2 & false)) | any(!func_1()));
    var_0 = ~countOneBits(1i);
    var var_4 = Struct_1(false, vec2<bool>(true, false), ~(33531u ^ u_input.a), vec3<bool>(true, true, all(select(select(vec4<bool>(var_2, var_2, false, var_3), vec4<bool>(var_3, var_2, var_2, false), vec4<bool>(var_3, false, var_3, false)), !vec4<bool>(var_3, true, var_3, var_3), select(vec4<bool>(var_2, true, false, var_3), vec4<bool>(var_2, var_2, false, true), false)))));
    var var_5 = Struct_2(vec3<u32>(var_4.c, abs(39746u), reverseBits(var_4.c)) << (vec3<u32>(_wgslsmith_dot_vec3_u32(max(vec3<u32>(4294967295u, var_4.c, var_4.c), vec3<u32>(0u, 1u, 26047u)), ~vec3<u32>(var_4.c, 0u, 0u)), _wgslsmith_add_u32(abs(37259u), var_4.c), max(0u >> (u_input.a % 32u), 0u)) % vec3<u32>(32u)));
    var_5 = Struct_2(min(var_5.a, var_5.a));
    var var_6 = firstTrailingBit(firstLeadingBit(-9882i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, ~34868u), vec2<u32>(u_input.a, 1u)), 1000f, _wgslsmith_mult_vec2_i32(min(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, 1i), -vec2<i32>(20592i, -2147483647i)), vec2<i32>(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 416i, 2147483647i), vec3<i32>(-53655i, -1817i, -46113i)))), ~firstLeadingBit(firstTrailingBit(vec2<i32>(45755i, -2147483647i)))));
}

