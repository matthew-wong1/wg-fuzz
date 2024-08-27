struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: Struct_1,
    d: vec3<f32>,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2() -> f32 {
    return 1000f;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<bool>) -> vec3<bool> {
    var var_0 = ~u_input.a.yxw;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(198f + 1f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(466f * _wgslsmith_f_op_f32(floor(435f))))));
    var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1775f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(floor(-139f)), true))))));
    var_1 = _wgslsmith_f_op_f32(trunc(1000f));
    let var_2 = _wgslsmith_dot_vec2_u32(~u_input.a.zy, _wgslsmith_div_vec2_u32(~(~(vec2<u32>(0u, 35903u) >> (u_input.a.xz % vec2<u32>(32u)))), ~(~vec2<u32>(u_input.b.x, u_input.c.x))));
    return vec3<bool>(false, u_input.e < (_wgslsmith_sub_i32(~u_input.d, 1i) >> ((select(u_input.c.x, u_input.a.x, arg_1.x) << (~4805u % 32u)) % 32u)), true);
}

fn func_3() -> u32 {
    var var_0 = Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1330f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-477f - -1064f) - -939f), _wgslsmith_f_op_f32(-387f + _wgslsmith_f_op_f32(614f - -1104f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1637f, 1083f, 1000f) - vec3<f32>(1324f, 560f, -320f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(812f, -711f, -2472f), vec3<f32>(1000f, -912f, 262f))), vec3<bool>(false, true, false))))));
    let var_1 = 2147483647i;
    var var_2 = Struct_2(-vec3<i32>(u_input.d, 20318i, max(~var_1, _wgslsmith_sub_i32(var_1, var_1))), ~u_input.a, Struct_1(var_0.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-811f, var_0.a.x, 2352f) * vec3<f32>(-845f, var_0.a.x, var_0.a.x))) + _wgslsmith_f_op_vec3_f32(var_0.a + _wgslsmith_f_op_vec3_f32(-var_0.a))), any(vec3<bool>(true, all(vec3<bool>(true, true, false)), all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false))))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(var_2.c.a)));
    let var_4 = Struct_2(var_2.a, abs(abs(~vec4<u32>(u_input.c.x, 1u, 0u, 0u))), Struct_1(vec3<f32>(var_2.c.a.x, -864f, _wgslsmith_f_op_f32(f32(-1f) * -1460f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x * -850f)), var_2.d.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_3.a.x)) * -763f)))), var_2.e | var_2.e);
    return countOneBits(countOneBits(_wgslsmith_mult_u32(u_input.c.x, var_4.b.x)));
}

fn func_4(arg_0: u32, arg_1: f32) -> i32 {
    var var_0 = Struct_2(min(-(~(~vec3<i32>(u_input.e, u_input.e, -2147483647i))), ~countOneBits(max(vec3<i32>(2147483647i, u_input.d, u_input.e), vec3<i32>(-52172i, u_input.e, u_input.d)))), ~vec4<u32>(arg_0, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 22623u, 33703u), u_input.c), ~1u, arg_0 << (~u_input.a.x % 32u)), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-865f, arg_1, arg_1) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-453f, 1385f, 484f))))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1, arg_1, arg_1))), true);
    var var_1 = Struct_2(_wgslsmith_mod_vec3_i32(var_0.a, var_0.a), ~vec4<u32>(func_3(), _wgslsmith_sub_u32(arg_0, var_0.b.x | 0u), 4294967295u, var_0.b.x), Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.c.a)), var_0.d, _wgslsmith_div_f32(var_0.d.x, 815f) > _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-919f * -1566f), 623f)));
    var var_2 = _wgslsmith_mod_vec3_u32(firstLeadingBit(u_input.b.zxz), u_input.c);
    let var_3 = Struct_2(reverseBits(var_1.a), countOneBits(_wgslsmith_sub_vec4_u32(~reverseBits(var_1.b), ~vec4<u32>(0u, 57416u, arg_0, arg_0) >> (countOneBits(vec4<u32>(22088u, 8824u, 105351u, 0u)) % vec4<u32>(32u)))), var_0.c, _wgslsmith_f_op_vec3_f32(-var_1.d), _wgslsmith_f_op_f32(-arg_1) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * 2823f)));
    let var_4 = vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.d.x)) * _wgslsmith_f_op_f32(select(363f, -1000f, false)))) <= var_3.d.x, var_1.e || !(!(!var_0.e)), true, true);
    return var_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.b.x;
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1078f, -573f, 1282f) + vec3<f32>(1209f, -129f, -836f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-986f, 579f, 1217f))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, 560f, -1000f))), true)), func_1(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(true, true), true))))));
    let var_2 = select(all(vec4<bool>(false, true, true, true)), any(select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true)), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true)), vec4<bool>(false, true, all(vec4<bool>(false, false, true, false)), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false)), true))), true);
    var var_3 = Struct_2(vec3<i32>(~abs(-7764i), select((-1i & u_input.e) << (var_0 % 32u), _wgslsmith_div_i32(u_input.e, ~(-65672i)), true), func_4(func_3(), -380f)), select(firstLeadingBit(select(u_input.a, select(vec4<u32>(var_0, 0u, 73517u, u_input.a.x), vec4<u32>(1u, 4294967295u, u_input.c.x, var_0), var_2), all(vec3<bool>(true, var_2, false)))), _wgslsmith_mult_vec4_u32(u_input.b, vec4<u32>(~u_input.c.x, 0u, ~0u, u_input.c.x)), !vec4<bool>(78769u > u_input.c.x, func_1(vec2<bool>(var_2, var_2), vec2<bool>(var_2, var_2)).x, var_2, true)), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_1.a.x, var_1.a.x), _wgslsmith_f_op_f32(var_1.a.x + var_1.a.x))), 1145f, -201f)), _wgslsmith_f_op_vec3_f32(select(var_1.a, vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(var_1.a.x)))), _wgslsmith_div_f32(var_1.a.x, _wgslsmith_f_op_f32(abs(-1317f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 1030f) + _wgslsmith_f_op_f32(-1000f - 288f))), select(!(!vec3<bool>(true, false, var_2)), vec3<bool>(func_1(vec2<bool>(var_2, true), vec2<bool>(var_2, true)).x, var_2, true), vec3<bool>(true, false && var_2, !var_2)))), !(u_input.d <= -44572i));
    let var_4 = true;
    var_3 = Struct_2(~vec3<i32>(_wgslsmith_sub_i32(var_3.a.x, 2147483647i), 11655i, ~u_input.d << (reverseBits(var_3.b.x) % 32u)), reverseBits(max(u_input.b, vec4<u32>(15531u, 30754u, var_0, var_3.b.x)) ^ ~u_input.b), var_1, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(var_1.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.c.a.x, 302f, 1179f))), !vec3<bool>(false, var_3.e, var_4)))), select(!var_3.e, !any(!vec2<bool>(false, var_2)), !(~u_input.c.x >= 1u)));
    let var_5 = min(~_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(29408u, 4294967295u, var_3.b.x, u_input.a.x), vec4<u32>(var_0, var_0, 4294967295u, 21327u)), var_3.b << (vec4<u32>(0u, var_3.b.x, u_input.c.x, var_3.b.x) % vec4<u32>(32u))), ~(vec4<u32>(66367u, var_0, var_3.b.x, var_3.b.x) | u_input.a)), vec4<u32>(~u_input.a.x, ~_wgslsmith_clamp_u32(31945u, var_0 | var_0, var_0), _wgslsmith_mod_u32(abs(22607u) >> (0u % 32u), _wgslsmith_mod_u32(u_input.b.x << (62615u % 32u), ~101419u)), ~(~4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.d.xz, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1138f, var_3.d.x, 1410f, var_3.d.x) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-549f, -437f, var_1.a.x, 1787f), vec4<f32>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-896f, 481f, var_1.a.x, -445f) - vec4<f32>(var_3.c.a.x, var_1.a.x, 1000f, 635f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-718f, var_3.d.x, var_1.a.x, var_1.a.x) - vec4<f32>(var_3.c.a.x, -116f, 1000f, var_3.d.x)), false || var_3.e))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-737f, _wgslsmith_f_op_f32(var_3.c.a.x + var_1.a.x), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-367f + var_3.d.x))))));
}

