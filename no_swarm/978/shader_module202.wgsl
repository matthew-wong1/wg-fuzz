struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-1000f, 516f);

var<private> global1: f32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    var var_0 = Struct_1(-1i, _wgslsmith_div_f32(-1554f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(289f * _wgslsmith_f_op_f32(-arg_1.e)))), false, 2147483647i, -186f);
    var var_1 = all(!vec3<bool>(true, !arg_1.c, all(select(vec4<bool>(true, arg_0.c, var_0.c, arg_1.c), vec4<bool>(arg_0.c, true, arg_0.c, var_0.c), arg_2.c))));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.e * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1480f)) - _wgslsmith_f_op_f32(round(arg_1.b))), _wgslsmith_f_op_f32(arg_0.b + -1933f)))) + arg_1.b);
    var var_2 = Struct_2(arg_2, Struct_1(-u_input.d, global0.x, false, _wgslsmith_mod_i32(-1i, _wgslsmith_div_i32(u_input.d, _wgslsmith_mult_i32(arg_1.a, 13899i))), 1000f));
    var var_3 = _wgslsmith_dot_vec3_u32(vec3<u32>(~_wgslsmith_add_u32(u_input.e.x, ~u_input.e.x), u_input.e.x, abs(~u_input.b)), u_input.e.xwx);
    return ~(-1i);
}

fn func_3(arg_0: Struct_1) -> Struct_2 {
    var var_0 = u_input.c.zx;
    let var_1 = ~u_input.e.zz;
    let var_2 = -23462i;
    var_0 = countOneBits(-(~firstLeadingBit(vec2<i32>(u_input.a, u_input.a))));
    var var_3 = var_1.x;
    return Struct_2(arg_0, Struct_1(countOneBits(0i), 1443f, select(all(!vec4<bool>(arg_0.c, arg_0.c, false, arg_0.c)), !arg_0.c, 2147483647i >= (81731i ^ var_0.x)), max(arg_0.a, -2147483647i), -1086f));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2) -> vec2<u32> {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-382f - _wgslsmith_f_op_f32(f32(-1f) * -1625f)), _wgslsmith_f_op_f32(-arg_1.a.e)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.a.b, global0.x), vec2<f32>(-862f, -274f), arg_1.b.c))) + vec2<f32>(_wgslsmith_f_op_f32(ceil(-1346f)), _wgslsmith_div_f32(global0.x, global0.x))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) - vec2<f32>(757f, -173f)) + vec2<f32>(330f, arg_1.a.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(343f, arg_1.a.b)) - vec2<f32>(global0.x, global0.x)), !(!vec2<bool>(false, arg_1.b.c))))));
    global1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(210f * 1000f))))))));
    let var_0 = _wgslsmith_add_u32(71409u, ~_wgslsmith_clamp_u32(select(~1u, max(32648u, u_input.b), arg_1.b.c && arg_1.b.c), 27367u, ~reverseBits(5943u)));
    let var_1 = arg_1.b;
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(498f, _wgslsmith_f_op_f32(floor(583f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1062f, arg_1.a.e)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, arg_1.b.e) - vec2<f32>(var_1.b, global0.x)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.x, 1270f), vec2<f32>(arg_1.a.e, -682f), var_1.c))) * vec2<f32>(_wgslsmith_f_op_f32(-var_1.e), _wgslsmith_div_f32(var_1.b, arg_1.a.b))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_1.b.b)), _wgslsmith_f_op_f32(max(1185f, var_1.e))))));
    return vec2<u32>(_wgslsmith_mult_u32(u_input.b & ~1u, 83010u ^ min(u_input.e.x, 4294967295u)) & var_0, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.e.zz, vec2<u32>(30752u, 722u)), select(u_input.e.zz, vec2<u32>(50035u, var_0), true))), ~u_input.e.xz));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = global0.x;
    let var_2 = _wgslsmith_f_op_f32(var_0.b - var_0.e);
    let var_3 = max(u_input.e.yw, func_4((vec3<i32>(u_input.c.x, -1i, arg_0.d) >> (vec3<u32>(u_input.b, 9510u, u_input.e.x) % vec3<u32>(32u))) & vec3<i32>(1i, 0i, u_input.c.x), func_3(Struct_1(func_2(Struct_1(u_input.d, -428f, true, -15185i, -686f), Struct_1(-1493i, -908f, false, arg_0.a, arg_0.e), arg_0), var_0.e, false, arg_0.d, arg_0.e))));
    return var_0;
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    global0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b), global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1996f)))));
    let var_0 = func_3(func_3(func_1(arg_1)).b).a;
    global1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.e))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(arg_1.e)))), false));
    global1 = func_1(arg_1).b;
    var var_1 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.e, 634f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_1.b, arg_1.e))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.e, -1573f))))))));
    return Struct_1(-((-2147483647i << (u_input.b % 32u)) & -6221i), -810f, true, func_2(Struct_1(var_0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global0.x)), -575f), all(select(vec2<bool>(var_0.c, arg_1.c), vec2<bool>(true, arg_1.c), arg_1.c)), -1167i << (abs(u_input.b) % 32u), var_1.x), func_3(arg_1).a, Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2, var_0.a, 2147483647i, var_0.a), reverseBits(vec4<i32>(arg_1.d, 47684i, 1i, 2147483647i))), _wgslsmith_f_op_f32(-1322f + 1499f), arg_1.c, -31486i, _wgslsmith_f_op_f32(-global0.x))), -1003f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.b, min(_wgslsmith_sub_u32(u_input.e.x & u_input.b, 28821u), abs(55463u ^ u_input.e.x))), ~u_input.b);
    var var_1 = Struct_2(func_5(true, func_1(Struct_1(abs(-1i), _wgslsmith_f_op_f32(-334f - global0.x), false, reverseBits(u_input.a), 162f)), -21996i), func_5(true && any(vec2<bool>(true, true)), func_5(all(select(vec2<bool>(true, false), vec2<bool>(true, false), false)), Struct_1(-u_input.c.x, _wgslsmith_f_op_f32(global0.x * -506f), u_input.b >= u_input.e.x, u_input.c.x >> (u_input.e.x % 32u), _wgslsmith_f_op_f32(trunc(-691f))), func_1(Struct_1(u_input.d, -976f, true, 26567i, global0.x)).d | u_input.d), u_input.d));
    var_0 = u_input.b;
    let var_2 = func_3(Struct_1(-u_input.c.x, global0.x, any(vec2<bool>(false, true)), min(u_input.a ^ firstTrailingBit(u_input.a), max(-u_input.c.x, _wgslsmith_mod_i32(u_input.c.x, u_input.a))), _wgslsmith_f_op_f32(1f * -669f)));
    var_1 = Struct_2(Struct_1(_wgslsmith_div_i32(u_input.d, reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, var_1.a.a, 5889i, var_2.a.a), vec4<i32>(1i, 0i, var_2.a.d, -10789i)))), 2019f, func_1(var_1.b).c, func_1(func_5(any(vec2<bool>(false, var_1.a.c)), Struct_1(-59296i, var_1.a.b, true, u_input.d, var_1.b.e), firstLeadingBit(20434i))).d, 2133f), func_1(var_2.a));
    let var_3 = vec2<f32>(-854f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-306f * _wgslsmith_f_op_f32(-var_1.b.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.a.e, global0.x)) + _wgslsmith_div_f32(var_2.a.b, 679f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec4_u32(~(u_input.e & vec4<u32>(u_input.b, u_input.e.x, u_input.b, 12227u)), abs(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e.x, 46017u, 41509u, u_input.e.x), vec4<u32>(0u, 1u, 1u, 0u))), ~_wgslsmith_div_vec4_u32(u_input.e, vec4<u32>(u_input.e.x, 2835u, u_input.e.x, 1u))));
}

