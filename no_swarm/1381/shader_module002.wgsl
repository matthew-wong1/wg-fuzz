struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
    d: bool,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_3,
    c: Struct_1,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 14>;

var<private> global1: array<vec4<u32>, 17>;

var<private> global2: vec3<f32>;

var<private> global3: array<u32, 7>;

var<private> global4: array<u32, 3>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_3(!(all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), false)) || (-1035f > _wgslsmith_f_op_f32(global2.x * global2.x))));
    var var_1 = 556f;
    let var_2 = u_input.c;
    var var_3 = Struct_3(!(u_input.d.x == _wgslsmith_clamp_u32(~global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(46863u, 7u)], 3u)], min(global3[_wgslsmith_index_u32(0u, 7u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.d.x, 3u)], 7u)], 3u)], 3u)]), ~17861u)));
    var var_4 = global4[_wgslsmith_index_u32(~u_input.d.x, 3u)];
    return Struct_2(u_input.a);
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: Struct_4, arg_3: u32) -> u32 {
    var var_0 = func_2();
    global2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2.c.b))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c.b) - arg_2.c.e.x))), arg_2.c.b, 1117f);
    var var_1 = true;
    let var_2 = arg_2.b;
    var var_3 = vec3<bool>(any(!select(vec3<bool>(false, false, true), vec3<bool>(arg_2.b.a, true, var_2.a), select(vec3<bool>(var_2.a, true, false), vec3<bool>(true, var_2.a, arg_2.c.d), false))), arg_2.c.c != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), !(u_input.c < (~u_input.c >> (_wgslsmith_add_u32(23026u, arg_2.e.a.x) % 32u))));
    return func_2().a.x;
}

fn func_3() -> vec4<bool> {
    global0 = array<vec3<u32>, 14>();
    let var_0 = min(u_input.c, -(u_input.c & firstTrailingBit(-u_input.c)));
    global3 = array<u32, 7>();
    global1 = array<vec4<u32>, 17>();
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.yx + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, 452f))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(761f, 1372f)))))))) + global2.yx);
    return vec4<bool>(false, !all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), false)), 28202u >= _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(global3[_wgslsmith_index_u32(u_input.a.x, 7u)], global3[_wgslsmith_index_u32(58856u, 7u)], u_input.a.x)), global0[_wgslsmith_index_u32(29042u, 14u)] ^ vec3<u32>(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 3u)], 7u)], 14948u, 0u)), global3[_wgslsmith_index_u32(func_1(vec2<i32>(var_0, -21114i), Struct_3(true), Struct_4(vec4<u32>(0u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.d.x, 3u)], 3u)], u_input.b.x, 28736u), Struct_3(false), Struct_1(true, 775f, 400f, false, vec3<f32>(-877f, global2.x, global2.x)), Struct_2(global1[_wgslsmith_index_u32(u_input.d.x, 17u)]), Struct_2(global1[_wgslsmith_index_u32(0u, 17u)])), u_input.a.x) >> (~u_input.a.x % 32u), 7u)]), any(vec4<bool>(true, _wgslsmith_div_u32(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 7u)], 7u)]) != (1u >> (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 7u)], 7u)] % 32u)), true, all(vec3<bool>(true, true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d.x, _wgslsmith_div_u32(117391u, func_1(vec2<i32>(-4654i, u_input.c), Struct_3(true), Struct_4(vec4<u32>(1u, 65093u, global3[_wgslsmith_index_u32(1u, 7u)], global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 3u)], 7u)]), Struct_3(false), Struct_1(false, global2.x, 1525f, true, vec3<f32>(210f, global2.x, -2008f)), Struct_2(u_input.a), Struct_2(vec4<u32>(32338u, 576u, 5519u, u_input.d.x))), global3[_wgslsmith_index_u32(24944u, 7u)])), 41231u, 0u), abs(~u_input.a ^ u_input.a)), Struct_3(false), Struct_1(all(!func_3()), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.x), -1226f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1f))), true, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global2.x, global2.x, 2428f), vec3<f32>(global2.x, 386f, global2.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1550f, global2.x, -879f) + vec3<f32>(-1084f, -517f, global2.x)))))), Struct_2(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, ~23192u, ~global4[_wgslsmith_index_u32(37811u, 3u)], ~2571u), ~u_input.a)), Struct_2(~_wgslsmith_mod_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(0u, 3u)], 1u, global4[_wgslsmith_index_u32(22641u, 3u)], u_input.d.x), global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 7u)] << (u_input.b.x % 32u), 17u)])));
    let var_1 = max(~vec4<i32>(_wgslsmith_sub_i32(-2147483647i, 1i), ~25960i, -u_input.c, abs(u_input.c)) << (var_0.e.a % vec4<u32>(32u)), -(~firstLeadingBit(vec4<i32>(u_input.c, u_input.c, -45337i, u_input.c)) ^ select(-vec4<i32>(-2147483647i, u_input.c, u_input.c, u_input.c), vec4<i32>(u_input.c, u_input.c, u_input.c, -2365i), !var_0.b.a)));
    global0 = array<vec3<u32>, 14>();
    var var_2 = var_0.b;
    global0 = array<vec3<u32>, 14>();
    var var_3 = ~_wgslsmith_add_u32(12608u, abs(_wgslsmith_mod_u32(func_2().a.x, 4294967295u)));
    global3 = array<u32, 7>();
    let var_4 = Struct_1(var_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(469f, global2.x)))))), _wgslsmith_f_op_f32(step(203f, _wgslsmith_f_op_f32(f32(-1f) * -1623f))), !(var_2.a || func_3().x), vec3<f32>(var_0.c.b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(462f, global2.x))), global2.x, func_3().x)), global2.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(var_0.e.a, vec4<u32>(31344u, ~(~global4[_wgslsmith_index_u32(12649u, 3u)]), abs(1u), ~u_input.a.x)), ~(~u_input.a.xx), global2.xz, _wgslsmith_dot_vec4_u32(vec4<u32>(40228u, global4[_wgslsmith_index_u32(u_input.d.x, 3u)], _wgslsmith_dot_vec2_u32(var_0.d.a.yx, firstLeadingBit(var_0.e.a.xw)), ~21586u), max(~u_input.a, ~(~var_0.d.a))));
}

