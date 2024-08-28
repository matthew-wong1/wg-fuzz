struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_4 {
    a: f32,
    b: vec3<bool>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec3<i32>) -> u32 {
    let var_0 = ~select(vec3<i32>(~(~arg_0.x), 13841i, countOneBits(-20809i)), abs(~arg_0 & arg_0), false);
    var var_1 = arg_0.yx;
    var var_2 = select(select(vec4<bool>(true, false, true, any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)))), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, all(vec2<bool>(true, true))), vec4<bool>(any(vec4<bool>(true, true, false, true)), all(vec3<bool>(false, false, true)), false, all(vec4<bool>(true, true, false, false)))), vec4<bool>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, 1i, var_1.x, var_1.x), vec4<i32>(var_0.x, 1263i, var_0.x, -20826i)) < _wgslsmith_clamp_i32(var_0.x, arg_0.x, 1i), false, true, true)), vec4<bool>(true, true, true, true), true);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1342f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(210f + 472f) - 1f))));
    var var_4 = Struct_3(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-149f + 451f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-195f + -497f), _wgslsmith_f_op_f32(select(-840f, 542f, true))), _wgslsmith_f_op_f32(sign(171f)), _wgslsmith_f_op_f32(step(-430f, -176f)))), abs(vec4<i32>(-57364i, ~(-92984i), _wgslsmith_mult_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 50810i), vec2<i32>(arg_0.x, var_1.x))), ~firstLeadingBit(var_0.x))));
    return 71305u;
}

fn func_4(arg_0: u32) -> vec3<f32> {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1718f, 1449f)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1738f, -1583f, true))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1372f), _wgslsmith_div_f32(598f, -146f)))))), !select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), u_input.a.xz);
    var var_1 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(floor(var_0.a)), _wgslsmith_f_op_f32(f32(-1f) * -830f), -192f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(round(-164f))))), Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_0.a, var_0.a, -531f))))), vec3<i32>(-13354i, 0i, i32(-1i) * -28099i), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(559f, -154f, -1000f, -1185f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, 424f, 2027f, -568f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, 385f, -1900f, -846f), vec4<f32>(var_0.a, var_0.a, var_0.a, 866f))))))));
    let var_2 = all(select(!(!vec3<bool>(var_0.b.x, var_0.b.x, true)), var_0.b, all(!var_0.b) && any(!vec2<bool>(true, var_0.b.x))));
    var_1 = Struct_2(Struct_1(var_1.b.a), Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -347f, 209f, var_0.a) * vec4<f32>(-2883f, 1005f, var_0.a, -367f))))))), var_1.c, Struct_1(vec4<f32>(1337f, 1017f, 747f, _wgslsmith_div_f32(-1707f, 1749f))));
    let var_3 = 0u & firstTrailingBit(countOneBits(_wgslsmith_clamp_u32(~arg_0, var_0.c.x ^ 4953u, 4294967295u)));
    return vec3<f32>(_wgslsmith_div_f32(var_0.a, var_0.a), _wgslsmith_f_op_f32(-var_1.a.a.x), var_0.a);
}

fn func_5(arg_0: bool, arg_1: vec3<f32>, arg_2: bool) -> bool {
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-619f * 665f), _wgslsmith_f_op_f32(arg_1.x + -877f), _wgslsmith_f_op_f32(floor(1818f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, 946f, 275f))))))), _wgslsmith_div_vec4_i32(select(vec4<i32>(-2147483647i, -43362i, -13068i, -27450i), vec4<i32>(-11070i, -29785i, -7845i, 2147483647i), vec4<bool>(false, arg_0, arg_2, arg_2)), vec4<i32>(1i, 1i, 1i, 1i)) >> (~(~(~vec4<u32>(82364u, 5539u, u_input.a.x, u_input.a.x))) % vec4<u32>(32u)));
    var var_1 = _wgslsmith_div_vec4_i32(vec4<i32>(countOneBits(firstTrailingBit(-2147483647i)), -4211i, 1i, abs(_wgslsmith_clamp_i32(1i, var_0.b.x, -8401i) | -1i)), vec4<i32>(abs(1i), _wgslsmith_dot_vec2_i32(var_0.b.xz, var_0.b.zx), _wgslsmith_mult_i32(select(1i, ~(-1i), true), 1i), var_0.b.x));
    var var_2 = vec3<bool>(arg_2, !(-33962i <= _wgslsmith_sub_i32(var_0.b.x | var_1.x, -2147483647i)), false);
    var var_3 = !var_2.x;
    let var_4 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-953f, 1561f, arg_1.x, arg_1.x), var_0.a.a)))), var_0.b);
    return false | !arg_2;
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = func_5(false, _wgslsmith_f_op_vec3_f32(func_4(firstLeadingBit(~func_3(vec3<i32>(0i, 0i, 0i))))), false);
    var_0 = !select(false, all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false)), true)), true);
    var_0 = select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - 453f)))) > _wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.x))), any(vec2<bool>(true, false)))), !(all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))) && select(true, false, true)), (arg_0.x < arg_0.x) || true);
    var_0 = true;
    let var_1 = u_input.a.x;
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, 345f, -627f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, -555f, arg_0.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-319f, arg_0.x, -145f, arg_0.x) + vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))))));
}

fn func_6(arg_0: Struct_3, arg_1: Struct_4) -> bool {
    let var_0 = arg_0.b.wz;
    let var_1 = arg_0.b.yyx & _wgslsmith_sub_vec3_i32(select(vec3<i32>(1i, 1i, 1i) << (abs(vec3<u32>(arg_1.c.x, arg_1.c.x, u_input.a.x)) % vec3<u32>(32u)), -vec3<i32>(var_0.x, arg_0.b.x, -2147483647i), vec3<bool>(true, !arg_1.b.x, true)), max(-vec3<i32>(var_0.x, 1106i, arg_0.b.x), _wgslsmith_div_vec3_i32(-arg_0.b.wyy, select(vec3<i32>(-15270i, arg_0.b.x, 2147483647i), vec3<i32>(1i, -1i, arg_0.b.x), false))));
    var var_2 = arg_0;
    let var_3 = Struct_3(var_2.a, reverseBits(-vec4<i32>(-var_2.b.x, var_1.x ^ 0i, var_1.x, _wgslsmith_add_i32(2147483647i, var_1.x))));
    return true;
}

fn func_1(arg_0: Struct_4, arg_1: i32) -> Struct_1 {
    var var_0 = func_6(Struct_3(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-133f, arg_0.a, 715f)))), ~_wgslsmith_mult_vec4_i32(~vec4<i32>(0i, arg_1, arg_1, arg_1), ~vec4<i32>(arg_1, 1i, arg_1, arg_1))), arg_0);
    var var_1 = -32203i;
    let var_2 = arg_0.b.x;
    var var_3 = -1784f;
    var var_4 = func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.a, arg_0.a, arg_0.a))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.a, 896f, -441f), vec3<f32>(arg_0.a, 134f, -564f), true))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.a, -125f, arg_0.a))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1703f, -1710f, -1378f))) + vec3<f32>(arg_0.a, _wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(-arg_0.a)))));
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a), arg_0.a, _wgslsmith_f_op_vec3_f32(func_4(arg_0.c.x)).x, -480f));
}

fn func_7(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_2) -> Struct_2 {
    var var_0 = arg_2.a.a.zy;
    let var_1 = arg_2.a;
    var_0 = vec2<f32>(300f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + -262f) * -199f))) - _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(410f))))));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1287f, 292f, var_1.a.x, var_0.x)))))))), func_1(Struct_4(_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_mod_u32(u_input.a.x, 5715u))).x, !(!vec3<bool>(false, arg_0, arg_0)), u_input.a.xx), arg_1.x), arg_2.c, arg_2.d);
    let var_3 = Struct_2(func_2(var_1.a.yxz), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, 324f, 676f, 295f) - vec4<f32>(var_2.b.a.x, -1179f, var_0.x, var_0.x)))), ~vec3<i32>(-_wgslsmith_mod_i32(0i, 12043i), _wgslsmith_add_i32(arg_2.c.x, -11858i), 2147483647i), func_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-516f, arg_2.d.a.x, -1000f)) - var_1.a.wwy), arg_2.a.a.xyz))));
    return Struct_2(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(arg_2.b.a.wwz)) * arg_2.d.a.wyy))), func_1(Struct_4(-1340f, !vec3<bool>(arg_0, arg_0, arg_0), u_input.a.xz), ~_wgslsmith_mult_i32(firstTrailingBit(-2147483647i), select(arg_2.c.x, -14865i, true))), select(arg_1 & max(var_3.c, var_3.c >> (vec3<u32>(u_input.a.x, u_input.a.x, 36423u) % vec3<u32>(32u))), var_3.c, any(vec2<bool>(all(vec3<bool>(arg_0, true, true)), true))), var_3.b);
}

fn func_8(arg_0: Struct_2, arg_1: Struct_3) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(arg_0.a.a + arg_0.b.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(163f, -327f, -817f, arg_0.d.a.x)))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(171f, -208f, -2474f, 441f), arg_0.d.a) - arg_0.b.a)))));
    var var_1 = select(false, !(!any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false)))), true);
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1468f), -759f, 461f, _wgslsmith_f_op_f32(abs(297f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.a.x, arg_0.a.a.x, arg_1.a.a.x, 337f))), arg_1.a.a)));
    var var_3 = vec2<i32>(_wgslsmith_add_i32(arg_0.c.x, i32(-1i) * -2147483647i), arg_0.c.x);
    let var_4 = select(vec3<bool>(true, true, true), vec3<bool>(func_6(Struct_3(arg_0.a, arg_1.b), Struct_4(594f, vec3<bool>(true, true, true), _wgslsmith_clamp_vec2_u32(vec2<u32>(1039u, u_input.a.x), u_input.a.yy, u_input.a.xx))), all(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false)), true), _wgslsmith_mod_u32(u_input.a.x >> (2459u % 32u), select(u_input.a.x >> (67124u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 28420u), vec4<u32>(u_input.a.x, 4294967295u, 0u, 1u)), false)) >= abs(0u));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.a.x, -1290f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(var_0.ww, vec2<f32>(var_0.x, arg_0.b.a.x)), _wgslsmith_f_op_vec2_f32(-var_0.xz)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-arg_1.a.a.zz))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-375f, _wgslsmith_f_op_f32(f32(-1f) * -1170f)))));
}

fn func_9(arg_0: vec2<f32>, arg_1: Struct_3) -> Struct_2 {
    var var_0 = Struct_1(vec4<f32>(-500f, arg_0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.a.a.x + arg_0.x))))), _wgslsmith_f_op_f32(floor(func_2(arg_1.a.a.zyy).a.x))));
    let var_1 = ~u_input.a.x;
    let var_2 = firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(~(~var_1), ~u_input.a.x, 1u), u_input.a));
    let var_3 = false;
    var var_4 = arg_1.b.yw;
    return func_7(!func_5(var_3, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-481f, -1000f, var_0.a.x)))), false), firstTrailingBit(_wgslsmith_sub_vec3_i32(arg_1.b.yyz, arg_1.b.xxz)), Struct_2(Struct_1(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(636f, arg_0.x, var_0.a.x))).a), func_7(var_3, arg_1.b.zxy, Struct_2(func_7(true, arg_1.b.xwy, Struct_2(arg_1.a, Struct_1(vec4<f32>(1814f, arg_1.a.a.x, arg_1.a.a.x, 385f)), vec3<i32>(arg_1.b.x, -1i, 32053i), Struct_1(vec4<f32>(1000f, arg_1.a.a.x, var_0.a.x, -1000f)))).b, arg_1.a, arg_1.b.wyz, arg_1.a)).d, ~_wgslsmith_add_vec3_i32(~arg_1.b.ywx, -arg_1.b.yxw), func_1(Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -1600f), select(vec3<bool>(true, true, false), vec3<bool>(var_3, false, true), vec3<bool>(var_3, true, false)), vec2<u32>(1u, 1u)), 1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_9(_wgslsmith_f_op_vec2_f32(func_8(func_7(true, abs(-vec3<i32>(-45273i, 2147483647i, 26067i)), Struct_2(Struct_1(vec4<f32>(336f, 832f, 198f, -1916f)), Struct_1(vec4<f32>(931f, 440f, -854f, -154f)), min(vec3<i32>(-2147483647i, 8744i, 27375i), vec3<i32>(-39042i, -1i, -2147483647i)), func_1(Struct_4(274f, vec3<bool>(true, false, false), u_input.a.xx), -1i))), Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1570f, -594f, -116f, -1275f) - vec4<f32>(1000f, 1180f, -1035f, -670f))), vec4<i32>(1i, 1i, 1i, 1i)))), Struct_3(func_1(Struct_4(_wgslsmith_f_op_f32(-145f + -701f), vec3<bool>(true, true, true), ~u_input.a.xx), func_7(true, ~vec3<i32>(2147483647i, -9688i, -35029i), func_7(false, vec3<i32>(22373i, 10496i, 2147483647i), Struct_2(Struct_1(vec4<f32>(551f, -336f, -674f, 1195f)), Struct_1(vec4<f32>(1468f, -893f, 1499f, 368f)), vec3<i32>(1852i, 0i, -1i), Struct_1(vec4<f32>(-558f, -890f, -307f, 170f))))).c.x), vec4<i32>(1i, -6817i, func_7(true, ~vec3<i32>(1i, 1909i, -1i), func_7(true, vec3<i32>(2147483647i, -22304i, -1i), Struct_2(Struct_1(vec4<f32>(-920f, -687f, -713f, 1018f)), Struct_1(vec4<f32>(430f, -2852f, -650f, -542f)), vec3<i32>(1i, 2147483647i, 0i), Struct_1(vec4<f32>(-147f, -653f, -1192f, -486f))))).c.x, -(~1i))));
    var var_1 = 37498u > (_wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.a.yx), u_input.a.yx) ^ _wgslsmith_mod_u32(~89537u, 4294967295u));
    var var_2 = true;
    let var_3 = var_0.c.x > 61074i;
    var_1 = func_5(!var_3, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(var_0.b.a.x)), -253f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a.x))) + vec3<f32>(-1481f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_0.b.a.x)))), var_0.a.a.x)), !(!all(vec2<bool>(var_3, var_3))));
    var_1 = var_3;
    let var_4 = var_0.c.zy | select(vec2<i32>(select(-43875i, 1i, true), _wgslsmith_clamp_i32(var_0.c.x, var_0.c.x, var_0.c.x)) >> (~u_input.a.xx % vec2<u32>(32u)), vec2<i32>(_wgslsmith_clamp_i32(~var_0.c.x, ~(-31419i), var_0.c.x), -var_0.c.x), select(select(select(vec2<bool>(var_3, var_3), vec2<bool>(true, true), false), vec2<bool>(var_3, true), !vec2<bool>(var_3, false)), vec2<bool>(!var_3, any(vec4<bool>(var_3, var_3, var_3, var_3))), false));
    let x = u_input.a;
    s_output = StorageBuffer(-6366i, _wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_4(49334u)).x, var_0.b.a.x), _wgslsmith_mult_vec2_u32(~u_input.a.zz, min(select(u_input.a.xx, vec2<u32>(u_input.a.x, 54096u), var_3), u_input.a.yz) | vec2<u32>(u_input.a.x, u_input.a.x | 13960u)), u_input.a.x);
}

