struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<i32>,
    c: u32,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: bool, arg_3: Struct_5) -> f32 {
    var var_0 = select(~(~(~4294967295u)), ~_wgslsmith_dot_vec2_u32(u_input.a, ~firstLeadingBit(u_input.b.xz)), !arg_2);
    var_0 = ~(~1u);
    var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -151f)) + _wgslsmith_f_op_f32(f32(-1f) * -1314f))), -1174f));
    var_1 = _wgslsmith_f_op_f32(trunc(291f));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-812f, 307f)), false)))) - -1178f);
}

fn func_2() -> vec4<bool> {
    let var_0 = Struct_4(Struct_2(Struct_1(1i, -1i, 474f, any(vec3<bool>(true, true, true)), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(1i, u_input.a.x, false, Struct_5(u_input.b.x))) - 1000f), Struct_1(_wgslsmith_div_i32(_wgslsmith_div_i32(1i, 973i), _wgslsmith_sub_i32(6457i, 2147483647i)), 1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-229f))), true, true), firstLeadingBit(countOneBits(~vec2<i32>(2147483647i, 19044i)))), vec2<i32>(~_wgslsmith_sub_i32(41220i, abs(0i)), -1i), abs(4294967295u), Struct_2(Struct_1(1i, 0i, _wgslsmith_f_op_f32(-1000f - 2343f), any(vec4<bool>(true, true, true, true)), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1214f)) - _wgslsmith_f_op_f32(step(-921f, 1193f))) + _wgslsmith_f_op_f32(1f * -600f)), Struct_1(firstLeadingBit(_wgslsmith_mult_i32(-6427i, 1i)), 53872i, _wgslsmith_f_op_f32(665f + -1207f), all(vec3<bool>(true, false, false)), all(vec4<bool>(false, false, false, false)) && all(vec2<bool>(true, true))), max(~vec2<i32>(27013i, 1i), vec2<i32>(9526i << (u_input.b.x % 32u), 1i))), Struct_2(Struct_1(1764i, -2285i, _wgslsmith_f_op_f32(select(-471f, _wgslsmith_div_f32(1150f, -1173f), true)), true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-113f)) - _wgslsmith_f_op_f32(trunc(-1065f)))), Struct_1(abs(2147483647i), _wgslsmith_sub_i32(-2147483647i, firstLeadingBit(0i)), _wgslsmith_f_op_f32(abs(408f)), any(vec3<bool>(false, false, false)), any(vec2<bool>(true, true))), -select(~vec2<i32>(42018i, 24039i), reverseBits(vec2<i32>(-41003i, 1i)), true)));
    var var_1 = Struct_5(~(~(~var_0.c)));
    var_1 = Struct_5(57479u | _wgslsmith_dot_vec2_u32(~u_input.a, vec2<u32>(~u_input.a.x, 53131u)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-870f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.b) - 922f) + _wgslsmith_div_f32(857f, _wgslsmith_div_f32(var_0.d.b, var_0.e.b)))));
    var var_3 = var_0.d.a;
    return select(select(select(!(!vec4<bool>(var_3.d, true, false, var_0.e.a.d)), select(select(vec4<bool>(false, true, true, var_0.a.c.e), vec4<bool>(true, false, false, var_3.d), var_0.e.a.e), vec4<bool>(var_0.e.c.e, false, var_0.e.a.e, var_0.d.a.e), select(vec4<bool>(var_0.a.c.d, true, false, var_0.e.a.d), vec4<bool>(var_0.d.c.e, false, var_3.e, false), vec4<bool>(false, var_0.e.c.e, true, false))), var_3.e), select(!(!vec4<bool>(var_3.d, false, var_3.e, true)), vec4<bool>(true, any(vec2<bool>(false, var_3.d)), any(vec2<bool>(true, var_0.d.c.e)), true), false), !any(vec3<bool>(false, var_3.d, var_0.d.c.d))), !select(!(!vec4<bool>(var_3.d, true, var_0.d.c.e, false)), vec4<bool>(true, var_3.e, any(vec3<bool>(var_0.a.c.e, var_0.a.a.e, var_0.e.c.e)), -272f > var_0.a.b), select(select(vec4<bool>(true, true, var_3.e, false), vec4<bool>(var_3.d, var_3.d, false, false), vec4<bool>(false, true, var_3.d, var_0.d.a.d)), vec4<bool>(var_0.a.a.e, true, true, var_3.d), false != var_0.a.a.d)), vec4<bool>(any(vec3<bool>(true, true, select(true, var_0.d.a.e, var_0.a.a.e))), firstTrailingBit(0u) <= ~max(var_0.c, var_0.c), ~21487u > var_0.c, var_3.d));
}

fn func_1(arg_0: f32, arg_1: i32) -> Struct_1 {
    var var_0 = all(vec4<bool>(false, all(vec2<bool>(true, true)), false, all(vec2<bool>(true, true)) || all(vec4<bool>(true, true, true, true))));
    let var_1 = vec2<u32>(~1u | min(firstTrailingBit(~u_input.a.x), ~_wgslsmith_sub_u32(4294967295u, 4294967295u)), _wgslsmith_div_u32(u_input.b.x, ~u_input.a.x));
    var_0 = var_1.x >= 1u;
    var_0 = false;
    var_0 = all(select(select(func_2(), vec4<bool>(false, true, true, select(false, false, true)), vec4<bool>(true, true, true, true)), vec4<bool>(true, arg_1 == -73020i, true == (arg_0 < -1169f), arg_1 >= reverseBits(arg_1)), vec4<bool>(true, true, true, true)));
    return Struct_1(reverseBits(~abs(reverseBits(-7634i))), -(_wgslsmith_mod_i32(-62393i, ~arg_1) >> (~0u % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-239f - _wgslsmith_f_op_f32(-arg_0))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1323f, arg_0))))), select(!any(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false))), all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true))), true), any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(_wgslsmith_add_i32(select(i32(-1i) * -58271i, _wgslsmith_mod_i32(-6350i, 1i), true), select(~(-1i), firstTrailingBit(0i), any(vec2<bool>(true, true)))), _wgslsmith_sub_i32(0i, -1i), _wgslsmith_f_op_f32(f32(-1f) * -1059f), all(vec2<bool>(true, true)), true), _wgslsmith_f_op_f32(abs(-1000f)), func_1(_wgslsmith_f_op_f32(-1681f * _wgslsmith_div_f32(_wgslsmith_div_f32(-1000f, -106f), _wgslsmith_f_op_f32(sign(1111f)))), countOneBits(firstLeadingBit(countOneBits(-49531i)))), -abs(firstTrailingBit(select(vec2<i32>(1i, -18623i), vec2<i32>(-23645i, 8429i), vec2<bool>(true, true)))));
    var var_1 = -max(vec2<i32>(-var_0.c.b, 1i), var_0.d);
    var var_2 = !(!vec2<bool>(true, var_0.c.e));
    var_1 = ~(~reverseBits(vec2<i32>(var_0.d.x, 1i)) ^ firstTrailingBit(vec2<i32>(var_0.a.b, 1i) >> (vec2<u32>(0u, 0u) % vec2<u32>(32u)))) & var_0.d;
    var_1 = max(var_0.d, abs(vec2<i32>(var_1.x, var_0.a.a) << (vec2<u32>(select(u_input.a.x, u_input.b.x, var_2.x), _wgslsmith_add_u32(0u, u_input.a.x)) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(-44228i, vec3<u32>(_wgslsmith_clamp_u32(abs(~101037u), u_input.b.x, 61584u), 1u, ~abs(17585u)));
}

