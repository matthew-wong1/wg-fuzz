struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec2<bool>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: array<i32, 20> = array<i32, 20>(-1i, 2147483647i, -41900i, -67717i, 2147483647i, -1i, 1i, i32(-2147483648), 1i, -543i, i32(-2147483648), -45715i, 1i, 1i, -5636i, 22065i, -41599i, 891i, 0i, 0i);

var<private> global2: array<i32, 8> = array<i32, 8>(2147483647i, 2395i, 2147483647i, -28568i, 20422i, 0i, i32(-2147483648), -4782i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> u32 {
    let var_0 = abs(0i);
    global2 = array<i32, 8>();
    var var_1 = Struct_5(Struct_2(Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-996f, 1000f))), any(vec2<bool>(true, false)), false, 1u), 1044f), 876f, Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 128f)), true, true, reverseBits(u_input.a.x) ^ 23254u), Struct_1(287f, !(!(global1[_wgslsmith_index_u32(17570u, 20u)] < global1[_wgslsmith_index_u32(u_input.a.x, 20u)])), true, min(_wgslsmith_add_u32(u_input.a.x, _wgslsmith_clamp_u32(41297u, u_input.a.x, u_input.a.x)), _wgslsmith_mod_u32(u_input.a.x, ~4294967295u))), _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(~6791u, ~46779u), ~_wgslsmith_add_vec2_u32(u_input.a.xx, u_input.a.yx)), abs(vec2<u32>(u_input.a.x, 63792u))));
    let var_2 = abs(vec2<i32>(~(~countOneBits(59339i)), (-global2[_wgslsmith_index_u32(9992u, 8u)] >> (~var_1.e.x % 32u)) ^ 0i));
    global0 = 64757u;
    return _wgslsmith_sub_u32(reverseBits(u_input.a.x), abs(abs(u_input.a.x)));
}

fn func_2(arg_0: i32) -> Struct_1 {
    global0 = func_3();
    let var_0 = Struct_1(1f, true & any(vec3<bool>(true, true, true)), true, u_input.a.x);
    global0 = 19646u;
    global2 = array<i32, 8>();
    var var_1 = -reverseBits(arg_0);
    return Struct_1(-163f, var_0.a <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -506f), var_0.a), any(select(vec2<bool>(var_0.c, false), !vec2<bool>(var_0.b, false), true)) == all(select(select(vec2<bool>(true, false), vec2<bool>(true, false), var_0.b), vec2<bool>(var_0.c, true), var_0.c)), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a, _wgslsmith_div_vec3_u32(vec3<u32>(var_0.d, 0u, 43700u), vec3<u32>(4294967295u, var_0.d, var_0.d))), _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(u_input.a, vec3<u32>(1u, 4294967295u, 65265u)), vec3<u32>(69771u, 1u, u_input.a.x)) >> (_wgslsmith_sub_vec3_u32(~u_input.a, u_input.a) % vec3<u32>(32u))));
}

fn func_1(arg_0: vec4<bool>, arg_1: f32, arg_2: vec2<f32>, arg_3: Struct_2) -> vec4<f32> {
    var var_0 = Struct_5(Struct_2(func_2(global1[_wgslsmith_index_u32(1u, 20u)]), _wgslsmith_f_op_f32(abs(-1561f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1226f)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1826f), true, ~arg_3.a.d < (~arg_3.a.d | (arg_3.a.d >> (1u % 32u))), _wgslsmith_mod_u32(1u, ~u_input.a.x)), arg_3.a, vec2<u32>(_wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(arg_3.a.d, 4294967295u), vec2<u32>(arg_3.a.d, arg_3.a.d)), vec2<u32>(max(u_input.a.x, arg_3.a.d), _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x))), select(arg_3.a.d, ~4294967295u, arg_3.a.b)));
    var var_1 = select(vec3<bool>(all(arg_0.zxw), arg_3.a.b, func_2(abs(global1[_wgslsmith_index_u32(u_input.a.x, 20u)])).c | any(arg_0.wz)), select(select(!(!arg_0.xwy), select(select(arg_0.zwx, arg_0.xxz, arg_0.wzy), vec3<bool>(false, arg_3.a.c, arg_0.x), arg_0.xyy), arg_0.xxx), vec3<bool>(arg_3.a.c, arg_3.a.c, any(arg_0.wzz)), 0u > var_0.d.d), all(!vec2<bool>(!var_0.d.c, false)));
    var var_2 = Struct_3(46215u, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)))), !arg_0.zw);
    global0 = _wgslsmith_add_u32(~_wgslsmith_sub_u32(_wgslsmith_add_u32(countOneBits(arg_3.a.d), 0u >> (var_0.e.x % 32u)), 13763u), max(~_wgslsmith_div_u32(arg_3.a.d, u_input.a.x), ~reverseBits(arg_3.a.d)) ^ 0u);
    return _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2.b, var_0.c.a, 904f, -1426f))))))), vec4<f32>(func_2(_wgslsmith_clamp_i32(~(-2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, global1[_wgslsmith_index_u32(u_input.a.x, 20u)], 0i, global1[_wgslsmith_index_u32(16681u, 20u)]), vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 20u)], -2147483647i, 18376i, -2147483647i)), _wgslsmith_clamp_i32(1i, global2[_wgslsmith_index_u32(arg_3.a.d, 8u)], -1i))).a, _wgslsmith_f_op_f32(-arg_2.x), 214f, arg_3.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(vec4<bool>(false, true, false, true), _wgslsmith_f_op_f32(1099f - -792f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-103f, -779f), vec2<f32>(1147f, -1714f), false)), Struct_2(Struct_1(-224f, true, true, 1u), -1000f))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-571f, -103f, 176f, 404f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(437f, -1000f, -512f, -1000f))), vec4<bool>(true, true, false, false))))), -1029f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -186f), any(vec3<bool>(false, true, false)))), -860f)) * 439f));
}

