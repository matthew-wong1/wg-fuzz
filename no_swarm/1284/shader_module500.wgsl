struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 40336u, 0u, 14524u);

var<private> global1: vec3<i32> = vec3<i32>(38973i, 63991i, -1i);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: i32) -> u32 {
    global1 = _wgslsmith_add_vec3_i32(-_wgslsmith_sub_vec3_i32(~vec3<i32>(arg_2, 63050i, -32756i), arg_0.b), select(~((vec3<i32>(arg_2, arg_0.c.x, 1i) & vec3<i32>(global1.x, arg_0.c.x, 1i)) | ~vec3<i32>(-2147483647i, 0i, 6469i)), vec3<i32>(arg_0.c.x & arg_0.c.x, -1i, 1i << (0u % 32u)), false));
    global1 = _wgslsmith_add_vec3_i32(arg_0.d.yxw, _wgslsmith_clamp_vec3_i32(-(~arg_0.d.zyz), arg_0.c.zxw ^ ~firstLeadingBit(arg_0.b), arg_0.d.zzy));
    global1 = abs(~abs(arg_0.d.yxz) >> (firstTrailingBit(firstTrailingBit(firstTrailingBit(vec3<u32>(global0.x, global0.x, u_input.a)))) % vec3<u32>(32u)));
    return countOneBits(u_input.c.x);
}

fn func_2(arg_0: Struct_1) -> u32 {
    global0 = ~(select(vec4<u32>(33725u, select(39471u, 1u, true), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, u_input.d, u_input.a, global0.x), u_input.c), global0.x), vec4<u32>(4294967295u, global0.x, 4294967295u, 24249u) & (u_input.c & u_input.c), all(!vec3<bool>(arg_0.a.x, false, true))) | _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(1u, 2339u, u_input.c.x), ~u_input.d, 39025u << (1u % 32u), func_3(Struct_1(vec4<bool>(arg_0.e.x, true, false, true), vec3<i32>(global1.x, global1.x, arg_0.d.x), vec4<i32>(0i, 15526i, global1.x, -35975i), vec4<i32>(arg_0.c.x, -2147483647i, 0i, arg_0.b.x), vec3<bool>(arg_0.e.x, true, arg_0.a.x)), vec4<bool>(arg_0.a.x, false, false, false), arg_0.b.x)), vec4<u32>(u_input.a & global0.x, u_input.b & 0u, ~u_input.d, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global0.x), vec2<u32>(4294967295u, global0.x)))));
    global0 = ~(~(~firstTrailingBit(vec4<u32>(u_input.a, 105363u, 16216u, 30693u))) & ~abs(u_input.c));
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(559f + -567f)) * -793f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2874f + -215f) * 347f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1509f, 967f)) + -814f), -122f))), -205f);
    global0 = ~u_input.c;
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - -298f) * -1110f), var_0.x, var_0.x) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-282f, -297f, 694f, var_0.x), vec4<f32>(-253f, var_0.x, var_0.x, -1483f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(188f, -677f, var_0.x, var_0.x) - vec4<f32>(-969f, 876f, 178f, var_0.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -108f), -147f, var_0.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-836f, var_0.x, var_0.x, 107f))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, 579f, var_0.x, -340f), vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))))), !vec4<bool>(all(vec4<bool>(false, true, arg_0.e.x, true)), true | arg_0.e.x, false, arg_0.e.x))));
    return ~((_wgslsmith_div_u32(~u_input.a, global0.x) << (reverseBits(countOneBits(9477u)) % 32u)) >> (func_3(Struct_1(arg_0.a, arg_0.c.xyx, vec4<i32>(90348i, arg_0.c.x, global1.x, global1.x), vec4<i32>(arg_0.c.x, global1.x, -1i, 6647i), !vec3<bool>(arg_0.a.x, arg_0.e.x, arg_0.e.x)), !vec4<bool>(false, arg_0.a.x, false, arg_0.e.x), 1i) % 32u));
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: u32, arg_3: vec4<i32>) -> vec4<i32> {
    var var_0 = true;
    global0 = vec4<u32>(~_wgslsmith_div_u32(arg_2, ~4294967295u), _wgslsmith_mod_u32(global0.x, abs(_wgslsmith_sub_u32(4294967295u, ~arg_2))), max(0u, arg_2), min(1u, abs(func_2(Struct_1(vec4<bool>(false, false, false, false), arg_3.yyy, vec4<i32>(0i, global1.x, -1i, arg_3.x), vec4<i32>(arg_1, -59649i, -2041i, global1.x), vec3<bool>(true, true, true))))));
    global1 = -vec3<i32>(~1i, 31165i, arg_3.x);
    let var_1 = true;
    let var_2 = arg_0;
    return abs(_wgslsmith_mod_vec4_i32(arg_3, ~arg_3));
}

fn func_4(arg_0: vec4<i32>) -> Struct_1 {
    let var_0 = all(vec2<bool>(!any(select(vec2<bool>(true, false), vec2<bool>(true, true), true)), !select(true, true, true)));
    global0 = vec4<u32>(1u, 12174u, ~func_2(Struct_1(vec4<bool>(false, var_0, var_0, var_0), vec3<i32>(0i, global1.x, global1.x) >> (u_input.c.zxx % vec3<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(global1.x, -14724i, global1.x, global1.x), vec4<i32>(arg_0.x, arg_0.x, global1.x, global1.x)), ~arg_0, vec3<bool>(false, var_0, var_0))), 39435u);
    var var_1 = -_wgslsmith_div_i32(~6260i, -2147483647i);
    var var_2 = var_0;
    var var_3 = Struct_1(vec4<bool>(var_0 && true, true, true, !var_0), func_1(-2298f, 3998i, ~63118u | global0.x, ~max(vec4<i32>(global1.x, global1.x, arg_0.x, -15963i), arg_0)).yyz, ~arg_0, -vec4<i32>(2147483647i, arg_0.x, ~(-62106i), ~global1.x), !vec3<bool>(true, var_0, !(var_0 || var_0)));
    return Struct_1(vec4<bool>(all(!vec3<bool>(true, var_0, var_3.e.x)), any(var_3.a.zwy), all(vec4<bool>(true, var_3.a.x, true, true)), var_0), vec3<i32>(2147483647i, abs(2147483647i), reverseBits(var_3.b.x) | var_3.c.x), max(_wgslsmith_div_vec4_i32(arg_0, (arg_0 << (u_input.c % vec4<u32>(32u))) & vec4<i32>(-32308i, global1.x, global1.x, global1.x)), abs(vec4<i32>(global1.x, var_3.b.x, 0i, -70840i) & arg_0)), _wgslsmith_mod_vec4_i32(vec4<i32>(-73509i, abs(var_3.c.x | var_3.c.x), -2147483647i, -25667i), var_3.c), var_3.a.wyz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0i;
    let var_1 = func_4(firstLeadingBit(func_1(_wgslsmith_f_op_f32(sign(-606f)), global1.x, ~(~21184u), vec4<i32>(global1.x, global1.x, -1i, -7411i))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1596f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1040f, -344f))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1760f - 1134f))))) + -342f);
    let var_3 = u_input.c.zy;
    var var_4 = vec3<f32>(var_2, 1115f, _wgslsmith_f_op_f32(164f - var_2));
    var_0 = -var_1.c.x;
    let var_5 = 1187f;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(573f)), _wgslsmith_f_op_f32(floor(var_5)), var_1.a.x)) + _wgslsmith_f_op_f32(var_4.x - -347f)), _wgslsmith_f_op_f32(round(var_4.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-148f, var_5, true))))));
}

