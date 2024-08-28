struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = max(select(vec4<u32>(0u, u_input.b.x, 24234u, ~12089u), ~vec4<u32>(1u, 0u, 42778u, 9821u) ^ select(vec4<u32>(0u, 0u, u_input.a.x, 28371u), vec4<u32>(24463u, u_input.a.x, u_input.b.x, 0u), true), select(!vec4<bool>(false, true, false, arg_0.b), vec4<bool>(false, false, false, arg_0.b), vec4<bool>(arg_0.b, false, arg_0.b, arg_0.b))), ~_wgslsmith_div_vec4_u32(~vec4<u32>(20741u, arg_0.a.x, 15754u, 34728u), vec4<u32>(u_input.a.x, u_input.a.x, 26128u, arg_0.a.x) << (vec4<u32>(u_input.a.x, arg_0.a.x, u_input.b.x, arg_0.a.x) % vec4<u32>(32u)))) ^ firstTrailingBit(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(13215u, 4294967295u, 25468u, 0u)), ~(~vec4<u32>(arg_0.a.x, arg_0.a.x, 1u, 1u))));
    return _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1139f))), _wgslsmith_f_op_f32(f32(-1f) * -1159f)), _wgslsmith_f_op_f32(-976f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-795f)) + _wgslsmith_f_op_f32(min(1271f, -980f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-993f)), _wgslsmith_f_op_f32(select(1699f, -289f, arg_0.b))))))));
}

fn func_2(arg_0: vec4<bool>, arg_1: u32) -> i32 {
    let var_0 = ~_wgslsmith_div_u32(u_input.b.x << (~(17961u << (arg_1 % 32u)) % 32u), ~(_wgslsmith_add_u32(0u, 1151u) | ~u_input.b.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(183f, _wgslsmith_f_op_f32(-1f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-892f - 1437f) - _wgslsmith_f_op_f32(1524f + 1391f)), _wgslsmith_f_op_f32(trunc(-1060f))), 634f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(788f, _wgslsmith_f_op_f32(func_3(Struct_1(vec3<u32>(u_input.a.x, 1u, u_input.b.x), arg_0.x, 1i, -41585i))))))));
    var var_2 = Struct_1(_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(79250u, arg_1, arg_1), ~vec3<u32>(1u, 1u, 21665u)), ~vec3<u32>(arg_1, 75515u, arg_1)), ~abs(min(vec3<u32>(arg_1, arg_1, u_input.b.x), vec3<u32>(105426u, var_0, u_input.b.x)))), true, 21118i, ~abs(-1i));
    return var_2.d | var_2.d;
}

fn func_4(arg_0: i32, arg_1: vec2<f32>, arg_2: vec2<u32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_3;
    var_0 = Struct_1(_wgslsmith_sub_vec3_u32(select((vec3<u32>(0u, 21814u, 0u) ^ var_0.a) ^ vec3<u32>(arg_3.a.x, 1u, 4294967295u), var_0.a, _wgslsmith_f_op_f32(-2699f * -978f) == _wgslsmith_f_op_f32(arg_1.x * -594f)), _wgslsmith_add_vec3_u32(~var_0.a, ~(~arg_3.a))), var_0.b && var_0.b, var_0.c, ~_wgslsmith_sub_i32(-1i, _wgslsmith_mod_i32(-1i, select(39523i, 1i, var_0.b))));
    var_0 = arg_3;
    var var_1 = Struct_1(~var_0.a, arg_3.b, _wgslsmith_div_i32(_wgslsmith_div_i32(select(24735i, -18922i, true), arg_3.c), 1i), arg_3.d);
    let var_2 = arg_3;
    return var_2;
}

fn func_1() -> bool {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-213f * _wgslsmith_f_op_f32(f32(-1f) * -400f)))), _wgslsmith_f_op_f32(f32(-1f) * -1163f));
    let var_1 = func_4(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, i32(-1i) * -1i), -vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-30207i, 16449i, 19928i), vec3<i32>(-2346i, -1i, -2147483647i)), func_2(vec4<bool>(false, true, false, false), 95434u))), var_0, ~(~u_input.a), Struct_1(vec3<u32>(u_input.b.x, 1u, firstLeadingBit(u_input.a.x)), true, 2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(~(-1i), -26516i, 1i), vec3<i32>(1i, 1i, 1i))));
    let var_2 = reverseBits(1u);
    var var_3 = (true & var_1.b) & var_1.b;
    var var_4 = Struct_1(select(vec3<u32>(~0u, abs(58528u), var_1.a.x) ^ var_1.a, ~var_1.a, var_1.b), true, max(1i, ~22371i), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -16781i, min(var_1.c, _wgslsmith_div_i32(-8528i, var_1.d))), vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_div_i32(var_1.c, var_1.c), ~var_1.c), var_1.c, ~(var_1.d >> (var_1.a.x % 32u)))));
    return !(!(!select(true, var_1.b, any(vec2<bool>(var_4.b, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!vec4<bool>(all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false)), true, !all(vec3<bool>(false, false, true)), false), vec4<bool>(true, false, func_1(), !(~4294967295u < u_input.a.x)), true);
    let var_1 = func_4(_wgslsmith_mod_i32(-abs(2147483647i >> (u_input.a.x % 32u)), 2147483647i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(653f, 126f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1127f, -1111f)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-556f, 1660f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(389f, -1412f) + vec2<f32>(-2448f, 1474f))))), abs(vec2<u32>(u_input.a.x, 4294967295u)), func_4(~(-38361i), vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(vec3<u32>(u_input.a.x, u_input.b.x, u_input.b.x), var_0.x, -2147483647i, -1i))), 222f), u_input.b, func_4(2147483647i, vec2<f32>(-1916f, 790f), ~(~vec2<u32>(u_input.b.x, 17411u)), Struct_1(~vec3<u32>(0u, 51120u, u_input.b.x), select(true, var_0.x, true), ~(-13790i), -5599i))));
    let var_2 = 1u;
    var var_3 = var_1.a.xz;
    let var_4 = -746f;
    let var_5 = vec3<i32>(~var_1.c, var_1.d, ~var_1.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(~vec4<u32>(abs(62258u), _wgslsmith_dot_vec2_u32(var_1.a.xz, var_1.a.zz), min(var_2, 93913u), 469u), vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(73127u, var_3.x, 1u, 72474u), vec4<u32>(62709u, var_1.a.x, u_input.a.x, var_3.x)), ~_wgslsmith_div_u32(var_1.a.x, u_input.a.x), var_1.a.x, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(24225u, var_1.a.x, var_1.a.x, var_3.x), vec4<u32>(1u, var_3.x, 1u, 0u)), vec4<u32>(4294967295u, 28047u, var_2, var_2)))));
}

