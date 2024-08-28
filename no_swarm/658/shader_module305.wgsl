struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<i32>, arg_1: u32, arg_2: vec3<bool>, arg_3: vec4<f32>) -> f32 {
    var var_0 = Struct_2(_wgslsmith_div_i32(~(_wgslsmith_dot_vec4_i32(vec4<i32>(4652i, -1i, 26083i, u_input.a.x), vec4<i32>(arg_0.x, arg_0.x, arg_0.x, 38014i)) >> (_wgslsmith_add_u32(arg_1, arg_1) % 32u)), countOneBits(arg_0.x)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.x, 402f) * arg_3.xw), arg_3.xz))), _wgslsmith_f_op_f32(max(673f, _wgslsmith_div_f32(147f, 143f))), max(~min(u_input.d, 4294967295u), reverseBits(arg_1 | arg_1)), vec4<u32>(~1u, 70448u, 0u, ~arg_1), ~u_input.d));
    var var_1 = -299f;
    let var_2 = 1u;
    var_0 = Struct_2(u_input.a.x, Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b.a) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1407f) - var_0.b.a)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.x, arg_3.x)))))), -1141f, ~_wgslsmith_mult_u32(var_2 << (arg_1 % 32u), arg_1), var_0.b.d, ~(arg_1 << (var_0.b.e % 32u)) >> (41957u % 32u)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.a.x) - _wgslsmith_f_op_f32(f32(-1f) * -292f)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_0.b.a.x)))))));
    return var_0.b.b;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(18808i, arg_0);
    var var_1 = Struct_2(0i, Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-arg_0.a))), vec2<f32>(var_0.b.b, _wgslsmith_f_op_f32(345f - var_0.b.b)), (var_0.a > u_input.b) | (u_input.a.x <= var_0.a))), _wgslsmith_f_op_f32(-1000f + -284f), ~(var_0.b.d.x | _wgslsmith_sub_u32(0u, arg_0.e)), vec4<u32>(arg_0.d.x, _wgslsmith_dot_vec4_u32(var_0.b.d, arg_0.d) | _wgslsmith_div_u32(79441u, 1u), 4294967295u, _wgslsmith_clamp_u32(4294967295u, min(arg_0.e, u_input.d), _wgslsmith_div_u32(4294967295u, var_0.b.c))), 1u));
    var_0 = Struct_2(var_1.a, arg_0);
    var var_2 = Struct_2(_wgslsmith_add_i32(-(var_1.a ^ _wgslsmith_clamp_i32(-1i, -1545i, u_input.a.x)), u_input.a.x), arg_0);
    var var_3 = ~var_0.b.d;
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.a + _wgslsmith_f_op_vec2_f32(abs(arg_0.a))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-805f, var_0.b.b)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -238f), 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<i32>(-2147483647i, -2147483647i, var_1.a), var_2.b.c, vec3<bool>(true, false, true), vec4<f32>(var_1.b.a.x, -209f, var_0.b.a.x, -411f))) - var_2.b.b)))), var_2.b.e, vec4<u32>(~var_3.x, max(var_2.b.d.x, 0u >> (u_input.d % 32u)), ~firstLeadingBit(u_input.d & 68094u), var_2.b.e), 1u);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1) -> bool {
    var var_0 = arg_0.e < _wgslsmith_clamp_u32(~reverseBits(_wgslsmith_add_u32(58175u, 42285u)), _wgslsmith_div_u32(29747u, 4294967295u), ~(~84444u));
    var_0 = select(true, _wgslsmith_clamp_i32(reverseBits(-256i), u_input.b, select(u_input.a.x, u_input.a.x, true)) < abs(-2147483647i >> (u_input.c % 32u)), all(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false))))) & true;
    let var_1 = max(~(~_wgslsmith_sub_u32(arg_2.e, arg_0.c)), ~_wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.c, arg_0.c), _wgslsmith_clamp_u32(u_input.d, 1u, 1u)), ~arg_2.c));
    let var_2 = Struct_2(8660i, arg_0);
    var_0 = any(vec4<bool>(true, false, false, true));
    return true;
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_2) -> bool {
    var var_0 = select(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false)), select(vec4<bool>(25937u == u_input.d, true, arg_1.b < arg_1.a.x, any(vec2<bool>(false, false))), vec4<bool>(all(vec3<bool>(true, false, true)), true, any(vec2<bool>(false, false)), true), vec4<bool>(true, true, true, true)), !select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), !vec4<bool>(true, any(vec3<bool>(false, true, false)) && any(vec3<bool>(false, true, false)), _wgslsmith_div_i32(-2147483647i, -54215i) <= arg_3.a, _wgslsmith_f_op_f32(select(-1658f, -1000f, false)) == _wgslsmith_f_op_f32(-787f + arg_3.b.b)), !select(false, true, true) == any(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), true)));
    var_0 = !select(!vec4<bool>(all(vec4<bool>(true, false, var_0.x, false)), true, arg_1.b > arg_1.b, false && var_0.x), vec4<bool>(all(vec3<bool>(var_0.x, var_0.x, false)) & var_0.x, !var_0.x, any(!vec4<bool>(false, var_0.x, true, true)), any(vec4<bool>(true, true, true, true))), all(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, false, var_0.x), any(var_0.xwy))));
    var var_1 = Struct_1(arg_3.b.a, arg_1.b, ~u_input.c, _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(4294967295u, 1u) ^ _wgslsmith_clamp_u32(4294967295u, 24722u, arg_3.b.d.x), _wgslsmith_clamp_u32(arg_3.b.d.x ^ 63948u, u_input.c, countOneBits(188006u)), ~_wgslsmith_sub_u32(arg_3.b.c, 1u), arg_1.c), arg_3.b.d), _wgslsmith_clamp_u32(arg_3.b.e | _wgslsmith_div_u32(49687u, arg_3.b.e), 6135u, 4294967295u));
    let var_2 = !any(vec3<bool>(var_0.x, -1i < (-48874i | u_input.a.x), var_0.x));
    var_0 = !select(!select(!vec4<bool>(true, false, false, var_0.x), select(vec4<bool>(true, true, var_0.x, var_2), vec4<bool>(false, var_0.x, var_2, var_2), vec4<bool>(true, true, true, var_0.x)), var_2), select(vec4<bool>(true, any(vec3<bool>(var_0.x, var_0.x, true)), true, all(vec2<bool>(true, true))), select(select(vec4<bool>(var_2, var_0.x, true, true), vec4<bool>(false, var_2, var_0.x, var_2), var_2), select(vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(false, var_2, var_2, var_2), true), vec4<bool>(var_2, var_0.x, true, var_2)), vec4<bool>(!var_0.x, true, true, true)), vec4<bool>(true, all(vec2<bool>(true, var_2)), all(!var_0.zx), var_2));
    return true;
}

fn func_1() -> bool {
    var var_0 = u_input.c;
    var var_1 = vec3<f32>(1119f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(590f)))), _wgslsmith_f_op_f32(abs(1045f)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.xx));
    return func_5(select(select(firstTrailingBit(vec4<u32>(45973u, u_input.c, u_input.d, 1u)), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 0u, 84766u, u_input.d), vec4<u32>(u_input.c, 13601u, 47508u, 29129u) >> (vec4<u32>(u_input.d, u_input.d, u_input.c, u_input.c) % vec4<u32>(32u))), func_4(func_2(Struct_1(var_1.zx, var_1.x, 0u, vec4<u32>(u_input.d, u_input.c, u_input.d, u_input.d), u_input.d)), vec4<f32>(var_2.x, var_2.x, -801f, var_1.x), Struct_1(vec2<f32>(701f, 1364f), -426f, 14815u, vec4<u32>(u_input.d, u_input.d, 4294967295u, u_input.d), u_input.c))), ~(vec4<u32>(u_input.c, 4294967295u, u_input.d, 4294967295u) & ~vec4<u32>(28045u, 4294967295u, 5780u, u_input.d)), _wgslsmith_f_op_f32(var_1.x * 461f) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(933f)))), Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1203f, var_1.x) - var_1.zx) - vec2<f32>(var_1.x, 1032f)))), _wgslsmith_f_op_f32(var_1.x - -167f), ~(~(~4294967295u)), _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_div_u32(u_input.d, 0u), u_input.c, u_input.c, u_input.d), _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, u_input.c, 26233u, 1u), vec4<u32>(u_input.d, 4294967295u, 6439u, 1u)), ~vec4<u32>(u_input.d, 4294967295u, u_input.d, u_input.c), vec4<u32>(u_input.c, u_input.d, u_input.d, u_input.d) << (vec4<u32>(4294967295u, 13912u, u_input.c, u_input.c) % vec4<u32>(32u)))), 0u), ~countOneBits(-2147483647i), Struct_2(_wgslsmith_sub_i32(abs(_wgslsmith_add_i32(u_input.b, u_input.b)), u_input.b), Struct_1(var_1.xy, var_1.x, ~4294967295u, vec4<u32>(u_input.c, u_input.d, 1u, abs(35773u)), 25572u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(u_input.d << (~(~(~61438u)) % 32u), ~(~58209u), 39063u, u_input.c);
    let var_1 = func_1();
    let var_2 = func_2(Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1139f, -984f), vec2<f32>(1332f, 1439f), vec2<bool>(var_1, false)))))), _wgslsmith_f_op_f32(128f + -334f), 1u, func_2(Struct_1(vec2<f32>(-287f, 161f), 1000f, 2872u, ~vec4<u32>(var_0.x, var_0.x, 1u, 35887u), ~var_0.x)).d, 1u));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(abs(var_2.b)), var_2.b, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -924f), _wgslsmith_f_op_f32(floor(-984f))), _wgslsmith_div_f32(379f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_2.a.x, 1000f), _wgslsmith_div_f32(var_2.a.x, var_2.a.x), var_1))), all(vec4<bool>(true, func_1(), all(vec4<bool>(true, true, false, var_1)), 533f >= var_2.a.x)))));
    let var_4 = 2147483647i;
    var var_5 = _wgslsmith_div_i32(27791i >> (0u % 32u), ~u_input.b | max(u_input.a.x, var_4));
    let var_6 = var_2;
    let var_7 = !select(false, _wgslsmith_f_op_f32(-var_2.b) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) * 899f), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1500f, 663f, 1588f, -633f) + vec4<f32>(var_2.b, 607f, var_3.x, var_2.b)))), u_input.a.zx);
}

