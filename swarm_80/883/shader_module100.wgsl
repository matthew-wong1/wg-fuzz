struct Struct_1 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: bool, arg_3: Struct_1) -> f32 {
    var var_0 = Struct_1(all(!(!select(vec2<bool>(arg_3.a, true), vec2<bool>(false, arg_0.a), arg_0.a))), _wgslsmith_div_i32(~_wgslsmith_clamp_i32(min(-1i, arg_3.b), i32(-1i) * -50427i, 2147483647i), -18306i));
    var var_1 = Struct_1(any(select(select(!vec4<bool>(var_0.a, false, true, arg_2), select(vec4<bool>(arg_3.a, true, true, false), vec4<bool>(arg_0.a, false, var_0.a, false), arg_0.a), all(vec4<bool>(false, arg_3.a, arg_2, false))), vec4<bool>(!var_0.a, all(vec2<bool>(true, arg_2)), var_0.a, true), true)), 2147483647i);
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-4162f * _wgslsmith_f_op_f32(952f + 1029f)), -1742f, firstTrailingBit(2147483647i) <= 0i))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_div_f32(-1187f, -1657f), -875f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(482f, -1579f)))))));
    var var_3 = -718f;
    let var_4 = Struct_1(all(select(vec3<bool>(true, !var_0.a, false), select(vec3<bool>(var_1.a, arg_2, arg_2), select(vec3<bool>(arg_2, arg_0.a, var_0.a), vec3<bool>(arg_3.a, true, false), true), arg_2), !(!vec3<bool>(false, arg_3.a, arg_0.a)))), var_0.b);
    return var_2.x;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: u32) -> Struct_1 {
    var var_0 = Struct_1(all(vec4<bool>(arg_0.x, any(vec3<bool>(false, arg_0.x, true)), true, any(select(vec2<bool>(arg_0.x, false), vec2<bool>(false, arg_0.x), arg_0.x)))), _wgslsmith_clamp_i32(0i, min(select(u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 0i, 76257i, 1357i), vec4<i32>(u_input.b, u_input.a.x, u_input.a.x, u_input.a.x)), arg_0.x), u_input.d.x), abs(abs(u_input.d.x)) & u_input.d.x));
    var_0 = Struct_1(726f >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(455f, -159f) - _wgslsmith_f_op_f32(-614f + -154f)))), -((u_input.d.x ^ 1i) << (~arg_2 % 32u)) | var_0.b);
    let var_1 = _wgslsmith_f_op_f32(func_3(Struct_1(all(!vec4<bool>(var_0.a, false, false, true)), u_input.b), ~firstLeadingBit(0u), true, Struct_1(arg_0.x, -(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b, 43855i, 0i, u_input.d.x), vec4<i32>(12668i, var_0.b, 2147483647i, 12930i)) & var_0.b))));
    return Struct_1(true, reverseBits(var_0.b));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: bool) -> Struct_1 {
    let var_0 = Struct_1(arg_0.a, -33998i);
    let var_1 = _wgslsmith_f_op_f32(-605f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 1000f)) + _wgslsmith_f_op_f32(select(-873f, -1000f, all(vec2<bool>(false, arg_0.a)))))));
    var var_2 = Struct_1(arg_0.a, ~(-2147483647i));
    let var_3 = firstLeadingBit(select(vec3<u32>(~arg_1, ~arg_1, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, 15445u, 1u, 4294967295u), vec4<u32>(24871u, arg_1, arg_1, 87526u))) ^ ~firstTrailingBit(vec3<u32>(arg_1, 16153u, arg_1)), vec3<u32>(13711u, arg_1, 1u) >> (~(vec3<u32>(134770u, arg_1, 852u) | vec3<u32>(arg_1, 38617u, arg_1)) % vec3<u32>(32u)), any(select(!vec3<bool>(true, arg_2, true), vec3<bool>(true, true, var_2.a), !var_0.a))));
    var var_4 = Struct_1(var_2.a, var_0.b << (countOneBits(arg_1) % 32u));
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec3<u32>) -> i32 {
    var var_0 = arg_0;
    var var_1 = select(vec3<bool>(true, true, arg_0.a), !(!(!vec3<bool>(true, arg_0.a, arg_2.a))), !vec3<bool>(!(!var_0.a), true, true));
    var_1 = vec3<bool>(func_2(var_1.zy, firstTrailingBit(~(arg_3.xy << (arg_3.zy % vec2<u32>(32u)))), 61139u).a, func_2(var_1.xz, ~vec2<u32>(arg_3.x, ~arg_1.x), ~(countOneBits(arg_1.x) << (~1u % 32u))).a, false);
    var var_2 = !(!var_1.x);
    var_0 = arg_2;
    return arg_2.b;
}

fn func_1(arg_0: vec4<f32>, arg_1: bool) -> vec4<bool> {
    let var_0 = vec2<bool>(false, !(all(select(vec3<bool>(true, false, arg_1), vec3<bool>(false, false, arg_1), arg_1)) != !arg_1));
    let var_1 = Struct_1(func_5(Struct_1(any(var_0), _wgslsmith_div_i32(u_input.d.x, 1i)), countOneBits(~vec3<u32>(4294967295u, 60253u, 1u)), func_4(func_2(var_0, vec2<u32>(4193u, 4294967295u), 4294967295u), _wgslsmith_mod_u32(10506u, 18282u), false), vec3<u32>(abs(4294967295u), 0u, select(7637u, 0u, var_0.x))) == -29323i, u_input.c.x);
    let var_2 = min(-53654i, i32(-1i) * -2813i);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.x, -707f), 1000f) - -1064f);
    var_3 = -2627f;
    return select(select(select(!(!vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a)), select(vec4<bool>(arg_1, var_1.a, var_0.x, false), vec4<bool>(arg_1, false, arg_1, var_0.x), true), false), select(vec4<bool>(!arg_1, true, 1000f < arg_0.x, arg_1), vec4<bool>(var_0.x | var_0.x, true, true, var_0.x), all(select(var_0, vec2<bool>(var_0.x, var_1.a), vec2<bool>(var_0.x, arg_1)))), true), vec4<bool>(!(-u_input.c.x <= firstLeadingBit(2147483647i)), true, !var_0.x, true), !(!(!vec4<bool>(false, var_0.x, var_1.a, var_1.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(true, ~(-(-2147483647i | u_input.b)));
    let var_1 = Struct_1(any(func_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-554f, 345f, 1000f, 172f))), true)) && false, abs(u_input.b));
    var var_2 = func_4(Struct_1(true, _wgslsmith_dot_vec3_i32(-u_input.c, ~vec3<i32>(var_1.b, var_0.b, -8743i)) >> (countOneBits(firstTrailingBit(0u)) % 32u)), 49940u, func_4(Struct_1(true, var_0.b), _wgslsmith_add_u32(reverseBits(20623u), _wgslsmith_mult_u32(select(48978u, 29385u, false), 1u)), !(!var_1.a)).a);
    var_0 = Struct_1(var_0.a, i32(-1i) * -(~var_2.b));
    var_0 = Struct_1((~_wgslsmith_mult_i32(2147483647i, -1i) ^ var_2.b) >= -reverseBits(var_0.b), 2477i);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~_wgslsmith_sub_u32(~411u, _wgslsmith_mod_u32(42764u, 4294967295u))), vec4<u32>(_wgslsmith_clamp_u32(1u, abs(14098u), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 20853u), vec2<u32>(27747u, 3875u))) | ~(~20962u), _wgslsmith_mult_u32(select(~12600u, 40712u, !var_2.a), 1u), 43898u, abs(4294967295u)), vec4<f32>(231f, 1f, 1f, 533f), vec3<u32>(1u, 4978u, ~4294967295u));
}

