struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec2<bool>) -> bool {
    let var_0 = -(~(-27939i) >> (((u_input.a << (36149u % 32u)) | 0u) % 32u));
    let var_1 = all(select(vec4<bool>(false, true, arg_0.x, !arg_0.x), select(select(select(vec4<bool>(true, arg_0.x, true, arg_0.x), vec4<bool>(false, true, arg_0.x, arg_0.x), arg_0.x), select(vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), vec4<bool>(true, true, false, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false)), all(vec2<bool>(false, arg_0.x))), vec4<bool>(false, !arg_0.x, true, arg_0.x | true), true), false));
    var var_2 = u_input.a;
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-381f))), vec3<bool>(var_1, !(var_1 || true), !any(vec4<bool>(var_1, arg_0.x, true, arg_0.x))), vec2<u32>(_wgslsmith_sub_u32(15455u, ~u_input.a), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(15624u, u_input.a, 1u)), ~vec3<u32>(u_input.a, u_input.a, 4294967295u))), abs(abs(abs(vec3<u32>(u_input.a, u_input.a, 53083u))))), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-389f)))))), select(vec3<bool>(all(vec2<bool>(var_1, var_1)), true, all(vec4<bool>(arg_0.x, var_1, arg_0.x, var_1))), vec3<bool>(true, var_1, arg_0.x | false), select(vec3<bool>(var_1, true, var_1), select(vec3<bool>(var_1, var_1, false), vec3<bool>(var_1, true, arg_0.x), vec3<bool>(false, false, var_1)), select(vec3<bool>(true, true, var_1), vec3<bool>(arg_0.x, true, true), true))), max(vec2<u32>(58267u, _wgslsmith_clamp_u32(u_input.a, 7208u, 9854u)), firstTrailingBit(vec2<u32>(1u, 21132u))), ~(~vec3<u32>(u_input.a, u_input.a, 4294967295u))));
    let var_4 = var_3.b;
    return false;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: bool) -> u32 {
    var var_0 = select(vec3<bool>(all(vec2<bool>(true, true)), func_3(arg_1.b.zx), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a + -599f) + -1398f) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a - arg_1.a))), !select(!(!arg_1.b), !(!arg_1.b), vec3<bool>(arg_1.b.x, true, !arg_2)), true);
    var var_1 = false;
    return abs(select(1u, _wgslsmith_sub_u32(countOneBits(arg_0.x >> (arg_0.x % 32u)), countOneBits(0u)), all(vec4<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x, !arg_1.b.x))));
}

fn func_4(arg_0: vec4<i32>, arg_1: u32, arg_2: f32, arg_3: Struct_3) -> vec3<i32> {
    global0 = select(~(~arg_0.zxx >> (min(arg_3.a.a.d, vec3<u32>(u_input.a, u_input.a, 1u)) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_dot_vec4_i32(-(~arg_0), arg_0), -_wgslsmith_dot_vec2_i32(~vec2<i32>(1i, 0i), arg_0.xy), arg_0.x ^ -3639i), arg_3.b.x);
    global0 = _wgslsmith_mult_vec3_i32(-vec3<i32>(firstTrailingBit(_wgslsmith_mult_i32(21985i, 0i)), arg_0.x, ~select(-1i, 0i, arg_3.a.b.b.x)), countOneBits(arg_0.ywy));
    global0 = ~vec3<i32>(~(-1i), _wgslsmith_sub_i32(~(i32(-1i) * -1911i), _wgslsmith_dot_vec4_i32(firstTrailingBit(arg_0), arg_0 ^ vec4<i32>(42505i, global0.x, global0.x, arg_0.x))), 8875i);
    global0 = arg_0.yyz;
    global0 = ~(~_wgslsmith_clamp_vec3_i32(arg_0.xzx, reverseBits(-vec3<i32>(94331i, global0.x, global0.x)), countOneBits(~arg_0.xzz)));
    return vec3<i32>(firstLeadingBit(-15560i), min(global0.x, arg_0.x), -52311i);
}

fn func_1(arg_0: f32, arg_1: vec2<bool>, arg_2: f32, arg_3: Struct_2) -> i32 {
    var var_0 = arg_3.a.b;
    let var_1 = -1376f;
    global0 = firstLeadingBit(func_4(min(_wgslsmith_add_vec4_i32(-vec4<i32>(global0.x, global0.x, global0.x, global0.x), _wgslsmith_div_vec4_i32(vec4<i32>(global0.x, global0.x, -2147483647i, -1i), vec4<i32>(global0.x, 2147483647i, global0.x, -2147483647i))), ~vec4<i32>(-61584i, global0.x, -2147483647i, -11745i)), ~(~func_2(vec2<u32>(u_input.a, 4294967295u), Struct_1(202f, vec3<bool>(arg_3.a.b.x, arg_1.x, true), vec2<u32>(21424u, u_input.a), arg_3.a.d), false)), arg_3.a.a, Struct_3(arg_3, select(!arg_3.b.b, arg_3.a.b, !arg_3.b.b))));
    let var_2 = false;
    var var_3 = true;
    return firstLeadingBit(-abs(_wgslsmith_div_i32(abs(0i), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, global0.x, -11441i), vec3<i32>(0i, 13288i, global0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(-1i, -25450i, ~(-(_wgslsmith_mult_i32(global0.x, global0.x) >> (~u_input.a % 32u))));
    global0 = _wgslsmith_sub_vec3_i32(-(~(~_wgslsmith_add_vec3_i32(vec3<i32>(-3090i, 12409i, 6197i), vec3<i32>(2147483647i, -75979i, var_0.x)))), vec3<i32>(~(-1i), ~(-func_1(1704f, vec2<bool>(false, false), -1000f, Struct_2(Struct_1(506f, vec3<bool>(false, true, true), vec2<u32>(u_input.a, 621u), vec3<u32>(u_input.a, 27007u, 9423u)), Struct_1(-628f, vec3<bool>(false, true, true), vec2<u32>(55122u, u_input.a), vec3<u32>(0u, 1u, 37792u))))), ~(-1i)));
    let var_1 = Struct_2(Struct_1(1f, vec3<bool>(true, true, true), vec2<u32>(~func_2(vec2<u32>(u_input.a, u_input.a), Struct_1(622f, vec3<bool>(true, true, true), vec2<u32>(17988u, u_input.a), vec3<u32>(94538u, u_input.a, u_input.a)), true), _wgslsmith_add_u32(min(u_input.a, 0u), u_input.a)), ~_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a, 100935u, 31295u), vec3<u32>(u_input.a, u_input.a, u_input.a) & vec3<u32>(u_input.a, 1u, 32974u))), Struct_1(_wgslsmith_f_op_f32(step(1097f, _wgslsmith_f_op_f32(-1f))), vec3<bool>(true, firstTrailingBit(1i) == -global0.x, true), min(select(vec2<u32>(1u, u_input.a), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(0u, 1u)), all(vec2<bool>(true, false))), ~(vec2<u32>(u_input.a, 1u) ^ vec2<u32>(1u, 4294967295u))), ~firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(u_input.a, u_input.a, 0u)))));
    global0 = _wgslsmith_mult_vec3_i32(vec3<i32>(6167i, -2147483647i, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, -15182i, var_0.x, 39583i), abs(vec4<i32>(0i, var_0.x, 8286i, global0.x))), ~global0.x)), vec3<i32>(~func_1(_wgslsmith_f_op_f32(230f * var_1.a.a), select(var_1.a.b.xy, var_1.b.b.xx, vec2<bool>(var_1.a.b.x, var_1.b.b.x)), _wgslsmith_f_op_f32(floor(var_1.a.a)), var_1), abs(0i), 7931i));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -887f), 416f);
    var var_3 = _wgslsmith_mult_i32(reverseBits(var_0.x), 0i);
    var var_4 = var_1.a.b;
    let x = u_input.a;
    s_output = StorageBuffer(~max(reverseBits(-vec4<i32>(-1i, -20049i, 31318i, global0.x)), vec4<i32>(global0.x, func_1(var_1.a.a, var_4.yz, -672f, var_1), -global0.x, _wgslsmith_div_i32(1i, 3140i))), ~select(_wgslsmith_mod_vec3_i32(vec3<i32>(global0.x, var_0.x, var_0.x), select(vec3<i32>(-1i, -77557i, -5166i), vec3<i32>(var_0.x, global0.x, -2147483647i), vec3<bool>(var_4.x, true, var_4.x))), -_wgslsmith_sub_vec3_i32(vec3<i32>(0i, global0.x, 2147483647i), vec3<i32>(global0.x, global0.x, -1i)), u_input.a > 43769u));
}

