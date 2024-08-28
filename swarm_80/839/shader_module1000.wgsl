struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: i32,
    d: vec3<bool>,
    e: i32,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<f32>,
    c: Struct_2,
}

struct Struct_5 {
    a: vec2<bool>,
    b: u32,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9>;

var<private> global1: i32;

var<private> global2: Struct_2;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: Struct_1) -> vec2<i32> {
    global0 = array<i32, 9>();
    var var_0 = _wgslsmith_mod_i32(-1i, ~u_input.b);
    return ~u_input.a.zy;
}

fn func_2(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_3) -> vec2<bool> {
    global2 = Struct_2(select(!(!select(vec2<bool>(arg_0, false), vec2<bool>(false, false), global2.a.x)), vec2<bool>(any(global2.a), global2.a.x || !arg_0), global2.d.yz), min(max(44855u, global2.b) | global2.b, global2.b | ~_wgslsmith_mult_u32(global2.b, arg_2.a.x)), _wgslsmith_clamp_i32(-18525i, -2147483647i, _wgslsmith_mod_i32(_wgslsmith_sub_i32(-36618i, global2.e), firstLeadingBit(global0[_wgslsmith_index_u32(global2.b, 9u)]))) & min(u_input.a.x & -arg_1.x, u_input.a.x), !(!global2.d), -24655i >> (~arg_2.a.x % 32u));
    let var_0 = func_3(true, arg_0 || false, arg_2);
    let var_1 = Struct_2(global2.d.zx, _wgslsmith_mult_u32(~arg_2.a.x, 20367u), ~_wgslsmith_div_i32(_wgslsmith_clamp_i32(select(global0[_wgslsmith_index_u32(arg_2.a.x, 9u)], 0i, arg_0), ~2147483647i, global2.c), u_input.b), !global2.d, i32(-1i) * -2147483647i);
    global1 = 60638i;
    var var_2 = !(!vec2<bool>(true && var_1.a.x, arg_0));
    return vec2<bool>(true, true);
}

fn func_4(arg_0: Struct_5) -> Struct_2 {
    var var_0 = Struct_4(Struct_2(arg_0.a, 0u, ~1i, select(vec3<bool>(arg_0.c >= arg_0.c, true, all(vec2<bool>(global2.a.x, true))), vec3<bool>(any(vec4<bool>(arg_0.a.x, global2.a.x, global2.a.x, arg_0.a.x)), true, arg_0.a.x), !global2.d), -12360i), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c, arg_0.c, arg_0.c, arg_0.c) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c, arg_0.c, -828f, 1075f) * vec4<f32>(arg_0.c, -870f, -421f, arg_0.c)))))), Struct_2(vec2<bool>(func_2(false, abs(u_input.a), Struct_1(vec2<u32>(global2.b, 4294967295u), vec3<f32>(1000f, arg_0.c, arg_0.c)), Struct_3(arg_0.c, u_input.a.xz)).x, true), ~(max(arg_0.b, arg_0.b) ^ 26097u), select(-1i, u_input.a.x, false), !select(!global2.d, global2.d, select(global2.d, global2.d, global2.d)), global0[_wgslsmith_index_u32(~arg_0.b, 9u)] ^ (i32(-1i) * -16587i)));
    let var_1 = vec4<bool>(!(!(var_0.a.a.x == func_2(arg_0.a.x, vec3<i32>(global0[_wgslsmith_index_u32(global2.b, 9u)], u_input.b, -7688i), Struct_1(vec2<u32>(var_0.c.b, arg_0.b), vec3<f32>(var_0.b.x, var_0.b.x, 1604f)), Struct_3(-349f, u_input.a.xy)).x)), !select(arg_0.a.x, !any(vec2<bool>(global2.a.x, true)), var_0.c.a.x), !(!var_0.a.d.x), true);
    global2 = var_0.a;
    let var_2 = Struct_5(vec2<bool>(true, true), 4294967295u & global2.b, -510f, 3057i);
    let var_3 = _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(u_input.a, vec3<i32>(global2.e, -1i, ~u_input.b | -1i)), min(min(u_input.a, ~_wgslsmith_clamp_vec3_i32(u_input.a, u_input.a, u_input.a)), vec3<i32>(~(-1i), -6264i, -max(u_input.b, global0[_wgslsmith_index_u32(4294967295u, 9u)]))));
    return var_0.a;
}

fn func_1() -> vec4<f32> {
    global2 = func_4(Struct_5(select(!(!vec2<bool>(global2.d.x, global2.d.x)), select(func_2(global2.d.x, vec3<i32>(global2.c, global2.c, 0i), Struct_1(vec2<u32>(17801u, global2.b), vec3<f32>(903f, -1307f, 1182f)), Struct_3(-1769f, u_input.a.zx)), func_2(false, u_input.a, Struct_1(vec2<u32>(global2.b, 0u), vec3<f32>(-1536f, 1000f, -352f)), Struct_3(1000f, u_input.a.zy)), vec2<bool>(global2.d.x, false)), true), global2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-437f)) + _wgslsmith_f_op_f32(f32(-1f) * -1845f)), _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(global2.b, 9u)] | global0[_wgslsmith_index_u32(29577u ^ global2.b, 9u)], -4623i, global2.c)));
    var var_0 = Struct_1(_wgslsmith_mult_vec2_u32(firstLeadingBit(vec2<u32>(35872u << (global2.b % 32u), abs(global2.b))), ~select(vec2<u32>(global2.b, global2.b) << (vec2<u32>(0u, global2.b) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(vec2<u32>(global2.b, 4294967295u), vec2<u32>(0u, 55081u)), func_2(global2.a.x, u_input.a, Struct_1(vec2<u32>(global2.b, 44165u), vec3<f32>(1000f, 698f, -147f)), Struct_3(1540f, vec2<i32>(2147483647i, -2147483647i))))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1589f)) * _wgslsmith_f_op_f32(f32(-1f) * -1006f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-306f, -229f, global2.a.x)))), _wgslsmith_f_op_f32(f32(-1f) * -251f)))));
    var_0 = Struct_1(~vec2<u32>(4294967295u, ~func_4(Struct_5(global2.a, 0u, 851f, u_input.b)).b), _wgslsmith_f_op_vec3_f32(exp2(var_0.b)));
    return vec4<f32>(_wgslsmith_f_op_f32(2134f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.b.x * -1638f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(335f * var_0.b.x))), _wgslsmith_f_op_f32(step(var_0.b.x, _wgslsmith_f_op_f32(var_0.b.x + var_0.b.x))))))), var_0.b.x, _wgslsmith_f_op_f32(ceil(485f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(1726f)), 494f))))) * -921f);
    let var_1 = global2.d;
    global1 = ~global2.c;
    var var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -803f), _wgslsmith_f_op_f32(-634f * var_0), _wgslsmith_div_f32(526f, 400f), _wgslsmith_f_op_f32(max(1993f, var_0))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1()) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1283f, var_0, var_0, 1756f)))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(136f, 946f, -280f, var_0) + vec4<f32>(var_0, 727f, 1357f, 1627f)) * _wgslsmith_f_op_vec4_f32(func_1())), vec4<f32>(var_0, _wgslsmith_f_op_f32(var_0 + var_0), 808f, var_0)))));
    let var_3 = vec4<i32>(-12840i, global0[_wgslsmith_index_u32(global2.b, 9u)], ~(-2147483647i), 17935i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(~(~global2.b | ~4294967295u), 48348u), ~global2.b);
}

