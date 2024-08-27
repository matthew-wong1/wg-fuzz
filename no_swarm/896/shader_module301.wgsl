struct Struct_1 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec2<u32>,
    d: f32,
    e: bool,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 29>;

var<private> global1: vec2<f32>;

var<private> global2: array<bool, 19>;

var<private> global3: vec4<bool>;

var<private> global4: array<i32, 5> = array<i32, 5>(-21954i, -13337i, -4896i, -5969i, 22705i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    global2 = array<bool, 19>();
    let var_0 = select(select(vec4<bool>(all(!vec3<bool>(global2[_wgslsmith_index_u32(0u, 19u)], global2[_wgslsmith_index_u32(23059u, 19u)], global2[_wgslsmith_index_u32(u_input.a, 19u)])), global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.a, u_input.a), 19u)], any(!vec4<bool>(global3.x, global3.x, true, global2[_wgslsmith_index_u32(u_input.a, 19u)])), !(u_input.a >= 19726u)), !(!select(vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 19u)], global2[_wgslsmith_index_u32(29915u, 19u)], global2[_wgslsmith_index_u32(u_input.a, 19u)]), vec4<bool>(false, false, false, true), vec4<bool>(false, global3.x, global3.x, global3.x))), vec4<bool>(true, all(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 19u)], true, global2[_wgslsmith_index_u32(0u, 19u)])), global3.x & all(global3.yxx), any(select(global3.yzz, global3.xwz, global2[_wgslsmith_index_u32(4294967295u, 19u)])))), !select(!(!vec4<bool>(global2[_wgslsmith_index_u32(20385u, 19u)], global3.x, global2[_wgslsmith_index_u32(u_input.a, 19u)], global2[_wgslsmith_index_u32(36253u, 19u)])), select(vec4<bool>(global2[_wgslsmith_index_u32(21752u, 19u)], true, global3.x, global3.x), vec4<bool>(false, true, global2[_wgslsmith_index_u32(22682u, 19u)], false), vec4<bool>(global3.x, true, false, true)), vec4<bool>(true, true, true, true)), !(!vec4<bool>(!global2[_wgslsmith_index_u32(u_input.a, 19u)], global2[_wgslsmith_index_u32(u_input.a, 19u)] || true, u_input.a <= 33333u, !global3.x)));
    let var_1 = arg_0;
    let var_2 = _wgslsmith_dot_vec3_i32(~u_input.d.wxy, vec3<i32>(-1i, global4[_wgslsmith_index_u32(~34183u, 5u)], global4[_wgslsmith_index_u32(0u, 5u)]));
    var var_3 = true;
    return !select(vec4<bool>(false | !global3.x, true, (global2[_wgslsmith_index_u32(u_input.a, 19u)] & true) | (u_input.a <= u_input.a), select(-17506i > global4[_wgslsmith_index_u32(10228u, 5u)], true, global3.x)), select(vec4<bool>(global2[_wgslsmith_index_u32(~1u, 19u)], global2[_wgslsmith_index_u32(18393u & u_input.a, 19u)], global3.x, global2[_wgslsmith_index_u32(44157u, 19u)]), var_0, _wgslsmith_clamp_u32(u_input.a, 1u, u_input.a) == ~u_input.a), vec4<bool>(true, var_0.x, false, any(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 19u)], global2[_wgslsmith_index_u32(u_input.a, 19u)], true))));
}

fn func_2(arg_0: Struct_2) -> i32 {
    global4 = array<i32, 5>();
    global0 = array<f32, 29>();
    global3 = vec4<bool>(all(func_3(arg_0.a)), -2147483647i >= u_input.b.x, true, arg_0.e);
    var var_0 = vec4<i32>(-(~(-1i)), 4816i, u_input.c << (u_input.a % 32u), max(max(_wgslsmith_clamp_i32(-2147483647i, min(1i, 2147483647i), -1i), -arg_0.b.x >> (~33260u % 32u)), 2147483647i | u_input.d.x));
    global4 = array<i32, 5>();
    return -(~(-1i));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<f32>) -> vec2<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * global0[_wgslsmith_index_u32(u_input.a, 29u)])))), vec4<f32>(global0[_wgslsmith_index_u32(~(72938u | u_input.a), 29u)], -1000f, _wgslsmith_f_op_f32(f32(-1f) * -425f), 597f));
    global2 = array<bool, 19>();
    var var_1 = 32040u;
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(arg_1, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-arg_1))))))));
    var var_2 = firstLeadingBit(4294967295u);
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(1075f, _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(trunc(var_0.a)))));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<f32>) -> StorageBuffer {
    let var_0 = Struct_1(-472f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(arg_1)))) - arg_1)));
    global1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(vec4<i32>(24922i, ~min(47844i, -23937i), -17332i, func_2(Struct_2(Struct_1(global0[_wgslsmith_index_u32(u_input.a, 29u)], vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 29u)], global1.x, -156f, global1.x)), u_input.d, vec2<u32>(44487u, u_input.a), -556f, global2[_wgslsmith_index_u32(u_input.a, 19u)])) << (~u_input.a % 32u)), var_0.b.xx)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.b.wz + vec2<f32>(616f, global0[_wgslsmith_index_u32(u_input.a, 29u)])), _wgslsmith_f_op_vec2_f32(trunc(var_0.b.yz)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1003f, -731f), var_0.b.zz))))));
    global4 = array<i32, 5>();
    var var_1 = global3.x || !(true && func_3(var_0).x);
    global3 = !vec4<bool>(false, global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(29755u, 4294967295u, 1u) | vec3<u32>(u_input.a, 26592u, u_input.a)), 19u)], all(select(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 19u)], global2[_wgslsmith_index_u32(48438u, 19u)], true, global3.x), select(vec4<bool>(false, global3.x, false, false), vec4<bool>(global3.x, true, global3.x, global2[_wgslsmith_index_u32(u_input.a, 19u)]), vec4<bool>(true, global3.x, global2[_wgslsmith_index_u32(24000u, 19u)], global2[_wgslsmith_index_u32(u_input.a, 19u)])), all(global3.ywz))), global4[_wgslsmith_index_u32(4109u, 5u)] >= u_input.d.x);
    return StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.x, 1000f, false)) * _wgslsmith_f_op_f32(-400f + -779f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -506f)))), -1716f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.x + global1.x), _wgslsmith_f_op_f32(287f * global0[_wgslsmith_index_u32(59962u, 29u)]), any(vec3<bool>(global3.x, global3.x, global3.x)))), global1.x))), _wgslsmith_sub_i32(~(-_wgslsmith_add_i32(u_input.b.x, arg_0.x)), firstTrailingBit(u_input.b.x)), abs(vec4<u32>(0u, 16999u, u_input.a, _wgslsmith_div_u32(0u, _wgslsmith_mod_u32(u_input.a, 41273u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 29>();
    let var_0 = u_input.d.x;
    global4 = array<i32, 5>();
    let x = u_input.a;
    s_output = func_1(~vec4<i32>(u_input.c & -u_input.d.x, global4[_wgslsmith_index_u32(~(~1u), 5u)], 1i, -countOneBits(global4[_wgslsmith_index_u32(4294967295u, 5u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(~u_input.a, 29u)], _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(854f * _wgslsmith_f_op_f32(ceil(global1.x))), -425f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, global0[_wgslsmith_index_u32(u_input.a, 29u)]) + _wgslsmith_f_op_f32(1000f - -1000f))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(global1.x + global0[_wgslsmith_index_u32(u_input.a, 29u)]), _wgslsmith_f_op_f32(round(-306f)), 1071f, _wgslsmith_f_op_f32(-global1.x))))));
}

