struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4>;

var<private> global1: array<f32, 20>;

var<private> global2: Struct_2;

var<private> global3: bool = true;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec4<bool>) -> bool {
    global3 = !((arg_0 & (arg_0 == arg_1.x)) != true);
    let var_0 = vec4<i32>(u_input.e, ~(-1i), -2147483647i, max(firstTrailingBit(-6685i), u_input.c)) & vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(-1i | u_input.e, global2.a), 5312i), -1i, _wgslsmith_clamp_i32(-1i, _wgslsmith_mod_i32(-5490i, 772i), u_input.c), u_input.e);
    var var_1 = Struct_2(~_wgslsmith_sub_i32(~var_0.x, -2147483647i) | 1i, Struct_1(u_input.a.yy & countOneBits(vec2<u32>(global2.b.a.x, 0u))));
    let var_2 = _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, global2.b.a.x), ~max(vec2<u32>(78072u, var_1.b.a.x), u_input.a.yy)), vec2<u32>(global2.b.a.x, u_input.d)) ^ vec2<u32>(72038u & min(global2.b.a.x ^ u_input.a.x, 2865u), 0u);
    global2 = global0[_wgslsmith_index_u32(34552u, 4u)];
    return true;
}

fn func_2(arg_0: f32, arg_1: bool) -> bool {
    global0 = array<Struct_2, 4>();
    let var_0 = Struct_1(select(u_input.a.zz, firstTrailingBit(~abs(global2.b.a)), vec2<bool>(true, arg_1)));
    var var_1 = arg_0;
    let var_2 = vec4<bool>(arg_1, any(vec4<bool>(arg_0 == _wgslsmith_div_f32(-618f, -354f), false, true, func_3(false, vec4<bool>(false, true, false, true)))), (_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(1217f)), _wgslsmith_f_op_f32(f32(-1f) * -1916f))) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global2.b.a.x, 20u)]), global1[_wgslsmith_index_u32(~29401u, 20u)])) && (~_wgslsmith_dot_vec3_u32(vec3<u32>(global2.b.a.x, var_0.a.x, 1u), vec3<u32>(77680u, 0u, 1u)) != _wgslsmith_div_u32(~var_0.a.x, ~60004u)), !(global1[_wgslsmith_index_u32(u_input.b.x, 20u)] > arg_0));
    global3 = arg_1;
    return !(arg_0 >= global1[_wgslsmith_index_u32(4294967295u, 20u)]);
}

fn func_4(arg_0: bool, arg_1: vec3<i32>, arg_2: bool, arg_3: vec4<bool>) -> i32 {
    let var_0 = arg_2;
    let var_1 = true;
    global0 = array<Struct_2, 4>();
    let var_2 = var_0;
    global2 = global0[_wgslsmith_index_u32(global2.b.a.x, 4u)];
    return ~(max((arg_1.x << (u_input.d % 32u)) ^ _wgslsmith_sub_i32(-26262i, 7971i), _wgslsmith_div_i32(abs(-4530i), arg_1.x)) << (~(u_input.b.x >> (_wgslsmith_add_u32(1u, global2.b.a.x) % 32u)) % 32u));
}

fn func_5(arg_0: f32, arg_1: i32, arg_2: vec2<f32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(vec2<u32>(arg_3.a.x, arg_3.a.x));
    global1 = array<f32, 20>();
    let var_1 = arg_3;
    global0 = array<Struct_2, 4>();
    global2 = Struct_2(arg_1, Struct_1(countOneBits(~(~var_0.a))));
    return var_1;
}

fn func_1(arg_0: vec2<u32>) -> vec2<bool> {
    let var_0 = func_5(970f, func_4(func_2(global1[_wgslsmith_index_u32(31170u, 20u)], true), vec3<i32>(u_input.e, u_input.e, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -1i, -37308i), vec3<i32>(global2.a, global2.a, global2.a)) >> (select(arg_0.x, 1u, false) % 32u)), _wgslsmith_f_op_f32(-1211f + global1[_wgslsmith_index_u32(~32923u, 20u)]) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(876f - global1[_wgslsmith_index_u32(arg_0.x, 20u)]) * -452f), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), true)), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), func_3(true, vec4<bool>(false, true, true, true))), !select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(~4000u, 20u)], _wgslsmith_f_op_f32(1178f - -206f)) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(428f, -722f)))))), global2.b);
    global2 = global0[_wgslsmith_index_u32(arg_0.x, 4u)];
    var var_1 = !(!vec2<bool>(true, !(global2.a > u_input.e)));
    return !select(vec2<bool>(true, any(vec2<bool>(true, false))), select(!vec2<bool>(false, var_1.x), vec2<bool>(false, false), vec2<bool>(global1[_wgslsmith_index_u32(47593u, 20u)] > 1000f, var_1.x)), !(!(!vec2<bool>(var_1.x, var_1.x))));
}

fn func_6(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: vec4<f32>, arg_3: u32) -> f32 {
    var var_0 = arg_1.x;
    let var_1 = 1204f;
    var var_2 = arg_3;
    let var_3 = Struct_1(firstTrailingBit(_wgslsmith_div_vec2_u32(vec2<u32>(max(5687u, 34727u), reverseBits(42409u)), vec2<u32>(_wgslsmith_add_u32(1u, global2.b.a.x), ~29174u))));
    let var_4 = Struct_1(~u_input.b.yw);
    return 497f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-975f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~_wgslsmith_add_u32(~global2.b.a.x, countOneBits(1u)), u_input.a.x), _wgslsmith_f_op_f32(func_6(countOneBits(~(-vec3<i32>(-40488i, global2.a, global2.a))), !func_1(u_input.b.xx), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(432f, global1[_wgslsmith_index_u32(10877u, 20u)], global1[_wgslsmith_index_u32(1u, 20u)], 946f)))))), reverseBits(0u))), global1[_wgslsmith_index_u32(u_input.a.x, 20u)], u_input.a);
}

