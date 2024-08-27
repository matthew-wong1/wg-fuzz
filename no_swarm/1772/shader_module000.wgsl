struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: bool,
    d: vec4<i32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 29>;

var<private> global1: array<vec3<u32>, 24>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_3, arg_1: u32) -> vec2<i32> {
    let var_0 = any(vec3<bool>(true, all(vec3<bool>(true, true, true)), false));
    global1 = array<vec3<u32>, 24>();
    global1 = array<vec3<u32>, 24>();
    var var_1 = global0[_wgslsmith_index_u32(max(u_input.a.x, ~74300u >> (arg_1 % 32u)), 29u)];
    global1 = array<vec3<u32>, 24>();
    return select(-(~_wgslsmith_mod_vec2_i32(select(vec2<i32>(arg_0.b, -1i), vec2<i32>(arg_0.b, 0i), var_0), -vec2<i32>(-22231i, arg_0.b))), ~(~(vec2<i32>(arg_0.b, var_1.b) << (abs(u_input.a) % vec2<u32>(32u)))), select(vec2<bool>(any(select(vec3<bool>(var_0, false, var_0), vec3<bool>(false, var_0, var_0), vec3<bool>(true, var_0, false))), _wgslsmith_f_op_f32(trunc(820f)) == _wgslsmith_f_op_f32(sign(arg_0.a.x))), select(vec2<bool>(true, true), !vec2<bool>(var_0, var_0), !(!vec2<bool>(false, var_0))), any(select(select(vec4<bool>(var_0, true, true, var_0), vec4<bool>(false, var_0, true, var_0), var_0), !vec4<bool>(false, true, var_0, true), !vec4<bool>(false, false, true, var_0)))));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: f32) -> vec2<bool> {
    var var_0 = Struct_1(arg_1.a, arg_1.b, false, vec4<i32>(2147483647i, -1i, -arg_1.b.x, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(arg_1.d, arg_1.d, vec4<i32>(arg_0.x, 1i, arg_1.d.x, -43905i)), -arg_1.d)) >> ((~_wgslsmith_div_vec4_u32(vec4<u32>(37861u, 3774u, u_input.b.x, arg_2.x), vec4<u32>(arg_2.x, 12614u, 32503u, 4294967295u)) << (abs(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 2995u, 74046u, u_input.b.x), vec4<u32>(u_input.a.x, arg_2.x, 0u, u_input.b.x))) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, 245f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-990f)) + _wgslsmith_f_op_f32(-arg_1.a.x)))));
    var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 * 1066f)) * _wgslsmith_f_op_f32(round(-248f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1870f + -1232f))))), select(var_0.b, _wgslsmith_clamp_vec2_i32(select(abs(vec2<i32>(-112696i, 3735i)), -vec2<i32>(-1i, arg_1.b.x), !vec2<bool>(false, var_0.c)), -firstTrailingBit(vec2<i32>(2147483647i, var_0.d.x)), func_3(global0[_wgslsmith_index_u32(~arg_2.x, 29u)], u_input.b.x)), true), true == arg_1.c, _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, arg_1.b.x, -9219i), vec3<i32>(var_0.b.x, arg_1.d.x, var_0.d.x)), ~56593i, firstLeadingBit(arg_1.b.x), countOneBits(arg_0.x)) << (~vec4<u32>(4294967295u, 0u, 0u, 28579u) % vec4<u32>(32u)), ~(var_0.d & var_0.d)), arg_1.e);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, -1164f, arg_1.a.x, arg_3) * vec4<f32>(1527f, arg_3, var_0.e.x, -2593f))))));
    var_0 = arg_1;
    return !vec2<bool>(var_0.c, var_0.c);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: bool, arg_3: vec2<f32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.x, arg_3.x, 1534f) * vec3<f32>(arg_3.x, arg_3.x, arg_3.x)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-607f, -531f, 478f), vec3<f32>(arg_3.x, -1060f, 419f))))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.x, 243f, arg_3.x) + vec3<f32>(arg_3.x, 285f, -1833f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.x, -327f, arg_3.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(465f, 864f, arg_3.x))) + vec3<f32>(_wgslsmith_f_op_f32(abs(557f)), _wgslsmith_f_op_f32(f32(-1f) * -678f), _wgslsmith_f_op_f32(-1294f * arg_3.x))))));
    global0 = array<Struct_3, 29>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 1952f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -177f)))))), (~vec2<i32>(-13518i, 0i) | firstLeadingBit(select(vec2<i32>(-1i, -1i), vec2<i32>(0i, 2147483647i), true))) & vec2<i32>(0i, firstLeadingBit(min(-7843i, 57381i))), true, countOneBits(vec4<i32>(1i, reverseBits(0i) >> (_wgslsmith_mod_u32(16204u, u_input.b.x) % 32u), _wgslsmith_sub_i32(-51228i, _wgslsmith_clamp_i32(-17582i, 2147483647i, 0i)), _wgslsmith_add_i32(60566i, -2147483647i))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 470f, _wgslsmith_f_op_f32(abs(284f))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(arg_3.x - var_0.x), _wgslsmith_f_op_f32(min(-548f, arg_3.x))), vec3<f32>(_wgslsmith_f_op_f32(sign(var_0.x)), 1f, -579f), !arg_2))));
    let var_2 = Struct_2(false, u_input.b, var_1, _wgslsmith_f_op_f32(-arg_3.x));
    var var_3 = var_2;
    return var_1.d.x;
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = Struct_2(arg_1.a, _wgslsmith_add_vec3_u32(~select(u_input.b, vec3<u32>(arg_1.b.x, u_input.a.x, arg_1.b.x), vec3<bool>(true, true, arg_1.c.c)), global1[_wgslsmith_index_u32(u_input.a.x, 24u)]) | ~vec3<u32>(arg_1.b.x, ~0u, u_input.a.x), arg_1.c, 1718f);
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.a.x, var_0.c.a.x)) * -2013f) - arg_3.x)));
    global1 = array<vec3<u32>, 24>();
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(select(arg_2.a.x, 1527f, arg_1.c.c)), _wgslsmith_f_op_f32(f32(-1f) * -932f), _wgslsmith_f_op_f32(136f + arg_3.x)), arg_2.a, any(select(vec3<bool>(true, var_0.c.c, true), vec3<bool>(false, arg_1.a, true), arg_1.a)))))), arg_0);
    var var_3 = var_0.c.c;
    return Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(640f, -643f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.x, -155f) * var_0.c.a))))))), firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(arg_0, var_2.b), max(-1i, var_2.b)), ~firstTrailingBit(var_0.c.d.zx))), !(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.c.e.x - 568f), _wgslsmith_f_op_f32(-arg_2.a.x))) < 1f), vec4<i32>(~var_2.b, -6289i, 40141i, -var_0.c.d.x), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(386f)) + 1674f), _wgslsmith_f_op_f32(-745f + -272f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.d, var_2.a.x, 1020f) - vec3<f32>(var_2.a.x, arg_3.x, -1221f)))))));
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    global1 = array<vec3<u32>, 24>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.e.x, arg_0.e.x));
    global1 = array<vec3<u32>, 24>();
    let var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, arg_0.e.x, var_0)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -731f, var_0, 1000f)))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, _wgslsmith_f_op_f32(abs(var_1.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a) - _wgslsmith_f_op_vec2_f32(-arg_0.a))))));
    return arg_0;
}

fn func_1() -> i32 {
    let var_0 = Struct_2(-62303i == _wgslsmith_mod_i32(1i, _wgslsmith_clamp_i32(19017i, -23305i, 1i)), u_input.b, func_6(func_5(func_4(func_2(vec2<i32>(-30448i, 1i), Struct_1(vec2<f32>(287f, -832f), vec2<i32>(27194i, 1i), true, vec4<i32>(8891i, -2147483647i, 0i, -2147483647i), vec3<f32>(731f, -1230f, 246f)), vec3<u32>(0u, u_input.b.x, u_input.a.x), 468f), vec2<bool>(true, true), true, _wgslsmith_f_op_vec2_f32(vec2<f32>(235f, 1622f) * vec2<f32>(1438f, -325f))), Struct_2(any(vec4<bool>(false, false, true, true)), ~vec3<u32>(4294967295u, u_input.b.x, u_input.a.x), Struct_1(vec2<f32>(537f, 899f), vec2<i32>(-35035i, 2147483647i), false, vec4<i32>(2147483647i, -2147483647i, 17561i, -1i), vec3<f32>(1586f, -137f, 1193f)), 527f), Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1163f, -1040f, 251f)), _wgslsmith_sub_i32(-1i, 22776i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1393f, 1060f, -1866f, 1079f) - vec4<f32>(-266f, -938f, 1000f, 455f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    var var_1 = var_0;
    let var_2 = var_1.b.x;
    let var_3 = ~max(35461u, max(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.b.x, 76185u), vec2<u32>(var_0.b.x, 89539u)), var_1.b.zx), 1u));
    var var_4 = func_6(Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.c.e.yx * vec2<f32>(414f, var_1.c.a.x))))), vec2<i32>(_wgslsmith_add_i32(~(-11746i), var_0.c.d.x), _wgslsmith_mod_i32(var_1.c.b.x, firstTrailingBit(var_0.c.d.x))), false, vec4<i32>(abs(_wgslsmith_mod_i32(var_1.c.d.x, 1i)), func_5(_wgslsmith_dot_vec2_i32(var_1.c.b, vec2<i32>(var_1.c.d.x, -9447i)), var_0, global0[_wgslsmith_index_u32(var_1.b.x, 29u)], vec4<f32>(var_1.d, var_1.d, -1170f, 1443f)).b.x, -43991i, -28021i), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1957f), _wgslsmith_f_op_f32(func_6(Struct_1(vec2<f32>(1948f, var_1.d), var_0.c.b, true, vec4<i32>(2147483647i, var_0.c.b.x, 1i, var_1.c.d.x), vec3<f32>(1833f, 1000f, var_0.c.e.x))).e.x - _wgslsmith_f_op_f32(ceil(-2383f))), 441f)));
    return 88781i;
}

fn func_7(arg_0: i32, arg_1: bool) -> i32 {
    global1 = array<vec3<u32>, 24>();
    var var_0 = Struct_2(all(select(select(vec3<bool>(arg_1, true, arg_1), vec3<bool>(arg_1, true, arg_1), false), select(vec3<bool>(arg_1, true, arg_1), vec3<bool>(false, arg_1, true), vec3<bool>(arg_1, arg_1, true)), vec3<bool>(false, arg_1, false))) && any(select(select(vec4<bool>(arg_1, true, true, arg_1), vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(arg_1, false, arg_1, true)), select(vec4<bool>(false, arg_1, arg_1, true), vec4<bool>(arg_1, arg_1, arg_1, true), false), func_5(arg_0, Struct_2(arg_1, vec3<u32>(u_input.b.x, u_input.b.x, u_input.a.x), Struct_1(vec2<f32>(-1820f, 386f), vec2<i32>(arg_0, 1i), true, vec4<i32>(arg_0, arg_0, -4508i, 1i), vec3<f32>(-357f, 127f, 148f)), -1000f), Struct_3(vec3<f32>(-268f, -264f, 1100f), -6021i), vec4<f32>(-802f, 175f, -1935f, -1111f)).c)), vec3<u32>(~abs(~u_input.b.x), u_input.b.x, u_input.b.x), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1246f * -1288f))), _wgslsmith_f_op_f32(step(-741f, _wgslsmith_f_op_f32(step(-644f, -1298f))))), _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_div_i32(arg_0, arg_0), arg_0 ^ arg_0), max(-vec2<i32>(arg_0, arg_0), vec2<i32>(arg_0, arg_0))), all(vec4<bool>(all(vec3<bool>(true, arg_1, arg_1)), arg_1, true, func_5(2147483647i, Struct_2(false, vec3<u32>(u_input.b.x, 1u, 0u), Struct_1(vec2<f32>(264f, -267f), vec2<i32>(arg_0, arg_0), arg_1, vec4<i32>(-18441i, arg_0, -2147483647i, arg_0), vec3<f32>(-1512f, -1353f, 661f)), 699f), Struct_3(vec3<f32>(1000f, -852f, -241f), arg_0), vec4<f32>(-1000f, -407f, -2010f, 1478f)).c)), -(~vec4<i32>(arg_0, -70914i, 18301i, -12677i)) | vec4<i32>(_wgslsmith_clamp_i32(12096i, arg_0, arg_0), _wgslsmith_mod_i32(arg_0, -1i), arg_0 >> (4294967295u % 32u), arg_0 << (0u % 32u)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(643f, 1944f) * _wgslsmith_f_op_f32(f32(-1f) * -973f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-892f, 1391f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(315f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -341f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2144f))));
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-100f, var_0.d)), _wgslsmith_f_op_f32(max(var_0.c.e.x, 1263f)))))), _wgslsmith_f_op_f32(trunc(1000f))));
    global0 = array<Struct_3, 29>();
    let var_2 = vec2<f32>(871f, var_0.c.e.x);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 29>();
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-231f, 216f, -1372f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(317f, -499f, -866f) + vec3<f32>(197f, 1182f, -592f))) - vec3<f32>(_wgslsmith_f_op_f32(1000f - 253f), _wgslsmith_f_op_f32(round(397f)), _wgslsmith_f_op_f32(358f * 176f))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 718f, 1000f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-970f, 1000f, 686f) * vec3<f32>(1000f, 1000f, 1205f)) - vec3<f32>(-486f, 1172f, -216f)), true))), _wgslsmith_mod_i32(~_wgslsmith_dot_vec3_i32(-vec3<i32>(2147483647i, 2147483647i, 2147483647i), abs(vec3<i32>(20382i, -42145i, -2147483647i))), func_7(~func_1(), true)));
    let var_1 = _wgslsmith_add_vec2_i32(select(vec2<i32>(var_0.b, -(i32(-1i) * -1i)), countOneBits(~(~vec2<i32>(-2147483647i, -41292i))), vec2<bool>(false, (var_0.b != -2147483647i) & all(vec3<bool>(false, false, false)))), vec2<i32>(var_0.b, ~func_5(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b, var_0.b, 2147483647i), vec3<i32>(-1i, var_0.b, var_0.b)), Struct_2(false, vec3<u32>(1u, 4294967295u, 1u), Struct_1(var_0.a.yx, vec2<i32>(var_0.b, -46811i), true, vec4<i32>(var_0.b, 0i, var_0.b, -13889i), vec3<f32>(var_0.a.x, 214f, var_0.a.x)), -979f), global0[_wgslsmith_index_u32(min(52735u, u_input.a.x), 29u)], _wgslsmith_f_op_vec4_f32(vec4<f32>(2957f, var_0.a.x, var_0.a.x, -959f) + vec4<f32>(var_0.a.x, 160f, -169f, var_0.a.x))).b.x));
    let var_2 = global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_mod_u32(~1u, countOneBits((20937u >> (0u % 32u)) & u_input.b.x))), 29u)];
    global1 = array<vec3<u32>, 24>();
    let var_3 = abs(firstLeadingBit(1u)) <= _wgslsmith_div_u32(~(~u_input.b.x) >> (u_input.b.x % 32u), min(u_input.b.x, _wgslsmith_clamp_u32(1450u, u_input.a.x, ~0u)));
    let var_4 = func_6(func_6(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(703f, var_0.a.x) + var_2.a.yx)), -(var_1 & var_1), false, vec4<i32>(-13895i, _wgslsmith_dot_vec4_i32(vec4<i32>(-36263i, 1i, -66860i, var_2.b), vec4<i32>(var_0.b, -2147483647i, -1i, 2147483647i)), ~var_2.b, ~var_0.b), var_0.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(func_5(-27001i, Struct_2(false, u_input.b, var_4, var_2.a.x), Struct_3(var_0.a, 2147483647i), vec4<f32>(-243f, -285f, var_4.a.x, var_2.a.x)).d.xyz, abs(vec3<i32>(var_1.x, -48654i, var_2.b))), firstTrailingBit(12533i >> (0u % 32u))), _wgslsmith_mult_i32(-43687i, ~var_1.x) & ~1i), u_input.b.xz);
}

