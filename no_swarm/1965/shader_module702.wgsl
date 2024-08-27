struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> u32 {
    return u_input.c;
}

fn func_3(arg_0: Struct_1) -> Struct_2 {
    let var_0 = Struct_1(arg_0.a);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1146f * 324f), _wgslsmith_f_op_f32(-1251f + -410f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -2257f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -205f), _wgslsmith_f_op_f32(f32(-1f) * -346f))))));
    let var_2 = Struct_2(Struct_1(38414u));
    let var_3 = Struct_2(var_2.a);
    let var_4 = Struct_3(Struct_1(1u), u_input.b | (0u >> (select(~var_2.a.a, 1u, true) % 32u)), firstTrailingBit(var_2.a.a | firstTrailingBit(arg_0.a)) >> (abs(arg_0.a) % 32u), Struct_1(~(func_2() << (60407u % 32u))));
    return Struct_2(arg_0);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: f32) -> Struct_1 {
    var var_0 = select(~(~max(~vec4<u32>(u_input.b, arg_0.a, 30730u, arg_0.a), ~vec4<u32>(u_input.c, u_input.b, arg_0.a, u_input.b))), ~vec4<u32>(u_input.b, arg_0.a, _wgslsmith_mod_u32(0u, _wgslsmith_mult_u32(1u, arg_0.a)), arg_0.a), ((-27606i | u_input.d.x) ^ reverseBits(-15725i)) < abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-30188i, u_input.a) ^ vec2<i32>(-38220i, u_input.a), min(vec2<i32>(u_input.d.x, -32204i), vec2<i32>(u_input.a, 1i)))));
    var var_1 = func_3(Struct_1(_wgslsmith_add_u32(~abs(1u), func_2())));
    let var_2 = !(!select(vec2<bool>(true, true), vec2<bool>(true, true), true));
    var_0 = ~(vec4<u32>(min(1u, firstLeadingBit(arg_0.a)), var_0.x, ~var_1.a.a, var_1.a.a) & _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(16442u, 4294967295u, u_input.b, arg_0.a)), vec4<u32>(1u, 0u, var_0.x, var_0.x) << (vec4<u32>(u_input.b, 15391u, arg_0.a, arg_0.a) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(11177u, u_input.c, 612u, var_1.a.a))), ~vec4<u32>(u_input.b, u_input.b, 0u, var_1.a.a) ^ firstTrailingBit(vec4<u32>(11428u, 1u, var_0.x, 3461u))));
    let var_3 = arg_1.zyz;
    return Struct_1(_wgslsmith_mult_u32(~(~var_1.a.a), max(arg_0.a >> (u_input.b % 32u), ~1u)) << (4294967295u % 32u));
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: u32, arg_3: Struct_1) -> Struct_3 {
    var var_0 = 549f;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-163f - arg_0))))));
    let var_2 = !(!select(true, true, false));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(569f + _wgslsmith_f_op_f32(f32(-1f) * -1512f)));
    var var_3 = vec4<i32>(abs(~(-firstLeadingBit(0i))), countOneBits(_wgslsmith_sub_i32(474i, _wgslsmith_dot_vec3_i32(u_input.d.wwx, u_input.d.zxy))), countOneBits(-34755i), u_input.a);
    return Struct_3(func_1(func_3(arg_3).a, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(266f, arg_0)), _wgslsmith_f_op_f32(abs(arg_0))), arg_0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -624f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - -122f))), arg_0), _wgslsmith_add_u32(arg_1, u_input.c), 10558u, Struct_1(countOneBits(arg_1 ^ arg_2) << (_wgslsmith_add_u32(_wgslsmith_div_u32(4294967295u, arg_3.a), u_input.c) % 32u)));
}

fn func_5(arg_0: Struct_3, arg_1: u32) -> Struct_1 {
    let var_0 = false;
    var var_1 = select(~abs(~firstLeadingBit(vec4<u32>(19513u, 79765u, arg_0.d.a, 29139u))), vec4<u32>(23908u, 10824u, 1u, ~arg_1) | vec4<u32>(_wgslsmith_clamp_u32(4294967295u, func_2(), arg_0.b), max(~0u, ~arg_0.d.a), ~arg_0.b, _wgslsmith_dot_vec2_u32(~vec2<u32>(133208u, arg_0.a.a), vec2<u32>(86929u, 4294967295u) >> (vec2<u32>(arg_1, 1u) % vec2<u32>(32u)))), vec4<bool>(var_0 && true, !var_0, var_0, any(select(vec3<bool>(var_0, false, var_0), vec3<bool>(var_0, var_0, true), select(vec3<bool>(var_0, var_0, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false))))));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let var_3 = _wgslsmith_add_u32(var_1.x, ~u_input.c);
    var_1 = vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_div_u32(select(~42662u, 1u, true), 38486u), _wgslsmith_add_u32(_wgslsmith_sub_u32(arg_1 | 0u, ~82603u), func_1(arg_0.a, vec4<f32>(var_2, var_2, 1463f, 257f), _wgslsmith_f_op_f32(select(var_2, var_2, true))).a), ~29597u), func_4(var_2, select(1u, func_3(func_3(arg_0.a).a).a.a, var_0), arg_1 | var_1.x, func_4(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2))), 15453u, 1u, arg_0.a).d).b, arg_1, min(97383u, ~var_1.x));
    return Struct_1(_wgslsmith_clamp_u32(8245u, ~_wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_3, arg_0.b, 73820u, arg_1), vec4<u32>(1623u, arg_0.c, 79380u, 1u))), abs(1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(u_input.c, u_input.b);
    var var_1 = Struct_3(func_5(func_4(_wgslsmith_f_op_f32(f32(-1f) * -2167f), ~1u, 0u, func_1(Struct_1(4294967295u), vec4<f32>(-1170f, 1000f, -1053f, 299f), 1805f)), 0u), _wgslsmith_div_u32(~(~35803u), firstTrailingBit(~var_0.x)), _wgslsmith_sub_u32(var_0.x, var_0.x), Struct_1(1u));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2019f, 2328f, 1124f, 772f)) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -310f), _wgslsmith_f_op_f32(floor(887f)), _wgslsmith_f_op_f32(-153f + -636f), _wgslsmith_f_op_f32(f32(-1f) * -762f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), vec4<bool>(true, true, true, true))));
    var var_3 = var_1.a;
    var var_4 = ~(~_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_1.b, var_3.a, 0u, 44054u), vec4<u32>(0u, var_0.x, var_0.x, u_input.c)), vec4<u32>(65472u, 31427u, var_1.a.a, u_input.b)), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 4294967295u, 42309u, var_0.x), _wgslsmith_mult_vec4_u32(vec4<u32>(13418u, u_input.c, 4294967295u, 41060u), vec4<u32>(1u, 0u, 0u, 83660u)))));
    var var_5 = true;
    var var_6 = vec2<i32>(-_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.d.ywz, -vec3<i32>(-47948i, u_input.d.x, 11081i), _wgslsmith_mod_vec3_i32(vec3<i32>(38395i, 63462i, u_input.a), u_input.d.zww)), reverseBits(select(u_input.d.zzz, vec3<i32>(0i, 15880i, 6455i), false))), 64833i);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_3.a, countOneBits(var_3.a), _wgslsmith_div_u32(4294967295u, 9247u), _wgslsmith_mod_u32(4294967295u, ~var_0.x)), _wgslsmith_f_op_vec4_f32(-var_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-174f))));
}

