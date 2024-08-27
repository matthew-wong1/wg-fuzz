struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: f32,
    d: f32,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct Struct_5 {
    a: bool,
    b: bool,
    c: f32,
    d: Struct_4,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, true);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>, arg_1: u32) -> f32 {
    global0 = vec3<bool>(select(global0.x || !all(global0.zz), global0.x, true), all(vec4<bool>(all(global0.zx), true, true, true)) | false, global0.x);
    let var_0 = Struct_5(!(global0.x && (true && (false | global0.x))), all(select(vec4<bool>(true, true, global0.x, global0.x), vec4<bool>(global0.x, false, !global0.x, true), select(vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(false, false, global0.x, global0.x), global0.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), Struct_4(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(max(1839f, -425f)), -278f, _wgslsmith_div_f32(1899f, 313f))))), vec3<bool>(!any(!vec2<bool>(false, global0.x)), select(false, all(vec4<bool>(global0.x, true, global0.x, global0.x)), select(global0.x, any(global0.yy), !global0.x)), all(!vec3<bool>(global0.x, true, true))));
    let var_1 = 0u;
    let var_2 = var_0.d;
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.a.x, -245f, var_0.c, var_0.c))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-266f, var_0.c, -1638f, var_0.d.a.x)))), select(var_0.e, !(!var_0.e), false)), var_0.d.a, -350f, -951f, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1311f, var_2.a.x, -324f, var_0.c))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-722f, var_0.c, 1136f, var_2.a.x) + vec4<f32>(var_2.a.x, -642f, var_0.d.a.x, var_0.d.a.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-728f, 348f, var_0.c, 1000f), vec4<f32>(-735f, -386f, var_0.d.a.x, -2121f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.x, var_0.d.a.x, var_0.c, var_2.a.x) * vec4<f32>(1894f, var_0.d.a.x, var_2.a.x, -1000f))), vec4<bool>(all(!vec3<bool>(var_0.b, global0.x, global0.x)), any(select(vec4<bool>(global0.x, var_0.b, global0.x, true), vec4<bool>(false, global0.x, true, global0.x), false)), !(1u > var_1), all(!var_0.e)))));
    return 1569f;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<f32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(func_3(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, 27293i, u_input.a, -17227i), vec4<i32>(-2147483647i, 2147483647i, 0i, -22434i))), ~u_input.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(arg_1.a.a.x))))))));
    var var_1 = arg_1.a.b.x;
    var var_2 = Struct_5((max(-1i, -5511i) & _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.b, -2147483647i), vec4<i32>(-16404i, 0i, u_input.b, -24542i)), 1i)) == _wgslsmith_mod_i32(u_input.b, -15020i), 99523u == ~countOneBits(u_input.c.x), -612f, Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.a.a.xyx - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.x, 341f, arg_2.x), arg_1.e.xwy))) + vec3<f32>(1661f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), 315f))), !(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, global0.x), vec3<bool>(arg_1.a.b.x, false, arg_0.b.x))));
    let var_3 = ~max(_wgslsmith_mult_vec3_u32(u_input.c.zwx, vec3<u32>(u_input.d, firstTrailingBit(u_input.c.x), u_input.d)), _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(select(vec3<u32>(0u, u_input.c.x, 25984u), vec3<u32>(u_input.c.x, u_input.d, 106144u), false), vec3<u32>(u_input.c.x, 4294967295u, 4294967295u)), vec3<u32>(max(4294967295u, u_input.d), 4294967295u, 0u & u_input.d)));
    let var_4 = Struct_4(_wgslsmith_div_vec3_f32(arg_1.e.wxw, arg_0.a.wxz));
    return Struct_3(Struct_2(arg_1.a, vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2.x))), var_4.a.x, -721f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(592f))) + arg_0.a.x), 801f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.a * arg_0.a)))), -_wgslsmith_div_vec4_i32(reverseBits(firstLeadingBit(vec4<i32>(-2147483647i, -29067i, u_input.b, -1i))), vec4<i32>(u_input.a, -1562i, firstLeadingBit(-17363i), ~u_input.b)), arg_0, abs(-vec4<i32>(u_input.a, u_input.a, 14056i >> (0u % 32u), -61328i)));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: Struct_3) -> Struct_1 {
    let var_0 = reverseBits(_wgslsmith_dot_vec3_u32(arg_0.wzy, u_input.c.www));
    global0 = select(!(!vec3<bool>(func_2(Struct_1(arg_2.c.a, arg_2.a.a.b), Struct_2(Struct_1(vec4<f32>(-1274f, 1275f, -251f, arg_2.a.d), vec3<bool>(true, true, false)), vec3<f32>(arg_1.a.x, -270f, arg_1.a.x), arg_1.a.x, -121f, vec4<f32>(450f, -980f, arg_2.c.a.x, arg_2.a.d)), arg_2.a.e.wyx).a.a.b.x, true, true)), !(!vec3<bool>(!global0.x, true, all(vec2<bool>(global0.x, arg_2.a.a.b.x)))), arg_2.c.b);
    let var_1 = vec4<i32>(-1i, -68930i, _wgslsmith_sub_i32(func_2(func_2(Struct_1(arg_2.a.a.a, vec3<bool>(global0.x, global0.x, false)), Struct_2(arg_2.a.a, vec3<f32>(921f, 193f, arg_1.a.x), arg_2.c.a.x, arg_2.a.e.x, arg_2.a.a.a), _wgslsmith_f_op_vec3_f32(-arg_2.a.a.a.ywz)).c, Struct_2(Struct_1(arg_2.c.a, arg_2.c.b), vec3<f32>(-185f, arg_2.a.d, arg_1.a.x), _wgslsmith_f_op_f32(1000f * arg_1.a.x), arg_2.c.a.x, arg_2.a.a.a), _wgslsmith_f_op_vec3_f32(abs(arg_2.a.b))).b.x, _wgslsmith_dot_vec2_i32(select(abs(vec2<i32>(arg_2.d.x, 6570i)), _wgslsmith_div_vec2_i32(arg_2.d.wy, arg_2.d.xw), true), vec2<i32>(u_input.a, u_input.b) >> (max(arg_0.zw, vec2<u32>(var_0, 0u)) % vec2<u32>(32u)))), firstTrailingBit(abs(min(reverseBits(0i), -u_input.a))));
    global0 = func_2(func_2(Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(arg_2.c.a, arg_2.a.e)), _wgslsmith_f_op_vec4_f32(-arg_2.a.a.a))), !vec3<bool>(false, global0.x, arg_2.a.a.b.x)), func_2(arg_2.c, arg_2.a, vec3<f32>(996f, arg_2.a.b.x, _wgslsmith_f_op_f32(arg_1.a.x + arg_1.a.x))).a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(arg_2.a.b)) - arg_1.a)).c, Struct_2(func_2(arg_2.a.a, Struct_2(arg_2.c, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1.a.x, arg_1.a.x, 106f))), _wgslsmith_f_op_f32(floor(arg_1.a.x)), arg_1.a.x, arg_2.c.a), arg_2.a.e.wwx).c, vec3<f32>(_wgslsmith_f_op_f32(func_3(reverseBits(vec4<i32>(u_input.a, -6122i, 1i, 24493i)), ~24915u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_2.a.c, 971f)), _wgslsmith_f_op_f32(-853f - 731f)), 1320f), _wgslsmith_f_op_f32(arg_1.a.x + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-748f, 1905f))))), _wgslsmith_f_op_f32(abs(arg_2.a.d)), vec4<f32>(1090f, _wgslsmith_f_op_f32(arg_2.c.a.x + -735f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-arg_1.a.x), global0.x)), arg_2.c.a.x)), vec3<f32>(-1586f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.x - arg_2.c.a.x) - arg_1.a.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c.a.x + -110f))), _wgslsmith_div_f32(-867f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(arg_2.b, 1u)), -146f)))).c.b;
    var var_2 = vec3<bool>(!global0.x, !(false | select(true, true, false)), all(arg_2.a.a.b));
    return func_2(Struct_1(vec4<f32>(-787f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.e.x + arg_1.a.x) + arg_1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<i32>(arg_2.d.x, 4487i, -186i, arg_2.b.x), arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - arg_2.c.a.x))), arg_2.a.a.b), func_2(func_2(func_2(func_2(arg_2.c, arg_2.a, vec3<f32>(929f, -1442f, arg_1.a.x)).c, func_2(arg_2.c, arg_2.a, arg_1.a).a, vec3<f32>(arg_1.a.x, arg_2.a.d, arg_2.a.e.x)).a.a, arg_2.a, _wgslsmith_f_op_vec3_f32(arg_2.c.a.wyy * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_2.a.d, 403f, arg_2.a.d))))).a.a, func_2(arg_2.a.a, Struct_2(Struct_1(vec4<f32>(arg_1.a.x, 349f, arg_1.a.x, arg_1.a.x), arg_2.c.b), arg_1.a, _wgslsmith_f_op_f32(func_3(var_1, 0u)), 428f, vec4<f32>(arg_2.a.b.x, arg_1.a.x, -932f, arg_2.c.a.x)), vec3<f32>(_wgslsmith_f_op_f32(-992f + -1000f), _wgslsmith_f_op_f32(f32(-1f) * -771f), -838f)).a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2.a.a.a.zxy * vec3<f32>(1268f, 1000f, 521f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1896f, -1080f, arg_1.a.x) * arg_2.c.a.xxy), arg_2.a.a.a.wxz))).a, vec3<f32>(-1130f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(arg_2.c.a.x, _wgslsmith_f_op_f32(-1000f - arg_1.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(669f))))).c;
}

fn func_1(arg_0: bool, arg_1: u32) -> u32 {
    var var_0 = !global0.x;
    var var_1 = Struct_3(Struct_2(func_4(max(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1, 0u, 0u, 4294967295u), u_input.c), vec4<u32>(76417u, arg_1, 1u, 11071u)), Struct_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(-392f, 141f, -1000f) * vec3<f32>(-1921f, -238f, 1000f))), func_2(Struct_1(vec4<f32>(767f, -525f, 1000f, -502f), vec3<bool>(true, false, true)), Struct_2(Struct_1(vec4<f32>(-1105f, -1060f, -412f, 1089f), vec3<bool>(true, global0.x, arg_0)), vec3<f32>(589f, -357f, -888f), 446f, -1507f, vec4<f32>(110f, 646f, -852f, 1021f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2427f, -549f, 1612f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(470f, -173f, 2066f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1321f, -295f, 439f)))), !(!vec3<bool>(arg_0, arg_0, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-289f, _wgslsmith_f_op_f32(min(1461f, 184f)), false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-777f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-100f, -1011f)) + _wgslsmith_f_op_f32(abs(-323f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(669f, 1536f, 1113f, -3368f) + vec4<f32>(233f, -147f, 688f, 831f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -2349f, 666f, -368f) + vec4<f32>(-637f, -902f, 173f, 904f))))), vec4<i32>(~max(0i, u_input.a), _wgslsmith_mod_i32(-u_input.b, abs(16265i)) >> (~4108u % 32u), ~(-28774i), -(~u_input.b) | firstTrailingBit(-u_input.a)), func_4(select(select(u_input.c, firstTrailingBit(u_input.c), any(vec3<bool>(false, true, arg_0))), vec4<u32>(22661u, u_input.d, 1u, u_input.d), false), Struct_4(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(288f, -535f, -740f) * vec3<f32>(-1000f, 1062f, 1686f)), vec3<f32>(1138f, 1261f, -2135f), true))), Struct_3(func_2(func_2(Struct_1(vec4<f32>(-1062f, 856f, -1264f, -1422f), vec3<bool>(true, arg_0, global0.x)), Struct_2(Struct_1(vec4<f32>(823f, -1170f, 973f, 1280f), vec3<bool>(false, arg_0, arg_0)), vec3<f32>(1230f, -1141f, 509f), -442f, -613f, vec4<f32>(-412f, -458f, 588f, 1831f)), vec3<f32>(-251f, 206f, -413f)).c, func_2(Struct_1(vec4<f32>(-1000f, -960f, -1190f, -1000f), vec3<bool>(arg_0, false, arg_0)), Struct_2(Struct_1(vec4<f32>(-768f, -998f, 111f, -1784f), vec3<bool>(global0.x, arg_0, true)), vec3<f32>(-397f, 322f, -1538f), 957f, 507f, vec4<f32>(-683f, 1980f, -573f, 899f)), vec3<f32>(894f, -160f, 113f)).a, vec3<f32>(375f, 1487f, 1000f)).a, _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(0i, -7249i, u_input.a, -2147483647i), vec4<i32>(u_input.b, u_input.b, u_input.a, -682i)), _wgslsmith_mod_vec4_i32(vec4<i32>(-3122i, 2147483647i, -11747i, 2147483647i), vec4<i32>(18703i, 29838i, -1i, 50845i))), Struct_1(vec4<f32>(-717f, 1540f, 760f, -2117f), !vec3<bool>(true, true, global0.x)), func_2(func_2(Struct_1(vec4<f32>(-910f, 2010f, -2126f, -990f), vec3<bool>(global0.x, arg_0, false)), Struct_2(Struct_1(vec4<f32>(288f, -379f, -1197f, 483f), vec3<bool>(true, arg_0, false)), vec3<f32>(-1756f, 1528f, 245f), -909f, 2240f, vec4<f32>(1000f, 510f, 191f, -111f)), vec3<f32>(-1000f, -1062f, 892f)).c, func_2(Struct_1(vec4<f32>(-874f, -1443f, 739f, -1377f), vec3<bool>(global0.x, false, global0.x)), Struct_2(Struct_1(vec4<f32>(1007f, -736f, -743f, 437f), vec3<bool>(false, false, global0.x)), vec3<f32>(1000f, -634f, -1000f), 1259f, 289f, vec4<f32>(1579f, -279f, -1074f, -2371f)), vec3<f32>(-1000f, -414f, 1108f)).a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(2598f, 1000f, 367f))).d)), -func_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 851f, 184f, -1000f)), func_4(vec4<u32>(8390u, 9093u, 4294967295u, 1u), Struct_4(vec3<f32>(1000f, 145f, 522f)), Struct_3(Struct_2(Struct_1(vec4<f32>(2782f, 129f, -804f, -2466f), vec3<bool>(global0.x, global0.x, false)), vec3<f32>(-553f, 645f, -888f), 1153f, -410f, vec4<f32>(-1215f, 736f, -1103f, -218f)), vec4<i32>(-41548i, -1i, u_input.b, -1i), Struct_1(vec4<f32>(-790f, 659f, -1015f, -954f), vec3<bool>(global0.x, global0.x, global0.x)), vec4<i32>(u_input.b, -51591i, u_input.a, 5967i))).b), func_2(Struct_1(vec4<f32>(735f, -584f, -390f, -1000f), vec3<bool>(global0.x, true, false)), Struct_2(Struct_1(vec4<f32>(-340f, 414f, -1413f, -883f), vec3<bool>(global0.x, arg_0, arg_0)), vec3<f32>(-517f, -615f, -1158f), 341f, 307f, vec4<f32>(-312f, -1288f, -2377f, -1832f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-696f, -360f, 1000f))).a, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-187f, -1040f, -605f), vec3<f32>(2472f, 1000f, 519f))), vec3<f32>(-486f, -308f, -2048f)))).d);
    var var_2 = Struct_3(var_1.a, func_2(func_4(max(u_input.c >> (vec4<u32>(u_input.d, 4294967295u, 0u, 88437u) % vec4<u32>(32u)), vec4<u32>(0u, 4294967295u, arg_1, u_input.d)), Struct_4(_wgslsmith_f_op_vec3_f32(var_1.a.b * var_1.a.a.a.wxw)), Struct_3(func_2(Struct_1(var_1.a.e, vec3<bool>(global0.x, false, true)), var_1.a, var_1.c.a.zwz).a, _wgslsmith_mult_vec4_i32(var_1.b, var_1.d), func_2(Struct_1(vec4<f32>(-1385f, var_1.c.a.x, 988f, var_1.a.e.x), var_1.a.a.b), var_1.a, var_1.a.b).c, countOneBits(vec4<i32>(35215i, u_input.b, u_input.a, 2147483647i)))), func_2(var_1.a.a, func_2(Struct_1(vec4<f32>(-806f, var_1.c.a.x, var_1.a.d, -763f), var_1.c.b), func_2(Struct_1(vec4<f32>(1359f, var_1.c.a.x, 972f, 289f), vec3<bool>(var_1.a.a.b.x, global0.x, true)), var_1.a, vec3<f32>(var_1.c.a.x, var_1.a.d, 832f)).a, vec3<f32>(390f, 1000f, -241f)).a, _wgslsmith_f_op_vec3_f32(var_1.a.e.wzx + var_1.c.a.xwz)).a, vec3<f32>(var_1.a.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.a.x - var_1.c.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(591f - 236f), -2070f))).b, Struct_1(_wgslsmith_f_op_vec4_f32(max(var_1.c.a, _wgslsmith_f_op_vec4_f32(floor(var_1.a.e)))), vec3<bool>(any(select(vec4<bool>(var_1.a.a.b.x, false, true, global0.x), vec4<bool>(false, arg_0, arg_0, var_1.c.b.x), vec4<bool>(arg_0, var_1.c.b.x, true, true))), false, arg_0)), max(select(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(13088i, 2147483647i, u_input.b, var_1.b.x), var_1.d), var_1.d), vec4<i32>(i32(-1i) * -2147483647i, u_input.a, -2147483647i ^ u_input.a, var_1.d.x ^ -2147483647i), arg_0), vec4<i32>(-1i) * -vec4<i32>(1i, var_1.d.x, u_input.b, var_1.b.x)));
    var_1 = Struct_3(Struct_2(var_2.a.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(var_1.c.a.wzw + var_1.a.b)))), _wgslsmith_div_f32(var_1.a.b.x, _wgslsmith_f_op_f32(var_1.c.a.x + _wgslsmith_f_op_f32(min(var_2.a.d, var_1.c.a.x)))), var_1.a.c, _wgslsmith_f_op_vec4_f32(-var_1.a.e)), vec4<i32>(~1i, ~(-21815i), abs(-_wgslsmith_dot_vec3_i32(var_2.b.wwx, var_2.d.xwy)), var_2.d.x), var_1.c, vec4<i32>(-1i, _wgslsmith_mod_i32(-_wgslsmith_div_i32(var_2.b.x, u_input.a), firstLeadingBit(0i)), reverseBits(-_wgslsmith_mult_i32(-32097i, -1i)), u_input.b));
    var var_3 = -1058f;
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(_wgslsmith_dot_vec3_u32((vec3<u32>(4294967295u, u_input.c.x, 1u) >> (vec3<u32>(u_input.c.x, u_input.d, 4294967295u) % vec3<u32>(32u))) >> (u_input.c.wwz % vec3<u32>(32u)), ~vec3<u32>(firstLeadingBit(u_input.d), _wgslsmith_mod_u32(u_input.c.x, 61567u), countOneBits(19845u))), abs(func_1(global0.x, ~u_input.c.x)), ~_wgslsmith_div_u32(countOneBits(u_input.c.x) | max(10147u, u_input.c.x), u_input.d ^ 4294967295u));
    let var_1 = Struct_5(func_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1149f, -383f, 1647f, -1000f), vec4<f32>(-802f, 1000f, 548f, -1000f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1172f, -367f, 576f, -258f))), func_4(u_input.c, Struct_4(vec3<f32>(-1023f, 523f, 561f)), Struct_3(Struct_2(Struct_1(vec4<f32>(-591f, -662f, -559f, -639f), vec3<bool>(false, global0.x, true)), vec3<f32>(-2229f, 1177f, 1575f), 174f, -497f, vec4<f32>(-1346f, 502f, 1000f, 430f)), vec4<i32>(-2147483647i, u_input.b, u_input.b, -30529i), Struct_1(vec4<f32>(-1409f, 1886f, 1042f, 341f), vec3<bool>(global0.x, global0.x, global0.x)), vec4<i32>(u_input.a, 2147483647i, u_input.b, -27993i))).b), Struct_2(Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(2127f, 120f, 1267f, -1205f), vec4<f32>(598f, -689f, 1000f, -275f)), !vec3<bool>(global0.x, global0.x, global0.x)), vec3<f32>(_wgslsmith_f_op_f32(func_3(vec4<i32>(u_input.b, u_input.b, 21460i, 49184i), 0u)), _wgslsmith_f_op_f32(f32(-1f) * -1154f), 1f), -754f, 234f, vec4<f32>(func_2(Struct_1(vec4<f32>(-726f, -336f, 980f, -1000f), vec3<bool>(false, true, global0.x)), Struct_2(Struct_1(vec4<f32>(-1000f, -2007f, 1393f, 1619f), vec3<bool>(global0.x, true, global0.x)), vec3<f32>(170f, -925f, -1357f), 646f, 1464f, vec4<f32>(-494f, -1000f, -338f, 1000f)), vec3<f32>(1000f, -175f, -1081f)).a.d, _wgslsmith_f_op_f32(ceil(1664f)), -259f, func_2(Struct_1(vec4<f32>(239f, -209f, 1742f, -1000f), vec3<bool>(global0.x, global0.x, global0.x)), Struct_2(Struct_1(vec4<f32>(-992f, 1067f, -1121f, 303f), vec3<bool>(true, global0.x, true)), vec3<f32>(149f, 250f, -179f), 849f, 695f, vec4<f32>(-632f, -1161f, 951f, -570f)), vec3<f32>(-1619f, 1000f, 128f)).c.a.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(vec4<u32>(1u, 4073u, u_input.c.x, u_input.d), Struct_4(vec3<f32>(678f, -382f, -438f)), Struct_3(Struct_2(Struct_1(vec4<f32>(1734f, 536f, -496f, -971f), vec3<bool>(true, global0.x, false)), vec3<f32>(1490f, -208f, -198f), 1900f, 498f, vec4<f32>(664f, 1316f, -633f, -1658f)), vec4<i32>(55920i, u_input.a, u_input.a, u_input.a), Struct_1(vec4<f32>(1738f, -570f, 741f, 707f), vec3<bool>(true, true, global0.x)), vec4<i32>(1i, -23714i, 34452i, -1i))).a.zxz + vec3<f32>(-313f, 946f, -782f)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, -635f, 1014f), vec3<f32>(310f, 844f, 320f), vec3<bool>(true, true, true))), vec3<f32>(143f, -1164f, 2115f)))).a.a.b.x, true, 284f, Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1952f, -352f, -796f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1702f, -999f, 515f) + vec3<f32>(-342f, 1000f, 1038f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(622f, 1946f, -944f)) + vec3<f32>(411f, 2632f, 935f)))), func_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-209f, -648f, 303f, 934f)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-971f, -1027f, 138f, 375f)))), !vec3<bool>(global0.x, true, true)), Struct_2(func_2(Struct_1(vec4<f32>(-1180f, -1310f, 131f, -2072f), vec3<bool>(global0.x, global0.x, global0.x)), Struct_2(Struct_1(vec4<f32>(307f, 561f, -1000f, -1759f), vec3<bool>(false, true, false)), vec3<f32>(290f, -437f, 1161f), -757f, 1634f, vec4<f32>(745f, -138f, 371f, -1212f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -608f, -356f) - vec3<f32>(-1096f, -104f, -1251f))).c, vec3<f32>(_wgslsmith_f_op_f32(-273f * -1000f), 101f, _wgslsmith_f_op_f32(2379f - 1546f)), _wgslsmith_f_op_f32(-339f + _wgslsmith_f_op_f32(f32(-1f) * -328f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1237f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(442f, 1143f, -2477f, -977f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-203f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(min(-105f, -543f))))).c.b);
    global0 = var_1.e;
    let var_2 = func_2(func_2(func_4(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, 43691u, var_0.x, 0u), vec4<u32>(u_input.c.x, u_input.d, 1u, 30536u)), vec4<u32>(u_input.c.x, 1u, u_input.d, 13080u), u_input.c), Struct_4(var_1.d.a), func_2(func_4(u_input.c, Struct_4(var_1.d.a), Struct_3(Struct_2(Struct_1(vec4<f32>(var_1.d.a.x, -350f, var_1.c, 955f), var_1.e), var_1.d.a, var_1.d.a.x, -340f, vec4<f32>(var_1.c, -840f, var_1.c, var_1.c)), vec4<i32>(2147483647i, 1i, 1i, u_input.a), Struct_1(vec4<f32>(-811f, 434f, -134f, var_1.c), vec3<bool>(true, false, true)), vec4<i32>(u_input.a, u_input.a, 3887i, 0i))), Struct_2(Struct_1(vec4<f32>(var_1.c, var_1.d.a.x, -329f, var_1.c), var_1.e), vec3<f32>(var_1.c, var_1.c, -807f), var_1.d.a.x, var_1.c, vec4<f32>(var_1.d.a.x, -1564f, var_1.c, -664f)), var_1.d.a)), func_2(func_4(u_input.c, Struct_4(var_1.d.a), Struct_3(Struct_2(Struct_1(vec4<f32>(-237f, 716f, var_1.c, -518f), vec3<bool>(var_1.b, false, global0.x)), vec3<f32>(var_1.d.a.x, 497f, var_1.c), var_1.d.a.x, var_1.c, vec4<f32>(571f, -1427f, 600f, var_1.d.a.x)), vec4<i32>(5152i, 2147483647i, u_input.a, u_input.b), Struct_1(vec4<f32>(-1838f, var_1.d.a.x, var_1.d.a.x, 1647f), var_1.e), vec4<i32>(1i, 159i, 1i, u_input.a))), func_2(Struct_1(vec4<f32>(-404f, -478f, var_1.d.a.x, var_1.c), vec3<bool>(true, true, global0.x)), Struct_2(Struct_1(vec4<f32>(401f, var_1.d.a.x, 206f, var_1.d.a.x), var_1.e), vec3<f32>(var_1.c, 935f, -186f), -1000f, -1000f, vec4<f32>(var_1.d.a.x, 190f, var_1.c, var_1.c)), vec3<f32>(-164f, 1050f, var_1.d.a.x)).a, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c, var_1.c, -1000f)), _wgslsmith_div_vec3_f32(vec3<f32>(var_1.d.a.x, var_1.d.a.x, -267f), vec3<f32>(var_1.c, 279f, 1488f))))).a, vec3<f32>(_wgslsmith_f_op_f32(1f + func_4(u_input.c, Struct_4(var_1.d.a), Struct_3(Struct_2(Struct_1(vec4<f32>(1266f, var_1.d.a.x, 1843f, 777f), vec3<bool>(false, global0.x, false)), vec3<f32>(314f, var_1.c, 138f), 604f, var_1.c, vec4<f32>(var_1.c, -698f, -821f, 641f)), vec4<i32>(u_input.a, u_input.a, u_input.a, 0i), Struct_1(vec4<f32>(var_1.d.a.x, var_1.d.a.x, 1351f, -1000f), var_1.e), vec4<i32>(-2147483647i, -1i, u_input.b, -1i))).a.x), _wgslsmith_f_op_f32(var_1.d.a.x * _wgslsmith_f_op_f32(func_3(vec4<i32>(u_input.a, -1i, -63061i, u_input.a), u_input.d))), var_1.c)).a.a, func_2(func_2(func_4(u_input.c, Struct_4(var_1.d.a), Struct_3(Struct_2(Struct_1(vec4<f32>(1057f, -1323f, 892f, -373f), vec3<bool>(global0.x, global0.x, var_1.a)), vec3<f32>(-190f, var_1.d.a.x, var_1.c), 1294f, var_1.d.a.x, vec4<f32>(-2275f, 255f, 428f, var_1.c)), vec4<i32>(u_input.b, -1i, -10806i, u_input.a), Struct_1(vec4<f32>(-2498f, var_1.d.a.x, var_1.d.a.x, var_1.c), vec3<bool>(var_1.a, var_1.a, global0.x)), vec4<i32>(-8350i, -2147483647i, u_input.a, u_input.b))), Struct_2(func_2(Struct_1(vec4<f32>(-949f, -580f, 1146f, 184f), var_1.e), Struct_2(Struct_1(vec4<f32>(1039f, 1727f, var_1.d.a.x, var_1.c), var_1.e), vec3<f32>(var_1.d.a.x, -837f, var_1.c), -1039f, 596f, vec4<f32>(-1360f, var_1.c, -130f, 766f)), vec3<f32>(-466f, var_1.c, var_1.c)).c, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1321f, -203f, -216f), vec3<f32>(var_1.c, -203f, var_1.d.a.x))), _wgslsmith_f_op_f32(var_1.d.a.x + var_1.d.a.x), _wgslsmith_div_f32(var_1.d.a.x, var_1.d.a.x), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.c, 1048f, var_1.c, var_1.c)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c, var_1.c, 1000f))).c, func_2(Struct_1(func_2(Struct_1(vec4<f32>(-1173f, var_1.d.a.x, 391f, var_1.d.a.x), vec3<bool>(global0.x, true, false)), Struct_2(Struct_1(vec4<f32>(329f, var_1.d.a.x, 265f, var_1.c), var_1.e), var_1.d.a, 769f, 276f, vec4<f32>(var_1.c, var_1.d.a.x, var_1.d.a.x, var_1.d.a.x)), var_1.d.a).c.a, func_2(Struct_1(vec4<f32>(-1890f, var_1.d.a.x, -172f, var_1.c), var_1.e), Struct_2(Struct_1(vec4<f32>(785f, -888f, var_1.d.a.x, var_1.c), var_1.e), vec3<f32>(-1209f, 1087f, var_1.d.a.x), var_1.d.a.x, var_1.d.a.x, vec4<f32>(424f, -1000f, 2260f, 153f)), var_1.d.a).a.a.b), Struct_2(func_4(u_input.c, Struct_4(var_1.d.a), Struct_3(Struct_2(Struct_1(vec4<f32>(var_1.d.a.x, var_1.c, -1000f, -203f), var_1.e), var_1.d.a, -970f, -1000f, vec4<f32>(var_1.c, var_1.c, 1000f, -987f)), vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.b), Struct_1(vec4<f32>(298f, var_1.d.a.x, -1000f, 791f), var_1.e), vec4<i32>(u_input.b, u_input.b, 0i, u_input.a))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 437f, var_1.d.a.x)), _wgslsmith_f_op_f32(floor(-312f)), -2058f, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.c, var_1.c, 1571f, 794f)))), _wgslsmith_f_op_vec3_f32(round(func_2(Struct_1(vec4<f32>(300f, var_1.c, var_1.d.a.x, 1301f), vec3<bool>(global0.x, false, var_1.e.x)), Struct_2(Struct_1(vec4<f32>(195f, var_1.d.a.x, -757f, var_1.c), var_1.e), var_1.d.a, -459f, -272f, vec4<f32>(-650f, var_1.c, 1796f, var_1.c)), var_1.d.a).a.e.yyy))).a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(239f, var_1.c, var_1.c)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.d.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d.a.x, var_1.d.a.x, var_1.c))))).a, _wgslsmith_f_op_vec3_f32(var_1.d.a + vec3<f32>(var_1.d.a.x, var_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.d.a.x)))))).a;
    let var_3 = global0.x;
    global0 = !(!vec3<bool>(var_1.a, _wgslsmith_f_op_f32(-var_2.e.x) > _wgslsmith_f_op_f32(-var_2.b.x), (u_input.b <= u_input.b) && any(var_1.e.yz)));
    global0 = vec3<bool>(func_4(vec4<u32>(var_0.x, _wgslsmith_sub_u32(var_0.x, 1u), _wgslsmith_dot_vec3_u32(var_0, u_input.c.xxw), u_input.d) << (u_input.c % vec4<u32>(32u)), var_1.d, func_2(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.x, -952f, var_2.d, 862f) - var_2.a.a), !vec3<bool>(global0.x, false, var_1.a)), var_2, _wgslsmith_f_op_vec3_f32(vec3<f32>(871f, 903f, -209f) + var_1.d.a))).b.x, true, false);
    global0 = vec3<bool>(var_1.b, var_1.b, false);
    global0 = !select(var_1.e, !var_2.a.b, !var_1.e.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(max(1423f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(var_2.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -102f))))), _wgslsmith_f_op_f32(var_1.d.a.x * _wgslsmith_div_f32(var_1.d.a.x, _wgslsmith_f_op_f32(-1411f - var_2.a.a.x))), -853f), vec2<i32>(-_wgslsmith_mod_i32(u_input.a, u_input.a), -2147483647i), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-692f * var_2.c))))))), var_2.e.x);
}

