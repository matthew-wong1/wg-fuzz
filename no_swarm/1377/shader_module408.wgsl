struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec2<bool>,
    d: bool,
    e: f32,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
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

var<private> global0: array<u32, 4> = array<u32, 4>(90657u, 4294967295u, 0u, 47544u);

var<private> global1: vec2<i32> = vec2<i32>(0i, -1i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool) -> f32 {
    var var_0 = vec4<i32>(_wgslsmith_add_i32(abs(0i), 0i), _wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.c, _wgslsmith_clamp_i32(u_input.a.x, global1.x, 1i)), ~firstTrailingBit(1i)), global1.x, -10153i);
    let var_1 = -1520f;
    let var_2 = -138f;
    var var_3 = Struct_5(Struct_3(_wgslsmith_clamp_vec2_u32(abs(~vec2<u32>(global0[_wgslsmith_index_u32(5935u, 4u)], u_input.d.x)), u_input.d | vec2<u32>(global0[_wgslsmith_index_u32(22256u, 4u)], u_input.b), countOneBits(u_input.d)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_2, _wgslsmith_f_op_f32(trunc(var_2))))), vec2<bool>(any(select(vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(true, false, arg_0, arg_0), vec4<bool>(arg_0, false, false, true))), true), any(vec4<bool>(arg_0, true, select(false, true, false), all(vec4<bool>(true, arg_0, false, arg_0)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(276f, -1659f))), -1606i, var_1);
    let var_4 = _wgslsmith_dot_vec2_i32(var_0.yx, vec2<i32>(-var_0.x, ~(~(-4950i)))) >= -var_3.b;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - var_3.c))))));
}

fn func_2(arg_0: u32) -> Struct_2 {
    global1 = vec2<i32>(abs(-51707i) ^ (-global1.x >> ((~arg_0 >> (global0[_wgslsmith_index_u32(4294967295u, 4u)] % 32u)) % 32u)), ~u_input.c);
    global0 = array<u32, 4>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1635f))) - 486f);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(true)) - _wgslsmith_f_op_f32(abs(-351f))), _wgslsmith_clamp_vec3_i32(u_input.a, ~vec3<i32>(u_input.c, -31555i, -2147483647i), vec3<i32>(global1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, -1i, -2147483647i, 2147483647i), vec4<i32>(global1.x, global1.x, 29932i, u_input.a.x)), ~global1.x)) >> (~_wgslsmith_add_vec3_u32(~vec3<u32>(arg_0, global0[_wgslsmith_index_u32(57715u, 4u)], arg_0), ~vec3<u32>(55763u, 39358u, 14923u)) % vec3<u32>(32u)), select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, true), global0[_wgslsmith_index_u32(1u, 4u)] <= 25570u), select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true))), vec2<bool>(true, true)), any(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)))));
    var_0 = _wgslsmith_f_op_f32(-927f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(var_1.c.x)), _wgslsmith_f_op_f32(sign(293f)))));
    return Struct_2(_wgslsmith_add_u32(~u_input.b, _wgslsmith_mod_u32(1u, 4294967295u)), vec4<bool>(var_1.a == -624f, true, select(_wgslsmith_f_op_f32(-var_1.a) > 152f, var_1.c.x, true | (false && var_1.c.x)), false), 1905f, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1815f, var_1.a))), abs(~_wgslsmith_add_vec3_i32(var_1.b, vec3<i32>(1i, global1.x, u_input.a.x))), var_1.c));
}

fn func_1(arg_0: vec2<i32>) -> u32 {
    var var_0 = reverseBits(select(u_input.d, ~(~(~vec2<u32>(34797u, 45833u))), true));
    global0 = array<u32, 4>();
    global0 = array<u32, 4>();
    var var_1 = abs(-1i);
    var var_2 = func_2(~global0[_wgslsmith_index_u32(var_0.x & ~global0[_wgslsmith_index_u32(var_0.x << (var_0.x % 32u), 4u)], 4u)]);
    return _wgslsmith_mult_u32(func_2(abs(_wgslsmith_div_u32(_wgslsmith_sub_u32(6821u, var_2.a), _wgslsmith_add_u32(1u, 101088u)))).a, var_0.x);
}

fn func_4(arg_0: bool, arg_1: u32) -> StorageBuffer {
    var var_0 = func_2(global0[_wgslsmith_index_u32(arg_1, 4u)]).d;
    var var_1 = func_2(34717u).d;
    var var_2 = ~u_input.b;
    let var_3 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(func_2(_wgslsmith_add_u32(66112u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 4u)], 4u)])).d.a)), 557f), _wgslsmith_add_vec3_i32(min(vec3<i32>(-global1.x, _wgslsmith_mult_i32(global1.x, var_1.b.x), select(var_0.b.x, var_1.b.x, true)), -vec3<i32>(53550i, -5709i, var_0.b.x) & ~vec3<i32>(var_0.b.x, global1.x, -17424i)), vec3<i32>(u_input.a.x, (u_input.c & 78625i) ^ global1.x, ~2147483647i)), var_0.c);
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-107f)) - _wgslsmith_f_op_f32(abs(var_3.a))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - 358f))) + var_1.a), 674f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-255f * _wgslsmith_f_op_f32(var_1.a - var_0.a))))));
    return StorageBuffer(select(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(arg_1, 62098u, global0[_wgslsmith_index_u32(53079u, 4u)], 6418u)), ~vec4<u32>(arg_1, 0u, 62320u, 66699u)), 37444u, !all(!vec4<bool>(arg_0, false, var_0.c.x, var_1.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(!(true | all(vec4<bool>(false, false, false, false))) && (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1657f, -407f)) * _wgslsmith_f_op_f32(1339f + -1000f)) == _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1027f + 721f), _wgslsmith_f_op_f32(-582f - -1671f)))), func_1(u_input.a.xy));
}

