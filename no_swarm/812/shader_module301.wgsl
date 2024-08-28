struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec3<f32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> bool {
    var var_0 = select(false, true, any(vec4<bool>(true, false, true, true)));
    var var_1 = ~(-_wgslsmith_add_i32(select(~(-11014i), i32(-1i) * -13966i, true), -(~2147483647i)));
    var var_2 = Struct_1(reverseBits(_wgslsmith_mult_i32(~0i >> (_wgslsmith_sub_u32(1u, 0u) % 32u), _wgslsmith_sub_i32(26569i, 0i))), ~(~(~u_input.b)), firstTrailingBit(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, u_input.b.x, 0u) >> (_wgslsmith_add_vec3_u32(vec3<u32>(38998u, 3388u, u_input.b.x), vec3<u32>(5137u, u_input.b.x, 1u)) % vec3<u32>(32u)), ~vec3<u32>(u_input.b.x, 9776u, 4294967295u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(128f, -635f, 1469f), vec3<f32>(471f, 1565f, -3232f))), vec3<f32>(1000f, -1395f, -1000f)), vec3<f32>(-704f, _wgslsmith_f_op_f32(743f + 233f), _wgslsmith_div_f32(758f, -738f))))), _wgslsmith_mult_vec2_u32(u_input.b, _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, u_input.a.x >> (u_input.c % 32u)), vec2<u32>(_wgslsmith_clamp_u32(u_input.b.x, 4294967295u, u_input.c), u_input.b.x))));
    var var_3 = 2147483647i;
    var_2 = Struct_1(~((~(-22793i) >> (u_input.a.x % 32u)) << ((var_2.e.x | (3721u >> (0u % 32u))) % 32u)), ~select(_wgslsmith_add_vec2_u32(vec2<u32>(1u, u_input.b.x), vec2<u32>(4294967295u, u_input.c)), vec2<u32>(1u, var_2.c), true) & ~vec2<u32>(abs(17184u), 9247u), _wgslsmith_clamp_u32(min(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, var_2.b.x), var_2.b), abs(~88313u)), 1u, _wgslsmith_clamp_u32(69332u, ~17120u, 0u) ^ 1u), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.d.x, _wgslsmith_f_op_f32(-3350f - _wgslsmith_f_op_f32(-var_2.d.x)), _wgslsmith_f_op_f32(exp2(var_2.d.x))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1111f, 1308f, -362f) * var_2.d)))))), firstTrailingBit(max(var_2.e, firstLeadingBit(var_2.b))));
    return select(true, true, false);
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = Struct_1(~(-54199i), ~u_input.b, 0u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(111f, 718f, -232f) + vec3<f32>(1698f, 635f, 743f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1223f, -431f, 1000f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1106f, -225f, -1107f)), func_3())) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1342f, 218f, -318f) - vec3<f32>(-1000f, 553f, -1000f))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1209f, -177f, 1765f), vec3<f32>(-1812f, 574f, 1000f))))), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, abs(u_input.b.x)), vec2<u32>(1u ^ ~u_input.a.x, 21974u)));
    let var_1 = var_0;
    var var_2 = var_1;
    var var_3 = vec4<bool>(all(!(!select(vec3<bool>(arg_0.x, true, true), vec3<bool>(false, arg_0.x, arg_0.x), arg_0.x))), true, true, var_0.a == 5334i);
    var_2 = var_1;
    return Struct_1(_wgslsmith_add_i32(1i, _wgslsmith_clamp_i32(min(-2147483647i, countOneBits(-11308i)), -39776i, 2147483647i & ~var_2.a)), select(~_wgslsmith_mult_vec2_u32(firstLeadingBit(vec2<u32>(64810u, 8126u)), ~var_1.b), ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(15932u, 1u), vec2<u32>(var_0.b.x, var_2.c))), select(var_3.zz, vec2<bool>(all(vec3<bool>(false, var_3.x, arg_0.x)), !arg_0.x), vec2<bool>(var_3.x, var_3.x))), var_0.e.x, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_1.d.x, var_2.d.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-697f - var_2.d.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-139f * var_0.d.x) * -2131f))), _wgslsmith_div_f32(var_2.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -578f)))), ~(~(~vec2<u32>(u_input.c, var_1.c) << (~u_input.b % vec2<u32>(32u)))));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: f32) -> vec3<bool> {
    var var_0 = func_2(!(!vec2<bool>(arg_0.x || arg_0.x, arg_0.x))).d.x;
    let var_1 = !vec2<bool>(any(arg_0), !any(arg_0.ywy));
    var var_2 = arg_1;
    var_2 = Struct_1(~(-arg_1.a), _wgslsmith_clamp_vec2_u32(var_2.b, u_input.a, vec2<u32>(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 62584u, arg_1.c), vec3<u32>(var_2.e.x, var_2.e.x, 73924u))), 1u)), arg_1.b.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.d - arg_1.d), _wgslsmith_f_op_vec3_f32(arg_1.d + vec3<f32>(-979f, arg_1.d.x, arg_1.d.x)))))), vec2<u32>(~0u, 1u));
    return arg_0.xyz;
}

fn func_1() -> vec3<bool> {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(-578f + _wgslsmith_div_f32(-567f, 1687f));
    let var_2 = var_0;
    var var_3 = 4294967295u;
    var var_4 = select(true, select(true & (_wgslsmith_f_op_f32(exp2(var_1)) != _wgslsmith_f_op_f32(step(293f, -859f))), select(any(!vec4<bool>(var_0, var_2, var_2, true)), var_2, true), any(select(vec2<bool>(var_2, true), vec2<bool>(var_0, var_0), vec2<bool>(true, false))) & var_2), true);
    return select(select(vec3<bool>((u_input.c == u_input.a.x) || (false | var_0), any(!vec4<bool>(true, var_2, true, var_0)), all(vec3<bool>(var_2, var_0, var_0))), vec3<bool>(var_0, true, var_2), var_0), !vec3<bool>(var_0, true, !var_2), select(!func_4(select(vec4<bool>(false, var_0, true, true), vec4<bool>(var_2, var_2, true, false), var_2), func_2(vec2<bool>(true, true)), 2623f), select(vec3<bool>(var_0, !var_2, any(vec2<bool>(true, true))), vec3<bool>(true, all(vec2<bool>(var_2, true)), false), var_0), !select(vec3<bool>(var_0, false, var_2), !vec3<bool>(var_2, true, true), !vec3<bool>(false, var_0, var_2))));
}

fn func_5(arg_0: vec3<bool>) -> StorageBuffer {
    var var_0 = ~(~(~vec4<u32>(0u | u_input.b.x, ~u_input.b.x, u_input.b.x | 1u, ~31647u)));
    let var_1 = Struct_1(firstTrailingBit(2147483647i), select(~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, u_input.b.x), u_input.a), (_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 0u), u_input.b) & max(vec2<u32>(83145u, u_input.c), u_input.a)) ^ (u_input.b | vec2<u32>(var_0.x, var_0.x)), arg_0.xx), 14449u, vec3<f32>(1f, 1f, 1f), abs(~_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a, vec2<u32>(30773u, 39944u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.x, u_input.a.x), vec2<u32>(var_0.x, u_input.b.x), vec2<u32>(1u, 30882u)))));
    let var_2 = -922f > var_1.d.x;
    var var_3 = _wgslsmith_f_op_f32(-103f - 2492f);
    let var_4 = var_0.ywz;
    return StorageBuffer(var_1.e.x, vec4<i32>(var_1.a, -firstLeadingBit(-var_1.a), _wgslsmith_sub_i32(min(var_1.a, ~var_1.a), ~(-2147483647i & var_1.a)), var_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(!select(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false), func_1(), any(func_4(vec4<bool>(true, true, false, true), Struct_1(-1i, u_input.a, 12564u, vec3<f32>(807f, 519f, 249f), u_input.a), -705f).yz)));
}

