struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: f32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec2<f32>) -> u32 {
    var var_0 = arg_0.a.a.zy;
    var var_1 = arg_0;
    var_0 = !(!vec2<bool>(arg_0.b < _wgslsmith_mult_u32(var_1.b, arg_0.b), any(vec3<bool>(arg_0.d, true, arg_0.c.a.x))));
    var var_2 = Struct_2(arg_0.a, ~(~(~0u)), Struct_1(select(vec3<bool>(true, true && arg_0.d, true), select(select(vec3<bool>(var_0.x, var_0.x, arg_0.d), var_1.c.a, var_0.x), !var_1.a.a, var_0.x), !(!arg_0.a.a)), arg_0.a.b, var_1.a.c, reverseBits(_wgslsmith_sub_vec4_i32(var_1.a.d << (vec4<u32>(var_1.b, 34960u, 34074u, var_1.b) % vec4<u32>(32u)), -vec4<i32>(u_input.a, -26515i, 0i, arg_1.x)))), false);
    var_0 = !(!(!vec2<bool>(all(vec4<bool>(var_0.x, arg_0.a.a.x, true, arg_0.c.a.x)), true)));
    return var_1.b;
}

fn func_4(arg_0: vec3<f32>, arg_1: bool) -> i32 {
    let var_0 = ~(-(~vec2<i32>(-5619i, 37414i)));
    let var_1 = Struct_2(Struct_1(!vec3<bool>(false, false, arg_1 | arg_1), u_input.a, _wgslsmith_f_op_f32(f32(-1f) * -1312f), -reverseBits(abs(vec4<i32>(-788i, 7642i, -26957i, 0i)))), select(abs(_wgslsmith_sub_u32(~8167u, countOneBits(0u))), 1u, true), Struct_1(!(!vec3<bool>(true, arg_1, arg_1)), 17923i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), 451f), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, 30783i, -2147483647i, firstLeadingBit(u_input.a)), vec4<i32>(u_input.a, 31148i, ~var_0.x, var_0.x))), !arg_1 && true);
    let var_2 = Struct_2(var_1.c, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~(~vec3<u32>(var_1.b, 98225u, 1u)), ~vec3<u32>(var_1.b, 1u, 1u)), ~vec3<u32>(5443u, 4202u, 35264u) & ~select(vec3<u32>(var_1.b, 29251u, var_1.b), vec3<u32>(1u, 50617u, 21966u), false)), Struct_1(!var_1.a.a, firstTrailingBit(-26771i | -var_0.x), _wgslsmith_div_f32(_wgslsmith_div_f32(465f, _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), var_1.c.d | ~max(vec4<i32>(37886i, u_input.a, u_input.a, -2147483647i), var_1.a.d)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(var_1.c.a.x || false, arg_1 || false, select(false, true, var_1.a.a.x), select(arg_1, var_1.a.a.x, false)), all(vec4<bool>(arg_1, arg_1, var_1.d, arg_1)) & arg_1)));
    let var_3 = Struct_1(vec3<bool>(true, var_2.d && any(vec2<bool>(arg_1, true)), all(vec3<bool>(var_1.d, false, var_2.a.a.x)) | any(select(var_2.c.a.zz, var_1.a.a.xz, var_2.d))), u_input.a, _wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_sub_vec4_i32(var_2.a.d, var_2.a.d));
    var var_4 = select(vec3<bool>(all(vec3<bool>(true, arg_1, false | var_3.a.x)), var_3.a.x, var_1.b > func_3(Struct_2(var_3, 75490u, var_3, var_1.d), ~vec3<i32>(2147483647i, var_1.c.b, 0i), arg_0.yz)), select(!select(var_1.c.a, vec3<bool>(var_2.d, true, false), vec3<bool>(true, var_1.d, false)), !select(vec3<bool>(true, true, true), vec3<bool>(true, arg_1, true), vec3<bool>(false, true, var_2.d)), select(!var_3.a, var_3.a, all(vec4<bool>(var_1.d, false, arg_1, arg_1)))), !(!select(var_2.c.a, var_1.a.a, vec3<bool>(var_2.d, false, false))));
    return _wgslsmith_mod_i32(_wgslsmith_mod_i32(-55655i, 39667i), u_input.a);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(vec3<bool>(any(vec4<bool>(true, true, true, true)), any(vec2<bool>(true, false)) | !(u_input.a >= u_input.a), any(vec2<bool>(any(vec4<bool>(false, false, false, false)), true))), func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(498f, 686f, 2256f), vec3<f32>(-625f, -1000f, 1226f), false)), vec3<f32>(652f, 827f, -1525f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(622f, -1047f, 1000f)))), any(vec4<bool>(true, true, false, true)) != (~66809u <= func_3(Struct_2(Struct_1(vec3<bool>(false, false, false), u_input.a, -2880f, vec4<i32>(u_input.a, u_input.a, 1i, u_input.a)), 1u, Struct_1(vec3<bool>(false, false, false), 11081i, 838f, vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), true), vec3<i32>(0i, 1i, u_input.a), vec2<f32>(-113f, 122f)))), -1931f, vec4<i32>(~_wgslsmith_div_i32(-1i, u_input.a), _wgslsmith_sub_i32(~u_input.a, 1i), u_input.a, 47970i));
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.c - var_0.c)));
    let var_2 = vec3<u32>(~1u, 0u, 1u);
    let var_3 = Struct_1(!vec3<bool>(!any(var_0.a), firstTrailingBit(14683u) > _wgslsmith_add_u32(32027u, var_2.x), true | !var_0.a.x), -1i, var_0.c, abs(vec4<i32>(-4888i, _wgslsmith_dot_vec4_i32(var_0.d, abs(var_0.d)), -_wgslsmith_dot_vec4_i32(var_0.d, var_0.d), countOneBits(var_0.b))));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.c, -259f, _wgslsmith_f_op_f32(-674f * var_0.c)))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_3.c, var_3.c, var_3.c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1034f, var_3.c, -1523f)))))));
    return Struct_1(select(select(var_0.a, !select(var_0.a, var_3.a, false), select(select(vec3<bool>(false, false, var_0.a.x), vec3<bool>(var_3.a.x, var_3.a.x, false), vec3<bool>(false, var_3.a.x, var_3.a.x)), !vec3<bool>(true, var_3.a.x, var_0.a.x), vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x))), var_0.a, !(!var_0.a.x)), -u_input.a, -1862f, vec4<i32>(_wgslsmith_add_i32(9775i, var_3.b), ~_wgslsmith_mod_i32(8972i, _wgslsmith_add_i32(u_input.a, u_input.a)), (i32(-1i) * -var_3.b) | -1i, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(var_3.d, var_0.d), vec4<i32>(u_input.a, 1i, 1i, var_3.b) & var_0.d) | 0i));
}

fn func_5(arg_0: Struct_2) -> i32 {
    var var_0 = _wgslsmith_div_i32(29328i, -27163i);
    var_0 = u_input.a;
    var_0 = func_2().b;
    let var_1 = -1195i;
    var_0 = _wgslsmith_clamp_i32(countOneBits(_wgslsmith_mod_i32(-_wgslsmith_mod_i32(-42380i, var_1), ~(-8037i))), 1i, abs(15315i));
    return arg_0.a.d.x;
}

fn func_1(arg_0: vec2<bool>, arg_1: f32, arg_2: i32) -> vec4<bool> {
    let var_0 = vec4<i32>(firstLeadingBit(-25885i & arg_2), u_input.a, func_5(Struct_2(func_2(), 0u, func_2(), true)), -_wgslsmith_mod_i32(~arg_2, _wgslsmith_sub_i32(1i, u_input.a))) & vec4<i32>(select(_wgslsmith_dot_vec2_i32(~vec2<i32>(0i, -1i), _wgslsmith_mult_vec2_i32(vec2<i32>(arg_2, 0i), vec2<i32>(arg_2, arg_2))), -(~0i), arg_0.x), _wgslsmith_clamp_i32(-30534i, arg_2, -func_4(vec3<f32>(arg_1, arg_1, arg_1), arg_0.x)), u_input.a, ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, arg_2, arg_2, -40104i) | vec4<i32>(arg_2, -2147483647i, arg_2, -2147483647i), vec4<i32>(u_input.a, u_input.a, 0i, -1i) >> (vec4<u32>(4294967295u, 65738u, 4294967295u, 35146u) % vec4<u32>(32u))));
    let var_1 = func_2();
    return select(!vec4<bool>(var_1.a.x, true, arg_0.x, true), select(!select(!vec4<bool>(var_1.a.x, var_1.a.x, arg_0.x, true), !vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), !vec4<bool>(false, arg_0.x, true, true)), vec4<bool>(var_1.a.x, all(select(vec4<bool>(var_1.a.x, var_1.a.x, arg_0.x, true), vec4<bool>(var_1.a.x, false, true, false), true)), false, !(var_1.a.x || var_1.a.x)), var_1.c == func_2().c), select(!vec4<bool>(select(true, false, arg_0.x), var_1.a.x, all(vec4<bool>(arg_0.x, false, false, arg_0.x)), func_2().a.x), vec4<bool>(!(!arg_0.x), !(var_1.c == 1136f), false, true), !(!select(vec4<bool>(true, false, arg_0.x, true), vec4<bool>(arg_0.x, true, true, false), true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !all(func_1(vec2<bool>(true, true), _wgslsmith_f_op_f32(f32(-1f) * -2270f), u_input.a));
    var var_1 = Struct_2(Struct_1(func_1(!func_1(vec2<bool>(var_0, false), 331f, -1i).zz, _wgslsmith_div_f32(-1368f, _wgslsmith_f_op_f32(1000f - -134f)), -select(u_input.a, 429i, true)).zzz, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a, 2147483647i, -28659i, 3061i), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, -2147483647i, -3866i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, 29138i)) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))), func_2().c, reverseBits(~(-vec4<i32>(-15453i, u_input.a, u_input.a, u_input.a)))), 1u << (abs(_wgslsmith_mult_u32(firstTrailingBit(4294967295u), ~4294967295u)) % 32u), func_2(), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), select(select(vec3<u32>(43063u, 0u, 4294967295u), vec3<u32>(15712u, 1u, 1u), true), vec3<u32>(1u, 1u, 1u), false)) == _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), min(vec2<u32>(1u, 0u), vec2<u32>(0u, 1u))), ~9804u, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(4294967295u, 13491u, 1u), 1u)));
    var_1 = Struct_2(Struct_1(vec3<bool>(!var_0, var_0, all(!var_1.c.a.xy)), -1i, var_1.a.c, select(var_1.c.d >> (firstLeadingBit(vec4<u32>(50928u, var_1.b, var_1.b, 1u)) % vec4<u32>(32u)), -_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, -21858i, var_1.c.b, var_1.a.b), vec4<i32>(2147483647i, var_1.c.d.x, -58811i, 2147483647i)), select(!vec4<bool>(false, var_1.c.a.x, true, var_0), vec4<bool>(false, var_1.a.a.x, true, false), !var_0))), countOneBits(var_1.b << (_wgslsmith_add_u32(var_1.b, var_1.b) % 32u)), Struct_1(!select(select(vec3<bool>(var_0, true, var_0), var_1.a.a, true), func_2().a, vec3<bool>(var_1.c.a.x, false, var_1.c.a.x)), func_5(Struct_2(func_2(), ~var_1.b, Struct_1(vec3<bool>(true, true, true), 22647i, 1669f, vec4<i32>(-2147483647i, u_input.a, 2147483647i, var_1.a.b)), all(var_1.a.a.xy))), -698f, select(func_2().d, _wgslsmith_clamp_vec4_i32(-var_1.c.d, vec4<i32>(-15602i, u_input.a, 14393i, -33857i), vec4<i32>(-45690i, u_input.a, 2147483647i, -2352i)), !all(var_1.a.a))), any(func_1(!func_1(var_1.a.a.zy, var_1.c.c, -25965i).xx, _wgslsmith_f_op_f32(-620f * _wgslsmith_f_op_f32(f32(-1f) * -288f)), _wgslsmith_div_i32(~43880i, var_1.c.b)).zwx));
    var var_2 = _wgslsmith_sub_u32(~var_1.b, _wgslsmith_dot_vec3_u32(vec3<u32>(~0u, ~1u, ~var_1.b), firstLeadingBit(~vec3<u32>(var_1.b, 0u, 30304u)))) << (27916u % 32u);
    var var_3 = firstLeadingBit(vec4<i32>(_wgslsmith_clamp_i32(func_5(Struct_2(var_1.a, var_1.b, var_1.a, false)), -2969i, 48391i), func_2().d.x, func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(252f, var_1.a.c, -2597f) * vec3<f32>(var_1.a.c, 516f, -180f)) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.c.c, var_1.c.c, var_1.a.c), vec3<f32>(var_1.a.c, -146f, 474f)))), true), u_input.a));
    var var_4 = _wgslsmith_sub_vec2_i32(var_1.a.d.xy >> (vec2<u32>(1u, var_1.b) % vec2<u32>(32u)), min(~firstTrailingBit(~vec2<i32>(-18536i, 16126i)), _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_add_i32(u_input.a, 1i), ~1i), vec2<i32>(-1i) * -vec2<i32>(var_3.x, var_1.a.d.x))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.c, min(abs(vec4<u32>(var_1.b, var_1.b, 1u, ~61040u)), firstTrailingBit(countOneBits(vec4<u32>(4294967295u, var_1.b, var_1.b, 1u)) << (~vec4<u32>(4294967295u, 0u, 27230u, 63505u) % vec4<u32>(32u)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1224f)), 1000f), 1000f);
}

