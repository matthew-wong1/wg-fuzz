struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<u32>) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1423f + _wgslsmith_f_op_f32(max(-1485f, 275f))), 1f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1402f, 583f), vec2<f32>(-194f, 215f))))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-528f, -407f))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(134f, 2557f), vec2<f32>(143f, 477f))), select(vec2<bool>(false, false), vec2<bool>(false, true), false))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-603f, -1403f)))))));
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1507f, -1634f) * _wgslsmith_f_op_f32(abs(-1022f))))), var_0.x) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -2177f) * vec2<f32>(-706f, var_0.x)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-492f, -1000f), vec2<f32>(var_0.x, var_0.x), vec2<bool>(false, false))))))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x))))))), _wgslsmith_f_op_f32(var_0.x - 241f));
    let var_1 = Struct_1(0u, !select(vec4<bool>(all(vec3<bool>(true, false, false)), true, true, any(vec3<bool>(false, false, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), true), any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false)))), vec4<bool>(any(select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true)), true)), false, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false))), all(select(vec2<bool>(false, true), vec2<bool>(false, false), true))));
    var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-157f, 1595f) * vec2<f32>(var_0.x, 696f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-130f, var_0.x) - vec2<f32>(var_0.x, var_0.x))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.x, -1436f))))))));
    return var_1.c.xw;
}

fn func_2(arg_0: bool, arg_1: vec4<f32>) -> bool {
    let var_0 = _wgslsmith_clamp_i32(28051i, 26684i, -15036i);
    let var_1 = all(select(!select(!vec2<bool>(arg_0, false), !vec2<bool>(false, arg_0), !vec2<bool>(arg_0, arg_0)), !func_3(u_input.c, vec3<u32>(u_input.c.x, u_input.c.x, 1u) << (vec3<u32>(0u, 1u, u_input.c.x) % vec3<u32>(32u))), all(vec2<bool>(true, true))));
    let var_2 = abs(-43330i);
    let var_3 = true;
    var var_4 = Struct_1(u_input.c.x, !vec4<bool>(u_input.b <= _wgslsmith_dot_vec3_i32(vec3<i32>(var_2, 4214i, var_2), vec3<i32>(u_input.b, var_2, -1i)), arg_0, -1016f <= _wgslsmith_f_op_f32(-arg_1.x), var_3), select(select(select(select(vec4<bool>(false, false, var_3, false), vec4<bool>(arg_0, false, true, false), vec4<bool>(false, arg_0, false, false)), vec4<bool>(true, arg_0, var_1, true), !var_3), select(!vec4<bool>(var_1, true, false, arg_0), select(vec4<bool>(arg_0, true, arg_0, true), vec4<bool>(true, arg_0, arg_0, var_1), vec4<bool>(true, var_3, true, true)), select(vec4<bool>(var_1, false, var_3, true), vec4<bool>(arg_0, false, true, var_1), var_3)), true), !select(!vec4<bool>(true, true, var_3, false), select(vec4<bool>(false, var_3, var_1, arg_0), vec4<bool>(true, arg_0, var_1, var_3), false), select(vec4<bool>(arg_0, var_1, arg_0, true), vec4<bool>(var_1, true, var_1, true), vec4<bool>(false, false, true, true))), vec4<bool>(select(select(var_1, true, arg_0), false, var_1), (24448u & u_input.c.x) > (4294967295u & u_input.c.x), !any(vec3<bool>(var_3, true, arg_0)), any(select(vec4<bool>(var_3, var_3, var_3, false), vec4<bool>(var_3, false, false, true), vec4<bool>(true, var_3, arg_0, var_3))))));
    return var_4.c.x;
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = !(!select(true, func_2(true, vec4<f32>(-1849f, -524f, 183f, 2554f)), ~u_input.a < (u_input.b & u_input.b)));
    var var_1 = vec3<u32>(18101u >> (_wgslsmith_sub_u32(countOneBits(u_input.c.x), 13336u) % 32u), 3129u, arg_0);
    let var_2 = var_1.x;
    let var_3 = Struct_1(59446u, vec4<bool>(select(all(!vec4<bool>(var_0, true, false, false)), false, var_0), true, select(!(!var_0), true, !var_0), all(vec2<bool>(false, var_0 && false))), select(!(!vec4<bool>(var_0, var_0, false, false)), select(select(vec4<bool>(var_0, var_0, false, var_0), vec4<bool>(var_0, var_0, var_0, true), true), !select(vec4<bool>(var_0, var_0, false, false), vec4<bool>(false, var_0, var_0, var_0), vec4<bool>(var_0, var_0, false, false)), !(!vec4<bool>(var_0, var_0, true, var_0))), select(!(!vec4<bool>(true, var_0, true, true)), select(select(vec4<bool>(false, true, var_0, var_0), vec4<bool>(var_0, false, var_0, true), var_0), select(vec4<bool>(true, true, false, true), vec4<bool>(false, var_0, var_0, true), vec4<bool>(var_0, var_0, var_0, false)), true), true || (u_input.b >= u_input.a))));
    var var_4 = 67633u >= max(var_3.a, u_input.c.x);
    return Struct_1(var_3.a, !var_3.b, !select(!select(var_3.b, vec4<bool>(var_3.c.x, true, var_0, var_0), vec4<bool>(var_0, true, false, var_3.b.x)), select(var_3.b, !vec4<bool>(var_0, true, var_0, var_3.c.x), false), !(!var_0)));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(u_input.c.x, !arg_0.c, vec4<bool>(arg_0.b.x, true, true, arg_0.c.x));
    let var_1 = arg_0;
    let var_2 = arg_0;
    var_0 = Struct_1(_wgslsmith_clamp_u32(arg_0.a, ~(~reverseBits(arg_0.a)), _wgslsmith_div_u32(min(var_2.a, var_0.a) ^ 27974u, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a, 1u, 3037u, var_1.a), vec4<u32>(19536u, 4294967295u, var_1.a, arg_0.a))))), var_2.c, !(!vec4<bool>(any(arg_0.b.wz), true, false, true)));
    var_0 = func_1(var_1.a);
    return Struct_1(_wgslsmith_dot_vec4_u32((_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, var_2.a, var_1.a), vec4<u32>(var_2.a, 1u, 4294967295u, 0u)) & vec4<u32>(arg_0.a, 0u, arg_0.a, 0u)) ^ ~max(vec4<u32>(0u, u_input.c.x, 32086u, 4294967295u), vec4<u32>(var_0.a, 50413u, var_0.a, var_2.a)), vec4<u32>(46253u, _wgslsmith_dot_vec3_u32(u_input.c << (vec3<u32>(82713u, 58000u, u_input.c.x) % vec3<u32>(32u)), u_input.c), ~(var_2.a ^ u_input.c.x), 4294967295u)), arg_0.c, vec4<bool>(var_1.c.x || !(arg_0.b.x == true), var_2.c.x, arg_0.b.x, !var_1.b.x));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(35784i, ~u_input.b), 2147483647i, select(0i, _wgslsmith_sub_i32(1i, -10732i), !arg_1.b.x), -23353i), select(~vec4<i32>(66781i, 6767i, -35218i, u_input.b), select(~vec4<i32>(u_input.b, -1i, u_input.a, u_input.b), ~vec4<i32>(-18397i, 21854i, 2147483647i, 1i), any(arg_1.b.xw)), !vec4<bool>(true, var_0.b.x, arg_0.b.x, var_0.c.x))), ~(vec4<i32>(-1i) * -(~vec4<i32>(u_input.b, u_input.b, u_input.a, u_input.a))), -vec4<i32>(_wgslsmith_div_i32(u_input.b, -1i), ~u_input.a, u_input.b & ~2147483647i, -20745i));
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1522f + 1f) * 1000f))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2));
    let var_4 = var_2;
    return var_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(func_5(func_4(func_1(_wgslsmith_dot_vec4_u32(vec4<u32>(9666u, u_input.c.x, 5984u, 51104u), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 1u)))), func_4(Struct_1(firstLeadingBit(60316u), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)))), true, true, all(!vec3<bool>(func_5(Struct_1(u_input.c.x, vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false)), Struct_1(32435u, vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false))), func_5(Struct_1(0u, vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false)), Struct_1(u_input.c.x, vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true))), all(vec4<bool>(true, false, false, true)))));
    let var_1 = vec3<i32>(29634i, select(abs(~(~(-53067i))), i32(-1i) * -34028i, func_2(false, vec4<f32>(1f, 1f, 1f, 1f))), -u_input.b);
    var var_2 = func_1(func_1(_wgslsmith_mod_u32(_wgslsmith_add_u32(~5609u, ~u_input.c.x), 42415u)).a);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-255f, -1150f, 315f, 1143f)))))))));
    var var_4 = vec4<bool>(true, false, true, var_2.b.x);
    let var_5 = func_1(77919u);
    var var_6 = func_1(~(4092u & _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 20366u, var_2.a, var_5.a), vec4<u32>(4294967295u, var_2.a, 0u, 68104u)), u_input.c.x >> (4294967295u % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(var_3.zzx, vec3<f32>(_wgslsmith_div_f32(-1000f, var_3.x), _wgslsmith_f_op_f32(ceil(var_3.x)), _wgslsmith_f_op_f32(var_3.x - -1048f))))), -273f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_3.x)) * 1000f) - -137f))));
}

