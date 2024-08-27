struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20>;

var<private> global1: i32 = 2147483647i;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    return Struct_1(true);
}

fn func_3(arg_0: Struct_1) -> Struct_1 {
    global1 = _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(u_input.a, 20u)], global0[_wgslsmith_index_u32(18144u, 20u)]);
    var var_0 = ~vec3<u32>(~10911u, 0u, u_input.a);
    var var_1 = firstTrailingBit(vec3<i32>(-_wgslsmith_dot_vec4_i32(-vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 20u)], global0[_wgslsmith_index_u32(var_0.x, 20u)], global0[_wgslsmith_index_u32(u_input.a, 20u)], global0[_wgslsmith_index_u32(var_0.x, 20u)]), vec4<i32>(global0[_wgslsmith_index_u32(0u, 20u)], global0[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(u_input.a, 20u)], global0[_wgslsmith_index_u32(0u, 20u)])), global0[_wgslsmith_index_u32(~min(var_0.x, 1u), 20u)], min(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(1u, var_0.x, 0u)), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 31719u, var_0.x), vec3<u32>(u_input.a, 0u, 4294967295u))), 20u)], ~(~global0[_wgslsmith_index_u32(u_input.a, 20u)]))));
    var var_2 = arg_0.a;
    var var_3 = true;
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec2<f32>, arg_3: vec4<u32>) -> Struct_1 {
    return Struct_1(~1i <= _wgslsmith_dot_vec4_i32(abs(-vec4<i32>(50180i, -2147483647i, global0[_wgslsmith_index_u32(arg_3.x, 20u)], global0[_wgslsmith_index_u32(0u, 20u)])), min(vec4<i32>(23238i, global0[_wgslsmith_index_u32(1u, 20u)], 36878i, 1i), vec4<i32>(-1i, 66522i, global0[_wgslsmith_index_u32(31453u, 20u)], global0[_wgslsmith_index_u32(1u, 20u)]))));
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_div_f32(241f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-679f + _wgslsmith_f_op_f32(step(626f, 1945f)))) * _wgslsmith_f_op_f32(2341f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(320f)) * _wgslsmith_f_op_f32(round(-1051f))))));
    var var_1 = vec4<bool>(!(true && any(vec2<bool>(arg_1.a, false))), false, arg_1.a, all(vec2<bool>(true, true)));
    var var_2 = Struct_1(any(var_1.xz));
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0, _wgslsmith_dot_vec3_u32(abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0, u_input.a, 60851u), vec3<u32>(arg_0, 15502u, u_input.a), ~vec3<u32>(arg_0, 36120u, u_input.a))), vec3<u32>(0u, arg_0 | 4294967295u, firstLeadingBit(~1u)))), 20u)];
    global1 = min(2147483647i, 2147483647i);
    return arg_1;
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(arg_1)))), arg_1, _wgslsmith_f_op_f32(f32(-1f) * -843f), arg_1))));
    return func_5(113282u, func_4(func_3(func_2(Struct_2(24907u))), 906u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.zy * var_0.xx)), min(countOneBits(vec4<u32>(22053u, 4294967295u, 63088u, 44949u)), vec4<u32>(_wgslsmith_mod_u32(60111u, u_input.a), ~4294967295u, 25781u, u_input.a))), _wgslsmith_clamp_vec3_i32(abs(vec3<i32>(-2147483647i, -1i, 31057i) | ~vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 20u)], global0[_wgslsmith_index_u32(0u, 20u)], 19781i)), vec3<i32>(min(-14337i, countOneBits(global0[_wgslsmith_index_u32(0u, 20u)])), max(5802i, -global0[_wgslsmith_index_u32(u_input.a, 20u)]), _wgslsmith_dot_vec4_i32(select(vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(arg_0.a, 20u)], global0[_wgslsmith_index_u32(1u, 20u)], 1804i), vec4<i32>(global0[_wgslsmith_index_u32(arg_0.a, 20u)], global0[_wgslsmith_index_u32(58771u, 20u)], -72762i, global0[_wgslsmith_index_u32(u_input.a, 20u)]), vec4<bool>(false, false, true, true)), ~vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 20u)], 0i, global0[_wgslsmith_index_u32(u_input.a, 20u)], global0[_wgslsmith_index_u32(0u, 20u)]))), vec3<i32>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(54103u, 11234u), 20u)] << (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a, 51955u, 63725u), vec3<u32>(u_input.a, 0u, u_input.a)) % 32u), _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(63563u, 20u)], global0[_wgslsmith_index_u32(1u, 20u)]) & _wgslsmith_add_i32(-11646i, -14968i), -countOneBits(1i))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -_wgslsmith_clamp_i32(24962i, abs(53635i), global0[_wgslsmith_index_u32(~46744u, 20u)]);
    global1 = ~(-2147483647i);
    let var_0 = func_1(Struct_2(~(~1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~_wgslsmith_add_u32(u_input.a, ~34828u), 37571u | u_input.a, ~(~(~_wgslsmith_mult_u32(u_input.a, u_input.a)))), 20u)];
    global0 = array<i32, 20>();
    let var_1 = i32(-1i) * -global0[_wgslsmith_index_u32(1u, 20u)];
    global1 = _wgslsmith_mod_i32(0i, global0[_wgslsmith_index_u32(0u, 20u)]);
    global0 = array<i32, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_add_i32(1i, 1i >> (select(u_input.a, u_input.a, var_0.a) % 32u)), ~_wgslsmith_sub_i32(var_1, -25116i)), firstLeadingBit(_wgslsmith_mult_vec3_u32(select(_wgslsmith_mult_vec3_u32(vec3<u32>(26930u, 0u, u_input.a), vec3<u32>(40409u, u_input.a, u_input.a)), _wgslsmith_mult_vec3_u32(vec3<u32>(7100u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 8000u)), vec3<bool>(false, true, var_0.a)), vec3<u32>(~37751u, u_input.a, ~u_input.a))), ~(~(~vec4<u32>(u_input.a, 1u, u_input.a, u_input.a) << (vec4<u32>(u_input.a, 4294967295u, u_input.a, 34482u) % vec4<u32>(32u)))), select(firstTrailingBit(countOneBits(vec4<i32>(var_1, 2147483647i, 43790i, global0[_wgslsmith_index_u32(4294967295u, 20u)]))), vec4<i32>(18099i, _wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(45710u, 20u)], var_1, -1i, global0[_wgslsmith_index_u32(u_input.a, 20u)]), vec4<i32>(global0[_wgslsmith_index_u32(13294u, 20u)], global0[_wgslsmith_index_u32(u_input.a, 20u)], global0[_wgslsmith_index_u32(1u, 20u)], var_1)), firstLeadingBit(global0[_wgslsmith_index_u32(u_input.a, 20u)]), i32(-1i) * -28265i), vec4<bool>(var_0.a, true, true, true)) & vec4<i32>(_wgslsmith_div_i32(-14104i, global0[_wgslsmith_index_u32(~122531u, 20u)]), reverseBits(2147483647i), -(global0[_wgslsmith_index_u32(u_input.a, 20u)] ^ global0[_wgslsmith_index_u32(4202u, 20u)]), -2147i));
}

