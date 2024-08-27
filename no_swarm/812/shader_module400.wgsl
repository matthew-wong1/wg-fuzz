struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec4<u32>) -> bool {
    var var_0 = !(!any(!vec2<bool>(arg_1.b.b.x, arg_1.b.b.x)));
    var_0 = !(!(all(select(vec3<bool>(arg_1.b.b.x, false, arg_2.b.x), vec3<bool>(arg_1.b.b.x, arg_1.b.b.x, arg_2.b.x), vec3<bool>(arg_1.b.b.x, arg_1.b.b.x, arg_1.b.b.x))) && any(vec3<bool>(arg_1.b.b.x, true, arg_1.b.b.x))));
    var var_1 = (u_input.d & -firstLeadingBit(-vec3<i32>(u_input.b, -1i, 50600i))) >> (~vec3<u32>(arg_0, 17780u, _wgslsmith_div_u32(arg_0 << (1u % 32u), _wgslsmith_add_u32(arg_0, 4294967295u))) % vec3<u32>(32u));
    var_0 = true;
    var_1 = abs(u_input.d);
    return arg_2.b.x;
}

fn func_2(arg_0: f32, arg_1: vec2<f32>, arg_2: vec3<bool>) -> f32 {
    var var_0 = vec2<bool>(true, (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + arg_0) - arg_0) < 1763f) || func_3(u_input.a.x, Struct_2(vec2<f32>(arg_1.x, -1792f), Struct_1(-15873i, vec4<bool>(true, arg_2.x, false, arg_2.x))), Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, 2147483647i, 14324i, u_input.b), vec4<i32>(-54128i, u_input.d.x, u_input.b, u_input.d.x)), vec4<bool>(arg_2.x, false, true, arg_2.x)), abs(reverseBits(vec4<u32>(4294967295u, u_input.c, 17205u, 40544u)))));
    let var_1 = ~firstTrailingBit(~(~9908u));
    let var_2 = 1u;
    let var_3 = u_input.a;
    var var_4 = Struct_2(vec2<f32>(arg_0, _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(select(100f, _wgslsmith_f_op_f32(-arg_1.x), !var_0.x)))), Struct_1(u_input.b, !(!(!vec4<bool>(true, arg_2.x, var_0.x, arg_2.x)))));
    return arg_0;
}

fn func_1() -> u32 {
    var var_0 = any(vec2<bool>(true, _wgslsmith_f_op_f32(221f * -954f) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(252f, vec2<f32>(-1011f, 1187f), vec3<bool>(false, true, true))))));
    var_0 = !all(select(vec2<bool>(any(vec2<bool>(false, false)), select(true, false, false)), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), true));
    var_0 = !all(vec2<bool>(true, true)) && false;
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-237f, _wgslsmith_f_op_f32(f32(-1f) * -129f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1028f, 1163f), vec2<f32>(1058f, 667f), vec2<bool>(false, false))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(580f, -1745f))) + vec2<f32>(-1018f, _wgslsmith_f_op_f32(step(-959f, -1000f))))), Struct_1(-(u_input.b << (u_input.c % 32u)), !vec4<bool>(u_input.a.x < u_input.a.x, all(vec4<bool>(true, false, true, false)), false, true)));
    var_0 = var_1.b.b.x;
    return u_input.c;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1) -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1258f, 508f), vec2<f32>(328f, 1389f))) - vec2<f32>(_wgslsmith_f_op_f32(trunc(-316f)), -432f)) - vec2<f32>(-1935f, 1000f)), arg_1);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, 774f, -174f) - vec3<f32>(-116f, var_0.a.x, var_0.a.x)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.a.x, -1050f, var_0.a.x))), false))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -697f), _wgslsmith_f_op_f32(sign(var_0.a.x)), -839f) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-795f, -1147f, 1004f))))));
    return Struct_2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(1140f + 779f), _wgslsmith_f_op_f32(-var_0.a.x)), var_1.zy)))), Struct_1(select(-firstLeadingBit(arg_1.a), firstTrailingBit(1i), arg_1.b.x), select(vec4<bool>(var_0.b.b.x | var_0.b.b.x, !arg_1.b.x, true, select(false, true, false)), select(vec4<bool>(arg_1.b.x, arg_1.b.x, true, var_0.b.b.x), vec4<bool>(arg_1.b.x, arg_1.b.x, true, false), select(vec4<bool>(arg_1.b.x, var_0.b.b.x, false, arg_1.b.x), vec4<bool>(var_0.b.b.x, false, arg_1.b.x, arg_1.b.x), vec4<bool>(true, false, true, false))), vec4<bool>(false, false, true, arg_1.b.x | arg_1.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_add_vec2_u32(vec2<u32>(func_1(), ~22513u), vec2<u32>(u_input.c, _wgslsmith_clamp_u32(u_input.c, 0u, 0u))), Struct_1(~_wgslsmith_clamp_i32(~2147483647i, _wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(u_input.b, -1i, -1i)), u_input.d.x), vec4<bool>(false, true, all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true))), select(true, all(vec4<bool>(false, true, false, false)), u_input.d.x >= -17885i))));
    let var_1 = func_4(vec2<u32>(u_input.c, u_input.a.x), func_4(reverseBits(u_input.a.yz), func_4(firstTrailingBit(u_input.a.yw) ^ u_input.a.zw, func_4(max(vec2<u32>(65247u, 15163u), vec2<u32>(42219u, 37943u)), Struct_1(5263i, var_0.b.b)).b).b).b).b;
    var var_2 = vec2<bool>(var_1.b.x, u_input.b <= ~(~(-5655i)));
    let var_3 = all(vec3<bool>(!var_2.x, select(false, true, var_1.b.x) && func_4(min(vec2<u32>(4294967295u, u_input.c), u_input.a.xz), var_1).b.b.x, var_1.b.x));
    let var_4 = vec3<u32>(abs(_wgslsmith_mod_u32(u_input.c, 74556u)), _wgslsmith_div_u32(u_input.a.x, _wgslsmith_mult_u32(u_input.c, firstLeadingBit(0u))), max(reverseBits(28286u), max(30408u, u_input.c ^ u_input.a.x)));
    var var_5 = 1u;
    var_2 = !vec2<bool>(func_4(countOneBits(vec2<u32>(29094u, 3112u)), func_4(_wgslsmith_mod_vec2_u32(vec2<u32>(var_4.x, 1u), vec2<u32>(u_input.a.x, 0u)), Struct_1(u_input.b, var_0.b.b)).b).b.b.x, !((var_1.b.x && true) && (var_1.b.x | false)));
    var_2 = !(!select(func_4(vec2<u32>(var_4.x, 1u), func_4(vec2<u32>(var_4.x, var_4.x), Struct_1(-2147483647i, var_1.b)).b).b.b.wx, !vec2<bool>(var_1.b.x, false), var_0.b.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.b, var_1.a, 2147483647i << ((0u ^ u_input.c) % 32u), _wgslsmith_mult_i32(var_0.b.a, 36502i)), u_input.d.x, var_4.x);
}

