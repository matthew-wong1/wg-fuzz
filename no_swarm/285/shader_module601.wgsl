struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec4<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(1i, 84623i, 19282i);

var<private> global1: array<u32, 6>;

var<private> global2: array<vec3<u32>, 27>;

var<private> global3: Struct_1 = Struct_1(vec4<u32>(4294967295u, 0u, 118175u, 1u), vec3<f32>(1669f, 286f, -734f), vec3<i32>(-52885i, -13955i, 51287i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<u32>, arg_1: bool, arg_2: i32) -> vec3<i32> {
    let var_0 = firstTrailingBit(vec2<u32>(0u, 0u));
    global2 = array<vec3<u32>, 27>();
    var var_1 = Struct_1(arg_0, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.b)) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-692f, global3.b.x, global3.b.x) * global3.b)))))), ~(vec3<i32>(abs(-9780i), 109269i, arg_2) | countOneBits(countOneBits(global3.c))));
    var var_2 = ~(-2147483647i);
    let var_3 = Struct_1(vec4<u32>(global3.a.x, global3.a.x, reverseBits(0u), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(1u, global3.a.x), vec2<u32>(arg_0.x, 4294967295u)), min(~vec2<u32>(0u, 0u), reverseBits(var_0)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(619f, var_1.b.x, 380f), var_1.b))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.b - global3.b) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-273f, 344f, global3.b.x) - global3.b))), _wgslsmith_f_op_vec3_f32(-var_1.b), arg_1 & true)), global3.c);
    return u_input.a;
}

fn func_2(arg_0: vec4<bool>) -> bool {
    var var_0 = 1u;
    var var_1 = Struct_1(_wgslsmith_add_vec4_u32(reverseBits(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(global3.a, vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(17657u, 6u)], 6u)], global1[_wgslsmith_index_u32(4294967295u, 6u)], global3.a.x, 0u)), vec4<u32>(global1[_wgslsmith_index_u32(global3.a.x, 6u)], global3.a.x, 4294967295u, global1[_wgslsmith_index_u32(global3.a.x, 6u)]))), ~global3.a), vec3<f32>(118f, _wgslsmith_f_op_f32(799f + _wgslsmith_f_op_f32(f32(-1f) * -1207f)), _wgslsmith_div_f32(547f, global3.b.x)), func_3(global3.a, true == !(arg_0.x || arg_0.x), countOneBits(i32(-1i) * -68661i)));
    var_1 = Struct_1(var_1.a, vec3<f32>(-914f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) - var_1.b.x) * _wgslsmith_f_op_f32(global3.b.x + _wgslsmith_f_op_f32(-109f * 1266f))), _wgslsmith_f_op_f32(global3.b.x * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(var_1.b.x)))))), select(~vec3<i32>(~u_input.b, ~u_input.a.x, var_1.c.x ^ -1i), ~(~u_input.a), vec3<bool>(arg_0.x, false, false)));
    let var_2 = countOneBits(global3.c);
    global2 = array<vec3<u32>, 27>();
    return true;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = ~_wgslsmith_dot_vec2_u32(~vec2<u32>(global1[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 6u)], reverseBits(84915u)), ~(~vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(arg_1.a.x, 6u)])));
    var var_1 = vec4<i32>(-17098i, countOneBits(_wgslsmith_mult_i32(-28861i, -4246i)), 3365i, -(~(-global3.c.x)));
    var var_2 = _wgslsmith_div_u32(max(~(~(~6872u)), _wgslsmith_add_u32(select(abs(1u), ~5663u, any(arg_0)), var_0)), 4294967295u);
    var var_3 = arg_1;
    var var_4 = _wgslsmith_div_f32(arg_1.b.x, _wgslsmith_f_op_f32(656f * -1000f));
    return arg_1;
}

fn func_1() -> bool {
    var var_0 = func_4(vec3<bool>(true, true, func_2(vec4<bool>(true, true, true, true))), Struct_1(global3.a, global3.b, max(~vec3<i32>(2147483647i, global3.c.x, -40969i), reverseBits(global3.c) << (~vec3<u32>(global1[_wgslsmith_index_u32(13727u, 6u)], 0u, 5882u) % vec3<u32>(32u)))));
    var var_1 = _wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1f, _wgslsmith_div_f32(-923f, _wgslsmith_f_op_f32(min(var_0.b.x, global3.b.x)))))));
    var var_2 = !select(vec3<bool>(false, (global3.b.x != 915f) && true, all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), false))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(ceil(1000f)) > _wgslsmith_div_f32(925f, -1003f)), select(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, select(false, true, true), var_0.a.x <= 41868u)));
    let var_3 = ~(~_wgslsmith_add_vec2_i32(abs(vec2<i32>(-2147483647i, u_input.a.x) << (global3.a.xx % vec2<u32>(32u))), u_input.a.xx << (vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 6u)], 6u)], 6u)], global1[_wgslsmith_index_u32(4294967295u, 6u)]) % vec2<u32>(32u))));
    global0 = ~_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(38049i, u_input.a.x), 1i, abs(-1i)) ^ abs(vec3<i32>(var_3.x, global0.x, global3.c.x)), -select(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, var_0.c.x, -1i), u_input.a, vec3<i32>(global0.x, -1i, 2147483647i)), u_input.a, true));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(0u);
    global1 = array<u32, 6>();
    var var_1 = Struct_1(global3.a, vec3<f32>(2052f, _wgslsmith_f_op_f32(f32(-1f) * -413f), _wgslsmith_f_op_f32(f32(-1f) * -965f)), vec3<i32>(2147483647i, -u_input.b, global3.c.x));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x));
    var var_3 = Struct_1(vec4<u32>(select(4294967295u, select(4294967295u, 7497u, u_input.b >= global0.x), !func_1()), _wgslsmith_add_u32(firstLeadingBit(var_0), global3.a.x ^ ~var_1.a.x), 0u, ~42598u), var_1.b, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -286f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(var_1.b.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_3.b.x)))))), select(var_0, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(max(global3.a.x, _wgslsmith_dot_vec2_u32(var_1.a.yw, var_1.a.xw)), global1[_wgslsmith_index_u32(92318u, 6u)]), 6u)], true), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3.b.x))), _wgslsmith_f_op_f32(f32(-1f) * -906f), -505f, var_3.b.x) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.x, global3.b.x, var_1.b.x, _wgslsmith_f_op_f32(-939f - 1757f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1478f, -1067f, var_3.b.x, -1168f), vec4<f32>(var_1.b.x, 1538f, var_3.b.x, 692f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-926f, -294f, global3.b.x, -2141f), vec4<f32>(var_1.b.x, -400f, global3.b.x, var_3.b.x), vec4<bool>(false, true, true, true)))))), vec2<u32>(var_0, global1[_wgslsmith_index_u32(global3.a.x, 6u)]));
}

