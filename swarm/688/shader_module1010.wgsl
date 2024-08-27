struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<f32>,
    c: Struct_3,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_4) -> bool {
    let var_0 = arg_1.a.b.a.x;
    var var_1 = _wgslsmith_div_u32(1u << (~var_0 % 32u), reverseBits(~arg_1.a.b.a.x));
    let var_2 = vec2<u32>(_wgslsmith_dot_vec2_u32(select(vec2<u32>(min(arg_0.c.a, u_input.a.x), arg_0.c.a ^ 13135u), ~vec2<u32>(arg_0.c.a, arg_1.c.a) ^ firstTrailingBit(vec2<u32>(u_input.a.x, arg_0.c.a)), select(arg_1.a.a.zz, vec2<bool>(true, false), true)), _wgslsmith_add_vec2_u32(~arg_0.a.b.a.xx, arg_1.a.b.a.yz)), u_input.a.x);
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(2076f, -3173f, _wgslsmith_f_op_f32(arg_0.b.x + _wgslsmith_div_f32(arg_1.b.x, _wgslsmith_f_op_f32(arg_0.d + arg_0.a.b.c.x)))));
    var_3 = arg_0.a.b.c;
    return !arg_0.a.a.x;
}

fn func_3(arg_0: vec3<bool>, arg_1: i32) -> u32 {
    var var_0 = Struct_3(~u_input.a.x);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1562f)))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -439f)), var_1))));
    var_0 = Struct_3(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~u_input.a, u_input.a), abs(select(~vec3<u32>(1u, u_input.a.x, u_input.a.x), reverseBits(u_input.a), arg_0.x))));
    let var_3 = Struct_4(Struct_2(arg_0, Struct_1(select(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.a, var_0.a, u_input.a.x), u_input.a), reverseBits(vec3<u32>(var_0.a, 37881u, var_0.a)), var_0.a <= var_0.a), 0i, vec3<f32>(var_2.x, var_2.x, _wgslsmith_f_op_f32(-var_2.x))), ~(~vec4<u32>(0u, u_input.a.x, 4294967295u, 6163u)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 0u, 30095u, var_0.a), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 20041u, var_0.a, 0u), vec4<u32>(u_input.a.x, 83076u, var_0.a, 4294967295u), vec4<u32>(var_0.a, 7595u, var_0.a, 41622u)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.a, 65298u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 0u, 113331u, 0u))) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_2.zy, _wgslsmith_f_op_vec2_f32(-var_2.xy))) - var_2.yx)), Struct_3(0u), _wgslsmith_f_op_f32(sign(1244f)), arg_1);
    return 12698u;
}

fn func_1(arg_0: Struct_4, arg_1: i32, arg_2: f32, arg_3: Struct_4) -> u32 {
    var var_0 = countOneBits(~(arg_3.a.b.b | 828i) & abs(_wgslsmith_mult_i32(arg_1, arg_0.a.b.b)));
    var var_1 = arg_3.a.b;
    var var_2 = vec4<u32>(~_wgslsmith_mod_u32(~(arg_3.c.a | arg_3.c.a), u_input.a.x), func_3(select(vec3<bool>(arg_3.c.a != arg_0.a.c.x, arg_0.a.a.x, arg_0.a.a.x), vec3<bool>(false, func_2(arg_0, Struct_4(arg_0.a, vec2<f32>(1069f, var_1.c.x), arg_3.c, arg_2, var_1.b)), all(vec4<bool>(arg_3.a.a.x, arg_0.a.a.x, true, arg_0.a.a.x))), any(arg_3.a.a)), arg_1), ~1u, arg_3.c.a);
    var var_3 = all(select(!(!vec4<bool>(arg_0.a.a.x, arg_0.a.a.x, arg_3.a.a.x, true)), !(!vec4<bool>(arg_0.a.a.x, true, arg_3.a.a.x, false)), true)) | false;
    var var_4 = arg_3.a.a.x;
    return var_1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(-1245f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1040f + _wgslsmith_f_op_f32(816f * -397f))));
    let var_1 = ~(-23115i);
    var var_2 = Struct_4(Struct_2(!(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false)), Struct_1(vec3<u32>(func_1(Struct_4(Struct_2(vec3<bool>(false, true, false), Struct_1(vec3<u32>(404u, 1u, u_input.a.x), -84660i, vec3<f32>(-104f, var_0.x, 1486f)), vec4<u32>(26492u, u_input.a.x, u_input.a.x, 0u)), vec2<f32>(-518f, var_0.x), Struct_3(u_input.a.x), var_0.x, var_1), var_1, -726f, Struct_4(Struct_2(vec3<bool>(true, true, false), Struct_1(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), var_1, vec3<f32>(var_0.x, -217f, var_0.x)), vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 1u)), vec2<f32>(-1000f, var_0.x), Struct_3(36215u), var_0.x, -1i)), u_input.a.x, 4913u >> (u_input.a.x % 32u)), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1, var_1, var_1), -vec3<i32>(var_1, var_1, var_1)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(683f, 556f, -922f) - vec3<f32>(var_0.x, 1643f, var_0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -1030f, var_0.x)))), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 10884u, u_input.a.x, u_input.a.x), ~vec4<u32>(5898u, 0u, u_input.a.x, 1u), vec4<u32>(1u, u_input.a.x, u_input.a.x, 6775u)) >> (~vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-456f, var_0.x) - vec2<f32>(-400f, -239f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 3052f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-503f, -1247f) + vec2<f32>(504f, 264f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 886f))), Struct_3(~1u), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_0.x, var_0.x))))), 0i);
    var_2 = Struct_4(var_2.a, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * var_0.x) - 306f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_2.d, var_2.d)), _wgslsmith_f_op_f32(f32(-1f) * -2059f))))), var_2.c, var_2.d, 17729i);
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -109f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(~_wgslsmith_div_vec3_i32(~vec3<i32>(0i, var_1, -9531i), max(vec3<i32>(32658i, 6640i, var_1), vec3<i32>(var_2.e, 1i, var_1))), vec3<i32>(_wgslsmith_sub_i32(var_2.e, firstLeadingBit(var_1)), var_1, -(var_1 & -10709i))), vec3<i32>(19541i << ((60724u & var_2.a.b.a.x) % 32u), 21103i, -42144i) >> (firstLeadingBit(~vec3<u32>(1u, var_2.a.c.x, u_input.a.x) >> (_wgslsmith_clamp_vec3_u32(u_input.a, vec3<u32>(0u, u_input.a.x, var_2.a.b.a.x), vec3<u32>(0u, 43638u, var_2.c.a)) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.a.x, 36171u), vec3<u32>(12089u, u_input.a.x, 76977u))), firstLeadingBit(vec3<u32>(12785u, 4294967295u, u_input.a.x))) & firstTrailingBit(~select(vec3<u32>(23823u, 4294967295u, u_input.a.x), var_2.a.b.a, var_2.a.a)), 4294967295u, var_2.a.b.b);
}

