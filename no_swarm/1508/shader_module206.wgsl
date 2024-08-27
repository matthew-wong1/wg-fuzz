struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
    c: Struct_2,
    d: vec4<bool>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 18> = array<vec2<f32>, 18>(vec2<f32>(1584f, -435f), vec2<f32>(-441f, -716f), vec2<f32>(1000f, 1301f), vec2<f32>(-1034f, 596f), vec2<f32>(488f, 378f), vec2<f32>(-437f, 749f), vec2<f32>(1671f, -1037f), vec2<f32>(-739f, 476f), vec2<f32>(1000f, 1805f), vec2<f32>(-103f, 419f), vec2<f32>(312f, -1084f), vec2<f32>(-694f, -1300f), vec2<f32>(1460f, 365f), vec2<f32>(535f, 695f), vec2<f32>(1122f, 658f), vec2<f32>(608f, 456f), vec2<f32>(169f, -1702f), vec2<f32>(1359f, -1986f));

var<private> global1: Struct_2;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec2<f32> {
    var var_0 = _wgslsmith_mod_vec2_i32(u_input.b.wx, u_input.b.xx);
    var var_1 = vec3<u32>(min(54585u, u_input.d) & ~(0u << (global1.c % 32u)), 50555u, 4294967295u);
    var_0 = global1.d.a;
    var var_2 = Struct_3(global1.a.b.x, select(-(~u_input.b.wzz), select(vec3<i32>(global1.a.a.x, var_0.x, _wgslsmith_div_i32(4943i, -64161i)), max(vec3<i32>(var_0.x, -1i, var_0.x) ^ vec3<i32>(-1929i, var_0.x, -2147483647i), min(vec3<i32>(global1.d.a.x, global1.a.a.x, var_0.x), u_input.b.xzz)), global1.d.d), !(!vec3<bool>(global1.d.d, false, global1.a.d))), Struct_2(global1.d, ~u_input.d, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(84778u, var_1.x, global1.c, 86328u), vec4<u32>(76821u, global1.b, 52966u, 6828u))), global1.a), !(!(!select(vec4<bool>(false, global1.d.d, true, global1.a.d), vec4<bool>(global1.d.d, false, global1.a.d, true), vec4<bool>(true, global1.a.d, global1.d.d, true)))), select(!(!(!vec4<bool>(false, true, global1.a.d, global1.d.d))), select(select(select(vec4<bool>(false, true, global1.d.d, true), vec4<bool>(global1.a.d, global1.a.d, global1.d.d, true), vec4<bool>(false, global1.a.d, false, true)), !vec4<bool>(true, true, global1.d.d, global1.a.d), global1.a.d), !select(vec4<bool>(global1.d.d, false, global1.d.d, false), vec4<bool>(global1.a.d, false, global1.d.d, false), vec4<bool>(true, global1.d.d, true, true)), vec4<bool>(global1.a.d, true, global1.a.d, global1.d.d)), !(!(!vec4<bool>(true, global1.d.d, global1.a.d, global1.a.d)))));
    var var_3 = all(var_2.d.wzy);
    return vec2<f32>(_wgslsmith_f_op_f32(trunc(var_2.a)), var_2.a);
}

fn func_2(arg_0: i32, arg_1: i32) -> Struct_2 {
    let var_0 = i32(-1i) * -(~(~2147483647i));
    var var_1 = Struct_2(Struct_1(global1.d.a, vec2<f32>(_wgslsmith_f_op_f32(-global1.d.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-377f, 101f)) + 224f)), global1.d.b.x, all(select(vec4<bool>(global1.d.d, true, global1.a.d, global1.d.d), vec4<bool>(global1.d.d, true, global1.d.d, global1.a.d), vec4<bool>(true, true, true, true)))), 0u << ((select(u_input.d, _wgslsmith_mod_u32(global1.b, u_input.d), global1.d.d) << (global1.b % 32u)) % 32u), 54226u, Struct_1(abs(_wgslsmith_add_vec2_i32(vec2<i32>(var_0, 1i) | global1.d.a, _wgslsmith_mod_vec2_i32(global1.a.a, u_input.b.wx))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(global0[_wgslsmith_index_u32(global1.c, 18u)], vec2<f32>(-588f, global1.d.c)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(func_3())))), _wgslsmith_f_op_f32(-global1.d.c), any(vec3<bool>(true, any(vec3<bool>(global1.a.d, global1.d.d, true)), false))));
    let var_2 = 1f;
    let var_3 = Struct_3(372f, ~vec3<i32>(_wgslsmith_sub_i32(1i, countOneBits(0i)), -(~0i), 0i), Struct_2(Struct_1(var_1.a.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.a.b + global0[_wgslsmith_index_u32(u_input.a, 18u)])), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.d.b.x), _wgslsmith_div_f32(-601f, 125f))), any(vec2<bool>(true, true))), 17215u, u_input.d, var_1.a), !select(vec4<bool>(any(vec2<bool>(var_1.d.d, var_1.a.d)), !global1.d.d, global1.d.d && false, !var_1.a.d), vec4<bool>(var_1.d.d, !var_1.a.d, true, true), var_1.a.d), select(vec4<bool>(true, true, true, true), !(!(!vec4<bool>(var_1.a.d, var_1.a.d, true, var_1.d.d))), true));
    var_1 = var_3.c;
    return Struct_2(var_3.c.a, _wgslsmith_dot_vec2_u32(countOneBits(abs(~vec2<u32>(0u, 4294967295u))), ~(~vec2<u32>(2489u, global1.c) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d, 27104u), vec2<u32>(u_input.a, global1.c)))), abs(~var_1.c), Struct_1(abs(vec2<i32>(-global1.a.a.x, select(arg_1, 74896i, var_1.a.d))), global0[_wgslsmith_index_u32(var_3.c.b & 0u, 18u)], -1392f, any(!var_3.e.xzy)));
}

fn func_1(arg_0: u32, arg_1: vec4<i32>, arg_2: f32) -> Struct_3 {
    var var_0 = !(!vec2<bool>(global1.d.d, true));
    var var_1 = min(51759u, ~1u);
    global0 = array<vec2<f32>, 18>();
    let var_2 = _wgslsmith_div_u32(4294967295u, ~min(1u, global1.b));
    var var_3 = func_2(-(~_wgslsmith_add_i32(_wgslsmith_div_i32(-2147483647i, global1.a.a.x), ~21612i)), 2147483647i);
    return Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-107f + var_3.d.c), _wgslsmith_f_op_f32(-arg_2)))), var_3.a.c, !var_3.d.d)), arg_1.yww, Struct_2(var_3.a, global1.b, 1u, var_3.d), select(select(vec4<bool>(true, -166f >= global1.d.b.x, -59324i > var_3.a.a.x, all(vec2<bool>(true, true))), select(!vec4<bool>(var_0.x, false, global1.a.d, var_3.a.d), !vec4<bool>(true, false, false, global1.d.d), !var_0.x), ~(-1642i) <= (-1i << (u_input.d % 32u))), vec4<bool>(u_input.b.x == reverseBits(2147483647i), true, !(!global1.a.d), arg_0 >= 1u), !select(select(vec4<bool>(true, true, false, true), vec4<bool>(var_3.a.d, var_3.d.d, var_3.d.d, false), vec4<bool>(true, var_0.x, global1.a.d, true)), vec4<bool>(false, var_3.d.d, global1.d.d, var_3.a.d), all(vec2<bool>(global1.a.d, false)))), !(!select(!vec4<bool>(true, var_3.d.d, global1.d.d, true), select(vec4<bool>(var_0.x, var_0.x, true, true), vec4<bool>(global1.d.d, var_0.x, global1.d.d, var_0.x), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 18>();
    var var_0 = vec3<bool>(firstTrailingBit(~global1.b) <= ~reverseBits(1u), global1.d.d, true);
    global0 = array<vec2<f32>, 18>();
    global0 = array<vec2<f32>, 18>();
    let var_1 = func_1(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.a | 22671u, global1.c), ~(global1.b & 61535u), u_input.a) << (4294967295u % 32u), u_input.b, global1.d.c);
    var_0 = var_1.e.ywz;
    let x = u_input.a;
    s_output = StorageBuffer(global1.a.b.x, vec3<i32>(-22034i, -(~_wgslsmith_clamp_i32(2147483647i, u_input.b.x, -3315i)), i32(-1i) * -1i), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(170f)) - _wgslsmith_f_op_f32(f32(-1f) * -956f)), func_1(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, 4294967295u, 18322u), vec4<u32>(26195u, global1.b, 6280u, 48152u)), -u_input.b, var_1.c.d.b.x).a))));
}

