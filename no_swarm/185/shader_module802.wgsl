struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<f32>,
    d: vec4<i32>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: u32,
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: i32, arg_2: vec3<f32>, arg_3: Struct_2) -> i32 {
    let var_0 = ~vec4<i32>(_wgslsmith_sub_i32(~arg_3.e, ~(~2147483647i)), firstLeadingBit(2147483647i), ((u_input.b.x | arg_0.x) ^ -96022i) ^ _wgslsmith_mod_i32(min(arg_3.d.x, 28629i), _wgslsmith_add_i32(1i, u_input.b.x)), _wgslsmith_dot_vec2_i32(~arg_0.zx, ~vec2<i32>(u_input.b.x, -4800i)));
    let var_1 = Struct_1(all(vec3<bool>(any(vec4<bool>(false, false, true, arg_3.b)), false, !arg_3.b)) && true);
    var var_2 = 2072u;
    var_2 = u_input.c;
    var_2 = u_input.d;
    return countOneBits(u_input.b.x) >> (~u_input.d % 32u);
}

fn func_2() -> bool {
    var var_0 = vec3<bool>(any(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true))), true, any(vec3<bool>(_wgslsmith_mod_i32(-8671i, u_input.b.x) <= _wgslsmith_clamp_i32(u_input.b.x, 1689i, u_input.b.x), _wgslsmith_sub_u32(1u, 1u) < ~u_input.d, true)));
    let var_1 = Struct_2(Struct_1(false), ((u_input.c & u_input.c) >> (4294967295u % 32u)) > abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.c, 26880u), vec3<u32>(1u, 8271u, 0u) << (vec3<u32>(u_input.c, 4469u, 4294967295u) % vec3<u32>(32u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1081f, 868f), _wgslsmith_div_vec2_f32(vec2<f32>(278f, -1870f), vec2<f32>(1419f, -2071f)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -309f)))), _wgslsmith_clamp_vec4_i32(abs(-_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, 16272i, 0i, 2147483647i), vec4<i32>(9485i, 1i, u_input.b.x, u_input.b.x))), select((vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 24705i) | vec4<i32>(-6474i, u_input.b.x, 32882i, u_input.b.x)) & ~vec4<i32>(u_input.b.x, -1i, -1i, -2147483647i), -vec4<i32>(-33052i, u_input.b.x, u_input.b.x, u_input.b.x), vec4<bool>(var_0.x, all(vec3<bool>(var_0.x, var_0.x, var_0.x)), true, var_0.x)), countOneBits(vec4<i32>(29478i & u_input.b.x, 15477i, u_input.b.x, func_3(vec4<i32>(-9591i, u_input.b.x, -1i, u_input.b.x), u_input.b.x, vec3<f32>(-2101f, -123f, -596f), Struct_2(Struct_1(var_0.x), false, vec2<f32>(-405f, 1941f), vec4<i32>(u_input.b.x, u_input.b.x, 0i, 28668i), u_input.b.x))))), u_input.b.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.x + -494f) + _wgslsmith_f_op_f32(step(var_1.c.x, -123f))) + _wgslsmith_f_op_f32(f32(-1f) * -586f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.c.x), -687f)))), 1462f)));
    let var_3 = select(!(var_1.b && !(!var_0.x)), !any(select(select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(true, true, var_0.x), var_1.b), vec3<bool>(var_1.b, var_1.a.a, false), select(vec3<bool>(var_0.x, true, false), vec3<bool>(false, false, false), var_1.b))), (var_1.b | var_1.a.a) && all(vec4<bool>(true, all(vec4<bool>(var_0.x, var_1.a.a, false, true)), false, var_0.x)));
    var_0 = !select(select(!select(vec3<bool>(var_3, var_0.x, var_0.x), vec3<bool>(false, false, true), var_0.x), vec3<bool>(true, all(vec4<bool>(false, var_1.b, var_3, var_1.b)), false), all(select(vec2<bool>(var_1.a.a, false), vec2<bool>(var_3, var_0.x), vec2<bool>(false, var_3)))), select(select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(true, false, true), !var_0.x), vec3<bool>(u_input.c == u_input.a.x, var_1.a.a, var_3), vec3<bool>(var_0.x || var_1.a.a, var_1.c.x > 298f, true)), vec3<bool>(!(var_0.x & var_0.x), all(select(vec4<bool>(var_1.b, true, false, var_0.x), vec4<bool>(var_0.x, true, var_0.x, false), var_3)), all(select(vec4<bool>(true, false, var_1.b, var_1.a.a), vec4<bool>(true, false, true, var_0.x), var_3))));
    return var_3;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>) -> i32 {
    var var_0 = (~vec3<u32>(4294967295u, 1u, u_input.d & u_input.c) | vec3<u32>(_wgslsmith_div_u32(abs(u_input.a.x), abs(u_input.a.x)), 26653u, reverseBits(u_input.c))) ^ select(~_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.d, u_input.c, 4294967295u), vec3<u32>(4294967295u, u_input.a.x, 10760u)), vec3<u32>(4294967295u, ~abs(4294967295u), abs(~1u)), func_2());
    var_0 = firstTrailingBit((~vec3<u32>(var_0.x, 39624u, 74707u) | _wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, 8881u, 36228u), vec3<u32>(var_0.x, 3648u, u_input.d))) & (vec3<u32>(u_input.a.x, 55556u, u_input.d) & ~vec3<u32>(59196u, 4294967295u, u_input.c))) & ~abs(~vec3<u32>(var_0.x, 4294967295u, var_0.x));
    let var_1 = Struct_1(arg_1.x);
    var var_2 = _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.b.yy, max(vec2<i32>(28846i, 1i), vec2<i32>(-2147483647i, -25460i))), func_3(-vec4<i32>(-26763i, -2147483647i, u_input.b.x, 11017i), u_input.b.x, _wgslsmith_div_vec3_f32(vec3<f32>(1446f, 156f, 673f), vec3<f32>(640f, -1000f, -1910f)), Struct_2(var_1, arg_1.x, vec2<f32>(1000f, -120f), vec4<i32>(-814i, 1i, u_input.b.x, 25049i), 0i)), u_input.b.x, 36998i), ~firstTrailingBit(select(vec4<i32>(u_input.b.x, u_input.b.x, -3162i, u_input.b.x), vec4<i32>(-2147483647i, -2147483647i, u_input.b.x, -1i), false))), -((min(vec4<i32>(u_input.b.x, u_input.b.x, 8511i, u_input.b.x), vec4<i32>(-1185i, 0i, 47211i, 11548i)) & (vec4<i32>(u_input.b.x, -1i, u_input.b.x, u_input.b.x) & vec4<i32>(0i, -2147483647i, 27457i, u_input.b.x))) | vec4<i32>(u_input.b.x, _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, u_input.b.x), 1i, max(-1i, u_input.b.x))));
    let var_3 = abs(u_input.c);
    return firstLeadingBit(-(firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-9727i, var_2.x), vec2<i32>(20007i, var_2.x))) >> (var_3 % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(u_input.b.x, _wgslsmith_add_i32(-_wgslsmith_sub_i32(func_1(Struct_1(true), vec3<bool>(true, false, true)), u_input.b.x), _wgslsmith_div_i32(u_input.b.x, ~1i)), _wgslsmith_div_i32(u_input.b.x, i32(-1i) * -59725i), (_wgslsmith_add_i32(29767i, u_input.b.x) | ~_wgslsmith_sub_i32(0i, 0i)) & u_input.b.x);
    let var_1 = vec3<f32>(-299f, _wgslsmith_f_op_f32(-1000f + -283f), _wgslsmith_f_op_f32(ceil(527f)));
    let var_2 = vec2<f32>(-1781f, var_1.x);
    let var_3 = ~func_3(vec4<i32>(firstLeadingBit(895i), 7288i, u_input.b.x, 0i), _wgslsmith_mod_i32(select(0i, 2147483647i, all(vec3<bool>(true, true, true))), min(firstLeadingBit(0i), firstLeadingBit(-52045i))), _wgslsmith_f_op_vec3_f32(-var_1), Struct_2(Struct_1(u_input.b.x >= u_input.b.x), true, _wgslsmith_f_op_vec2_f32(select(var_1.xz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-161f, var_2.x)), true)), vec4<i32>(var_0.x & u_input.b.x, var_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, -329i, -722i, 31716i), vec4<i32>(-48169i, -26003i, -10498i, u_input.b.x)), var_0.x), _wgslsmith_add_i32(_wgslsmith_sub_i32(var_0.x, 21851i), abs(u_input.b.x))));
    let var_4 = Struct_2(Struct_1(any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true))), true, vec2<f32>(var_2.x, _wgslsmith_f_op_f32(-var_2.x)), vec4<i32>(-(func_3(vec4<i32>(-45701i, 46104i, var_3, 28335i), -2147483647i, var_1, Struct_2(Struct_1(true), true, var_1.yz, vec4<i32>(u_input.b.x, var_3, -2147483647i, -1i), -1i)) | -u_input.b.x), -var_0.x, -reverseBits(~(-46364i)), _wgslsmith_div_i32(_wgslsmith_mult_i32(var_0.x, 24449i), ~var_3)), -1i);
    var_0 = var_4.d;
    var var_5 = var_4.a;
    var var_6 = vec3<bool>(any(!(!select(vec2<bool>(var_4.b, true), vec2<bool>(false, true), var_4.a.a))), var_4.b, false);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(344f + var_1.x))), -2659f, _wgslsmith_f_op_f32(round(163f))), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.x), var_4.c.x, var_5.a)))), var_1.x, 416f), var_1.yz, _wgslsmith_mult_u32(u_input.d | u_input.d, u_input.a.x));
}

