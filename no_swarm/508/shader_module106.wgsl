struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: f32) -> vec4<bool> {
    var var_0 = Struct_1(vec4<bool>(arg_1.a.x, false, arg_1.a.x, false));
    var_0 = arg_1;
    var var_1 = _wgslsmith_div_i32(-1i, u_input.b);
    var var_2 = arg_1;
    var_0 = arg_1;
    return !arg_1.a;
}

fn func_3(arg_0: u32) -> bool {
    let var_0 = 1i;
    let var_1 = firstTrailingBit(-(i32(-1i) * -_wgslsmith_mod_i32(-66339i, var_0)));
    let var_2 = !all(!vec3<bool>(true, true, select(true, false, false)));
    var var_3 = -(~select(-vec2<i32>(var_0, var_0), firstLeadingBit(firstTrailingBit(vec2<i32>(var_1, u_input.b))), true));
    var var_4 = Struct_1(!(!(!func_2(1u, Struct_1(vec4<bool>(var_2, var_2, true, false)), vec2<u32>(arg_0, u_input.a), -287f))));
    return any(select(select(func_2(u_input.a, Struct_1(vec4<bool>(true, var_2, false, var_4.a.x)), vec2<u32>(38382u, 45696u), -1191f).wwz, !vec3<bool>(var_2, false, var_4.a.x), var_4.a.x), select(var_4.a.wxx, var_4.a.xyx, !var_4.a.x), false)) & true;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<i32>, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = Struct_1(arg_0);
    var var_1 = -660f;
    var_1 = 867f;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-426f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-571f * 1300f))))));
    var var_2 = !arg_2.a.yy;
    return !func_2(_wgslsmith_sub_u32(u_input.a, ~u_input.c), arg_2, vec2<u32>(~u_input.a, ~19444u), _wgslsmith_f_op_f32(-191f + _wgslsmith_f_op_f32(f32(-1f) * -1611f)));
}

fn func_1() -> i32 {
    let var_0 = (~_wgslsmith_clamp_i32(-53202i, u_input.b, ~2274i) << (1u % 32u)) >> (u_input.a % 32u);
    let var_1 = -(~countOneBits(reverseBits(-vec3<i32>(var_0, -1i, var_0))));
    let var_2 = !select(true, true, any(func_2(~u_input.a, Struct_1(vec4<bool>(true, false, true, false)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 639u), vec2<u32>(u_input.a, u_input.a)), -1383f)));
    let var_3 = Struct_1(select(!func_2(49254u, Struct_1(vec4<bool>(var_2, var_2, false, var_2)), ~vec2<u32>(u_input.a, u_input.a), -402f), func_4(vec4<bool>(all(vec4<bool>(var_2, false, var_2, var_2)), true, func_3(u_input.c), var_2), ~vec4<i32>(var_1.x, -21336i, var_1.x, 20279i) ^ -vec4<i32>(var_0, 53792i, var_1.x, var_0), Struct_1(select(vec4<bool>(var_2, false, var_2, true), vec4<bool>(var_2, false, var_2, false), false))), !var_2));
    let var_4 = any(vec3<bool>(func_4(!func_2(u_input.c, Struct_1(var_3.a), vec2<u32>(55084u, 4294967295u), 1690f), vec4<i32>(-1i) * -vec4<i32>(var_1.x, -2147483647i, 15812i, var_1.x), var_3).x, all(!(!vec2<bool>(var_2, var_3.a.x))), true));
    return -59606i;
}

fn func_5(arg_0: u32, arg_1: vec4<i32>) -> Struct_1 {
    let var_0 = -352f;
    var var_1 = max(_wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, -4612i), -vec2<i32>(1i, -29155i), select(~arg_1.wz, -vec2<i32>(arg_1.x, 2147483647i), vec2<bool>(true, true))), firstLeadingBit(_wgslsmith_clamp_vec2_i32(arg_1.xw, _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1.x, u_input.b), arg_1.xz, vec2<i32>(u_input.b, u_input.b)), arg_1.wy)), ~arg_1.yx), ~(-arg_1.xx));
    var_1 = select(vec2<i32>(-1i) * -vec2<i32>(u_input.b, arg_1.x | u_input.b), arg_1.yy, true);
    var_1 = arg_1.xy;
    let var_2 = 60843u;
    return Struct_1(!(!vec4<bool>(1668f <= var_0, true, all(vec4<bool>(true, false, false, true)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec4<bool>(false, !any(vec4<bool>(true, true, true, true)) || !any(vec4<bool>(true, true, false, false)), false, true));
    var var_1 = func_5(~u_input.a, -vec4<i32>(u_input.b | 23763i, ~reverseBits(u_input.b), func_1(), -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 20748i), vec2<i32>(u_input.b, u_input.b))));
    var var_2 = func_5(_wgslsmith_sub_u32(4294967295u, u_input.a), countOneBits(~vec4<i32>(u_input.b, -2147483647i, u_input.b, u_input.b) ^ -(vec4<i32>(-5029i, u_input.b, u_input.b, 2147483647i) | vec4<i32>(u_input.b, 949i, 7330i, u_input.b))));
    var var_3 = func_5(~(~(~max(1u, 4294967295u))), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, -52792i, i32(-1i) * -2147483647i, ~(-2147483647i) ^ func_1()), (reverseBits(vec4<i32>(u_input.b, u_input.b, -46433i, 56935i)) >> ((vec4<u32>(4294967295u, u_input.c, u_input.c, u_input.a) | vec4<u32>(34406u, 12191u, u_input.a, 89325u)) % vec4<u32>(32u))) << (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, u_input.a, u_input.a, 1u), vec4<u32>(u_input.c, u_input.a, u_input.c, 37923u)) % vec4<u32>(32u)), -vec4<i32>(-27524i, -24533i, 2147483647i, min(-2147483647i, u_input.b))));
    var_1 = Struct_1(var_2.a);
    var var_4 = func_5(_wgslsmith_sub_u32(_wgslsmith_mod_u32(~u_input.c, u_input.a), ~u_input.c), vec4<i32>(~max(u_input.b, -32127i) | -1i, abs(_wgslsmith_clamp_i32(3922i, _wgslsmith_div_i32(2147483647i, u_input.b), -u_input.b)), 24588i << (_wgslsmith_mod_u32(~u_input.c, 3139u << (u_input.a % 32u)) % 32u), u_input.b));
    var var_5 = var_3.a.x || var_3.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(-_wgslsmith_div_i32(_wgslsmith_add_i32(u_input.b, u_input.b), -1i << (u_input.c % 32u))), _wgslsmith_mod_u32(82053u, 4294967295u), (select(vec2<u32>(u_input.c, u_input.c), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 5707u), vec2<u32>(u_input.c, 4294967295u)), true) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(5724u, u_input.a), vec2<u32>(1u, u_input.a) | vec2<u32>(u_input.a, 23509u)) % vec2<u32>(32u))) & (~(~vec2<u32>(u_input.a, u_input.c)) >> (vec2<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 5759u, u_input.c), vec3<u32>(1112u, 59215u, 4294967295u))) % vec2<u32>(32u))), u_input.b);
}

