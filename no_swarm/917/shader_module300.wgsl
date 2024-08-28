struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec2<bool>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec4<bool>) -> i32 {
    var var_0 = ~(~(-11288i));
    let var_1 = 62097u;
    var_0 = 56700i;
    var var_2 = Struct_1(all(arg_0.xy), ~vec2<u32>(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1, var_1, 0u), vec3<u32>(4294967295u, var_1, 43126u))), var_1), !vec2<bool>(true, arg_0.x), min(abs(~(~vec2<u32>(var_1, var_1))), vec2<u32>(45749u, 40737u & var_1)));
    let var_3 = _wgslsmith_mod_u32(var_2.b.x, _wgslsmith_sub_u32(var_2.d.x, var_1));
    return _wgslsmith_div_i32(abs(52204i), countOneBits(_wgslsmith_div_i32(_wgslsmith_sub_i32(~u_input.a, ~(-8806i)), _wgslsmith_add_i32(~u_input.a, max(-2147483647i, u_input.a)))));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: i32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(853f, _wgslsmith_f_op_f32(-276f * _wgslsmith_div_f32(502f, 1227f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-711f, -663f))))) - vec2<f32>(-203f, _wgslsmith_f_op_f32(-686f * -110f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-559f - -1000f), -1000f) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, 444f), vec2<f32>(-1905f, 1000f))), vec2<f32>(1310f, 1000f))))));
    var var_1 = 38532u;
    var var_2 = vec3<i32>(-_wgslsmith_add_i32(arg_2, _wgslsmith_dot_vec2_i32(vec2<i32>(1800i, arg_2), vec2<i32>(-1i, -31523i) >> (arg_1.b % vec2<u32>(32u)))), 4288i, u_input.a);
    var var_3 = Struct_2(reverseBits(vec4<i32>(~(-5938i), arg_2, ~(-2147483647i), max(-2147483647i, var_2.x) << (1u % 32u))), vec3<f32>(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(trunc(-723f))), -1000f, _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(-var_0.x)))));
    let var_4 = Struct_2(-(~firstLeadingBit(firstTrailingBit(vec4<i32>(-1i, -27748i, -1i, -2147483647i)))), var_3.b);
    return 1i >> (~arg_1.b.x % 32u);
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: u32, arg_3: Struct_1) -> vec2<u32> {
    var var_0 = min(-2147483647i & func_3(!vec3<bool>(arg_0, arg_3.c.x, false), arg_3, -2147483647i), -(~_wgslsmith_sub_i32(reverseBits(-19429i), 1i)));
    var_0 = u_input.a;
    var var_1 = _wgslsmith_mod_vec3_i32(firstTrailingBit(select(~countOneBits(vec3<i32>(u_input.a, -1i, u_input.a)), vec3<i32>(-1i) * -vec3<i32>(-37933i, u_input.a, u_input.a), false)), abs(vec3<i32>(-abs(u_input.a), 0i, u_input.a ^ -u_input.a)));
    var var_2 = arg_2;
    let var_3 = select(0i, -(~2147483647i), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(78072u, 34718u, arg_1)), _wgslsmith_mult_vec3_u32(max(vec3<u32>(arg_1, 71220u, arg_1), vec3<u32>(arg_2, 105765u, 1u)), vec3<u32>(arg_1, arg_2, 11511u))) <= ~_wgslsmith_add_u32(arg_2 ^ arg_1, ~0u));
    return abs(vec2<u32>(0u, 1u) & select(vec2<u32>(arg_2, arg_3.b.x), arg_3.d, !arg_3.c));
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: Struct_1, arg_3: Struct_2) -> f32 {
    var var_0 = arg_2;
    let var_1 = arg_3;
    var_0 = arg_2;
    var var_2 = Struct_2(_wgslsmith_div_vec4_i32(-vec4<i32>(arg_3.a.x & var_1.a.x, _wgslsmith_div_i32(2147483647i, 2147483647i), countOneBits(-51621i), arg_3.a.x), abs(_wgslsmith_div_vec4_i32(select(arg_3.a, var_1.a, vec4<bool>(true, arg_0, var_0.a, false)), vec4<i32>(arg_3.a.x, arg_3.a.x, 1i, arg_3.a.x)))), var_1.b);
    let var_3 = Struct_1(true, _wgslsmith_sub_vec2_u32(~_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_2.b.x, 15622u), arg_2.b), vec2<u32>(arg_2.d.x, 0u)), arg_2.d), !select(select(var_0.c, !var_0.c, !vec2<bool>(arg_0, arg_2.a)), vec2<bool>(arg_1 < 382f, arg_2.d.x == arg_2.d.x), arg_2.c), ~vec2<u32>(min(firstLeadingBit(arg_2.d.x), var_0.d.x >> (arg_2.b.x % 32u)), countOneBits(0u | var_0.d.x)));
    return _wgslsmith_f_op_f32(-var_2.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-313f * 517f)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(174f - -1000f)))));
    let var_1 = vec3<bool>(all(vec2<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false)))), false, !(all(vec3<bool>(true, true, true)) | true));
    var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)))));
    var var_2 = firstTrailingBit(~(vec4<i32>(-1i) * -vec4<i32>(u_input.a, 2147483647i, u_input.a, -2147483647i)));
    var_0 = -531f;
    var_2 = _wgslsmith_add_vec4_i32(~(-_wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(1i, -19824i, var_2.x, var_2.x)), vec4<i32>(21695i, var_2.x, var_2.x, 2147483647i))), vec4<i32>(u_input.a, func_1(select(vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(true, var_1.x, false, var_1.x), true)) | u_input.a, max((u_input.a ^ -2147483647i) | 0i, _wgslsmith_mod_i32(max(0i, var_2.x), _wgslsmith_div_i32(u_input.a, var_2.x))), -1i));
    var_0 = _wgslsmith_f_op_f32(func_4(!(var_2.x <= 2147483647i), -1906f, Struct_1(!var_1.x, _wgslsmith_add_vec2_u32(vec2<u32>(0u, 40141u), func_2(var_1.x, 0u, 1u, Struct_1(var_1.x, vec2<u32>(1u, 4294967295u), vec2<bool>(var_1.x, true), vec2<u32>(4294967295u, 8088u)))) | ~_wgslsmith_clamp_vec2_u32(vec2<u32>(91620u, 35617u), vec2<u32>(11833u, 25911u), vec2<u32>(1u, 0u)), !var_1.xz, ~vec2<u32>(1u, 1u)), Struct_2(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(51431i, -2147483647i, u_input.a, 6015i), vec4<i32>(var_2.x, var_2.x, -1i, u_input.a)) ^ ~vec4<i32>(u_input.a, var_2.x, u_input.a, 1i), abs(abs(vec4<i32>(u_input.a, -35820i, -28761i, u_input.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-2496f, -1390f, 689f), _wgslsmith_div_vec3_f32(vec3<f32>(-431f, -804f, 1274f), vec3<f32>(631f, 149f, 350f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(-1i, _wgslsmith_dot_vec4_i32(select(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, 1i, u_input.a, 0i), vec4<i32>(var_2.x, u_input.a, var_2.x, u_input.a)), min(vec4<i32>(2147483647i, var_2.x, var_2.x, 0i), vec4<i32>(22124i, -23039i, u_input.a, 2147483647i)), var_1.x & true), firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 1i, 1i, var_2.x), vec4<i32>(-1i, var_2.x, 1i, u_input.a)))), var_2.x));
}

