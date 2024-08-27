struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> f32 {
    var var_0 = ~(~min(u_input.c.x ^ _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.d.x, 50238u, u_input.d.x), vec4<u32>(4294967295u, 6048u, 4294967295u, 47871u)), _wgslsmith_mult_u32(u_input.c.x, 4294967295u)));
    var var_1 = Struct_1(u_input.b, !arg_1.b, _wgslsmith_f_op_f32(round(1558f)));
    var_1 = arg_1;
    let var_2 = select(~abs(vec3<i32>(arg_1.a.x, arg_1.a.x ^ u_input.b.x, u_input.b.x ^ arg_0.x)), firstTrailingBit(~vec3<i32>(var_1.a.x, 60205i, var_1.a.x)) >> (u_input.d.zzw % vec3<u32>(32u)), select(all(!var_1.b), var_1.b.x, arg_0.x == (1i << (u_input.c.x % 32u))) || arg_1.b.x);
    let var_3 = arg_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -764f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-620f)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_3.c - var_1.c)))), arg_1.b.x)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32) -> vec3<bool> {
    let var_0 = vec4<i32>(3660i, ~arg_0.a.a.x, reverseBits(min(_wgslsmith_mult_i32(-8793i, arg_0.c), ~0i)), 2147483647i) ^ min(_wgslsmith_sub_vec4_i32(-(~vec4<i32>(1i, arg_1.a.a.x, arg_1.c, u_input.b.x)), firstLeadingBit(abs(vec4<i32>(arg_0.a.a.x, u_input.a, arg_0.c, u_input.e)))), countOneBits(~(-vec4<i32>(arg_0.c, 1655i, arg_1.a.a.x, -1i))));
    var var_1 = arg_1.a.b;
    var_1 = arg_1.a.b;
    let var_2 = ~vec2<u32>(abs(2191u), u_input.c.x) | u_input.c;
    var_1 = arg_1.a.b;
    return select(select(select(!(!vec3<bool>(true, arg_0.a.b.x, false)), vec3<bool>(true, true, true), var_1.x), select(select(arg_0.a.b, select(arg_0.a.b, arg_1.a.b, var_1.x), arg_0.a.b.x), select(select(arg_0.a.b, arg_1.a.b, arg_1.a.b), vec3<bool>(false, arg_0.a.b.x, arg_1.a.b.x), vec3<bool>(arg_1.a.b.x, false, false)), arg_0.a.b), select(arg_1.a.b, select(arg_0.a.b, arg_1.a.b, var_1.x), all(select(vec4<bool>(true, true, arg_1.a.b.x, true), vec4<bool>(false, true, arg_0.a.b.x, true), arg_0.a.b.x)))), vec3<bool>(arg_1.a.a.x < _wgslsmith_div_i32(u_input.a, -arg_0.a.a.x), 4294967295u < (~79171u >> (var_2.x % 32u)), false), !vec3<bool>(any(vec3<bool>(false, true, false)), any(!vec2<bool>(var_1.x, arg_1.a.b.x)), !(0u < var_2.x)));
}

fn func_2(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_1) -> i32 {
    let var_0 = Struct_2(Struct_1(-select(u_input.b, _wgslsmith_mult_vec2_i32(arg_2.a, u_input.b), vec2<bool>(arg_0.x, arg_2.b.x)), func_4(Struct_2(arg_2, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c, -671f, 449f, -962f)), arg_2.a.x), Struct_2(Struct_1(u_input.b, arg_0.wyy, -414f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c, -1777f, arg_2.c, -1721f)), countOneBits(u_input.a)), _wgslsmith_f_op_f32(func_3(vec4<i32>(arg_2.a.x, -23127i, arg_2.a.x, -6898i), arg_2))), _wgslsmith_f_op_f32(arg_2.c * _wgslsmith_f_op_f32(-arg_2.c))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(vec4<i32>(59903i, arg_2.a.x, -2147483647i, 0i), Struct_1(vec2<i32>(19434i, -8203i), vec3<bool>(arg_0.x, arg_0.x, false), -773f))), 943f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -189f) * _wgslsmith_f_op_f32(-arg_2.c)), 1351f, arg_2.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c, _wgslsmith_f_op_f32(arg_2.c * arg_2.c), arg_2.c, arg_2.c)))), firstLeadingBit(select(abs(19663i), ~u_input.a, arg_0.x)));
    let var_1 = Struct_2(var_0.a, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.c, var_0.b.x, -353f, var_0.a.c)) * vec4<f32>(1445f, 662f, 1000f, -1198f))))), 0i);
    let var_2 = var_1;
    let var_3 = vec3<bool>(true, !var_1.a.b.x, var_1.a.b.x);
    var var_4 = Struct_1(vec2<i32>(~arg_2.a.x, 1i), func_4(Struct_2(Struct_1(firstLeadingBit(vec2<i32>(var_1.c, -1i)), arg_2.b, _wgslsmith_f_op_f32(min(1354f, 836f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.b) * vec4<f32>(var_0.a.c, arg_2.c, 744f, 402f)), 0i), Struct_2(var_2.a, _wgslsmith_div_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(3076f, 701f, arg_2.c, var_1.b.x))), -2147483647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(var_1.b.x, -1000f)), _wgslsmith_f_op_f32(trunc(var_0.a.c)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -653f)))), _wgslsmith_f_op_f32(f32(-1f) * -1213f));
    return ~(~_wgslsmith_clamp_i32(-13234i, var_1.a.a.x, max(~u_input.e, _wgslsmith_add_i32(var_0.c, 1i))));
}

fn func_1(arg_0: u32, arg_1: f32) -> bool {
    var var_0 = _wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(min(-49026i, u_input.a) >> (_wgslsmith_sub_u32(37005u, u_input.d.x) % 32u), u_input.b.x, _wgslsmith_div_i32(u_input.a, func_2(vec4<bool>(false, false, false, true), 0u, Struct_1(vec2<i32>(u_input.e, 7745i), vec3<bool>(true, true, true), arg_1))), 2147483647i)), _wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(u_input.b.x, abs(u_input.a), select(u_input.b.x, u_input.b.x, true), i32(-1i) * -38604i)), ~_wgslsmith_add_vec4_i32(~vec4<i32>(27461i, u_input.a, -2147483647i, 10065i), select(vec4<i32>(u_input.a, 1i, u_input.a, u_input.a), vec4<i32>(u_input.e, u_input.e, u_input.a, u_input.a), vec4<bool>(true, false, false, false))), select(select(-vec4<i32>(u_input.e, u_input.a, -1i, u_input.a), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.e, -32211i, -2147483647i, 2147483647i), vec4<i32>(u_input.b.x, u_input.b.x, 1720i, -21599i)), true), reverseBits(~vec4<i32>(u_input.e, u_input.b.x, 9454i, u_input.e)), vec4<bool>(true, true, true, true))));
    let var_1 = arg_0 > 117574u;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1153f, arg_1, 234f)) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1, 562f, 1000f)))))));
    let var_3 = _wgslsmith_f_op_f32(min(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2.x, 867f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - -111f) - _wgslsmith_f_op_f32(func_3(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, u_input.e, 1i, 4342i), vec4<i32>(2147483647i, 8879i, u_input.b.x, -2147483647i), vec4<i32>(55198i, var_0.x, 0i, var_0.x)), Struct_1(var_0.yx, vec3<bool>(var_1, false, false), var_2.x)))))));
    var_0 = vec4<i32>(-2941i, 40019i, 2147483647i, var_0.x);
    return true;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = !select(select(select(vec4<bool>(false, false, arg_0.b.x, arg_0.b.x), !vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, true), u_input.c.x <= 19188u), select(!vec4<bool>(arg_0.b.x, false, false, arg_0.b.x), vec4<bool>(arg_0.b.x, true, arg_0.b.x, true), false), all(!vec3<bool>(true, arg_0.b.x, arg_0.b.x))), select(!(!vec4<bool>(true, true, arg_0.b.x, arg_0.b.x)), select(select(vec4<bool>(arg_0.b.x, false, true, arg_0.b.x), vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, false), false), select(vec4<bool>(true, true, arg_0.b.x, arg_0.b.x), vec4<bool>(arg_0.b.x, arg_0.b.x, false, arg_0.b.x), vec4<bool>(true, arg_0.b.x, false, arg_0.b.x)), all(vec3<bool>(arg_0.b.x, arg_0.b.x, false))), any(vec2<bool>(true, true))), !vec4<bool>(arg_0.b.x, !arg_0.b.x, arg_0.b.x, true));
    var var_1 = Struct_1(max(arg_1, ~firstLeadingBit(_wgslsmith_add_vec2_i32(arg_0.a, arg_0.a))), func_4(Struct_2(arg_0, vec4<f32>(-190f, -200f, -1000f, _wgslsmith_f_op_f32(func_3(vec4<i32>(0i, 16899i, arg_0.a.x, arg_0.a.x), arg_0))), -35853i), Struct_2(Struct_1(vec2<i32>(arg_0.a.x, u_input.e) >> (u_input.d.yw % vec2<u32>(32u)), vec3<bool>(arg_0.b.x, false, var_0.x), _wgslsmith_f_op_f32(-arg_0.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1453f, 1491f, arg_0.c, arg_0.c))) + vec4<f32>(278f, 802f, 938f, 527f)), arg_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-697f, _wgslsmith_f_op_f32(max(arg_0.c, -461f)))) - arg_0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c)));
    var var_2 = Struct_2(arg_0, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-636f, var_1.c, var_1.c, var_1.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c, arg_0.c, -1000f, -1000f) + vec4<f32>(arg_0.c, var_1.c, 2749f, arg_0.c)))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c, arg_0.c, var_1.c, arg_0.c)))))), -(~(-18451i)));
    var_1 = Struct_1(arg_1, var_1.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c - 1346f) + _wgslsmith_f_op_f32(exp2(arg_0.c))))))));
    var_1 = Struct_1(reverseBits(max(~(~u_input.b), arg_1)), select(select(arg_0.b, vec3<bool>(all(arg_0.b.zy), true, !var_1.b.x), var_0.wzy), !vec3<bool>(var_2.a.b.x, var_0.x, true), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-370f - _wgslsmith_f_op_f32(-var_1.c))))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_1(vec2<i32>(~abs(24964i), u_input.e), vec3<bool>(true, func_1(_wgslsmith_mod_u32(u_input.d.x, u_input.c.x), _wgslsmith_f_op_f32(sign(-1762f))), true), 665f), -reverseBits(firstLeadingBit(abs(u_input.b))));
    let var_1 = _wgslsmith_div_u32(55182u, u_input.c.x) ^ _wgslsmith_mult_u32(4294967295u, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 0u, u_input.d.x), ~u_input.d.wyz), 1u));
    let var_2 = 806u;
    let var_3 = ~(u_input.e & _wgslsmith_add_i32(~var_0.a.x, _wgslsmith_mod_i32(_wgslsmith_add_i32(14616i, var_0.a.x), _wgslsmith_sub_i32(65984i, u_input.a))));
    var var_4 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, -743f))));
    var var_5 = ~func_2(vec4<bool>(select(var_1 != 12808u, any(var_0.b), var_0.b.x), var_0.b.x, true | select(var_0.b.x, false, false), var_0.b.x), u_input.d.x, Struct_1(vec2<i32>(firstLeadingBit(var_3), -var_3), !var_0.b, _wgslsmith_f_op_f32(abs(var_0.c))));
    let var_6 = _wgslsmith_add_u32(1u, abs(~(u_input.c.x & 1u)) >> (var_2 % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(~(~1u), _wgslsmith_dot_vec3_u32(u_input.d.yzw, ~u_input.d.wzz));
}

