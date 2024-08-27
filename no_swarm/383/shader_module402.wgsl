struct Struct_1 {
    a: vec2<f32>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
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

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> vec2<f32> {
    global0 = Struct_1(vec2<f32>(global0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) - _wgslsmith_f_op_f32(ceil(global0.a.x)))), firstLeadingBit(_wgslsmith_sub_i32(-1i, i32(-1i) * -2147483647i)));
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-global0.a), -2147483647i);
    var var_0 = -1012f;
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-global0.a), u_input.a.x);
    var var_2 = ~(vec4<i32>(-2147483647i, ~(i32(-1i) * -42587i), _wgslsmith_mod_i32(31374i, 38125i), u_input.a.x) | _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, abs(9747i), 19475i, 1i), vec4<i32>(-1i) * -vec4<i32>(var_1.b, u_input.a.x, 1i, u_input.a.x)));
    return var_1.a;
}

fn func_2(arg_0: i32, arg_1: vec4<bool>, arg_2: bool, arg_3: vec4<bool>) -> u32 {
    global0 = Struct_1(global0.a, global0.b);
    global0 = Struct_1(global0.a, -(~(arg_0 | ~16216i)));
    let var_0 = Struct_1(vec2<f32>(1053f, _wgslsmith_f_op_f32(select(global0.a.x, 270f, false))), 2147483647i);
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-766f, global0.a.x) + vec2<f32>(global0.a.x, var_0.a.x)) - _wgslsmith_f_op_vec2_f32(select(global0.a, vec2<f32>(-173f, global0.a.x), true))) - _wgslsmith_f_op_vec2_f32(func_3()))), var_0.b);
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, _wgslsmith_f_op_f32(-522f * 396f))), max(abs(2147483647i), ~(~_wgslsmith_clamp_i32(-6807i, 2147483647i, 0i))));
    return firstTrailingBit(1861u);
}

fn func_4(arg_0: vec4<i32>, arg_1: i32, arg_2: u32) -> Struct_1 {
    var var_0 = abs(~countOneBits(~max(vec2<u32>(1u, 4294967295u), vec2<u32>(arg_2, 56231u))));
    let var_1 = vec2<bool>((17017i == -countOneBits(global0.b)) & all(select(vec2<bool>(true, true), vec2<bool>(false, false), true)), true);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(global0.a.x, global0.a.x)))))) < global0.a.x;
    let var_3 = !select(select(vec4<bool>(-426f < global0.a.x, var_2, var_2, var_1.x), vec4<bool>(var_1.x, true, !var_2, true), false), vec4<bool>(true, var_1.x, !(!var_1.x), any(!vec3<bool>(true, true, var_1.x))), select(select(select(vec4<bool>(var_2, var_1.x, var_2, var_2), vec4<bool>(var_2, var_1.x, var_1.x, var_2), vec4<bool>(var_2, true, var_2, true)), vec4<bool>(true, true, true, true), !var_1.x), select(vec4<bool>(var_2, var_2, false, var_2), vec4<bool>(true, var_2, var_1.x, false), any(vec2<bool>(var_1.x, var_1.x))), var_2));
    var var_4 = vec2<f32>(2228f, global0.a.x);
    return Struct_1(global0.a, abs(max(55267i, 2147483647i)));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = func_4(firstLeadingBit(select(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.b, 58021i, 0i, arg_0), vec4<i32>(-39353i, arg_0, global0.b, u_input.a.x) >> (vec4<u32>(86573u, 0u, 0u, 0u) % vec4<u32>(32u))), _wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(0i, global0.b, arg_2.b, global0.b)), ~vec4<i32>(-10650i, arg_1.b, arg_0, 1i)), any(vec4<bool>(true, true, true, true)))), arg_0, ~(~func_2(_wgslsmith_mult_i32(25648i, 23635i), vec4<bool>(true, true, false, false), select(true, false, true), vec4<bool>(true, true, true, true))));
    global0 = var_0;
    let var_1 = !(true | (true != select(false, false, false))) == true;
    global0 = var_0;
    global0 = func_4(select(~(-_wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.b, arg_1.b, -2361i, global0.b), vec4<i32>(-30994i, global0.b, arg_1.b, -49157i))), -vec4<i32>(-1i, _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(5135i, arg_2.b, 20782i)), min(-39726i, global0.b), ~var_0.b), var_1), i32(-1i) * -arg_1.b, _wgslsmith_sub_u32(~(~35957u), ~(~13906u)) | (~firstLeadingBit(0u) | ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 6585u, 44212u), vec3<u32>(28388u, 62098u, 4294967295u))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.a + vec2<f32>(-1440f, 797f)), _wgslsmith_f_op_vec2_f32(-arg_1.a)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3())))), var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(_wgslsmith_mult_i32(global0.b, -(~global0.b ^ 2147483647i)), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.x, -104f) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(global0.a)), _wgslsmith_f_op_vec2_f32(-global0.a))), ~u_input.a.x), Struct_1(global0.a, u_input.a.x));
    let var_0 = _wgslsmith_f_op_f32(floor(global0.a.x));
    let var_1 = func_1(~1i, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0, 2124f))))), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(14627i, u_input.a.x, u_input.a.x, u_input.a.x), ~vec4<i32>(-8826i, -58944i, 2147483647i, 1i)), -min(global0.b, 16882i))), func_1(countOneBits(2147483647i), func_4(vec4<i32>(global0.b >> (105457u % 32u), ~2147483647i, global0.b, 67623i), ~(-u_input.a.x), countOneBits(_wgslsmith_mult_u32(55201u, 1u))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -597f), _wgslsmith_f_op_f32(-var_0)), reverseBits(58148i))));
    global0 = func_4(countOneBits(vec4<i32>(~1i, 7715i, global0.b, 2147483647i)), -var_1.b, min(~(~select(36786u, 43914u, true)), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(14714u, 1u), select(vec2<u32>(1u, 4294967295u), vec2<u32>(11556u, 1u), vec2<bool>(true, true))), 0u)));
    let var_2 = _wgslsmith_dot_vec3_u32(reverseBits(select(~_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 52669u, 0u), vec3<u32>(0u, 53102u, 0u)), reverseBits(reverseBits(vec3<u32>(4294967295u, 32443u, 0u))), true)), reverseBits(firstLeadingBit(vec3<u32>(1u, 1u, 1u))));
    var var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(i32(-1i) * -30409i, _wgslsmith_clamp_i32(reverseBits(-2147483647i), u_input.a.x, abs(-11594i)) | abs(_wgslsmith_add_i32(-1i, -26255i))), max(_wgslsmith_div_vec2_u32(firstTrailingBit(vec2<u32>(0u, 39093u)), _wgslsmith_div_vec2_u32(vec2<u32>(91452u, var_2), vec2<u32>(var_2, 0u))) ^ firstTrailingBit(~vec2<u32>(var_2, 4294967295u)), abs(abs(~vec2<u32>(var_2, var_2)))), _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_2, var_2), vec2<u32>(0u, 0u)), ~vec2<u32>(var_2, 42657u), ~vec2<u32>(var_2, var_2)), vec2<u32>(187u, var_2)) | vec2<u32>(abs(0u), ~firstLeadingBit(19503u)));
}

