struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    let var_0 = !vec2<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true)), _wgslsmith_f_op_f32(f32(-1f) * -367f) >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1656f))));
    let var_1 = !(!select(!select(vec3<bool>(var_0.x, true, true), vec3<bool>(false, true, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x)), !(!vec3<bool>(false, var_0.x, var_0.x)), !(!vec3<bool>(var_0.x, var_0.x, var_0.x))));
    var var_2 = -1987f;
    let var_3 = vec4<u32>(u_input.b.x, u_input.b.x, countOneBits(u_input.b.x), _wgslsmith_div_u32(u_input.c, _wgslsmith_sub_u32(~u_input.c, _wgslsmith_mod_u32(43460u, 1u))));
    var var_4 = vec4<bool>(var_0.x || select(true || var_0.x, !(!var_0.x), true), true, true || var_1.x, any(vec2<bool>(true, true)));
    return abs(firstTrailingBit(0u));
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = Struct_1(vec4<u32>(_wgslsmith_div_u32(~4294967295u, func_3() ^ 1u), _wgslsmith_mod_u32(firstTrailingBit(131864u), max(u_input.c & 10355u, 4294967295u)), ~(u_input.c & 28714u), abs(_wgslsmith_add_u32(u_input.b.x << (4294967295u % 32u), ~u_input.b.x))));
    let var_1 = abs(~select(abs(vec3<i32>(u_input.a, 2147483647i, 2147483647i)), _wgslsmith_clamp_vec3_i32(select(vec3<i32>(u_input.a, u_input.a, 0i), vec3<i32>(-9402i, 32285i, 7012i), vec3<bool>(true, arg_0.x, arg_0.x)), ~vec3<i32>(u_input.a, 2147483647i, u_input.a), vec3<i32>(-2147483647i, 0i, -72462i) << (var_0.a.zzx % vec3<u32>(32u))), !arg_0.x));
    let var_2 = select(vec3<bool>(false, false, !select(all(arg_0.xy), true, arg_0.x)), !arg_0, true);
    var var_3 = var_0;
    let var_4 = var_0;
    return Struct_1(abs(vec4<u32>((7045u & var_3.a.x) << (_wgslsmith_add_u32(58079u, 1u) % 32u), u_input.b.x, _wgslsmith_add_u32(~var_3.a.x, 14313u), 4294967295u)));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = func_2(vec3<bool>(!(arg_0.a.x >= u_input.b.x), abs(-u_input.a) >= u_input.a, true));
    var var_1 = arg_0;
    var_1 = Struct_1(var_0.a);
    var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(166f + -1572f), _wgslsmith_div_f32(-727f, 1043f)), vec2<f32>(-1444f, -323f))), vec2<f32>(-448f, _wgslsmith_f_op_f32(max(-607f, _wgslsmith_f_op_f32(-600f + _wgslsmith_f_op_f32(max(-1000f, -1000f)))))), vec2<bool>(!(!select(false, true, false)), true)));
    return var_0;
}

fn func_5(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(273f, -1157f), vec2<f32>(1000f, -945f))))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-936f, -1212f) + vec2<f32>(903f, 1000f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-506f, 613f))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-199f, -597f), -103f))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(606f, 271f, arg_1.x)), _wgslsmith_f_op_f32(select(var_0.x, var_0.x, arg_1.x)))), -1698f)))), -665f);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), -1317f, _wgslsmith_f_op_f32(196f + var_0.x)))))));
    var_1 = vec3<f32>(-294f, var_0.x, 1000f);
    var var_2 = arg_2.a;
    return min(arg_0 | (u_input.a << (var_2.x % 32u)), _wgslsmith_mod_i32(~_wgslsmith_mult_i32(-1i, u_input.a), -(i32(-1i) * -23658i)) & ~0i);
}

fn func_6(arg_0: vec2<u32>, arg_1: i32, arg_2: i32) -> Struct_1 {
    var var_0 = func_4(Struct_1(func_2(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false)))).a)).a.zxz;
    var_0 = min(~countOneBits(select(~vec3<u32>(75304u, arg_0.x, arg_0.x), countOneBits(vec3<u32>(1u, 39506u, arg_0.x)), all(vec4<bool>(true, true, false, false)))), reverseBits(vec3<u32>(~min(1517u, u_input.c), max(min(1u, arg_0.x), 4294967295u), _wgslsmith_clamp_u32(arg_0.x, min(arg_0.x, u_input.b.x), ~u_input.b.x))));
    var var_1 = func_4(Struct_1(vec4<u32>(_wgslsmith_add_u32(~u_input.c, arg_0.x), max(~var_0.x, arg_0.x), 23434u, func_3()))).a;
    var_0 = max(abs(~(~var_1.wzz)), ~var_1.ywy);
    var_1 = vec4<u32>(var_1.x, _wgslsmith_add_u32(var_1.x, ~u_input.c), select(~(~(4294967295u >> (arg_0.x % 32u))), func_3(), !select(false, true, any(vec4<bool>(true, false, false, true)))), u_input.b.x);
    return func_2(select(vec3<bool>(false, true, (4294967295u << (var_0.x % 32u)) > var_1.x), vec3<bool>(true, all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true))), false), vec3<bool>(all(vec3<bool>(true, true, false)), true, false)));
}

fn func_1(arg_0: vec4<u32>, arg_1: u32) -> vec4<bool> {
    let var_0 = false;
    var var_1 = func_6(~(~vec2<u32>(~arg_1, 1u)), -u_input.a, max(u_input.a, func_5(u_input.a, !(!vec3<bool>(var_0, false, true)), func_4(func_2(vec3<bool>(true, var_0, true))), Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(arg_1, 4294967295u, 101286u, 0u), vec4<u32>(arg_1, 6386u, arg_1, arg_0.x))))));
    var_1 = func_4(Struct_1((vec4<u32>(4294967295u, u_input.c, 7952u, u_input.c) & func_6(u_input.b, 26429i, u_input.a).a) & (vec4<u32>(73583u, 27240u, arg_0.x, arg_0.x) & ~var_1.a)));
    var var_2 = min(firstTrailingBit(_wgslsmith_add_u32(0u, arg_0.x)), 1u & abs(_wgslsmith_dot_vec4_u32(~var_1.a, ~var_1.a)));
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1214f);
    return vec4<bool>(true, false, var_0, !any(select(select(vec3<bool>(var_0, false, true), vec3<bool>(var_0, true, var_0), var_0), vec3<bool>(var_0, var_0, var_0), all(vec3<bool>(false, true, var_0)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    let var_1 = !(!select(func_1(max(vec4<u32>(var_0.x, u_input.c, var_0.x, 1u), vec4<u32>(u_input.c, var_0.x, var_0.x, 4294967295u)), firstLeadingBit(var_0.x)), vec4<bool>(true, true, true, true), vec4<bool>(all(vec4<bool>(true, true, false, false)), select(true, false, false), all(vec3<bool>(true, true, true)), true)));
    let var_2 = !select(!vec4<bool>(var_1.x, var_1.x & var_1.x, false, true), var_1, false);
    var var_3 = var_2.zz;
    var_3 = var_2.zy;
    var var_4 = Struct_1(_wgslsmith_sub_vec4_u32(~_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, u_input.c, 0u, 0u), vec4<u32>(20429u, var_0.x, var_0.x, var_0.x)), vec4<u32>(u_input.b.x, u_input.c, var_0.x, u_input.b.x)), min(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(25579u, var_0.x, var_0.x, 25860u)), vec4<u32>(1u, u_input.c, var_0.x, var_0.x) & vec4<u32>(var_0.x, u_input.c, var_0.x, var_0.x)), ~vec4<u32>(54237u, 40815u, 55780u, 64235u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.x);
}

