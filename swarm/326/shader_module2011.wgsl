struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: u32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12>;

var<private> global1: array<i32, 21> = array<i32, 21>(i32(-2147483648), 0i, -75937i, 2147483647i, 0i, 92609i, 36774i, -48810i, 1i, 84273i, -3926i, -8315i, 4880i, 32669i, 1i, -30246i, 27215i, 1i, 0i, 32881i, 2147483647i);

var<private> global2: bool;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_2) -> vec3<f32> {
    global1 = array<i32, 21>();
    let var_0 = vec4<u32>(arg_2.a.e, 58772u, ~82283u, arg_1.a.e) | vec4<u32>(~(4294967295u | arg_1.a.c), 34053u, ~arg_2.a.e, arg_1.a.e);
    global1 = array<i32, 21>();
    let var_1 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_1.a.c, 12u)] - arg_2.a.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -812f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(1973f))))), vec2<i32>(-27325i, _wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(25239u, 21u)], -22506i, -1i), vec3<i32>(u_input.a, -35547i, 48965i)) << (arg_1.a.e % 32u)), _wgslsmith_clamp_u32(_wgslsmith_div_u32(arg_1.a.c, 0u), _wgslsmith_clamp_u32(var_0.x, 64022u, var_0.x), ~arg_2.a.c) >> (abs(arg_2.a.e) % 32u), select(!arg_1.a.d, true, any(arg_2.b.wzw)) | arg_0.x, arg_1.a.e >> (arg_1.a.c % 32u)), arg_1.b);
    global0 = array<f32, 12>();
    return vec3<f32>(-1565f, arg_1.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.a.x - 664f)));
}

fn func_2(arg_0: bool) -> Struct_1 {
    global1 = array<i32, 21>();
    global0 = array<f32, 12>();
    global2 = arg_0;
    global2 = all(select(select(vec3<bool>(any(vec2<bool>(true, arg_0)), true, any(vec2<bool>(arg_0, arg_0))), select(!vec3<bool>(false, false, arg_0), !vec3<bool>(false, arg_0, true), true), !vec3<bool>(arg_0, false, true)), select(vec3<bool>(true, all(vec2<bool>(arg_0, arg_0)), all(vec3<bool>(arg_0, false, arg_0))), vec3<bool>(true, arg_0, arg_0), select(!vec3<bool>(false, arg_0, arg_0), select(vec3<bool>(false, true, arg_0), vec3<bool>(true, false, false), vec3<bool>(true, true, arg_0)), arg_0)), any(vec2<bool>(arg_0, !arg_0))));
    return Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-753f - -1377f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(24952u, 12u)]), global0[_wgslsmith_index_u32(0u, 12u)]), vec3<f32>(global0[_wgslsmith_index_u32(30494u, 12u)], _wgslsmith_f_op_f32(f32(-1f) * -2068f), _wgslsmith_div_f32(-183f, global0[_wgslsmith_index_u32(1u, 12u)])), select(!vec3<bool>(arg_0, true, arg_0), vec3<bool>(arg_0, true, arg_0), vec3<bool>(arg_0, false, false)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(func_3(select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(true, true, arg_0), false), Struct_2(Struct_1(vec3<f32>(569f, 2469f, -876f), vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 21u)], -23121i), 40150u, arg_0, 31105u), vec4<bool>(true, true, arg_0, true)), Struct_2(Struct_1(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 12u)], -1141f, global0[_wgslsmith_index_u32(124168u, 12u)]), vec2<i32>(u_input.a, 39105i), 17980u, arg_0, 73039u), vec4<bool>(false, true, arg_0, arg_0))))))), vec2<i32>(u_input.a, ~firstLeadingBit(12522i)), _wgslsmith_clamp_u32(1u, abs(_wgslsmith_add_u32(1u, ~159635u)), countOneBits(~(~4294967295u))), true, 1u);
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<bool>) -> u32 {
    var var_0 = arg_0.x;
    global0 = array<f32, 12>();
    var_0 = arg_0.x;
    global0 = array<f32, 12>();
    let var_1 = func_2(true);
    return _wgslsmith_mult_u32(var_1.e, ~(~0u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~1u);
    var var_1 = 13533i;
    var_0 = countOneBits(_wgslsmith_mult_u32(58572u, 1u));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0[_wgslsmith_index_u32(max(1u, 3071u), 12u)], _wgslsmith_f_op_f32(f32(-1f) * -153f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(40635u, 12u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(0u, 12u)], -395f, global0[_wgslsmith_index_u32(47633u, 12u)]))))), -(abs(vec2<i32>(0i, u_input.a)) & ~reverseBits(vec2<i32>(-3319i, 2147483647i))), firstLeadingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(61750u, 0u, 31614u, 4294967295u), select(max(vec4<u32>(20325u, 4294967295u, 0u, 6476u), vec4<u32>(0u, 0u, 4294967295u, 30775u)), _wgslsmith_add_vec4_u32(vec4<u32>(19859u, 1u, 0u, 0u), vec4<u32>(10064u, 40133u, 15586u, 0u)), vec4<bool>(false, true, true, false)))), true, 0u);
    var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_2.a, _wgslsmith_f_op_vec3_f32(-var_2.a)) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.x, global0[_wgslsmith_index_u32(4294967295u, 12u)], var_2.a.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1981f, global0[_wgslsmith_index_u32(var_2.c, 12u)], global0[_wgslsmith_index_u32(var_2.e, 12u)])))))), select(-(~select(var_2.b, var_2.b, vec2<bool>(var_2.d, false))), _wgslsmith_add_vec2_i32(var_2.b, reverseBits(vec2<i32>(-2147483647i, global1[_wgslsmith_index_u32(var_2.c, 21u)]))), vec2<bool>(true, any(vec4<bool>(false, var_2.d, var_2.d, var_2.d)))), func_1(vec2<i32>(global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(var_2.c, var_2.e), 21u)], -global1[_wgslsmith_index_u32(_wgslsmith_div_u32(var_2.e, var_2.e), 21u)]), !select(vec2<bool>(var_2.d, var_2.d), vec2<bool>(var_2.d, true), !vec2<bool>(var_2.d, true))), true, _wgslsmith_mod_u32(~var_2.c | ~4294967295u, 4294967295u) << (9592u % 32u));
    var var_3 = -1061f;
    let x = u_input.a;
    s_output = StorageBuffer(max(select(_wgslsmith_div_vec3_i32(abs(vec3<i32>(3415i, -22326i, 0i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-20227i, global1[_wgslsmith_index_u32(var_2.e, 21u)], u_input.a), vec3<i32>(-1i, u_input.a, -5280i), vec3<i32>(-1i, u_input.a, -2147483647i))), abs(firstTrailingBit(vec3<i32>(2147483647i, -2147483647i, -62752i))), select(vec3<bool>(true, false, var_2.d), vec3<bool>(true, false, false), !vec3<bool>(var_2.d, var_2.d, true))), abs(-vec3<i32>(var_2.b.x, -21328i, 0i) & (vec3<i32>(0i, global1[_wgslsmith_index_u32(var_2.e, 21u)], u_input.a) >> (vec3<u32>(4421u, 114392u, var_2.c) % vec3<u32>(32u))))), firstTrailingBit(vec3<u32>(_wgslsmith_add_u32(func_2(false).c, reverseBits(var_2.c)), reverseBits(var_2.e), var_2.e)), -(~(-vec4<i32>(u_input.a, u_input.a, -9196i, global1[_wgslsmith_index_u32(0u, 21u)]))), vec3<i32>(var_2.b.x, 1i, -2081i), _wgslsmith_clamp_i32(-select(var_2.b.x, -13256i, var_2.d), ~(-u_input.a) & _wgslsmith_div_i32(u_input.a, ~global1[_wgslsmith_index_u32(0u, 21u)]), -1i));
}

