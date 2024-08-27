struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec4<f32>,
    c: vec3<i32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_1) -> Struct_3 {
    var var_0 = Struct_3(arg_0, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_div_f32(408f, 762f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.a.x)) * _wgslsmith_f_op_f32(-arg_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)), arg_0.a.x))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.x, 573f) * arg_0.a)))), 1i, all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), _wgslsmith_mult_u32(39933u, u_input.b.x)));
    return Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(exp2(arg_0.a)), 1i, true, ~4294967295u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1342f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-325f, 163f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(410f)) + _wgslsmith_f_op_f32(round(-1056f))))), var_0.c);
}

fn func_1(arg_0: f32) -> Struct_2 {
    let var_0 = func_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0))), -_wgslsmith_sub_i32(u_input.a, abs(2318i)), true, _wgslsmith_clamp_u32(max(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 0u), u_input.b.wx), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), u_input.b.ww)), _wgslsmith_sub_u32(u_input.d, 13400u), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.d, u_input.b.x), ~u_input.b.zx))));
    let var_1 = 764f;
    var var_2 = Struct_2(true, select(select(select(select(vec3<bool>(false, var_0.c.c, true), vec3<bool>(var_0.a.c, false, var_0.c.c), vec3<bool>(false, false, var_0.c.c)), !vec3<bool>(true, var_0.a.c, false), select(vec3<bool>(true, false, var_0.c.c), vec3<bool>(true, var_0.a.c, var_0.c.c), vec3<bool>(var_0.c.c, true, true))), !vec3<bool>(var_0.c.c, false, true), all(vec2<bool>(false, var_0.c.c))), vec3<bool>(true, var_0.a.d > ~52169u, var_0.a.c), (_wgslsmith_mult_u32(var_0.c.d, 12958u) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(33170u, u_input.d, 19592u, u_input.d), u_input.b)) >= (firstTrailingBit(23083u) | u_input.d)), true);
    var var_3 = arg_0 > var_1;
    let var_4 = Struct_2(true, var_2.b, !var_0.a.c & var_2.c);
    return var_4;
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_3) -> i32 {
    var var_0 = select(!vec2<bool>(true, arg_0.x), vec2<bool>(arg_1.a.c, !func_1(-1084f).a), !arg_1.c.c);
    let var_1 = u_input.b;
    var_0 = select(vec2<bool>(any(arg_0), arg_0.x), select(!(!vec2<bool>(true, arg_0.x)), vec2<bool>((arg_1.a.c | true) || any(vec4<bool>(var_0.x, true, false, false)), true), !vec2<bool>(!arg_1.c.c, arg_0.x | arg_1.a.c)), arg_1.c.c);
    var var_2 = func_1(func_2(arg_1.a).c.a.x);
    var_0 = select(vec2<bool>(all(vec4<bool>(true, true, false, true || var_2.c)), arg_1.a.c), !var_2.b.zz, !arg_0.yy);
    return -arg_1.c.b;
}

fn func_4(arg_0: i32, arg_1: vec3<bool>, arg_2: u32) -> Struct_2 {
    var var_0 = func_2(func_2(Struct_1(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1f, 1f))), ~(~arg_0), false, _wgslsmith_mod_u32(arg_2, abs(60294u)))).c).c;
    let var_1 = _wgslsmith_clamp_vec4_i32(abs(abs(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, arg_0, -34912i, arg_0), vec4<i32>(var_0.b, 12032i, u_input.c.x, arg_0)))), vec4<i32>(-var_0.b, arg_0, func_3(!func_1(var_0.a.x).b, Struct_3(Struct_1(var_0.a, 2147483647i, false, 0u), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, 1287f) * vec4<f32>(-672f, 110f, var_0.a.x, 1238f)), func_2(Struct_1(vec2<f32>(var_0.a.x, -745f), 1i, arg_1.x, arg_2)).a)), _wgslsmith_mod_i32(arg_0, ~_wgslsmith_add_i32(2075i, var_0.b))), _wgslsmith_mult_vec4_i32((_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, -1i, arg_0, 48120i), vec4<i32>(u_input.a, -2147483647i, var_0.b, 5583i), vec4<i32>(15600i, u_input.a, 41653i, 2147483647i)) & -vec4<i32>(arg_0, -49190i, 17896i, -37478i)) & abs(firstTrailingBit(vec4<i32>(u_input.c.x, -29313i, 8489i, -25032i))), vec4<i32>(abs(arg_0), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.b, arg_0, arg_0, -41985i), vec4<i32>(u_input.c.x, u_input.c.x, u_input.a, -21954i)), select(vec4<i32>(u_input.a, -52438i, -28710i, u_input.c.x), vec4<i32>(-2147483647i, arg_0, 2147483647i, 17552i), true)), u_input.c.x, var_0.b)));
    var var_2 = Struct_3(func_2(Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_0.a), vec2<f32>(var_0.a.x, var_0.a.x))), firstLeadingBit(u_input.c.x), arg_1.x & true, ~var_0.d >> (var_0.d % 32u))).c, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_div_f32(776f, _wgslsmith_f_op_f32(trunc(var_0.a.x))), 1362f, _wgslsmith_f_op_f32(-var_0.a.x)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, 1076f, var_0.a.x, -1286f)), vec4<f32>(var_0.a.x, -1217f, 457f, 1462f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(2282f, var_0.a.x, -783f, 1048f), vec4<f32>(-280f, var_0.a.x, var_0.a.x, var_0.a.x))))), Struct_1(_wgslsmith_f_op_vec2_f32(select(var_0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.a.x, 1297f), vec2<f32>(1802f, 1000f))) - _wgslsmith_f_op_vec2_f32(var_0.a + var_0.a)), all(select(vec4<bool>(var_0.c, true, var_0.c, arg_1.x), vec4<bool>(true, var_0.c, arg_1.x, false), arg_1.x)))), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(9345i, var_1.x, arg_0), vec3<i32>(var_0.b, -73229i, u_input.c.x)) & abs(var_1.xwy), reverseBits(~var_1.xzx)), all(!func_1(505f).b), 1u));
    let var_3 = Struct_4((false & (-699f <= var_0.a.x)) & var_2.c.c, vec4<f32>(var_2.c.a.x, -1719f, 494f, _wgslsmith_f_op_f32(exp2(var_0.a.x))), -(_wgslsmith_add_vec3_i32(~var_1.yxw, ~vec3<i32>(u_input.c.x, -22917i, -2147483647i)) >> (vec3<u32>(_wgslsmith_mult_u32(u_input.d, u_input.b.x), abs(arg_2), ~93496u) % vec3<u32>(32u))), var_1.x);
    var_2 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(step(1000f, var_3.b.x))))), 0i, true, ~1u), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(526f * 436f))), -901f), var_2.c.a.x, _wgslsmith_f_op_f32(-1036f + _wgslsmith_f_op_f32(var_2.a.a.x * var_3.b.x)), 1086f), var_2.c);
    return Struct_2(true, select(vec3<bool>(true, any(select(vec4<bool>(var_0.c, false, false, true), vec4<bool>(var_3.a, false, true, arg_1.x), vec4<bool>(var_2.c.c, var_3.a, true, var_0.c))), true), vec3<bool>(true, !func_2(Struct_1(var_3.b.wz, var_3.d, arg_1.x, var_0.d)).a.c, var_0.c), func_1(_wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(f32(-1f) * -1000f))).b), true);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: Struct_2) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(1274f, _wgslsmith_f_op_f32(1168f - -212f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.c.a.x)) * arg_1.b.x), arg_1.b.x) * _wgslsmith_f_op_vec3_f32(floor(arg_1.b.zzx))));
    var var_1 = ~arg_1.a.d;
    let var_2 = Struct_2(true, !arg_0.b, min(_wgslsmith_dot_vec3_u32(u_input.b.yzw, _wgslsmith_clamp_vec3_u32(arg_2, u_input.b.yzx, arg_2)), u_input.d ^ u_input.b.x) < ~_wgslsmith_mod_u32(min(arg_1.c.d, arg_1.a.d), arg_2.x));
    var_1 = arg_1.a.d;
    var_1 = 4155u;
    return Struct_4(true, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(arg_1.b, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, arg_1.a.a.x, -1000f, 158f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.b.x, 232f, -353f, var_0.x), arg_1.b)), false)))))), _wgslsmith_clamp_vec3_i32(select(vec3<i32>(-arg_1.a.b, abs(62051i), 1i), _wgslsmith_add_vec3_i32(vec3<i32>(-7081i, -80369i, -1i) & vec3<i32>(6013i, 50428i, arg_1.c.b), vec3<i32>(-1i, 1i, 68076i)), select(!arg_0.b, select(var_2.b, arg_0.b, vec3<bool>(arg_3.c, arg_3.c, arg_3.a)), !arg_0.b)), vec3<i32>(-1i, reverseBits(arg_1.a.b), arg_1.a.b), ~(-(~vec3<i32>(arg_1.c.b, arg_1.a.b, 9901i)))), arg_1.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(_wgslsmith_f_op_f32(1f * -1000f)), func_2(func_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1703f, -127f)), 1i, all(vec3<bool>(true, true, true)), _wgslsmith_dot_vec3_u32(u_input.b.yzz, vec3<u32>(u_input.d, u_input.b.x, u_input.d)))).a), ~(~(~(~u_input.b.wxw))), func_4(func_3(vec3<bool>(true, true, true), Struct_3(Struct_1(vec2<f32>(278f, 1137f), u_input.c.x, true, 0u), vec4<f32>(229f, -1926f, 1000f, 1098f), func_2(Struct_1(vec2<f32>(228f, 912f), 6452i, true, 51524u)).c)), !(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false))), 12821u & u_input.b.x));
    var_0 = func_5(Struct_2(func_1(-1034f).b.x, !vec3<bool>(var_0.a, true, false | var_0.a), all(select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, var_0.a, false, true), vec4<bool>(false, var_0.a, var_0.a, var_0.a), var_0.a), var_0.a || var_0.a))), Struct_3(func_2(Struct_1(var_0.b.wz, -4006i << (1u % 32u), func_4(-1i, vec3<bool>(var_0.a, var_0.a, false), 4294967295u).b.x, 77201u << (u_input.b.x % 32u))).a, var_0.b, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.b.x, var_0.b.x), vec2<f32>(1437f, 2466f)))), 34040i, func_2(Struct_1(vec2<f32>(var_0.b.x, -712f), var_0.d, var_0.a, 0u)).a.c, u_input.b.x)), u_input.b.xww << (max(vec3<u32>(countOneBits(u_input.d), u_input.b.x << (0u % 32u), 1u), vec3<u32>(_wgslsmith_mult_u32(u_input.d, u_input.b.x), ~1u, u_input.b.x)) % vec3<u32>(32u)), func_1(_wgslsmith_f_op_f32(abs(func_5(Struct_2(true, vec3<bool>(false, var_0.a, true), true), func_2(Struct_1(var_0.b.zy, 2147483647i, var_0.a, 4294967295u)), u_input.b.zwx, Struct_2(var_0.a, vec3<bool>(var_0.a, true, var_0.a), var_0.a)).b.x))));
    var_0 = func_5(Struct_2(true, !vec3<bool>(var_0.a, true, var_0.a), true), func_2(func_2(Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.b.yz), var_0.c.x, false, u_input.b.x)).c), vec3<u32>(~u_input.b.x, _wgslsmith_div_u32(4294967295u, _wgslsmith_add_u32(u_input.d, _wgslsmith_sub_u32(u_input.b.x, u_input.d))), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.d), u_input.b) & countOneBits(u_input.b), firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(14706u, 0u, u_input.b.x, 126556u), u_input.b)))), Struct_2(false, select(vec3<bool>(var_0.a, true, all(vec3<bool>(true, var_0.a, false))), select(!vec3<bool>(var_0.a, true, var_0.a), !vec3<bool>(var_0.a, var_0.a, var_0.a), func_1(639f).b), !(!vec3<bool>(var_0.a, true, var_0.a))), (min(u_input.d, 69u) << (u_input.b.x % 32u)) <= 5106u));
    var_0 = func_5(Struct_2(true, !vec3<bool>(true, all(vec3<bool>(false, true, var_0.a)), any(vec2<bool>(var_0.a, false))), false), Struct_3(func_2(func_2(Struct_1(vec2<f32>(var_0.b.x, 1390f), -17549i, false, u_input.b.x)).c).c, var_0.b, func_2(func_2(func_2(Struct_1(vec2<f32>(var_0.b.x, var_0.b.x), -4936i, false, 3164u)).a).c).a), u_input.b.yzw, func_4(i32(-1i) * -940i, !func_1(_wgslsmith_div_f32(-408f, -596f)).b, ~(~_wgslsmith_mult_u32(u_input.b.x, u_input.d))));
    var_0 = Struct_4(false, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(var_0.b)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b))), -var_0.c, u_input.c.x);
    let var_1 = ~u_input.b.xwy;
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(333f * var_0.b.x), _wgslsmith_f_op_f32(-var_0.b.x)) + vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(554f - 442f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_0.b.yz, var_0.b.yx)), vec2<f32>(_wgslsmith_f_op_f32(var_0.b.x + -974f), var_0.b.x)))), 55346i, any(select(vec3<bool>(var_0.a || true, 1u < u_input.b.x, any(vec3<bool>(var_0.a, var_0.a, var_0.a))), !select(vec3<bool>(var_0.a, false, true), vec3<bool>(true, var_0.a, var_0.a), var_0.a), select(func_1(653f).b, !vec3<bool>(true, var_0.a, false), true))), firstTrailingBit(1u));
    var_0 = Struct_4(!var_2.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.b) * var_0.b)) * vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1344f), _wgslsmith_div_f32(-259f, _wgslsmith_f_op_f32(min(-501f, var_2.a.x))), _wgslsmith_f_op_f32(var_2.a.x * _wgslsmith_f_op_f32(var_2.a.x - 1002f)))), _wgslsmith_mult_vec3_i32(vec3<i32>(var_2.b, _wgslsmith_clamp_i32(-1i >> (u_input.b.x % 32u), firstTrailingBit(var_2.b), -var_0.d), var_0.d), var_0.c | select(vec3<i32>(var_2.b, var_2.b, u_input.c.x), var_0.c, vec3<bool>(true, true, var_2.c))), ~_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(var_0.c.x, var_2.b, -28347i, 2758i)), max(vec4<i32>(u_input.c.x, -87i, 3622i, var_0.d) | vec4<i32>(u_input.a, var_0.c.x, -30157i, u_input.a), ~vec4<i32>(1i, -2147483647i, 0i, -32803i))));
    let x = u_input.a;
    s_output = StorageBuffer(~2147483647i, ~vec4<i32>(var_2.b, firstTrailingBit(u_input.a), u_input.c.x, 30838i) >> (u_input.b % vec4<u32>(32u)));
}

