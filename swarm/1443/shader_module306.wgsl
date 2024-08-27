struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 7>;

var<private> global1: Struct_1;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: i32) -> bool {
    global1 = Struct_1(491f, true, ~global1.c ^ ~_wgslsmith_mult_vec4_u32(firstTrailingBit(global1.c), vec4<u32>(1u, global1.c.x, 4294967295u, 0u)));
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-global1.a), !any(!(!vec3<bool>(false, global0[_wgslsmith_index_u32(global1.c.x, 7u)], global1.b))), global1.c);
    var var_1 = _wgslsmith_sub_vec2_i32(~vec2<i32>(~u_input.b, -1i), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-35988i, 1776i, arg_0, u_input.b) >> (global1.c % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(-42475i, 2147483647i, u_input.b, -1499i), vec4<i32>(2147483647i, -56820i, arg_0, -13215i))), 23007i)) | max(reverseBits(vec2<i32>(u_input.b, arg_0 << (var_0.c.x % 32u))), vec2<i32>(29585i, arg_0));
    var var_2 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(945f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(floor(-325f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(705f, var_0.a)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, _wgslsmith_f_op_f32(floor(968f))))), select(vec2<bool>(!select(global1.b, false, global0[_wgslsmith_index_u32(1u, 7u)]), (var_1.x > 0i) || select(global0[_wgslsmith_index_u32(8584u, 7u)], global0[_wgslsmith_index_u32(0u, 7u)], var_0.b)), vec2<bool>(global1.b | (-1i == arg_0), var_0.b | true), any(!vec4<bool>(true, var_0.b, global0[_wgslsmith_index_u32(4294967295u, 7u)], global1.b)))));
    var var_3 = vec2<i32>(arg_0, u_input.b);
    return global0[_wgslsmith_index_u32(6703u, 7u)];
}

fn func_2() -> Struct_1 {
    global0 = array<bool, 7>();
    let var_0 = u_input.b;
    global1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.a), 1000f)) + _wgslsmith_f_op_f32(f32(-1f) * -233f)), global1.a), func_3(_wgslsmith_div_i32(1i, u_input.b)), global1.c);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-global1.a), true, vec4<u32>(u_input.a, _wgslsmith_div_u32(0u, _wgslsmith_dot_vec3_u32(global1.c.wzy, vec3<u32>(40754u, u_input.c.x, u_input.a) >> (global1.c.zzz % vec3<u32>(32u)))), ~global1.c.x, _wgslsmith_sub_u32(global1.c.x, ~(~u_input.c.x))));
    var var_2 = ~(firstLeadingBit(global1.c.zw) ^ ~_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(24325u, 34219u), u_input.c), ~global1.c.zw, vec2<u32>(u_input.c.x, var_1.c.x) | vec2<u32>(u_input.c.x, global1.c.x)));
    return var_1;
}

fn func_1(arg_0: vec2<u32>) -> f32 {
    let var_0 = 2147483647i;
    var var_1 = false;
    global1 = func_2();
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a, -590f, global1.a) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))));
    var var_3 = vec2<bool>(global0[_wgslsmith_index_u32(arg_0.x, 7u)], all(select(vec2<bool>(!global1.b, true), select(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 7u)], global1.b), select(vec2<bool>(true, global1.b), vec2<bool>(global1.b, true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 7u)], global1.b)), vec2<bool>(true, true)), global1.b)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(var_2.x)), _wgslsmith_f_op_f32(-var_2.x))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1744f, -1808f)))) * _wgslsmith_f_op_f32(-var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(_wgslsmith_f_op_f32(func_1(global1.c.zy ^ (~u_input.c ^ global1.c.yx))), global0[_wgslsmith_index_u32(~79852u, 7u)], vec4<u32>(reverseBits(~(~11022u)), global1.c.x, global1.c.x, ~(~u_input.a)));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<u32>(abs(1u), countOneBits(67732u))))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(global1.a, -572f, true)))))), _wgslsmith_f_op_f32(trunc(494f)), !all(select(vec2<bool>(true, global1.b), vec2<bool>(global0[_wgslsmith_index_u32(71599u, 7u)], global0[_wgslsmith_index_u32(4294967295u, 7u)]), vec2<bool>(true, global1.b))))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(global1.a)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a, _wgslsmith_f_op_f32(-global1.a)))));
    let var_2 = func_2();
    var var_3 = vec3<bool>(select(var_2.b, any(vec3<bool>(true, true & global1.b, true)), !global1.b), true, all(vec4<bool>(true, true, any(vec3<bool>(global0[_wgslsmith_index_u32(global1.c.x, 7u)], false, global1.b)), all(vec2<bool>(var_2.b, false)))) || all(vec3<bool>(true, true, true)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a * 267f)));
    var var_4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_2.a, var_2.a))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a, 165f) + vec2<f32>(var_2.a, global1.a))) + vec2<f32>(1564f, _wgslsmith_f_op_f32(-global1.a))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1282f, var_2.a), vec2<f32>(global1.a, 889f), vec2<bool>(var_2.b, global0[_wgslsmith_index_u32(0u, 7u)]))))) * vec2<f32>(global1.a, _wgslsmith_f_op_f32(f32(-1f) * -442f))), _wgslsmith_sub_i32(u_input.b, ~(-17732i)) != (_wgslsmith_clamp_i32(-5272i, 1i, -13008i) & ~u_input.b))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1067f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(f32(-1f) * -1776f)))));
    let var_5 = !vec4<bool>(_wgslsmith_div_f32(-558f, 218f) < _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_4.x))), select(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -19161i, u_input.b, u_input.b), vec4<i32>(-1i, -7482i, u_input.b, u_input.b)), u_input.b, false) <= -1i, any(!select(vec3<bool>(true, var_2.b, global1.b), vec3<bool>(true, global1.b, true), vec3<bool>(true, true, var_3.x))), var_3.x);
    var_3 = !(!var_5.yxw);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(global1.c.x, ~max(_wgslsmith_sub_u32(0u, u_input.c.x), var_2.c.x)), _wgslsmith_f_op_f32(-global1.a), -2147483647i, _wgslsmith_mult_vec3_i32(select(abs(vec3<i32>(u_input.b, 7864i, -1i)), vec3<i32>(-2012i, u_input.b, u_input.b), vec3<bool>(global1.b, var_5.x, true)), vec3<i32>(0i, ~u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b)))) & -_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, u_input.b, -21905i), abs(vec3<i32>(u_input.b, u_input.b, u_input.b))));
}

