struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(-295f));

var<private> global1: i32 = -1i;

var<private> global2: array<Struct_2, 13>;

var<private> global3: vec3<bool>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.a, -1000f, 205f)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.a.a, global0.a.a, global0.a.a))))))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.a, global0.a.a, -1606f) + vec3<f32>(global0.a.a, 547f, 1000f))), vec3<f32>(global0.a.a, _wgslsmith_f_op_f32(global0.a.a * -748f), _wgslsmith_f_op_f32(1000f + -720f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(634f, -254f), _wgslsmith_f_op_f32(floor(global0.a.a)), _wgslsmith_f_op_f32(-global0.a.a)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.a, 968f, global0.a.a) * vec3<f32>(-238f, global0.a.a, 1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1098f, global0.a.a, global0.a.a) * vec3<f32>(global0.a.a, -1004f, global0.a.a)))), true)))));
    return global0.a.a;
}

fn func_2(arg_0: i32) -> u32 {
    global0 = global2[_wgslsmith_index_u32(~u_input.c, 13u)];
    global0 = global2[_wgslsmith_index_u32(reverseBits(~countOneBits(u_input.c)), 13u)];
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - 694f);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(874f + _wgslsmith_f_op_f32(global0.a.a + _wgslsmith_f_op_f32(global0.a.a - global0.a.a))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.a + _wgslsmith_f_op_f32(f32(-1f) * -877f))), global0.a.a));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-864f + global0.a.a)));
    return 46938u;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: i32, arg_3: bool) -> f32 {
    return _wgslsmith_f_op_f32(global0.a.a + _wgslsmith_f_op_f32(-arg_1.a));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<i32>) -> vec3<bool> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1011f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(767f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.a.a, 1000f)) * _wgslsmith_f_op_f32(f32(-1f) * -1280f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -791f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_2(u_input.b.x), Struct_1(global0.a.a), -2147483647i, arg_0.x))) - global0.a.a), global0.a.a);
    global0 = global2[_wgslsmith_index_u32(select(_wgslsmith_div_u32(min(564u, firstLeadingBit(~u_input.c)), u_input.c), ~(~(~68959u)), _wgslsmith_clamp_u32(4518u, ~select(1u, 8551u, false), ~_wgslsmith_dot_vec4_u32(vec4<u32>(24825u, u_input.c, 8215u, 0u), vec4<u32>(54030u, 1u, u_input.c, 0u))) >= ~6778u), 13u)];
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3()))), var_0.x)), -972f, _wgslsmith_f_op_f32(-378f * _wgslsmith_f_op_f32(-761f + _wgslsmith_div_f32(var_0.x, var_0.x))))));
    var var_2 = any(arg_0.ww);
    global0 = Struct_2(global0.a);
    return select(arg_0.zyx, vec3<bool>(false, true, all(select(select(arg_0, arg_0, global3.x), arg_0, !arg_0))), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0i;
    global3 = select(!(!select(select(vec3<bool>(false, global3.x, global3.x), vec3<bool>(true, global3.x, global3.x), global3.x), !vec3<bool>(global3.x, false, global3.x), !vec3<bool>(global3.x, true, false))), select(!vec3<bool>(false || global3.x, true && global3.x, global3.x), func_1(vec4<bool>(global3.x, true, global3.x, global3.x | global3.x), abs(-vec2<i32>(u_input.b.x, var_0))), vec3<bool>(!(u_input.c == 23382u), true, all(select(vec3<bool>(false, true, true), vec3<bool>(true, global3.x, false), false)))), func_1(vec4<bool>(global3.x, true, global3.x, select(true, global3.x | global3.x, true)), ~u_input.a.xw).x);
    var var_1 = abs(0i);
    var_1 = ~u_input.b.x & u_input.b.x;
    var_1 = abs(u_input.b.x);
    let var_2 = _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(25466u, 17125u, u_input.c), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.c, 1u), vec3<u32>(0u, u_input.c, 43926u), vec3<u32>(u_input.c, 83811u, u_input.c))), abs(abs(vec3<u32>(1u, 1u, u_input.c)))) & select(~_wgslsmith_add_vec3_u32(vec3<u32>(18061u, 0u, u_input.c), vec3<u32>(1u, 4294967295u, 38267u)), vec3<u32>(_wgslsmith_div_u32(u_input.c, 1u), _wgslsmith_div_u32(17582u, u_input.c), u_input.c << (u_input.c % 32u)), _wgslsmith_f_op_f32(select(888f, -857f, true)) >= _wgslsmith_f_op_f32(min(-1000f, global0.a.a))), reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(~4294967295u, 25542u | u_input.c, u_input.c), vec3<u32>(~u_input.c, ~u_input.c, 58409u))));
    global1 = _wgslsmith_mod_i32(var_0, -_wgslsmith_dot_vec3_i32(u_input.a.zxx, select(vec3<i32>(1i, 19431i, var_0) & u_input.b.yzy, abs(u_input.a.yzw), !vec3<bool>(global3.x, global3.x, global3.x))));
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(947f)))))));
}

