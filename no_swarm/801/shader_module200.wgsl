struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec2<bool>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32, arg_1: vec2<f32>) -> u32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2271f))) - 285f) - _wgslsmith_f_op_f32(floor(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1108f))));
    var var_1 = arg_1.x;
    let var_2 = vec3<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(min(-22543i, -1i) | _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 1737i, -3639i, 2147483647i), vec4<i32>(-3252i, 1764i, -1060i, -14397i)), 1i, -2147483647i), firstLeadingBit(-(~vec3<i32>(0i, -18612i, 0i)))), abs((2147483647i & (-2147483647i >> (arg_0 % 32u))) << (25195u % 32u)));
    var_1 = arg_1.x;
    let var_3 = Struct_1(!vec4<bool>(all(vec2<bool>(false, false)), any(vec4<bool>(true, true, false, false)), _wgslsmith_f_op_f32(exp2(arg_1.x)) >= _wgslsmith_f_op_f32(-arg_1.x), false), -1i, select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), !select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(true, false)), vec2<bool>(true, true), true), any(select(vec2<bool>(any(vec4<bool>(false, true, false, true)), true), vec2<bool>(true, true), vec2<bool>(true, true))));
    return firstLeadingBit(~_wgslsmith_sub_u32(0u, _wgslsmith_clamp_u32(~1u, 49847u | arg_0, ~12345u)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>) -> vec2<i32> {
    var var_0 = true;
    var var_1 = arg_0;
    var var_2 = arg_0;
    var_1 = Struct_1(!select(!select(vec4<bool>(var_2.d, true, false, true), var_2.a, arg_0.d), vec4<bool>(true, var_1.a.x, false, !var_1.d), false), ~(-27881i), var_2.a.xz, false);
    var_1 = arg_0;
    return ~vec2<i32>(-1i, arg_0.b);
}

fn func_2(arg_0: Struct_1) -> f32 {
    let var_0 = Struct_1(!(!(!vec4<bool>(true, arg_0.a.x, arg_0.d, false))), arg_0.b, arg_0.a.yw, any(arg_0.a));
    let var_1 = var_0;
    let var_2 = func_4(arg_0, vec3<u32>(~abs(28912u), select(u_input.a, u_input.a, select(false, var_1.c.x & true, true)), 1u | ~func_3(36507u, vec2<f32>(-752f, 1000f))));
    let var_3 = arg_0;
    var var_4 = arg_0;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-2094f, -1627f, true)) - _wgslsmith_f_op_f32(abs(-267f)))) * -1361f)));
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: vec3<bool>) -> i32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2148f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_0)), arg_0)))), arg_0, -1228f);
    let var_1 = Struct_1(vec4<bool>(false, select(any(arg_2.yx), -1160f > _wgslsmith_f_op_f32(func_2(Struct_1(vec4<bool>(false, arg_2.x, arg_2.x, arg_2.x), arg_1, vec2<bool>(false, false), true))), !arg_2.x), any(vec4<bool>(true, true, true && arg_2.x, arg_2.x)), any(!select(arg_2.xy, arg_2.xx, vec2<bool>(arg_2.x, false)))), ~1i, vec2<bool>(reverseBits(-24007i) == arg_1, false | arg_2.x), !(!arg_2.x || true));
    let var_2 = select(!vec4<bool>(any(!arg_2), all(!vec2<bool>(arg_2.x, arg_2.x)), arg_2.x, false), select(!(!select(var_1.a, var_1.a, vec4<bool>(true, arg_2.x, true, var_1.a.x))), select(vec4<bool>(false, any(var_1.a.xzz), any(vec2<bool>(true, arg_2.x)), var_1.d), !(!var_1.a), vec4<bool>(!arg_2.x, true, false, false)), var_1.a), var_1.a);
    var var_3 = Struct_1(select(var_1.a, !var_1.a, any(select(select(vec3<bool>(true, false, var_1.a.x), vec3<bool>(arg_2.x, true, var_2.x), var_1.d), select(var_2.wzw, arg_2, vec3<bool>(false, arg_2.x, false)), false))), ~(-2854i), !(!vec2<bool>(false && arg_2.x, false)), false);
    var var_4 = var_0.x;
    return -25486i;
}

fn func_5(arg_0: vec4<u32>, arg_1: bool, arg_2: vec4<i32>, arg_3: Struct_1) -> bool {
    let var_0 = arg_3;
    var var_1 = _wgslsmith_f_op_f32(1020f * -1706f);
    var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -626f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(581f - -436f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-739f, _wgslsmith_f_op_f32(f32(-1f) * -1252f)))))));
    var var_2 = Struct_1(!var_0.a, ~firstTrailingBit(-_wgslsmith_add_i32(arg_2.x, var_0.b)), arg_3.c, !(!(!var_0.a.x)));
    var_2 = Struct_1(select(vec4<bool>(var_2.d, any(arg_3.a), true, !(!var_0.d)), select(vec4<bool>(true, true, true, true), !vec4<bool>(var_2.c.x, false, arg_1, true), firstLeadingBit(-32364i) != arg_3.b), vec4<bool>(!all(vec2<bool>(true, true)), true, any(vec2<bool>(true, false)), false)), 0i, arg_3.c, true);
    return !(true | (arg_2.x > -27834i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -164f;
    let var_1 = Struct_1(vec4<bool>(func_5(~(vec4<u32>(u_input.a, 13507u, 4294967295u, 4174u) << (vec4<u32>(u_input.a, 5018u, u_input.a, u_input.a) % vec4<u32>(32u))), any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false)), vec4<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(102547i, 2147483647i, -2147483647i), vec3<i32>(1455i, 11681i, -33143i)), func_1(-1299f, 0i, vec3<bool>(false, false, true)), abs(-43958i)), Struct_1(vec4<bool>(true, true, true, true), 2147483647i, select(vec2<bool>(true, true), vec2<bool>(false, false), false), true)), select(true, true, all(vec3<bool>(true, true, true))), true, firstLeadingBit(~(-23106i)) >= _wgslsmith_div_i32(abs(-35460i), select(0i, 0i, false))), (_wgslsmith_div_i32(i32(-1i) * -8995i, ~(-47588i)) & (1i ^ func_1(2207f, -68167i, vec3<bool>(true, true, false)))) | 9004i, !vec2<bool>(all(vec2<bool>(true, true)), true), all(select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false))), vec4<bool>(all(vec2<bool>(true, false)), any(vec2<bool>(false, false)), any(vec2<bool>(true, false)), true), vec4<bool>(true, true, true, all(vec4<bool>(false, false, false, false))))));
    let var_2 = select(var_1.c.x, true, var_1.b == abs(20083i >> (u_input.a % 32u)));
    let var_3 = 14518i;
    var var_4 = var_1;
    var var_5 = ~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a & u_input.a, ~u_input.a, u_input.a), ~vec3<u32>(u_input.a, u_input.a, u_input.a)) >> (select(~(~(vec3<u32>(4294967295u, 0u, 1u) ^ vec3<u32>(u_input.a, 14394u, u_input.a))), vec3<u32>(~(u_input.a << (4294967295u % 32u)), max(~2884u, 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a) >> (vec3<u32>(20704u, u_input.a, u_input.a) % vec3<u32>(32u)), reverseBits(vec3<u32>(u_input.a, 43586u, u_input.a)))), false) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -335f) - -995f)))), (max(vec3<u32>(35508u, u_input.a, u_input.a), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.a, 4294967295u), vec3<u32>(var_5.x, 4294967295u, u_input.a), vec3<u32>(u_input.a, 4294967295u, u_input.a))) & ~(~vec3<u32>(4294967295u, 0u, 1u))) & vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), ~vec4<u32>(u_input.a, u_input.a, 2319u, 6412u)), max(u_input.a, u_input.a) & 38010u, var_5.x << (_wgslsmith_mult_u32(u_input.a, u_input.a) % 32u)), ~(~0u), countOneBits(19103u), _wgslsmith_f_op_f32(-1461f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -815f)))))));
}

