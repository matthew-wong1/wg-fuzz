struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: u32) -> vec4<u32> {
    let var_0 = Struct_2(Struct_1(firstLeadingBit(firstLeadingBit(~vec3<u32>(0u, 92916u, 1u)))), Struct_1(vec3<u32>(~arg_0, _wgslsmith_sub_u32(arg_0, 4294967295u), arg_0 ^ 1u) << (vec3<u32>(1u, countOneBits(arg_0), ~0u) % vec3<u32>(32u))), Struct_1(_wgslsmith_sub_vec3_u32(vec3<u32>(~u_input.c, ~4294967295u, abs(u_input.d.x)), countOneBits(u_input.d))), _wgslsmith_mult_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(~2147483647i, _wgslsmith_sub_i32(0i, -1i)), ~vec2<i32>(-22927i, 35987i))));
    var var_1 = Struct_2(Struct_1(~_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 29946u, var_0.a.a.x), vec3<u32>(9407u, var_0.a.a.x, 34158u)), ~u_input.b)), var_0.b, var_0.c, var_0.d);
    var var_2 = Struct_2(var_0.b, Struct_1(~(~vec3<u32>(101468u, arg_0, 0u))), var_1.a, max(-2147483647i, var_0.d));
    var_2 = Struct_2(var_1.a, Struct_1(select(vec3<u32>(78758u, u_input.a.x, var_1.b.a.x) | ~u_input.b, min(max(vec3<u32>(11022u, 4294967295u, u_input.d.x), u_input.b), firstLeadingBit(var_0.b.a)), !select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false))), Struct_1(vec3<u32>(min(var_0.a.a.x, 1u >> (0u % 32u)), reverseBits(1u), u_input.d.x)), var_1.d);
    var var_3 = -vec2<i32>(var_2.d, firstLeadingBit(var_0.d));
    return ~_wgslsmith_sub_vec4_u32(vec4<u32>(~(var_1.a.a.x >> (8394u % 32u)), ~35819u, 0u, ~abs(u_input.d.x)), ~countOneBits(~vec4<u32>(57436u, 1u, 26835u, 61649u)));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = -(~(-reverseBits(vec4<i32>(-20316i, 2147483647i, -2147483647i, 19032i))) << ((max(~vec4<u32>(u_input.b.x, 4294967295u, arg_0.a.x, arg_0.a.x), func_3(arg_0.a.x)) ^ _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 49739u, 0u, 43808u), vec4<u32>(arg_0.a.x, 1u, arg_0.a.x, 1u)), vec4<u32>(u_input.a.x, 0u, arg_0.a.x, 1u), ~vec4<u32>(58073u, u_input.d.x, u_input.b.x, 2246u))) % vec4<u32>(32u)));
    return arg_0;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = abs(~_wgslsmith_clamp_vec4_i32(select(vec4<i32>(14052i, -2147483647i, 17651i, arg_0.x), vec4<i32>(-3779i, 2147483647i, arg_0.x, 13649i), vec4<bool>(false, true, false, false)) | countOneBits(vec4<i32>(arg_0.x, arg_0.x, -1i, arg_0.x)), _wgslsmith_clamp_vec4_i32(-vec4<i32>(18422i, 25588i, arg_0.x, -4969i), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, -20224i, arg_0.x), vec4<i32>(0i, -1i, arg_0.x, arg_0.x), vec4<i32>(-7089i, 52504i, arg_0.x, -1i)), vec4<i32>(arg_0.x, arg_0.x, -1i, 2147483647i) & vec4<i32>(0i, 2147483647i, 30307i, -2147483647i)), vec4<i32>(-24189i, -45029i, i32(-1i) * -1i, 1i)));
    let var_1 = vec4<u32>(0u, abs(~select(countOneBits(u_input.d.x), min(arg_1.a.x, 4294967295u), true)), 1u & _wgslsmith_add_u32(33953u, ~u_input.b.x), arg_1.a.x);
    let var_2 = Struct_2(func_2(Struct_1(vec3<u32>(reverseBits(arg_1.a.x), _wgslsmith_mod_u32(1u, var_1.x), ~arg_1.a.x))), Struct_1(~vec3<u32>(0u, 0u, arg_1.a.x)), func_2(Struct_1(vec3<u32>(~var_1.x, u_input.b.x >> (arg_1.a.x % 32u), ~u_input.d.x))), ~(-(~(i32(-1i) * -2147483647i))));
    let var_3 = var_2.b.a.x;
    let var_4 = -639f;
    return arg_1;
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> u32 {
    var var_0 = arg_2;
    var var_1 = var_0.b;
    var_1 = func_4(_wgslsmith_add_vec3_i32(~(~firstLeadingBit(vec3<i32>(arg_3.d, 0i, 1i))), vec3<i32>(~arg_3.d, 1i, arg_3.d | 0i) ^ (vec3<i32>(-1i, -29007i, arg_2.d) ^ vec3<i32>(18697i, -1447i, 2147483647i))), func_2(Struct_1(~(~vec3<u32>(arg_3.a.a.x, 908u, 2531u)))));
    let var_2 = Struct_2(Struct_1(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_1.a.x, arg_2.b.a.x, var_0.c.a.x), firstLeadingBit(arg_0)), ~_wgslsmith_mult_u32(var_1.a.x, var_0.b.a.x), _wgslsmith_sub_u32(select(arg_1.a.x, 15952u, true), _wgslsmith_div_u32(0u, u_input.b.x)))), func_2(Struct_1(var_0.b.a)), Struct_1(~_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(arg_2.a.a, u_input.b), _wgslsmith_clamp_vec3_u32(vec3<u32>(51405u, arg_1.a.x, arg_2.a.a.x), vec3<u32>(arg_2.c.a.x, 5750u, 9500u), vec3<u32>(arg_3.c.a.x, var_1.a.x, 4294967295u)))), -43818i);
    let var_3 = arg_2.d;
    return max(reverseBits(var_1.a.x), 0u);
}

fn func_5(arg_0: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-703f * 505f))))));
    var var_1 = vec2<bool>(select(true, true, true) || (~u_input.a.x >= u_input.d.x), !(!((u_input.d.x & 3850u) <= ~16779u)));
    var_1 = vec2<bool>(true, true);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2049f) * 658f);
    var_0 = 1f;
    return Struct_1(abs(u_input.b << (firstTrailingBit(select(u_input.b, vec3<u32>(u_input.b.x, 1u, 25471u), false)) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_5(abs(2147483647i << (func_1(vec4<u32>(u_input.c, 18049u, 4294967295u, u_input.a.x), Struct_1(vec3<u32>(u_input.b.x, u_input.c, u_input.b.x)), Struct_2(Struct_1(vec3<u32>(u_input.d.x, 81619u, u_input.c)), Struct_1(u_input.d), Struct_1(u_input.b), 2147483647i), Struct_2(Struct_1(u_input.d), Struct_1(u_input.b), Struct_1(u_input.d), -4390i)) % 32u))), Struct_1(vec3<u32>(func_4(vec3<i32>(-61945i, -5376i, 0i), func_4(vec3<i32>(-19400i, -47743i, 2147483647i), Struct_1(u_input.d))).a.x, ~(~u_input.a.x), ~u_input.d.x)), func_4(-vec3<i32>(0i, abs(-57892i), 1i), func_4(~(~vec3<i32>(2147483647i, 0i, 2147483647i)), func_4(vec3<i32>(-8694i, 0i, 1i) << (vec3<u32>(u_input.d.x, 1u, u_input.a.x) % vec3<u32>(32u)), Struct_1(u_input.d)))), -67273i);
    var var_1 = Struct_1(u_input.d & (min(~u_input.d, ~vec3<u32>(4294967295u, var_0.b.a.x, 3219u)) | vec3<u32>(var_0.a.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(29825u, u_input.b.x), u_input.d.yx), u_input.c)));
    var_1 = Struct_1((var_0.a.a & _wgslsmith_add_vec3_u32(vec3<u32>(20213u, var_0.c.a.x, 1u), var_0.c.a)) | var_0.c.a);
    var_1 = var_0.b;
    let var_2 = func_1(~(~vec4<u32>(78684u, var_0.b.a.x, var_1.a.x, var_1.a.x) & vec4<u32>(func_4(vec3<i32>(1i, -2147483647i, -13202i), Struct_1(vec3<u32>(var_0.b.a.x, 5320u, 1u))).a.x, _wgslsmith_sub_u32(u_input.d.x, u_input.c), u_input.a.x, 63161u)), var_0.b, var_0, var_0);
    var var_3 = var_0.c.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d, u_input.d << (_wgslsmith_add_vec3_u32(vec3<u32>(~u_input.d.x, min(33527u, 4294967295u), _wgslsmith_sub_u32(0u, u_input.a.x)), ~(var_1.a & vec3<u32>(var_1.a.x, 1u, var_2))) % vec3<u32>(32u)));
}

