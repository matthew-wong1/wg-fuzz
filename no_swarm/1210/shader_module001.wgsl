struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: f32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(vec2<bool>(true, false), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(713f, 1049f, 2020f, 717f)), vec4<f32>(-445f, -230f, -1883f, 886f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(893f, 255f, -254f, -1277f), vec4<f32>(913f, 254f, 1435f, -232f))))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-519f, -1000f, -1004f, -571f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1718f, 844f, 399f, -531f))))))));
    var var_1 = var_0.b.x > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(var_0.b.x))));
    var var_2 = !(!(!(!all(vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x)))));
    var_2 = !any(vec2<bool>(false, all(vec4<bool>(false, false, var_0.a.x, true)) != true));
    var_2 = var_0.a.x;
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(var_0.b.x)), _wgslsmith_f_op_f32(round(-915f)), true)))))));
}

fn func_2(arg_0: vec3<i32>, arg_1: bool, arg_2: Struct_1, arg_3: vec2<i32>) -> f32 {
    let var_0 = true;
    let var_1 = arg_2;
    var var_2 = Struct_1(select(vec2<bool>(false, true), var_1.a, !vec2<bool>(true, var_0)), vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-674f))), var_1.b.x));
    var_2 = Struct_1(vec2<bool>(true, arg_3.x <= -54700i), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1786f, -111f, arg_2.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1200f) + var_1.b.x)))));
    var_2 = Struct_1(vec2<bool>(true, false), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(var_2.b, var_1.b), var_1.b));
    return 790f;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_1) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(max(-573f, arg_1.b.x));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(arg_1.b.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(f32(-1f) * -852f))), arg_3.b.x, any(vec4<bool>(true, arg_0, arg_3.a.x, arg_3.a.x)) | !arg_3.a.x)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_3.b.x, _wgslsmith_f_op_f32(-arg_1.b.x)))) + -1754f));
    var var_1 = ~reverseBits(vec4<u32>(0u, _wgslsmith_div_u32(u_input.b, ~u_input.a.x), _wgslsmith_sub_u32(u_input.b, _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.b, u_input.b))), 53958u));
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(294f, arg_3.b.x, -128f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.x) - -1479f)) * vec4<f32>(arg_3.b.x, arg_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec3<i32>(25048i, -1i, 0i), true, arg_3, arg_2))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.x * arg_3.b.x))), arg_3.b.x));
    var_1 = vec4<u32>(~(~var_1.x), ~1u, _wgslsmith_sub_u32(u_input.b, ~42187u), _wgslsmith_dot_vec2_u32(var_1.xz, _wgslsmith_mult_vec2_u32(var_1.wy, vec2<u32>(1u, select(77052u, u_input.a.x, false)))));
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-arg_1.b), _wgslsmith_f_op_vec4_f32(arg_3.b - _wgslsmith_f_op_vec4_f32(-arg_3.b))));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = ~min(reverseBits(_wgslsmith_mult_u32(firstTrailingBit(u_input.a.x), min(21583u, u_input.b))), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 4536u) ^ (u_input.a & vec2<u32>(u_input.a.x, u_input.a.x)), firstLeadingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(u_input.a.x, 65117u)))));
    let var_1 = arg_2;
    let var_2 = arg_0;
    let var_3 = Struct_1(var_1.a, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(249f, -547f, var_1.b.x, arg_0.b.x)))))));
    var var_4 = ((-firstLeadingBit(14533i) << (~select(u_input.a.x, 24688u, true) % 32u)) & ~(i32(-1i) * -2147483647i)) | ~(-_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -2147483647i, -1i, 17690i), vec4<i32>(3441i, 18142i, -2147483647i, 1i)), ~(-1i)));
    return Struct_1(select(!var_3.a, select(var_1.a, select(vec2<bool>(false, var_1.a.x), vec2<bool>(true, true), true), vec2<bool>(all(vec3<bool>(var_2.a.x, true, false)), var_1.a.x)), true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(var_3.b))), _wgslsmith_f_op_vec4_f32(select(var_3.b, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(594f, arg_2.b.x, 155f, 2745f))), all(vec3<bool>(var_3.a.x, arg_0.a.x, var_2.a.x)))), vec4<bool>(true, arg_2.a.x && var_1.a.x, true, any(var_2.a)))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_2.b.x, 120f)) - _wgslsmith_f_op_f32(round(arg_0.b.x))), var_3.b.x, arg_0.b.x, _wgslsmith_f_op_f32(-1588f - _wgslsmith_f_op_f32(-400f + 671f)))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = func_4(Struct_1(vec2<bool>(arg_0.a.x, true), vec4<f32>(_wgslsmith_f_op_f32(step(-1451f, _wgslsmith_f_op_f32(step(1628f, 1000f)))), -502f, _wgslsmith_f_op_f32(round(arg_0.b.x)), arg_1.b.x)), _wgslsmith_f_op_f32(-arg_1.b.x), arg_1);
    let var_1 = -18375i;
    var_0 = Struct_1(!arg_0.a, arg_1.b);
    var var_2 = true;
    var var_3 = func_4(func_4(arg_0, arg_0.b.x, arg_1), -288f, func_4(Struct_1(vec2<bool>(u_input.a.x >= 38550u, true), vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(arg_0.b.x + -342f), _wgslsmith_f_op_f32(arg_0.b.x * arg_1.b.x), _wgslsmith_f_op_f32(arg_1.b.x + var_0.b.x))), 486f, arg_1));
    return Struct_1(func_4(Struct_1(!func_4(Struct_1(var_0.a, vec4<f32>(arg_1.b.x, 293f, -541f, arg_1.b.x)), -757f, Struct_1(vec2<bool>(false, arg_0.a.x), var_3.b)).a, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_3.b.x, var_3.b.x, -101f, arg_0.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(131f, _wgslsmith_f_op_f32(1216f - 211f)) + -1249f), Struct_1(vec2<bool>(false, 27589i > var_1), _wgslsmith_f_op_vec4_f32(func_1(var_3.a.x && false, arg_0, vec2<i32>(-1i, 1i), arg_0)))).a, vec4<f32>(_wgslsmith_f_op_vec4_f32(func_1(!arg_0.a.x, func_4(Struct_1(var_3.a, vec4<f32>(var_3.b.x, 923f, -1000f, arg_1.b.x)), _wgslsmith_f_op_f32(min(arg_0.b.x, arg_0.b.x)), Struct_1(var_3.a, var_0.b)), min(_wgslsmith_add_vec2_i32(vec2<i32>(var_1, var_1), vec2<i32>(var_1, -55609i)), max(vec2<i32>(var_1, var_1), vec2<i32>(-1i, 5866i))), Struct_1(select(arg_0.a, arg_0.a, vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(-var_3.b)))).x, 2767f, var_0.b.x, -1036f));
}

fn func_6(arg_0: f32, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = func_4(Struct_1(func_5(Struct_1(select(vec2<bool>(arg_3.a.x, arg_1.a.x), arg_3.a, arg_1.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-133f, arg_0, arg_2, arg_3.b.x))), arg_3).a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1785f, -872f, -1865f, arg_2)))))), -255f, arg_1);
    var_0 = func_5(arg_1, Struct_1(vec2<bool>(!(arg_3.a.x && var_0.a.x), true), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(843f, 1000f, -215f, 731f), arg_1.b))))));
    var var_1 = any(select(vec3<bool>(func_4(arg_3, var_0.b.x, func_4(arg_3, -274f, arg_1)).a.x, u_input.a.x != (1u << (0u % 32u)), all(arg_3.a)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), all(var_0.a)), select(!select(vec3<bool>(arg_1.a.x, false, var_0.a.x), vec3<bool>(false, var_0.a.x, false), false), vec3<bool>(true, any(vec3<bool>(false, true, var_0.a.x)), true), vec3<bool>(var_0.b.x >= 880f, any(vec2<bool>(true, true)), func_4(Struct_1(arg_1.a, var_0.b), 518f, Struct_1(vec2<bool>(true, arg_1.a.x), arg_1.b)).a.x))));
    let var_2 = _wgslsmith_mult_u32(0u, min(_wgslsmith_dot_vec2_u32(abs(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, 1u), vec2<u32>(u_input.a.x, u_input.b))), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 4294967295u), countOneBits(u_input.a))), u_input.a.x));
    var_0 = func_5(Struct_1(var_0.a, vec4<f32>(var_0.b.x, 914f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -902f))), _wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(-var_0.b.x)))), arg_3);
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(vec2<bool>(true, true), !select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(true, true), true)), all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1170f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(2192f)) - _wgslsmith_f_op_f32(f32(-1f) * -1924f)), _wgslsmith_f_op_f32(986f - _wgslsmith_div_f32(-2787f, -665f)), 1212f));
    var_0 = func_6(_wgslsmith_f_op_f32(exp2(var_0.b.x)), func_5(func_4(Struct_1(vec2<bool>(var_0.a.x, true), _wgslsmith_f_op_vec4_f32(func_1(var_0.a.x, Struct_1(vec2<bool>(true, var_0.a.x), vec4<f32>(var_0.b.x, 1544f, var_0.b.x, var_0.b.x)), vec2<i32>(4325i, 10108i), Struct_1(vec2<bool>(true, var_0.a.x), vec4<f32>(var_0.b.x, var_0.b.x, 1000f, var_0.b.x))))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-730f, var_0.b.x), _wgslsmith_f_op_f32(func_2(vec3<i32>(24101i, 1i, -2147483647i), false, Struct_1(vec2<bool>(var_0.a.x, var_0.a.x), var_0.b), vec2<i32>(18414i, -2147483647i))), var_0.a.x)), Struct_1(vec2<bool>(var_0.a.x, var_0.a.x), var_0.b)), Struct_1(var_0.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, -1732f, 1000f, var_0.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.b.x)))), func_5(Struct_1(!(!vec2<bool>(var_0.a.x, true)), vec4<f32>(_wgslsmith_f_op_f32(1077f * var_0.b.x), _wgslsmith_f_op_f32(step(var_0.b.x, var_0.b.x)), -1000f, var_0.b.x)), Struct_1(func_5(Struct_1(var_0.a, var_0.b), Struct_1(vec2<bool>(var_0.a.x, true), vec4<f32>(-306f, var_0.b.x, var_0.b.x, -1301f))).a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2324f, 950f, var_0.b.x, -1256f) - var_0.b) + var_0.b))));
    var var_1 = 38089u;
    var_0 = Struct_1(select(select(var_0.a, vec2<bool>(!var_0.a.x, true), any(!var_0.a)), var_0.a, !(!vec2<bool>(true, var_0.a.x))), _wgslsmith_f_op_vec4_f32(func_1(false, func_5(func_6(-543f, func_6(-109f, Struct_1(vec2<bool>(var_0.a.x, true), var_0.b), var_0.b.x, Struct_1(vec2<bool>(var_0.a.x, true), vec4<f32>(-194f, 357f, -701f, 1000f))), -176f, func_4(Struct_1(vec2<bool>(true, var_0.a.x), vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, 652f)), var_0.b.x, Struct_1(vec2<bool>(true, true), var_0.b))), Struct_1(func_4(Struct_1(vec2<bool>(true, true), var_0.b), var_0.b.x, Struct_1(vec2<bool>(false, false), var_0.b)).a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, 1119f, -2142f, -1304f)))), -(~min(vec2<i32>(2147483647i, -2147483647i), vec2<i32>(1i, -1i))), func_5(Struct_1(vec2<bool>(true, false), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.b.x, -802f, -1250f, var_0.b.x), var_0.b))), func_6(_wgslsmith_f_op_f32(var_0.b.x + -131f), func_4(Struct_1(var_0.a, vec4<f32>(-122f, var_0.b.x, var_0.b.x, -235f)), var_0.b.x, Struct_1(var_0.a, var_0.b)), 507f, Struct_1(vec2<bool>(true, true), var_0.b))))));
    let var_2 = countOneBits(vec4<i32>(-1i) * -(~vec4<i32>(-2147483647i, 0i, -1i, -1i)));
    var_1 = (u_input.b | u_input.a.x) & 23951u;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.b, 69127u, 4195u)), firstLeadingBit(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x))), _wgslsmith_div_u32(0u, 56888u) ^ (u_input.b | u_input.b), u_input.a.x), _wgslsmith_mod_u32(~u_input.a.x, _wgslsmith_div_u32(40025u, 26944u)) & ~u_input.b, 44515u ^ u_input.a.x), vec3<u32>(max(u_input.a.x, min(72546u, u_input.a.x)), ~4294967295u, _wgslsmith_mod_u32(0u, _wgslsmith_sub_u32(u_input.b >> (9387u % 32u), 0u))), -1909f, 881f, 9107u);
}

