struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<f32>,
    d: vec2<f32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 18>;

var<private> global1: array<u32, 20>;

var<private> global2: bool = true;

var<private> global3: Struct_1 = Struct_1(4294967295u, vec4<f32>(1174f, -1000f, -1489f, -307f), false);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = select(!select(vec4<bool>(select(true, arg_0.c, global3.c), true, false, arg_0.c), select(select(vec4<bool>(arg_0.c, true, global3.c, false), vec4<bool>(true, false, global3.c, global3.c), vec4<bool>(arg_0.c, global3.c, false, arg_0.c)), select(vec4<bool>(global3.c, false, true, false), vec4<bool>(false, false, arg_0.c, arg_0.c), vec4<bool>(false, arg_0.c, false, false)), select(vec4<bool>(false, true, false, arg_0.c), vec4<bool>(global3.c, global3.c, global3.c, false), global3.c)), vec4<bool>(all(vec4<bool>(true, arg_0.c, global3.c, arg_0.c)), arg_0.c, all(vec3<bool>(arg_0.c, arg_0.c, true)), arg_0.c)), select(select(select(!vec4<bool>(true, true, global3.c, false), vec4<bool>(arg_0.c, true, false, arg_0.c), select(vec4<bool>(true, global3.c, true, arg_0.c), vec4<bool>(true, true, true, arg_0.c), vec4<bool>(global3.c, arg_0.c, true, global3.c))), vec4<bool>(arg_0.c, select(arg_0.c, false, false), 530f > global3.b.x, all(vec3<bool>(global3.c, global3.c, global3.c))), all(select(vec4<bool>(true, false, global3.c, true), vec4<bool>(arg_0.c, global3.c, true, false), false))), vec4<bool>(true, select(true, arg_0.c, all(vec4<bool>(global3.c, global3.c, global3.c, arg_0.c))), arg_0.c, global3.c), global3.c), !vec4<bool>(true, all(!vec4<bool>(global3.c, false, arg_0.c, global3.c)), arg_0.c, true));
    var var_1 = ~firstLeadingBit(_wgslsmith_mod_vec3_u32(~vec3<u32>(0u, arg_0.a, global1[_wgslsmith_index_u32(0u, 20u)]) | vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(67455u, 20u)], 20u)], global1[_wgslsmith_index_u32(arg_0.a, 20u)], arg_0.a), vec3<u32>(max(arg_0.a, 71302u), 70982u, _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(54153u, 20u)], 75479u, 1u))));
    let var_2 = select(!var_0.xyx, vec3<bool>(!((var_0.x | true) | true), !(true != var_0.x) && false, true), vec3<bool>(true, all(!select(vec4<bool>(false, false, arg_0.c, var_0.x), vec4<bool>(var_0.x, false, true, arg_0.c), vec4<bool>(true, true, arg_0.c, arg_0.c))), global3.c || all(vec3<bool>(global3.c, global3.c, arg_0.c))));
    var var_3 = Struct_2(~_wgslsmith_div_i32(49201i, u_input.a), arg_0, vec4<f32>(-349f, -1776f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global3.b.x, _wgslsmith_div_f32(1661f, 669f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-912f * _wgslsmith_f_op_f32(max(arg_0.b.x, arg_0.b.x))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.b.x, global3.b.x)), global3.b.yx);
    var_1 = ~vec3<u32>(~(global1[_wgslsmith_index_u32(1u, 20u)] & global1[_wgslsmith_index_u32(21871u << (arg_0.a % 32u), 20u)]), var_1.x, ~15512u);
    return min(select(vec4<u32>(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, ~global1[_wgslsmith_index_u32(49042u, 20u)]), 20u)], _wgslsmith_dot_vec2_u32(var_1.xy | vec2<u32>(var_3.b.a, var_3.b.a), vec2<u32>(0u, 4294967295u) & vec2<u32>(4294967295u, global3.a)), global3.a, (var_1.x & 7077u) << (var_1.x % 32u)), ~vec4<u32>(16677u >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(8376u, 20u)], 20u)] % 32u), ~arg_0.a, 2795u, select(37447u, var_3.b.a, false)), any(vec2<bool>(false, u_input.a < -1i))), min(~vec4<u32>(36289u, var_3.b.a & global1[_wgslsmith_index_u32(var_1.x, 20u)], global1[_wgslsmith_index_u32(countOneBits(global3.a), 20u)], ~global1[_wgslsmith_index_u32(global3.a, 20u)]), ~vec4<u32>(firstLeadingBit(arg_0.a), 4975u, firstTrailingBit(global1[_wgslsmith_index_u32(var_1.x, 20u)]), ~0u)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32) -> vec3<bool> {
    let var_0 = countOneBits(~(~func_3(arg_1.b)));
    let var_1 = vec4<bool>(false, !(!(!global3.c) & true), false, !all(!select(vec4<bool>(arg_0.c, arg_1.b.c, arg_1.b.c, true), vec4<bool>(global3.c, true, arg_0.c, false), false)));
    var var_2 = arg_1;
    return var_1.wxz;
}

fn func_4(arg_0: bool) -> Struct_1 {
    global1 = array<u32, 20>();
    global0 = array<vec2<bool>, 18>();
    global3 = Struct_1(global3.a, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(684f, 1000f, -2277f, global3.b.x))), _wgslsmith_f_op_vec4_f32(-global3.b))))), u_input.b > reverseBits(firstLeadingBit(-29749i)));
    global3 = Struct_1(firstLeadingBit(~(global3.a | (global3.a << (global3.a % 32u)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-420f, 636f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global3.b.x)) - 1f), 1707f, global3.b.x) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.b.x, global3.b.x, global3.b.x, _wgslsmith_f_op_f32(-global3.b.x)) * global3.b)), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 27813i, u_input.a, -1i), ~vec4<i32>(1i, 28182i, -2147483647i, u_input.b)), vec4<i32>(~u_input.a, firstTrailingBit(u_input.b), u_input.a, u_input.a)) < _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, 45470i, u_input.a, -8264i) ^ vec4<i32>(2147483647i, u_input.a, -6552i, u_input.a), -vec4<i32>(u_input.b, u_input.a, 1i, 36492i)), vec4<i32>(16971i, 20558i, reverseBits(2147483647i), -u_input.b)));
    var var_0 = Struct_1(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(select(~(~88387u), 1u, global3.c), 20u)], func_3(Struct_1(global3.a, vec4<f32>(global3.b.x, -739f, global3.b.x, global3.b.x), arg_0)).x), global3.b, func_2(Struct_1(~global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global3.a, global1[_wgslsmith_index_u32(31448u, 20u)]), 20u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global3.b * global3.b) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(344f, -776f, -950f, global3.b.x), vec4<f32>(-1086f, 841f, -468f, 801f)))), arg_0), Struct_2(_wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.a, -19806i), i32(-1i) * -36373i), Struct_1(_wgslsmith_clamp_u32(global3.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(59273u, 20u)], 20u)], 44838u), vec4<f32>(global3.b.x, global3.b.x, global3.b.x, global3.b.x), all(global0[_wgslsmith_index_u32(109580u, 18u)])), vec4<f32>(_wgslsmith_div_f32(1000f, -1389f), _wgslsmith_f_op_f32(-global3.b.x), _wgslsmith_f_op_f32(-global3.b.x), _wgslsmith_f_op_f32(-372f + -244f)), vec2<f32>(global3.b.x, _wgslsmith_f_op_f32(-540f * -779f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.b.ww))), 20371u).x);
    return Struct_1(4294967295u, _wgslsmith_f_op_vec4_f32(ceil(var_0.b)), false);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: f32) -> Struct_1 {
    var var_0 = Struct_2(-1i, func_4(all(!func_2(arg_0, Struct_2(u_input.a, Struct_1(arg_0.a, arg_0.b, arg_0.c), global3.b, vec2<f32>(-2084f, global3.b.x), vec2<f32>(1065f, -1195f)), 36837u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.b + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(global3.b)), arg_0.b, select(vec4<bool>(true, global3.c, global3.c, true), vec4<bool>(arg_0.c, global3.c, arg_0.c, false), global3.c))))), func_4(arg_0.c).b.ww, _wgslsmith_div_vec2_f32(global3.b.zy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.b.zw))));
    var var_1 = false;
    let var_2 = min(vec3<u32>(0u, _wgslsmith_mod_u32(~(~arg_1.x), select(var_0.b.a >> (arg_1.x % 32u), 17632u, select(var_0.b.c, arg_0.c, arg_0.c))), global1[_wgslsmith_index_u32(var_0.b.a, 20u)]), vec3<u32>(firstLeadingBit(max(0u, global3.a ^ 1u)), firstTrailingBit(arg_1.x), _wgslsmith_mod_u32(~(49575u >> (1u % 32u)), abs(_wgslsmith_clamp_u32(global3.a, arg_0.a, 1u)))));
    global2 = any(vec3<bool>(arg_0.c, any(global0[_wgslsmith_index_u32(abs(21153u) << (var_2.x % 32u), 18u)]), true));
    global3 = func_4(false);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_1(firstTrailingBit(~1u), global3.b, !(any(vec4<bool>(global3.c, true, false, true)) | (global3.c & true))), max(vec3<u32>(0u, _wgslsmith_div_u32(44504u, 22537u), _wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 20u)], 20u)], 1u), vec2<u32>(global3.a, 50550u))), vec3<u32>(16809u, 4294967295u, global1[_wgslsmith_index_u32(global3.a, 20u)]) << (~vec3<u32>(global3.a, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(80086u, 20u)], 20u)]) % vec3<u32>(32u))) & vec3<u32>(~1u, firstTrailingBit(global3.a) ^ global3.a, _wgslsmith_sub_u32(~global1[_wgslsmith_index_u32(0u, 20u)], global3.a)), -590f);
    let var_1 = Struct_2(~u_input.b, Struct_1(~var_0.a, _wgslsmith_f_op_vec4_f32(exp2(func_1(Struct_1(global3.a, vec4<f32>(309f, -397f, 1285f, var_0.b.x), true), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 13390u, 34374u), vec3<u32>(0u, var_0.a, global1[_wgslsmith_index_u32(global3.a, 20u)])), _wgslsmith_f_op_f32(-881f - global3.b.x)).b)), any(global0[_wgslsmith_index_u32(global3.a, 18u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -985f)), global3.b.x, var_0.b.x, -241f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(global3.b.x - _wgslsmith_f_op_f32(floor(-740f)))), vec2<f32>(1577f, _wgslsmith_f_op_f32(-1199f - var_0.b.x)))), _wgslsmith_f_op_vec2_f32(var_0.b.xz + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.b.x)) * 167f), var_0.b.x)));
    global2 = any(!global0[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.b.a, 20u)], 20u)], 18u)]);
    let var_2 = func_2(func_1(func_1(var_0, ~(~vec3<u32>(66847u, var_1.b.a, var_1.b.a)), var_1.e.x), _wgslsmith_sub_vec3_u32(vec3<u32>(~var_0.a, 1u, ~4294967295u), select(~vec3<u32>(9273u, global3.a, 21901u), _wgslsmith_div_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global3.a, 20u)], var_1.b.a, global3.a), vec3<u32>(var_1.b.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3.a, 20u)], 20u)], 20u)], 20u)], 0u)), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.e.x - 757f) + _wgslsmith_f_op_f32(select(var_1.c.x, 1843f, global3.c))))), var_1, ~(~17495u)).yx;
    var var_3 = _wgslsmith_mult_u32(var_0.a, global3.a);
    let var_4 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(min(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, 21483i, u_input.a), vec3<i32>(1i, var_1.a, -9887i)), vec3<i32>(-12509i, 199i, u_input.b))), min(_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.a, var_1.a) & vec2<i32>(-46735i, var_1.a), reverseBits(vec2<i32>(-2147483647i, u_input.a)), min(vec2<i32>(0i, var_1.a), vec2<i32>(1i, -32267i))), ~abs(vec2<i32>(var_1.a, -6146i))), vec2<i32>(_wgslsmith_add_i32(i32(-1i) * -1i, _wgslsmith_mult_i32(-24920i, -1i)), var_1.a)), func_4(~(~u_input.a) >= 0i).a);
}

