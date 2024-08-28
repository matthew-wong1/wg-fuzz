struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec2<u32>, 21>;

var<private> global2: array<i32, 23> = array<i32, 23>(2147483647i, 2147483647i, 23129i, 2147483647i, 50858i, -30788i, 19723i, -1i, -31147i, -10220i, -1i, i32(-2147483648), 63891i, 20349i, 1i, 0i, 13904i, 1i, 0i, 1i, -6786i, 34906i, -22904i);

var<private> global3: vec3<f32> = vec3<f32>(1894f, 669f, 2431f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = Struct_2(Struct_1(vec4<f32>(-1143f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.a.x))), _wgslsmith_div_f32(141f, _wgslsmith_f_op_f32(-arg_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x + -1195f) * _wgslsmith_f_op_f32(f32(-1f) * -821f))), vec3<i32>(~(-1i), global2[_wgslsmith_index_u32(reverseBits(min(0u, 1u)), 23u)], min(u_input.a.x, global2[_wgslsmith_index_u32(arg_0.c.x, 23u)]) & (i32(-1i) * -20179i)), countOneBits(~arg_0.c), arg_0.d));
    var var_1 = Struct_2(arg_0);
    global2 = array<i32, 23>();
    var var_2 = !select(select(vec4<bool>(false, any(vec4<bool>(arg_0.d.x, var_0.a.d.x, false, false)), true, -81526i >= var_1.a.b.x), !vec4<bool>(false, arg_0.d.x, false, var_1.a.d.x), false), vec4<bool>(all(!vec4<bool>(false, false, var_0.a.d.x, false)), var_1.a.d.x, arg_0.d.x, any(select(vec2<bool>(arg_0.d.x, false), vec2<bool>(true, true), var_0.a.d.yy))), false);
    var var_3 = var_1.a;
    return var_1.a.d.x;
}

fn func_2() -> Struct_1 {
    let var_0 = select(vec3<bool>(any(vec3<bool>(true, false, true)) == !func_3(Struct_1(vec4<f32>(1956f, global3.x, 1247f, -1630f), u_input.a, vec2<u32>(79070u, 10358u), vec3<bool>(true, false, true))), true, true & (global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(75884u, 1u), 23u)] == _wgslsmith_mult_i32(-20125i, 6309i))), !vec3<bool>(true, true, any(vec3<bool>(false, true, true))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), all(vec3<bool>(true, true, true))), any(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false))))));
    global2 = array<i32, 23>();
    let var_1 = -497f;
    let var_2 = u_input.a.zz;
    var var_3 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1788f), 773f, -1199f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, -609f)) - _wgslsmith_f_op_f32(1871f - -957f))), _wgslsmith_mod_vec3_i32(firstTrailingBit(u_input.a >> (vec3<u32>(0u, 0u, 15900u) % vec3<u32>(32u))), abs(-vec3<i32>(var_2.x, var_2.x, u_input.a.x))), vec2<u32>(4294967295u, ~(~4294967295u)), var_0));
    return Struct_1(var_3.a.a, vec3<i32>(-1i) * -max(-vec3<i32>(1i, 2147483647i, -131i), select(vec3<i32>(var_3.a.b.x, 16706i, global2[_wgslsmith_index_u32(var_3.a.c.x, 23u)]), var_3.a.b, var_3.a.d.x)), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_3.a.c.x) ^ reverseBits(global1[_wgslsmith_index_u32(10727u, 21u)]), ~(~global1[_wgslsmith_index_u32(4294967295u, 21u)])), ~var_3.a.c.x), !vec3<bool>(global3.x > _wgslsmith_f_op_f32(round(global3.x)), var_0.x, any(select(var_3.a.d.xz, var_0.xz, var_0.x))));
}

fn func_1(arg_0: vec3<bool>) -> Struct_2 {
    global2 = array<i32, 23>();
    global1 = array<vec2<u32>, 21>();
    var var_0 = Struct_2(func_2());
    var var_1 = min(u_input.a.x, var_0.a.b.x) ^ max(abs(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.a.x, -2147483647i, var_0.a.b.x, global2[_wgslsmith_index_u32(52117u, 23u)])), vec4<i32>(u_input.a.x, -37575i, 30463i, 10070i))), 1i ^ global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~40658u, var_0.a.c.x), 23u)]);
    let var_2 = vec2<bool>(func_2().d.x, false);
    return Struct_2(func_2());
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(489f + _wgslsmith_f_op_f32(-947f * arg_0.a.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-679f, -498f)))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(func_2().a.x)), 1f, arg_0.a.d.x))) - 1f);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>) -> bool {
    var var_0 = arg_0.c ^ vec2<u32>(firstTrailingBit(arg_0.c.x), ~abs(4294967295u));
    global3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, -154f, global3.x)))))), arg_0.a.xyy);
    var var_1 = vec4<bool>(true, !all(vec2<bool>(select(false, false, arg_0.d.x), !arg_0.d.x)), false, !func_1(!select(vec3<bool>(arg_0.d.x, arg_0.d.x, false), vec3<bool>(arg_1.x, arg_0.d.x, false), false)).a.d.x);
    let var_2 = _wgslsmith_mod_u32(4294967295u, 18401u);
    let var_3 = func_1(func_2().d).a.d;
    return var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(func_4(func_1(vec3<bool>(false, true, false)), global3.yz)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), global3.x), ~_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.a, u_input.a), u_input.a), ~global1[_wgslsmith_index_u32(_wgslsmith_div_u32(24594u, select(1u, 19840u, false)), 21u)], !(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)))), vec3<bool>(func_3(func_2()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -787f) + _wgslsmith_f_op_f32(-832f * global3.x)) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global3.x, -1042f)), _wgslsmith_div_f32(global3.x, global3.x)), select(func_1(vec3<bool>(true, false, true)).a.d.x, true, all(vec2<bool>(true, false))) & true));
    let var_0 = vec2<u32>(1u, _wgslsmith_dot_vec4_u32(firstLeadingBit(~(~vec4<u32>(4294967295u, 4294967295u, 53116u, 0u))), firstLeadingBit(vec4<u32>(1u, 0u, min(1u, 1u), ~0u))));
    let var_1 = u_input.a.x;
    let var_2 = _wgslsmith_sub_vec4_i32(vec4<i32>(-(~_wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(0u, 23u)], -24978i, 17256i)), ~global2[_wgslsmith_index_u32(~var_0.x | var_0.x, 23u)], -countOneBits(1i), firstLeadingBit(-global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(21084u, 1u), 23u)])), select(abs(vec4<i32>(global2[_wgslsmith_index_u32(1u, 23u)] << (var_0.x % 32u), var_1, _wgslsmith_mod_i32(var_1, 36692i), min(var_1, 50437i))), -countOneBits(firstLeadingBit(vec4<i32>(51226i, 1789i, u_input.a.x, var_1))), select(vec4<bool>(true, true, global3.x <= global3.x, all(vec3<bool>(false, true, true))), select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true))), vec4<bool>(true, true, true, true))));
    global1 = array<vec2<u32>, 21>();
    let var_3 = global3.x;
    let x = u_input.a;
    s_output = StorageBuffer(global3.x);
}

