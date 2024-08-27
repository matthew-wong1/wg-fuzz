struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: f32,
    c: Struct_1,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(1073f, -761f);

var<private> global1: i32;

var<private> global2: array<u32, 22>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> vec2<f32> {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(41263u | max(1u, min(abs(u_input.d), ~4294967295u)), firstLeadingBit(~(~(16615u | u_input.a)))), 22u)];
    global0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1214f, global0.x) * vec2<f32>(global0.x, global0.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.x, global0.x))))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(302f)) * 1524f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global0.x + 968f)))))));
    let var_1 = Struct_5(u_input.c, vec4<u32>(reverseBits(0u), select(u_input.d, _wgslsmith_mod_u32(~u_input.d, _wgslsmith_mult_u32(23291u, u_input.a)), true & (53178u >= u_input.a)), ~_wgslsmith_add_u32(global2[_wgslsmith_index_u32(59036u, 22u)], ~15357u), 30029u), any(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false))) && false);
    global0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(100f, 1206f))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(777f, global0.x)), _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.x, -210f), vec2<f32>(global0.x, -1000f))), _wgslsmith_div_vec2_f32(vec2<f32>(517f, -560f), vec2<f32>(global0.x, global0.x))))))), var_1.c));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, 1883f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(881f, global0.x), vec2<f32>(-2928f, -182f))) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.x, -125f), vec2<f32>(807f, -677f)))))))));
    return vec2<f32>(1f, 1f);
}

fn func_2(arg_0: i32) -> f32 {
    global1 = -1i;
    var var_0 = u_input.b.wyy;
    var_0 = -(vec3<i32>(2147483647i, 40567i, 28103i) << (~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, global2[_wgslsmith_index_u32(16400u, 22u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 22u)], 22u)]), vec3<u32>(23261u, 73272u, global2[_wgslsmith_index_u32(0u, 22u)]), vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 22u)], 0u, u_input.d))) % vec3<u32>(32u)));
    var var_1 = Struct_5(u_input.c, vec4<u32>(~53356u, abs(0u), u_input.a, ~0u), ~(-_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, var_0.x, var_0.x), u_input.b.yxx)) < -2147483647i);
    var var_2 = _wgslsmith_f_op_vec2_f32(func_3());
    return _wgslsmith_f_op_f32(-global0.x);
}

fn func_1(arg_0: Struct_4) -> f32 {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.x, _wgslsmith_f_op_f32(func_2(0i)), global0.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.b, _wgslsmith_f_op_f32(round(global0.x)), _wgslsmith_f_op_f32(arg_0.c.a + -545f)))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, -1000f, 1327f)) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.x, arg_0.c.a, arg_0.c.a), vec3<f32>(global0.x, global0.x, -1598f))))))));
    var var_1 = Struct_3(Struct_2(47802u, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x - arg_0.b), 408f), max(~u_input.b, ~u_input.b), select(-u_input.b, vec4<i32>(u_input.b.x, 35835i, arg_0.c.b.x, arg_0.a.x) << (vec4<u32>(1u, 36500u, u_input.d, 0u) % vec4<u32>(32u)), !vec4<bool>(true, true, false, arg_0.c.d.x)), vec3<bool>(true, arg_0.c.d.x, true))), vec4<bool>(select(true, true && arg_0.c.d.x, true), 1i == firstTrailingBit(_wgslsmith_mult_i32(1i, 22886i)), !(arg_0.c.d.x || arg_0.c.d.x), arg_0.c.d.x));
    global2 = array<u32, 22>();
    var var_2 = 0u;
    var var_3 = vec3<i32>(min(-u_input.b.x, _wgslsmith_dot_vec2_i32(u_input.b.zw, vec2<i32>(firstLeadingBit(-16987i), i32(-1i) * -2147483647i))), 74911i, -_wgslsmith_clamp_i32(_wgslsmith_mult_i32(var_1.a.b.c.x, 26380i), var_1.a.b.c.x, firstTrailingBit(3691i)) << ((1u & _wgslsmith_add_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(11689u, var_1.a.a, 16547u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.d.x, 22u)], 22u)]), vec4<u32>(u_input.a, arg_0.e.x, 31092u, 7446u)))) % 32u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-208f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(6251u, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_4(u_input.b.yxw, global0.x, Struct_1(-403f, vec4<i32>(u_input.b.x, u_input.b.x, -1i, u_input.b.x), u_input.b, vec3<bool>(false, false, false)), vec2<u32>(u_input.d, 25926u), u_input.c))))), firstLeadingBit(~vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), -_wgslsmith_mult_vec4_i32(u_input.b, u_input.b), vec3<bool>(any(vec2<bool>(true, true)), !any(vec4<bool>(false, false, true, true)), true)));
    let var_1 = 4294967295u;
    global2 = array<u32, 22>();
    var var_2 = true;
    var var_3 = vec3<u32>(1131u, ~0u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(0u, 22u)], u_input.c.x, var_1, u_input.d) << (~vec4<u32>(var_1, var_0.a, 4294967295u, 20326u) % vec4<u32>(32u)), ~vec4<u32>(var_1, global2[_wgslsmith_index_u32(var_0.a, 22u)], 80270u, u_input.c.x)));
    var var_4 = ~_wgslsmith_dot_vec2_i32(u_input.b.wy, vec2<i32>(-(~(-2147483647i)), -1650i));
    let var_5 = all(select(var_0.b.d, !var_0.b.d, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(firstLeadingBit(var_1 | var_1), ~12388u) << (~_wgslsmith_mod_u32(max(var_0.a, 4294967295u), var_0.a) % 32u));
}

