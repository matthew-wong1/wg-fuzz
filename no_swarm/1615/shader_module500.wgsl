struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: f32,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: vec3<bool> = vec3<bool>(true, true, true);

var<private> global2: array<i32, 10>;

var<private> global3: Struct_1;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1) -> f32 {
    let var_0 = global1.x;
    global3 = arg_1;
    global2 = array<i32, 10>();
    let var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_1.c * global3.b.x), 384f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.b.wx * _wgslsmith_f_op_vec2_f32(-global3.b.wz)))), arg_1.b.xy));
    let var_2 = vec2<bool>(false, any(vec2<bool>(true, _wgslsmith_div_f32(936f, -1000f) > var_1.x)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c) + _wgslsmith_f_op_f32(arg_1.b.x + 403f));
}

fn func_4(arg_0: Struct_1) -> vec3<f32> {
    global3 = arg_0;
    global3 = arg_0;
    global1 = select(vec3<bool>(arg_0.a.x, !all(select(vec4<bool>(global3.a.x, true, false, global3.a.x), vec4<bool>(false, arg_0.d, arg_0.a.x, true), vec4<bool>(arg_0.d, false, false, global3.a.x))), false), vec3<bool>(select(true, true, true), !global1.x, !(!global1.x)), select(!select(vec3<bool>(global1.x, global1.x, arg_0.a.x), vec3<bool>(global3.a.x, global1.x, false), true), !vec3<bool>(true, false, !global1.x), vec3<bool>(false, global3.a.x, global3.a.x)));
    global3 = arg_0;
    let var_0 = !global1.x;
    return arg_0.b.zxx;
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_4(Struct_1(!global1.zx, vec4<f32>(global3.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<u32>(u_input.a.x, u_input.b, u_input.b), Struct_1(global1.yz, global3.b, global3.c, global1.x, u_input.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-782f, global3.c, false)) * global3.b.x)), 512f, true, max(_wgslsmith_div_i32(-1i, 27173i) | (0i << (u_input.b % 32u)), u_input.c))));
    var var_1 = vec3<bool>(global3.d, global3.d, (i32(-1i) * -1i) < global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, _wgslsmith_mult_u32(34350u, _wgslsmith_mod_u32(u_input.a.x, 4294967295u))), 10u)]);
    var_1 = !(!vec3<bool>(true, true, var_1.x));
    global3 = Struct_1(select(global3.a, select(!vec2<bool>(global1.x, true), !(!global1.xx), vec2<bool>(select(true, var_1.x, true), false)), select(global1.zx, select(vec2<bool>(global1.x, global1.x), select(global1.yy, vec2<bool>(false, false), vec2<bool>(true, false)), global3.a), false)), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(720f, 591f, var_1.x)) * _wgslsmith_f_op_f32(sign(752f)))), _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + 1954f), _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(166f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-364f * global3.b.x)), 1000f, all(!vec3<bool>(false, global3.a.x, global3.a.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -175f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<u32>(u_input.b, u_input.a.x, 5458u) | vec3<u32>(0u, u_input.b, u_input.a.x), Struct_1(vec2<bool>(global1.x, var_1.x), global3.b, -1203f, var_1.x, 0i))))), !global3.d, abs(global2[_wgslsmith_index_u32(u_input.a.x, 10u)]));
    global1 = !vec3<bool>(true, u_input.b == u_input.b, global1.x | !any(vec4<bool>(true, false, global3.d, var_1.x)));
    return ~u_input.c << ((_wgslsmith_dot_vec3_u32(vec3<u32>(1u, ~26430u, u_input.a.x), vec3<u32>(_wgslsmith_div_u32(28409u, 25059u), u_input.b, ~u_input.a.x)) >> (u_input.b % 32u)) % 32u);
}

fn func_5(arg_0: Struct_1) -> vec4<u32> {
    let var_0 = global2[_wgslsmith_index_u32(u_input.b, 10u)];
    var var_1 = Struct_1(select(!vec2<bool>(arg_0.a.x, all(vec4<bool>(false, global1.x, true, arg_0.a.x))), global3.a, arg_0.a), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(global3.b - arg_0.b))), _wgslsmith_f_op_f32(-1870f + _wgslsmith_f_op_f32(select(1f, arg_0.b.x, global3.b.x > _wgslsmith_f_op_f32(-144f * arg_0.c)))), arg_0.a.x, -1i);
    global2 = array<i32, 10>();
    var var_2 = ~(u_input.a.x >> (min(abs(_wgslsmith_mod_u32(u_input.b, 4294967295u)), ~select(1u, u_input.a.x, false)) % 32u));
    let var_3 = -vec2<i32>(global3.e, 0i);
    return ~(_wgslsmith_mult_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 1u, 86221u, 1u), vec4<u32>(1u, u_input.b, 0u, 22125u), vec4<u32>(24071u, 27505u, 0u, 4294967295u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 24113u, 1u), vec4<u32>(2369u, u_input.a.x, 4294967295u, u_input.a.x) ^ vec4<u32>(53497u, 30035u, u_input.b, u_input.a.x))) << (vec4<u32>(u_input.b, u_input.a.x, u_input.b ^ u_input.a.x, countOneBits(u_input.a.x)) % vec4<u32>(32u)));
}

fn func_1(arg_0: vec4<bool>) -> vec3<f32> {
    var var_0 = global3.b.x;
    let var_1 = Struct_1(arg_0.wx, vec4<f32>(-269f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b.x) - -718f), global3.c, -1098f), global3.c, arg_0.x | true, 0i);
    let var_2 = _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a.x, 11071u, _wgslsmith_clamp_u32(81956u, u_input.a.x, ~u_input.b), u_input.a.x), func_5(Struct_1(vec2<bool>(all(arg_0), !arg_0.x), vec4<f32>(var_1.b.x, global3.c, _wgslsmith_div_f32(1350f, global3.b.x), _wgslsmith_f_op_f32(global3.c - global3.c)), 1245f, false, func_2())));
    var var_3 = Struct_1(vec2<bool>(false, !arg_0.x), _wgslsmith_f_op_vec4_f32(-var_1.b), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.c))), true, _wgslsmith_div_i32(-2147483647i, _wgslsmith_div_i32(i32(-1i) * -u_input.c, 2147483647i)));
    var var_4 = var_1;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.b.yyy));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!global1.yx, _wgslsmith_div_vec4_f32(vec4<f32>(global3.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1168f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-421f + 517f)), 897f), global3.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b.x) + 291f) * _wgslsmith_f_op_f32(f32(-1f) * -2462f))), true, u_input.c);
    let var_1 = select(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, abs(3868u)), u_input.a << (vec2<u32>(~30992u, min(u_input.a.x, 10661u)) % vec2<u32>(32u))), _wgslsmith_sub_vec2_u32(vec2<u32>(19230u, ~(4294967295u << (u_input.a.x % 32u))), u_input.a), select(!select(vec2<bool>(global1.x, global3.a.x), !var_0.a, !vec2<bool>(var_0.a.x, true)), var_0.a, vec2<bool>(any(vec3<bool>(var_0.d, global1.x, false)) == any(vec3<bool>(global3.d, false, var_0.a.x)), true)));
    let var_2 = _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.x, ~0u, var_1.x, var_1.x), _wgslsmith_sub_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 1u, 13288u), _wgslsmith_add_vec4_u32(vec4<u32>(23689u, 63809u, 1u, 4805u), vec4<u32>(0u, 0u, 28306u, var_1.x))), vec4<u32>(firstLeadingBit(u_input.b), 0u, var_1.x, var_1.x >> (1u % 32u))));
    global2 = array<i32, 10>();
    global2 = array<i32, 10>();
    global2 = array<i32, 10>();
    let var_3 = 281f;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.e, firstLeadingBit(~(~vec4<u32>(1u, 16811u, var_1.x, 0u))), _wgslsmith_f_op_vec3_f32(func_1(select(vec4<bool>(true, true, global1.x | false, select(var_0.a.x, global1.x, true)), select(!vec4<bool>(true, true, global3.a.x, true), select(vec4<bool>(false, var_0.d, false, global1.x), vec4<bool>(true, true, global3.d, false), vec4<bool>(var_0.d, global3.a.x, false, global1.x)), global1.x || global1.x), vec4<bool>(var_0.d & var_0.d, select(var_0.a.x, true, var_0.d), true, true & var_0.a.x)))), -2147483647i);
}

