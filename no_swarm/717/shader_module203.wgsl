struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec4<bool>,
    d: vec3<u32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: i32,
    d: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<bool, 20>;

var<private> global2: vec2<u32>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_4) -> vec2<f32> {
    var var_0 = ~(~0u);
    var var_1 = -1166f;
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(arg_0.a.c.e)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(arg_0.a.a.e - _wgslsmith_f_op_vec3_f32(arg_0.a.c.e * vec3<f32>(1000f, arg_0.a.a.a.x, arg_0.a.c.a.x))), vec3<f32>(arg_0.a.b.x, 324f, _wgslsmith_f_op_f32(exp2(arg_0.a.c.e.x))))), vec3<f32>(arg_0.a.c.e.x, -714f, -1100f))), vec3<bool>(all(!vec2<bool>(arg_0.a.a.c.x, arg_0.a.a.c.x)), arg_0.a.c.c.x, false)));
    var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.a.a.a.x + 951f))), _wgslsmith_div_f32(var_2.x, 592f))), 168f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.x))))));
    global2 = ~arg_0.a.a.d.zy;
    return vec2<f32>(_wgslsmith_f_op_f32(arg_0.a.a.e.x + -1074f), _wgslsmith_f_op_f32(floor(var_2.x)));
}

fn func_2(arg_0: i32) -> u32 {
    let var_0 = true;
    let var_1 = Struct_3(true, Struct_2(Struct_1(vec2<f32>(1f, _wgslsmith_f_op_f32(min(-524f, -705f))), -(~(-36629i)), select(vec4<bool>(true, true, var_0, var_0), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 20u)], var_0, var_0, var_0), !global1[_wgslsmith_index_u32(global2.x, 20u)]), vec3<u32>(30333u, 37196u, 1u), _wgslsmith_div_vec3_f32(vec3<f32>(132f, -913f, -284f), vec3<f32>(-522f, -1000f, -340f))), _wgslsmith_f_op_vec2_f32(func_3(Struct_4(Struct_2(Struct_1(vec2<f32>(-1215f, -394f), -50278i, vec4<bool>(var_0, var_0, false, global1[_wgslsmith_index_u32(0u, 20u)]), vec3<u32>(global2.x, 70571u, 1u), vec3<f32>(371f, -546f, -625f)), vec2<f32>(-236f, -524f), Struct_1(vec2<f32>(-1059f, 837f), -27099i, vec4<bool>(global1[_wgslsmith_index_u32(global2.x, 20u)], global1[_wgslsmith_index_u32(u_input.b, 20u)], true, false), vec3<u32>(1u, 14220u, 10437u), vec3<f32>(724f, 221f, -943f)), 49496u), all(vec4<bool>(var_0, global1[_wgslsmith_index_u32(u_input.b, 20u)], true, global1[_wgslsmith_index_u32(global2.x, 20u)]))))), Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1692f, 134f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2324f, 135f)))), -_wgslsmith_sub_i32(arg_0, 2147483647i), vec4<bool>(true, true, true, true), ~_wgslsmith_mult_vec3_u32(vec3<u32>(global2.x, u_input.b, global2.x), vec3<u32>(u_input.b, global2.x, global2.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-972f, -812f, 981f)))), global2.x), select(i32(-1i) * -4860i, ~0i, true), select(select(vec4<bool>(any(vec2<bool>(var_0, global1[_wgslsmith_index_u32(19730u, 20u)])), u_input.b > 1u, false, var_0), vec4<bool>(any(vec2<bool>(true, false)), !global1[_wgslsmith_index_u32(1u, 20u)], select(global1[_wgslsmith_index_u32(global2.x, 20u)], var_0, var_0), global1[_wgslsmith_index_u32(15114u, 20u)] | false), false), select(select(vec4<bool>(global1[_wgslsmith_index_u32(46254u, 20u)], true, var_0, var_0), select(vec4<bool>(false, var_0, true, false), vec4<bool>(false, var_0, false, false), global1[_wgslsmith_index_u32(global2.x, 20u)]), true), vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global2.x, 1u), 20u)], any(vec2<bool>(var_0, global1[_wgslsmith_index_u32(0u, 20u)])), true, !global1[_wgslsmith_index_u32(global2.x, 20u)]), !(!vec4<bool>(global1[_wgslsmith_index_u32(24105u, 20u)], true, true, false))), _wgslsmith_div_u32(~4294967295u, u_input.b) != u_input.b));
    global2 = firstLeadingBit(var_1.b.a.d.yx);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1082f))) * _wgslsmith_f_op_f32(215f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.b.b.x), _wgslsmith_f_op_f32(step(var_1.b.a.e.x, -495f)))), var_1.b.b.x))));
    global2 = var_1.b.c.d.xx;
    return firstLeadingBit(var_1.b.a.d.x);
}

fn func_1() -> f32 {
    global1 = array<bool, 20>();
    let var_0 = -1412f;
    global2 = vec2<u32>(30138u >> ((func_2(-global0.x) << (global2.x % 32u)) % 32u), global2.x);
    var var_1 = ~(~global0.x);
    var var_2 = global2.x;
    return var_0;
}

fn func_4(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_4) -> Struct_4 {
    let var_0 = 8258i;
    var var_1 = arg_2.a;
    let var_2 = Struct_4(arg_2.a, !any(select(select(vec3<bool>(var_1.a.c.x, var_1.a.c.x, arg_2.b), arg_2.a.a.c.xyx, false), !vec3<bool>(false, arg_2.b, global1[_wgslsmith_index_u32(u_input.b, 20u)]), !var_1.c.c.zyw)));
    var var_3 = -vec2<i32>(_wgslsmith_clamp_i32(arg_2.a.a.b, 47235i, global0.x), _wgslsmith_div_i32(abs(arg_2.a.a.b), 2147483647i)) & abs(reverseBits(select(u_input.a.zz, u_input.a.zx, var_2.a.c.c.zx) << (_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 42953u), arg_0.yy) % vec2<u32>(32u))));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.a.e.x)))) + var_2.a.b.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-891f - arg_2.a.b.x)))));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = select(vec2<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 17783u, 1u, 29524u), vec4<u32>(global2.x, u_input.b, 49912u, global2.x)), ~global2.x & 1u), ~4294967295u), ~(select(vec2<u32>(68083u, global2.x), vec2<u32>(global2.x, u_input.b), vec2<bool>(global1[_wgslsmith_index_u32(global2.x, 20u)], false)) << (max(vec2<u32>(3361u, 117353u), vec2<u32>(20481u, 4294967295u)) % vec2<u32>(32u))) ^ ~vec2<u32>(1u, global2.x & 53732u), select(vec2<bool>(global1[_wgslsmith_index_u32(global2.x, 20u)], true), !vec2<bool>(!global1[_wgslsmith_index_u32(0u, 20u)], global1[_wgslsmith_index_u32(u_input.b, 20u)]), !(!select(vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 20u)]), vec2<bool>(global1[_wgslsmith_index_u32(1u, 20u)], false), true))));
    global0 = countOneBits(-max(select(vec4<i32>(-26929i, -17433i, 382i, global0.x), vec4<i32>(global0.x, u_input.a.x, -1i, -14820i), vec4<bool>(global1[_wgslsmith_index_u32(global2.x, 20u)], global1[_wgslsmith_index_u32(69637u, 20u)], global1[_wgslsmith_index_u32(2237u, 20u)], false)) >> (~vec4<u32>(u_input.b, global2.x, u_input.b, 61658u) % vec4<u32>(32u)), -countOneBits(vec4<i32>(u_input.a.x, global0.x, 2147483647i, -2147483647i))));
    let var_0 = func_4(~(~vec3<u32>(24501u, ~global2.x, ~29u)), _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())))), Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -994f)), global0.x | 2147483647i, vec4<bool>(false, global1[_wgslsmith_index_u32(global2.x, 20u)], global1[_wgslsmith_index_u32(1u, 20u)], true), vec3<u32>(69581u, global2.x, u_input.b) | vec3<u32>(global2.x, 26166u, 4294967295u), vec3<f32>(559f, 1145f, 1000f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(100f, 210f)))), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-995f, 2337f) * vec2<f32>(974f, -123f)), _wgslsmith_sub_i32(2147483647i, global0.x), !vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 20u)], global1[_wgslsmith_index_u32(20316u, 20u)], global1[_wgslsmith_index_u32(1u, 20u)]), ~vec3<u32>(1u, global2.x, global2.x), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(261f, -519f, -971f)))), ~1u), false));
    global1 = array<bool, 20>();
    let var_1 = true;
    let var_2 = Struct_3(true, Struct_2(var_0.a.c, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1593f, 308f), vec2<f32>(-821f, 539f))))))), var_0.a.c, _wgslsmith_mod_u32(~global2.x, global2.x)), global0.x, vec4<bool>((func_4(var_0.a.a.d, -389f, Struct_4(Struct_2(Struct_1(var_0.a.b, 1i, vec4<bool>(global1[_wgslsmith_index_u32(0u, 20u)], global1[_wgslsmith_index_u32(u_input.b, 20u)], false, var_0.a.c.c.x), vec3<u32>(99897u, 1019u, global2.x), var_0.a.a.e), var_0.a.a.e.zy, var_0.a.c, 4294967295u), global1[_wgslsmith_index_u32(82917u, 20u)])).b & all(var_0.a.c.c.zx)) || global1[_wgslsmith_index_u32(20637u, 20u)], any(!vec2<bool>(global1[_wgslsmith_index_u32(var_0.a.a.d.x, 20u)], true)), false, false));
    global0 = ~(vec4<i32>(global0.x, 1i, 63659i, func_4(_wgslsmith_mod_vec3_u32(var_0.a.c.d, var_2.b.c.d), _wgslsmith_f_op_f32(trunc(var_0.a.c.a.x)), func_4(vec3<u32>(1u, u_input.b, u_input.b), var_2.b.a.a.x, Struct_4(Struct_2(var_2.b.a, vec2<f32>(var_2.b.a.e.x, 1005f), Struct_1(vec2<f32>(var_0.a.c.a.x, var_2.b.c.a.x), -2147483647i, vec4<bool>(var_0.a.a.c.x, false, var_1, var_0.a.a.c.x), var_0.a.a.d, vec3<f32>(-102f, var_0.a.b.x, 775f)), var_0.a.a.d.x), true))).a.a.b) << (~vec4<u32>(0u, _wgslsmith_mult_u32(var_2.b.d, 34307u), 0u, ~1u) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(217f - 179f)))), vec2<u32>(global2.x, firstLeadingBit(_wgslsmith_dot_vec3_u32(var_2.b.c.d, vec3<u32>(var_0.a.a.d.x, 38331u, global2.x)) & var_0.a.c.d.x)), var_2.b.d, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -334f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1167f * -1118f) * _wgslsmith_f_op_f32(152f - var_2.b.a.a.x)), var_0.a.b.x, 267f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1056f, var_2.b.b.x, 901f, var_0.a.a.e.x), vec4<f32>(288f, var_2.b.a.e.x, var_2.b.b.x, var_0.a.a.a.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(139f, var_0.a.b.x, 854f, var_0.a.c.a.x) * vec4<f32>(-350f, var_0.a.c.e.x, var_0.a.a.a.x, 146f)), select(vec4<bool>(var_1, false, var_1, false), var_2.d, true))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1899f, var_2.b.c.a.x, var_2.b.a.a.x) * vec4<f32>(-592f, var_2.b.b.x, -340f, var_0.a.b.x)))))), global2.x);
}

