struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: Struct_2,
    d: vec4<u32>,
    e: vec3<f32>,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<bool, 9> = array<bool, 9>(true, true, false, true, true, false, true, true, false);

var<private> global2: vec3<bool> = vec3<bool>(true, false, true);

var<private> global3: array<vec3<bool>, 22> = array<vec3<bool>, 22>(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false));

var<private> global4: Struct_2 = Struct_2(vec3<bool>(true, true, true));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = Struct_3(arg_0.c, min(~25851i, arg_0.a.x), Struct_2(vec3<bool>(all(!vec2<bool>(false, global2.x)), global4.a.x, ~arg_0.c <= select(0i, arg_0.a.x, true))), reverseBits(vec4<u32>(~arg_0.b, firstLeadingBit(0u), ~68768u, ~0u)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(697f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -862f)), -418f)), -939f));
    var var_1 = global4.a.x;
    let var_2 = -min(vec4<i32>(1i ^ var_0.b, abs(20332i) & arg_0.d.x, var_0.a, ~(~arg_0.a.x)), vec4<i32>(var_0.a, select(var_0.b, ~2147483647i, !var_0.c.a.x), 1i, _wgslsmith_mod_i32(56628i, _wgslsmith_clamp_i32(2147483647i, 1i, arg_0.d.x))));
    var_1 = !select(true, global2.x, global1[_wgslsmith_index_u32(countOneBits(var_0.d.x), 9u)]);
    global4 = var_0.c;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1005f)));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_2, arg_2: bool, arg_3: u32) -> vec4<i32> {
    var var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(arg_0.a)), -902f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(Struct_1(vec4<i32>(-7825i, -1i, 0i, -24700i), 47394u, 9529i, vec4<i32>(-6114i, -44325i, 2670i, 1i))))))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a + arg_0.a) * _wgslsmith_f_op_f32(arg_0.a * arg_0.a)), -194f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(floor(arg_0.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(914f, -785f, arg_0.a)) - vec3<f32>(arg_0.a, 433f, -251f))), true)));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-1067f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) + arg_0.a) * _wgslsmith_f_op_f32(-arg_0.a))), _wgslsmith_f_op_f32(200f + _wgslsmith_f_op_f32(exp2(var_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    global2 = global3[_wgslsmith_index_u32(arg_3, 22u)];
    global1 = array<bool, 9>();
    let var_1 = arg_0;
    return vec4<i32>(22466i, 42814i, _wgslsmith_div_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(max(vec2<i32>(0i, 1586i), vec2<i32>(0i, 1i)), _wgslsmith_add_vec2_i32(vec2<i32>(-1i, -2147483647i), vec2<i32>(-22767i, 1i))), min(firstTrailingBit(-55720i), ~(-17137i)), -1i), 50802i), -(~_wgslsmith_add_i32(15192i, _wgslsmith_clamp_i32(-2147483647i, 11536i, 48602i))));
}

fn func_1(arg_0: vec3<bool>) -> vec3<bool> {
    var var_0 = Struct_2(select(!select(select(global3[_wgslsmith_index_u32(u_input.a.x, 22u)], vec3<bool>(false, arg_0.x, true), global4.a.x), global3[_wgslsmith_index_u32(4294967295u, 22u)], global4.a.x), !select(!global4.a, select(global4.a, vec3<bool>(true, false, global2.x), false), select(global4.a, vec3<bool>(true, arg_0.x, true), arg_0.x)), true));
    var var_1 = Struct_1(~func_2(Struct_4(-1270f, 20992u, Struct_2(var_0.a)), Struct_2(global4.a), !arg_0.x, u_input.b.x) << (vec4<u32>(u_input.a.x, ~1u, 9319u, 1u) % vec4<u32>(32u)), abs(~1u), -1i, select(abs(firstTrailingBit(vec4<i32>(-32761i, -36409i, 17415i, -1i))) | -vec4<i32>(-2147483647i, -2147483647i, 1i, -27127i), vec4<i32>(-1i, 1i, -8745i, -2147483647i) << (((vec4<u32>(u_input.b.x, 0u, u_input.c, u_input.b.x) | u_input.a) >> (~u_input.a % vec4<u32>(32u))) % vec4<u32>(32u)), select(!(!vec4<bool>(global4.a.x, false, var_0.a.x, arg_0.x)), select(select(vec4<bool>(false, var_0.a.x, false, false), vec4<bool>(global4.a.x, arg_0.x, global4.a.x, true), vec4<bool>(arg_0.x, true, false, true)), vec4<bool>(true, true, var_0.a.x, false), all(global4.a.zx)), true)));
    var var_2 = ~1u;
    let var_3 = 38373i;
    let var_4 = Struct_1(firstLeadingBit(select(var_1.d, _wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(0i, -81960i, var_3, var_1.a.x)), _wgslsmith_sub_vec4_i32(var_1.a, var_1.d)), all(select(vec2<bool>(true, global4.a.x), global4.a.zx, false)))), var_1.b, 1i, var_1.a);
    return !select(select(select(!global3[_wgslsmith_index_u32(4294967295u, 22u)], !global4.a, select(global3[_wgslsmith_index_u32(4294967295u, 22u)], global4.a, true)), select(!vec3<bool>(false, global4.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 9u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 9u)], false, false), var_0.a), vec3<bool>(false | arg_0.x, var_0.a.x, true)), vec3<bool>(global2.x, false, -var_4.a.x != var_3), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    var var_1 = Struct_2(select(select(func_1(select(vec3<bool>(global4.a.x, true, global4.a.x), vec3<bool>(true, global2.x, false), global1[_wgslsmith_index_u32(78915u, 9u)])), vec3<bool>(func_1(vec3<bool>(global2.x, false, global2.x)).x, false, global1[_wgslsmith_index_u32(17267u, 9u)] & false), _wgslsmith_div_f32(-659f, -297f) >= _wgslsmith_f_op_f32(select(-180f, -349f, true))), global4.a, global3[_wgslsmith_index_u32(firstTrailingBit(~reverseBits(1u)), 22u)]));
    let var_2 = Struct_2(!select(global3[_wgslsmith_index_u32(select(1u, _wgslsmith_div_u32(u_input.b.x, 1u), global4.a.x), 22u)], select(var_1.a, select(vec3<bool>(global4.a.x, false, true), vec3<bool>(global2.x, false, global2.x), true), any(vec4<bool>(true, global4.a.x, global2.x, false))), global4.a));
    global1 = array<bool, 9>();
    let var_3 = vec4<bool>(!(!func_1(!vec3<bool>(true, true, var_1.a.x)).x), true, true, any(select(!(!vec3<bool>(true, global2.x, global2.x)), !vec3<bool>(false, var_2.a.x, global2.x), !select(var_2.a, var_2.a, vec3<bool>(global1[_wgslsmith_index_u32(12162u, 9u)], true, false)))));
    let var_4 = firstTrailingBit(2147483647i);
    var var_5 = ~0u;
    global2 = vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-845f, 460f, false)) * _wgslsmith_f_op_f32(-2192f + 763f))) > _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * 922f), _wgslsmith_f_op_f32(select(1831f, -867f, var_3.x))) + 743f), !all(global2.yz), var_3.x);
    var var_6 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1372f, _wgslsmith_f_op_f32(-1004f + _wgslsmith_f_op_f32(select(-846f, 402f, var_3.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(min(~var_0, ~(~u_input.c)), _wgslsmith_clamp_vec3_u32(vec3<u32>(firstTrailingBit(var_0), u_input.b.x, u_input.b.x), u_input.a.zzy, u_input.a.wzy));
}

