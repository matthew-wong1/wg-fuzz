struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
    d: vec2<f32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec2<f32>,
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

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: vec4<bool>, arg_2: u32, arg_3: u32) -> bool {
    var var_0 = Struct_3(firstLeadingBit(abs(firstLeadingBit(-vec4<i32>(2147483647i, u_input.c, u_input.c, u_input.b)))), arg_1.yy, Struct_2(Struct_1(~arg_0, !any(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), 1000f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-290f, 513f)) * vec2<f32>(-1655f, 1685f)), -(1i >> (arg_3 % 32u))), Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0, u_input.c, -1i, 25553i), vec4<i32>(arg_0, u_input.d, arg_0, 2147483647i)), vec4<i32>(2147483647i, 13491i, -14086i, u_input.d) & vec4<i32>(u_input.b, -2147483647i, 38654i, 16123i)), any(vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), -603f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(774f, -169f) - vec2<f32>(-1217f, 239f))), _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.b, 32084i), firstTrailingBit(vec2<i32>(9578i, 0i)))), false), Struct_2(Struct_1(30028i, any(arg_1.zw), _wgslsmith_div_f32(-1136f, _wgslsmith_f_op_f32(1613f + -307f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 335f)), vec2<f32>(-361f, -578f), true)), u_input.c), Struct_1(u_input.c, true, 1f, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(274f, 1000f) + vec2<f32>(980f, 215f)))), u_input.d | u_input.b), true));
    return false;
}

fn func_2() -> Struct_2 {
    let var_0 = vec2<u32>(1u, _wgslsmith_add_u32(_wgslsmith_mod_u32((u_input.a.x << (u_input.a.x % 32u)) << (u_input.a.x % 32u), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 29017u), u_input.a.xy))), ~(~(~u_input.a.x))));
    let var_1 = Struct_1(-1i, all(vec2<bool>(true, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-543f * 1640f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(757f, -198f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1000f, -330f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(630f, 123f)))))), 18771i);
    let var_2 = -vec2<i32>((var_1.a >> (_wgslsmith_mult_u32(1u, u_input.a.x) % 32u)) | 2147483647i, u_input.d);
    var var_3 = vec2<i32>(min(_wgslsmith_mod_i32(~2589i, countOneBits(var_2.x)), -(~var_1.a)) >> (4689u % 32u), -firstTrailingBit(-1i));
    var_3 = ~vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(var_2.x, select(1i, var_3.x, var_1.b)), var_3.x), var_2.x);
    return Struct_2(var_1, var_1, any(select(!(!vec3<bool>(var_1.b, false, var_1.b)), select(vec3<bool>(false, true, var_1.b), vec3<bool>(false, var_1.b, true), vec3<bool>(true, var_1.b, var_1.b)), func_3(1i, select(vec4<bool>(false, var_1.b, var_1.b, var_1.b), vec4<bool>(var_1.b, false, false, true), vec4<bool>(false, false, true, true)), abs(1u), max(419u, u_input.a.x)))));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<u32>, arg_2: Struct_3) -> bool {
    let var_0 = arg_2.d.a.c;
    var var_1 = Struct_3(vec4<i32>(-59535i, arg_2.c.b.a, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.d.a.e, arg_2.d.b.e), arg_2.a.wy), countOneBits(2147483647i)), arg_0.zw), -(~arg_2.c.a.a)), arg_2.b, arg_2.c, func_2());
    var var_2 = Struct_1(u_input.b, all(select(arg_2.b, !select(vec2<bool>(false, false), arg_2.b, vec2<bool>(arg_2.d.c, false)), var_1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -248f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.c.a.d - var_1.d.b.d)))), _wgslsmith_mod_i32(~(~1i ^ u_input.d), -(~_wgslsmith_mod_i32(-2147483647i, 8984i))));
    let var_3 = ~2147483647i;
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.c.b.c, _wgslsmith_f_op_f32(arg_2.c.b.c * -315f), _wgslsmith_f_op_f32(875f * -1367f), arg_2.c.a.d.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0, var_0, 656f, 735f))))) - _wgslsmith_div_vec4_f32(vec4<f32>(-1204f, var_1.d.a.c, _wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_div_f32(520f, arg_2.d.b.c)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_1.c.b.c, -1228f, 1041f) * vec4<f32>(154f, 156f, -1530f, var_1.d.a.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_2.c, -601f, arg_2.d.a.d.x))))));
    return any(select(select(!(!vec4<bool>(arg_2.d.b.b, false, true, arg_2.d.b.b)), !(!vec4<bool>(true, false, var_1.d.c, true)), vec4<bool>(var_2.c < -219f, var_1.c.a.b, select(true, var_2.b, false), var_1.c.b.b)), !select(select(vec4<bool>(false, arg_2.b.x, true, var_2.b), vec4<bool>(arg_2.d.c, arg_2.c.a.b, true, var_1.d.a.b), var_2.b), vec4<bool>(true, var_2.b, true, var_2.b), true), select(!(!vec4<bool>(var_2.b, var_2.b, false, false)), select(vec4<bool>(true, true, var_1.c.c, var_1.c.b.b), select(vec4<bool>(true, arg_2.b.x, false, arg_2.d.c), vec4<bool>(var_2.b, arg_2.c.a.b, true, true), var_1.d.b.b), !vec4<bool>(arg_2.c.c, var_2.b, false, false)), vec4<bool>(-2147483647i >= var_2.e, var_1.d.c, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(reverseBits(reverseBits(~vec4<i32>(u_input.d, u_input.c, -2147483647i, u_input.c))) ^ _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(max(vec4<i32>(1i, u_input.d, -36947i, u_input.b), vec4<i32>(u_input.b, -1230i, u_input.d, -2147483647i)), vec4<i32>(u_input.c, u_input.c, 0i, u_input.b)), vec4<i32>(select(0i, -24327i, false), u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, u_input.b, u_input.d, u_input.d), vec4<i32>(43484i, u_input.c, 22363i, u_input.c)), 1i)), select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), func_1(vec4<i32>(u_input.b, u_input.c, u_input.b, -46374i), vec3<u32>(51813u, u_input.a.x, u_input.a.x), Struct_3(vec4<i32>(0i, 41356i, 1i, u_input.c), vec2<bool>(false, true), Struct_2(Struct_1(u_input.b, false, 1473f, vec2<f32>(-671f, -1000f), -55148i), Struct_1(u_input.b, false, 528f, vec2<f32>(1686f, 1891f), u_input.d), false), Struct_2(Struct_1(u_input.b, false, 1450f, vec2<f32>(1543f, 1230f), u_input.b), Struct_1(10337i, true, -409f, vec2<f32>(-1000f, 2069f), -21066i), true)))), func_2().a.b || false), select(select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), false)), select(vec2<bool>(true, false), vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true))), vec2<bool>(true, true)), true), Struct_2(Struct_1(1i, false, -1000f, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2329f, -598f) * vec2<f32>(681f, -280f)), vec2<f32>(1061f, 663f)), ~(-45376i ^ u_input.b)), func_2().a, true), Struct_2(func_2().a, Struct_1(u_input.d, any(vec4<bool>(false, true, true, false)) & any(vec4<bool>(false, true, false, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1048f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-136f, 575f)), -_wgslsmith_mod_i32(2147483647i, 2147483647i)), !(any(vec2<bool>(false, false)) && true)));
    var var_1 = select(-_wgslsmith_add_i32(-1i, countOneBits(reverseBits(-15790i))), -1i, !select(all(!vec4<bool>(var_0.b.x, var_0.b.x, false, var_0.d.c)), true, func_2().c));
    let var_2 = func_2().a;
    let var_3 = _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(reverseBits(_wgslsmith_clamp_i32(var_0.a.x, 0i, -41785i)), -5967i), -77984i, -_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.e, 1i, u_input.d, 1i), ~vec4<i32>(var_0.a.x, var_0.c.b.a, -24753i, -1i)), u_input.c), var_0.a);
    var_1 = _wgslsmith_mod_i32(~2147483647i, var_3.x);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.b.c));
    var var_5 = select(vec4<bool>(func_3(-2147483647i, select(vec4<bool>(var_2.b, true, true, var_2.b), vec4<bool>(var_2.b, var_0.d.a.b, var_0.d.b.b, var_2.b), vec4<bool>(true, false, true, true)), 4294967295u, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x)) != (_wgslsmith_f_op_f32(-var_0.c.a.c) > var_0.c.a.d.x), false, var_0.b.x, var_2.b), vec4<bool>(false, all(vec2<bool>(any(vec4<bool>(var_2.b, var_0.c.a.b, true, false)), true)), all(select(vec4<bool>(var_2.b, false, var_2.b, true), !vec4<bool>(var_2.b, var_2.b, true, var_0.b.x), true)), true), (_wgslsmith_div_u32(u_input.a.x, 1u) & 1u) <= abs(u_input.a.x));
    let var_6 = !(!(!select(select(var_5.zzw, var_5.yxx, true), !var_5.wxz, !var_5.ywx)));
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_add_vec4_u32(~vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x), abs(abs(vec4<u32>(20734u, u_input.a.x, 0u, u_input.a.x)))), vec4<u32>(0u, _wgslsmith_dot_vec2_u32(u_input.a.xz, ~u_input.a.yz), u_input.a.x, abs(u_input.a.x)), select(vec4<bool>(any(var_6.zz), !var_2.b, func_1(vec4<i32>(var_2.a, var_3.x, var_0.a.x, -35592i), u_input.a, Struct_3(var_3, vec2<bool>(var_2.b, true), var_0.d, var_0.c)), any(vec2<bool>(var_0.d.b.b, var_5.x))), vec4<bool>(true, true, false, func_2().c), true)), max(vec3<u32>(u_input.a.x, u_input.a.x, ~(~22843u)), vec3<u32>(29331u, select(~u_input.a.x, ~27117u, false), reverseBits(1u))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-var_2.d.x), _wgslsmith_f_op_f32(-var_2.c), -1629f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(var_0.c.b.d))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.c.a.d)))));
}

