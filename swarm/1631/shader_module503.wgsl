struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec3<i32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.x + _wgslsmith_div_f32(-259f, 531f)));
    var var_1 = 1f;
    var var_2 = Struct_1(vec2<i32>(abs(~(-43115i)) ^ firstTrailingBit(-7452i), reverseBits(~arg_1.a.x)), vec3<f32>(_wgslsmith_f_op_f32(617f - 1000f), var_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.d.x + _wgslsmith_f_op_f32(abs(arg_1.d.x))), arg_1.d.x)), arg_1.d.zyw, vec4<f32>(-522f, arg_1.d.x, _wgslsmith_f_op_f32(select(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.x)), select(arg_2.x <= 68413i, true, true))), var_0));
    let var_3 = !vec2<bool>(all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), -1126f > var_2.b.x)), select(true, any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false))), all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)))));
    let var_4 = u_input.b.x;
    return arg_1.a.x;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_mod_vec2_i32(u_input.b.xy, vec2<i32>(func_3(u_input.e.yx, Struct_1(vec2<i32>(9063i, 0i), vec3<f32>(-1431f, -792f, 1115f), vec3<f32>(261f, -352f, 280f), vec4<f32>(1791f, 909f, -1974f, 946f)), _wgslsmith_div_vec3_i32(u_input.b.yzw, vec3<i32>(2147483647i, u_input.b.x, -21673i))), 0i)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -740f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(643f)))), 1012f), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(587f * 2890f)))), -746f, -1075f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -145f), -1338f, _wgslsmith_f_op_f32(600f - 468f), _wgslsmith_f_op_f32(167f - -740f))), true)));
    var var_1 = Struct_1(~var_0.a, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1909f, _wgslsmith_div_f32(var_0.c.x, var_0.b.x), _wgslsmith_div_f32(var_0.c.x, 1454f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-262f, var_0.d.x, 572f)))))), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-1092f, var_0.d.x, false)), -1485f, false)), -991f)), var_0.d.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) * 1000f)))), _wgslsmith_f_op_vec4_f32(-var_0.d));
    let var_2 = min(select(u_input.b.zxx >> (_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(u_input.e.x, 4294967295u, 21390u)), u_input.c, vec3<u32>(u_input.a.x, u_input.a.x, u_input.d.x) >> (vec3<u32>(4294967295u, u_input.c.x, u_input.d.x) % vec3<u32>(32u))) % vec3<u32>(32u)), abs(-(~vec3<i32>(0i, var_1.a.x, -4293i))), any(vec2<bool>(true, true))), u_input.b.zzw);
    var var_3 = ~_wgslsmith_mod_u32(~1u, (u_input.a.x ^ select(20555u, u_input.d.x, true)) >> (~firstLeadingBit(1u) % 32u));
    var var_4 = Struct_1(max(~vec2<i32>(i32(-1i) * -38589i, -20510i), vec2<i32>(func_3(u_input.a, var_0, select(vec3<i32>(var_1.a.x, var_2.x, 1i), var_2, vec3<bool>(true, false, false))), _wgslsmith_dot_vec2_i32(firstTrailingBit(var_0.a), vec2<i32>(13023i, 0i)))), _wgslsmith_div_vec3_f32(var_1.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1239f, var_1.d.x, 1321f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.x, -765f, -406f) * var_0.b)) * _wgslsmith_div_vec3_f32(vec3<f32>(1000f, var_1.b.x, 367f), _wgslsmith_f_op_vec3_f32(min(var_1.c, vec3<f32>(-2419f, var_1.c.x, -1298f))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.c), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.d.x, var_1.d.x, 654f))))))), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.d.x))), _wgslsmith_f_op_f32(1000f - -1107f), var_0.c.x, -841f));
    return Struct_1(vec2<i32>(var_1.a.x, 7602i), var_4.b, vec3<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-479f)), _wgslsmith_f_op_f32(ceil(var_0.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-171f, -1499f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-2428f + 1770f), _wgslsmith_f_op_f32(var_4.c.x - var_0.c.x), _wgslsmith_f_op_f32(ceil(var_0.b.x)), var_4.b.x) + var_1.d) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-var_1.d)))));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_add_vec2_i32(-arg_0.a, arg_0.a), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.b + arg_0.d.zzw)))))), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(1419f)), _wgslsmith_f_op_f32(floor(-1358f)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1263f, 1f)), _wgslsmith_div_f32(func_2().c.x, 1326f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.d + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(arg_0.d * vec4<f32>(1032f, arg_0.b.x, -396f, arg_0.c.x))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(674f, -1654f, arg_0.c.x, 274f) - _wgslsmith_f_op_vec4_f32(sign(arg_0.d))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(680f, 245f, -778f, 1000f)))))));
    let var_1 = _wgslsmith_div_i32(2147483647i, _wgslsmith_add_i32(firstTrailingBit(2147483647i), _wgslsmith_div_i32(select(-18021i, var_0.a.x, false), 1015i))) > (-_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.a.x, var_0.a.x, u_input.b.x), vec3<i32>(var_0.a.x, arg_0.a.x, var_0.a.x)), ~vec3<i32>(var_0.a.x, 13247i, arg_0.a.x)) << (_wgslsmith_dot_vec4_u32(u_input.d, u_input.d) % 32u));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.b.x, 1461f, var_0.d.x, -178f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_0.d, var_0.d))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(392f, -103f, arg_0.c.x, -386f)))))));
    let var_3 = arg_0;
    var var_4 = var_3;
    return Struct_1(firstTrailingBit(var_4.a ^ vec2<i32>(0i | arg_0.a.x, _wgslsmith_mult_i32(u_input.b.x, u_input.b.x))), vec3<f32>(-415f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(-237f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_3.b.x)) * 250f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_3.d.yyx), var_3.c, vec3<bool>(true, all(vec2<bool>(false, false)), any(vec3<bool>(false, false, true)))))), vec4<f32>(_wgslsmith_f_op_f32(var_2.x - arg_0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_3.c.x * 638f)))), arg_0.b.x, var_4.d.x));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: vec3<u32>) -> Struct_1 {
    var var_0 = Struct_1(arg_1.zx, vec3<f32>(-382f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1068f * -903f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-888f, 1809f)))))), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1289f * 404f)))), _wgslsmith_f_op_f32(627f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(511f, 208f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-820f * 1137f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)));
    var_0 = func_4(func_2());
    var var_1 = func_4(func_4(func_4(Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(-15488i, var_0.a.x), vec2<i32>(var_0.a.x, -5208i)), _wgslsmith_f_op_vec3_f32(min(var_0.b, vec3<f32>(var_0.c.x, -232f, var_0.d.x))), var_0.d.www, var_0.d)))).a.x;
    var var_2 = vec2<u32>(~20531u, 40248u);
    var var_3 = vec4<i32>(-9199i, -1i, var_0.a.x, -6079i);
    return Struct_1(vec2<i32>(-15263i, func_4(func_2()).a.x) ^ -vec2<i32>(select(1i, u_input.b.x, false), min(2147483647i, u_input.b.x)), vec3<f32>(-585f, _wgslsmith_div_f32(var_0.c.x, var_0.c.x), var_0.c.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(var_0.c.x * var_0.b.x), _wgslsmith_f_op_f32(-2059f - var_0.c.x), _wgslsmith_f_op_f32(min(var_0.b.x, var_0.b.x))), func_2().c)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(sign(var_0.d.x)), -1226f))), func_4(Struct_1(var_3.yy, vec3<f32>(-471f, _wgslsmith_f_op_f32(var_0.d.x - -2014f), _wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(var_0.c)), var_0.c)), var_0.d)).d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(u_input.c.xx, vec3<i32>(~u_input.b.x, 1i, _wgslsmith_dot_vec3_i32(~abs(vec3<i32>(u_input.b.x, 2147483647i, u_input.b.x)), _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, 23808i, u_input.b.x), vec3<i32>(-7770i, u_input.b.x, u_input.b.x)), select(vec3<i32>(19769i, u_input.b.x, u_input.b.x), vec3<i32>(0i, u_input.b.x, 2147483647i), vec3<bool>(true, true, true))))), u_input.c);
    let var_1 = var_0.c.x;
    var var_2 = ~(~u_input.d);
    var_2 = select(reverseBits(~select(vec4<u32>(var_2.x, u_input.c.x, u_input.a.x, var_2.x), u_input.d, false)) | ~u_input.d, vec4<u32>(~82505u, 1u, 4294967295u, abs(abs(4294967295u))), any(vec3<bool>(true, true, true)));
    var_0 = func_2();
    var var_3 = 23333u;
    var var_4 = vec3<i32>(var_0.a.x, -(~(-var_0.a.x)) | _wgslsmith_mult_i32(-1i, -11976i), -5142i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1509f, var_0.b.x, 939f, var_0.d.x) * var_0.d) - vec4<f32>(var_0.b.x, var_0.d.x, -142f, -676f)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(var_0.d)), vec4<f32>(var_0.b.x, 2133f, var_0.c.x, var_0.d.x), select(false, true, false))))), vec4<f32>(_wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(trunc(var_0.d.x))))), var_0.d.x, 484f));
}

