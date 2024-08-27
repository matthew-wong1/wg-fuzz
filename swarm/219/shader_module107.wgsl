struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_1, 3>;

var<private> global2: bool = true;

var<private> global3: array<vec4<i32>, 24>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec3<u32>) -> vec3<bool> {
    var var_0 = all(!select(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false)), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true)), select(false, false, false)), false));
    let var_1 = Struct_3(!all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)))), _wgslsmith_sub_u32(103902u, max(arg_2.x >> (29387u % 32u), countOneBits(12179u))) << (arg_1.a % 32u));
    return !(!select(select(select(vec3<bool>(var_1.a, var_1.a, var_1.a), vec3<bool>(var_1.a, true, true), false), !vec3<bool>(var_1.a, false, false), !vec3<bool>(false, var_1.a, true)), !vec3<bool>(true, true, var_1.a), vec3<bool>(arg_1.d.x == arg_1.d.x, any(vec4<bool>(var_1.a, var_1.a, true, true)), !var_1.a)));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: vec4<u32>) -> Struct_1 {
    global1 = array<Struct_1, 3>();
    global2 = any(select(vec3<bool>(true, true, true), !func_3(arg_1.zx, global1[_wgslsmith_index_u32(arg_0.a, 3u)], vec3<u32>(u_input.b, 4294967295u, arg_3.x)), vec3<bool>(!arg_2.a, any(vec2<bool>(true, arg_2.a)), true))) && arg_2.a;
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(select(_wgslsmith_sub_u32(1u, arg_3.x), _wgslsmith_dot_vec2_u32(vec2<u32>(54384u, u_input.b) ^ arg_3.ww, ~vec2<u32>(arg_3.x, arg_2.b)), arg_2.a) & 104101u, ~(~abs(~arg_0.a))), 24u)];
    var var_1 = select(all(select(select(vec3<bool>(arg_2.a, false, arg_2.a), vec3<bool>(true, arg_2.a, true), arg_2.a), !vec3<bool>(false, false, arg_2.a), vec3<bool>(false, arg_2.a, false))) && arg_2.a, arg_2.a, -977f <= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x + -831f), _wgslsmith_f_op_f32(abs(arg_1.x)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(685f, arg_1.x, -215f), vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1026f), _wgslsmith_f_op_f32(select(-1611f, -889f, arg_2.a)))), arg_1.x)));
    return global1[_wgslsmith_index_u32(firstLeadingBit(~abs(firstTrailingBit(arg_2.b))), 3u)];
}

fn func_4(arg_0: Struct_1) -> u32 {
    var var_0 = Struct_3(select(false, all(vec2<bool>(true, true)), !(!func_3(vec2<f32>(-2540f, arg_0.b), global1[_wgslsmith_index_u32(arg_0.a, 3u)], vec3<u32>(1u, arg_0.a, u_input.b)).x)), ~(~u_input.b & 1u));
    let var_1 = abs(0u);
    let var_2 = arg_0.c.x;
    var var_3 = Struct_2(select(_wgslsmith_sub_u32(arg_0.a, ~_wgslsmith_mod_u32(var_1, var_1)), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(arg_0.a, 0u), u_input.d ^ u_input.d, var_1, ~4294967295u), vec4<u32>(0u, u_input.d, var_1, 26039u) ^ ~vec4<u32>(var_0.b, var_0.b, var_0.b, 59675u)), !(!any(vec3<bool>(var_0.a, true, true)))));
    let var_4 = global1[_wgslsmith_index_u32(~var_3.a, 3u)];
    return ~1u;
}

fn func_1() -> Struct_3 {
    var var_0 = vec4<u32>(u_input.b, ~39989u, ~_wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 84070u, u_input.b, u_input.b), vec4<u32>(4294967295u, u_input.d, 4294967295u, 4294967295u)), 4294967295u & u_input.d), func_4(func_2(Struct_2(2764u), vec3<f32>(1007f, -835f, 1241f), Struct_3(false, 37618u), vec4<u32>(u_input.b, 20904u, u_input.d, u_input.d)))), _wgslsmith_div_u32(1u, ~_wgslsmith_div_u32(u_input.b, u_input.d)) << ((func_4(global1[_wgslsmith_index_u32(min(45549u, 29108u), 3u)]) << (4294967295u % 32u)) % 32u));
    global1 = array<Struct_1, 3>();
    global2 = false;
    let var_1 = select(!select(!func_3(vec2<f32>(-692f, -668f), global1[_wgslsmith_index_u32(25021u, 3u)], var_0.xwy), vec3<bool>(true, true, u_input.e > u_input.a.x), select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), vec3<bool>(false, true, false))), !(!vec3<bool>(all(vec2<bool>(false, false)), true, all(vec3<bool>(false, true, false)))), !(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true)));
    var_0 = vec4<u32>(var_0.x, abs(4294967295u), u_input.b, firstTrailingBit(func_2(Struct_2(abs(u_input.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(689f, -209f, -3272f)))), Struct_3(true, var_0.x), ~firstLeadingBit(vec4<u32>(32904u, 59922u, u_input.d, 48674u))).a));
    return Struct_3(all(var_1.xx), _wgslsmith_mod_u32(20554u, var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 3>();
    var var_0 = func_1();
    var var_1 = select(select(vec2<bool>(true, var_0.a), func_3(vec2<f32>(_wgslsmith_f_op_f32(-324f + 718f), -1000f), Struct_1(_wgslsmith_sub_u32(0u, u_input.d), _wgslsmith_f_op_f32(1000f * -278f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-348f, -1730f), vec2<f32>(-924f, 1567f), vec2<bool>(var_0.a, true))), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b, var_0.b, var_0.b), vec4<u32>(var_0.b, 5575u, var_0.b, u_input.d)), 24u)]), firstTrailingBit(vec3<u32>(var_0.b, 27177u, u_input.b) << (vec3<u32>(u_input.b, var_0.b, 5141u) % vec3<u32>(32u)))).zz, !vec2<bool>(var_0.a, func_1().a)), vec2<bool>(false, all(vec3<bool>(var_0.a, var_0.a, true))), var_0.a);
    let var_2 = func_1();
    var var_3 = all(vec4<bool>(_wgslsmith_f_op_f32(-278f - _wgslsmith_f_op_f32(trunc(-133f))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -743f)), (_wgslsmith_f_op_f32(-2702f * -1417f) >= _wgslsmith_f_op_f32(select(1693f, -2057f, var_0.a))) & var_2.a, true, select(func_1().a, false, !var_2.a)));
    global3 = array<vec4<i32>, 24>();
    var_1 = func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-func_2(Struct_2(var_2.b), vec3<f32>(248f, -1654f, -968f), Struct_3(true, 1u), vec4<u32>(4294967295u, 3510u, var_2.b, var_2.b)).c) + vec2<f32>(_wgslsmith_f_op_f32(741f - -1795f), _wgslsmith_f_op_f32(sign(176f)))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-538f, 1386f) - vec2<f32>(1411f, 319f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(243f, 1109f)))))), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(func_1().b, var_2.b), var_0.b), 3u)], vec3<u32>(~_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(var_0.b, var_2.b)), vec2<u32>(var_0.b, 4294967295u) | vec2<u32>(0u, u_input.b)), u_input.d, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(13743u, var_0.b), 4294967295u, var_2.b), ~(vec3<u32>(var_0.b, 1u, var_0.b) ^ vec3<u32>(90852u, 0u, var_2.b))))).xx;
    var var_4 = select(var_0.a, true, var_2.a) && !(!var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-208f + -1486f), _wgslsmith_f_op_f32(-936f * -2001f), !var_2.a)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2570f), -1381f)))), _wgslsmith_f_op_f32(abs(667f))), select(-2147483647i, ((i32(-1i) * -19569i) ^ _wgslsmith_sub_i32(u_input.a.x, u_input.e)) << (~_wgslsmith_add_u32(1u, 1u) % 32u), !(!var_2.a | any(vec4<bool>(var_1.x, var_2.a, var_1.x, var_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -550f)) - -283f)));
}

