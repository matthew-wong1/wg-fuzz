struct Struct_1 {
    a: i32,
    b: u32,
    c: f32,
    d: i32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: bool,
    c: vec2<i32>,
    d: vec2<bool>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec4<f32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: array<Struct_1, 31>;

var<private> global2: bool;

var<private> global3: array<vec4<bool>, 31> = array<vec4<bool>, 31>(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    global0 = Struct_5(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.a.x)) + _wgslsmith_f_op_f32(global0.b.c - 1622f)), global0.c.x, global0.b.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -220f), global0.c.x))))), Struct_1(global0.b.a, ~global0.b.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.a.x))) + global0.c.x), 0i, reverseBits(u_input.c)), _wgslsmith_f_op_vec4_f32(select(global0.c, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1647f, global0.b.c, global0.a.x, -1804f) - _wgslsmith_f_op_vec4_f32(-global0.c)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1390f, 1643f, global0.b.c, 483f))))), vec4<bool>(!any(vec4<bool>(false, true, true, true)), true, true, global0.d.x))), select(!(!global3[_wgslsmith_index_u32(abs(99559u), 31u)]), !vec4<bool>(!global0.d.x, global0.d.x && global0.d.x, any(global0.d.yy), global0.d.x), select(!global0.d, !global0.d, !global0.d.x)));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.c.x + global0.a.x), global0.b.c))) - -425f);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(523f, global0.a.x))))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1473f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x)))));
    var var_2 = vec3<i32>(u_input.b.x, global0.b.d << (_wgslsmith_mod_u32(arg_0.x, 1u) % 32u), u_input.b.x);
    var var_3 = firstTrailingBit(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(var_2.xz, vec2<i32>(global0.b.d, -1i)), firstLeadingBit(15224i), select(u_input.b.x, -1254i, true)), max(firstLeadingBit(u_input.b), ~vec3<i32>(u_input.b.x, global0.b.a, 2147483647i))), u_input.b.x, -2147483647i, ~global0.b.d));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(101f + 638f)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_5, arg_2: f32) -> bool {
    let var_0 = Struct_2(_wgslsmith_add_u32(global0.b.e.x, global0.b.b));
    global2 = true;
    global1 = array<Struct_1, 31>();
    var var_1 = false;
    global1 = array<Struct_1, 31>();
    return false;
}

fn func_2() -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -188f)) - -137f) + -799f);
    global2 = func_4(Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_3(vec3<u32>(0u, global0.b.b, u_input.a.x))), _wgslsmith_f_op_f32(global0.b.c + -816f), global0.c.x) - global0.c.xzx), select(~(vec3<u32>(u_input.c.x, global0.b.b, global0.b.b) | global0.b.e.ywx), vec3<u32>(21589u, abs(global0.b.e.x), 114090u), !vec3<bool>(global0.d.x, global0.d.x, false)), -1i, ~vec3<u32>(~global0.b.e.x, _wgslsmith_mult_u32(u_input.c.x, 1u), ~0u)), Struct_5(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1336f + global0.b.c), _wgslsmith_f_op_f32(3075f + var_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec3<u32>(u_input.c.x, 4294967295u, global0.b.b))), -2207f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(var_0)), _wgslsmith_f_op_f32(min(var_0, -550f)), global0.d.x | false)), global0.c.x), Struct_1(1i, 4294967295u, global0.b.c, countOneBits(global0.b.a), vec4<u32>(_wgslsmith_dot_vec2_u32(global0.b.e.yx, global0.b.e.yw), 0u, global0.b.b ^ 78228u, _wgslsmith_add_u32(1u, 1u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(global0.a))), select(vec4<bool>(true, global0.d.x | global0.d.x, global0.d.x, all(vec3<bool>(global0.d.x, global0.d.x, global0.d.x))), global0.d, global0.d)), -1229f);
    var var_1 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(933f))))), _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(step(-1965f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.c + -351f))))), ~select(vec3<u32>(0u, u_input.d, 38768u), global0.b.e.xwx, vec3<bool>(false, global0.d.x, global0.d.x)) | ~u_input.c.yxy, u_input.b.x, _wgslsmith_mult_vec3_u32(global0.b.e.xyz >> (vec3<u32>(global0.b.e.x, ~u_input.d, _wgslsmith_mod_u32(u_input.d, 22851u)) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(max(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d, u_input.d, global0.b.e.x), vec3<u32>(u_input.d, 0u, 1u)), ~vec3<u32>(u_input.c.x, 31989u, 1u)), ~global0.b.e.wzy)));
    var var_2 = true;
    var var_3 = Struct_4(global0.d.zw, func_4(Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(327f, 1150f, var_1.a.x)), ~var_1.d, var_1.c, global0.b.e.xyy ^ global0.b.e.xwy), Struct_5(vec4<f32>(var_0, -554f, -1300f, -809f), Struct_1(u_input.b.x, 4294967295u, -1394f, -1i, global0.b.e), _wgslsmith_f_op_vec4_f32(global0.c - global0.a), vec4<bool>(false, global0.d.x, false, global0.d.x)), _wgslsmith_f_op_f32(min(-708f, _wgslsmith_f_op_f32(var_0 * -398f)))) & all(vec4<bool>(global0.d.x, false, false, global0.d.x)), _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_add_i32(-u_input.b.x, ~(-10121i)), global0.b.a), vec2<i32>(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-12274i, -17207i, u_input.b.x), vec3<i32>(-13829i, 2147483647i, var_1.c))), _wgslsmith_dot_vec3_i32(abs(u_input.b), abs(vec3<i32>(876i, -22530i, 79736i))))), global0.d.ww);
    return Struct_4(vec2<bool>(any(vec4<bool>(global0.d.x, var_3.a.x, true, var_3.d.x)) | any(select(vec4<bool>(true, var_3.d.x, var_3.d.x, false), global0.d, global0.d)), !any(global0.d.xzw)), false, firstTrailingBit(vec2<i32>(u_input.b.x, 20601i)), vec2<bool>(all(!vec3<bool>(false, global0.d.x, true)), false));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: vec4<i32>) -> Struct_4 {
    global2 = true;
    let var_0 = func_2();
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, global0.c.x, -2634f, 167f))) - vec4<f32>(_wgslsmith_f_op_f32(abs(arg_1.a.x)), global0.b.c, 1000f, -157f))), vec4<f32>(_wgslsmith_f_op_f32(arg_1.a.x + global0.c.x), 312f, 191f, arg_1.a.x));
    var var_2 = Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.a.x, global0.c.x, _wgslsmith_f_op_f32(-global0.b.c), _wgslsmith_f_op_f32(-1279f + 587f)), global0.a))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(global0.b.e, vec4<u32>(~(u_input.a.x << (0u % 32u)), (u_input.d | arg_1.b.x) & arg_1.d.x, firstLeadingBit(_wgslsmith_mod_u32(0u, 4294967295u)), min(~arg_1.d.x, 17557u))), 31u)], global0.a, vec4<bool>(arg_2.x, false, all(select(vec4<bool>(arg_2.x, global0.d.x, true, false), select(arg_2, vec4<bool>(arg_2.x, global0.d.x, false, true), global3[_wgslsmith_index_u32(14267u, 31u)]), any(global3[_wgslsmith_index_u32(4617u, 31u)]))), true));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global0.a.wxz, vec3<f32>(global0.a.x, -359f, var_2.a.x), var_2.d.xwy)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.x, -395f, 1137f))))) * global0.a.yyz));
    return func_2();
}

fn func_5(arg_0: i32, arg_1: Struct_4, arg_2: vec4<i32>) -> Struct_2 {
    let var_0 = func_2();
    let var_1 = Struct_2(~_wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(7705u, u_input.d), 4294967295u), 24869u));
    var var_2 = u_input.b.x;
    let var_3 = Struct_5(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(231f, 1311f, global0.b.c, global0.b.c), vec4<f32>(1392f, global0.a.x, global0.a.x, -130f), global3[_wgslsmith_index_u32(33319u, 31u)])))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.c.x, -591f, 1252f, global0.b.c), _wgslsmith_f_op_vec4_f32(trunc(global0.a)))))), global1[_wgslsmith_index_u32(var_1.a, 31u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(max(global0.b.c, global0.b.c)), -730f, _wgslsmith_f_op_f32(global0.b.c - global0.b.c)))), vec4<bool>(false, global0.d.x, true, _wgslsmith_dot_vec4_i32(arg_2, -arg_2) < 22028i));
    global3 = array<vec4<bool>, 31>();
    return var_1;
}

fn func_6(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: f32) -> i32 {
    let var_0 = 775f;
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(2157f, -728f, 781f))) - vec3<f32>(1143f, 271f, -384f))), vec3<f32>(var_0, var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_3)))))), abs(global0.b.e.yzw), -reverseBits(u_input.b.x), vec3<u32>(~global0.b.e.x, min(19919u, u_input.c.x) & u_input.d, 6131u));
    let var_2 = true;
    let var_3 = Struct_4(vec2<bool>(global0.d.x, true), !(!func_4(var_1, Struct_5(vec4<f32>(arg_3, var_0, var_0, arg_3), global1[_wgslsmith_index_u32(arg_1.a, 31u)], vec4<f32>(411f, global0.a.x, -2121f, global0.a.x), vec4<bool>(global0.d.x, var_2, var_2, false)), 838f)) & any(!vec4<bool>(global0.d.x, false, false, true)), vec2<i32>(~(-var_1.c), select(-68304i, global0.b.a, !(global0.d.x && false))), global0.d.yw);
    var var_4 = global0.c.wzy;
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~0u;
    var var_1 = global0.b.d;
    let var_2 = Struct_4(!(!global0.d.zw), true, (u_input.b.zx << (countOneBits(~u_input.c.zx) % vec2<u32>(32u))) & vec2<i32>(global0.b.d, _wgslsmith_div_i32(_wgslsmith_add_i32(2147483647i, -8522i), -u_input.b.x)), vec2<bool>(false, select(global0.d.x, any(vec2<bool>(global0.d.x, global0.d.x)), select(global0.b.e.x == 30080u, global0.d.x, true))));
    let var_3 = i32(-1i) * -func_6(u_input.b, func_5(firstLeadingBit(u_input.b.x), func_1(u_input.b, Struct_3(global0.c.xxz, vec3<u32>(4294967295u, 1u, 4713u), var_2.c.x, u_input.c.xzw), global3[_wgslsmith_index_u32(global0.b.e.x, 31u)], vec4<i32>(-9858i, var_2.c.x, var_2.c.x, u_input.b.x)), _wgslsmith_div_vec4_i32(vec4<i32>(var_2.c.x, 2147483647i, 1i, global0.b.a), vec4<i32>(var_2.c.x, 2147483647i, var_2.c.x, -25584i))), func_5(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 24900i, var_2.c.x, -66102i), vec4<i32>(15811i, 38399i, u_input.b.x, u_input.b.x)), func_1(u_input.b, Struct_3(global0.a.yxy, vec3<u32>(40217u, u_input.d, global0.b.b), 2147483647i, global0.b.e.yyz), global3[_wgslsmith_index_u32(44273u, 31u)], vec4<i32>(u_input.b.x, u_input.b.x, global0.b.d, 1i)), max(vec4<i32>(17998i, 0i, 31944i, -51972i), vec4<i32>(8153i, u_input.b.x, -32281i, 2147483647i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.b.c)) + _wgslsmith_f_op_f32(-global0.a.x)));
    var_0 = 16927u;
    let var_4 = Struct_1(u_input.b.x, u_input.c.x, _wgslsmith_f_op_f32(-global0.b.c), ~_wgslsmith_div_i32(var_2.c.x, ~max(33072i, var_2.c.x)), global0.b.e);
    global1 = array<Struct_1, 31>();
    let var_5 = global0.b.e.x;
    var var_6 = vec2<i32>(15760i, 0i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(var_4.e.xz, vec2<u32>(0u, _wgslsmith_dot_vec3_u32(global0.b.e.xyx, vec3<u32>(1u, 0u, var_4.e.x)))), firstLeadingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(5382u, global0.b.e.x), vec2<u32>(4294967295u, global0.b.b), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_4.e.x, u_input.c.x), vec2<u32>(67659u, u_input.a.x), vec2<u32>(1u, 30583u))))));
}

