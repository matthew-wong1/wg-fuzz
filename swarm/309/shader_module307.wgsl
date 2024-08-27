struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: u32,
    d: bool,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: i32) -> bool {
    let var_0 = !vec2<bool>(true, !arg_1.a.x);
    let var_1 = firstLeadingBit(vec4<i32>(-1i, _wgslsmith_div_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_3, arg_3, 31867i), arg_1.b.zyy), max(~arg_3, arg_1.b.x)), _wgslsmith_sub_i32(firstTrailingBit(arg_3), -2147483647i) | -abs(arg_1.b.x), _wgslsmith_dot_vec2_i32(-vec2<i32>(arg_3, arg_1.b.x), ~arg_1.b.yw)));
    let var_2 = !select(arg_1.e.zxz, vec3<bool>(!(true | arg_1.e.x), -1114f >= _wgslsmith_f_op_f32(trunc(-436f)), false), any(select(!vec3<bool>(arg_0.x, arg_0.x, var_0.x), vec3<bool>(arg_0.x, true, arg_1.a.x), true)));
    var var_3 = select(_wgslsmith_add_i32(_wgslsmith_div_i32(select(arg_1.b.x, ~arg_1.b.x, false), var_1.x), _wgslsmith_dot_vec4_i32(-_wgslsmith_mod_vec4_i32(arg_1.b, var_1), firstTrailingBit(var_1))), _wgslsmith_mod_i32(~(~_wgslsmith_sub_i32(arg_3, -30747i)), i32(-1i) * -1i), !(~u_input.b.x > 1u) && (u_input.a.x <= _wgslsmith_sub_u32(~arg_2.x, 9891u)));
    var_3 = 0i | _wgslsmith_mod_i32(var_1.x, firstTrailingBit(-_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.b.x, 2147483647i, 0i), vec3<i32>(arg_1.b.x, 21018i, 0i))));
    return !any(arg_1.e.xy);
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: f32, arg_3: vec4<i32>) -> bool {
    let var_0 = Struct_1(vec4<bool>(!(!func_3(vec3<bool>(false, true, true), Struct_1(vec4<bool>(true, false, true, false), vec4<i32>(arg_1, 2147483647i, -1i, 2147483647i), 1u, true, vec4<bool>(true, true, true, true)), vec3<u32>(0u, u_input.a.x, u_input.b.x), 0i)), !((u_input.b.x <= 0u) != true), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), arg_2 <= arg_2)), any(vec3<bool>(true, true, true))), select(vec4<i32>(arg_3.x, ~(arg_3.x >> (4294967295u % 32u)), arg_0, _wgslsmith_mod_i32(arg_0, 56819i) ^ select(-22866i, arg_0, false)), vec4<i32>(~(arg_0 >> (u_input.b.x % 32u)), 18310i, arg_3.x, arg_0), !(6452i == _wgslsmith_add_i32(arg_1, arg_1))), max(select(u_input.b.x, min(u_input.a.x, 20624u), any(vec4<bool>(true, false, false, true))) << (u_input.a.x % 32u), firstLeadingBit(0u)), all(vec3<bool>(true, all(vec3<bool>(true, false, true)), all(vec4<bool>(true, true, true, true)))), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), false)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), true), vec4<bool>(true, false, true, false))), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, any(vec4<bool>(false, true, true, true))), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true))));
    var var_1 = var_0.c;
    var_1 = _wgslsmith_div_u32(var_0.c, abs(~u_input.b.x));
    let var_2 = Struct_1(!select(select(!vec4<bool>(true, var_0.d, false, true), vec4<bool>(false, var_0.d, false, true), vec4<bool>(var_0.d, false, var_0.a.x, false)), var_0.e, vec4<bool>(false, var_0.d, false, all(var_0.a.wx))), min(arg_3, firstLeadingBit(abs(vec4<i32>(arg_3.x, arg_3.x, arg_1, var_0.b.x))) >> (~(~u_input.a) % vec4<u32>(32u))), ~u_input.b.x, var_0.a.x && any(select(select(var_0.a, var_0.a, true), var_0.e, true && var_0.e.x)), select(!vec4<bool>(true, true, var_0.a.x & true, false & var_0.e.x), select(select(!vec4<bool>(false, false, var_0.d, var_0.e.x), select(var_0.a, vec4<bool>(var_0.a.x, var_0.a.x, var_0.d, true), var_0.d), true), vec4<bool>(true, true, !var_0.a.x, var_0.d), select(vec4<bool>(false, false, var_0.d, var_0.a.x), vec4<bool>(false, false, var_0.a.x, true), vec4<bool>(var_0.a.x, var_0.d, var_0.a.x, true))), !select(!vec4<bool>(true, var_0.e.x, var_0.e.x, true), !var_0.a, any(vec2<bool>(var_0.a.x, var_0.a.x)))));
    let var_3 = _wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(select(_wgslsmith_sub_vec3_u32(u_input.a.zyx, vec3<u32>(1u, var_2.c, 4294967295u)), abs(u_input.a.yxw), all(vec4<bool>(var_0.d, var_2.e.x, var_2.a.x, var_2.e.x))), ~u_input.b), _wgslsmith_mod_u32(min(45470u, var_2.c) << (~u_input.b.x % 32u), 1u));
    return arg_2 > arg_2;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(select(!vec4<bool>(false, all(vec4<bool>(arg_0.a.x, arg_0.a.x, false, true)), false, true), vec4<bool>(true, arg_0.a.x, all(vec2<bool>(true, false)), false), vec4<bool>(any(vec3<bool>(true, arg_0.a.x, arg_0.e.x)), arg_0.e.x, all(select(arg_0.e.xx, arg_0.a.xx, vec2<bool>(false, arg_0.e.x))), arg_0.e.x)), vec4<i32>(-2820i, ~firstLeadingBit(countOneBits(arg_0.b.x)), _wgslsmith_add_i32(0i, -arg_0.b.x), _wgslsmith_mult_i32(-2147483647i, -arg_0.b.x)), ~103523u, true, vec4<bool>(func_2(abs(_wgslsmith_sub_i32(-1i, arg_0.b.x)), max(1i, 1i) >> (arg_0.c % 32u), 1004f, min(vec4<i32>(1i, arg_0.b.x, arg_0.b.x, 4459i), arg_0.b) << (u_input.a % vec4<u32>(32u))), -416f <= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(978f + -726f), _wgslsmith_f_op_f32(trunc(-493f)))), firstLeadingBit(arg_0.b.x) <= firstTrailingBit(arg_0.b.x >> (0u % 32u)), func_2(firstLeadingBit(_wgslsmith_dot_vec4_i32(arg_0.b, vec4<i32>(11829i, -9025i, arg_0.b.x, -11274i))), arg_0.b.x, 281f, _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, arg_0.b.x, 1i, arg_0.b.x), vec4<i32>(-1i, arg_0.b.x, arg_0.b.x, arg_0.b.x)))));
    let var_1 = arg_0;
    var_0 = Struct_1(vec4<bool>(var_0.e.x, any(select(var_0.a.zx, var_0.e.zx, true)), true | arg_0.e.x, !var_0.d), _wgslsmith_mult_vec4_i32(firstTrailingBit(~var_1.b), vec4<i32>(var_0.b.x, firstTrailingBit(abs(var_1.b.x)), abs(var_1.b.x), _wgslsmith_mult_i32(var_0.b.x, 2147483647i) ^ var_1.b.x)), _wgslsmith_add_u32(abs(41196u), 1u), !var_0.e.x, vec4<bool>(!var_0.a.x, all(!vec4<bool>(true, var_0.d, var_0.a.x, true)), arg_0.d, 1u < _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(var_1.c, 1u, 60972u, var_0.c)), ~u_input.a)));
    var var_2 = var_1;
    var var_3 = var_1;
    return Struct_1(!vec4<bool>(var_2.d, select(all(var_1.e.zw), true, true & arg_0.d), true, true), _wgslsmith_add_vec4_i32(var_1.b, var_0.b) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(~u_input.b.x, var_0.c, ~40393u, ~5337u), abs(vec4<u32>(u_input.b.x, var_3.c, 4306u, arg_0.c)), vec4<u32>(var_2.c, 24549u << (1u % 32u), 1u, arg_0.c)) % vec4<u32>(32u)), 74524u, select(var_0.e.x, var_0.d, var_2.b.x == ~(-1i << (var_3.c % 32u))), !(!var_0.e));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true)), vec4<i32>(5788i, ~(-6342i), abs(1i), firstTrailingBit(2147483647i)), u_input.b.x, true, vec4<bool>(true, true || any(vec3<bool>(false, false, true)), u_input.a.x == 6226u, any(vec2<bool>(true, true)))));
    let var_1 = !(!(!(!var_0.e.yx)));
    var_0 = func_1(func_1(Struct_1(select(vec4<bool>(var_0.e.x, true, true, var_0.d), vec4<bool>(var_0.a.x, var_1.x, var_0.a.x, true), vec4<bool>(var_0.d, var_0.e.x, true, var_1.x)), var_0.b, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.a.xyz, u_input.b), u_input.b), false == !var_1.x, select(vec4<bool>(var_0.a.x, true, false, false), vec4<bool>(true, var_0.e.x, var_0.d, true), u_input.b.x >= 33497u))));
    var_0 = Struct_1(select(!vec4<bool>(var_0.b.x >= 0i, func_1(Struct_1(var_0.e, var_0.b, 0u, true, var_0.a)).d, var_0.e.x, false), vec4<bool>(~var_0.b.x >= _wgslsmith_dot_vec2_i32(var_0.b.zy, var_0.b.zx), true & func_2(var_0.b.x, 44880i, 164f, vec4<i32>(9484i, var_0.b.x, var_0.b.x, -2147483647i)), !var_1.x || all(var_0.a), var_0.e.x), vec4<bool>(true, (var_0.c >> (u_input.a.x % 32u)) == abs(93908u), true, countOneBits(0i) < abs(var_0.b.x))), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(-var_0.b.x, ~(-1i)), var_0.b.x), _wgslsmith_div_i32(-var_0.b.x, var_0.b.x << (u_input.a.x % 32u)), var_0.b.x, var_0.b.x), 4294967295u, !select(var_1.x, all(vec3<bool>(false, var_1.x, true)), all(!vec4<bool>(false, false, var_1.x, false))), var_0.a);
    var_0 = Struct_1(!vec4<bool>(false, select(var_0.b.x <= -1i, !var_1.x, any(var_1)), true, !(!var_0.e.x)), var_0.b, 10820u, var_1.x, select(var_0.e, !(!(!vec4<bool>(var_0.e.x, true, var_0.d, true))), var_0.d));
    var var_2 = func_1(Struct_1(!var_0.e, abs(var_0.b), 25521u, var_1.x, func_1(Struct_1(!var_0.a, _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.b.x, var_0.b.x, 1i, var_0.b.x), vec4<i32>(50025i, var_0.b.x, var_0.b.x, var_0.b.x), var_0.b), _wgslsmith_sub_u32(var_0.c, 0u), var_1.x, select(var_0.e, var_0.e, var_0.e.x))).a));
    var var_3 = ~abs(u_input.a.zz);
    var var_4 = vec2<bool>(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-827f)) * _wgslsmith_f_op_f32(trunc(680f))) == -858f, all(var_0.e.xw), true && func_1(Struct_1(var_2.a, vec4<i32>(-39072i, -30333i, var_2.b.x, 2112i), 1u, var_1.x, vec4<bool>(true, var_1.x, false, true))).e.x), all(vec2<bool>(var_1.x, !func_3(vec3<bool>(var_2.e.x, var_1.x, var_0.e.x), Struct_1(vec4<bool>(true, false, var_1.x, false), vec4<i32>(1i, var_0.b.x, var_2.b.x, var_0.b.x), 61019u, var_1.x, var_2.e), vec3<u32>(var_0.c, 15199u, var_2.c), var_2.b.x))));
    var var_5 = func_1(func_1(func_1(func_1(Struct_1(vec4<bool>(false, true, var_2.a.x, false), vec4<i32>(1i, 0i, 1i, var_0.b.x), 77181u, var_4.x, var_0.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(-2067f, vec2<u32>(var_5.c, _wgslsmith_dot_vec3_u32(u_input.a.zyz, u_input.a.wyw)));
}

