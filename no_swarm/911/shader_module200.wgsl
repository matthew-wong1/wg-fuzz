struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: i32 = 2147483647i;

var<private> global2: array<bool, 9> = array<bool, 9>(false, false, false, false, false, false, false, true, false);

var<private> global3: array<i32, 18> = array<i32, 18>(0i, 1i, 38715i, 21350i, 1i, 2147483647i, i32(-2147483648), -1i, -28055i, 11153i, -34989i, 10838i, -1i, 0i, -6965i, 0i, -49671i, -1i);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec4<f32> {
    let var_0 = Struct_1(!any(vec3<bool>(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.d, u_input.c.x), 9u)], true, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 20657u, 31889u, u_input.d), vec4<u32>(1u, 0u, u_input.d, 1u)), 9u)])), _wgslsmith_f_op_f32(-949f + -745f), 1i);
    global0 = max(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(~(~u_input.b.yzy), u_input.b.wxz), abs(-(~vec3<i32>(global3[_wgslsmith_index_u32(0u, 18u)], var_0.c, -18488i)))), max(max(var_0.c, firstLeadingBit(0i)), ~(~_wgslsmith_mult_i32(u_input.b.x, -42932i))));
    let var_1 = Struct_1(global2[_wgslsmith_index_u32(~32241u, 9u)], var_0.b, -max(~1i, 0i));
    global2 = array<bool, 9>();
    var var_2 = Struct_2(!vec4<bool>(false, 4294967295u == _wgslsmith_div_u32(1u, u_input.d), !(!var_1.a), var_1.a || any(vec3<bool>(true, true, true))), false);
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-490f, var_0.b, var_0.b, var_1.b)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, var_0.b, var_1.b, var_1.b) + vec4<f32>(-1433f, var_0.b, 582f, var_0.b))), vec4<f32>(_wgslsmith_f_op_f32(round(377f)), _wgslsmith_f_op_f32(var_1.b + -1398f), var_0.b, -434f), false)))), vec4<f32>(_wgslsmith_f_op_f32(exp2(var_1.b)), _wgslsmith_f_op_f32(select(218f, 600f, all(vec4<bool>(true, false, var_2.a.x, var_1.a)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -664f), 575f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-490f + -768f) * var_0.b))));
}

fn func_2(arg_0: vec3<f32>, arg_1: i32, arg_2: i32, arg_3: vec4<u32>) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(231f, 909f))) * arg_0.xy))) + vec2<f32>(876f, -359f)));
    global1 = ~countOneBits(~(i32(-1i) * -2147483647i));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 192f, var_0.x, -285f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, arg_0.x, 2848f, 352f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, -190f, var_0.x, arg_0.x), vec4<f32>(arg_0.x, -148f, 228f, -542f), vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.d, 9u)], global2[_wgslsmith_index_u32(13185u, 9u)], false)))) * _wgslsmith_f_op_vec4_f32(func_3()))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(658f, -367f, var_0.x, arg_0.x))))), vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(-492f * _wgslsmith_f_op_f32(-arg_0.x)), var_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(arg_0.x, -331f)), var_0.x))), !select(!vec4<bool>(false, global2[_wgslsmith_index_u32(34017u, 9u)], global2[_wgslsmith_index_u32(47887u, 9u)], global2[_wgslsmith_index_u32(0u, 9u)]), !vec4<bool>(global2[_wgslsmith_index_u32(11453u, 9u)], global2[_wgslsmith_index_u32(u_input.d, 9u)], global2[_wgslsmith_index_u32(30197u, 9u)], global2[_wgslsmith_index_u32(0u, 9u)]), select(global2[_wgslsmith_index_u32(u_input.c.x, 9u)], global2[_wgslsmith_index_u32(1u, 9u)], global2[_wgslsmith_index_u32(arg_3.x, 9u)])))));
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, 1240f, 943f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, arg_1, 1000f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 198f, arg_1, 125f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_1, arg_1))), reverseBits(24097i), firstTrailingBit(-1i), _wgslsmith_add_vec4_u32(vec4<u32>(35718u, 1u, u_input.d, u_input.c.x), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, 1u, u_input.c.x, u_input.d), vec4<u32>(u_input.d, u_input.d, u_input.d, 0u)))))));
    var var_1 = select(arg_0.a.wxx, arg_0.a.wxy, vec3<bool>(true, -_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 1i, u_input.b.x), u_input.b.zxy) != -3243i, global2[_wgslsmith_index_u32(17020u, 9u)]));
    var var_2 = Struct_1(any(!select(select(arg_0.a.wx, vec2<bool>(true, var_1.x), vec2<bool>(true, true)), select(var_1.xy, arg_0.a.wy, var_1.x), true)), var_0.x, ~(-u_input.a));
    let var_3 = var_1.x;
    let var_4 = Struct_1(var_1.x, _wgslsmith_f_op_f32(-var_0.x), min(var_2.c, var_2.c | -select(global3[_wgslsmith_index_u32(0u, 18u)], var_2.c, true)));
    return Struct_1(true, _wgslsmith_f_op_f32(-arg_1), 1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_2(select(select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 9u)], global2[_wgslsmith_index_u32(0u, 9u)], global2[_wgslsmith_index_u32(18750u, 9u)], false), select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.d, 9u)], true, global2[_wgslsmith_index_u32(u_input.d, 9u)], global2[_wgslsmith_index_u32(u_input.c.x, 9u)]), vec4<bool>(false, false, global2[_wgslsmith_index_u32(u_input.d, 9u)], false), true), all(vec3<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 9u)], false, global2[_wgslsmith_index_u32(1u, 9u)]))), vec4<bool>(any(vec3<bool>(true, false, global2[_wgslsmith_index_u32(0u, 9u)])), all(vec3<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 9u)], global2[_wgslsmith_index_u32(4294967295u, 9u)], false)), global2[_wgslsmith_index_u32(firstLeadingBit(u_input.d), 9u)], !global2[_wgslsmith_index_u32(u_input.c.x, 9u)]), !(!vec4<bool>(global2[_wgslsmith_index_u32(0u, 9u)], global2[_wgslsmith_index_u32(u_input.d, 9u)], global2[_wgslsmith_index_u32(94423u, 9u)], true))), false), 136f);
    let var_1 = vec4<i32>(-1i, ~(~_wgslsmith_mod_i32(_wgslsmith_div_i32(1i, u_input.a), min(global3[_wgslsmith_index_u32(u_input.d, 18u)], var_0.c))), 0i, ~(~_wgslsmith_mod_i32(abs(2147483647i), 21524i & var_0.c)));
    global3 = array<i32, 18>();
    global1 = (0i | firstLeadingBit(global3[_wgslsmith_index_u32(u_input.d, 18u)])) | -473i;
    var var_2 = vec4<bool>(global2[_wgslsmith_index_u32(~((u_input.c.x << (firstTrailingBit(u_input.c.x) % 32u)) ^ ~(~u_input.c.x)), 9u)], false, all(vec2<bool>(global2[_wgslsmith_index_u32((u_input.d ^ u_input.c.x) >> (u_input.d % 32u), 9u)], all(vec2<bool>(var_0.a, var_0.a)))), select(any(vec3<bool>(true, var_0.a, !global2[_wgslsmith_index_u32(1u, 9u)])), !global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 1u), 9u)], global2[_wgslsmith_index_u32(2211u, 9u)]));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, _wgslsmith_div_f32(_wgslsmith_div_f32(-519f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.b + var_0.b), var_0.b))), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.b, 544f)) + -693f))));
}

