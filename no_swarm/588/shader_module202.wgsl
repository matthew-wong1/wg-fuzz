struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: vec4<i32>,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec3<f32>,
    e: vec2<f32>,
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2022f))));
    var var_1 = u_input.d.x >> (u_input.d.x % 32u);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -748f)))) + _wgslsmith_div_f32(-1964f, _wgslsmith_div_f32(927f, -121f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(646f, _wgslsmith_f_op_f32(-1004f - -671f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1372f, -230f))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-646f * 372f), _wgslsmith_f_op_f32(select(-196f, 569f, false)))))));
    let var_2 = Struct_1(min(0u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 25782u, u_input.c.x, 1u), ~vec4<u32>(u_input.b.x, u_input.c.x, u_input.c.x, 4294967295u)) % 32u), 1u), countOneBits(-48664i) & ~_wgslsmith_div_i32(-u_input.a.x, -u_input.a.x));
    var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-341f))) - 1143f))));
    return _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~(~var_2.a), abs(108742u)), u_input.b), 62297u);
}

fn func_4(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_2) -> bool {
    let var_0 = any(!(!vec2<bool>(select(true, true, true), all(vec3<bool>(false, true, false)))));
    var var_1 = u_input.a.x;
    let var_2 = Struct_1(1u, 1i);
    var_1 = abs(-firstLeadingBit(reverseBits(~arg_3.d.x)));
    var_1 = ~(-2147483647i);
    return any(select(vec2<bool>(false, false | var_0), vec2<bool>((arg_2.a == var_2.a) & (arg_0 != -8830i), all(vec3<bool>(true, false, false))), select(vec2<bool>(false, var_0 && true), !vec2<bool>(var_0, var_0), false)));
}

fn func_2(arg_0: vec2<i32>) -> f32 {
    var var_0 = _wgslsmith_mod_i32(arg_0.x, _wgslsmith_clamp_i32(countOneBits(1i), u_input.a.x, arg_0.x));
    let var_1 = func_4(0i, vec2<f32>(1f, _wgslsmith_f_op_f32(172f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-952f + 802f)))), Struct_1(0u, 553i), Struct_2(Struct_1(~(u_input.b.x & u_input.c.x), select(arg_0.x, _wgslsmith_clamp_i32(0i, u_input.a.x, 0i), select(false, true, true))), Struct_1(func_3(vec2<bool>(true, true)), u_input.a.x), u_input.d, countOneBits(-min(vec4<i32>(-1i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(41704i, u_input.a.x, 1i, u_input.a.x))), _wgslsmith_mod_i32(firstLeadingBit(arg_0.x), ~_wgslsmith_div_i32(arg_0.x, arg_0.x))));
    var_0 = ~(-firstLeadingBit(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a.x, 1i), ~vec2<i32>(arg_0.x, arg_0.x))));
    var var_2 = _wgslsmith_sub_i32(-u_input.a.x, arg_0.x);
    var_2 = -_wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_add_i32(0i, 1i), u_input.a.x) | u_input.a.x, -2147483647i);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-599f * 1042f) - _wgslsmith_f_op_f32(round(-1636f))));
}

fn func_1(arg_0: vec4<bool>) -> u32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -344f) - _wgslsmith_f_op_f32(trunc(125f))))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(815f, -1285f), _wgslsmith_f_op_f32(trunc(-1322f))))), _wgslsmith_f_op_f32(func_2(u_input.a.zy)));
    let var_1 = Struct_2(Struct_1(u_input.c.x | _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(u_input.d, u_input.c), reverseBits(vec4<u32>(19615u, 28203u, 0u, u_input.b.x))), u_input.a.x), Struct_1(_wgslsmith_sub_u32(u_input.b.x, min(4294967295u, 12669u) << (select(u_input.c.x, 64103u, true) % 32u)), max(_wgslsmith_sub_i32(-65643i, 82358i & u_input.a.x), -u_input.a.x)), abs(~(~vec4<u32>(u_input.b.x, u_input.c.x, 4294967295u, u_input.c.x))), _wgslsmith_div_vec4_i32(~vec4<i32>(u_input.a.x, -14637i, -1i, u_input.a.x), _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(49858i, 22594i, u_input.a.x, u_input.a.x), vec4<i32>(1i, u_input.a.x, 0i, u_input.a.x)), select(vec4<i32>(u_input.a.x, 1i, u_input.a.x, 53535i), vec4<i32>(-3784i, -27141i, 11688i, 17238i), arg_0.x))) << ((u_input.d & _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, u_input.d.x, u_input.b.x, u_input.b.x), u_input.d, _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 0u, u_input.c.x, 124595u), vec4<u32>(1969u, u_input.b.x, 84434u, 0u)))) % vec4<u32>(32u)), 1i);
    var var_2 = arg_0.xz;
    var_2 = vec2<bool>(select(arg_0.x, all(vec3<bool>(select(true, arg_0.x, false), var_1.a.b > 6031i, func_4(-1i, vec2<f32>(1164f, 501f), var_1.b, var_1))), any(arg_0.xyy)), !(!var_2.x));
    let var_3 = vec3<bool>(any(vec3<bool>(!(var_2.x && var_2.x), true, true)), (u_input.a.x != ((u_input.a.x & u_input.a.x) ^ firstTrailingBit(u_input.a.x))) || func_4(1i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_0)) + _wgslsmith_f_op_vec2_f32(min(var_0, var_0))), var_1.a, Struct_2(Struct_1(var_1.a.a, var_1.a.b), var_1.b, ~vec4<u32>(u_input.b.x, 27003u, u_input.c.x, u_input.c.x), var_1.d, var_1.b.b >> (u_input.d.x % 32u))), arg_0.x);
    return ~(~((var_1.b.a >> (u_input.c.x % 32u)) & ~u_input.d.x) | u_input.c.x);
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: vec3<bool>) -> f32 {
    let var_0 = 1u ^ arg_2.x;
    let var_1 = arg_1;
    var var_2 = 2147483647i;
    let var_3 = arg_3.x;
    var var_4 = 11166u;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -289f) * -1369f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(171f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1000f, -222f), _wgslsmith_div_f32(1026f, -1470f), any(vec4<bool>(false, false, true, false)))), -494f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -947f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(896f, 258f)) * _wgslsmith_f_op_f32(-1095f * -261f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-714f + -1133f) - _wgslsmith_f_op_f32(-979f - 1644f)), !all(vec4<bool>(false, false, true, false)))) + -288f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-953f, _wgslsmith_f_op_f32(f32(-1f) * -3003f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(1000f)))))), _wgslsmith_f_op_f32(func_5(vec4<u32>(~u_input.c.x, _wgslsmith_dot_vec2_u32(u_input.b, ~vec2<u32>(u_input.c.x, u_input.d.x)), u_input.c.x, ~u_input.d.x & 26101u), Struct_1(abs(~u_input.c.x), 0i), vec3<u32>(func_1(vec4<bool>(true, true, true, true)), _wgslsmith_dot_vec4_u32(u_input.c, u_input.d), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, 93171u, u_input.c.x), vec4<u32>(u_input.b.x, 4294967295u, 11024u, 2424u))), !select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), any(vec3<bool>(true, true, false))))));
    let var_1 = all(vec4<bool>(true, false, false, -_wgslsmith_add_i32(u_input.a.x, -2147483647i) == countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 46430i, 1i, u_input.a.x), vec4<i32>(-2147483647i, 0i, u_input.a.x, u_input.a.x)))));
    var var_2 = vec4<u32>(~39420u, u_input.c.x, reverseBits(34297u), u_input.d.x);
    var var_3 = var_0.wyx;
    var var_4 = (-vec4<i32>(_wgslsmith_clamp_i32(53578i, 72319i, u_input.a.x), 10245i << (u_input.c.x % 32u), ~u_input.a.x, _wgslsmith_dot_vec2_i32(u_input.a.yz, vec2<i32>(16594i, u_input.a.x))) << (u_input.c % vec4<u32>(32u))) ^ vec4<i32>(-1i, u_input.a.x ^ ~u_input.a.x, ~(~25523i), -firstLeadingBit(i32(-1i) * -35333i));
    var_4 = select(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, i32(-1i) * -6748i, var_4.x, 1i), -abs(vec4<i32>(u_input.a.x, u_input.a.x, 27719i, var_4.x))) << (_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.d.xzx, u_input.c.wzx), 89774u, max(u_input.d.x, var_2.x), 26966u), vec4<u32>(firstLeadingBit(var_2.x), ~0u, 77862u, ~u_input.c.x)) % vec4<u32>(32u)), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(var_4.x, u_input.a.x, u_input.a.x, 1i), firstLeadingBit(vec4<i32>(11159i, 9047i, var_4.x, var_4.x) & vec4<i32>(0i, u_input.a.x, -3325i, 2147483647i)), ~vec4<i32>(u_input.a.x, -15625i, u_input.a.x, u_input.a.x) ^ abs(vec4<i32>(-10178i, 0i, -2147483647i, var_4.x))), !vec4<bool>(var_4.x > -var_4.x, true, func_4(1i, vec2<f32>(-1000f, var_3.x), Struct_1(0u, 21882i), Struct_2(Struct_1(var_2.x, 1i), Struct_1(0u, 2147483647i), u_input.d, vec4<i32>(15533i, u_input.a.x, var_4.x, var_4.x), var_4.x)), var_1));
    var var_5 = Struct_2(Struct_1(u_input.c.x, 57857i), Struct_1(u_input.c.x, var_4.x), ~(min(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d.x, var_2.x, 25743u, u_input.b.x), vec4<u32>(1u, 0u, var_2.x, 3451u)), u_input.c) ^ abs(vec4<u32>(0u, u_input.c.x, 15219u, 0u))), reverseBits(_wgslsmith_clamp_vec4_i32(max(select(vec4<i32>(-2147483647i, var_4.x, -2147483647i, -17216i), vec4<i32>(-45731i, var_4.x, u_input.a.x, 0i), true), _wgslsmith_sub_vec4_i32(vec4<i32>(-35149i, 42645i, u_input.a.x, var_4.x), vec4<i32>(-2147483647i, 1i, var_4.x, -2147483647i))), firstTrailingBit(vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, 1188i)) << (vec4<u32>(1u, u_input.b.x, u_input.c.x, 39906u) % vec4<u32>(32u)), vec4<i32>(-36443i, 0i, -2147483647i, 8813i) | select(vec4<i32>(1i, u_input.a.x, 1i, -1i), vec4<i32>(-1i, var_4.x, var_4.x, var_4.x), var_1))), -7146i);
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(782f - _wgslsmith_div_f32(var_0.x, 197f)), var_3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_3.x)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - 342f) + _wgslsmith_f_op_f32(floor(var_3.x)))))), 1110f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-var_0.x)), var_0.x), -1000f));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(0u, var_5.a.a, ~33312u, firstLeadingBit(4294967295u)), ~(select(abs(u_input.c.x), u_input.d.x, func_4(4408i, var_3.yy, var_5.a, Struct_2(Struct_1(1u, u_input.a.x), var_5.b, vec4<u32>(0u, 1u, var_2.x, 4294967295u), vec4<i32>(-2147483647i, -1i, 12182i, var_4.x), var_4.x))) ^ ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 46423u), u_input.b)), 112848u, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_3.x))), vec3<f32>(_wgslsmith_f_op_f32(var_3.x * 994f), var_0.x, 245f), true || !var_1)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) - 210f), _wgslsmith_f_op_f32(333f - _wgslsmith_f_op_f32(var_0.x * var_3.x))) + vec2<f32>(-853f, _wgslsmith_f_op_f32(1919f - _wgslsmith_f_op_f32(round(var_3.x))))));
}

