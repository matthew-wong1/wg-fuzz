struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<f32>,
    d: i32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec4<u32>,
    d: f32,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-799f, 1000f, -956f, -1000f);

var<private> global1: array<Struct_3, 10>;

var<private> global2: vec3<u32>;

var<private> global3: vec4<i32> = vec4<i32>(-28256i, -22942i, -1i, i32(-2147483648));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> i32 {
    var var_0 = Struct_4(min(abs(u_input.a), 1u), all(!vec4<bool>(select(arg_0.a.a, arg_0.a.e.x, arg_0.b.b), !arg_0.a.a, any(vec4<bool>(true, false, arg_0.a.e.x, arg_0.b.e.x)), true)), u_input.b);
    var var_1 = vec3<i32>(42392i, -_wgslsmith_mod_i32(-(global3.x ^ arg_1), -2147483647i), select(((global3.x << (u_input.a % 32u)) | (var_0.c >> (var_0.a % 32u))) ^ _wgslsmith_mod_i32(1i, global3.x), 37608i, all(arg_0.a.e)));
    global3 = _wgslsmith_div_vec4_i32(-(vec4<i32>(-1i) * -(~vec4<i32>(0i, 316i, 8755i, global3.x))), _wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(~arg_1, -30822i, -arg_1, var_1.x)), ~min(_wgslsmith_mult_vec4_i32(vec4<i32>(global3.x, -10401i, u_input.b, -29551i), vec4<i32>(-2147483647i, 1i, arg_1, var_1.x)), vec4<i32>(var_1.x, 1i, global3.x, var_0.c))));
    var var_2 = _wgslsmith_div_u32(~12781u, _wgslsmith_mod_u32(20905u ^ ~u_input.a, 1u));
    let var_3 = !vec4<bool>(any(!arg_0.a.e.xy), false, any(select(!arg_0.b.e, !arg_0.a.e, vec3<bool>(arg_0.b.a, arg_0.b.a, true))), all(arg_0.a.e.xy));
    return -60705i;
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: u32, arg_3: vec3<bool>) -> u32 {
    var var_0 = Struct_2(Struct_1(!(!all(vec4<bool>(arg_3.x, true, true, arg_3.x))), any(arg_3.xx), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, 1000f, arg_0), vec4<f32>(100f, arg_0, 1463f, -806f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, global0.x) - vec4<f32>(2134f, 561f, global0.x, global0.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1312f, -542f, 563f, 1850f) * vec4<f32>(-1051f, 668f, global0.x, arg_0)))), _wgslsmith_div_i32(819i ^ arg_1, -max(2147483647i, 2147483647i)), vec3<bool>(0u >= _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_2, u_input.a, 1u), vec4<u32>(97409u, global2.x, 73832u, u_input.a)), all(vec4<bool>(true, true, arg_3.x, arg_3.x)), func_3(Struct_2(Struct_1(arg_3.x, false, vec4<f32>(-347f, -2633f, global0.x, arg_0), 1i, vec3<bool>(false, false, arg_3.x)), Struct_1(arg_3.x, arg_3.x, vec4<f32>(-1444f, arg_0, global0.x, global0.x), 0i, arg_3)), -58520i) >= -global3.x)), Struct_1(true, all(vec2<bool>(arg_3.x, any(vec2<bool>(false, arg_3.x)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -807f), -514f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-563f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(abs(-109f)))), ~global3.x, select(vec3<bool>(true == arg_3.x, false && arg_3.x, !arg_3.x), arg_3, select(vec3<bool>(false, false, arg_3.x), arg_3, true))));
    var var_1 = var_0.a.e.xz;
    return _wgslsmith_clamp_u32(min(0u, 0u), u_input.a, ~(~1u >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(25236u, 0u, 0u, 52049u), ~vec4<u32>(61306u, global2.x, global2.x, global2.x)) % 32u)));
}

fn func_1() -> i32 {
    var var_0 = Struct_1(true, any(vec2<bool>(all(vec4<bool>(true, true, true, true)), true)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.x, global0.x, global0.x, 1000f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, 1060f, global0.x) + vec4<f32>(global0.x, global0.x, global0.x, -1523f)))))), _wgslsmith_sub_i32(-49730i, _wgslsmith_mult_i32(abs(global3.x), u_input.b)) >> (_wgslsmith_sub_u32(func_2(_wgslsmith_f_op_f32(exp2(global0.x)), reverseBits(u_input.b), global2.x, select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true))), 4294967295u) % 32u), !select(vec3<bool>(true, u_input.b > 1i, global0.x >= global0.x), vec3<bool>(true, true, true), true));
    global3 = vec4<i32>(global3.x, _wgslsmith_mod_i32(global3.x, global3.x) >> (reverseBits(0u) % 32u), ~(2147483647i << ((1u & (1u << (u_input.a % 32u))) % 32u)), _wgslsmith_sub_i32(global3.x, var_0.d));
    return _wgslsmith_dot_vec2_i32(global3.xz, vec2<i32>(2147483647i, -24430i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 2147483647i;
    let var_1 = 0i;
    var_0 = _wgslsmith_mod_i32(min(_wgslsmith_sub_i32(_wgslsmith_sub_i32(global3.x, -8197i), ~global3.x >> (u_input.a % 32u)), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(global3.x, var_1), -24575i, 2147483647i), _wgslsmith_sub_i32(-13551i, ~26907i))), ~select(select(1i, ~23490i, true), -_wgslsmith_dot_vec2_i32(vec2<i32>(var_1, var_1), vec2<i32>(u_input.b, var_1)), any(vec2<bool>(true, true))));
    global1 = array<Struct_3, 10>();
    var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(sign(global0.x)), -1415f, _wgslsmith_f_op_f32(floor(-1562f))));
}

