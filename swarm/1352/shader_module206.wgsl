struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec4<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec2<bool>, arg_1: bool, arg_2: vec4<i32>) -> vec4<i32> {
    return _wgslsmith_sub_vec4_i32(arg_2, _wgslsmith_mult_vec4_i32(min(_wgslsmith_clamp_vec4_i32(arg_2, -arg_2, vec4<i32>(u_input.c.x, 13474i, 22711i, u_input.a.x) ^ arg_2), arg_2), firstTrailingBit(-(~arg_2))));
}

fn func_2() -> bool {
    var var_0 = -func_3(select(vec2<bool>(false, true), vec2<bool>(false, false), false), 3633u < u_input.b.x, vec4<i32>(u_input.c.x, 0i, 24444i, u_input.a.x) << (abs(vec4<u32>(1u, u_input.d, u_input.d, u_input.b.x)) % vec4<u32>(32u))) << (_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(~(vec4<u32>(u_input.b.x, u_input.b.x, 28537u, u_input.d) >> (vec4<u32>(28310u, u_input.d, 10010u, u_input.b.x) % vec4<u32>(32u))), ~vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.b.x)), vec4<u32>(~0u, 0u, ~firstTrailingBit(u_input.b.x), (u_input.d | 0u) | ~u_input.b.x), min(firstLeadingBit(vec4<u32>(u_input.d, u_input.d, 0u, 17234u)), ~(~vec4<u32>(69389u, u_input.d, u_input.b.x, u_input.b.x)))) % vec4<u32>(32u));
    var_0 = ~(~(-vec4<i32>(u_input.a.x, 0i, var_0.x, -2147483647i)));
    var_0 = ~abs(~(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, var_0.x, 2147483647i, -1055i), vec4<i32>(1i, -8178i, u_input.a.x, u_input.c.x)) >> (firstLeadingBit(vec4<u32>(u_input.d, 41627u, 85706u, 70737u)) % vec4<u32>(32u))));
    var var_1 = Struct_3(Struct_1(vec4<bool>(true, false, all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true)), true), -604f, !vec3<bool>(select(false, false, true), true, var_0.x < u_input.a.x)), -(~func_3(vec2<bool>(true, true), all(vec3<bool>(true, false, false)), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, u_input.c.x, u_input.c.x, var_0.x), vec4<i32>(12908i, -1i, u_input.c.x, -36697i))).zx));
    let var_2 = Struct_1(select(!vec4<bool>(any(var_1.a.a), true, false, select(var_1.a.a.x, var_1.a.a.x, false)), vec4<bool>(var_1.a.c.x, ~u_input.d <= 10832u, !(!var_1.a.c.x), true), false), _wgslsmith_div_f32(var_1.a.b, _wgslsmith_f_op_f32(var_1.a.b * 825f)), var_1.a.a.yxx);
    return true;
}

fn func_1(arg_0: i32, arg_1: vec3<f32>, arg_2: f32) -> vec2<bool> {
    let var_0 = Struct_4(vec4<i32>(-22095i, -8644i, u_input.c.x, _wgslsmith_mult_i32(reverseBits(abs(-3967i)), min(~u_input.c.x, -u_input.a.x))), u_input.b, vec4<bool>(true, true, func_2(), any(select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), vec3<bool>(false, true, false), false))), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(trunc(-1898f)), arg_2, -792f), Struct_1(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), true), true), _wgslsmith_f_op_f32(ceil(arg_2)), vec3<bool>(true, any(vec4<bool>(true, true, true, true)), true)), Struct_1(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), true), _wgslsmith_f_op_f32(arg_2 * -1236f), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), vec3<bool>(false, false, false), vec3<bool>(true, false, false))), Struct_1(vec4<bool>(true, true, false, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-614f - -602f) * arg_2), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)))));
    let var_1 = u_input.b.x;
    var var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(924f)), 951f, -859f)))));
    var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1.x - var_2.x))))), _wgslsmith_f_op_f32(f32(-1f) * -462f), var_0.d.a.x);
    var_2 = var_0.d.a;
    return !(!var_0.d.b.a.wy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(vec2<bool>(true, all(func_1(-1i, vec3<f32>(562f, -303f, 377f), -509f))), select(vec2<bool>(u_input.d != 50264u, true), func_1(-6503i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1066f, 1043f, 654f)), _wgslsmith_f_op_f32(535f * -1723f)), true), true), vec2<bool>(true || !(u_input.a.x >= 2147483647i), true), true);
    var_0 = vec2<bool>(~u_input.d > u_input.b.x, var_0.x && false);
    var_0 = func_1(1i, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -219f), _wgslsmith_f_op_f32(max(-617f, 1333f)), _wgslsmith_f_op_f32(abs(226f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -305f), _wgslsmith_div_f32(-774f, -1000f), -223f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2091f, -1000f) * _wgslsmith_f_op_f32(1000f * 572f)), 1090f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-3159f, 131f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(731f * -358f))))));
    var var_1 = Struct_4(~(-(vec4<i32>(-2147483647i, -23056i, 12431i, 1i) | ~vec4<i32>(u_input.a.x, 0i, -77632i, 2147483647i))), ~u_input.b, !select(select(!vec4<bool>(var_0.x, true, true, var_0.x), select(vec4<bool>(false, var_0.x, var_0.x, true), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(true, true, var_0.x, var_0.x)), true), select(!vec4<bool>(var_0.x, true, false, true), !vec4<bool>(var_0.x, true, var_0.x, var_0.x), false), true), Struct_2(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-231f * 447f), _wgslsmith_f_op_f32(sign(213f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1238f + 813f) + -3017f), -1128f), Struct_1(!vec4<bool>(false, var_0.x, var_0.x, var_0.x), -656f, select(select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), false), vec3<bool>(true, var_0.x, false), select(vec3<bool>(true, false, true), vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(true, var_0.x, false)))), Struct_1(!select(vec4<bool>(var_0.x, false, false, var_0.x), vec4<bool>(var_0.x, var_0.x, true, false), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 1016f)), select(select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(false, true, true), var_0.x), vec3<bool>(true, var_0.x, var_0.x), var_0.x & var_0.x)), Struct_1(!(!vec4<bool>(var_0.x, false, var_0.x, false)), _wgslsmith_f_op_f32(f32(-1f) * -357f), vec3<bool>(true, all(vec4<bool>(false, var_0.x, false, var_0.x)), false))));
    var var_2 = ~vec3<u32>(_wgslsmith_mod_u32(u_input.b.x, firstTrailingBit(2276u)), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b.x, 4698u, 31882u), vec3<u32>(4294967295u, 1u, u_input.b.x) ^ vec3<u32>(var_1.b.x, 0u, 132078u)), 0u) | (vec3<u32>(firstLeadingBit(~13697u), _wgslsmith_add_u32(0u, u_input.b.x), 4294967295u) << (~vec3<u32>(1u, ~u_input.d, ~u_input.d) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(41765i, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.a, u_input.a), -var_1.a.x)));
}

