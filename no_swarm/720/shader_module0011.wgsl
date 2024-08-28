struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 20>;

var<private> global1: vec4<u32> = vec4<u32>(4294967295u, 1381u, 21487u, 4294967295u);

var<private> global2: Struct_1 = Struct_1(vec2<f32>(147f, 960f), 26230i, true);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: vec2<bool>, arg_1: f32, arg_2: Struct_1, arg_3: vec2<i32>) -> f32 {
    global0 = array<vec4<u32>, 20>();
    var var_0 = !(!((_wgslsmith_f_op_f32(trunc(arg_2.a.x)) <= _wgslsmith_f_op_f32(848f * -546f)) && global2.c));
    var var_1 = 1300f;
    let var_2 = 216f;
    var var_3 = abs(global1.x) == 33907u;
    return var_2;
}

fn func_2(arg_0: f32, arg_1: vec4<u32>, arg_2: bool) -> Struct_1 {
    global0 = array<vec4<u32>, 20>();
    global0 = array<vec4<u32>, 20>();
    return Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(529f, _wgslsmith_f_op_f32(arg_0 + -446f))), u_input.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-arg_0)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), arg_0)) > -2369f);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = u_input.b;
    var var_1 = Struct_2(select(vec2<bool>(true && any(vec2<bool>(arg_0.c, true)), global2.c), vec2<bool>(true, arg_1.c), !vec2<bool>(global2.c, true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.x, _wgslsmith_f_op_f32(-650f + _wgslsmith_div_f32(arg_0.a.x, 463f)), _wgslsmith_f_op_f32(f32(-1f) * -1405f))), vec3<u32>(~1u, 4922u << (global1.x % 32u), ~61381u), arg_0);
    var var_2 = Struct_2(var_1.a, _wgslsmith_f_op_vec3_f32(var_1.b - _wgslsmith_f_op_vec3_f32(var_1.b * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(var_1.b, var_1.b)) - vec3<f32>(arg_1.a.x, arg_0.a.x, arg_1.a.x)))), _wgslsmith_mod_vec3_u32(~vec3<u32>(global1.x, 37627u, max(71285u, var_1.c.x)), vec3<u32>(11050u << (1u % 32u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(101434u, 1544u), vec2<u32>(8808u, global1.x)), ~abs(var_1.c.x))), arg_1);
    var_2 = Struct_2(select(vec2<bool>(true, arg_1.c), vec2<bool>(!var_1.a.x, true), !vec2<bool>(!var_1.a.x, true)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-954f, -2065f)) - _wgslsmith_f_op_f32(exp2(arg_1.a.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d.a.x))), arg_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x))), ~vec3<u32>(global1.x, max(0u, ~var_2.c.x), 58770u), func_2(1f, global0[_wgslsmith_index_u32(max(23199u, abs(~11739u)), 20u)], any(vec2<bool>(true, true))));
    global2 = func_2(_wgslsmith_f_op_f32(f32(-1f) * -1072f), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(global1.x | var_2.c.x), global1.x), 20u)] >> (global0[_wgslsmith_index_u32(global1.x << (0u % 32u), 20u)] % vec4<u32>(32u)), all(select(vec2<bool>(!arg_0.c, any(vec3<bool>(arg_1.c, arg_0.c, true))), !(!vec2<bool>(var_2.a.x, var_2.d.c)), var_2.a)));
    return func_2(arg_0.a.x, vec4<u32>(var_1.c.x & ~0u, ~reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.c.x, 4294967295u, global1.x, 20373u), global0[_wgslsmith_index_u32(var_1.c.x, 20u)])), _wgslsmith_clamp_u32(abs(abs(global1.x)), var_2.c.x, 12974u), 82887u), var_2.d.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(global2.c, false, true, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec2<bool>(false, global2.c), 180f, Struct_1(global2.a, u_input.d, false), u_input.b.zx)), _wgslsmith_f_op_f32(-global2.a.x)))) != global2.a.x);
    let var_1 = 783f;
    var var_2 = min(vec4<i32>(global2.b, 28751i, -37865i, u_input.a), _wgslsmith_add_vec4_i32(~(-vec4<i32>(-27340i, 0i, u_input.d, 2147483647i)) ^ vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 20544i, 2147483647i, u_input.c), vec4<i32>(2147483647i, global2.b, -18782i, u_input.b.x)), u_input.a, reverseBits(1i), _wgslsmith_sub_i32(-38811i, -29099i)), -abs(vec4<i32>(global2.b, u_input.e.x, -21910i, u_input.d) >> (global0[_wgslsmith_index_u32(1u, 20u)] % vec4<u32>(32u)))));
    var var_3 = func_3(Struct_1(global2.a, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(1i, global2.b, 1i, var_2.x)), firstLeadingBit(vec4<i32>(52513i, global2.b, 0i, 2427i))), var_0.x), func_2(1f, global0[_wgslsmith_index_u32(~global1.x, 20u)], global2.c));
    let var_4 = global1.x;
    global1 = _wgslsmith_clamp_vec4_u32(~abs(_wgslsmith_sub_vec4_u32(~vec4<u32>(global1.x, 55276u, global1.x, 0u), _wgslsmith_mult_vec4_u32(vec4<u32>(global1.x, global1.x, global1.x, global1.x), vec4<u32>(10646u, 1u, 23316u, 1u)))), _wgslsmith_div_vec4_u32(min((vec4<u32>(global1.x, global1.x, global1.x, 53627u) | global0[_wgslsmith_index_u32(0u, 20u)]) & ~global0[_wgslsmith_index_u32(global1.x, 20u)], abs(vec4<u32>(global1.x, global1.x, 16985u, global1.x))), ~max(~global0[_wgslsmith_index_u32(64501u, 20u)], global0[_wgslsmith_index_u32(global1.x, 20u)])), global0[_wgslsmith_index_u32(~7924u, 20u)]);
    var_3 = func_3(func_3(func_3(Struct_1(vec2<f32>(-1000f, 1000f), 0i, true), func_3(Struct_1(var_3.a, var_3.b, false), Struct_1(vec2<f32>(global2.a.x, -1000f), 2361i, global2.c))), Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.a.x, 1336f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, -117f)))), -2147483647i, false)), func_3(Struct_1(var_3.a, _wgslsmith_div_i32(var_2.x, var_2.x) ^ -7815i, -11718i < select(var_2.x, -21223i, false)), func_3(func_2(-867f, global0[_wgslsmith_index_u32(global1.x, 20u)], true), func_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global1.x, global1.x, global1.x), 20u)], global1.x != 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_div_f32(1203f, _wgslsmith_f_op_f32(-1761f + global2.a.x)), global2.a.x, global2.a.x, _wgslsmith_f_op_f32(-global2.a.x)));
}

