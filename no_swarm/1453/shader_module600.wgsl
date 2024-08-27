struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
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

var<private> global0: vec4<f32> = vec4<f32>(620f, -670f, -311f, -172f);

var<private> global1: vec4<f32>;

var<private> global2: array<vec4<u32>, 11> = array<vec4<u32>, 11>(vec4<u32>(1u, 22851u, 53689u, 30809u), vec4<u32>(3760u, 4294967295u, 51539u, 8765u), vec4<u32>(4294967295u, 1u, 22260u, 79157u), vec4<u32>(55711u, 1u, 0u, 24281u), vec4<u32>(17852u, 1u, 0u, 1u), vec4<u32>(0u, 1u, 1u, 15151u), vec4<u32>(4294967295u, 28924u, 45306u, 0u), vec4<u32>(31966u, 22968u, 4294967295u, 51081u), vec4<u32>(41086u, 4294967295u, 0u, 2585u), vec4<u32>(13138u, 1u, 4294967295u, 4294967295u), vec4<u32>(0u, 0u, 1u, 12461u));

var<private> global3: array<i32, 11>;

var<private> global4: array<vec4<f32>, 19>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> f32 {
    let var_0 = Struct_1(vec4<bool>(false, true, false, all(vec3<bool>(any(vec2<bool>(true, false)), false, false))));
    global3 = array<i32, 11>();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-637f, -256f, global1.x, global1.x))) - global4[_wgslsmith_index_u32(reverseBits(8438u), 19u)])) * vec4<f32>(global0.x, -933f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -542f) * global1.x), _wgslsmith_f_op_f32(trunc(global1.x)))) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.x))), 1f, global0.x, 1058f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global4[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, 0u), 19u)]) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-global4[_wgslsmith_index_u32(47692u, 19u)]), _wgslsmith_f_op_vec4_f32(exp2(global4[_wgslsmith_index_u32(32604u, 19u)])))))));
    global4 = array<vec4<f32>, 19>();
    let var_2 = ~u_input.a;
    return var_1.x;
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1) -> f32 {
    global3 = array<i32, 11>();
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, 44675u, ~arg_1), 19u)])) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-118f, arg_0.b, global0.x, 134f), global4[_wgslsmith_index_u32(68265u, 19u)], true)) - global4[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_1, u_input.b), 19u)]) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 186f, -465f, -1292f)))));
    var var_0 = true;
    global0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f + -1911f), _wgslsmith_f_op_f32(func_3()))) + _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + _wgslsmith_f_op_f32(-237f - 1075f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.x), -793f)), _wgslsmith_f_op_f32(-196f * global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.b * arg_0.b), global0.x))))));
    let var_1 = arg_0;
    return global1.x;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_5) -> Struct_4 {
    return Struct_4(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(10703u, 25570u, _wgslsmith_add_u32(0u, u_input.b)), (vec3<u32>(122039u, u_input.b, 0u) << (vec3<u32>(u_input.b, u_input.b, 0u) % vec3<u32>(32u))) & (vec3<u32>(1u, u_input.b, 4294967295u) | vec3<u32>(8914u, u_input.b, 14342u))), u_input.b, u_input.b | _wgslsmith_clamp_u32(u_input.b, ~25277u, abs(u_input.b))), select(arg_1.a.wyy, select(arg_2.a.a.xzz, vec3<bool>(arg_1.a.x, arg_2.a.a.x, 1000f <= arg_0.x), any(!arg_1.a.yxx)), vec3<bool>(true || any(vec3<bool>(arg_2.a.a.x, false, arg_1.a.x)), abs(u_input.b) == u_input.b, arg_2.a.a.x)), Struct_3(Struct_1(arg_2.a.a), -(~vec4<i32>(90322i, -50796i, 2147483647i, -35831i)), Struct_2(Struct_1(vec4<bool>(arg_2.a.a.x, arg_2.a.a.x, true, arg_2.a.a.x)), global0.x, -30113i)));
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = func_4(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.x))) * _wgslsmith_f_op_f32(select(-1117f, _wgslsmith_f_op_f32(global1.x - -2354f), global3[_wgslsmith_index_u32(1u, 11u)] != -31682i))), _wgslsmith_f_op_f32(583f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(vec4<bool>(true, false, false, false)), 1000f, u_input.a), u_input.b, Struct_1(vec4<bool>(false, false, false, false)))))), _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-520f)) + 380f)), _wgslsmith_f_op_f32(sign(579f))), Struct_1(vec4<bool>(false, true, !any(vec4<bool>(true, false, true, false)), false)), Struct_5(Struct_1(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false))), ~vec3<i32>(-u_input.a, 0i, 0i)));
    var var_1 = func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.c.b * global0.x) * _wgslsmith_div_f32(1185f, var_0.c.c.b)), 1577f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-242f, global1.x) - _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * var_0.c.c.b))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.x, 339f, global1.x, var_0.c.c.b))) + vec4<f32>(656f, global0.x, var_0.c.c.b, var_0.c.c.b)))), var_0.c.a, Struct_5(Struct_1(var_0.c.c.a.a), abs(vec3<i32>(1i, -u_input.a, _wgslsmith_sub_i32(global3[_wgslsmith_index_u32(u_input.b, 11u)], -2147483647i))))).c.c.a;
    var var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(-624f, -588f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x)))));
    let var_3 = Struct_2(var_0.c.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) + -546f) - _wgslsmith_f_op_f32(sign(-1732f))), -2147483647i >> (0u % 32u));
    global0 = vec4<f32>(503f, _wgslsmith_f_op_f32(round(-617f)), 247f, var_3.b);
    return var_0.c.a;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec4<f32>, 19>();
    global2 = array<vec4<u32>, 11>();
    global3 = array<i32, 11>();
    global3 = array<i32, 11>();
    var var_0 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1192f, -391f, global1.x, 241f))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-906f * global1.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1208f, global1.x, 202f, _wgslsmith_f_op_f32(-global0.x)))))));
    var var_2 = 40405u;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(vec2<i32>(1i, i32(-1i) * -6473i)));
}

