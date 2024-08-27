struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: bool,
    d: f32,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_2(Struct_1(firstLeadingBit(vec3<i32>(1i, 1i, 1i)), vec4<i32>(-1i) * -(~vec4<i32>(-22140i, 0i, -26034i, -23344i)), false), any(vec4<bool>(true, !all(vec3<bool>(true, true, false)), true, true)), vec2<i32>(-_wgslsmith_add_i32(_wgslsmith_mult_i32(-3890i, 0i), 1i), ~(2147483647i >> (_wgslsmith_mult_u32(23605u, u_input.d) % 32u))));
    return select(select(vec4<bool>(true, true, true, true), select(select(!vec4<bool>(true, false, var_0.b, var_0.b), !vec4<bool>(false, true, true, var_0.b), var_0.a.c), !select(vec4<bool>(var_0.a.c, false, true, var_0.b), vec4<bool>(var_0.b, var_0.b, true, var_0.b), var_0.b), all(vec3<bool>(var_0.b, var_0.b, var_0.a.c))), true), select(select(select(select(vec4<bool>(var_0.b, var_0.b, false, true), vec4<bool>(false, true, var_0.b, var_0.b), var_0.b), vec4<bool>(var_0.a.c, var_0.a.c, var_0.b, true), all(vec2<bool>(var_0.b, var_0.a.c))), select(!vec4<bool>(var_0.a.c, var_0.a.c, true, true), select(vec4<bool>(false, var_0.a.c, var_0.b, true), vec4<bool>(var_0.a.c, true, false, true), false), vec4<bool>(var_0.a.c, var_0.b, var_0.a.c, true)), !vec4<bool>(true, var_0.a.c, var_0.b, var_0.a.c)), select(!vec4<bool>(true, var_0.b, var_0.a.c, false), !(!vec4<bool>(var_0.a.c, true, true, var_0.b)), true), var_0.a.c), select(true, -2415f == _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(916f * -730f), -1000f)), true));
}

fn func_2(arg_0: i32) -> vec2<i32> {
    var var_0 = Struct_3(~(~(vec4<i32>(38133i, arg_0, arg_0, 2147483647i) & vec4<i32>(1146i, -12140i, -27378i, 1i))) & -(~_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, -1i, arg_0, -2147483647i), vec4<i32>(-23875i, arg_0, arg_0, arg_0), vec4<i32>(arg_0, arg_0, arg_0, arg_0))), Struct_2(Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(arg_0, 1i, -1i), -vec3<i32>(1i, 44243i, -2147483647i)), -max(vec4<i32>(1i, arg_0, 63155i, arg_0), vec4<i32>(56471i, arg_0, 1i, arg_0)), !select(false, true, false)), !all(func_3()), ~_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0, -1i), vec2<i32>(-44310i, 2147483647i)), ~vec2<i32>(2147483647i, arg_0))), false && any(func_3()), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1124f, 1888f, true))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -125f)))))));
    var var_1 = Struct_3(~(~(vec4<i32>(var_0.b.a.a.x, arg_0, 39844i, arg_0) << (vec4<u32>(74620u, 4294967295u, 95559u, 1u) % vec4<u32>(32u))) & (_wgslsmith_mod_vec4_i32(var_0.a, vec4<i32>(arg_0, arg_0, arg_0, arg_0)) | _wgslsmith_add_vec4_i32(var_0.a, vec4<i32>(-22333i, 2147483647i, arg_0, -32149i)))), Struct_2(var_0.b.a, true, -(vec2<i32>(-1i) * -var_0.b.c)), var_0.b.a.c, 2090f);
    let var_2 = var_1.d;
    let var_3 = vec4<i32>(1i, var_0.a.x, firstLeadingBit(~(i32(-1i) * -7264i)), _wgslsmith_add_i32((-2147483647i >> (_wgslsmith_div_u32(4294967295u, u_input.a) % 32u)) >> (reverseBits(~u_input.a) % 32u), 2147483647i));
    var var_4 = select(func_3().wx, func_3().xx, !vec2<bool>(_wgslsmith_f_op_f32(-var_1.d) == _wgslsmith_f_op_f32(sign(-657f)), var_1.c));
    return var_0.b.a.a.yx;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec4<i32>, arg_3: bool) -> Struct_2 {
    var var_0 = arg_3;
    return Struct_2(arg_0, any(vec4<bool>(func_3().x, !arg_3, select(arg_3, true, arg_3), any(vec4<bool>(arg_0.c, true, true, arg_3)))), arg_1);
}

fn func_1(arg_0: vec4<f32>, arg_1: bool, arg_2: bool) -> vec2<bool> {
    var var_0 = func_4(Struct_1(max(~(vec3<i32>(-31230i, 0i, -1i) << (vec3<u32>(u_input.b, 59890u, 0u) % vec3<u32>(32u))), vec3<i32>(min(-23788i, 3855i), -18312i, 0i)), select(-vec4<i32>(-1i, 1i, 2147483647i, -2147483647i), vec4<i32>(-2147483647i, 1i, 11283i >> (u_input.b % 32u), 1i), true), !arg_2), -func_2(_wgslsmith_mult_i32(reverseBits(2147483647i), select(1i, 0i, arg_2))), _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(-abs(vec4<i32>(2147483647i, -42529i, -1i, 1i)), ~vec4<i32>(-2147483647i, -59915i, -2147483647i, 0i) >> ((vec4<u32>(u_input.a, 1u, u_input.b, u_input.a) >> (vec4<u32>(4294967295u, u_input.c, u_input.c, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u))), abs(vec4<i32>(~(-2578i), _wgslsmith_mult_i32(10548i, -12762i), _wgslsmith_mult_i32(-44022i, 0i), firstTrailingBit(28714i)))), false);
    var_0 = func_4(func_4(Struct_1(~(-var_0.a.a), -var_0.a.b, var_0.b), _wgslsmith_div_vec2_i32(min(var_0.a.b.zx, var_0.c), abs(select(var_0.a.b.xw, vec2<i32>(2147483647i, var_0.a.a.x), arg_1))), vec4<i32>(2147483647i, ~(var_0.c.x << (u_input.a % 32u)), -(~var_0.a.b.x), _wgslsmith_add_i32(var_0.c.x << (u_input.b % 32u), -2147483647i)), var_0.b).a, ~countOneBits(vec2<i32>(-6296i, -var_0.a.b.x)), ~(var_0.a.b ^ max(-var_0.a.b, vec4<i32>(-22517i, -1973i, var_0.a.b.x, -2147483647i))), !((arg_0.x <= 141f) | arg_2));
    return !select(vec2<bool>(var_0.b, !(-2147483647i == var_0.c.x)), func_3().ww, !select(!vec2<bool>(arg_2, arg_1), vec2<bool>(arg_1, false), var_0.c.x > 2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!(!select(func_1(vec4<f32>(-167f, -684f, 2206f, -375f), true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, false))), vec2<bool>(true, true), vec2<bool>(func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1689f, 967f, -1942f, -981f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(685f, 1120f, -1476f, 1189f), vec4<f32>(121f, -586f, -973f, 503f), vec4<bool>(true, true, false, false)))), true, true).x, !select(true, func_3().x, true)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(0u), ~_wgslsmith_clamp_i32(2147483647i >> (0u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, -42984i, -1i), vec4<i32>(44144i, 2147483647i, -13965i, 0i)), -1i) >> (u_input.d % 32u), _wgslsmith_mod_u32(u_input.b, 44804u & (36373u | u_input.c)) | 61158u, reverseBits(1i));
}

