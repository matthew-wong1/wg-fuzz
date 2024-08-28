struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: vec4<f32>,
    e: i32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: u32,
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<f32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-831f + -1648f)), _wgslsmith_f_op_f32(select(1261f, arg_2.a, any(vec2<bool>(true, false)))), _wgslsmith_div_f32(arg_1.d.x, arg_1.b)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(arg_1.d, vec4<f32>(arg_1.d.x, arg_1.d.x, arg_1.b, arg_2.a)), _wgslsmith_f_op_vec4_f32(select(arg_1.d, arg_1.d, vec4<bool>(true, false, true, true)))))));
    var_0 = arg_1.d;
    var var_1 = 2473f;
    let var_2 = vec4<u32>(~abs(arg_1.c), arg_1.c, u_input.a, ~33489u) & ~countOneBits(~select(vec4<u32>(27062u, u_input.a, u_input.a, 21810u), vec4<u32>(arg_1.c, u_input.a, 0u, arg_1.c), true));
    let var_3 = Struct_2(arg_1.b);
    return arg_1.a.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<bool>) -> vec3<i32> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-705f + 1021f), _wgslsmith_div_f32(arg_0.x, 880f));
    let var_1 = 900f;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1046f));
    var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(183f)) + var_0.x)));
    var_2 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1601f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(645f, var_0.x)))));
    return ~min(vec3<i32>(16317i, _wgslsmith_mod_i32(-1i, -29822i) | _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.b.x, 1i), vec3<i32>(-1i, u_input.b.x, u_input.c)), 1i), _wgslsmith_sub_vec3_i32(abs(vec3<i32>(u_input.c, 2147483647i, u_input.d)), vec3<i32>(func_3(-19612i, Struct_1(vec3<i32>(-1i, u_input.b.x, -7601i), var_2.a, u_input.a, vec4<f32>(354f, 115f, 454f, var_0.x), u_input.c), Struct_2(-668f), vec2<f32>(var_0.x, arg_0.x)), _wgslsmith_mod_i32(2147483647i, 17252i), func_3(u_input.d, Struct_1(vec3<i32>(u_input.b.x, -3008i, u_input.b.x), 2061f, 27016u, vec4<f32>(1332f, var_1, var_1, 258f), -18666i), Struct_2(arg_0.x), arg_0.xy))));
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    var var_0 = u_input.a;
    var_0 = ~(_wgslsmith_add_u32(~(~arg_0.c), u_input.a) ^ arg_0.c);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d.x, -1041f, _wgslsmith_f_op_f32(arg_0.d.x + _wgslsmith_f_op_f32(938f + arg_0.b)))) * arg_0.d.wzz);
    let var_2 = Struct_1(vec3<i32>(u_input.d, _wgslsmith_mod_i32(-12082i, -22130i), ~(31412i & ~arg_0.e)), 242f, (reverseBits(arg_0.c) >> (abs(abs(17094u)) % 32u)) & u_input.a, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d.x * arg_0.b)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.d.x)) + 333f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_0.b, 224f)))), 691f, _wgslsmith_div_f32(arg_0.d.x, _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(round(-1217f))))), ~_wgslsmith_add_i32(arg_0.e, arg_0.a.x) >> (select(u_input.a, firstLeadingBit(u_input.a), any(vec2<bool>(true, true))) % 32u));
    let var_3 = !(true != !(0i < _wgslsmith_sub_i32(u_input.c, -1i)));
    return Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1370f * 455f), arg_0.d.x)));
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(Struct_1(select(func_2(vec3<f32>(1f, 1f, 1f), vec4<bool>(true, true, false, false)), -(vec3<i32>(u_input.b.x, u_input.d, u_input.c) << (vec3<u32>(u_input.a, 54539u, u_input.a) % vec3<u32>(32u))), !any(vec4<bool>(true, true, false, false))), -1214f, u_input.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-642f, 569f, -1636f, 2289f) * vec4<f32>(-944f, -864f, -347f, -1205f)), vec4<f32>(-1534f, 1016f, -615f, 409f))), ~countOneBits(~(-37373i))));
    let var_1 = Struct_1(_wgslsmith_mult_vec3_i32(~select(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, -20397i, u_input.b.x), vec3<i32>(-35976i, 1i, -24760i)), ~vec3<i32>(-1i, 0i, u_input.c), u_input.a <= 6998u), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, ~u_input.b.x, -u_input.d), vec3<i32>(~52730i, ~34271i, 4537i))), var_0.a, 24196u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.a, var_0.a, var_0.a, var_0.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, 1077f, -634f, var_0.a) * vec4<f32>(-1226f, var_0.a, var_0.a, -805f))))))), _wgslsmith_add_i32(u_input.d, -1i));
    let var_2 = _wgslsmith_dot_vec4_u32(~vec4<u32>(~0u, ~45069u, _wgslsmith_dot_vec2_u32(vec2<u32>(89818u, u_input.a), vec2<u32>(38387u, 1u)), u_input.a), vec4<u32>(_wgslsmith_clamp_u32(1u, u_input.a, ~var_1.c), 29263u, u_input.a, ~u_input.a)) >= ~(~var_1.c);
    var var_3 = var_1.c;
    let var_4 = var_1.d.wyx;
    return Struct_1(~vec3<i32>(-2147483647i, 1i & u_input.c, var_1.a.x) >> (~vec3<u32>(_wgslsmith_sub_u32(0u, var_1.c), select(var_1.c, 45507u, var_2), ~u_input.a) % vec3<u32>(32u)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_4.x, _wgslsmith_f_op_f32(f32(-1f) * -615f)), var_0.a)), ~_wgslsmith_mod_u32(firstLeadingBit(0u), 38558u), var_1.d, func_3(var_1.e, var_1, func_4(Struct_1(vec3<i32>(var_1.e, -2147483647i, -3333i), var_0.a, max(u_input.a, var_1.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(-978f, var_0.a, var_0.a, var_0.a) * var_1.d), -2147483647i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(var_4.yz)))) * var_1.d.zz)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = -2147483647i;
    let var_2 = _wgslsmith_f_op_f32(var_0.d.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b * -1084f) * var_0.b) + var_0.d.x) * var_0.b));
    var var_3 = func_1();
    var_3 = func_1();
    var_3 = Struct_1(var_0.a, 210f, 86655u, _wgslsmith_f_op_vec4_f32(-var_0.d), var_0.a.x);
    var var_4 = !vec2<bool>(!all(select(vec2<bool>(false, true), vec2<bool>(false, true), false)), false);
    var_4 = select(select(vec2<bool>(true, true), select(vec2<bool>(select(false, var_4.x, true), var_3.d.x > var_3.b), vec2<bool>(true, true), !select(vec2<bool>(var_4.x, true), vec2<bool>(true, false), false)), 491f < var_0.b), !select(vec2<bool>(any(vec4<bool>(false, var_4.x, true, true)), false), !select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(var_4.x, false)), true), !select(!(!vec2<bool>(var_4.x, var_4.x)), vec2<bool>(true, true), vec2<bool>(var_4.x, !var_4.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_3.d.xyz) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.d.x, -804f, var_3.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(var_0.d.zzw))), false))), vec3<u32>(~_wgslsmith_mult_u32(~4294967295u, u_input.a & 4294967295u), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(var_3.c, 13751u), vec2<u32>(22903u, 1u) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))), u_input.a), var_0.c);
}

