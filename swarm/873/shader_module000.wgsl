struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec4<i32>, arg_1: f32) -> vec4<i32> {
    let var_0 = any(!select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), vec3<bool>(false, false, false), true), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)));
    var var_1 = Struct_1(abs(abs(select(u_input.c, u_input.d.x, true))) << (firstLeadingBit(~116314u) % 32u), !select(!select(vec4<bool>(false, true, var_0, false), vec4<bool>(var_0, false, var_0, var_0), vec4<bool>(var_0, true, true, var_0)), !select(vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(false, var_0, var_0, var_0), true), any(select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(true, false, var_0), var_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_1, arg_1, arg_1)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, -1000f, 337f, -1000f) + vec4<f32>(arg_1, arg_1, arg_1, 362f))))))));
    let var_2 = Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.e.x, u_input.c & (var_1.a ^ 53367u)), ~min(~vec2<u32>(60518u, var_1.a), _wgslsmith_clamp_vec2_u32(u_input.d.xy, u_input.e.wz, vec2<u32>(0u, var_1.a)))), vec4<bool>(any(vec2<bool>(any(vec3<bool>(true, false, var_0)), false)), var_0, var_1.b.x, !(!var_1.b.x)), _wgslsmith_f_op_vec4_f32(var_1.c * _wgslsmith_f_op_vec4_f32(-var_1.c)));
    var_1 = var_2;
    let var_3 = arg_0.x;
    return -vec4<i32>(-1i, _wgslsmith_dot_vec2_i32(~_wgslsmith_clamp_vec2_i32(arg_0.wy, vec2<i32>(9549i, arg_0.x), vec2<i32>(var_3, 1i)), -(~vec2<i32>(-1i, -26928i))), u_input.a, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(arg_0, vec4<i32>(43420i, -2147483647i, 27559i, 2147483647i)), arg_0));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec2<u32>, arg_3: vec3<bool>) -> vec2<bool> {
    var var_0 = vec4<i32>(-1i) * -(~vec4<i32>(~9380i, u_input.a ^ -60266i, -u_input.a, ~(-54887i)));
    var var_1 = Struct_1(countOneBits(~_wgslsmith_dot_vec2_u32(~vec2<u32>(23u, arg_2.x), vec2<u32>(arg_2.x, 1u))), arg_0.b, vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.c.x))), arg_0.c.x, _wgslsmith_f_op_f32(-1040f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * arg_0.c.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-1174f)), _wgslsmith_f_op_f32(f32(-1f) * -279f), any(!vec3<bool>(false, arg_3.x, true))))));
    var var_2 = ~func_3(_wgslsmith_clamp_vec4_i32(~max(vec4<i32>(-2147483647i, u_input.a, 0i, 13976i), vec4<i32>(-9865i, var_0.x, 77163i, var_0.x)), _wgslsmith_div_vec4_i32(-vec4<i32>(35172i, u_input.a, u_input.a, 1i), -vec4<i32>(-89288i, var_0.x, var_0.x, u_input.a)), abs(~vec4<i32>(u_input.a, 0i, var_0.x, var_0.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(2187f + _wgslsmith_f_op_f32(-arg_0.c.x)))));
    let var_3 = Struct_1(97043u, var_1.b, vec4<f32>(-315f, arg_0.c.x, _wgslsmith_f_op_f32(ceil(476f)), _wgslsmith_f_op_f32(trunc(-605f))));
    var_2 = max(vec4<i32>(min(u_input.a | var_0.x, max(-6353i, var_0.x)) << (~min(var_3.a, 15169u) % 32u), 18406i, -_wgslsmith_mod_i32(-27280i, 1i), _wgslsmith_mod_i32(-2147483647i, -26444i)), select(_wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.a, u_input.a, -83690i, -33254i) >> (~u_input.e % vec4<u32>(32u)), ~vec4<i32>(u_input.a, var_2.x, var_2.x, var_0.x)), vec4<i32>(var_2.x, 61192i >> (1u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, var_2.x, var_0.x, -18656i), vec4<i32>(1i, 0i, var_0.x, -29352i)), 13833i) >> (abs(vec4<u32>(var_3.a, 65494u, arg_2.x, u_input.d.x)) % vec4<u32>(32u)), arg_3.x));
    return arg_0.b.zx;
}

fn func_1(arg_0: Struct_1) -> vec4<i32> {
    var var_0 = vec3<u32>(_wgslsmith_mod_u32(~(~_wgslsmith_div_u32(13180u, arg_0.a)), 9027u), ~abs(~(~1u)), 50346u);
    var var_1 = arg_0;
    let var_2 = u_input.a;
    var var_3 = ~select(~_wgslsmith_div_vec2_u32(vec2<u32>(1u, 14741u), u_input.e.zz) & var_0.zx, abs(vec2<u32>(var_0.x, 1u)), select(select(arg_0.b.zz, !arg_0.b.yx, true), var_1.b.zz, func_2(arg_0, var_1.c.x, vec2<u32>(u_input.e.x, 4294967295u), !vec3<bool>(arg_0.b.x, var_1.b.x, true))));
    var_1 = arg_0;
    return -(~(firstTrailingBit(-vec4<i32>(var_2, var_2, 1i, 3526i)) >> (vec4<u32>(var_0.x, var_3.x, var_3.x, ~44961u) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec4_i32(countOneBits(-vec4<i32>(firstTrailingBit(u_input.a), 1i, 47761i, 0i)), ~countOneBits(func_1(Struct_1(u_input.b, vec4<bool>(true, false, false, false), vec4<f32>(1443f, -360f, 504f, -576f)))));
    var_0 = vec4<i32>(-1i) * -max(vec4<i32>(-7732i, u_input.a, u_input.a, 81994i) | ~vec4<i32>(-1i, -1i, 0i, u_input.a), select(vec4<i32>(var_0.x, var_0.x, -1i, var_0.x) >> (u_input.e % vec4<u32>(32u)), func_1(Struct_1(u_input.b, vec4<bool>(true, false, true, false), vec4<f32>(1010f, -1104f, -471f, -1968f))), true));
    var_0 = vec4<i32>(-3974i, u_input.a, func_1(Struct_1(u_input.d.x, vec4<bool>(true, true, all(vec4<bool>(false, false, false, true)), true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -351f, 1178f, -498f) - vec4<f32>(1487f, 1135f, 178f, -1440f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(389f, -1703f, -1342f, 1087f) + vec4<f32>(-1429f, -1030f, 2227f, 1241f))))).x, 1i);
    let var_1 = abs(~vec4<u32>(74806u, 10217u, u_input.b, _wgslsmith_sub_u32(~3697u, u_input.e.x)));
    var_0 = -(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-29230i, var_0.x) & var_0.wx, vec2<i32>(-31125i, 0i)), ~u_input.a, _wgslsmith_add_i32(_wgslsmith_mult_i32(-2147483647i, var_0.x), -1i), -24820i) << (var_1 % vec4<u32>(32u)));
    var var_2 = vec3<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(var_0.x, u_input.a, u_input.a << (var_1.x % 32u), func_3(vec4<i32>(-2147483647i, var_0.x, -6003i, u_input.a), 156f).x), _wgslsmith_add_vec4_i32(vec4<i32>(-u_input.a, min(-12664i, var_0.x), _wgslsmith_div_i32(u_input.a, u_input.a), ~u_input.a), ~vec4<i32>(0i, -2147483647i, -25623i, u_input.a) << (min(u_input.e, vec4<u32>(var_1.x, 4294967295u, u_input.e.x, var_1.x)) % vec4<u32>(32u)))), ~(-(~(~2147483647i))), func_3(~_wgslsmith_sub_vec4_i32(~vec4<i32>(var_0.x, u_input.a, 1i, 2147483647i), vec4<i32>(0i, -1i, u_input.a, u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(508f + 840f)))).x);
    let var_3 = ~u_input.b;
    var_0 = -(~vec4<i32>(-4328i, -10140i, 1i, var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(557f, -1256f)), 1f)))), vec2<u32>(u_input.d.x, 0u), -vec2<i32>(-_wgslsmith_sub_i32(var_2.x, var_0.x), abs(2147483647i)));
}

