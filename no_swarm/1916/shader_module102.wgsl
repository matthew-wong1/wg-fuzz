struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec4<f32>) -> vec4<i32> {
    let var_0 = arg_0.b;
    var var_1 = Struct_1(arg_0.c.x | arg_0.a, arg_0.b, firstTrailingBit(vec3<i32>(arg_0.a, -arg_0.c.x, firstLeadingBit(arg_0.a)) ^ arg_0.c));
    var var_2 = _wgslsmith_clamp_vec3_i32(~firstTrailingBit(reverseBits(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.c.x, 36020i, var_1.c.x), arg_0.c))), arg_0.c, arg_0.c);
    let var_3 = true;
    var var_4 = Struct_1(_wgslsmith_dot_vec4_i32(max(vec4<i32>(-30253i, var_1.c.x, var_2.x, abs(49163i)), _wgslsmith_mult_vec4_i32(vec4<i32>(var_2.x, var_1.a, 19664i, -8566i), vec4<i32>(var_1.c.x, var_1.c.x, -30305i, -2147483647i)) >> (~vec4<u32>(32272u, u_input.a, 8231u, u_input.a) % vec4<u32>(32u))), vec4<i32>(28840i ^ _wgslsmith_clamp_i32(-2147483647i, -52044i, arg_0.c.x), abs(arg_0.c.x), var_2.x, _wgslsmith_div_i32(abs(-1i), _wgslsmith_mult_i32(arg_0.a, -19772i)))), var_1.b, min(~((var_1.c ^ var_1.c) << ((vec3<u32>(u_input.a, 38667u, u_input.a) ^ vec3<u32>(41182u, 1u, 47394u)) % vec3<u32>(32u))), reverseBits(var_1.c)));
    return select(-max(reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 0i, var_2.x, var_4.a), vec4<i32>(-2147483647i, var_4.a, var_1.c.x, 1i))), vec4<i32>(_wgslsmith_mod_i32(var_4.c.x, 1i), var_4.c.x, ~8138i, min(var_1.c.x, var_2.x))), select(vec4<i32>(min(var_1.c.x, _wgslsmith_mod_i32(arg_0.a, -1i)), -max(var_2.x, 1i), _wgslsmith_mult_i32(1i, _wgslsmith_sub_i32(var_4.c.x, var_1.c.x)), _wgslsmith_clamp_i32(1i, reverseBits(var_4.c.x), var_1.a)), ~vec4<i32>(var_4.c.x & -2147483647i, _wgslsmith_add_i32(0i, var_2.x), ~8655i, var_1.c.x), vec4<bool>(true, any(select(var_4.b.yzz, vec3<bool>(false, false, false), var_4.b.zyy)), -1561f <= _wgslsmith_f_op_f32(-arg_2.x), !var_4.b.x)), select(!vec4<bool>(var_1.a == -2147483647i, var_4.b.x, !var_1.b.x, true), select(select(!arg_0.b, vec4<bool>(var_0.x, true, false, false), all(arg_1)), !vec4<bool>(arg_0.b.x, false, var_0.x, false), !vec4<bool>(var_1.b.x, arg_1.x, arg_0.b.x, false)), select(vec4<bool>(true, select(arg_0.b.x, false, var_1.b.x), true, arg_0.b.x), vec4<bool>(var_4.b.x, any(vec2<bool>(false, var_4.b.x)), var_3, all(vec2<bool>(var_4.b.x, arg_0.b.x))), var_4.b.x && any(arg_1))));
}

fn func_2(arg_0: u32) -> bool {
    let var_0 = ~abs(~(~arg_0));
    var var_1 = (min(vec4<i32>(-1i, 18897i, ~(-2147483647i), i32(-1i) * -16085i), ~firstTrailingBit(vec4<i32>(-1i, 1i, -18339i, 15200i))) | func_3(Struct_1(0i, vec4<bool>(true, true, true, true), firstTrailingBit(vec3<i32>(34647i, -4786i, 71471i))), vec2<bool>(true, false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1214f, 2213f, -1659f, 606f) + vec4<f32>(-854f, -185f, 1000f, -303f))))) & func_3(Struct_1(-1i, vec4<bool>(any(vec3<bool>(false, false, true)), any(vec4<bool>(true, true, true, false)), true, select(false, true, false)), abs(firstLeadingBit(vec3<i32>(-1i, 50961i, -2147483647i)))), !vec2<bool>(any(vec3<bool>(false, true, false)), true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-169f, -1315f, 282f, -1670f), vec4<f32>(1000f, 1000f, 435f, 1000f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1467f, -1000f, 1112f, 912f))) * vec4<f32>(-567f, 850f, -1943f, -1693f))));
    var_1 = vec4<i32>(var_1.x, firstLeadingBit(var_1.x), -var_1.x, var_1.x ^ ~_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, 0i), var_1.zw)) ^ abs(_wgslsmith_div_vec4_i32(abs(vec4<i32>(var_1.x, 78111i, -2147483647i, 6060i)), vec4<i32>(0i, var_1.x, _wgslsmith_clamp_i32(var_1.x, var_1.x, -24623i), i32(-1i) * -60012i)));
    var var_2 = Struct_1(~var_1.x, vec4<bool>(true, true, true, true), ~(-_wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(1218i, var_1.x, -63682i)), var_1.yzy)));
    let var_3 = _wgslsmith_sub_i32(var_1.x, var_2.a);
    return var_2.b.x;
}

fn func_1(arg_0: f32, arg_1: u32) -> i32 {
    var var_0 = Struct_1(0i, select(vec4<bool>(true, func_2(abs(u_input.a)), false, false), !vec4<bool>(false, 1u != u_input.a, true, any(vec4<bool>(false, false, false, false))), select(any(vec2<bool>(true, true)), true, _wgslsmith_f_op_f32(arg_0 - arg_0) > -325f)), func_3(Struct_1(2147483647i, vec4<bool>(true, true, func_2(u_input.a), all(vec4<bool>(false, false, true, false))), select(vec3<i32>(2147483647i, -87935i, -1i), vec3<i32>(1i, 1i, 1i), true)), !select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 588f, arg_0, arg_0)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1195f, 621f, arg_0, -1116f), vec4<f32>(arg_0, -2241f, arg_0, arg_0)))))).yyz);
    let var_1 = Struct_1(var_0.a, !vec4<bool>(!(var_0.b.x || var_0.b.x), var_0.b.x || all(var_0.b.zyz), (false && var_0.b.x) || var_0.b.x, any(vec2<bool>(true, true))), firstLeadingBit(var_0.c));
    var_0 = var_1;
    return _wgslsmith_sub_i32(24186i, _wgslsmith_clamp_i32(firstLeadingBit(-14438i), -24521i, abs(25874i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~func_1(_wgslsmith_f_op_f32(-557f - 765f), ~u_input.a);
    var_0 = (i32(-1i) * -(~1i)) & ~_wgslsmith_mult_i32(func_1(1047f, u_input.a), abs(1i));
    var var_1 = Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(-firstLeadingBit(vec2<i32>(13376i, 1i)), vec2<i32>(-1i) * -vec2<i32>(-19705i, -28629i)), ~_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-17672i, 20018i), vec2<i32>(-1i, -25i), vec2<i32>(16875i, -20305i)), -vec2<i32>(2147483647i, 0i))), vec4<bool>(!(!select(true, true, true)), all(vec2<bool>(true, true)), any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, true, false), false)), any(vec2<bool>(true, true))), vec3<i32>(-2147483647i, func_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(465f, -1340f)), 1275f)), u_input.a), select(abs(-52407i), -_wgslsmith_mult_i32(-21780i, -8916i), false)));
    var var_2 = Struct_1(var_1.c.x, select(select(var_1.b, vec4<bool>(var_1.b.x, false || var_1.b.x, var_1.b.x, select(var_1.b.x, true, var_1.b.x)), select(var_1.b, !var_1.b, !vec4<bool>(false, var_1.b.x, false, var_1.b.x))), select(select(!var_1.b, vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, var_1.b.x), u_input.a < 15568u), vec4<bool>(u_input.a >= 23028u, false, !var_1.b.x, var_1.b.x), select(!var_1.b, vec4<bool>(false, true, var_1.b.x, var_1.b.x), var_1.c.x < 0i)), var_1.b.x), countOneBits(vec3<i32>(_wgslsmith_div_i32(var_1.c.x, var_1.a), _wgslsmith_add_i32(0i, 16172i), _wgslsmith_sub_i32(19355i, var_1.a))) ^ vec3<i32>(func_1(_wgslsmith_f_op_f32(-388f * -284f), min(20224u, u_input.a)), var_1.a, 2147483647i));
    let var_3 = Struct_1(var_1.a >> (8769u % 32u), !select(var_2.b, vec4<bool>(true, false, var_2.b.x, var_2.b.x), !vec4<bool>(true, var_1.b.x, true, true)), (var_2.c ^ (abs(vec3<i32>(-18880i, -36777i, 0i)) >> ((vec3<u32>(u_input.a, 1u, u_input.a) << (vec3<u32>(75703u, u_input.a, u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u)))) << ((~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 31813u, 1u), vec3<u32>(0u, 53273u, u_input.a)) << (_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 0u), firstTrailingBit(vec3<u32>(u_input.a, u_input.a, u_input.a))) % vec3<u32>(32u))) % vec3<u32>(32u)));
    var var_4 = abs(22095u);
    var_2 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(-716f, -52367i >> (firstTrailingBit((u_input.a & u_input.a) << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)) % 32u)) % 32u));
}

