struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: i32,
    d: f32,
    e: u32,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<bool>) -> i32 {
    let var_0 = arg_1;
    var var_1 = abs(select(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, arg_1.b, 79993u), vec3<u32>(var_0.b, 94841u, 1u)), _wgslsmith_sub_u32(4294967295u, var_0.b)), reverseBits(countOneBits(var_0.a)), arg_2.x)) << (_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.a & arg_1.a, arg_1.a, countOneBits(arg_1.b), ~1u), select(vec4<u32>(var_0.b, 4294967295u, arg_1.a, 0u) & select(vec4<u32>(u_input.a, var_0.b, var_0.b, 0u), vec4<u32>(0u, 46599u, arg_1.b, 37448u), arg_2.x), ~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, var_0.b, arg_1.b, 1u), vec4<u32>(u_input.a, u_input.a, var_0.b, arg_1.a)), false)) % 32u);
    var var_2 = abs(-2147483647i);
    var var_3 = arg_1;
    let var_4 = arg_0.b.x;
    return _wgslsmith_dot_vec2_i32(arg_0.b, select(~firstLeadingBit(arg_0.b), _wgslsmith_sub_vec2_i32(arg_0.b, arg_0.b), select(vec2<bool>(arg_0.d.x != true, arg_2.x), select(vec2<bool>(arg_2.x, arg_2.x), select(vec2<bool>(false, arg_2.x), arg_0.d.zz, vec2<bool>(arg_2.x, arg_2.x)), arg_0.d.x), arg_0.d.xx)));
}

fn func_2() -> i32 {
    let var_0 = vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_div_i32(func_3(Struct_2(-2828f, vec2<i32>(-6678i, 67540i), vec2<f32>(2065f, 423f), vec3<bool>(false, false, false)), Struct_1(4294967295u, u_input.a), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false))), func_3(Struct_2(521f, vec2<i32>(16974i, -1i), vec2<f32>(-2140f, -356f), vec3<bool>(true, true, true)), Struct_1(u_input.a, 33559u), vec3<bool>(true, true, true))), _wgslsmith_sub_i32(_wgslsmith_sub_i32(1i, 0i), 2147483647i)), _wgslsmith_dot_vec3_i32(-(vec3<i32>(-4474i, 22788i, 0i) >> (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u))), _wgslsmith_mod_vec3_i32(vec3<i32>(34120i, -46907i, -56265i), firstLeadingBit(vec3<i32>(-21541i, -2147483647i, 32462i)))) << (u_input.a % 32u), -1i);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-674f * _wgslsmith_f_op_f32(select(1662f, -1775f, true))), _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(sign(798f)))), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-530f, 818f)), _wgslsmith_f_op_f32(f32(-1f) * -654f)))), all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), var_0.x >= 2147483647i)))));
    let var_2 = Struct_1(u_input.a, u_input.a);
    var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(815f)))))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(788f, -226f, false)))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1219f)))))))));
    var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1296f + -378f) + _wgslsmith_f_op_f32(-1284f + 446f)) + -1527f), 553f, all(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false)))))));
    return reverseBits(_wgslsmith_mult_i32(min(var_0.x, -var_0.x), ~var_0.x ^ 1i)) | _wgslsmith_dot_vec3_i32(var_0, vec3<i32>(-18660i >> (~var_2.a % 32u), ~max(-65713i, var_0.x), 2147483647i));
}

fn func_1() -> Struct_2 {
    var var_0 = (vec4<u32>(u_input.a, u_input.a, 16961u, abs(~51451u)) >> (_wgslsmith_mod_vec4_u32(max(vec4<u32>(u_input.a, u_input.a, u_input.a, 26334u), vec4<u32>(u_input.a, 72093u, u_input.a, u_input.a)) | _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 36794u, u_input.a, 17042u), vec4<u32>(u_input.a, 4294967295u, u_input.a, 0u)), ~(~vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a))) % vec4<u32>(32u))) << (~(~(~(vec4<u32>(0u, 1u, 53700u, 4294967295u) ^ vec4<u32>(u_input.a, u_input.a, u_input.a, 1u)))) % vec4<u32>(32u));
    var var_1 = func_2();
    let var_2 = Struct_1(37935u, 0u);
    let var_3 = -423f;
    var var_4 = vec3<u32>(_wgslsmith_div_u32(~(4294967295u & _wgslsmith_add_u32(var_0.x, 44591u)), var_0.x), u_input.a, u_input.a);
    return Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1316f + _wgslsmith_f_op_f32(var_3 - 846f))), _wgslsmith_f_op_f32(var_3 - _wgslsmith_f_op_f32(-var_3)))), _wgslsmith_sub_vec2_i32(-(reverseBits(vec2<i32>(27247i, 4139i)) << (abs(vec2<u32>(var_4.x, var_4.x)) % vec2<u32>(32u))), ~(~select(vec2<i32>(15104i, -47559i), vec2<i32>(1i, 6694i), false))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3, _wgslsmith_f_op_f32(max(var_3, _wgslsmith_div_f32(-163f, var_3))))), select(vec3<bool>(all(vec4<bool>(false, false, false, false)), true, true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), firstTrailingBit(28606u) < (~6308u >> (firstLeadingBit(u_input.a) % 32u))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>) -> vec3<bool> {
    var var_0 = _wgslsmith_mult_vec4_u32(~countOneBits(_wgslsmith_add_vec4_u32(arg_1, countOneBits(arg_1))), _wgslsmith_mod_vec4_u32(arg_1, vec4<u32>(~arg_1.x, ~(~0u), (arg_1.x & 26648u) & 30574u, _wgslsmith_dot_vec3_u32(arg_1.yzy, arg_1.zzy))));
    var_0 = arg_1;
    let var_1 = true;
    var_0 = ~arg_1 & vec4<u32>(~0u, _wgslsmith_div_u32(1u, select(4294967295u, 4294967295u, select(arg_0.d.x, true, var_1))), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(arg_1, _wgslsmith_clamp_vec4_u32(arg_1, arg_1, arg_1)), _wgslsmith_mod_vec4_u32(arg_1, vec4<u32>(47104u, var_0.x, 1281u, var_0.x) & vec4<u32>(0u, var_0.x, arg_1.x, var_0.x))), firstLeadingBit(_wgslsmith_mult_u32(countOneBits(var_0.x), 0u)));
    var_0 = ~(vec4<u32>(0u, ~abs(var_0.x), arg_1.x, ~(~u_input.a)) & ~vec4<u32>(reverseBits(arg_1.x), 1623u & u_input.a, u_input.a, _wgslsmith_dot_vec4_u32(arg_1, arg_1)));
    return vec3<bool>(var_1, all(vec3<bool>(arg_0.d.x | var_1, false, -773f >= _wgslsmith_f_op_f32(max(arg_0.c.x, 1000f)))), select(_wgslsmith_sub_u32(var_0.x, 0u) < 1u, !any(vec4<bool>(var_1, arg_0.d.x, arg_0.d.x, var_1)), var_0.x <= _wgslsmith_mod_u32(~u_input.a, ~var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var_0 = _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-560f * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(427f * -718f)))))) > _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(2382f)))))));
    var_0 = _wgslsmith_div_i32(4274i, _wgslsmith_add_i32(firstLeadingBit(-65454i), max(23678i, -1i))) >= (1i << (~_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(45734u, u_input.a)), firstLeadingBit(vec2<u32>(u_input.a, 4294967295u))) % 32u));
    var var_1 = Struct_2(-838f, _wgslsmith_mod_vec2_i32(-countOneBits(vec2<i32>(1i, -2147483647i)), vec2<i32>(-1i, _wgslsmith_add_i32(1i, 1i))), vec2<f32>(990f, 421f), select(select(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), true), all(vec4<bool>(true, true, true, true))), func_4(func_1(), max(~vec4<u32>(u_input.a, u_input.a, 1u, u_input.a), ~vec4<u32>(u_input.a, 0u, 23297u, u_input.a))), true));
    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(var_1.a, 1410f), -1746f, _wgslsmith_div_f32(181f, var_1.c.x))))));
    var var_3 = -170f;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(47588u, 1u), vec2<u32>(70659u, u_input.a)), u_input.a, u_input.a), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(var_1.c.x + _wgslsmith_f_op_f32(max(var_2.x, var_1.a))), 1340f, _wgslsmith_f_op_f32(trunc(-257f)), var_1.c.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-476f, var_2.x, -451f, -1560f))) + vec4<f32>(var_2.x, -232f, 1274f, 1769f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.x, 777f, 1844f, var_2.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, -375f, 1688f, -1329f) * vec4<f32>(var_1.c.x, var_2.x, var_2.x, var_1.c.x)))))), _wgslsmith_dot_vec3_i32(vec3<i32>(~(-var_1.b.x), -2147483647i, func_2()), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 54254i, var_1.b.x, -6669i) ^ vec4<i32>(var_1.b.x, var_1.b.x, var_1.b.x, var_1.b.x), vec4<i32>(var_1.b.x, -2147483647i, 31594i, var_1.b.x)), var_1.b.x, var_1.b.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(var_2.x)))), _wgslsmith_mult_u32(min(4294967295u, u_input.a), _wgslsmith_clamp_u32(countOneBits(29390u) << (abs(u_input.a) % 32u), _wgslsmith_mod_u32(_wgslsmith_mod_u32(19880u, 12093u), u_input.a), abs(_wgslsmith_add_u32(u_input.a, 17809u)))));
}

