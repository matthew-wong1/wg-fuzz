struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 19>;

var<private> global1: array<vec2<f32>, 32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: f32, arg_1: vec4<f32>, arg_2: vec3<i32>, arg_3: vec3<i32>) -> i32 {
    var var_0 = Struct_2(global0[_wgslsmith_index_u32(u_input.b, 19u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.x))) > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1576f, _wgslsmith_div_f32(-934f, arg_1.x))), vec4<i32>(1i, 1i, 5223i, -19743i), u_input.d.yw & arg_3.xx);
    var var_1 = vec2<i32>(2147483647i, ~51559i);
    var var_2 = Struct_1(arg_2.x);
    let var_3 = ~(vec4<u32>(_wgslsmith_mult_u32(min(u_input.b, u_input.b), u_input.b), 1u, _wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.b, u_input.b), _wgslsmith_mult_u32(2923u, u_input.b)), u_input.b) >> (_wgslsmith_add_vec4_u32(abs(min(vec4<u32>(u_input.b, u_input.b, 29347u, u_input.b), vec4<u32>(2298u, u_input.b, 4294967295u, 4294967295u))), ~vec4<u32>(13279u, 1u, 21001u, u_input.b) >> ((vec4<u32>(32508u, 0u, u_input.b, 4294967295u) ^ vec4<u32>(63755u, u_input.b, u_input.b, u_input.b)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_4 = Struct_1(-(min(-15289i, 2175i) & var_1.x) << (u_input.b % 32u));
    return abs(u_input.c);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(u_input.d.x);
    var var_1 = Struct_1(func_3(1f, vec4<f32>(251f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-379f, -1189f)), _wgslsmith_f_op_f32(815f - -1160f))), 1276f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -735f))), u_input.d.wxy, vec3<i32>(~u_input.d.x, 1i, u_input.a)));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1678f, 994f)) * -1077f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1254f), _wgslsmith_f_op_f32(1000f - -262f))), -874f)) * _wgslsmith_div_f32(-984f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1163f, -1267f), -1000f)))));
    let var_3 = Struct_1(-25678i);
    return var_3;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: Struct_2) -> Struct_2 {
    global0 = array<vec2<f32>, 19>();
    var var_0 = ~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(1u, u_input.b, u_input.b) & vec3<u32>(u_input.b, 43657u, u_input.b)), ~vec3<u32>(6151u, u_input.b, 19637u)), vec3<u32>(1u, max(_wgslsmith_sub_u32(u_input.b, u_input.b), u_input.b), ~u_input.b));
    global0 = array<vec2<f32>, 19>();
    let var_1 = ~arg_1.a;
    var var_2 = Struct_1(-18093i);
    return arg_3;
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: vec2<u32>) -> Struct_2 {
    global1 = array<vec2<f32>, 32>();
    var var_0 = arg_0;
    var_0 = arg_0;
    let var_1 = Struct_1(-_wgslsmith_mod_i32(firstTrailingBit(1i), _wgslsmith_dot_vec3_i32(select(vec3<i32>(-2147483647i, -1i, 53257i), vec3<i32>(arg_1, -2147483647i, u_input.c), vec3<bool>(true, arg_0.b, var_0.b)), vec3<i32>(var_0.c.x, var_0.c.x, var_0.d.x))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2201f, var_0.a.x)) * vec2<f32>(_wgslsmith_f_op_f32(arg_0.a.x - -1392f), -756f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(arg_0.a)))), false, ~(-firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d.x, 1i, u_input.a, -22021i), arg_0.c))), u_input.d.yz);
    return Struct_2(global0[_wgslsmith_index_u32(u_input.b, 19u)], var_2.b, vec4<i32>(arg_0.d.x, -(var_0.c.x << (0u % 32u)), _wgslsmith_sub_i32(_wgslsmith_add_i32(-1025i << (0u % 32u), abs(var_0.d.x)), var_0.c.x), -41543i), vec2<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(-var_1.a, var_0.c.x), ~firstTrailingBit(-1i)), _wgslsmith_dot_vec3_i32(vec3<i32>(~29295i, _wgslsmith_mult_i32(arg_0.d.x, 1i), var_0.d.x), _wgslsmith_mult_vec3_i32(abs(arg_0.c.ywy), ~u_input.d.wzy))));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<bool>) -> Struct_2 {
    var var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(arg_0.a.x + func_4(func_4(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-2948f, -1000f))), arg_1, global0[_wgslsmith_index_u32(~(0u ^ u_input.b), 19u)], func_5(arg_0, _wgslsmith_div_i32(var_0.a, 49784i), ~vec2<u32>(u_input.b, 24744u))).a, arg_1, _wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(~u_input.b & max(u_input.b, u_input.b), 19u)] + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(0u, 19u)] - arg_0.a))), func_4(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.x, arg_0.a.x) * vec2<f32>(arg_0.a.x, arg_0.a.x)))), arg_1, vec2<f32>(_wgslsmith_f_op_f32(floor(arg_0.a.x)), -1245f), Struct_2(arg_0.a, false, u_input.d << (vec4<u32>(0u, 45090u, u_input.b, u_input.b) % vec4<u32>(32u)), abs(vec2<i32>(34251i, -2147483647i))))).a.x);
    var var_2 = -17993i;
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(arg_0.a.x + arg_0.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a.x - 1436f), _wgslsmith_f_op_f32(select(-1054f, -345f, false))))), _wgslsmith_div_f32(arg_0.a.x, 163f));
    var_2 = min(-11610i, arg_1.a);
    return Struct_2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.a.x, _wgslsmith_f_op_f32(-1f)), func_4(_wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(u_input.b, 32u)] + _wgslsmith_f_op_vec2_f32(-vec2<f32>(185f, arg_0.a.x))), Struct_1(~(-7336i)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(global1[_wgslsmith_index_u32(81094u, 32u)], vec2<f32>(-1701f, 394f), arg_2.x)))), Struct_2(_wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(u_input.b, 19u)] + vec2<f32>(-831f, var_3.x)), true, vec4<i32>(arg_0.d.x, -2147483647i, arg_0.c.x, -1i), _wgslsmith_div_vec2_i32(vec2<i32>(0i, 2147483647i), u_input.d.wx))).a)), (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)) <= _wgslsmith_f_op_f32(f32(-1f) * -383f)) && arg_0.b, -firstLeadingBit(vec4<i32>(u_input.a, reverseBits(-43231i), ~0i, _wgslsmith_div_i32(-4879i, arg_0.d.x))), vec2<i32>(-_wgslsmith_dot_vec2_i32(abs(vec2<i32>(arg_0.d.x, -18440i)), ~arg_0.c.yw), ~arg_1.a));
}

fn func_7(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool, arg_3: Struct_2) -> Struct_1 {
    var var_0 = arg_0;
    global1 = array<vec2<f32>, 32>();
    global1 = array<vec2<f32>, 32>();
    global1 = array<vec2<f32>, 32>();
    let var_1 = arg_0;
    return Struct_1(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(firstLeadingBit(arg_1.c.x), arg_3.c.x, var_1.a, -5190i)), vec4<i32>(u_input.d.x >> (~0u % 32u), _wgslsmith_dot_vec4_i32(~vec4<i32>(arg_0.a, 11172i, arg_0.a, -15077i), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.a, arg_1.c.x, arg_3.d.x, arg_1.c.x), vec4<i32>(arg_1.d.x, var_0.a, 2147483647i, -40989i), arg_3.c)), 41849i, firstLeadingBit(arg_1.d.x))));
}

fn func_1(arg_0: vec3<u32>, arg_1: u32, arg_2: bool) -> i32 {
    let var_0 = func_7(Struct_1(-u_input.d.x), func_6(func_5(func_4(global0[_wgslsmith_index_u32(u_input.b, 19u)], func_2(), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1453f, 1926f) * vec2<f32>(1000f, -1144f)), Struct_2(vec2<f32>(-966f, 794f), true, vec4<i32>(u_input.a, 1i, -9535i, 29669i), u_input.d.zz)), u_input.a, _wgslsmith_mult_vec2_u32(~arg_0.yx, arg_0.zy >> (vec2<u32>(7544u, u_input.b) % vec2<u32>(32u)))), Struct_1(u_input.a), select(select(select(vec3<bool>(arg_2, true, true), vec3<bool>(arg_2, arg_2, arg_2), false), vec3<bool>(arg_2, true, true), any(vec3<bool>(true, false, false))), !select(vec3<bool>(false, arg_2, false), vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(arg_2, true, true)), true)), arg_2 || false, func_5(Struct_2(_wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(~arg_0.x, 19u)] - _wgslsmith_f_op_vec2_f32(min(global1[_wgslsmith_index_u32(u_input.b, 32u)], vec2<f32>(-1012f, 1636f)))), func_4(vec2<f32>(607f, -140f), func_2(), _wgslsmith_f_op_vec2_f32(-vec2<f32>(575f, -1699f)), Struct_2(global0[_wgslsmith_index_u32(1u, 19u)], arg_2, u_input.d, vec2<i32>(44556i, -1i))).b, u_input.d, func_4(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(208f, -1456f), global0[_wgslsmith_index_u32(47361u, 19u)])), func_2(), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1291f) - global1[_wgslsmith_index_u32(0u, 32u)]), func_5(Struct_2(vec2<f32>(-1219f, -599f), arg_2, u_input.d, u_input.d.yz), u_input.c, vec2<u32>(arg_0.x, arg_1))).c.yx), 2302i, _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(9155u, arg_1), _wgslsmith_mod_u32(arg_0.x, 1u)), arg_0.xx)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1046f + -2271f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(116f + -665f)))), 1699f, _wgslsmith_f_op_f32(f32(-1f) * -530f)));
    global1 = array<vec2<f32>, 32>();
    var var_2 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(var_1.x + func_5(Struct_2(var_1.xx, arg_2, u_input.d, vec2<i32>(var_0.a, var_0.a)), 41677i, arg_0.yz).a.x), -1000f), arg_2, vec4<i32>(func_4(vec2<f32>(_wgslsmith_f_op_f32(823f * var_1.x), var_1.x), Struct_1(var_0.a >> (0u % 32u)), var_1.wz, Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_1.x)), !arg_2, u_input.d, vec2<i32>(-1i, u_input.d.x))).c.x, -33295i, var_0.a, -(u_input.c & u_input.d.x)), vec2<i32>(u_input.d.x, abs(38852i)));
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.a.x, var_2.a.x)))), func_5(func_4(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-629f, 755f))), var_0, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -180f), var_2.a.x), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, 1752f)), true, vec4<i32>(var_2.d.x, 34173i, 13444i, var_0.a) >> (vec4<u32>(arg_1, 37371u, u_input.b, 4294967295u) % vec4<u32>(32u)), -vec2<i32>(0i, var_0.a))), ~_wgslsmith_sub_i32(func_6(Struct_2(global0[_wgslsmith_index_u32(u_input.b, 19u)], arg_2, vec4<i32>(-1i, u_input.d.x, -2147483647i, 0i), var_2.c.zy), var_0, vec3<bool>(var_2.b, false, false)).c.x, ~var_0.a), vec2<u32>(4294967295u, ~arg_1) ^ ~_wgslsmith_mod_vec2_u32(arg_0.yx, arg_0.xy)).a.x));
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.a;
    global1 = array<vec2<f32>, 32>();
    let var_1 = (2147483647i >> (u_input.b % 32u)) | max(min(-1i, i32(-1i) * -7873i), ~func_1(~vec3<u32>(1u, u_input.b, u_input.b), ~u_input.b, true));
    let var_2 = _wgslsmith_clamp_i32(func_7(Struct_1(~(-8002i)), Struct_2(_wgslsmith_f_op_vec2_f32(floor(global1[_wgslsmith_index_u32(1u, 32u)])), -37597i > u_input.c, u_input.d, u_input.d.yx), true, Struct_2(_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(1u, 32u)]), true, ~u_input.d, u_input.d.xy >> (vec2<u32>(29820u, 0u) % vec2<u32>(32u)))).a, i32(-1i) * -38828i, -var_0) & _wgslsmith_sub_i32(select(85559i, var_0, true), -_wgslsmith_dot_vec2_i32(u_input.d.xz & vec2<i32>(6009i, u_input.d.x), _wgslsmith_add_vec2_i32(u_input.d.zx, vec2<i32>(0i, -38726i))));
    global1 = array<vec2<f32>, 32>();
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(570f)), _wgslsmith_f_op_f32(f32(-1f) * -845f))))));
    var var_4 = false;
    let var_5 = u_input.d;
    let var_6 = vec2<bool>(true, true);
    let x = u_input.a;
    s_output = StorageBuffer(max(u_input.b >> (u_input.b % 32u), u_input.b), ~_wgslsmith_dot_vec2_u32(~(vec2<u32>(u_input.b, u_input.b) ^ vec2<u32>(u_input.b, u_input.b)), ~vec2<u32>(u_input.b, 4294967295u) ^ _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(50363u, u_input.b), vec2<u32>(75125u, u_input.b))), 1102f, 4294967295u, 4294967295u);
}

