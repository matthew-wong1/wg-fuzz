struct Struct_1 {
    a: bool,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<u32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: i32) -> vec4<f32> {
    var var_0 = -987f;
    let var_1 = Struct_2(_wgslsmith_mult_u32(6440u, ~u_input.e), global0.b, global0.c, false);
    var_0 = -219f;
    let var_2 = -89497i;
    var var_3 = ~(~(~(_wgslsmith_mult_u32(u_input.a, 0u) << (_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.c.x, 62411u, 0u, 4294967295u), vec4<u32>(global0.b.d.x, 1u, 11897u, 7896u)) % 32u))));
    return _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-911f, -213f, -686f, 353f) * vec4<f32>(-388f, -640f, 904f, -1000f)))))));
}

fn func_1(arg_0: f32, arg_1: vec4<i32>, arg_2: vec2<bool>, arg_3: vec2<u32>) -> vec4<f32> {
    let var_0 = arg_0;
    let var_1 = Struct_1(any(arg_2), global0.b.d.x, ~((global0.a << (~56037u % 32u)) << (0u % 32u)), ~firstLeadingBit((vec2<u32>(global0.b.b, u_input.c) | vec2<u32>(23113u, 18822u)) ^ vec2<u32>(global0.a, u_input.c)), global0.b.e);
    let var_2 = var_1;
    var var_3 = -firstLeadingBit(1864i);
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-104f, 820f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0)) + _wgslsmith_f_op_f32(-arg_0)))));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(-1i)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0, var_0, 1287f, 983f), vec4<f32>(1535f, var_4.x, var_0, -670f)) - vec4<f32>(var_4.x, -1896f, arg_0, -760f))))));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: u32) -> bool {
    global0 = Struct_2(arg_2, global0.b, ~global0.c, !(!any(vec3<bool>(false, global0.d, false))));
    var var_0 = Struct_1(_wgslsmith_clamp_u32(~(~1u), abs(_wgslsmith_sub_u32(global0.b.b, u_input.e)), 0u | global0.b.b) > max(_wgslsmith_sub_u32(~arg_1.c, _wgslsmith_mod_u32(u_input.c, 4294967295u)), 67788u), arg_1.b, 96563u, ~(vec2<u32>(4294967295u, 6591u) << (select(vec2<u32>(0u, u_input.a), global0.c, vec2<bool>(global0.d, false)) % vec2<u32>(32u))) >> (~reverseBits(~vec2<u32>(arg_2, arg_1.c)) % vec2<u32>(32u)), abs(-global0.b.e));
    var_0 = global0.b;
    var var_1 = Struct_2(4294967295u, arg_1, ~arg_1.d, global0.d);
    var_1 = Struct_2(16441u, Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-2119f)))) > _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(floor(1000f)))), ~abs(~var_1.c.x), 4294967295u, ~firstTrailingBit(_wgslsmith_sub_vec2_u32(global0.c, var_1.b.d)), firstLeadingBit(-(vec4<i32>(-1553i, -433i, u_input.d.x, -1i) << (vec4<u32>(var_0.b, 72755u, global0.a, var_1.c.x) % vec4<u32>(32u))))), ~vec2<u32>(106976u, arg_1.c), !select(!arg_1.a && select(true, var_1.d, var_0.a), !arg_1.a, !(!var_0.a)));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(-817f, vec4<i32>(global0.b.e.x, u_input.d.x, -24127i, 1i), vec2<bool>(global0.b.a, true), global0.c))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1805f, -438f, 1000f, 102f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-559f, -1725f, -127f, 1927f))), select(vec4<bool>(false, false, global0.d, global0.d), vec4<bool>(true, true, true, true), !vec4<bool>(false, global0.d, false, false)))), vec4<f32>(604f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-652f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(605f)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)));
    let var_1 = Struct_2(_wgslsmith_dot_vec3_u32(~(~abs(vec3<u32>(global0.a, 0u, 5593u))), _wgslsmith_mult_vec3_u32(abs(~vec3<u32>(global0.c.x, 4294967295u, global0.a)), vec3<u32>(_wgslsmith_mult_u32(global0.a, 34339u), global0.c.x, min(1u, 0u)))), Struct_1(all(vec3<bool>(func_3(vec4<i32>(global0.b.e.x, 16542i, -9335i, global0.b.e.x), global0.b, 2751u), true, true)), ~1u, 3123u, _wgslsmith_mod_vec2_u32(global0.b.d, select(vec2<u32>(1u, global0.c.x), vec2<u32>(30756u, 4294967295u), !vec2<bool>(global0.b.a, global0.d))), global0.b.e), firstTrailingBit((select(vec2<u32>(1u, 26364u), global0.c, false) >> (global0.c % vec2<u32>(32u))) | global0.b.d), global0.d);
    let var_2 = global0.b;
    let var_3 = global0.b;
    var var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec2<i32>(_wgslsmith_dot_vec2_i32(~u_input.d.zy, var_2.e.zw), _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(var_3.e.x, u_input.d.x, var_3.e.x, var_3.e.x)), vec4<i32>(2266i, 17808i, u_input.b, u_input.b)))), _wgslsmith_dot_vec3_i32(-vec3<i32>(var_3.e.x, -1i, _wgslsmith_dot_vec4_i32(global0.b.e, vec4<i32>(u_input.b, var_2.e.x, 8843i, var_2.e.x))), _wgslsmith_add_vec3_i32(abs(vec3<i32>(77622i, var_1.b.e.x, 2147483647i)), vec3<i32>(u_input.b, -44210i, -15570i & var_3.e.x))));
}

