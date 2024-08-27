struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: f32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> f32 {
    let var_0 = vec3<u32>(28257u, ~1u << ((u_input.a & _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(45766u, u_input.a)), 42076u)) % 32u), u_input.a);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-590f, _wgslsmith_f_op_f32(-614f - 1307f))), 159f, any(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true))))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(155f - -525f))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>) -> vec3<u32> {
    var var_0 = Struct_2(arg_1.yxy, arg_0, _wgslsmith_f_op_f32(ceil(1326f)), arg_0, 112731u);
    let var_1 = arg_0;
    var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(483f))), 444f, _wgslsmith_f_op_f32(-arg_1.x)), Struct_1(vec3<bool>(!arg_0.a.x, var_1.a.x, !(true && var_1.a.x)), vec4<u32>(_wgslsmith_mod_u32(0u, _wgslsmith_div_u32(u_input.a, 30094u)), ~abs(var_0.d.b.x), u_input.a, u_input.a), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.d.x))), vec2<f32>(var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))), -2172f, Struct_1(!vec3<bool>(var_1.a.x, all(vec4<bool>(arg_0.a.x, arg_0.a.x, true, var_0.b.a.x)), var_1.a.x | true), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, ~4294967295u, countOneBits(56656u), ~52448u), _wgslsmith_div_vec4_u32(var_1.b, arg_0.b)), _wgslsmith_f_op_f32(-var_0.b.c), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-879f, -238f)) * _wgslsmith_f_op_f32(round(var_1.d.x))), _wgslsmith_f_op_f32(trunc(645f)))), ~24809u);
    let var_2 = select(arg_0.a, vec3<bool>(select(var_1.a.x, !any(vec4<bool>(var_0.b.a.x, false, arg_0.a.x, true)), arg_0.a.x | (arg_0.a.x & true)), var_0.d.a.x && true, all(vec3<bool>(var_1.a.x, arg_0.a.x, true))), arg_0.a);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(353f + arg_1.x))))));
    return arg_0.b.yxx;
}

fn func_2() -> u32 {
    let var_0 = countOneBits(func_4(Struct_1(vec3<bool>(false, true, true), vec4<u32>(28050u, u_input.a, 47392u, 4294967295u) & vec4<u32>(59228u, u_input.a, 0u, u_input.a), _wgslsmith_f_op_f32(func_3()), vec2<f32>(310f, -848f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1962f, -475f, -1800f, 1120f)))) >> ((vec3<u32>(u_input.a << (_wgslsmith_div_u32(u_input.a, 0u) % 32u), ~(~0u), u_input.a) ^ (~vec3<u32>(29332u, 1u, u_input.a) ^ _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(57855u, u_input.a, u_input.a), vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(34057u, 33390u, 33271u)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(1u, 57829u, 4294967295u))))) % vec3<u32>(32u));
    let var_1 = var_0;
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_div_f32(215f, -568f), _wgslsmith_f_op_f32(f32(-1f) * -2300f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1031f), -309f)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 325f, -535f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(360f, -740f, 112f)) - vec3<f32>(410f, -974f, 1143f)))))), Struct_1(vec3<bool>(all(vec2<bool>(false, true)), any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true))), !all(vec4<bool>(true, true, false, false))), vec4<u32>(_wgslsmith_clamp_u32(~var_0.x, 1u, u_input.a), ~var_1.x, var_0.x, var_0.x), 956f, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(400f, -212f) + vec2<f32>(1616f, -513f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(487f, 1520f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1199f, _wgslsmith_f_op_f32(min(778f, -324f)), any(vec3<bool>(true, true, true))))), Struct_1(vec3<bool>(true, true, all(vec3<bool>(true, false, false))), vec4<u32>(~func_4(Struct_1(vec3<bool>(false, true, false), vec4<u32>(var_0.x, 78389u, 4294967295u, var_1.x), -434f, vec2<f32>(110f, -1508f)), vec4<f32>(-160f, 2235f, -651f, -1677f)).x, firstLeadingBit(52765u), 12413u, min(countOneBits(var_0.x), u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -632f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-851f, -546f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-355f, 1000f))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(472f, -724f), vec2<f32>(651f, 174f)))))), _wgslsmith_dot_vec3_u32(~var_0, _wgslsmith_mult_vec3_u32(var_1, ~firstTrailingBit(vec3<u32>(31237u, 4018u, 4294967295u)))));
    let var_3 = false;
    let var_4 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(var_2.a))))))), Struct_1(var_2.d.a, _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, var_0.x, 33175u, ~55614u), vec4<u32>(4294967295u, var_1.x, u_input.a, 0u)), var_2.c, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1629f), _wgslsmith_f_op_f32(f32(-1f) * -197f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_2.b.c, 1612f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(774f, var_2.b.c), vec2<f32>(var_2.b.c, -211f))))), select(vec2<bool>(false, var_2.d.a.x), var_2.d.a.xx, all(vec3<bool>(false, var_2.d.a.x, var_3)))))), _wgslsmith_f_op_f32(func_3()), Struct_1(select(vec3<bool>(var_2.c != var_2.d.c, all(vec3<bool>(false, var_2.d.a.x, var_2.d.a.x)), var_2.b.a.x), vec3<bool>(all(vec4<bool>(var_2.d.a.x, var_3, true, var_2.b.a.x)), any(vec4<bool>(var_3, var_3, var_3, var_2.b.a.x)), var_3), select(var_2.d.a, select(vec3<bool>(var_2.d.a.x, false, var_2.b.a.x), var_2.b.a, false), vec3<bool>(false, var_3, var_3))), _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(66959u, 87220u, 26954u, 4294967295u), reverseBits(vec4<u32>(var_0.x, 13651u, 58635u, 0u))), _wgslsmith_clamp_vec4_u32(var_2.b.b, vec4<u32>(u_input.a, 0u, 26435u, var_1.x), vec4<u32>(var_0.x, var_2.b.b.x, 1u, var_1.x)), ~(~vec4<u32>(41136u, var_1.x, 4294967295u, 5587u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-617f + -1440f)), var_2.a.zy), 54912u);
    return _wgslsmith_dot_vec4_u32(var_2.d.b, var_2.b.b);
}

fn func_1(arg_0: Struct_3, arg_1: i32, arg_2: bool) -> vec3<u32> {
    var var_0 = 4294967295u;
    let var_1 = !arg_2;
    var_0 = 72198u;
    var_0 = ~(~(arg_0.b ^ ~21117u));
    var var_2 = arg_0;
    return ~select(~vec3<u32>(1u, func_2(), ~1u), vec3<u32>(abs(4294967295u), 29123u, ~arg_0.b), vec3<bool>(!var_2.a, arg_0.a, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!(!vec3<bool>(false, false, all(vec4<bool>(true, true, false, true)))), select(vec4<u32>(4294967295u << (u_input.a % 32u), u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(89626u, 4294967295u, u_input.a)), reverseBits(4294967295u)), vec4<u32>(u_input.a, 4294967295u, 0u, 4294967295u) ^ vec4<u32>(4294967295u, u_input.a, 0u, 1u), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), true)) >> (_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(28015u, u_input.a, 54136u, 7598u), select(vec4<u32>(24106u, u_input.a, 0u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 15605u), true)), firstTrailingBit(~vec4<u32>(0u, u_input.a, 0u, u_input.a)), vec4<u32>(1u, select(35514u, u_input.a, false), 1u, 1u)) % vec4<u32>(32u)), -943f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(747f, -645f))));
    var var_1 = Struct_3(-26856i < min(_wgslsmith_mod_i32(i32(-1i) * -8027i, max(0i, 41696i)), firstTrailingBit(~(-2147483647i))), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_u32(vec3<u32>(71477u, var_0.b.x, var_1.b) | ~vec3<u32>(u_input.a, u_input.a, var_0.b.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 0u, var_0.b.x) ^ var_0.b.yxw, var_0.b.yxy, ~vec3<u32>(0u, 4294967295u, 48106u)), var_0.b.yzy) >> (func_1(Struct_3(var_1.a, 47468u), i32(-1i) * -2147483647i, var_0.a.x) % vec3<u32>(32u)));
}

