struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: f32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21>;

var<private> global1: array<vec4<bool>, 21> = array<vec4<bool>, 21>(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false));

var<private> global2: vec3<bool> = vec3<bool>(true, false, false);

var<private> global3: Struct_1 = Struct_1(vec3<bool>(false, true, true), vec3<bool>(true, false, true), -502f, vec2<u32>(1u, 1u));

var<private> global4: vec3<bool>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_3) -> vec2<f32> {
    let var_0 = false;
    global4 = !vec3<bool>(true, any(!(!global1[_wgslsmith_index_u32(4294967295u, 21u)])), !(max(arg_0.b.x, u_input.e.x) <= -u_input.c.x));
    global1 = array<vec4<bool>, 21>();
    global2 = global3.a;
    global1 = array<vec4<bool>, 21>();
    return vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.c + global3.c) - _wgslsmith_f_op_f32(arg_0.c.x + arg_0.e))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -551f) * _wgslsmith_f_op_f32(floor(-718f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.c * -1147f), _wgslsmith_div_f32(arg_0.e, arg_0.c.x))))), _wgslsmith_f_op_f32(2346f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d * arg_0.e) - _wgslsmith_f_op_f32(global3.c + 674f)) + _wgslsmith_f_op_f32(round(-543f)))));
}

fn func_2(arg_0: Struct_3) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_3(arg_0)), vec2<f32>(1f, 1f), vec2<bool>(global4.x, !global3.a.x)))));
    let var_1 = Struct_2(Struct_1(global3.a, !(!global3.a), -1000f, vec2<u32>(u_input.a, _wgslsmith_dot_vec2_u32(arg_0.a.xx, vec2<u32>(47698u, 4294967295u))) & global3.d));
    var var_2 = arg_0.c.xy;
    return 1u;
}

fn func_1(arg_0: vec2<u32>, arg_1: i32) -> Struct_1 {
    let var_0 = vec3<u32>(_wgslsmith_clamp_u32(reverseBits(arg_0.x), max(6916u, ~0u), ~0u), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(select(min(vec4<u32>(arg_0.x, global3.d.x, 16062u, 4294967295u), vec4<u32>(u_input.a, global3.d.x, arg_0.x, u_input.a)), ~vec4<u32>(10427u, arg_0.x, 4294967295u, arg_0.x), !global4.x), vec4<u32>(global3.d.x, func_2(Struct_3(vec3<u32>(0u, global3.d.x, u_input.a), vec3<i32>(u_input.b, -43940i, arg_1), vec3<f32>(1023f, global3.c, global3.c), global3.c, global3.c)), global3.d.x, ~global3.d.x)), 51527u), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, ~65510u), ~(~arg_0)), _wgslsmith_clamp_u32(~(~global3.d.x), ~(~35878u), ~1u), _wgslsmith_mod_u32(countOneBits(firstTrailingBit(u_input.d)), _wgslsmith_add_u32(global3.d.x, u_input.d) >> (22045u % 32u))));
    var var_1 = u_input.e;
    return Struct_1(select(global3.a, global3.a, vec3<bool>(global3.b.x, select(true, true, true), global2.x)), select(global3.b, global3.a, true), 179f, abs(reverseBits(vec2<u32>(1u, u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec2<u32>(~_wgslsmith_dot_vec2_u32(~vec2<u32>(global3.d.x, global3.d.x), vec2<u32>(u_input.a, 49244u) ^ global3.d), u_input.d), _wgslsmith_dot_vec2_i32(-reverseBits(u_input.c.xz), select(u_input.c.xz, countOneBits(u_input.c.wz), select(true, true, all(vec3<bool>(global3.b.x, false, global2.x))))));
    global3 = func_1(vec2<u32>(55134u, ~(~var_0.d.x)) & _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 26106u) | vec2<u32>(global3.d.x, global3.d.x), firstTrailingBit(vec2<u32>(global3.d.x, global3.d.x))), vec2<u32>(var_0.d.x, ~4294967295u)), _wgslsmith_mod_i32(firstLeadingBit(reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -2639i), u_input.e))), ~(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, u_input.e.x), u_input.e))));
    global0 = array<bool, 21>();
    global1 = array<vec4<bool>, 21>();
    let var_1 = vec3<i32>(u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e.x, 18573i) | vec2<i32>(abs(40534i), -20570i), vec2<i32>(10883i, u_input.e.x)), select(_wgslsmith_dot_vec2_i32(~vec2<i32>(-1i, u_input.c.x), vec2<i32>(-1i, u_input.b)) ^ -2147483647i, -u_input.b, all(!(!vec3<bool>(global3.b.x, global0[_wgslsmith_index_u32(0u, 21u)], global2.x)))));
    let var_2 = u_input.c.yxy;
    var var_3 = !(_wgslsmith_dot_vec3_i32(var_1, vec3<i32>(-41954i, 1i, 4119i)) >= (-2147483647i | u_input.e.x));
    global4 = vec3<bool>((~(var_2.x & var_2.x) > min(_wgslsmith_mult_i32(-38035i, -5696i), _wgslsmith_sub_i32(0i, -4099i))) | (any(vec2<bool>(global3.a.x, true)) || !global0[_wgslsmith_index_u32(1u, 21u)]), any(select(select(!global3.b, vec3<bool>(var_0.b.x, true, true), true), select(vec3<bool>(true, global4.x, false), vec3<bool>(global3.a.x, global3.b.x, true), global3.d.x == 1u), vec3<bool>(global3.a.x != false, var_0.a.x == global0[_wgslsmith_index_u32(u_input.a, 21u)], false))), global0[_wgslsmith_index_u32(~(firstLeadingBit(~18315u) | ~abs(global3.d.x)), 21u)]);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e);
}

