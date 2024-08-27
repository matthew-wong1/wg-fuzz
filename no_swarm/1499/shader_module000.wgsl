struct Struct_1 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<f32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: i32,
    c: Struct_2,
    d: Struct_3,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-29805i, 0i, 30363i);

var<private> global1: array<vec2<u32>, 20> = array<vec2<u32>, 20>(vec2<u32>(1u, 16425u), vec2<u32>(18318u, 57077u), vec2<u32>(6678u, 0u), vec2<u32>(7061u, 45719u), vec2<u32>(1u, 0u), vec2<u32>(29808u, 9121u), vec2<u32>(759u, 0u), vec2<u32>(50967u, 76001u), vec2<u32>(125112u, 4294967295u), vec2<u32>(133819u, 16803u), vec2<u32>(0u, 1u), vec2<u32>(62210u, 29057u), vec2<u32>(0u, 70658u), vec2<u32>(1u, 1u), vec2<u32>(1u, 1u), vec2<u32>(0u, 33422u), vec2<u32>(0u, 14050u), vec2<u32>(1u, 76425u), vec2<u32>(0u, 59487u), vec2<u32>(0u, 32513u));

var<private> global2: array<bool, 4> = array<bool, 4>(false, false, true, true);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: vec3<bool>, arg_1: bool, arg_2: vec4<f32>, arg_3: f32) -> Struct_1 {
    let var_0 = 2147483647i;
    global2 = array<bool, 4>();
    var var_1 = abs(~_wgslsmith_dot_vec2_u32(u_input.c.xz, vec2<u32>(u_input.c.x, 1u)) ^ u_input.c.x);
    var var_2 = !arg_0.xy;
    var var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(-arg_2.xwy), vec4<f32>(-425f, 179f, arg_2.x, arg_2.x));
    return Struct_1((_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c.x, u_input.c.x, u_input.a), u_input.c) ^ 1u) | _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(26695u, u_input.a), vec2<u32>(4294967295u, u_input.a)) ^ _wgslsmith_add_u32(u_input.c.x, u_input.a), 31675u & (12044u ^ u_input.a)), vec3<bool>(true, global0.x <= (0i ^ var_0), true));
}

fn func_3(arg_0: Struct_1) -> Struct_2 {
    global0 = vec3<i32>(u_input.d, -(~_wgslsmith_mod_i32(global0.x & u_input.b, global0.x)), global0.x);
    var var_0 = func_2(arg_0.b, !(arg_0.b.x && true), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(1000f, -2202f)), _wgslsmith_f_op_f32(step(-993f, 1106f)))), 823f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-375f + 772f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-437f * -1154f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-892f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1729f * 625f), 112f))) * _wgslsmith_f_op_f32(298f + -1323f))).a;
    global2 = array<bool, 4>();
    var_0 = 58765u;
    global1 = array<vec2<u32>, 20>();
    return Struct_2(_wgslsmith_f_op_f32(2403f - 520f), arg_0.b, global2[_wgslsmith_index_u32(0u, 4u)], ~(u_input.a ^ ~arg_0.a));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<f32>) -> vec4<f32> {
    let var_0 = ~vec3<u32>(0u, 19276u, ~(~arg_1.d) ^ 26234u);
    let var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a, arg_2.x, arg_2.x, arg_2.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-872f, -180f, arg_1.a, -163f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, arg_2.x, arg_1.a, -458f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(267f, arg_1.a, arg_2.x, arg_2.x))))), vec4<f32>(arg_1.a, _wgslsmith_f_op_f32(min(arg_1.a, arg_1.a)), _wgslsmith_f_op_f32(exp2(arg_2.x)), _wgslsmith_f_op_f32(floor(arg_2.x))), select(select(vec4<bool>(arg_1.b.x, true, arg_0.b.x, false), vec4<bool>(true, global2[_wgslsmith_index_u32(1u, 4u)], false, true), arg_1.b.x), !vec4<bool>(arg_0.b.x, global2[_wgslsmith_index_u32(0u, 4u)], false, global2[_wgslsmith_index_u32(arg_1.d, 4u)]), vec4<bool>(true, false, true, global2[_wgslsmith_index_u32(arg_1.d, 4u)])))))));
    global0 = vec3<i32>(_wgslsmith_mult_i32(~(-40316i), u_input.d), 2147483647i ^ select(-global0.x, reverseBits(select(u_input.b, global0.x, arg_0.b.x)), true), 1i & global0.x);
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(sign(var_1.x)), 497f) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, 413f, arg_1.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, -497f, var_1.x))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(var_1))))))));
    let var_3 = ~vec3<i32>(global0.x, -25581i, u_input.b);
    return _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-633f + 420f) + -1031f), _wgslsmith_f_op_f32(sign(arg_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -238f)), 283f)))));
}

fn func_1(arg_0: bool, arg_1: vec3<f32>) -> Struct_2 {
    let var_0 = Struct_5(Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.x, 435f))), _wgslsmith_div_f32(-224f, -646f), _wgslsmith_f_op_f32(-730f - _wgslsmith_f_op_f32(arg_1.x + arg_1.x))), _wgslsmith_f_op_vec4_f32(func_4(Struct_1(_wgslsmith_div_u32(1u, u_input.c.x), vec3<bool>(false, false, false)), func_3(func_2(vec3<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 4u)], arg_0, arg_0), global2[_wgslsmith_index_u32(21047u, 4u)], vec4<f32>(1000f, 178f, arg_1.x, -1381f), arg_1.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_1.x, -416f))), _wgslsmith_f_op_vec2_f32(select(arg_1.zy, arg_1.zz, vec2<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 4u)], true))), func_2(vec3<bool>(false, false, true), global2[_wgslsmith_index_u32(u_input.c.x, 4u)], vec4<f32>(-837f, 361f, 129f, arg_1.x), arg_1.x).b.yz))))), func_2(!(!select(vec3<bool>(true, arg_0, global2[_wgslsmith_index_u32(11815u, 4u)]), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 4u)], false, true), vec3<bool>(global2[_wgslsmith_index_u32(0u, 4u)], arg_0, arg_0))), all(vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.x, -1523f, 1091f, -590f))), -406f).b);
    var var_1 = u_input.c.x;
    let var_2 = -2147483647i;
    let var_3 = Struct_1(21498u, var_0.b);
    return func_3(var_3);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 4>();
    global1 = array<vec2<u32>, 20>();
    var var_0 = ~(~9525u);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-287f, 333f, 1698f, 1470f), vec4<f32>(881f, 1000f, -2193f, 782f)))))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(442f, -299f, -401f, -478f)))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1218f, 848f, 463f, -1016f), vec4<f32>(1281f, 2126f, 1287f, 458f), global2[_wgslsmith_index_u32(u_input.c.x, 4u)]))))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-var_1.x)))));
    global2 = array<bool, 4>();
    var var_3 = func_1(all(vec2<bool>(any(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 4u)], true, global2[_wgslsmith_index_u32(48701u, 4u)])), all(vec2<bool>(true, global2[_wgslsmith_index_u32(3734u, 4u)])) & (global0.x != u_input.d))), var_1.xxx);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-941f, var_2.x, var_1.x, _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(var_3.a - var_2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_1.x)), _wgslsmith_f_op_f32(-1539f * -281f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1607f) + _wgslsmith_f_op_f32(min(2362f, 551f))))), var_1.yyy);
}

