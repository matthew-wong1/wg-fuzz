struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<f32>,
    d: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<f32>(-405f, -1545f, -947f, 1477f), 410f, Struct_1(true, 11149u, vec4<f32>(-844f, -1608f, 362f, -1169f), false), 8227u);

var<private> global1: bool;

var<private> global2: array<vec4<u32>, 10> = array<vec4<u32>, 10>(vec4<u32>(63711u, 1u, 4294967295u, 5326u), vec4<u32>(0u, 0u, 22490u, 34621u), vec4<u32>(81077u, 1u, 52586u, 0u), vec4<u32>(1u, 4294967295u, 1u, 4294967295u), vec4<u32>(70306u, 1u, 20671u, 4294967295u), vec4<u32>(8844u, 12727u, 56703u, 1u), vec4<u32>(4294967295u, 4294967295u, 81754u, 0u), vec4<u32>(1u, 58326u, 0u, 11888u), vec4<u32>(27209u, 35844u, 1u, 1u), vec4<u32>(4294967295u, 4294967295u, 36078u, 31158u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.a - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(699f, 819f, global0.a.x, arg_0.x), vec4<f32>(arg_0.x, -990f, -1000f, 319f), true))))));
    let var_1 = ~u_input.c.x;
    var var_2 = global0.c.b;
    var var_3 = global0.d;
    var var_4 = all(vec2<bool>(!(global0.c.c.x == _wgslsmith_f_op_f32(1116f * 1878f)), !select(false, global0.c.d, all(vec2<bool>(global0.c.d, false)))));
    return -621f;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: vec4<u32>, arg_3: vec3<u32>) -> vec3<bool> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(global0.a)))), 1300f, global0.c, u_input.b);
    global0 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(var_0.c.c.xxz)) + _wgslsmith_f_op_f32(abs(757f))), _wgslsmith_f_op_f32(693f * _wgslsmith_f_op_f32(select(var_0.c.c.x, global0.a.x, false))), var_0.b, 1640f) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(869f, var_0.a.x)), global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<f32>(-1785f, global0.c.c.x, -281f))) + var_0.a.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.c.c.x))))), _wgslsmith_f_op_f32(-171f - _wgslsmith_f_op_f32(floor(-136f))), Struct_1(true, ~_wgslsmith_mult_u32(20473u, ~u_input.d.x), vec4<f32>(var_0.c.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.b)) + _wgslsmith_f_op_f32(global0.c.c.x * 556f)), var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b, var_0.b))), any(!select(vec3<bool>(true, var_0.c.d, false), vec3<bool>(false, var_0.c.a, true), vec3<bool>(global0.c.a, false, true)))), 15313u);
    let var_1 = vec3<i32>(~abs(u_input.c.x), _wgslsmith_sub_i32(-u_input.a.x, arg_1.x), u_input.c.x);
    let var_2 = ~_wgslsmith_sub_u32(arg_3.x ^ ~(~global0.d), ~(~43241u));
    let var_3 = u_input.e;
    return select(vec3<bool>(all(select(select(vec2<bool>(var_0.c.a, var_0.c.d), vec2<bool>(global0.c.a, global0.c.a), var_0.c.a), vec2<bool>(global0.c.d, global0.c.d), !vec2<bool>(var_0.c.a, true))), all(vec2<bool>(false, any(vec3<bool>(false, global0.c.d, false)))), all(vec3<bool>(true, var_0.c.a && false, false))), select(!vec3<bool>(any(vec3<bool>(false, false, global0.c.d)), global0.c.d, false & var_0.c.d), vec3<bool>(any(!vec3<bool>(false, global0.c.a, var_0.c.d)), !global0.c.a, global0.d != 0u), select(!select(vec3<bool>(var_0.c.a, global0.c.a, var_0.c.d), vec3<bool>(true, true, global0.c.d), vec3<bool>(true, false, false)), !(!vec3<bool>(true, false, global0.c.d)), abs(var_1.x) != 0i)), select(select(vec3<bool>(true, global0.c.a, all(vec4<bool>(var_0.c.d, false, var_0.c.d, global0.c.d))), vec3<bool>(true, false, global0.c.a), select(!vec3<bool>(global0.c.d, false, true), vec3<bool>(var_0.c.a, false, true), all(vec2<bool>(global0.c.a, false)))), !(!vec3<bool>(false, false, var_0.c.d)), select(vec3<bool>(true, true, true), select(select(vec3<bool>(var_0.c.d, false, false), vec3<bool>(global0.c.d, false, global0.c.a), true), select(vec3<bool>(false, true, var_0.c.d), vec3<bool>(var_0.c.a, var_0.c.a, global0.c.a), false), true), !all(vec4<bool>(true, false, global0.c.d, var_0.c.d)))));
}

fn func_1() -> Struct_1 {
    var var_0 = global0.a.zzz;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b, 1752f, _wgslsmith_f_op_f32(min(1767f, 1000f))) * vec3<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -621f), _wgslsmith_f_op_f32(sign(var_0.x)))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-global0.a.x), var_0.x)));
    return Struct_1(global0.c.d, 4294967295u & _wgslsmith_add_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(2344u, 1u), global0.c.b), _wgslsmith_clamp_u32(reverseBits(global0.c.b), 1u, ~u_input.e.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global0.c.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(833f, -224f, var_0.x, 426f)), vec4<bool>(global0.c.d, global0.c.a, true, false)))) - global0.a), !any(!func_2(u_input.e, vec4<i32>(u_input.c.x, u_input.c.x, 22628i, u_input.c.x), vec4<u32>(19778u, global0.c.b, 29853u, global0.c.b), vec3<u32>(global0.c.b, u_input.d.x, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global1 = true != (u_input.c.x == abs(min(47281i, u_input.a.x)));
    global1 = func_2(vec2<u32>(global0.c.b, 30692u), abs(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, u_input.c.x, max(10741i, u_input.c.x), _wgslsmith_clamp_i32(1786i, 0i, u_input.c.x)), vec4<i32>(2147483647i, u_input.c.x, -31365i, 0i) >> (~global2[_wgslsmith_index_u32(var_0.b, 10u)] % vec4<u32>(32u)))), ~vec4<u32>(_wgslsmith_mod_u32(global0.c.b << (u_input.d.x % 32u), 21064u), ~u_input.d.x, _wgslsmith_add_u32(~u_input.d.x, 52567u), var_0.b), vec3<u32>(reverseBits(func_1().b) >> (select(global0.c.b, _wgslsmith_clamp_u32(1u, 24807u, global0.d), any(vec2<bool>(var_0.d, global0.c.d))) % 32u), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(max(vec3<u32>(0u, u_input.b, var_0.b), vec3<u32>(var_0.b, var_0.b, global0.c.b)), select(vec3<u32>(var_0.b, 1u, global0.c.b), vec3<u32>(var_0.b, 16681u, 0u), global0.c.a)), vec3<u32>(var_0.b & 4294967295u, 4294967295u, _wgslsmith_mod_u32(var_0.b, u_input.d.x))), 28771u)).x;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.c.xxw) - var_0.c.ywx);
    global0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-493f + _wgslsmith_f_op_f32(round(346f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1777f * -309f)) * _wgslsmith_f_op_f32(var_0.c.x - _wgslsmith_f_op_f32(var_0.c.x + -654f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -726f)), _wgslsmith_div_f32(_wgslsmith_div_f32(-598f, -170f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(696f))))), global0.b, func_1(), 1u);
    var_1 = vec3<f32>(-589f, _wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(-881f * 481f))), 1583f);
    var var_2 = var_0.c.x;
    let var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(var_0.c - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1320f, 1370f, 123f, global0.b) * var_0.c)) - vec4<f32>(-702f, -530f, _wgslsmith_f_op_f32(global0.a.x + -477f), 767f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-1115f)))))), func_1(), ~(3004u << (~(~u_input.e.x) % 32u)));
    let var_4 = var_0.a & (var_0.d && true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.c) + _wgslsmith_div_vec4_f32(global0.a, vec4<f32>(341f, -577f, 251f, var_1.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.c)))), u_input.a, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, ~0u), 10u)]);
}

