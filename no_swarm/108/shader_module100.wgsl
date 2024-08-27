struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_2) -> vec3<u32> {
    var var_0 = Struct_3(arg_2.c, ~vec4<i32>(~(-1i), select(_wgslsmith_div_i32(-52852i, u_input.b), -21085i, all(arg_2.c.a.xz)), 24429i, _wgslsmith_mult_i32(0i, 6070i)), Struct_2(vec2<f32>(arg_2.a.x, _wgslsmith_f_op_f32(ceil(arg_1))), !(_wgslsmith_f_op_f32(-arg_2.d.x) != _wgslsmith_f_op_f32(select(-2651f, -507f, true))), arg_2.c, arg_2.d));
    var var_1 = var_0.c.d;
    var_0 = Struct_3(var_0.c.c, countOneBits(~_wgslsmith_sub_vec4_i32(var_0.b ^ var_0.b, vec4<i32>(34060i, var_0.b.x, 2147483647i, u_input.b))), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2.d.x))), _wgslsmith_div_f32(-2135f, -544f)), select(any(!var_0.a.a), true == any(arg_0), !arg_0.x), Struct_1(select(vec4<bool>(true, true, false, false), select(vec4<bool>(false, false, true, true), arg_0, arg_2.b), false), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(1000f)), -2252f)), _wgslsmith_f_op_f32(var_0.a.c * -353f)), _wgslsmith_f_op_vec3_f32(-arg_2.d)));
    let var_2 = var_0.c;
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1809f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.x - var_2.d.x), _wgslsmith_f_op_f32(sign(arg_1)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2.d.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.c.d.x)))) + _wgslsmith_div_f32(var_0.c.d.x, var_2.d.x)), var_1.x, _wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1146f, _wgslsmith_f_op_f32(f32(-1f) * -840f))))));
    return firstLeadingBit(vec3<u32>(~0u, _wgslsmith_sub_u32(u_input.a, u_input.a), _wgslsmith_mod_u32(u_input.a, ~1u)));
}

fn func_2(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_2) -> Struct_2 {
    let var_0 = (vec3<i32>(-1i) * -(~select(arg_1, arg_1, arg_2.c.a.x))) ^ min(firstTrailingBit(vec3<i32>(arg_1.x, 1i, reverseBits(arg_1.x))), ~reverseBits(-vec3<i32>(1i, -38740i, 1i)));
    var var_1 = reverseBits(-(~(-var_0.x)));
    let var_2 = 707f;
    var_1 = 2147483647i;
    let var_3 = vec3<u32>(u_input.a, ~abs(firstTrailingBit(u_input.a)), 60312u) | (_wgslsmith_div_vec3_u32(~vec3<u32>(1u, 0u, u_input.a), ~select(vec3<u32>(u_input.a, u_input.a, 194u), vec3<u32>(0u, 26561u, 0u), vec3<bool>(false, arg_2.c.a.x, arg_2.b))) ^ func_3(vec4<bool>(var_0.x > u_input.b, !arg_2.b, arg_2.c.a.x, true), arg_2.c.b, arg_2));
    return arg_2;
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: vec4<i32>) -> f32 {
    var var_0 = arg_1.d.zy;
    var_0 = arg_1.a;
    var_0 = arg_1.d.zz;
    var var_1 = func_2(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.x, arg_0)) + _wgslsmith_f_op_f32(arg_0 - 526f)), 1000f), arg_1.c.b, all(arg_1.c.a))), arg_2.wxw, arg_1);
    let var_2 = arg_1;
    return 475f;
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = _wgslsmith_mult_vec2_u32(countOneBits(~(~vec2<u32>(16949u, 0u) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)))), (vec2<u32>(u_input.a, ~u_input.a) | vec2<u32>(0u, ~0u)) ^ vec2<u32>(u_input.a, ~4294967295u));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(415f, -1930f)), _wgslsmith_f_op_f32(f32(-1f) * -1713f), _wgslsmith_f_op_f32(func_4(-526f, func_2(835f, vec3<i32>(-17455i, arg_0, u_input.b), Struct_2(vec2<f32>(1100f, 277f), false, Struct_1(vec4<bool>(true, true, true, true), 804f, -1119f), vec3<f32>(-1803f, 916f, -820f))), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, u_input.b, 2147483647i, u_input.b), vec4<i32>(-61506i, arg_0, -68527i, arg_0)))))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(782f)) + 540f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(997f, Struct_2(vec2<f32>(-1074f, 1589f), false, Struct_1(vec4<bool>(false, true, false, true), -214f, var_1.x), vec3<f32>(var_1.x, var_1.x, -1192f)), vec4<i32>(arg_0, u_input.b, -1i, u_input.b)))) + _wgslsmith_f_op_f32(-var_1.x))), var_1.x, -601f);
    var var_3 = Struct_2(_wgslsmith_div_vec2_f32(var_1.ww, _wgslsmith_f_op_vec2_f32(-var_2.zz)), all(vec2<bool>(true, true)), Struct_1(vec4<bool>(true, true, _wgslsmith_f_op_f32(f32(-1f) * -1118f) <= _wgslsmith_f_op_f32(select(var_2.x, var_1.x, false)), true), _wgslsmith_f_op_f32(-var_1.x), var_1.x), var_2.wwz);
    let var_4 = vec3<u32>(~func_3(!vec4<bool>(false, true, var_3.b, var_3.b), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-101f)), _wgslsmith_f_op_f32(-var_3.d.x))), func_2(_wgslsmith_f_op_f32(f32(-1f) * -1141f), vec3<i32>(-84100i, arg_0, arg_0) >> (vec3<u32>(0u, var_0.x, 4294967295u) % vec3<u32>(32u)), Struct_2(vec2<f32>(var_2.x, -887f), var_3.c.a.x, var_3.c, vec3<f32>(var_2.x, var_3.d.x, var_3.d.x)))).x, var_0.x, 29225u);
    return var_3.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec3<i32>(u_input.b, -52835i, i32(-1i) * -_wgslsmith_mult_i32(u_input.b, u_input.b));
    var var_1 = Struct_3(func_1(_wgslsmith_dot_vec4_i32(~vec4<i32>(var_0.x, -32029i, u_input.b, var_0.x), (vec4<i32>(u_input.b, 0i, -1i, var_0.x) | vec4<i32>(-2147483647i, u_input.b, -2147483647i, var_0.x)) ^ select(vec4<i32>(u_input.b, var_0.x, 36634i, 16647i), vec4<i32>(u_input.b, var_0.x, var_0.x, var_0.x), vec4<bool>(true, true, true, false)))), _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(10604i, 18631i, 59518i, u_input.b)), ~vec4<i32>(u_input.b, 7838i, u_input.b, u_input.b), countOneBits(vec4<i32>(0i, -1256i, 2147483647i, 52299i))), vec4<i32>(_wgslsmith_div_i32(var_0.x, 1i), u_input.b, var_0.x & 2147483647i, u_input.b)), ~(~vec4<i32>(-1i, 29209i, u_input.b, 17084i)), _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, 0i, u_input.b, 2147483647i), vec4<i32>(-2147483647i, var_0.x, u_input.b, var_0.x) >> (vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a) % vec4<u32>(32u))), min(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, var_0.x, -1i, 0i), vec4<i32>(u_input.b, 40522i, 2147483647i, -47280i)), abs(vec4<i32>(var_0.x, var_0.x, u_input.b, var_0.x))))), Struct_2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, _wgslsmith_f_op_f32(select(480f, -1678f, true))))), any(vec3<bool>(false, true, true)), Struct_1(vec4<bool>(func_2(265f, vec3<i32>(u_input.b, var_0.x, var_0.x), Struct_2(vec2<f32>(502f, -1000f), false, Struct_1(vec4<bool>(false, true, false, false), 684f, -505f), vec3<f32>(-1000f, -519f, 525f))).c.a.x, false, true, u_input.b > var_0.x), 361f, -859f), vec3<f32>(439f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(366f * -292f) + _wgslsmith_f_op_f32(342f - 2988f)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(792f, -250f))))));
    let var_2 = ~_wgslsmith_dot_vec2_i32(var_1.b.ww, _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(min(var_0.xx, vec2<i32>(var_1.b.x, var_1.b.x)), _wgslsmith_div_vec2_i32(var_0.zy, vec2<i32>(-1i, u_input.b)), vec2<i32>(u_input.b, var_1.b.x) & vec2<i32>(-86180i, var_0.x)), firstTrailingBit(-vec2<i32>(u_input.b, -18016i))));
    var_1 = Struct_3(Struct_1(select(func_1(_wgslsmith_mod_i32(23658i, 37579i)).a, func_2(-395f, _wgslsmith_mod_vec3_i32(var_1.b.zxx, var_1.b.zxz), Struct_2(vec2<f32>(-693f, 721f), false, var_1.c.c, vec3<f32>(var_1.c.d.x, var_1.a.c, 766f))).c.a, func_2(791f, vec3<i32>(1i, var_1.b.x, var_2) >> (vec3<u32>(4294967295u, u_input.a, u_input.a) % vec3<u32>(32u)), func_2(1506f, vec3<i32>(56594i, var_2, 3100i), var_1.c)).c.a.x), _wgslsmith_f_op_f32(-331f + -1086f), _wgslsmith_f_op_f32(-func_1(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 2147483647i, u_input.b), var_1.b.wzz)).b)), vec4<i32>(2147483647i, i32(-1i) * -2147483647i, -var_2, 69713i), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(784f + var_1.a.c)), -853f), !(!(!var_1.a.a.x)), var_1.a, var_1.c.d));
    let var_3 = _wgslsmith_f_op_vec3_f32(-var_1.c.d);
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-143f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.a.x * var_1.c.c.c)), _wgslsmith_f_op_f32(func_4(_wgslsmith_div_f32(-118f, var_1.a.c), var_1.c, ~var_1.b)))));
    let var_5 = Struct_1(var_1.a.a, var_1.a.b, var_3.x);
    var var_6 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-162f, var_3.x) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1207f, -1322f) + vec2<f32>(var_4.x, var_1.c.d.x)))))) - vec2<f32>(var_4.x, 1417f));
    var var_7 = Struct_3(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.x - _wgslsmith_f_op_f32(-var_4.x))), var_1.b.xyw, func_2(219f, -var_1.b.xxy, var_1.c)).c, vec4<i32>(1i, -1i, _wgslsmith_div_i32(reverseBits(_wgslsmith_mult_i32(15007i, 64593i)), -1i), 1i), var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_3)), _wgslsmith_f_op_vec3_f32(vec3<f32>(402f, var_4.x, 1000f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_6.x, -1000f) + vec3<f32>(var_1.c.d.x, var_4.x, var_6.x)))))), countOneBits(var_7.b.wy), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_6.x * 801f))), -203f, var_6.x));
}

