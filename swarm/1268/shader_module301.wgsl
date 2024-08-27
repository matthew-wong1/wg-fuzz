struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: bool,
    d: vec4<bool>,
    e: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<bool, 17> = array<bool, 17>(false, true, false, false, true, false, false, true, true, false, false, false, false, true, true, true, false);

var<private> global2: Struct_2;

var<private> global3: array<i32, 29> = array<i32, 29>(-34043i, -1i, 37742i, -9239i, 46136i, 67094i, i32(-2147483648), 0i, 0i, -1i, 1i, 0i, 1i, 1i, -42864i, -35745i, -6440i, -24003i, 0i, -1i, -16713i, -18565i, -1i, 2147483647i, -5268i, -29695i, 1i, -1i, 0i);

var<private> global4: array<bool, 20> = array<bool, 20>(true, true, true, false, false, true, true, false, false, true, false, false, false, false, true, false, true, false, false, true);

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: vec4<i32>) -> vec3<f32> {
    global3 = array<i32, 29>();
    var var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_1.a.x, arg_1.a.x), _wgslsmith_f_op_f32(global0.x + global2.e)));
    var var_2 = Struct_1(vec3<bool>(global2.d.x, all(global2.d.yx), !(!(global4[_wgslsmith_index_u32(87782u, 20u)] && false))), _wgslsmith_sub_i32(~219i >> (global2.b % 32u), min(countOneBits(1i), arg_0.x)), _wgslsmith_div_f32(-350f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(round(arg_1.a.x))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(255f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -319f)))))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-868f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(820f * -505f))), global2.e));
    return _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-451f, var_2.d, arg_1.a.x), _wgslsmith_f_op_vec3_f32(-var_0.a))) - var_0.a), _wgslsmith_f_op_vec3_f32(-arg_1.a)));
}

fn func_2(arg_0: Struct_4, arg_1: u32, arg_2: vec3<bool>, arg_3: bool) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_3(~_wgslsmith_mult_vec4_i32(~countOneBits(vec4<i32>(u_input.a, global3[_wgslsmith_index_u32(u_input.b, 29u)], u_input.a, global3[_wgslsmith_index_u32(arg_1, 29u)])), vec4<i32>(-1i, _wgslsmith_sub_i32(global3[_wgslsmith_index_u32(global2.b, 29u)], u_input.a), -21932i, _wgslsmith_div_i32(global3[_wgslsmith_index_u32(u_input.b, 29u)], u_input.a))), arg_0, _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(1u, 29u)], -15907i, global3[_wgslsmith_index_u32(1u, 29u)], -8027i), vec4<i32>(-27302i, global3[_wgslsmith_index_u32(u_input.b, 29u)], 58155i, 1i)), ~vec4<i32>(27535i, u_input.a, global3[_wgslsmith_index_u32(global2.a, 29u)], global3[_wgslsmith_index_u32(global2.b, 29u)]) >> (~vec4<u32>(104552u, u_input.b, u_input.b, 4294967295u) % vec4<u32>(32u))), -vec4<i32>(global3[_wgslsmith_index_u32(u_input.b, 29u)], u_input.a, 16674i, 0i) ^ (vec4<i32>(2147483647i, u_input.a, -2147483647i, -2147483647i) ^ reverseBits(vec4<i32>(u_input.a, 1i, -25552i, u_input.a))))));
    global0 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.x, 206f, _wgslsmith_f_op_f32(step(-275f, 592f))), vec3<f32>(arg_0.a.x, global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(699f + global2.e) + 2322f), global2.e))));
    let var_1 = vec3<i32>(min(u_input.a ^ -2147483647i, 0i), _wgslsmith_mod_i32(~(~global3[_wgslsmith_index_u32(global2.a, 29u)]) | 1i, global3[_wgslsmith_index_u32(max(global2.b, 2246u), 29u)]), _wgslsmith_clamp_i32(33302i, ~(abs(u_input.a) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a))), firstTrailingBit(u_input.a)));
    global3 = array<i32, 29>();
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(global2.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-150f - -865f) + -750f))), -330f, global2.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) * var_0.x) * -582f)));
    return 95974u;
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> Struct_3 {
    global1 = array<bool, 17>();
    global4 = array<bool, 20>();
    var var_0 = ~countOneBits(vec4<i32>(i32(-1i) * -46937i, _wgslsmith_dot_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(u_input.b, 29u)], arg_0.b, u_input.a) & vec3<i32>(arg_0.b, 1i, -23975i), -vec3<i32>(u_input.a, u_input.a, u_input.a)), _wgslsmith_mod_i32(-arg_0.b, -1i), -43776i));
    let var_1 = global2.d.zx;
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global2.e, 819f)), _wgslsmith_f_op_f32(global0.x - arg_0.c)), -498f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d + _wgslsmith_f_op_f32(arg_0.c * global0.x)) * _wgslsmith_f_op_f32(trunc(global2.e))))));
    return Struct_3(reverseBits(reverseBits(select(~30001u, abs(47583u), false))), Struct_2(global2.a, _wgslsmith_mult_u32(20368u, ~4294967295u) << (global2.a % 32u), global2.d.x, select(vec4<bool>(true, false & arg_1, global4[_wgslsmith_index_u32(23602u, 20u)], true), vec4<bool>(global2.d.x, any(vec2<bool>(false, true)), all(vec4<bool>(arg_1, false, global1[_wgslsmith_index_u32(67689u, 17u)], arg_1)), true), true), global0.x), arg_0);
}

fn func_1(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_2, arg_3: vec2<f32>) -> bool {
    let var_0 = func_4(Struct_1(vec3<bool>(global1[_wgslsmith_index_u32(max(~arg_2.a, func_2(Struct_4(vec3<f32>(global2.e, arg_3.x, 850f)), arg_0.x, vec3<bool>(global2.d.x, true, global1[_wgslsmith_index_u32(0u, 17u)]), false)), 17u)], true, any(vec2<bool>(global2.c, global1[_wgslsmith_index_u32(0u, 17u)]))), _wgslsmith_add_i32(-9652i, -abs(u_input.a)), _wgslsmith_div_f32(arg_3.x, 836f), global2.e), any(arg_2.d.zw));
    var var_1 = global3[_wgslsmith_index_u32(var_0.b.a, 29u)];
    let var_2 = -962f;
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, var_2, -1116f)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.x, arg_3.x, -608f))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.c.d, 1000f, var_0.b.e), vec3<f32>(-1270f, var_2, arg_2.e))))))), !arg_1)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(arg_2.e, _wgslsmith_f_op_f32(abs(-1111f))), -534f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_2.e + arg_2.e), _wgslsmith_f_op_f32(exp2(global2.e)))))));
    var var_3 = global0.x;
    return global1[_wgslsmith_index_u32(firstLeadingBit(26640u), 17u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(global2.d.wzx);
    global4 = array<bool, 20>();
    global2 = Struct_2(~(_wgslsmith_clamp_u32(global2.b, 5893u, global2.b) << (4294967295u % 32u)) ^ abs(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(4294967295u, global2.b)), ~vec2<u32>(u_input.b, 4294967295u))), 1u, !(!func_1(vec3<u32>(4171u, 45063u, global2.b), var_0, Struct_2(u_input.b, u_input.b, global4[_wgslsmith_index_u32(u_input.b, 20u)], global2.d, global2.e), vec2<f32>(global0.x, global0.x))) && (select(~0u, max(0u, u_input.b), global2.d.x) <= global2.b), !(!(!(!vec4<bool>(true, global2.d.x, global2.d.x, var_0)))), global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_3(-vec4<i32>(-35494i, 2147483647i, u_input.a, -17932i), Struct_4(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-567f, global0.x, 596f), vec3<f32>(872f, -508f, 1302f), global2.d.yzw))), vec4<i32>(reverseBits(u_input.a), -35339i << (global2.a % 32u), -1i, ~global3[_wgslsmith_index_u32(u_input.b, 29u)]))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 1270f, 280f)) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1000f, global0.x, global0.x), vec3<f32>(-1013f, global2.e, global2.e)))), vec3<f32>(_wgslsmith_f_op_f32(-global2.e), _wgslsmith_f_op_f32(f32(-1f) * -640f), _wgslsmith_div_f32(1355f, -767f))), _wgslsmith_f_op_vec3_f32(func_3(~vec4<i32>(2147483647i, 2147483647i, 16364i, u_input.a), Struct_4(vec3<f32>(2071f, 957f, -550f)), vec4<i32>(-1i, -1i, u_input.a, 45406i) ^ vec4<i32>(-33718i, global3[_wgslsmith_index_u32(global2.a, 29u)], -2147483647i, u_input.a))).x == _wgslsmith_f_op_f32(trunc(303f)))), abs(vec2<u32>(countOneBits(global2.a), max(global2.b, 4294967295u))), countOneBits(~select(19804u, 1u, true)), 1u, 909f);
}

