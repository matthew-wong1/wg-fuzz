struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: u32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 5>;

var<private> global1: array<vec3<i32>, 11> = array<vec3<i32>, 11>(vec3<i32>(-7078i, 51618i, 2147483647i), vec3<i32>(i32(-2147483648), -1i, 35382i), vec3<i32>(0i, 25251i, -25784i), vec3<i32>(483i, -1i, 1i), vec3<i32>(22772i, i32(-2147483648), -10841i), vec3<i32>(-48573i, -1i, 39693i), vec3<i32>(0i, -31359i, 8777i), vec3<i32>(-14946i, -1i, i32(-2147483648)), vec3<i32>(-20630i, -20364i, 18955i), vec3<i32>(2147483647i, 1i, -2236i), vec3<i32>(43452i, -1i, 7756i));

var<private> global2: array<bool, 11>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: vec3<u32>, arg_1: bool, arg_2: bool, arg_3: f32) -> Struct_3 {
    let var_0 = 4294967295u > arg_0.x;
    let var_1 = Struct_2(vec2<i32>(i32(-1i) * -(~2147483647i), u_input.a.x));
    var var_2 = Struct_4(_wgslsmith_div_f32(arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(727f))))));
    global1 = array<vec3<i32>, 11>();
    var_2 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(127f)), arg_3))));
    return Struct_3(u_input.a.x);
}

fn func_1(arg_0: u32) -> bool {
    let var_0 = Struct_2(max(u_input.a.yw, -u_input.a.wy) & vec2<i32>(u_input.a.x | -11299i, -2147483647i));
    var var_1 = min(u_input.a.xz, var_0.a);
    global1 = array<vec3<i32>, 11>();
    let var_2 = func_2(~firstLeadingBit(vec3<u32>(u_input.c.x, arg_0, 1431u)), !global2[_wgslsmith_index_u32(0u, 11u)], all(vec4<bool>(true, global2[_wgslsmith_index_u32(~24893u, 11u)], !global2[_wgslsmith_index_u32(20330u, 11u)], !global2[_wgslsmith_index_u32(arg_0, 11u)])) && true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1555f) - -1287f) + 1328f) + -1503f));
    let var_3 = -2147483647i;
    return global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(~_wgslsmith_sub_u32(_wgslsmith_div_u32(arg_0, 0u), u_input.b.x), _wgslsmith_mult_u32(~(~52170u), u_input.b.x), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), vec2<u32>(u_input.b.x, arg_0)))), _wgslsmith_add_u32(47010u, select(~63945u, u_input.b.x, global2[_wgslsmith_index_u32(arg_0, 11u)]) | 1u)), 11u)];
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: i32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(min(-557f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    let var_1 = Struct_2(select(-vec2<i32>(arg_1.a.x, -14942i) & (u_input.a.wy >> (~vec2<u32>(arg_0, u_input.c.x) % vec2<u32>(32u))), reverseBits(vec2<i32>(arg_3, arg_3)), false));
    var var_2 = var_0;
    var var_3 = ~(~_wgslsmith_sub_vec3_u32(reverseBits(~vec3<u32>(330u, u_input.b.x, arg_0)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(1063u, u_input.b.x, u_input.b.x), u_input.b)));
    var var_4 = func_2(~u_input.b, global2[_wgslsmith_index_u32(~firstTrailingBit(49395u), 11u)], global2[_wgslsmith_index_u32(25720u, 11u)], _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(var_0)), _wgslsmith_f_op_f32(-1189f + -1132f), !global2[_wgslsmith_index_u32(53473u, 11u)])));
    return var_4.a;
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: Struct_4) -> vec4<f32> {
    let var_0 = ~abs(select(vec2<i32>(2147483647i, 2147483647i & u_input.a.x), u_input.a.zx, !select(arg_1.zw, vec2<bool>(true, arg_1.x), arg_1.wx)));
    let var_1 = firstTrailingBit(1i);
    var var_2 = !vec4<bool>(!any(vec2<bool>(global2[_wgslsmith_index_u32(1u, 11u)], false)), false, !all(vec4<bool>(true, arg_1.x, false, arg_1.x)), _wgslsmith_f_op_f32(arg_2.a + arg_2.a) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))));
    var var_3 = u_input.b;
    var var_4 = Struct_3(~firstTrailingBit(14372i));
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-1826f, -1006f, _wgslsmith_f_op_f32(max(819f, arg_2.a)), _wgslsmith_f_op_f32(-287f + -1153f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(782f, 420f, 301f, arg_2.a), vec4<f32>(1100f, 1000f, arg_2.a, 1179f))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1469f, arg_2.a, arg_2.a, arg_2.a), vec4<f32>(arg_2.a, arg_2.a, 1068f, arg_2.a))))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_2.a, -912f, 1214f, arg_2.a), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(371f, arg_2.a, 312f, -567f), vec4<f32>(1229f, arg_2.a, arg_2.a, 1317f), vec4<bool>(global2[_wgslsmith_index_u32(arg_0.x, 11u)], false, false, false))), vec4<f32>(arg_2.a, arg_2.a, 1477f, arg_2.a)))), true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ((~u_input.c.x | 1u) << (u_input.b.x % 32u)) ^ ~_wgslsmith_dot_vec2_u32(countOneBits(u_input.b.zy | u_input.c), u_input.c);
    var var_1 = _wgslsmith_f_op_vec4_f32(func_4(select(~_wgslsmith_clamp_vec4_u32(vec4<u32>(19484u, 1u, u_input.c.x, u_input.b.x), vec4<u32>(47902u, 25297u, u_input.b.x, 1u), vec4<u32>(u_input.c.x, u_input.b.x, var_0, 4094u)), ~(vec4<u32>(4294967295u, 60708u, var_0, 0u) | vec4<u32>(42468u, u_input.b.x, u_input.c.x, 44897u)), func_1(max(var_0, 4294967295u))) >> ((max(abs(vec4<u32>(var_0, 0u, 10732u, var_0)), ~vec4<u32>(u_input.c.x, var_0, u_input.b.x, u_input.b.x)) << (vec4<u32>(~u_input.c.x, u_input.c.x, ~4294967295u, _wgslsmith_mod_u32(var_0, 1352u)) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<bool>(!(func_3(33254u, Struct_2(u_input.a.wz), vec4<i32>(u_input.a.x, -2147483647i, 0i, u_input.a.x), 2147483647i) >= -u_input.a.x), !all(select(vec4<bool>(false, global2[_wgslsmith_index_u32(var_0, 11u)], global2[_wgslsmith_index_u32(4294967295u, 11u)], true), vec4<bool>(true, true, false, global2[_wgslsmith_index_u32(var_0, 11u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(0u, 11u)], global2[_wgslsmith_index_u32(var_0, 11u)], global2[_wgslsmith_index_u32(61979u, 11u)]))), func_1(~u_input.c.x << (firstTrailingBit(u_input.c.x) % 32u)), true), Struct_4(585f)));
    var var_2 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.x, 1670f))));
    var var_3 = vec4<bool>(all(vec3<bool>(!all(vec2<bool>(true, false)), select(global2[_wgslsmith_index_u32(4294967295u, 11u)], false, global2[_wgslsmith_index_u32(4294967295u, 11u)]) & any(vec4<bool>(true, true, false, global2[_wgslsmith_index_u32(u_input.b.x, 11u)])), _wgslsmith_f_op_f32(-var_2.a) != _wgslsmith_f_op_vec4_f32(func_4(vec4<u32>(var_0, u_input.c.x, u_input.c.x, 0u), vec4<bool>(global2[_wgslsmith_index_u32(71277u, 11u)], false, global2[_wgslsmith_index_u32(var_0, 11u)], global2[_wgslsmith_index_u32(var_0, 11u)]), Struct_4(-2275f))).x)), true, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(var_0, 1u), 0u), 11u)], global2[_wgslsmith_index_u32(1u, 11u)]);
    var var_4 = u_input.b.xz;
    global2 = array<bool, 11>();
    let var_5 = 131556u != ~select(~var_4.x, firstLeadingBit(~3686u), !(!var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(max(var_1.xw, vec2<f32>(-1041f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.a)))))));
}

