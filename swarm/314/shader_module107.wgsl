struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec3<i32>,
}

struct Struct_5 {
    a: bool,
    b: vec2<i32>,
    c: Struct_3,
    d: vec4<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_5, arg_1: f32, arg_2: bool, arg_3: Struct_5) -> i32 {
    let var_0 = 2672i;
    let var_1 = arg_0;
    var var_2 = Struct_1(arg_0.c.b.a);
    let var_3 = arg_0.c.a.wxy;
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.c.x))))), _wgslsmith_f_op_f32(round(arg_3.c.c.x)), _wgslsmith_f_op_f32(arg_1 - -2245f), _wgslsmith_f_op_f32(round(arg_1)));
    return 37496i;
}

fn func_2(arg_0: Struct_3) -> Struct_2 {
    let var_0 = ~firstTrailingBit(u_input.a << (vec2<u32>(arg_0.b.a.x, ~arg_0.b.a.x) % vec2<u32>(32u)));
    let var_1 = Struct_4(arg_0.b, arg_0.b, -1000f, _wgslsmith_div_vec3_i32(select(vec3<i32>(-1i, func_3(Struct_5(false, vec2<i32>(1i, 74611i), arg_0, vec4<bool>(false, false, true, false), Struct_2(arg_0.b.a.xz)), arg_0.c.x, false, Struct_5(false, vec2<i32>(-2147483647i, -6291i), Struct_3(arg_0.a, arg_0.b, vec2<f32>(129f, arg_0.c.x)), vec4<bool>(false, true, false, false), Struct_2(vec2<u32>(1u, arg_0.b.a.x)))), _wgslsmith_mult_i32(1i, 7683i)), select(vec3<i32>(-275i, 2147483647i, -2147483647i), max(vec3<i32>(24680i, 40468i, 2147483647i), vec3<i32>(-2147483647i, -48331i, -43866i)), vec3<bool>(false, false, true)), true), ((vec3<i32>(-52227i, 0i, -1i) << (vec3<u32>(49972u, 0u, arg_0.b.a.x) % vec3<u32>(32u))) << (~arg_0.b.a % vec3<u32>(32u))) ^ vec3<i32>(1i, i32(-1i) * -12763i, -16685i)));
    var var_2 = Struct_4(Struct_1(arg_0.b.a), Struct_1(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(arg_0.b.a ^ vec3<u32>(22386u, 4294967295u, u_input.a.x), _wgslsmith_add_vec3_u32(var_1.a.a, var_1.a.a)), ~vec3<u32>(var_1.b.a.x, var_0.x, var_0.x))), _wgslsmith_f_op_f32(trunc(-1034f)), vec3<i32>(i32(-1i) * -12996i, 0i, ~1i));
    let var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(var_2.c)), _wgslsmith_f_op_f32(-var_2.c))))))));
    var_2 = var_1;
    return Struct_2(var_2.b.a.xy);
}

fn func_1(arg_0: Struct_5) -> u32 {
    let var_0 = -709f;
    var var_1 = func_2(arg_0.c);
    var var_2 = u_input.a.x;
    let var_3 = 2147483647i;
    var_2 = ~(~max(firstLeadingBit(53479u), (arg_0.c.b.a.x | 70294u) << (abs(1u) % 32u)));
    return select(_wgslsmith_add_u32(abs(~_wgslsmith_div_u32(17392u, arg_0.e.a.x)), 0u), _wgslsmith_dot_vec2_u32(abs(_wgslsmith_sub_vec2_u32(~var_1.a, u_input.a)), u_input.a), arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(~_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_div_u32(44185u, u_input.a.x), 39129u), ~(~u_input.a)));
    var var_1 = ~vec4<i32>(2147483647i, _wgslsmith_div_i32(_wgslsmith_add_i32(11474i, 33865i) << (func_1(Struct_5(true, vec2<i32>(2147483647i, 0i), Struct_3(vec4<f32>(-138f, -1000f, -723f, 1042f), Struct_1(vec3<u32>(u_input.a.x, u_input.a.x, var_0.a.x)), vec2<f32>(-612f, 742f)), vec4<bool>(true, false, false, false), var_0)) % 32u), select(_wgslsmith_add_i32(-1i, 2147483647i), abs(1i), false)), -2147483647i, -(-52535i ^ (-1i << (var_0.a.x % 32u))));
    let var_2 = -vec2<i32>(~var_1.x, var_1.x);
    let var_3 = ~_wgslsmith_add_vec4_u32(vec4<u32>(27785u, ~countOneBits(var_0.a.x), _wgslsmith_mod_u32(~u_input.a.x, var_0.a.x), var_0.a.x), ~firstTrailingBit(~vec4<u32>(var_0.a.x, 4294967295u, 4294967295u, 50310u)));
    var_1 = vec4<i32>(-34575i, var_1.x, _wgslsmith_add_i32((i32(-1i) * -1i) | (-2934i >> (_wgslsmith_mult_u32(var_0.a.x, 15093u) % 32u)), var_2.x), var_1.x);
    var var_4 = false;
    var_1 = firstLeadingBit(max(~(-_wgslsmith_mult_vec4_i32(vec4<i32>(var_2.x, -1i, var_1.x, 10344i), vec4<i32>(2147483647i, 0i, 1121i, -1i))), countOneBits(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(45507i, var_1.x, -1i, var_2.x), vec4<i32>(3597i, -19348i, 2147483647i, var_2.x)), vec4<i32>(var_2.x, 37892i, 0i, 0i)))));
    var_4 = any(select(select(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true)), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), false), vec4<bool>(true, true, true, true)), vec4<bool>(any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false)), all(vec4<bool>(true, true, true, true)), true, true), true));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(63992u, 1u, func_1(Struct_5(true, -vec2<i32>(var_1.x, var_1.x), Struct_3(vec4<f32>(-128f, -1000f, -1000f, 1942f), Struct_1(var_3.zxw), vec2<f32>(-545f, 528f)), vec4<bool>(false, true, false, false), Struct_2(var_0.a))), 1u), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1218f, -621f, -1000f, 198f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(971f, -936f, -213f, 1000f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-955f, 1106f, -201f, -168f) + vec4<f32>(-1258f, -909f, 1035f, 689f)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-890f, -2359f, -1688f, -778f), vec4<f32>(-1077f, -567f, -369f, -1372f))) - _wgslsmith_div_vec4_f32(vec4<f32>(-1141f, 251f, -657f, -1000f), vec4<f32>(-595f, 1407f, 1816f, -357f))))))), vec4<u32>(68938u, ~(~24693u), 43258u, 7152u), func_2(Struct_3(vec4<f32>(1f, 1f, 1f, 1f), Struct_1(~var_3.wyz), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-700f, -1010f)))).a);
}

