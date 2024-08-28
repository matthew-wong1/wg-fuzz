struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_clamp_u32(u_input.d.x, _wgslsmith_sub_u32(u_input.d.x, u_input.a), 4794u << (u_input.d.x % 32u));
    let var_1 = true;
    var var_2 = select(vec4<bool>(var_1, all(!select(vec3<bool>(var_1, var_1, var_1), vec3<bool>(false, var_1, false), vec3<bool>(var_1, var_1, true))), true, var_1), vec4<bool>(false, true, !var_1, ((u_input.e.x >> (4658u % 32u)) == -u_input.e.x) || all(vec2<bool>(var_1, true))), select(vec4<bool>(all(select(vec3<bool>(true, false, false), vec3<bool>(var_1, true, var_1), vec3<bool>(var_1, var_1, var_1))), any(vec4<bool>(false, var_1, false, true)) & var_1, true || var_1, !all(vec3<bool>(false, var_1, true))), vec4<bool>(var_1, ~7425u <= select(1u, u_input.d.x, var_1), true || all(vec4<bool>(true, var_1, var_1, var_1)), !(!var_1)), true));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-254f * -489f))))) - -890f), _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(-u_input.e.x, ~(-4640i), ~8388i), 2147483647i, 14041i), u_input.e.wwx), vec3<i32>(i32(-1i) * -25930i, abs(-1i), -2147483647i), -(u_input.e.x << (firstTrailingBit(u_input.d.x) % 32u)) << (~1u % 32u), 26367u);
    var_2 = select(vec4<bool>(true, var_1, true, any(var_2.wzy)), vec4<bool>(any(vec4<bool>(var_2.x, false, !var_2.x, any(var_2.yx))), any(!select(vec4<bool>(var_1, false, var_1, false), vec4<bool>(true, var_2.x, var_2.x, var_1), vec4<bool>(true, var_2.x, var_1, false))), false, all(vec3<bool>(any(vec3<bool>(var_1, true, var_1)), var_1, all(var_2.zw)))), vec4<bool>(var_1, !(~4294967295u >= var_3.e), false, true));
    return -725f;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: i32, arg_3: f32) -> Struct_1 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_div_f32(arg_0.a, -523f));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.a, var_0.x, var_0.x), vec3<f32>(-632f, 657f, var_0.x))), vec3<f32>(arg_3, var_0.x, arg_3))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1280f, var_0.x, var_0.x)))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(arg_3, var_0.x, 277f), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_3, -1000f, var_0.x)))))))));
    let var_2 = abs(_wgslsmith_add_i32(_wgslsmith_sub_i32(18239i, select(select(arg_2, -1i, false), -41687i, any(vec2<bool>(false, false)))), _wgslsmith_add_i32(i32(-1i) * -arg_0.c.x, -1579i)));
    var var_3 = any(select(select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false), any(vec2<bool>(true, false))), !select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true), vec3<bool>(false, false, true), true), true | ((var_2 > -47171i) == true)));
    var_0 = _wgslsmith_f_op_vec2_f32(select(var_1.xx, var_1.yz, !vec2<bool>(all(vec3<bool>(false, true, true)) == true, any(vec4<bool>(true, true, true, true)))));
    return Struct_1(var_0.x, vec3<i32>(~(-2147483647i), -22596i, ~u_input.e.x) >> (firstLeadingBit(_wgslsmith_sub_vec3_u32(arg_1, reverseBits(arg_1))) % vec3<u32>(32u)), abs(firstLeadingBit(~vec3<i32>(-1i, 30614i, arg_0.b.x)) >> (_wgslsmith_add_vec3_u32(vec3<u32>(1u, 14689u, arg_1.x), reverseBits(arg_1)) % vec3<u32>(32u))), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(min(u_input.e.wwy, vec3<i32>(2147483647i, -24614i, -1835i)), arg_0.b), -(vec3<i32>(arg_2, u_input.e.x, -2147483647i) >> (vec3<u32>(26039u, 75406u, 0u) % vec3<u32>(32u)))), arg_0.b >> (select(arg_1, _wgslsmith_sub_vec3_u32(arg_1, vec3<u32>(arg_0.e, u_input.a, arg_0.e)), true) % vec3<u32>(32u))), min(reverseBits(_wgslsmith_dot_vec4_u32(select(vec4<u32>(74638u, 12420u, 15115u, 6037u), vec4<u32>(1u, arg_1.x, 44213u, u_input.a), vec4<bool>(false, false, true, false)), vec4<u32>(0u, arg_1.x, arg_0.e, arg_0.e))), ~abs(_wgslsmith_mod_u32(arg_0.e, 65602u))));
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = arg_1.a;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(abs(arg_1.a)), _wgslsmith_f_op_f32(select(-313f, 1f, false & (all(vec4<bool>(true, true, false, false)) || any(vec2<bool>(false, false))))), -734f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(171f - _wgslsmith_f_op_f32(-arg_1.a))));
    var_0 = var_1.x;
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(-arg_1.a), 582f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a, _wgslsmith_f_op_f32(floor(1462f)), -1000f, _wgslsmith_div_f32(arg_1.a, var_1.x)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-249f, arg_1.a, var_1.x, arg_1.a))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1624f, arg_1.a, 123f, -601f))))));
    let var_2 = arg_0;
    return arg_1;
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = func_4(u_input.e.x, func_2(Struct_1(_wgslsmith_f_op_f32(1f + -824f), -u_input.e.wzw, max(min(u_input.e.yzz, vec3<i32>(u_input.e.x, -2147483647i, 0i)), ~vec3<i32>(22743i, 5542i, 371i)), 2602i, ~reverseBits(1u)), vec3<u32>(11285u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 39523u, u_input.c, 40851u), vec4<u32>(u_input.d.x, 1u, 64885u, u_input.d.x)), _wgslsmith_dot_vec2_u32(select(u_input.b, u_input.d, true), ~vec2<u32>(67789u, 0u))), ~(~(u_input.e.x | u_input.e.x)), arg_0));
    let var_1 = Struct_1(arg_0, ~(~(vec3<i32>(-1i, var_0.b.x, -2147483647i) | u_input.e.yzw)), vec3<i32>(_wgslsmith_dot_vec2_i32(-firstTrailingBit(vec2<i32>(u_input.e.x, -27924i)), -u_input.e.yz << (u_input.b % vec2<u32>(32u))), _wgslsmith_sub_i32(var_0.b.x, ~countOneBits(u_input.e.x)), _wgslsmith_div_i32(func_2(Struct_1(var_0.a, var_0.b, var_0.b, -1i, var_0.e), ~vec3<u32>(6002u, 0u, var_0.e), 0i, _wgslsmith_f_op_f32(733f * -853f)).b.x, i32(-1i) * -1i)), i32(-1i) * -1i, 63707u);
    let var_2 = var_0;
    var var_3 = func_4(3775i, var_0);
    var_3 = func_4(-2147483647i, Struct_1(_wgslsmith_f_op_f32(select(-1111f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.a))), any(vec4<bool>(true, false, false, true)))), u_input.e.zyy, _wgslsmith_clamp_vec3_i32(u_input.e.wwy, vec3<i32>(-2147483647i, var_3.d | -2147483647i, 0i), vec3<i32>(~1i, reverseBits(5994i), abs(-1i))), -2147483647i, var_3.e << (~var_3.e % 32u)));
    return var_1;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec4<bool>) -> Struct_1 {
    let var_0 = Struct_1(935f, -vec3<i32>(~min(-9315i, 19985i), _wgslsmith_dot_vec3_i32(arg_0.b, func_1(-708f).b), min(~(-12098i), arg_1.x)), func_2(arg_0, vec3<u32>(~(u_input.c << (u_input.c % 32u)), ~func_2(arg_2, vec3<u32>(4294967295u, u_input.a, u_input.a), 27125i, arg_2.a).e, 5087u), -1i, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.a), 879f))).c, 104159i, _wgslsmith_sub_u32(arg_0.e, 28322u));
    var var_1 = func_2(Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3()))), ~reverseBits(~arg_0.c), _wgslsmith_div_vec3_i32(abs(-vec3<i32>(arg_0.c.x, var_0.c.x, 2147483647i)), arg_2.b), 0i, _wgslsmith_div_u32(select(var_0.e, 0u, arg_3.x), _wgslsmith_sub_u32(0u, select(1u, arg_2.e, arg_3.x)))), ~vec3<u32>(var_0.e, ~(~1u), func_4(min(u_input.e.x, u_input.e.x), arg_0).e), _wgslsmith_div_i32(countOneBits(-41686i << (u_input.c % 32u)) | 37208i, -11668i), 1201f);
    let var_2 = arg_3;
    let var_3 = func_2(func_4(_wgslsmith_dot_vec2_i32(var_0.c.yz, -func_1(1241f).c.yz), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.a, var_0.a)) - func_1(arg_2.a).a), vec3<i32>(i32(-1i) * -46340i, _wgslsmith_sub_i32(-51444i, 19015i), arg_1.x), -select(u_input.e.xxw, vec3<i32>(arg_0.d, arg_1.x, 55197i), vec3<bool>(true, false, arg_3.x)), ~arg_2.b.x, arg_0.e)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.e, var_0.e, var_1.e), ~vec3<u32>(arg_2.e, arg_0.e, 16358u)) | _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.e, 0u, 1u), vec3<u32>(var_1.e, 1424u, var_0.e)), vec3<u32>(u_input.c, var_0.e, arg_2.e)), ~(~vec3<u32>(arg_2.e, 4294967295u, var_0.e))), _wgslsmith_mult_i32(1i >> (_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 1u, 37104u, var_0.e), vec4<u32>(arg_0.e, 20789u, var_1.e, 5871u)), ~vec4<u32>(42880u, arg_0.e, 106409u, u_input.d.x)) % 32u), 1i), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.a))));
    var_1 = var_3;
    return Struct_1(_wgslsmith_f_op_f32(round(var_0.a)), vec3<i32>(arg_1.x, _wgslsmith_mod_i32(arg_2.c.x, _wgslsmith_mod_i32(_wgslsmith_add_i32(-503i, -21533i), countOneBits(48308i))), _wgslsmith_mult_i32(func_1(_wgslsmith_f_op_f32(f32(-1f) * -796f)).b.x, 1i << (1u % 32u))), ~u_input.e.zxz, _wgslsmith_div_i32(-(_wgslsmith_div_i32(1i, 18848i) >> (~4294967295u % 32u)), ~(~arg_2.d) << (117u % 32u)), u_input.b.x >> (~max(~arg_2.e, var_0.e & u_input.b.x) % 32u));
}

fn func_6(arg_0: bool, arg_1: i32, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    let var_0 = func_2(arg_2, vec3<u32>(abs(_wgslsmith_mult_u32(_wgslsmith_mult_u32(arg_2.e, 1u), 0u)), ~_wgslsmith_mult_u32(u_input.c, 0u << (arg_2.e % 32u)), u_input.b.x), countOneBits(22075i), arg_2.a);
    let var_1 = ~countOneBits(1u);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(294f, var_0.a, -204f, arg_2.a)) * _wgslsmith_div_vec4_f32(vec4<f32>(267f, arg_2.a, arg_2.a, arg_2.a), vec4<f32>(1046f, var_0.a, var_0.a, -694f))))));
    let var_3 = ~0i;
    let var_4 = var_2.x;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(!(any(vec2<bool>(true, true)) || true), ~29627i, func_5(func_1(1f), vec2<i32>(~_wgslsmith_div_i32(u_input.e.x, -1i), u_input.e.x), Struct_1(-693f, min(-u_input.e.yyz, ~u_input.e.wxz), vec3<i32>(firstLeadingBit(u_input.e.x), -1i, i32(-1i) * -23275i), -33953i, 1286u), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1555f), -1132f), _wgslsmith_add_vec3_u32(vec3<u32>(~(u_input.c >> (u_input.c % 32u)), 4294967295u, 38523u), ~abs(vec3<u32>(u_input.a, var_0.e, u_input.b.x))), min(0i, 1i), u_input.e.x, vec4<i32>(-39485i & ~var_0.b.x, ~(-func_5(var_0, var_0.c.zy, Struct_1(-361f, u_input.e.zzz, var_0.b, 0i, 1u), vec4<bool>(false, true, false, false)).b.x), ~_wgslsmith_mult_i32(-var_0.b.x, func_2(var_0, vec3<u32>(63055u, var_0.e, var_0.e), -11897i, 222f).c.x), _wgslsmith_clamp_i32(-1i, u_input.e.x, u_input.e.x)));
}

