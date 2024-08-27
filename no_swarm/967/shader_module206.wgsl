struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 25>;

var<private> global1: Struct_2;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec2<bool>) -> f32 {
    let var_0 = true != all(select(select(vec4<bool>(false, arg_1.a, arg_2.x, true), vec4<bool>(arg_1.a, arg_2.x, false, arg_1.a), !vec4<bool>(arg_1.a, true, true, true)), !select(vec4<bool>(false, false, arg_2.x, true), vec4<bool>(true, arg_1.a, arg_1.a, arg_1.a), false), vec4<bool>(!arg_2.x, arg_1.a, !arg_2.x, arg_1.a && false)));
    let var_1 = Struct_1(any(vec4<bool>(arg_2.x, !var_0, arg_2.x && var_0, true)) || (_wgslsmith_f_op_f32(921f * _wgslsmith_f_op_f32(669f - arg_1.b)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b) - _wgslsmith_f_op_f32(exp2(arg_1.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1.b)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_1.b)), arg_1.b)));
    var var_2 = ~31106i;
    global1 = Struct_2(vec2<i32>(i32(-1i) * -1i, global0[_wgslsmith_index_u32(select(abs(arg_0) ^ (arg_0 & arg_0), 30010u, true), 25u)]));
    let var_3 = vec2<f32>(-1658f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1f))) + _wgslsmith_f_op_f32(max(363f, var_1.b))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(1000f))))) + _wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(-var_3.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b), -979f), _wgslsmith_f_op_f32(floor(-332f))) - -1000f));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_3(!(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true))));
    global1 = Struct_2(-(~vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(global1.a.x, global1.a.x, global0[_wgslsmith_index_u32(7575u, 25u)])), -10082i ^ global0[_wgslsmith_index_u32(73263u, 25u)])));
    global1 = Struct_2(u_input.b.yy);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(~4294967295u, Struct_1(true, -616f), select(vec2<bool>(var_0.a.x, var_0.a.x), var_0.a.zy, var_0.a.x)))))));
    let var_2 = vec4<u32>(~_wgslsmith_div_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u))), 21808u, ~(~min(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 31126u, 4294967295u, 4294967295u), vec4<u32>(0u, 12120u, 46238u, 9859u)), ~71539u)), 0u);
    return Struct_2(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(~u_input.b.yy, vec2<i32>(1i, u_input.b.x) >> (~vec2<u32>(var_2.x, 0u) % vec2<u32>(32u))), ~(~_wgslsmith_add_vec2_i32(global1.a, vec2<i32>(-28192i, global1.a.x)))));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: bool) -> Struct_3 {
    var var_0 = u_input.b;
    var var_1 = Struct_3(select(vec3<bool>(true, arg_2, arg_2), !select(vec3<bool>(false, false, arg_2), vec3<bool>(arg_2, false, arg_2), !vec3<bool>(false, arg_2, false)), !vec3<bool>(!arg_2, false, !arg_2)));
    let var_2 = Struct_1(var_1.a.x, _wgslsmith_div_f32(1395f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))));
    let var_3 = all(!(!vec2<bool>(true, var_1.a.x))) | false;
    var var_4 = ~_wgslsmith_dot_vec4_i32(vec4<i32>(~firstLeadingBit(8696i), global0[_wgslsmith_index_u32(max(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(40794u, 1u)), 31436u), 25u)], global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(16851u, 9922u), 25u)], abs(-44671i)), _wgslsmith_div_vec4_i32(select(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, 2147483647i, 13959i, global1.a.x), vec4<i32>(-1i, 0i, u_input.b.x, u_input.a)), select(vec4<i32>(global0[_wgslsmith_index_u32(10383u, 25u)], global0[_wgslsmith_index_u32(5587u, 25u)], -1i, var_0.x), vec4<i32>(arg_0.a.x, 11384i, var_0.x, global0[_wgslsmith_index_u32(34506u, 25u)]), false), all(var_1.a.zz)), -_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, global0[_wgslsmith_index_u32(76367u, 25u)], u_input.a, var_0.x), vec4<i32>(-1i, var_0.x, 2147483647i, global1.a.x), vec4<i32>(global0[_wgslsmith_index_u32(29674u, 25u)], 0i, -2147483647i, global0[_wgslsmith_index_u32(1u, 25u)]))));
    return Struct_3(var_1.a);
}

fn func_5(arg_0: Struct_3) -> Struct_3 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(402f)) + -244f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(321f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -666f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(1342f, 860f)))))));
    let var_1 = func_2();
    global0 = array<i32, 25>();
    let var_2 = ~(~(~1u));
    let var_3 = ~(~(~firstTrailingBit(vec3<u32>(1u, var_2, 4294967295u) ^ vec3<u32>(var_2, 1u, 36595u))));
    return func_4(func_2(), 577f, true);
}

fn func_1() -> vec3<bool> {
    let var_0 = func_5(func_4(func_2(), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(495f, 176f))))), true));
    var var_1 = Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -850f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-482f))), 311f)));
    global1 = Struct_2(~vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 25u)], global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(43798u, 4294967295u, 1u, 49497u), vec4<u32>(0u, 4294967295u, 1u, 115016u)), 25u)]));
    var_1 = Struct_1((select(true, false, true) && true) | true, _wgslsmith_f_op_f32(min(var_1.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b), var_1.b))));
    let var_2 = Struct_1(true != var_1.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(-var_1.b)) * _wgslsmith_f_op_f32(138f + _wgslsmith_div_f32(var_1.b, -1116f))), -191f)));
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 318f;
    global0 = array<i32, 25>();
    let var_1 = all(!select(!func_1(), func_5(func_5(Struct_3(vec3<bool>(false, false, false)))).a, all(vec2<bool>(false, false))));
    var var_2 = reverseBits(u_input.b.xy);
    var_2 = global1.a;
    let var_3 = Struct_1(var_1, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * -1829f), -1125f))));
    let var_4 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(15179u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), select(1u, 1u, func_1().x && (var_3.b <= var_3.b)), 76857u), _wgslsmith_dot_vec3_u32(~vec3<u32>(91170u, 22417u, 1u) | select(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(50287u, 1u, 4294967295u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(43942u, 0u, 4294967295u), vec3<u32>(9395u, 46961u, 70830u), vec3<u32>(106811u, 8758u, 64067u)), true == var_3.a), vec3<u32>(33388u, 28551u, _wgslsmith_div_u32(1u, ~45845u))));
}

