struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: i32, arg_1: i32) -> u32 {
    var var_0 = Struct_1(!vec2<bool>(all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true))), all(vec2<bool>(true, true))));
    let var_1 = ~vec2<u32>(_wgslsmith_sub_u32(u_input.d.x, ~firstLeadingBit(u_input.c.x)), _wgslsmith_clamp_u32(u_input.a | u_input.a, min(abs(1u), ~14712u), 0u));
    return ~(~0u);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec4<u32>) -> bool {
    var var_0 = countOneBits(~vec3<u32>(countOneBits(u_input.d.x), min(abs(25788u), ~u_input.a), u_input.a));
    let var_1 = arg_1.a.a;
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1010f);
    let var_3 = _wgslsmith_sub_u32(u_input.a, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(arg_2, vec4<u32>(var_0.x, 34191u, arg_1.c, u_input.c.x)) << ((vec4<u32>(7305u, 1u, u_input.c.x, 0u) ^ vec4<u32>(0u, arg_1.c, 37480u, u_input.a)) % vec4<u32>(32u)), arg_2)) | var_0.x;
    var_0 = ~arg_2.yxy;
    return true;
}

fn func_2(arg_0: i32) -> i32 {
    var var_0 = _wgslsmith_mult_i32(u_input.b.x, _wgslsmith_mult_i32(~(-1i), min(firstTrailingBit(-4316i) << (u_input.a % 32u), arg_0)));
    var var_1 = Struct_2(Struct_1(!(!select(vec2<bool>(true, true), vec2<bool>(false, true), true))), func_4(-_wgslsmith_add_vec4_i32(-vec4<i32>(0i, 18409i, arg_0, 37168i), countOneBits(vec4<i32>(arg_0, arg_0, arg_0, 11678i))), Struct_2(Struct_1(vec2<bool>(false, true)), false, firstLeadingBit(firstTrailingBit(u_input.d.x))), vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.c, u_input.c), u_input.c.x, 1u, func_3(arg_0, i32(-1i) * -1i))), ~select(4294967295u, ~u_input.c.x, abs(u_input.a) < u_input.c.x));
    var var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1295f, -276f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1112f)), 532f))));
    var var_3 = vec2<i32>(-1i) * -max(abs(countOneBits(u_input.b)), _wgslsmith_mult_vec2_i32(u_input.b, vec2<i32>(-19063i, 10754i)));
    var var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-682f + 1000f), -441f, -943f));
    return -26389i;
}

fn func_1() -> vec2<bool> {
    var var_0 = _wgslsmith_clamp_u32(_wgslsmith_add_u32(countOneBits(~1u), 22274u), 12903u, _wgslsmith_add_u32(~(~(~21094u)), 1u));
    let var_1 = ~(u_input.c ^ ~_wgslsmith_mult_vec3_u32(u_input.c, vec3<u32>(39156u, 41079u, 1u)));
    let var_2 = _wgslsmith_dot_vec4_i32(-vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.b, u_input.b) & func_2(-53622i), select(_wgslsmith_sub_i32(2147483647i, u_input.b.x), ~24791i, func_4(vec4<i32>(-1i, 1i, u_input.b.x, -83635i), Struct_2(Struct_1(vec2<bool>(true, false)), false, u_input.d.x), vec4<u32>(var_1.x, u_input.d.x, 9036u, var_1.x))), -1i, -(~u_input.b.x)), vec4<i32>(countOneBits(-1i), 51735i >> ((var_1.x | _wgslsmith_dot_vec3_u32(var_1, vec3<u32>(var_1.x, var_1.x, 25754u))) % 32u), countOneBits(~(64665i | u_input.b.x)), -_wgslsmith_div_i32(u_input.b.x, firstTrailingBit(u_input.b.x))));
    var_0 = 0u;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -366f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1125f, _wgslsmith_f_op_f32(ceil(671f)))), _wgslsmith_f_op_f32(f32(-1f) * -724f))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1015f * 1073f), -1326f)))));
    return !select(!select(vec2<bool>(false, false), vec2<bool>(true, true), func_4(vec4<i32>(var_2, var_2, 13020i, u_input.b.x), Struct_2(Struct_1(vec2<bool>(false, true)), false, 83349u), vec4<u32>(35096u, 4294967295u, 17513u, 1u))), vec2<bool>(true, true), !select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(true, true)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_4, arg_3: Struct_2) -> Struct_2 {
    let var_0 = arg_1;
    let var_1 = vec3<i32>(~(select(0i, 22237i, false) ^ ~(-21279i)), arg_2.a.x, ~u_input.b.x) | -abs(_wgslsmith_div_vec3_i32(arg_2.a.xyz >> (vec3<u32>(1u, 0u, arg_3.c) % vec3<u32>(32u)), -arg_2.a.wwx));
    var var_2 = vec4<i32>(~(~27541i), -19890i, var_1.x, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(1i, -arg_2.a.x, _wgslsmith_sub_i32(var_1.x, arg_2.a.x), ~0i)), vec4<i32>(-arg_2.a.x, -47394i, func_2(select(var_1.x, -1i, false)), u_input.b.x)));
    var var_3 = arg_2;
    var_3 = Struct_4(abs(abs(arg_2.a)), var_3.b);
    return Struct_2(Struct_1(vec2<bool>(!func_1().x, _wgslsmith_add_i32(1i, arg_2.a.x) > var_1.x)), !func_1().x, ~(~22429u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_1(func_1()), Struct_2(Struct_1(vec2<bool>(true, true)), true, abs(~func_3(u_input.b.x, 37526i))), Struct_4(~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, -13970i, -4419i, u_input.b.x) | vec4<i32>(2147483647i, 0i, -39175i, u_input.b.x), vec4<i32>(u_input.b.x, -20652i, u_input.b.x, 2147483647i) << (vec4<u32>(4294967295u, 0u, 36108u, 1u) % vec4<u32>(32u))), Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1782f, -821f, -1953f, 1434f)), Struct_1(vec2<bool>(true, true)))), Struct_2(Struct_1(vec2<bool>(true, func_1().x)), false, 1357u));
    var var_1 = var_0.a.a;
    var_0 = func_5(var_0.a, Struct_2(func_5(var_0.a, func_5(Struct_1(var_0.a.a), func_5(var_0.a, Struct_2(var_0.a, false, var_0.c), Struct_4(vec4<i32>(u_input.b.x, u_input.b.x, 25814i, 38656i), Struct_3(vec4<f32>(373f, 411f, -270f, -717f), Struct_1(vec2<bool>(false, var_0.a.a.x)))), Struct_2(var_0.a, true, u_input.a)), Struct_4(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 1i), Struct_3(vec4<f32>(-1410f, -1162f, 169f, -1120f), Struct_1(vec2<bool>(var_0.b, true)))), func_5(var_0.a, Struct_2(Struct_1(vec2<bool>(var_0.a.a.x, true)), false, 0u), Struct_4(vec4<i32>(31211i, 12276i, 1i, -55651i), Struct_3(vec4<f32>(-150f, 506f, 1185f, -380f), Struct_1(var_0.a.a))), Struct_2(var_0.a, true, u_input.d.x))), Struct_4(firstTrailingBit(vec4<i32>(18394i, 26104i, u_input.b.x, 1i)), Struct_3(vec4<f32>(-305f, 259f, 379f, -1516f), Struct_1(var_0.a.a))), Struct_2(func_5(Struct_1(vec2<bool>(false, var_1.x)), Struct_2(var_0.a, var_1.x, 3093u), Struct_4(vec4<i32>(u_input.b.x, 1i, u_input.b.x, u_input.b.x), Struct_3(vec4<f32>(1343f, -283f, -244f, 138f), Struct_1(vec2<bool>(true, var_1.x)))), Struct_2(Struct_1(vec2<bool>(true, var_1.x)), var_1.x, 1u)).a, false, _wgslsmith_sub_u32(29433u, var_0.c))).a, false, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u), u_input.d))), Struct_4(firstTrailingBit(~(~vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x))), Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 984f, -1000f, 786f) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1319f, 1064f, 1000f, -1251f), vec4<f32>(-320f, 461f, -463f, -248f)))), func_5(func_5(var_0.a, Struct_2(Struct_1(var_0.a.a), var_0.b, 15462u), Struct_4(vec4<i32>(u_input.b.x, 103392i, -2147483647i, u_input.b.x), Struct_3(vec4<f32>(-2000f, 641f, 307f, -2178f), var_0.a)), Struct_2(var_0.a, var_0.b, u_input.d.x)).a, func_5(Struct_1(vec2<bool>(false, true)), Struct_2(var_0.a, true, u_input.a), Struct_4(vec4<i32>(u_input.b.x, 48805i, 2147483647i, u_input.b.x), Struct_3(vec4<f32>(790f, 993f, -789f, 1000f), var_0.a)), Struct_2(Struct_1(var_0.a.a), false, 21371u)), Struct_4(vec4<i32>(5233i, -1i, u_input.b.x, u_input.b.x), Struct_3(vec4<f32>(611f, -1471f, -913f, -1000f), Struct_1(vec2<bool>(var_0.b, var_0.a.a.x)))), Struct_2(var_0.a, var_0.a.a.x, 34262u)).a)), func_5(var_0.a, Struct_2(func_5(var_0.a, Struct_2(var_0.a, var_0.b, var_0.c), Struct_4(vec4<i32>(1i, -11322i, 0i, u_input.b.x), Struct_3(vec4<f32>(-133f, 1043f, 452f, 352f), var_0.a)), func_5(Struct_1(var_0.a.a), Struct_2(Struct_1(vec2<bool>(var_1.x, var_0.a.a.x)), true, 2401u), Struct_4(vec4<i32>(-3135i, -2147483647i, 0i, u_input.b.x), Struct_3(vec4<f32>(-1511f, 300f, 590f, 673f), Struct_1(vec2<bool>(true, false)))), Struct_2(Struct_1(var_0.a.a), var_1.x, var_0.c))).a, any(!vec4<bool>(false, var_1.x, var_1.x, false)), _wgslsmith_dot_vec3_u32(u_input.c, ~vec3<u32>(0u, 0u, u_input.d.x))), Struct_4(vec4<i32>(-1i, -u_input.b.x, -2147483647i, _wgslsmith_add_i32(u_input.b.x, u_input.b.x)), Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1003f, -982f, -1093f, 366f)), var_0.a)), func_5(var_0.a, Struct_2(func_5(Struct_1(var_0.a.a), Struct_2(var_0.a, false, 60505u), Struct_4(vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, -45073i), Struct_3(vec4<f32>(-169f, -2091f, 1117f, -1722f), Struct_1(var_0.a.a))), Struct_2(var_0.a, var_1.x, u_input.a)).a, true, ~21929u), Struct_4(vec4<i32>(-50458i, 0i, 43540i, -4319i) ^ vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 1i), Struct_3(vec4<f32>(601f, 1809f, -325f, 1000f), Struct_1(vec2<bool>(false, var_0.a.a.x)))), func_5(Struct_1(var_0.a.a), func_5(Struct_1(var_0.a.a), Struct_2(Struct_1(var_0.a.a), true, 56569u), Struct_4(vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, 1i), Struct_3(vec4<f32>(1000f, 542f, -582f, 497f), var_0.a)), Struct_2(var_0.a, var_1.x, 7789u)), Struct_4(vec4<i32>(-1i, 38725i, u_input.b.x, 1i), Struct_3(vec4<f32>(-541f, 916f, -776f, 1182f), var_0.a)), func_5(Struct_1(vec2<bool>(false, true)), Struct_2(Struct_1(vec2<bool>(false, false)), var_1.x, u_input.c.x), Struct_4(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -39311i), Struct_3(vec4<f32>(899f, 1809f, 893f, 296f), var_0.a)), Struct_2(Struct_1(vec2<bool>(var_1.x, false)), true, var_0.c))))));
    var var_2 = u_input.c.x;
    let var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(437f, 331f, -952f, -587f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1092f, -558f, -1956f, 311f)) * vec4<f32>(-1990f, 1000f, 406f, 1450f)), true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1613f, _wgslsmith_f_op_f32(-221f - 1091f), -301f, _wgslsmith_f_op_f32(-1000f + 1685f))))), var_0.a);
    let var_4 = _wgslsmith_mult_i32(u_input.b.x, countOneBits(u_input.b.x));
    let var_5 = var_0.c;
    let var_6 = _wgslsmith_div_f32(197f, -1000f);
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(var_0.c, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 315u), select(vec2<u32>(var_0.c, 50446u), u_input.d, var_1.x))), vec4<f32>(var_6, _wgslsmith_f_op_f32(var_6 + var_6), var_6, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_6) - _wgslsmith_f_op_f32(select(-535f, -161f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1232f, var_3.a.x))))), u_input.d, ~var_4);
}

