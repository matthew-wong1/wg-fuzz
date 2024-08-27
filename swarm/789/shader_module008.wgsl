struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: i32,
}

struct Struct_4 {
    a: f32,
    b: vec3<bool>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: Struct_1, arg_3: u32) -> u32 {
    return arg_1.b.a << (arg_3 % 32u);
}

fn func_3() -> u32 {
    let var_0 = u_input.a.x;
    let var_1 = Struct_1(~(~1u) & abs(select(~18739u, 85125u, any(vec3<bool>(false, false, true)))), -abs(-1i), -vec2<i32>(40368i, -_wgslsmith_sub_i32(var_0, 2697i)), select(~(~u_input.a.zy), (max(u_input.a.yz, u_input.a.xw) << (countOneBits(vec2<u32>(0u, 43034u)) % vec2<u32>(32u))) & ~u_input.a.zz, !(true == all(vec3<bool>(true, false, true)))));
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-545f, _wgslsmith_f_op_f32(abs(748f)))), -1810f));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-921f * -587f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1664f)))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1698f * -335f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-259f + 501f) * _wgslsmith_f_op_f32(f32(-1f) * -1419f)))));
    let var_3 = vec4<bool>(all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), any(vec4<bool>(true, true, true, true)))), all(vec4<bool>(any(vec4<bool>(false, false, false, false)) || all(vec2<bool>(true, false)), abs(var_0) == 1i, all(vec3<bool>(true, true, true)), true && any(vec4<bool>(true, false, true, false)))), false, select(!(!all(vec4<bool>(true, false, true, false))), true, true));
    return var_1.a;
}

fn func_2(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: vec2<bool>) -> vec4<bool> {
    var var_0 = Struct_1(53936u, -max(firstTrailingBit(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x)), -2147483647i), vec2<i32>(firstTrailingBit(-44565i), countOneBits(u_input.a.x)), -_wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.a.zz, -u_input.a.yz), firstTrailingBit(max(vec2<i32>(arg_0.c, arg_0.c), vec2<i32>(30367i, -45689i)))));
    var_0 = Struct_1(~(select(var_0.a & 36780u, 0u, true) | func_3()), -var_0.c.x, u_input.a.yz, _wgslsmith_add_vec2_i32(select(vec2<i32>(var_0.b, u_input.a.x) | _wgslsmith_mult_vec2_i32(u_input.a.xx, vec2<i32>(-8792i, -2147483647i)), vec2<i32>(max(-2147483647i, arg_0.c), -1i), select(vec2<bool>(arg_0.b.b.x, false), select(vec2<bool>(false, arg_0.b.b.x), arg_0.b.b.yx, arg_2), false)), _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(-24856i, arg_0.c), u_input.a.x), _wgslsmith_mult_vec2_i32(u_input.a.zx >> (vec2<u32>(arg_1.x, arg_0.b.a) % vec2<u32>(32u)), vec2<i32>(var_0.c.x, -2147483647i)))));
    var_0 = Struct_1(var_0.a, countOneBits(_wgslsmith_mod_i32(var_0.b, max(1496i, 1i))), vec2<i32>(-u_input.a.x, ~(arg_0.c ^ u_input.a.x)) << (abs(vec2<u32>(0u, min(976u, var_0.a))) % vec2<u32>(32u)), u_input.a.xw);
    let var_1 = Struct_1(reverseBits(arg_1.x), ~(-u_input.a.x), -select(~vec2<i32>(u_input.a.x, var_0.b), firstTrailingBit(var_0.c), select(arg_2, select(arg_2, vec2<bool>(false, arg_2.x), true), arg_2)), ~(vec2<i32>(-var_0.c.x, -1i) << (~select(arg_1.xx, vec2<u32>(37222u, arg_0.b.a), false) % vec2<u32>(32u))));
    var_0 = var_1;
    return vec4<bool>(!(!(!arg_2.x)), any(vec3<bool>(true, true, true)) & true, all(vec4<bool>(any(select(vec4<bool>(true, true, false, arg_2.x), vec4<bool>(false, arg_0.b.b.x, arg_2.x, false), vec4<bool>(arg_0.b.b.x, arg_2.x, true, arg_0.b.b.x))), (var_1.b | var_0.b) > 1i, arg_2.x, (arg_2.x != arg_2.x) && true)), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, _wgslsmith_clamp_u32(62104u, 8917u, 4294967295u), _wgslsmith_sub_u32(50681u, 19508u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4652u), vec2<u32>(90076u, 1u))), vec4<u32>(1u, 4294967295u >> (1u % 32u), func_1(u_input.a.x, Struct_3(1316f, Struct_2(0u, vec3<bool>(false, true, true)), u_input.a.x), Struct_1(4294967295u, -1i, u_input.a.yy, u_input.a.yy), 56580u), ~14208u)));
    var var_1 = select(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true)))), select(select(!func_2(Struct_3(1000f, Struct_2(429u, vec3<bool>(false, false, true)), 0i), var_0.yxw, vec2<bool>(true, false)), vec4<bool>(false, true, all(vec3<bool>(true, true, true)), var_0.x < var_0.x), true), vec4<bool>(true, _wgslsmith_div_u32(var_0.x, var_0.x) == ~var_0.x, u_input.a.x != min(-1i, u_input.a.x), any(vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(671f, -171f, false)) + 489f) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(190f)))), !vec4<bool>(any(vec4<bool>(false, false, true, true)) && all(vec3<bool>(false, false, true)), true, all(vec2<bool>(true, true)), func_1(0i, Struct_3(295f, Struct_2(12377u, vec3<bool>(false, false, false)), u_input.a.x), Struct_1(0u, u_input.a.x, vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.wz), var_0.x) < ~var_0.x));
    let var_2 = _wgslsmith_f_op_f32(min(-1724f, -749f));
    let var_3 = _wgslsmith_f_op_f32(-var_2);
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -460f) + var_2) - -1373f));
}

