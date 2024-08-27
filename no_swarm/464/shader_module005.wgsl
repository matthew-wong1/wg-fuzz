struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: vec4<bool>,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<bool>;

var<private> global2: array<u32, 6> = array<u32, 6>(15944u, 4294967295u, 0u, 56172u, 89623u, 28374u);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<bool>, arg_1: i32) -> vec4<bool> {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.a, global0.a), vec2<f32>(-891f, global0.a)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, global0.a))))), _wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(-11875i, reverseBits(firstTrailingBit(-12445i)), 6573i)), select(vec4<bool>(arg_0.x, !any(vec2<bool>(false, arg_0.x)), arg_0.x && (0i >= u_input.d), all(select(vec4<bool>(false, false, true, global1.x), vec4<bool>(false, arg_0.x, global1.x, arg_0.x), true))), select(select(vec4<bool>(false, true, global1.x, true), !vec4<bool>(false, global1.x, false, true), !vec4<bool>(false, arg_0.x, false, global1.x)), !select(vec4<bool>(global1.x, false, false, true), vec4<bool>(arg_0.x, true, arg_0.x, true), true), !select(vec4<bool>(arg_0.x, false, false, true), vec4<bool>(arg_0.x, true, true, false), vec4<bool>(global1.x, arg_0.x, arg_0.x, arg_0.x))), any(vec3<bool>(global1.x, true, true && arg_0.x))), _wgslsmith_dot_vec2_i32(~(u_input.c.zz | vec2<i32>(46723i, arg_1)), ~vec2<i32>(0i, u_input.c.x)) ^ -46442i, Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.e, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 6u)], 6u)], global2[_wgslsmith_index_u32(4294967295u, 6u)], 20252u), vec4<u32>(global2[_wgslsmith_index_u32(u_input.e, 6u)], u_input.e, 11117u, 4294967295u)), (vec4<u32>(36689u, global2[_wgslsmith_index_u32(11954u, 6u)], 1u, 0u) >> (vec4<u32>(4294967295u, u_input.b, global2[_wgslsmith_index_u32(u_input.b, 6u)], global2[_wgslsmith_index_u32(13477u, 6u)]) % vec4<u32>(32u))) >> (~vec4<u32>(54125u, 4294967295u, u_input.e, 4294967295u) % vec4<u32>(32u))), 6u)], abs(0u), ~0i));
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(global0.a + -1332f), var_0.a.x, -1000f, var_0.a.x), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(252f, 1494f, 1396f, 1000f))))))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1735f, global0.a, -351f, -1708f), vec4<f32>(global0.a, var_0.a.x, 169f, global0.a)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1265f, -1084f, global0.a, var_0.a.x))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.a, 255f, global0.a, 281f))), var_0.c)))), true));
    global1 = var_0.c.www;
    let var_2 = global1.x;
    var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.a.x, var_0.a.x))), var_0.a.x) - vec2<f32>(750f, -964f)), abs(-u_input.c.x), !var_0.c, u_input.a.x, var_0.e);
    return !vec4<bool>(_wgslsmith_add_i32(u_input.d, _wgslsmith_clamp_i32(var_0.d, -17181i, var_0.b)) <= _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.a.x, arg_1), reverseBits(-26992i)), global1.x, false, _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-var_1.x)) >= _wgslsmith_f_op_f32(-global0.a));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_3) -> i32 {
    global1 = arg_1.c.wxw;
    global0 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.a, _wgslsmith_f_op_f32(-global0.a), arg_1.c.x))))));
    var var_0 = select(arg_1.c, arg_1.c, func_3(global1.zy, 71603i));
    var var_1 = arg_1;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x * 1551f))) - 785f));
    return -29308i >> (_wgslsmith_div_u32(~24449u, var_1.e.b) % 32u);
}

fn func_1(arg_0: vec2<bool>) -> vec4<bool> {
    global2 = array<u32, 6>();
    let var_0 = ~(abs(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.d, -2147483647i, u_input.a.x, u_input.c.x), vec4<i32>(0i, -3707i, u_input.a.x, u_input.d))) ^ vec4<i32>(firstTrailingBit(u_input.d), u_input.c.x & (2147483647i >> (1u % 32u)), 14094i, 1i));
    var var_1 = _wgslsmith_f_op_f32(select(425f, _wgslsmith_f_op_f32(global0.a - -212f), select(global1.x, ~(var_0.x >> (u_input.b % 32u)) != func_2(~vec3<u32>(4294967295u, u_input.b, 0u), Struct_3(vec2<f32>(-1034f, global0.a), 2147483647i, vec4<bool>(true, arg_0.x, arg_0.x, true), -1i, Struct_2(40550u, u_input.e, var_0.x))), true)));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(527f, global0.a));
    global0 = Struct_1(-610f);
    return !(!(!vec4<bool>(global1.x, !global1.x, var_0.x >= var_0.x, any(vec3<bool>(arg_0.x, true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<bool>(~(~u_input.a.x) >= (u_input.c.x & firstLeadingBit(-1i)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(12047u, 1u), firstTrailingBit(vec2<u32>(u_input.e, u_input.b))), 6u)] <= ~global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(70650u, 44664u, 0u), vec3<u32>(1u, global2[_wgslsmith_index_u32(u_input.b, 6u)], u_input.b)), 6u)], global1.x | false, true), select(vec4<bool>(u_input.b > abs(global2[_wgslsmith_index_u32(25821u, 6u)]), _wgslsmith_clamp_u32(u_input.b, u_input.e, 1u) < 11426u, _wgslsmith_f_op_f32(sign(global0.a)) <= _wgslsmith_f_op_f32(-418f * -1392f), true), select(func_1(select(vec2<bool>(true, false), vec2<bool>(true, global1.x), global1.x)), vec4<bool>(global1.x, !global1.x, true, func_3(vec2<bool>(global1.x, false), u_input.d).x), !(!vec4<bool>(global1.x, global1.x, global1.x, global1.x))), vec4<bool>(true, global0.a <= _wgslsmith_f_op_f32(895f - global0.a), any(select(vec4<bool>(true, true, true, true), vec4<bool>(global1.x, global1.x, true, false), true)), select(global1.x, global1.x, true))), vec4<bool>(false, false, any(vec4<bool>(true, any(vec4<bool>(global1.x, true, true, false)), true, !global1.x)), any(func_1(vec2<bool>(true, false)))));
    let var_1 = Struct_2(countOneBits(u_input.e), u_input.b & ((~global2[_wgslsmith_index_u32(u_input.b, 6u)] & global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(4294967295u, 6u)], 6u)]) ^ _wgslsmith_add_u32(global2[_wgslsmith_index_u32(u_input.e, 6u)], firstTrailingBit(global2[_wgslsmith_index_u32(40261u, 6u)]))), 2147483647i);
    let var_2 = var_0.ywy;
    global2 = array<u32, 6>();
    global2 = array<u32, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~(-30514i)));
}

