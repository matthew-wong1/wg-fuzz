struct Struct_1 {
    a: u32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(4294967295u, vec2<f32>(-1273f, 1000f));

var<private> global1: array<vec2<i32>, 16> = array<vec2<i32>, 16>(vec2<i32>(21716i, i32(-2147483648)), vec2<i32>(6287i, 23313i), vec2<i32>(2147483647i, 43604i), vec2<i32>(-13370i, i32(-2147483648)), vec2<i32>(22684i, 14186i), vec2<i32>(1i, 2147483647i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(49601i, 11380i), vec2<i32>(-45053i, -2160i), vec2<i32>(33186i, -1i), vec2<i32>(8712i, 0i), vec2<i32>(25315i, 1i), vec2<i32>(14934i, 77567i), vec2<i32>(2147483647i, -1i), vec2<i32>(-1i, -7457i), vec2<i32>(i32(-2147483648), 49407i));

var<private> global2: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(4294967295u, vec2<f32>(-1163f, -2365f)), Struct_1(24338u, vec2<f32>(503f, -1390f)), Struct_1(4294967295u, vec2<f32>(-1146f, -331f)), Struct_1(83929u, vec2<f32>(-115f, 985f)), Struct_1(0u, vec2<f32>(549f, -1397f)), Struct_1(0u, vec2<f32>(845f, -182f)), Struct_1(4294967295u, vec2<f32>(-154f, -1000f)), Struct_1(4294967295u, vec2<f32>(169f, 194f)), Struct_1(21221u, vec2<f32>(1000f, -1000f)));

var<private> global3: u32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<u32>, arg_1: i32) -> u32 {
    let var_0 = _wgslsmith_add_vec4_i32(abs(vec4<i32>(_wgslsmith_add_i32(arg_1, -1i) << (~arg_0.x % 32u), arg_1, arg_1 ^ _wgslsmith_add_i32(0i, -1i), arg_1)), vec4<i32>(u_input.a, -u_input.a, _wgslsmith_dot_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, u_input.a, u_input.a, u_input.a), vec4<i32>(0i, -36868i, u_input.a, u_input.a), vec4<i32>(2147483647i, u_input.a, -46966i, u_input.a)), -(~vec4<i32>(arg_1, 1i, 25537i, u_input.a))), _wgslsmith_mod_i32(-1i, -_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.a, arg_1), vec3<i32>(-2147483647i, 69782i, -1i)))));
    global1 = array<vec2<i32>, 16>();
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.b, firstTrailingBit(u_input.b ^ _wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(33604u, 0u, 4294967295u, 1u)), u_input.b, u_input.b))), 9u)];
    let var_2 = Struct_1(0u, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-511f * var_1.b.x), var_1.b.x)), -100f));
    return _wgslsmith_dot_vec2_u32(select(arg_0, countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(var_1.a, 43823u), arg_0)), false), arg_0) ^ ~0u;
}

fn func_4(arg_0: vec2<u32>, arg_1: u32, arg_2: vec2<bool>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(global0.b.x, global0.b.x, global0.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1536f, global0.b.x, -1129f))))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(336f, -1501f), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-global0.b)))) + _wgslsmith_f_op_vec2_f32(-global0.b)) + vec2<f32>(var_0.x, 102f));
    let var_2 = all(!vec4<bool>(true, any(vec4<bool>(arg_2.x, arg_2.x, true, arg_2.x)), arg_2.x, false));
    let var_3 = global2[_wgslsmith_index_u32(0u, 9u)];
    return -6213i;
}

fn func_2(arg_0: vec3<i32>) -> i32 {
    return func_4(vec2<u32>(u_input.b.x, min(global0.a ^ 64473u, func_3(vec2<u32>(38471u, global0.a), 1i))), max(_wgslsmith_dot_vec2_u32(u_input.b.xy, u_input.b.zx), func_3(vec2<u32>(0u, 1u), 96183i) >> (84606u % 32u)), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), vec2<bool>(true, true), select(select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true))));
}

fn func_1(arg_0: u32, arg_1: vec3<bool>) -> vec4<bool> {
    var var_0 = vec4<i32>(func_2(vec3<i32>(_wgslsmith_mod_i32(-u_input.a, -u_input.a), ~1i, abs(0i))), 13088i, ~(abs(u_input.a) >> (global0.a % 32u)), 53446i);
    let var_1 = global1[_wgslsmith_index_u32(u_input.d.x, 16u)];
    global2 = array<Struct_1, 9>();
    global3 = ~30569u;
    global0 = global2[_wgslsmith_index_u32(global0.a, 9u)];
    return select(select(vec4<bool>(false, any(arg_1), arg_1.x, arg_1.x), vec4<bool>(false, arg_1.x, !any(vec4<bool>(arg_1.x, true, false, false)), _wgslsmith_sub_u32(437u, global0.a) >= ~arg_0), _wgslsmith_clamp_i32(i32(-1i) * -2147483647i, 1i, -28605i | u_input.a) >= u_input.a), vec4<bool>(true, select(true, true, !(!arg_1.x)), any(!select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, false, true, arg_1.x), arg_1.x)), true), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (global0.a >> (38954u % 32u)) == 11221u;
    global2 = array<Struct_1, 9>();
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1592f - global0.b.x)), 1033f)), _wgslsmith_f_op_f32(global0.b.x * 2093f));
    let var_2 = _wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(-1i, _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(2147483647i, 36723i, u_input.a)), ~vec3<i32>(u_input.a, u_input.a, u_input.a)), _wgslsmith_mult_i32(i32(-1i) * -4374i, ~u_input.a))), ~countOneBits(vec3<i32>(-1i, ~u_input.a, ~(-17988i))));
    global3 = abs(_wgslsmith_mod_u32(global0.a, _wgslsmith_mod_u32(~global0.a, u_input.c)));
    var var_3 = select(!vec4<bool>(!select(false, false, false), all(vec2<bool>(true, false)), any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true)), select(true, false, false) & false), select(!vec4<bool>(all(vec3<bool>(false, true, true)), true, 778f == global0.b.x, 0i > var_2.x), select(vec4<bool>(true, true, true, global0.a < 0u), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), func_1(global0.a, vec3<bool>(false, true, false))), all(func_1(u_input.b.x, vec3<bool>(true, true, true)).wx)), func_1(global0.a, select(vec3<bool>(true, false, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), false))), all(vec4<bool>(any(func_1(92552u, vec3<bool>(false, false, true)).xyz), true, !(u_input.c == 0u), true)));
    var var_4 = global2[_wgslsmith_index_u32(4294967295u, 9u)];
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.yy, ~(~abs(vec4<u32>(87701u, 71136u, 76725u, 4294967295u))), abs(~1u), u_input.b.x, vec4<i32>(-var_2.x, _wgslsmith_div_i32(var_2.x, u_input.a), var_2.x, 2147483647i));
}

