struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_3) -> vec3<u32> {
    let var_0 = Struct_1(vec2<i32>(arg_2.a.b, ~arg_2.a.b) & firstTrailingBit(vec2<i32>(_wgslsmith_mult_i32(-48434i, u_input.a), arg_2.a.b)), true, min(~(~arg_2.b.x), firstTrailingBit(_wgslsmith_mod_u32(0u, arg_2.b.x))) ^ 89288u, arg_0.x);
    var var_1 = -2147483647i;
    let var_2 = ~vec2<i32>(min(_wgslsmith_mult_i32(~(-2147483647i), u_input.a << (var_0.c % 32u)), -8417i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, arg_2.a.b, _wgslsmith_mult_i32(var_0.a.x, 18894i), arg_2.a.b), firstTrailingBit(vec4<i32>(2147483647i, u_input.a, var_0.a.x, arg_2.a.b))));
    let var_3 = -1253f;
    let var_4 = var_0.c;
    return _wgslsmith_mult_vec3_u32(select(~(~(~vec3<u32>(4294967295u, 4294967295u, 92379u))), min(vec3<u32>(36676u, 1u, ~1u), ~(~vec3<u32>(var_0.c, arg_2.b.x, var_0.c))), !arg_0.wxy), vec3<u32>(~10179u, ~(~var_4), arg_2.b.x));
}

fn func_2(arg_0: i32, arg_1: Struct_3) -> Struct_2 {
    var var_0 = arg_1;
    let var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(-1i) * -(~vec3<i32>(24358i, u_input.a, arg_0)), -vec3<i32>(0i, -38950i, 1i)) >> (select(func_3(!(!vec4<bool>(true, var_0.a.a, false, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -719f) - -1000f), Struct_3(Struct_2(false, -16497i), ~vec2<u32>(48263u, 23441u))), vec3<u32>(30226u, ~_wgslsmith_mult_u32(var_0.b.x, arg_1.b.x), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 37575u, 4294967295u, var_0.b.x), vec4<u32>(var_0.b.x, arg_1.b.x, 13041u, var_0.b.x)), reverseBits(vec4<u32>(4294967295u, 51964u, arg_1.b.x, var_0.b.x)))), select(vec3<bool>(all(vec4<bool>(arg_1.a.a, var_0.a.a, false, false)), true, true), vec3<bool>(!var_0.a.a, false, arg_1.a.a), var_0.a.a)) % vec3<u32>(32u));
    var_0 = arg_1;
    var var_2 = Struct_1(-var_1.zz >> (vec2<u32>(arg_1.b.x, 40538u) % vec2<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1142f))) - _wgslsmith_f_op_f32(trunc(-205f))) >= _wgslsmith_f_op_f32(-1f), 42784u >> (~var_0.b.x % 32u), true);
    var var_3 = var_0.b.x;
    return var_0.a;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: vec3<f32>) -> u32 {
    var var_0 = Struct_3(func_2(~reverseBits(~1i), Struct_3(Struct_2(arg_0.x, arg_1.x), (vec2<u32>(arg_2.c, arg_2.c) & vec2<u32>(1u, 0u)) << (abs(vec2<u32>(1u, 56159u)) % vec2<u32>(32u)))), ~vec2<u32>(1u, ~arg_2.c));
    var_0 = Struct_3(Struct_2(var_0.a.a, arg_1.x), func_3(select(!(!vec4<bool>(true, var_0.a.a, true, true)), !vec4<bool>(var_0.a.a, arg_2.b, var_0.a.a, arg_2.b), all(!arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x + -1000f)) + -523f), Struct_3(Struct_2(true, 0i), var_0.b)).xz);
    var_0 = Struct_3(var_0.a, ~(var_0.b << (vec2<u32>(func_3(vec4<bool>(true, false, arg_2.d, false), arg_3.x, Struct_3(Struct_2(false, var_0.a.b), var_0.b)).x, arg_2.c ^ var_0.b.x) % vec2<u32>(32u))));
    var_0 = Struct_3(Struct_2(arg_2.d, arg_1.x), _wgslsmith_mod_vec2_u32(reverseBits(_wgslsmith_clamp_vec2_u32(~var_0.b, ~vec2<u32>(4294967295u, var_0.b.x), firstTrailingBit(vec2<u32>(var_0.b.x, arg_2.c)))), ~var_0.b));
    var var_1 = var_0.b;
    return 4488u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_i32(u_input.a, abs(-32547i) >> (~4294967295u % 32u), 35487i);
    var var_1 = Struct_3(Struct_2(true, 49028i), _wgslsmith_add_vec2_u32(max(vec2<u32>(select(0u, 85262u, false), _wgslsmith_clamp_u32(18093u, 47148u, 24889u)), vec2<u32>(min(64303u, 4294967295u), ~0u)), vec2<u32>(~0u, ~func_1(vec4<bool>(true, true, true, true), vec4<i32>(u_input.a, var_0, u_input.a, 17453i), Struct_1(vec2<i32>(-2147483647i, var_0), false, 2210u, false), vec3<f32>(-182f, -259f, -921f)))));
    var_1 = Struct_3(func_2(~_wgslsmith_sub_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 2147483647i), vec2<i32>(u_input.a, var_0))), Struct_3(func_2(2147483647i, Struct_3(var_1.a, var_1.b)), abs(max(vec2<u32>(31787u, var_1.b.x), var_1.b)))), var_1.b ^ var_1.b);
    var var_2 = Struct_1(min(firstLeadingBit(vec2<i32>(var_0, 1i)) | ~(~vec2<i32>(20907i, -1i)), countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, u_input.a), reverseBits(vec2<i32>(var_0, var_0))))), !all(!(!vec4<bool>(var_1.a.a, var_1.a.a, true, false))), _wgslsmith_dot_vec2_u32(~vec2<u32>(20977u, ~var_1.b.x), ~(~_wgslsmith_sub_vec2_u32(var_1.b, var_1.b))), !var_1.a.a);
    var var_3 = vec3<i32>(_wgslsmith_clamp_i32(~firstLeadingBit(_wgslsmith_mult_i32(var_0, -31555i)), firstLeadingBit(max(-1i, -1i)), var_0), -reverseBits(1i), max(i32(-1i) * -5141i, var_0));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(max(var_1.b.x, ~var_2.c), 11319u, _wgslsmith_clamp_u32(var_2.c, 1u, var_1.b.x), abs(var_2.c)), ~(~(~75837u)), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(1i, u_input.a), var_0, 1i, select(_wgslsmith_mult_i32(8900i, var_0), 1i, var_2.b)), ~(vec4<i32>(-1i) * -vec4<i32>(3116i, var_1.a.b, -15339i, -19884i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-901f, -163f, -754f)), _wgslsmith_div_vec3_f32(vec3<f32>(675f, -643f, -355f), vec3<f32>(1464f, 117f, 376f)))))));
}

