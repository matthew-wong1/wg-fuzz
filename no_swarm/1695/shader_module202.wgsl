struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: u32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: u32,
    c: bool,
    d: bool,
}

struct Struct_5 {
    a: i32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: u32;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_2) -> vec4<f32> {
    let var_0 = Struct_1(arg_0.b.d.x, u_input.b, arg_0.d.c, !vec3<bool>(global0.x, false, true));
    global1 = ~abs((~arg_0.b.c << ((5368u ^ u_input.a.x) % 32u)) | ~(~4294967295u));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -551f)) - _wgslsmith_f_op_f32(-arg_0.c.x));
    var var_2 = !vec2<bool>(arg_0.a.a, false);
    var_2 = select(global0.yx, arg_0.a.d.zy, select(true, true, false));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1, var_1, -665f, var_1))), vec4<f32>(var_1, -575f, arg_0.c.x, 561f))))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(max(var_1, -688f)), -148f, arg_0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -340f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-963f, 836f, -1736f, var_1) + vec4<f32>(1679f, -546f, -248f, -271f)), vec4<f32>(-777f, var_1, arg_0.c.x, arg_0.c.x), var_2.x)), !arg_0.b.a))));
}

fn func_2() -> f32 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(Struct_1(global0.x, vec3<i32>(u_input.b.x, u_input.b.x, 0i), u_input.a.x, vec3<bool>(false, global0.x, false)), Struct_1(global0.x, u_input.b, 4294967295u, vec3<bool>(false, global0.x, global0.x)), _wgslsmith_div_vec3_f32(vec3<f32>(-623f, -665f, -486f), vec3<f32>(-532f, -566f, 460f)), Struct_1(true, u_input.b, 1u, vec3<bool>(false, global0.x, global0.x))))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(684f, 982f, 1352f, 906f) + vec4<f32>(-715f, 534f, -741f, 865f)))))), (4294967295u & (u_input.a.x >> ((u_input.a.x << (u_input.a.x % 32u)) % 32u))) << (abs(7300u) % 32u), true, true);
    global1 = 58603u;
    var var_1 = Struct_2(Struct_1(var_0.d, ~vec3<i32>(u_input.b.x, 1i, ~u_input.b.x), (abs(var_0.b) & 2726u) >> (var_0.b % 32u), vec3<bool>(!(global0.x & var_0.c), var_0.c, !var_0.c | true)), Struct_1(true, u_input.b, u_input.a.x, !(!(!vec3<bool>(var_0.d, var_0.d, var_0.d)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.a.x, var_0.a.x)), _wgslsmith_div_f32(2604f, -442f))), var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -988f) + 467f)), Struct_1(var_0.c, _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(select(vec3<i32>(1i, u_input.b.x, 0i), vec3<i32>(1i, u_input.b.x, u_input.b.x), vec3<bool>(global0.x, false, var_0.d)), vec3<i32>(-49342i, u_input.b.x, u_input.b.x) & vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)), -_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), u_input.b)), _wgslsmith_sub_u32(var_0.b, 1u), !select(!vec3<bool>(global0.x, var_0.c, global0.x), select(vec3<bool>(global0.x, true, true), vec3<bool>(false, var_0.c, global0.x), var_0.d), var_0.a.x != var_0.a.x)));
    global1 = var_1.a.c;
    let var_2 = u_input.b.x;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.c.x)));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: Struct_3) -> Struct_4 {
    let var_0 = Struct_2(arg_2.c, arg_2.c, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(arg_1.zyz * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(arg_1.wwz - vec3<f32>(1000f, arg_1.x, -1033f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(arg_1.x)), _wgslsmith_f_op_f32(func_2()), 409f) * _wgslsmith_f_op_vec3_f32(-arg_1.zyz)))), arg_2.c);
    global0 = select(select(vec3<bool>(true, true, select(false, true, true)), select(vec3<bool>(false, any(var_0.d.d.yy), arg_2.b.d.x), !(!vec3<bool>(arg_2.b.d.x, global0.x, false)), vec3<bool>(true, true == arg_2.c.a, false)), any(select(select(vec4<bool>(true, var_0.a.a, true, true), vec4<bool>(false, true, var_0.d.a, true), false), select(vec4<bool>(arg_2.b.a, arg_2.c.d.x, true, false), vec4<bool>(var_0.a.a, global0.x, var_0.b.a, true), var_0.b.a), var_0.d.d.x))), vec3<bool>(!arg_2.a.x, all(select(select(arg_2.b.d, vec3<bool>(false, global0.x, arg_2.b.d.x), false), !vec3<bool>(arg_2.a.x, false, global0.x), select(arg_2.a, var_0.a.d, var_0.d.d))), true), select(!select(arg_2.c.d, vec3<bool>(true, true, true), arg_2.c.d), arg_2.b.d, true));
    global0 = vec3<bool>(false, var_0.a.d.x, arg_2.c.d.x);
    var var_1 = Struct_4(arg_1, ~select(~1u, _wgslsmith_sub_u32(4294967295u, 15423u), true) | arg_2.b.c, !(!all(!var_0.a.d.yy)), false);
    var var_2 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x * arg_1.x) * _wgslsmith_f_op_f32(var_1.a.x - var_0.c.x))), _wgslsmith_f_op_f32(-1293f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-641f)), _wgslsmith_f_op_f32(var_0.c.x * var_1.a.x))), _wgslsmith_f_op_f32(-174f + _wgslsmith_f_op_f32(-var_0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(375f, var_0.c.x))), _wgslsmith_dot_vec2_u32(vec2<u32>(17948u, var_0.a.c), vec2<u32>(100u, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(arg_0, arg_0), 42101u))), !(!global0.x), any(vec4<bool>(false, !all(vec4<bool>(var_1.c, false, global0.x, var_0.a.d.x)), true, !(!var_0.a.a))));
    return Struct_4(var_2.a, _wgslsmith_mod_u32(var_2.b, 16554u), arg_2.a.x, var_1.c & global0.x);
}

fn func_5(arg_0: Struct_4) -> Struct_2 {
    var var_0 = !(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x - -226f)) == arg_0.a.x));
    var var_1 = Struct_5(40659i, _wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(-2147483647i, 2147483647i, u_input.b.x) & reverseBits(u_input.b)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, -u_input.b.x), ~u_input.b)));
    global0 = vec3<bool>(false, arg_0.d, func_4(u_input.a, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(arg_0.a.x + 1447f), -1878f, _wgslsmith_div_f32(arg_0.a.x, 240f), arg_0.a.x))), Struct_3(vec3<bool>(true, arg_0.d, true), Struct_1(true, _wgslsmith_div_vec3_i32(u_input.b, vec3<i32>(var_1.b.x, u_input.b.x, var_1.a)), firstLeadingBit(arg_0.b), select(vec3<bool>(true, arg_0.c, global0.x), vec3<bool>(true, false, true), vec3<bool>(false, arg_0.c, true))), Struct_1(global0.x, vec3<i32>(0i, var_1.a, u_input.b.x) << (vec3<u32>(u_input.a.x, 1u, arg_0.b) % vec3<u32>(32u)), arg_0.b, !vec3<bool>(arg_0.d, false, global0.x)))).c);
    let var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(440f)), -251f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-246f - arg_0.a.x)), arg_0.a.x) * _wgslsmith_f_op_vec4_f32(func_3(Struct_2(Struct_1(global0.x, vec3<i32>(1i, 1217i, 0i), 37134u, vec3<bool>(arg_0.d, false, arg_0.c)), Struct_1(arg_0.c, vec3<i32>(2147483647i, 2147483647i, -11598i), 91401u, vec3<bool>(true, true, true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-496f, arg_0.a.x, arg_0.a.x) - arg_0.a.zyw), Struct_1(arg_0.d, u_input.b, u_input.a.x, vec3<bool>(true, global0.x, false)))))), 354u, !arg_0.c, func_4(countOneBits(vec2<u32>(_wgslsmith_clamp_u32(arg_0.b, 0u, 67560u), ~1u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(294f, arg_0.a.x, -257f, arg_0.a.x)))) - vec4<f32>(1676f, _wgslsmith_div_f32(arg_0.a.x, arg_0.a.x), -709f, 1427f)), Struct_3(select(vec3<bool>(global0.x, arg_0.c, false), vec3<bool>(arg_0.d, arg_0.c, global0.x), true), Struct_1(!arg_0.d, ~var_1.b, arg_0.b, select(vec3<bool>(true, true, global0.x), vec3<bool>(arg_0.c, arg_0.d, arg_0.c), true)), Struct_1(true, ~vec3<i32>(-2147483647i, -1i, -2147483647i), u_input.a.x, vec3<bool>(arg_0.c, arg_0.d, arg_0.c)))).c);
    let var_3 = !select(!vec3<bool>(-27958i != u_input.b.x, var_2.c, true), select(!select(vec3<bool>(global0.x, var_2.c, var_2.c), vec3<bool>(true, false, false), true), !(!vec3<bool>(false, false, global0.x)), !vec3<bool>(true, true, arg_0.d)), select(vec3<bool>(false & global0.x, false, arg_0.b < var_2.b), select(vec3<bool>(true, true, false), !vec3<bool>(false, var_2.d, var_2.d), global0.x | false), select(select(vec3<bool>(false, false, true), vec3<bool>(true, arg_0.d, var_2.d), true), vec3<bool>(true, true, true), !vec3<bool>(true, global0.x, false))));
    return Struct_2(Struct_1(select(var_3.x, true, any(select(vec4<bool>(true, var_3.x, global0.x, var_3.x), vec4<bool>(global0.x, false, var_2.c, false), false))), -(~(-vec3<i32>(u_input.b.x, 276i, -105445i))), ~((4294967295u ^ var_2.b) & 4294967295u), vec3<bool>(true, _wgslsmith_f_op_f32(-var_2.a.x) <= _wgslsmith_f_op_f32(-540f * -790f), var_3.x)), Struct_1(true, -_wgslsmith_clamp_vec3_i32(var_1.b, ~vec3<i32>(var_1.a, -1i, -22192i), var_1.b), _wgslsmith_div_u32(1u, ~u_input.a.x), vec3<bool>(false, var_2.b < ~arg_0.b, _wgslsmith_f_op_f32(f32(-1f) * -1719f) > arg_0.a.x)), _wgslsmith_f_op_vec3_f32(arg_0.a.xzw + _wgslsmith_f_op_vec3_f32(trunc(var_2.a.zyy))), Struct_1(any(global0.xz), vec3<i32>(~max(1i, 22154i), 1i, -42605i), 75009u, select(select(vec3<bool>(arg_0.d, var_2.d, global0.x), vec3<bool>(true, true, true), any(var_3)), select(select(vec3<bool>(true, true, var_3.x), var_3, global0.x), select(vec3<bool>(arg_0.c, false, true), var_3, vec3<bool>(false, arg_0.c, arg_0.c)), !vec3<bool>(false, false, global0.x)), false)));
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = false;
    let var_1 = global0.x;
    let var_2 = func_5(func_4(~firstLeadingBit(~u_input.a), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(step(625f, -1157f)), _wgslsmith_f_op_f32(max(-1303f, -453f)), _wgslsmith_f_op_vec4_f32(func_3(Struct_2(Struct_1(global0.x, u_input.b, 0u, vec3<bool>(true, true, var_0)), Struct_1(var_0, vec3<i32>(81412i, 2147483647i, -18644i), 86122u, vec3<bool>(var_0, global0.x, true)), vec3<f32>(-1498f, -212f, -1000f), Struct_1(false, vec3<i32>(-2147483647i, u_input.b.x, 22098i), u_input.a.x, vec3<bool>(true, false, false))))).x))), Struct_3(select(!vec3<bool>(var_0, global0.x, global0.x), !vec3<bool>(global0.x, var_0, false), !global0.x), Struct_1(var_0, _wgslsmith_div_vec3_i32(u_input.b, vec3<i32>(arg_0, 2147483647i, u_input.b.x)), _wgslsmith_clamp_u32(u_input.a.x, 1u, 56570u), vec3<bool>(true, true, true)), Struct_1(!global0.x, -vec3<i32>(arg_0, u_input.b.x, 4507i), ~70921u, vec3<bool>(true, true, true)))));
    global1 = ~max(~(var_2.b.c & 47936u), 1u) & _wgslsmith_clamp_u32(~reverseBits(select(4294967295u, var_2.b.c, true)), ~(~(~1u)), 1u);
    global0 = var_2.b.d;
    return Struct_1(false, u_input.b, countOneBits(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 79001u, 4294967295u), vec3<u32>(var_2.d.c, var_2.a.c, 43641u)))) << (_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_2.b.c, 4294967295u), vec2<u32>(1u, 12997u)), _wgslsmith_sub_vec2_u32(vec2<u32>(69014u, 4294967295u), u_input.a)), 0u) % 32u), select(!select(vec3<bool>(true, true, var_0), !vec3<bool>(var_2.b.a, false, true), var_2.a.d), !select(!vec3<bool>(true, global0.x, global0.x), var_2.b.d, !global0.x), !select(vec3<bool>(global0.x, var_2.b.d.x, false), var_2.a.d, select(var_2.d.d, vec3<bool>(true, false, true), vec3<bool>(global0.x, global0.x, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-687f + _wgslsmith_f_op_f32(f32(-1f) * -279f)));
    let var_1 = func_1(u_input.b.x);
    let var_2 = firstTrailingBit(select(min(vec4<i32>(u_input.b.x, u_input.b.x, 1i, 51218i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, u_input.b.x), vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, var_1.b.x))), -vec4<i32>(-2147483647i, u_input.b.x, 2147483647i, u_input.b.x), vec4<bool>(true, false, !global0.x, global0.x)) & (vec4<i32>(0i, _wgslsmith_sub_i32(var_1.b.x, u_input.b.x), ~0i, 0i) >> (vec4<u32>(68295u, u_input.a.x, ~u_input.a.x, ~var_1.c) % vec4<u32>(32u))));
    let var_3 = Struct_1(global0.x && true, ~vec3<i32>(22523i, _wgslsmith_div_i32(-29815i, ~var_2.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.b.x), var_2.xw)), var_1.c, func_5(Struct_4(vec4<f32>(1f, 1f, 1f, 1f), u_input.a.x, global0.x, true)).a.d);
    let var_4 = var_2;
    let var_5 = _wgslsmith_f_op_f32(1182f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(func_5(Struct_4(vec4<f32>(1140f, -1250f, -1486f, -1347f), 0u, var_3.a, true)))).x - _wgslsmith_div_f32(484f, -1057f))));
    var var_6 = u_input.a.x;
    var var_7 = Struct_3(vec3<bool>(any(!(!vec3<bool>(global0.x, var_3.d.x, true))), var_1.a || (-var_1.b.x == 0i), var_3.a), func_1(-_wgslsmith_sub_i32(u_input.b.x | -6521i, min(2147483647i, var_1.b.x))), Struct_1(all(global0.yz), select(abs(var_2.yzy), u_input.b, !vec3<bool>(global0.x, var_1.a, true)), _wgslsmith_div_u32(max(u_input.a.x, abs(var_3.c)), min(var_3.c, _wgslsmith_mod_u32(var_1.c, var_1.c))), select(vec3<bool>(all(vec4<bool>(false, var_3.d.x, global0.x, var_1.d.x)), !var_1.a, true), vec3<bool>(true, true, true), var_1.a)));
    var_0 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(~select(select(vec4<u32>(u_input.a.x, 69557u, 59501u, 0u), vec4<u32>(1u, var_7.c.c, 35617u, u_input.a.x), vec4<bool>(var_3.a, var_1.d.x, true, true)), _wgslsmith_add_vec4_u32(vec4<u32>(26854u, 3318u, var_1.c, 15944u), vec4<u32>(var_7.b.c, var_7.b.c, var_1.c, 9765u)), !vec4<bool>(true, true, var_7.b.d.x, global0.x)) << (min(~(~vec4<u32>(51655u, var_3.c, 38876u, u_input.a.x)), ~(~vec4<u32>(59261u, 19421u, var_1.c, var_7.b.c))) % vec4<u32>(32u)), u_input.b);
}

