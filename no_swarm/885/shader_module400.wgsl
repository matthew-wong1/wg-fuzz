struct Struct_1 {
    a: u32,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: f32,
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: vec4<i32>) -> bool {
    let var_0 = vec2<f32>(-1687f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-805f + -1031f), -485f) + _wgslsmith_f_op_f32(-1011f + 1f)) - -477f));
    var var_1 = Struct_1(max(_wgslsmith_add_u32(~20246u, arg_1.x >> (17165u % 32u)) & u_input.c.x, ~(~arg_1.x)), 1i, true);
    var var_2 = 1u;
    let var_3 = countOneBits(max(0i, firstLeadingBit(-(var_1.b >> (arg_1.x % 32u)))));
    var_1 = Struct_1(~countOneBits(abs(18538u)), 21074i, any(!select(!arg_0.yy, vec2<bool>(true, true), arg_0.x)));
    return true;
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: f32) -> u32 {
    return 71560u;
}

fn func_2(arg_0: i32) -> vec4<f32> {
    var var_0 = vec2<u32>(func_4(_wgslsmith_mult_i32(select(u_input.b.x, ~u_input.b.x, func_3(vec4<bool>(false, false, true, true), vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), vec4<i32>(-17518i, arg_0, -13604i, -1i))), select(-2147483647i, -2147483647i ^ u_input.e, func_3(vec4<bool>(false, true, true, false), vec3<u32>(u_input.c.x, 77250u, 4294967295u), vec4<i32>(u_input.a, u_input.e, arg_0, u_input.a)))), 39736i, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(998f - 752f), 621f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(342f * 700f)))))), ~u_input.c.x);
    var_0 = abs(countOneBits(vec2<u32>(func_4(arg_0, arg_0, -2380f) >> (0u % 32u), 10252u)));
    var var_1 = Struct_1(min(var_0.x, var_0.x), min(-abs(-16180i), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-62307i, 0i, -36602i), u_input.b), _wgslsmith_div_vec3_i32(~vec3<i32>(12280i, arg_0, arg_0), vec3<i32>(arg_0, arg_0, u_input.a)))), true);
    var_1 = Struct_1(_wgslsmith_sub_u32(u_input.c.x, select(1u, 5614u, all(vec2<bool>(var_1.c, var_1.c)))), u_input.e, true);
    var var_2 = Struct_1(_wgslsmith_div_u32(1u, func_4(18218i, -1i, 2426f) ^ var_1.a) | func_4(-1i, _wgslsmith_dot_vec3_i32(~vec3<i32>(arg_0, u_input.b.x, arg_0), vec3<i32>(31440i, -74889i, var_1.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-222f, -790f)) * 401f)), ~(-countOneBits(var_1.b)) << (select(~_wgslsmith_mult_u32(var_1.a, 4294967295u), _wgslsmith_mod_u32(_wgslsmith_add_u32(4294967295u, 0u), var_1.a & var_0.x), select(false || var_1.c, any(vec4<bool>(var_1.c, var_1.c, var_1.c, var_1.c)), true)) % 32u), true);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1089f, _wgslsmith_f_op_f32(step(129f, 2684f)), _wgslsmith_f_op_f32(ceil(-531f)), 1f)), vec4<f32>(-624f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f + 1567f), -490f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(878f * 682f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 913f) + _wgslsmith_f_op_f32(round(1462f))))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -526f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1362f) * _wgslsmith_f_op_f32(round(274f))), 1000f, -137f), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, _wgslsmith_div_f32(1837f, -334f), _wgslsmith_f_op_f32(-252f - 2106f), 604f))), vec4<bool>(_wgslsmith_mult_i32(4435i, 24392i) >= u_input.e, !any(vec3<bool>(var_2.c, var_1.c, var_2.c)), !(!var_1.c), !var_1.c))));
}

fn func_1(arg_0: i32, arg_1: u32) -> Struct_1 {
    var var_0 = true;
    let var_1 = 2147483647i;
    let var_2 = Struct_1(_wgslsmith_add_u32(~firstTrailingBit(arg_1), reverseBits(~1u)) & u_input.c.x, max(select((i32(-1i) * -1i) >> (arg_1 % 32u), min(1i, _wgslsmith_dot_vec3_i32(u_input.b, u_input.b)), all(vec3<bool>(true, true, true))), _wgslsmith_clamp_i32(18590i, 14440i, _wgslsmith_div_i32(u_input.d, 56214i) | _wgslsmith_clamp_i32(0i, var_1, -2147483647i))), true);
    var var_3 = _wgslsmith_f_op_vec4_f32(func_2(arg_0));
    var_0 = false;
    return var_2;
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> i32 {
    var var_0 = 1u >> (_wgslsmith_clamp_u32(func_1(~_wgslsmith_sub_i32(arg_2.b, u_input.d), func_1(0i, 69925u).a & func_1(u_input.d, 4294967295u).a).a, ~u_input.c.x, ~(~(~4294967295u))) % 32u);
    let var_1 = Struct_1(arg_1.a, 1i, arg_1.c);
    var var_2 = select(vec2<bool>(!var_1.c, arg_1.c), vec2<bool>(var_1.c && arg_2.c, !(_wgslsmith_f_op_f32(-arg_0.x) < _wgslsmith_f_op_f32(-arg_0.x))), vec2<bool>(!((var_1.c & true) & var_1.c), true));
    let var_3 = Struct_1(~reverseBits(_wgslsmith_div_u32(48585u, 1u)), 26638i, _wgslsmith_div_i32(-39274i << (u_input.c.x % 32u), -5022i) != ~var_1.b);
    let var_4 = vec4<i32>(countOneBits(arg_1.b), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, u_input.d, u_input.a, var_3.b), vec4<i32>(var_1.b, 24457i, 2147483647i, u_input.e), vec4<i32>(var_3.b, arg_2.b, 1i, arg_2.b)) | ~vec4<i32>(arg_1.b, 24220i, 20983i, -2147483647i), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_3.b, arg_1.b), u_input.b.xx), 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 0i, 20003i), vec3<i32>(1i, -18323i, arg_2.b)), -41066i)), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(countOneBits(u_input.b.zz), u_input.b.zy), u_input.b.zx), arg_2.b), 0i, ~(-31799i));
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.c.x, func_5(vec2<f32>(1f, 1f), func_1(abs(u_input.d), abs(firstLeadingBit(0u))), Struct_1(u_input.c.x ^ 1u, u_input.a | u_input.e, false), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(444f - 1000f)), 481f)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x) ^ vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<u32>(4294967295u, 61516u, u_input.c.x)) == 0u);
    let var_1 = select(select(select(vec3<bool>(any(vec3<bool>(var_0.c, true, true)), var_0.c, all(vec2<bool>(true, true))), select(vec3<bool>(var_0.c, var_0.c, true), select(vec3<bool>(false, var_0.c, false), vec3<bool>(false, false, false), vec3<bool>(var_0.c, false, var_0.c)), !var_0.c), false), select(select(select(vec3<bool>(var_0.c, var_0.c, true), vec3<bool>(var_0.c, true, var_0.c), true), vec3<bool>(var_0.c, false, true), select(vec3<bool>(false, true, var_0.c), vec3<bool>(false, var_0.c, var_0.c), var_0.c)), vec3<bool>(true, var_0.a < u_input.c.x, var_0.c), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, var_0.a, var_0.a, 0u), vec4<u32>(4294967295u, 1u, var_0.a, 12296u)) < firstTrailingBit(34215u)), vec3<bool>(true, true, true)), select(!(!vec3<bool>(true, false, var_0.c)), select(select(vec3<bool>(false, var_0.c, var_0.c), !vec3<bool>(var_0.c, true, false), !vec3<bool>(true, var_0.c, false)), vec3<bool>(var_0.c, var_0.c != false, var_0.c), var_0.c), !select(vec3<bool>(false, true, false), !vec3<bool>(var_0.c, var_0.c, var_0.c), any(vec4<bool>(var_0.c, var_0.c, false, var_0.c)))), vec3<bool>(true, true, true));
    var var_2 = firstLeadingBit(u_input.b);
    var var_3 = func_1(-(~(-1i)), reverseBits(firstLeadingBit(u_input.c.x ^ (4294967295u >> (var_0.a % 32u)))));
    var_3 = var_0;
    let var_4 = func_1(i32(-1i) * -48840i, ~var_3.a ^ ~var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.xz >> ((_wgslsmith_add_vec2_u32(countOneBits(u_input.c), u_input.c | vec2<u32>(3129u, var_4.a)) ^ (u_input.c | (vec2<u32>(0u, 1u) & u_input.c))) % vec2<u32>(32u)), -min(min(vec2<i32>(u_input.b.x, -55698i), vec2<i32>(var_4.b, 2147483647i)), vec2<i32>(-1i, var_2.x)) >> (vec2<u32>(var_4.a, reverseBits(var_4.a) & _wgslsmith_dot_vec2_u32(u_input.c, u_input.c)) % vec2<u32>(32u)), -718f);
}

