struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: u32,
    d: bool,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<f32>) -> bool {
    var var_0 = abs(vec4<u32>(u_input.c, max(u_input.c, u_input.c), ~83410u, u_input.c) << (vec4<u32>(_wgslsmith_add_u32(53527u, u_input.c), u_input.c, ~u_input.c, 1u) % vec4<u32>(32u))) | vec4<u32>(1u, _wgslsmith_mult_u32(4294967295u, u_input.c), firstLeadingBit(reverseBits(~u_input.c)), reverseBits(~(~u_input.c)));
    let var_1 = Struct_2(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(u_input.b, _wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.d, 0i, -52745i), ~u_input.b)), firstTrailingBit(abs(vec3<i32>(u_input.a, u_input.a, -1i)))), Struct_1(arg_0, vec4<bool>(false, any(select(arg_0.xzw, vec3<bool>(arg_0.x, false, arg_0.x), arg_0.x)), any(vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), arg_0.x), var_0.x, select(arg_0.x, false, !all(arg_0)), vec4<bool>(true, true, arg_0.x, arg_0.x)), Struct_1(select(!select(arg_0, arg_0, vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x)), select(select(arg_0, vec4<bool>(true, false, true, arg_0.x), vec4<bool>(false, arg_0.x, true, false)), arg_0, arg_1.x > arg_1.x), arg_0.x), !select(!vec4<bool>(arg_0.x, false, arg_0.x, false), select(arg_0, arg_0, arg_0.x), !vec4<bool>(false, false, arg_0.x, arg_0.x)), ~(var_0.x & 4294967295u) | u_input.c, any(select(vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, true, arg_0.x, false), arg_0)), arg_0), firstTrailingBit(max(1u, var_0.x)) << (min(min(u_input.c, ~u_input.c), firstTrailingBit(u_input.c) | 28400u) % 32u), _wgslsmith_mult_u32(~20694u, 0u));
    var var_2 = arg_0.x;
    let var_3 = 1862f;
    let var_4 = _wgslsmith_clamp_u32(25797u, 1u, min(u_input.c, reverseBits(19798u)));
    return arg_0.x;
}

fn func_2(arg_0: f32, arg_1: bool) -> u32 {
    var var_0 = Struct_1(!select(vec4<bool>(any(vec2<bool>(arg_1, arg_1)), func_3(vec4<bool>(false, false, true, arg_1), vec4<f32>(arg_0, 131f, arg_0, -1255f)), !arg_1, all(vec4<bool>(false, arg_1, arg_1, false))), vec4<bool>(true, true, false, arg_1), select(vec4<bool>(true, false, false, arg_1), select(vec4<bool>(false, arg_1, arg_1, arg_1), vec4<bool>(false, arg_1, arg_1, arg_1), arg_1), arg_1)), !vec4<bool>(arg_1, func_3(!vec4<bool>(arg_1, false, false, arg_1), vec4<f32>(arg_0, arg_0, arg_0, arg_0)), all(vec3<bool>(arg_1, arg_1, arg_1)), arg_1), 97685u >> (abs(u_input.c) % 32u), arg_1, vec4<bool>(min(reverseBits(u_input.a), ~21867i) > -90622i, true, true, arg_1));
    var_0 = Struct_1(var_0.b, var_0.e, ~_wgslsmith_clamp_u32(u_input.c, var_0.c, u_input.c) >> (select(~var_0.c, reverseBits(~0u), arg_0 < _wgslsmith_f_op_f32(min(arg_0, 395f))) % 32u), var_0.a.x, !var_0.a);
    let var_1 = -(~select(vec4<i32>(_wgslsmith_div_i32(u_input.a, u_input.d), 1i, u_input.b.x >> (u_input.c % 32u), firstLeadingBit(-22217i)), firstLeadingBit(-vec4<i32>(-2147483647i, u_input.d, u_input.a, 1i)), arg_1));
    var var_2 = Struct_2(vec3<i32>(var_1.x, countOneBits(1i), var_1.x), Struct_1(select(!(!var_0.a), vec4<bool>(true, any(vec2<bool>(true, false)), arg_0 >= -994f, !arg_1), select(vec4<bool>(true, var_0.b.x, true, arg_1), var_0.a, select(vec4<bool>(true, arg_1, var_0.a.x, arg_1), vec4<bool>(var_0.a.x, arg_1, arg_1, arg_1), arg_1))), !select(var_0.b, vec4<bool>(false, false, true, false), var_0.e), ~(_wgslsmith_clamp_u32(var_0.c, u_input.c, 4294967295u) | var_0.c), true, !(!var_0.e)), Struct_1(!vec4<bool>(arg_1 | false, !var_0.d, true, !arg_1), select(!var_0.b, !vec4<bool>(true, arg_1, var_0.a.x, false), all(!var_0.b)), ~(~4294967295u), true, !vec4<bool>(var_0.e.x, var_0.e.x || false, all(var_0.a), true)), ~reverseBits(_wgslsmith_dot_vec2_u32(max(vec2<u32>(1u, 0u), vec2<u32>(var_0.c, 10478u)), ~vec2<u32>(var_0.c, u_input.c))), ~(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c, var_0.c, var_0.c), vec3<u32>(25801u, 125016u, u_input.c) & vec3<u32>(14574u, 4294967295u, var_0.c)) >> (0u % 32u)));
    var_0 = var_2.c;
    return firstLeadingBit(min(1u, _wgslsmith_mult_u32(~max(var_2.c.c, 3321u), _wgslsmith_clamp_u32(~8747u, var_2.c.c | var_2.e, 40626u))));
}

fn func_1(arg_0: u32) -> u32 {
    var var_0 = ~31757u;
    var_0 = ~(~(~(~arg_0)));
    var_0 = _wgslsmith_mult_u32(11996u, min(~(~arg_0), arg_0)) ^ firstTrailingBit(func_2(362f, all(vec4<bool>(true, true, true, true))) ^ 32054u);
    var_0 = ~abs(countOneBits(u_input.c));
    let var_1 = vec4<u32>(u_input.c, _wgslsmith_dot_vec3_u32(((vec3<u32>(u_input.c, u_input.c, u_input.c) << (vec3<u32>(u_input.c, u_input.c, 1400u) % vec3<u32>(32u))) & (vec3<u32>(1u, arg_0, arg_0) & vec3<u32>(4294967295u, arg_0, 898u))) | ~(~vec3<u32>(1u, arg_0, u_input.c)), vec3<u32>(4774u, ~_wgslsmith_mult_u32(4294967295u, 0u), reverseBits(37505u))), arg_0, countOneBits(_wgslsmith_div_u32(~1u, ~u_input.c | ~4294967295u)));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(4294967295u);
    var var_1 = vec3<bool>(true, !any(vec3<bool>(true, true, true)), (~func_1(7760u) == reverseBits(16516u)) | false);
    var_1 = select(!select(vec3<bool>(!var_1.x, false, all(vec2<bool>(var_1.x, false))), select(vec3<bool>(true, var_1.x, var_1.x), select(vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(true, true, var_1.x), vec3<bool>(false, false, var_1.x)), vec3<bool>(var_1.x, var_1.x, false)), select(vec3<bool>(true, var_1.x, var_1.x), select(vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(var_1.x, var_1.x, var_1.x), var_1.x), select(vec3<bool>(var_1.x, false, false), vec3<bool>(var_1.x, var_1.x, false), false))), select(vec3<bool>(any(var_1.zz), var_1.x, true || any(vec4<bool>(false, var_1.x, var_1.x, true))), vec3<bool>(var_1.x, all(vec3<bool>(var_1.x, var_1.x, true)), select(var_1.x, true, false)), !select(u_input.b.x <= 0i, any(vec4<bool>(false, false, false, var_1.x)), true)), vec3<bool>(!var_1.x, any(var_1.zy), !any(vec2<bool>(var_1.x, var_1.x))));
    let var_2 = var_1.x;
    var_1 = vec3<bool>(true, !var_1.x, false);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(4294967295u, firstLeadingBit(7932u), select(~4294967295u, 0u, var_1.x), 4294967295u), ~0u, ~(~(~vec3<u32>(u_input.c, 8195u, var_0))) >> (vec3<u32>(var_0 | u_input.c, 4294967295u, 0u) % vec3<u32>(32u)), ~(~vec4<u32>(1u, 1u, u_input.c, var_0) & (~vec4<u32>(u_input.c, 4294967295u, u_input.c, 4294967295u) << (~vec4<u32>(var_0, u_input.c, var_0, var_0) % vec4<u32>(32u)))));
}

