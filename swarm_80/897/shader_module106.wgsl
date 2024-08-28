struct Struct_1 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: u32,
    d: vec4<u32>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

var<private> global1: u32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32) -> f32 {
    global0 = array<Struct_1, 4>();
    global0 = array<Struct_1, 4>();
    var var_0 = 1i;
    global0 = array<Struct_1, 4>();
    global1 = 4294967295u;
    return -735f;
}

fn func_4(arg_0: f32, arg_1: vec2<u32>) -> vec3<bool> {
    let var_0 = Struct_3(arg_0, global0[_wgslsmith_index_u32(86671u, 4u)], _wgslsmith_mod_i32(~(~firstTrailingBit(11475i)), abs(1i)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(9331u)) + _wgslsmith_f_op_f32(arg_0 * arg_0))), _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0)))), ~(~u_input.a) | (arg_1.x >> (50583u % 32u)), ~(~(~vec4<u32>(u_input.a, 7165u, 4294967295u, arg_1.x))), vec2<bool>(true, true)));
    let var_1 = var_0.b.c;
    let var_2 = 1i;
    global0 = array<Struct_1, 4>();
    var var_3 = var_0;
    return !select(!(!(!vec3<bool>(var_0.d.e.x, var_0.d.e.x, true))), vec3<bool>(true, !var_3.d.e.x, var_1), vec3<bool>(all(select(vec2<bool>(var_1, true), vec2<bool>(false, var_1), var_0.d.e)), false, ~arg_1.x <= firstLeadingBit(u_input.a)));
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2) -> bool {
    global0 = array<Struct_1, 4>();
    global0 = array<Struct_1, 4>();
    global1 = _wgslsmith_add_u32(~(~_wgslsmith_sub_u32(arg_0.d.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 6440u), arg_0.d.xy))), reverseBits(~(~_wgslsmith_clamp_u32(26004u, 0u, 83526u))));
    var var_0 = select(!select(select(vec3<bool>(arg_2.e.x, true, false), !vec3<bool>(false, arg_2.e.x, true), vec3<bool>(false, true, arg_0.e.x)), !vec3<bool>(true, true, arg_0.e.x), arg_0.e.x), func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(arg_0.d.x)), 1326f)) * -460f), vec2<u32>(0u, arg_2.d.x)), any(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(arg_2.e.x, false, arg_2.e.x, arg_2.e.x), vec4<bool>(false, arg_0.e.x, true, false), arg_2.e.x), vec4<bool>(true, arg_0.e.x, false, arg_0.e.x)), !select(vec4<bool>(true, arg_0.e.x, arg_0.e.x, true), vec4<bool>(arg_0.e.x, true, arg_0.e.x, arg_2.e.x), vec4<bool>(false, true, arg_0.e.x, true)), vec4<bool>(all(vec4<bool>(false, arg_0.e.x, false, arg_0.e.x)), arg_0.e.x, !arg_0.e.x, any(vec2<bool>(arg_2.e.x, arg_2.e.x))))));
    let var_1 = _wgslsmith_div_i32(-_wgslsmith_add_i32(~1i, ~(-1i)), _wgslsmith_sub_i32(reverseBits(_wgslsmith_add_i32(_wgslsmith_mod_i32(-67477i, -34878i), ~(-1i))), i32(-1i) * -1i));
    return any(func_4(1000f, vec2<u32>(arg_2.c, _wgslsmith_mult_u32(arg_0.c >> (u_input.a % 32u), 1u))));
}

fn func_5(arg_0: vec4<bool>) -> f32 {
    let var_0 = Struct_2(_wgslsmith_div_f32(-654f, _wgslsmith_f_op_f32(542f - _wgslsmith_f_op_f32(f32(-1f) * -396f))), -927f, ~9298u, firstTrailingBit(~vec4<u32>(5699u >> (0u % 32u), ~32433u, _wgslsmith_clamp_u32(u_input.a, u_input.a, 4294967295u), 1u)), vec2<bool>(!arg_0.x, true));
    global1 = ~0u;
    global1 = u_input.a;
    return var_0.b;
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = vec2<u32>(u_input.a ^ _wgslsmith_mod_u32(40386u, _wgslsmith_div_u32(~u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 25172u, u_input.a, 37551u), vec4<u32>(0u, u_input.a, u_input.a, u_input.a)))), ~u_input.a);
    global0 = array<Struct_1, 4>();
    var var_1 = min(~_wgslsmith_mod_i32(2147483647i, min(-2147483647i, ~2147483647i)), max(_wgslsmith_mult_i32(_wgslsmith_sub_i32(1i, firstLeadingBit(-4171i)), -min(-1i, 0i)), -max(min(-1259i, 0i), max(-16181i, 47370i))));
    let var_2 = -774f;
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_5(select(!vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(false, true, true, true), func_2(Struct_2(var_2, 654f, u_input.a, vec4<u32>(18708u, 0u, var_0.x, var_0.x), vec2<bool>(arg_0, true)), -674f, Struct_2(var_2, -298f, 0u, vec4<u32>(4294967295u, 47514u, 0u, 56245u), vec2<bool>(false, arg_0)))))), _wgslsmith_f_op_f32(min(-1000f, 1267f))));
    return Struct_1(_wgslsmith_add_vec3_u32(~(~vec3<u32>(var_0.x, 4294967295u, 0u)) ^ vec3<u32>(0u, ~4294967295u, max(u_input.a, 19143u)), ~(~(vec3<u32>(54229u, u_input.a, u_input.a) | vec3<u32>(u_input.a, 17030u, 0u)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(func_3(u_input.a)), _wgslsmith_f_op_f32(-var_2)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, -1102f)) * _wgslsmith_f_op_vec2_f32(round(var_3))))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-845f - 1000f), var_2))))), arg_0, _wgslsmith_mod_u32(58536u, _wgslsmith_clamp_u32(min(0u, var_0.x), 0u | u_input.a, 43948u)) << (29981u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(abs(1648f));
    let var_1 = func_1(false);
    global0 = array<Struct_1, 4>();
    let var_2 = var_1.b;
    var var_3 = vec4<bool>(all(!vec2<bool>(var_1.c, var_1.c)) & true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(var_1.b.x))))) <= _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(vec4<bool>(false, var_1.c, true, false))), 1620f) * _wgslsmith_f_op_f32(trunc(var_1.b.x))), false, true);
    var var_4 = Struct_2(_wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x + 1193f)) - _wgslsmith_f_op_f32(abs(-971f)))), 1f, countOneBits(~(var_1.a.x & _wgslsmith_mod_u32(0u, var_1.d))), _wgslsmith_div_vec4_u32(~(firstTrailingBit(vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a)) << ((vec4<u32>(90464u, 18082u, var_1.a.x, var_1.d) ^ vec4<u32>(1u, u_input.a, 1u, 54727u)) % vec4<u32>(32u))), ~(~vec4<u32>(u_input.a, 4294967295u, u_input.a, 0u))), var_3.yy);
    var_0 = _wgslsmith_f_op_f32(func_3(~u_input.a));
    let var_5 = global0[_wgslsmith_index_u32(56268u, 4u)];
    let var_6 = _wgslsmith_f_op_f32(var_4.b * _wgslsmith_f_op_f32(floor(-616f)));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.d ^ var_4.d, var_1.a.x);
}

