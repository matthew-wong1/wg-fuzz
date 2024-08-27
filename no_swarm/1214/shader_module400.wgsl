struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: bool,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec2<f32>, 17> = array<vec2<f32>, 17>(vec2<f32>(-1183f, -509f), vec2<f32>(827f, 1121f), vec2<f32>(318f, 1034f), vec2<f32>(1000f, 994f), vec2<f32>(607f, 209f), vec2<f32>(-899f, -239f), vec2<f32>(1224f, 1622f), vec2<f32>(-889f, -460f), vec2<f32>(605f, -651f), vec2<f32>(-373f, -1000f), vec2<f32>(-275f, 1475f), vec2<f32>(2236f, 325f), vec2<f32>(-892f, -249f), vec2<f32>(-347f, 593f), vec2<f32>(195f, -1000f), vec2<f32>(1000f, 283f), vec2<f32>(-190f, 1287f));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: Struct_2) -> vec2<bool> {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-352f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1231f, _wgslsmith_f_op_f32(f32(-1f) * -2321f), true)))) <= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-136f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1551f - 1270f)) * 1f)));
    var var_0 = arg_2;
    let var_1 = arg_2;
    var_0 = var_1;
    global1 = array<vec2<f32>, 17>();
    return arg_2.a.b.xx;
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    global1 = array<vec2<f32>, 17>();
    let var_0 = !select(!(!func_3(arg_0, vec3<u32>(u_input.a, u_input.c, 4294967295u), Struct_2(Struct_1(vec3<u32>(1u, 0u, 1u), vec3<bool>(true, true, true), true, vec4<i32>(2147483647i, -9652i, 7575i, u_input.d.x), vec4<u32>(u_input.a, 4294967295u, 56928u, u_input.c))))), select(!select(vec2<bool>(false, false), vec2<bool>(false, false), false), !func_3(arg_0, vec3<u32>(u_input.c, u_input.a, u_input.a), Struct_2(Struct_1(vec3<u32>(8872u, 9828u, u_input.a), vec3<bool>(false, true, false), false, vec4<i32>(arg_0.x, -28244i, -48224i, 2147483647i), vec4<u32>(4294967295u, u_input.c, 45738u, u_input.c)))), vec2<bool>(any(vec3<bool>(false, false, true)), true)), !select(select(vec2<bool>(false, true), vec2<bool>(false, false), true), select(vec2<bool>(false, true), vec2<bool>(true, false), false), true));
    let var_1 = Struct_3(min(-1i, arg_0.x) >> (~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.a, u_input.c, 80896u, u_input.c)), ~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.c)) % 32u), vec4<u32>(0u, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(u_input.a, u_input.c)), vec2<u32>(14274u, u_input.a)) << (62403u % 32u), 1u, 88967u), Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(~u_input.a, ~745u, ~69010u), vec3<u32>(_wgslsmith_sub_u32(1u, u_input.c), u_input.a, ~19553u)), vec3<bool>(any(vec2<bool>(true, true)), var_0.x, false), true, ~vec4<i32>(3993i >> (u_input.c % 32u), u_input.d.x << (0u % 32u), _wgslsmith_mod_i32(arg_0.x, 2147483647i), firstLeadingBit(u_input.b)), _wgslsmith_div_vec4_u32(abs(vec4<u32>(47106u, 11124u, u_input.a, 49858u)), vec4<u32>(4294967295u, u_input.a, u_input.c, 36746u)) ^ vec4<u32>(u_input.a, _wgslsmith_div_u32(1u, 4294967295u), _wgslsmith_mod_u32(u_input.c, 0u), abs(0u))), Struct_2(Struct_1(~(~vec3<u32>(u_input.a, u_input.c, 75183u)), select(vec3<bool>(false, false, false), vec3<bool>(var_0.x, false, false), true), !any(vec3<bool>(false, true, var_0.x)), abs(-vec4<i32>(-11192i, u_input.d.x, -3365i, u_input.d.x)), reverseBits(vec4<u32>(4294967295u, 11306u, u_input.a, 33092u)))));
    let var_2 = var_1.d;
    global0 = all(var_1.d.a.b.yy);
    return Struct_1(var_2.a.a, !vec3<bool>(var_1.c.c, var_2.a.c, var_0.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(2003f, -290f, all(vec4<bool>(false, var_1.d.a.b.x, var_0.x, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1704f))), true)) <= _wgslsmith_f_op_f32(max(-1030f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1535f - -298f) * _wgslsmith_f_op_f32(select(549f, 2040f, var_0.x))))), vec4<i32>(_wgslsmith_mult_i32(~(-1i), ~_wgslsmith_sub_i32(-42935i, var_1.a)), -firstLeadingBit(var_2.a.d.x), var_2.a.d.x, arg_0.x), ~(~(~var_1.c.e)) | vec4<u32>(~2608u, ~var_1.c.e.x, 9681u, firstTrailingBit(_wgslsmith_clamp_u32(1u, 26103u, 97818u))));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec3<u32>) -> vec3<i32> {
    var var_0 = Struct_3(-(i32(-1i) * -countOneBits(0i)), _wgslsmith_mult_vec4_u32(func_2(~vec3<i32>(arg_1.d.x, -2147483647i, arg_0)).e, (~arg_1.e | _wgslsmith_add_vec4_u32(vec4<u32>(13131u, 15433u, arg_3.x, arg_2.x), arg_1.e)) & arg_1.e), func_2(reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, arg_0, -13779i), arg_1.d.zxz)) | arg_1.d.yzx), Struct_2(Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_2.x, 60581u, 1u), vec3<u32>(15059u, 39952u, arg_2.x)), select(!vec3<bool>(true, true, arg_1.b.x), arg_1.b, arg_1.b), arg_1.c, ~arg_1.d, ~arg_1.e << (~vec4<u32>(u_input.c, arg_2.x, 2379u, 1u) % vec4<u32>(32u)))));
    let var_1 = Struct_3(-2147483647i, select(reverseBits(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a.x, 4294967295u, arg_2.x, var_0.b.x), vec4<u32>(arg_3.x, var_0.d.a.e.x, var_0.b.x, 1u)), ~var_0.c.e.x, 52087u >> (arg_1.a.x % 32u), arg_2.x)), vec4<u32>(23204u, arg_3.x << (arg_1.a.x % 32u), var_0.c.a.x, var_0.d.a.e.x), select(vec4<bool>(func_3(vec3<i32>(2147483647i, arg_1.d.x, 20785i), vec3<u32>(var_0.b.x, 4294967295u, u_input.c), var_0.d).x, all(arg_1.b.xz), true, select(false, var_0.c.c, var_0.c.b.x)), select(!vec4<bool>(var_0.c.c, var_0.c.c, arg_1.b.x, false), !vec4<bool>(var_0.d.a.b.x, false, arg_1.b.x, false), select(vec4<bool>(arg_1.b.x, false, var_0.d.a.c, arg_1.b.x), vec4<bool>(arg_1.b.x, false, arg_1.c, true), vec4<bool>(arg_1.c, arg_1.c, arg_1.c, true))), var_0.d.a.b.x)), var_0.d.a, var_0.d);
    let var_2 = Struct_3(select(u_input.d.x >> (func_2(-vec3<i32>(var_0.d.a.d.x, var_1.c.d.x, 25209i)).e.x % 32u), abs(var_0.c.d.x), func_3(select(var_0.d.a.d.xwy, -var_1.c.d.xyw, false), func_2(arg_1.d.xww).a, Struct_2(Struct_1(vec3<u32>(0u, arg_2.x, 22451u), var_0.c.b, true, var_0.c.d, arg_1.e))).x), ~(~(~vec4<u32>(var_0.b.x, arg_1.e.x, arg_2.x, arg_3.x))), var_1.d.a, Struct_2(func_2(arg_1.d.yzx)));
    global1 = array<vec2<f32>, 17>();
    global0 = false;
    return -vec3<i32>(-2147483647i, _wgslsmith_mult_i32(62133i, u_input.d.x), _wgslsmith_add_i32(_wgslsmith_mod_i32(var_0.a, 42808i >> (0u % 32u)), firstTrailingBit(1i)));
}

fn func_1(arg_0: Struct_3, arg_1: f32, arg_2: bool, arg_3: Struct_1) -> u32 {
    var var_0 = ~select(vec3<i32>(1i, 0i, -31501i), func_4(2147483647i, func_2(arg_0.c.d.xxx ^ arg_3.d.zyy), min(vec2<u32>(1u, u_input.c), abs(vec2<u32>(arg_3.e.x, arg_0.b.x))), ~(~arg_3.a)), false);
    var var_1 = arg_1;
    global0 = false;
    global0 = false;
    var_0 = max(-arg_3.d.wwx, arg_3.d.yzz);
    return 1u;
}

fn func_5(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = ~vec3<u32>(~(~countOneBits(u_input.c)), ~(~4294967295u), abs(~u_input.a) ^ arg_0.x);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(748f, _wgslsmith_f_op_f32(abs(-1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(715f + 1702f))))), _wgslsmith_f_op_f32(f32(-1f) * -921f), 1680f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(772f, _wgslsmith_f_op_f32(-1531f + _wgslsmith_f_op_f32(f32(-1f) * -1021f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1453f))));
    let var_2 = Struct_3(-73221i, _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, select(~12817u, _wgslsmith_dot_vec4_u32(arg_0, vec4<u32>(arg_0.x, 17752u, 4294967295u, 0u)), true), countOneBits(u_input.a ^ 0u), 42182u), ~(~countOneBits(vec4<u32>(var_0.x, var_0.x, 2583u, arg_0.x)))), func_2(abs(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d.x, u_input.b, -43239i), vec3<i32>(-21976i, u_input.d.x, -29153i)) | (vec3<i32>(0i, u_input.b, -1i) >> (vec3<u32>(arg_0.x, arg_0.x, var_0.x) % vec3<u32>(32u))))), Struct_2(Struct_1(vec3<u32>(_wgslsmith_dot_vec2_u32(arg_0.xy, vec2<u32>(arg_0.x, u_input.c)), 58737u, ~1u), !func_2(vec3<i32>(u_input.d.x, -20051i, -1i)).b, (u_input.a > 0u) | false, abs(vec4<i32>(-1i, 10453i, u_input.d.x, 0i)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 42172u, u_input.a, 4966u), vec4<u32>(arg_0.x, u_input.c, 4294967295u, var_0.x)))));
    let var_3 = Struct_1(arg_0.zwy, !func_2(var_2.c.d.xxw).b, func_2(max(-var_2.d.a.d.yyy, vec3<i32>(var_2.c.d.x, -18271i, 0i))).a.x < arg_0.x, _wgslsmith_mult_vec4_i32(vec4<i32>(func_2(func_4(u_input.d.x, var_2.c, var_0.xy, arg_0.wxw)).d.x, _wgslsmith_dot_vec2_i32(-u_input.d, vec2<i32>(u_input.d.x, -8614i) >> (var_2.d.a.e.wz % vec2<u32>(32u))), var_2.c.d.x, 1i), (_wgslsmith_mult_vec4_i32(var_2.d.a.d, var_2.c.d) ^ var_2.c.d) << (firstTrailingBit(vec4<u32>(7401u, 12427u, 45576u, u_input.c)) % vec4<u32>(32u))), vec4<u32>(~arg_0.x, 1u, 44599u, _wgslsmith_mod_u32(var_0.x, countOneBits(1u))));
    var var_4 = var_2;
    return Struct_1(firstTrailingBit(vec3<u32>(func_1(Struct_3(2270i, var_3.e, var_4.c, var_2.d), _wgslsmith_f_op_f32(select(-1627f, 1015f, var_3.b.x)), true, var_3), 45686u, ~abs(var_4.b.x))), select(select(vec3<bool>(false, false, true), var_2.c.b, false), select(vec3<bool>(false, func_3(vec3<i32>(2147483647i, u_input.d.x, -2147483647i), vec3<u32>(var_4.d.a.e.x, 1u, 0u), var_4.d).x, all(vec4<bool>(true, var_3.b.x, var_4.d.a.b.x, var_3.c))), var_2.d.a.b, vec3<bool>(func_2(vec3<i32>(var_4.a, var_4.a, 0i)).b.x, func_3(var_3.d.xwy, vec3<u32>(39595u, var_4.d.a.a.x, 63207u), var_2.d).x, var_2.c.a.x > arg_0.x)), vec3<bool>(!all(vec2<bool>(var_3.b.x, var_4.c.c)), all(func_2(var_3.d.wwy).b.zz), (var_4.c.b.x && true) | false)), select(!var_2.d.a.c, var_2.d.a.c, true), vec4<i32>(var_3.d.x, _wgslsmith_sub_i32(var_4.d.a.d.x, -u_input.b) << (abs(var_2.c.e.x) % 32u), -20922i, u_input.b & var_2.c.d.x), abs(_wgslsmith_clamp_vec4_u32(var_4.d.a.e, arg_0 ^ var_3.e, ~vec4<u32>(var_2.c.e.x, 4294967295u, var_2.d.a.a.x, arg_0.x) ^ vec4<u32>(4294967295u, u_input.c, 1u, var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a, u_input.c, u_input.a, 47967u) >> (~vec4<u32>(4294967295u, 48320u, u_input.a, u_input.c) % vec4<u32>(32u)), vec4<u32>(abs(56539u), _wgslsmith_div_u32(u_input.c, 61046u), _wgslsmith_mult_u32(30767u, 53803u), func_1(Struct_3(-2147483647i, vec4<u32>(0u, 7021u, 33671u, u_input.a), Struct_1(vec3<u32>(4294967295u, 32327u, u_input.a), vec3<bool>(true, false, true), false, vec4<i32>(u_input.d.x, 31370i, -18720i, u_input.d.x), vec4<u32>(4294967295u, u_input.c, 77298u, u_input.c)), Struct_2(Struct_1(vec3<u32>(211u, 9326u, 4294967295u), vec3<bool>(false, true, true), true, vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, -15105i), vec4<u32>(u_input.a, 4294967295u, 44196u, 32098u)))), -104f, false, Struct_1(vec3<u32>(u_input.c, u_input.a, 1u), vec3<bool>(false, false, false), true, vec4<i32>(2147483647i, 12913i, -3007i, -19960i), vec4<u32>(u_input.c, u_input.a, u_input.a, 1u))))) >> (_wgslsmith_mult_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 33949u, u_input.a, 86807u), vec4<u32>(u_input.a, 36758u, u_input.a, u_input.c)), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 1u, u_input.c, u_input.a), vec4<u32>(u_input.c, u_input.c, u_input.c, 57330u)), ~vec4<u32>(382u, u_input.a, u_input.a, 19664u))) % vec4<u32>(32u)));
    let var_1 = var_0.d.x ^ ~19136i;
    var var_2 = -64998i;
    global0 = var_0.c & var_0.b.x;
    global0 = var_0.b.x;
    var var_3 = Struct_2(func_2(var_0.d.wxw));
    var var_4 = Struct_3(-2147483647i, var_3.a.e << (_wgslsmith_add_vec4_u32(vec4<u32>(func_2(var_0.d.yxz).e.x, select(11488u, 1u, false), firstLeadingBit(var_0.e.x), ~var_0.a.x), ~var_3.a.e) % vec4<u32>(32u)), func_2(-vec3<i32>(u_input.b, _wgslsmith_mod_i32(var_3.a.d.x, u_input.d.x), 223i)), Struct_2(var_3.a));
    let var_5 = max(vec4<i32>(u_input.d.x, -func_4(u_input.b, Struct_1(var_3.a.e.ywy, var_0.b, true, vec4<i32>(-1i, var_1, -23248i, var_1), var_0.e), vec2<u32>(0u, var_4.d.a.a.x), vec3<u32>(4294967295u, 34471u, 4294967295u)).x, u_input.d.x, i32(-1i) * -2147483647i) >> (var_3.a.e % vec4<u32>(32u)), vec4<i32>(-(~u_input.d.x), 2147483647i, func_5(select(countOneBits(var_3.a.e), _wgslsmith_mod_vec4_u32(var_0.e, vec4<u32>(var_4.c.a.x, 42656u, 1u, 4294967295u)), vec4<bool>(false, var_3.a.c, true, false))).d.x, i32(-1i) * -15665i));
    let var_6 = ~var_3.a.e.xxz;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, var_0.e, _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, 409f, -1364f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-870f, 220f, 1386f), vec3<f32>(-103f, 897f, 699f)))), vec3<f32>(902f, _wgslsmith_f_op_f32(-1466f * _wgslsmith_f_op_f32(-1343f + -475f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1179f, -422f))))), ~abs(min(~vec4<u32>(4294967295u, 16363u, var_4.d.a.a.x, 1u), vec4<u32>(8145u, 17657u, 4294967295u, 4294967295u))), 88264u);
}

