struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20>;

var<private> global1: array<bool, 2>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, arg_1.c.x))));
    let var_1 = select(select(select(vec3<bool>(true, !global1[_wgslsmith_index_u32(arg_0, 2u)], true), vec3<bool>(true, !global1[_wgslsmith_index_u32(39405u, 2u)], global1[_wgslsmith_index_u32(select(4294967295u, 0u, true), 2u)]), global1[_wgslsmith_index_u32(firstLeadingBit(arg_1.b), 2u)]), !vec3<bool>(global1[_wgslsmith_index_u32(~u_input.b.x, 2u)], all(vec3<bool>(global1[_wgslsmith_index_u32(25194u, 2u)], true, global1[_wgslsmith_index_u32(83010u, 2u)])), select(global1[_wgslsmith_index_u32(arg_1.b, 2u)], global1[_wgslsmith_index_u32(arg_0, 2u)], true)), select(vec3<bool>(any(vec4<bool>(global1[_wgslsmith_index_u32(3527u, 2u)], global1[_wgslsmith_index_u32(1u, 2u)], false, global1[_wgslsmith_index_u32(1u, 2u)])), true, any(vec2<bool>(global1[_wgslsmith_index_u32(15013u, 2u)], true))), select(vec3<bool>(global1[_wgslsmith_index_u32(arg_1.b, 2u)], true, false), !vec3<bool>(global1[_wgslsmith_index_u32(arg_2.b, 2u)], global1[_wgslsmith_index_u32(arg_2.b, 2u)], global1[_wgslsmith_index_u32(1u, 2u)]), select(vec3<bool>(global1[_wgslsmith_index_u32(arg_0, 2u)], false, global1[_wgslsmith_index_u32(19775u, 2u)]), vec3<bool>(global1[_wgslsmith_index_u32(30365u, 2u)], global1[_wgslsmith_index_u32(1u, 2u)], global1[_wgslsmith_index_u32(56366u, 2u)]), true)), vec3<bool>(!global1[_wgslsmith_index_u32(73220u, 2u)], global1[_wgslsmith_index_u32(0u, 2u)] && false, !global1[_wgslsmith_index_u32(1u, 2u)]))), select(!vec3<bool>(true, !global1[_wgslsmith_index_u32(57574u, 2u)], global1[_wgslsmith_index_u32(arg_2.b, 2u)]), vec3<bool>(global1[_wgslsmith_index_u32(~(~25706u), 2u)], global0[_wgslsmith_index_u32(arg_0, 20u)] <= -1i, any(vec3<bool>(true, false, global1[_wgslsmith_index_u32(arg_2.b, 2u)]))), !any(!vec4<bool>(true, true, global1[_wgslsmith_index_u32(62377u, 2u)], global1[_wgslsmith_index_u32(arg_1.b, 2u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-1595f * arg_2.a.x)) + arg_2.c.x) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(193f, 350f)))));
    var var_2 = Struct_2(var_1.zy, -1000f);
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(arg_2.c)), _wgslsmith_f_op_vec2_f32(trunc(arg_1.c)), false))))) + arg_1.c);
    var var_4 = true;
    return var_1.zx;
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> u32 {
    var var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.b, 2161f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.b), arg_0.b, global1[_wgslsmith_index_u32(15693u, 2u)])), _wgslsmith_f_op_f32(f32(-1f) * -615f), false))), ~(~0u), vec2<f32>(-976f, arg_0.b));
    let var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.b.x, var_0.b), 20u)] << (var_0.b % 32u);
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.c) + _wgslsmith_f_op_vec2_f32(step(var_0.c, var_0.a))), vec2<f32>(-1623f, var_0.a.x))), ~select(1u, _wgslsmith_div_u32(countOneBits(var_0.b), ~u_input.b.x), arg_0.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(872f, _wgslsmith_f_op_f32(-1000f - 452f)))));
    global1 = array<bool, 2>();
    var_0 = var_2;
    return u_input.b.x;
}

fn func_2(arg_0: i32) -> Struct_1 {
    global1 = array<bool, 2>();
    var var_0 = select(select(vec3<bool>(!(arg_0 >= 0i), true, !(global1[_wgslsmith_index_u32(u_input.b.x, 2u)] || global1[_wgslsmith_index_u32(u_input.b.x, 2u)])), vec3<bool>(global1[_wgslsmith_index_u32(~1u, 2u)], false, global1[_wgslsmith_index_u32(1u, 2u)]), vec3<bool>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -4612i, u_input.c.x, 35205i), vec4<i32>(u_input.a, u_input.a, u_input.a, global0[_wgslsmith_index_u32(u_input.b.x, 20u)])) == _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(16275u, 20u)], 100816i), global1[_wgslsmith_index_u32(~9082u, 2u)], global1[_wgslsmith_index_u32(~22121u, 2u)])), !(!(!(!vec3<bool>(false, global1[_wgslsmith_index_u32(2396u, 2u)], global1[_wgslsmith_index_u32(35566u, 2u)])))), any(select(!vec3<bool>(false, global1[_wgslsmith_index_u32(2130u, 2u)], true), vec3<bool>(!global1[_wgslsmith_index_u32(u_input.b.x, 2u)], global1[_wgslsmith_index_u32(u_input.b.x, 2u)] | global1[_wgslsmith_index_u32(u_input.b.x, 2u)], false), any(vec3<bool>(true, true, true)))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1970f - -1553f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(752f, 592f)) * _wgslsmith_div_f32(-1457f, -1612f)))), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, firstLeadingBit(0u), ~u_input.b.x, ~u_input.b.x) | ~vec4<u32>(17678u, u_input.b.x, u_input.b.x, 0u), ~firstLeadingBit(vec4<u32>(39899u, 1u, 79317u, 0u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2927f), -921f)))));
    global1 = array<bool, 2>();
    global0 = array<i32, 20>();
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(max(var_1.c.x, 764f)), _wgslsmith_f_op_f32(var_1.c.x * var_1.c.x)))) + var_1.c), func_4(Struct_2(func_3(min(u_input.b.x, 19638u), Struct_1(var_1.a, 24867u, var_1.c), Struct_1(var_1.a, 1u, var_1.c)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_1.a.x))))), -(max(arg_0, arg_0) | (global0[_wgslsmith_index_u32(u_input.b.x, 20u)] | 46749i))), var_1.a);
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: bool, arg_3: vec4<f32>) -> f32 {
    var var_0 = func_2(_wgslsmith_clamp_i32(countOneBits(reverseBits(u_input.a)), -_wgslsmith_div_i32(-76880i, u_input.c.x), 2147483647i) ^ u_input.c.x);
    global1 = array<bool, 2>();
    var_0 = func_2(_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(arg_0), ~(~u_input.b.x)), 20u)], 19134i, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a, u_input.a, 13526i, global0[_wgslsmith_index_u32(var_0.b, 20u)]), ~vec4<i32>(u_input.a, u_input.c.x, -1i, 0i))));
    global0 = array<i32, 20>();
    let var_1 = u_input.c.x ^ global0[_wgslsmith_index_u32(select(75944u, _wgslsmith_mod_u32(~var_0.b, _wgslsmith_dot_vec3_u32(abs(u_input.b.zxw), ~vec3<u32>(u_input.b.x, 4294967295u, arg_0))), any(vec2<bool>(true, any(vec2<bool>(true, false))))), 20u)];
    return _wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(func_2(global0[_wgslsmith_index_u32(~u_input.b.x, 20u)]).c.x)), func_2(_wgslsmith_sub_i32(reverseBits(global0[_wgslsmith_index_u32(1u, 20u)]), -u_input.a)).a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 2>();
    let var_0 = _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.c, reverseBits(vec2<i32>(global0[_wgslsmith_index_u32(45558u, 20u)], 18063i))) << ((vec2<u32>(4294967295u, 1u) | ~firstTrailingBit(vec2<u32>(0u, 11402u))) % vec2<u32>(32u)), u_input.c);
    var var_1 = _wgslsmith_f_op_f32(func_1(max(select(~(~41962u), u_input.b.x, global1[_wgslsmith_index_u32(u_input.b.x, 2u)]), u_input.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-412f)) + _wgslsmith_f_op_f32(f32(-1f) * -561f)), true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -345f) + _wgslsmith_f_op_f32(step(1000f, 626f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(386f)), -489f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(1473f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2721f) + _wgslsmith_f_op_f32(f32(-1f) * -1276f))))));
    var var_2 = _wgslsmith_div_i32(u_input.a, _wgslsmith_clamp_i32(~var_0.x & firstLeadingBit(global0[_wgslsmith_index_u32(u_input.b.x, 20u)]), 2147483647i, -global0[_wgslsmith_index_u32(~1u, 20u)]));
    let var_3 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -508f) * vec2<f32>(-415f, 621f)), _wgslsmith_div_vec2_f32(vec2<f32>(1619f, 835f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, -292f), vec2<f32>(-585f, 2147f)))))), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(101f + 655f), _wgslsmith_f_op_f32(-762f + -444f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(1000f))))), select(!vec2<bool>(global1[_wgslsmith_index_u32(18480u, 2u)], global1[_wgslsmith_index_u32(1u, 2u)]), select(vec2<bool>(true, global1[_wgslsmith_index_u32(10561u, 2u)]), select(vec2<bool>(global1[_wgslsmith_index_u32(0u, 2u)], true), vec2<bool>(false, true), vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 2u)], global1[_wgslsmith_index_u32(66551u, 2u)])), true), !(!vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.b.x, 2u)])))))));
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -426f);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_dot_vec2_u32(u_input.b.zw, ~u_input.b.wy), -25627i | abs(var_0.x), ~(~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) | ~vec4<u32>(u_input.b.x, u_input.b.x, 1u, 12402u)), func_2(reverseBits(global0[_wgslsmith_index_u32(~u_input.b.x, 20u)])).b | (1u ^ u_input.b.x));
}

