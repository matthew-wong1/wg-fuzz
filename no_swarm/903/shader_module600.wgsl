struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: vec3<f32>,
    d: vec4<bool>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec3<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec2<i32>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: vec3<i32>, arg_2: vec3<i32>) -> vec4<bool> {
    let var_0 = Struct_3(arg_1.x & -(countOneBits(arg_1.x) << (u_input.b % 32u)), Struct_1(firstTrailingBit(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.b, 1u, u_input.a), vec4<u32>(71368u, u_input.a, 22959u, 48477u)), vec4<u32>(u_input.a, u_input.b, u_input.b, u_input.b) ^ vec4<u32>(u_input.b, 58735u, 1u, u_input.a), firstLeadingBit(vec4<u32>(u_input.a, u_input.b, 1u, 2308u)))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), false)), vec2<bool>(true, true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-140f, 173f, 117f), vec3<f32>(645f, -211f, -956f))))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-683f, 484f, 548f))))), select(vec4<bool>(true, all(vec3<bool>(true, false, true)), true, false), vec4<bool>(true, true, true, true), !any(vec4<bool>(false, false, false, false))), _wgslsmith_div_vec4_i32(vec4<i32>(arg_2.x, 0i, arg_0, -6601i), select(vec4<i32>(6024i, global1.x, arg_0, 2138i), vec4<i32>(arg_2.x, 2147483647i, -2147483647i, 0i), vec4<bool>(true, false, false, false))) | _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, -30068i, -39448i, -19184i), vec4<i32>(arg_2.x, arg_0, 10096i, 33186i), vec4<i32>(-2951i, arg_2.x, -12189i, arg_0))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-182f, -183f, 551f, 2012f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(212f, 792f, 2170f, -311f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(936f, -775f, 303f, -124f) * vec4<f32>(-271f, 307f, 2114f, 1355f)))));
    let var_1 = _wgslsmith_mod_vec2_u32(~vec2<u32>(~(u_input.b ^ 33046u), _wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.a, 39984u), ~57512u)), vec2<u32>(u_input.b, 10854u));
    var var_2 = Struct_4(vec3<i32>(~(-1i), global1.x << (_wgslsmith_mod_u32(u_input.a, u_input.a) % 32u), i32(-1i) * -2583i) ^ vec3<i32>(~1i, ~(-3350i), _wgslsmith_mult_i32(arg_2.x, 971i)), var_0.b.b.x);
    var var_3 = Struct_1(vec4<u32>(~(~4294967295u) >> ((~1u << (firstLeadingBit(var_1.x) % 32u)) % 32u), _wgslsmith_add_u32(abs(u_input.a) << (0u % 32u), 4397u), u_input.a, 4294967295u), !select(var_0.b.d.wz, var_0.b.b, true), var_0.c.zzx, select(!select(select(vec4<bool>(false, var_2.b, var_2.b, true), var_0.b.d, true), vec4<bool>(false, var_2.b, false, false), !var_2.b), var_0.b.d, select(vec4<bool>(var_0.b.d.x && true, true, var_2.b, var_2.b), !select(vec4<bool>(false, var_2.b, var_0.b.b.x, false), vec4<bool>(true, var_0.b.d.x, true, var_2.b), var_0.b.d), var_0.b.d)), var_0.b.e);
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, _wgslsmith_f_op_f32(trunc(var_0.b.c.x)), var_3.c.x)));
    return select(vec4<bool>(!(!var_3.b.x) != ((var_1.x >= var_0.b.a.x) && (var_0.b.a.x < 4294967295u)), var_2.b && false, all(var_0.b.d.xw), !(~12814u <= ~var_0.b.a.x)), var_3.d, true);
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.e.c.x, arg_0.e.c.x, -977f)))) - arg_0.a.c) - arg_0.d.c));
    global1 = vec2<i32>(~4366i, -1i);
    var var_1 = func_3(global1.x, arg_0.d.e.zww, _wgslsmith_mod_vec3_i32(arg_0.e.e.zxz, ~abs(vec3<i32>(-32970i, global1.x, -4340i))) & (~(vec3<i32>(arg_0.d.e.x, arg_0.e.e.x, arg_0.e.e.x) << (arg_0.a.a.yyw % vec3<u32>(32u))) ^ arg_0.a.e.yxz));
    let var_2 = Struct_4(~(~vec3<i32>(_wgslsmith_add_i32(arg_0.a.e.x, global1.x), _wgslsmith_mod_i32(2147483647i, -2147483647i), firstTrailingBit(0i))), true);
    var var_3 = -5353i;
    return arg_0.e;
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_2) -> Struct_4 {
    let var_0 = func_2(arg_1);
    global1 = ~arg_0.xx;
    return Struct_4(max(func_2(arg_1).e.zzw, vec3<i32>(_wgslsmith_sub_i32(max(-2147483647i, var_0.e.x), 2147483647i), 2147483647i | (global1.x | -1i), 70823i)), var_0.c.x < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-276f, _wgslsmith_f_op_f32(round(arg_1.e.c.x)))) + var_0.c.x));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_4) -> bool {
    let var_0 = arg_1;
    global0 = _wgslsmith_f_op_f32(func_2(Struct_2(func_2(Struct_2(Struct_1(vec4<u32>(u_input.a, 1u, u_input.b, u_input.a), vec2<bool>(arg_1.b, arg_1.b), vec3<f32>(437f, 1000f, 160f), vec4<bool>(true, false, false, var_0.b), vec4<i32>(global1.x, global1.x, -1i, 10930i)), vec3<f32>(554f, -2352f, -1000f), vec3<f32>(-1856f, 441f, -706f), Struct_1(vec4<u32>(51192u, 53838u, u_input.b, 17830u), vec2<bool>(true, arg_1.b), vec3<f32>(747f, -640f, -490f), vec4<bool>(false, var_0.b, arg_1.b, var_0.b), vec4<i32>(arg_1.a.x, global1.x, -1i, global1.x)), Struct_1(vec4<u32>(25385u, 81920u, u_input.a, u_input.b), arg_0.xz, vec3<f32>(-684f, 871f, -711f), vec4<bool>(true, arg_1.b, false, false), vec4<i32>(var_0.a.x, 1812i, arg_1.a.x, global1.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -432f, 864f) + vec3<f32>(-1459f, 144f, -2243f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(468f, -1123f, -1000f))), Struct_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.b, u_input.a, u_input.a), vec4<u32>(51711u, 4751u, 4545u, 46015u), vec4<u32>(u_input.a, 28822u, u_input.a, u_input.b)), func_2(Struct_2(Struct_1(vec4<u32>(0u, u_input.a, u_input.b, u_input.a), vec2<bool>(false, true), vec3<f32>(-1337f, -476f, -1159f), vec4<bool>(false, var_0.b, arg_1.b, arg_1.b), vec4<i32>(1i, 47160i, global1.x, -2147483647i)), vec3<f32>(-639f, -1050f, 854f), vec3<f32>(-3078f, 923f, -166f), Struct_1(vec4<u32>(u_input.a, u_input.b, 0u, 24291u), vec2<bool>(false, var_0.b), vec3<f32>(791f, -134f, 120f), vec4<bool>(arg_0.x, arg_0.x, false, true), vec4<i32>(global1.x, arg_1.a.x, var_0.a.x, 24771i)), Struct_1(vec4<u32>(4294967295u, u_input.b, 35775u, u_input.b), arg_0.xz, vec3<f32>(-114f, -258f, -117f), vec4<bool>(arg_1.b, arg_1.b, arg_0.x, var_0.b), vec4<i32>(53046i, 0i, -12529i, var_0.a.x)))).d.xx, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-2307f, -304f, -907f))), vec4<bool>(var_0.b, false, false, var_0.b), vec4<i32>(arg_1.a.x, -14984i, -12125i, -63784i)), Struct_1(vec4<u32>(u_input.b, u_input.a, u_input.a, 19031u) & vec4<u32>(u_input.b, u_input.a, u_input.b, u_input.b), arg_0.xx, _wgslsmith_div_vec3_f32(vec3<f32>(-1643f, 1556f, -334f), vec3<f32>(-718f, 365f, 2078f)), vec4<bool>(var_0.b, false, true, true), -vec4<i32>(var_0.a.x, arg_1.a.x, arg_1.a.x, 7037i)))).c.x * -404f);
    var var_1 = vec2<bool>(true, !func_2(Struct_2(Struct_1(vec4<u32>(u_input.b, 70356u, 1u, 0u), vec2<bool>(arg_0.x, arg_1.b), vec3<f32>(108f, 644f, 2176f), vec4<bool>(var_0.b, true, var_0.b, false), vec4<i32>(var_0.a.x, -1i, 0i, -2147483647i)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-961f, -324f, 1168f) - vec3<f32>(-559f, 2390f, -2162f)), vec3<f32>(-483f, 158f, 125f), func_2(Struct_2(Struct_1(vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b), vec2<bool>(false, true), vec3<f32>(-2158f, -192f, -210f), vec4<bool>(false, false, arg_0.x, arg_1.b), vec4<i32>(0i, arg_1.a.x, global1.x, global1.x)), vec3<f32>(2277f, 1578f, 1066f), vec3<f32>(-829f, -1000f, -1369f), Struct_1(vec4<u32>(u_input.a, 0u, 4294967295u, u_input.b), vec2<bool>(false, false), vec3<f32>(-555f, 705f, -1000f), vec4<bool>(arg_0.x, true, true, true), vec4<i32>(-2147483647i, global1.x, arg_1.a.x, 16070i)), Struct_1(vec4<u32>(u_input.a, u_input.a, u_input.b, 7150u), arg_0.zz, vec3<f32>(113f, -371f, -483f), vec4<bool>(false, arg_1.b, true, true), vec4<i32>(var_0.a.x, global1.x, var_0.a.x, -8410i)))), Struct_1(vec4<u32>(u_input.a, u_input.b, u_input.a, 44042u), arg_0.yz, vec3<f32>(550f, 490f, -230f), vec4<bool>(true, false, true, arg_0.x), vec4<i32>(var_0.a.x, -2147483647i, -10385i, -2147483647i)))).d.x);
    let var_2 = abs(reverseBits(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 4294967295u) & vec2<u32>(u_input.a, 0u), ~vec2<u32>(u_input.b, 20889u))));
    let var_3 = arg_0.xy;
    return any(!arg_0.zx);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<i32>(-(~(~0i ^ global1.x)), _wgslsmith_clamp_i32(select(global1.x | (-422i << (1u % 32u)), ~(i32(-1i) * -9144i), func_4(vec3<bool>(true, false, false), func_1(vec4<i32>(global1.x, global1.x, -43282i, 0i), Struct_2(Struct_1(vec4<u32>(7209u, 4294967295u, u_input.b, 24137u), vec2<bool>(true, true), vec3<f32>(-176f, 1376f, 633f), vec4<bool>(true, true, true, false), vec4<i32>(-49765i, global1.x, 1i, -31087i)), vec3<f32>(112f, -780f, 1000f), vec3<f32>(-1000f, -1000f, 187f), Struct_1(vec4<u32>(70162u, u_input.b, 2196u, 4294967295u), vec2<bool>(false, false), vec3<f32>(-1000f, -1686f, 1331f), vec4<bool>(true, false, false, false), vec4<i32>(-2147483647i, -2147483647i, -1i, global1.x)), Struct_1(vec4<u32>(u_input.a, 4294967295u, 36228u, 35143u), vec2<bool>(true, false), vec3<f32>(-416f, -110f, -782f), vec4<bool>(false, true, true, true), vec4<i32>(-25054i, global1.x, global1.x, -3676i)))))), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, global1.x, global1.x), vec3<i32>(20715i, -36324i, 48094i)), global1.x), vec3<i32>(16376i ^ global1.x, global1.x, ~2147483647i)), ~global1.x));
    var var_0 = func_2(Struct_2(Struct_1(_wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(u_input.a, 32725u, 11925u, 4294967295u)), ~vec4<u32>(u_input.a, 27229u, u_input.b, 40337u)), func_3(global1.x, firstLeadingBit(vec3<i32>(46307i, global1.x, 2147483647i)), vec3<i32>(global1.x, global1.x, global1.x) >> (vec3<u32>(u_input.a, u_input.b, u_input.a) % vec3<u32>(32u))).yy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1232f, -319f, 1006f))), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false)), ~vec4<i32>(global1.x, 12119i, 1i, global1.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(273f, -936f, 774f) - vec3<f32>(526f, 1598f, -507f)))), vec3<f32>(_wgslsmith_div_f32(-654f, 479f), _wgslsmith_f_op_f32(select(-2810f, _wgslsmith_f_op_f32(f32(-1f) * -803f), true)), 1f), Struct_1(_wgslsmith_div_vec4_u32(~vec4<u32>(3695u, 3919u, 29456u, 1u), min(vec4<u32>(0u, u_input.a, 0u, 77563u), vec4<u32>(12841u, 4294967295u, 1u, 0u))), vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1319f, -608f, -1198f))), !func_3(global1.x, vec3<i32>(36426i, global1.x, -17143i), vec3<i32>(47090i, global1.x, 2147483647i)), _wgslsmith_mod_vec4_i32(~vec4<i32>(0i, global1.x, -124i, global1.x), vec4<i32>(-30190i, global1.x, -9917i, -2485i))), Struct_1(select(abs(vec4<u32>(0u, u_input.a, u_input.a, 2777u)), func_2(Struct_2(Struct_1(vec4<u32>(53720u, u_input.a, u_input.a, u_input.a), vec2<bool>(true, false), vec3<f32>(210f, -1499f, 1766f), vec4<bool>(false, true, true, true), vec4<i32>(global1.x, global1.x, global1.x, -2147483647i)), vec3<f32>(1512f, -1509f, 257f), vec3<f32>(-2737f, 782f, -3319f), Struct_1(vec4<u32>(89804u, 4294967295u, 37751u, u_input.b), vec2<bool>(true, false), vec3<f32>(-824f, -214f, 697f), vec4<bool>(true, true, false, false), vec4<i32>(0i, -18458i, 20154i, global1.x)), Struct_1(vec4<u32>(4294967295u, u_input.b, 76683u, u_input.b), vec2<bool>(true, true), vec3<f32>(1268f, 463f, -557f), vec4<bool>(false, false, false, false), vec4<i32>(global1.x, 1i, global1.x, 2938i)))).a, vec4<bool>(true, true, false, false)), vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(703f, 611f, -1046f)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), _wgslsmith_clamp_vec4_i32(vec4<i32>(global1.x, 57628i, -18617i, 4665i) ^ vec4<i32>(-2147483647i, global1.x, 27493i, 47722i), vec4<i32>(global1.x, 3945i, -2147483647i, 20828i), ~vec4<i32>(1072i, global1.x, 20270i, global1.x)))));
    let var_1 = _wgslsmith_dot_vec2_u32(reverseBits(reverseBits(min(func_2(Struct_2(Struct_1(vec4<u32>(4294967295u, u_input.a, 1u, var_0.a.x), vec2<bool>(true, var_0.b.x), var_0.c, vec4<bool>(false, false, false, var_0.b.x), vec4<i32>(var_0.e.x, var_0.e.x, var_0.e.x, global1.x)), var_0.c, vec3<f32>(1000f, var_0.c.x, -262f), Struct_1(vec4<u32>(91820u, 69315u, u_input.b, u_input.b), vec2<bool>(false, var_0.b.x), vec3<f32>(-1000f, -189f, -453f), var_0.d, vec4<i32>(49614i, 7942i, global1.x, global1.x)), Struct_1(vec4<u32>(8710u, var_0.a.x, var_0.a.x, u_input.b), var_0.d.zx, var_0.c, vec4<bool>(var_0.b.x, var_0.b.x, false, false), vec4<i32>(-1i, var_0.e.x, 1i, global1.x)))).a.zz, var_0.a.ww))), vec2<u32>(~(~var_0.a.x), 0u));
    var var_2 = Struct_2(func_2(Struct_2(func_2(Struct_2(Struct_1(vec4<u32>(u_input.a, var_0.a.x, 44095u, var_0.a.x), var_0.b, var_0.c, vec4<bool>(var_0.b.x, var_0.b.x, false, var_0.b.x), var_0.e), vec3<f32>(var_0.c.x, var_0.c.x, var_0.c.x), var_0.c, Struct_1(var_0.a, vec2<bool>(var_0.d.x, var_0.b.x), var_0.c, var_0.d, var_0.e), Struct_1(var_0.a, vec2<bool>(var_0.d.x, var_0.b.x), var_0.c, vec4<bool>(false, var_0.d.x, true, true), var_0.e))), var_0.c, var_0.c, func_2(Struct_2(Struct_1(vec4<u32>(35407u, var_0.a.x, 4294967295u, var_1), vec2<bool>(false, true), vec3<f32>(692f, var_0.c.x, -1000f), var_0.d, vec4<i32>(global1.x, 0i, global1.x, 94028i)), var_0.c, var_0.c, Struct_1(vec4<u32>(4294967295u, 0u, 66725u, 1u), var_0.d.yz, vec3<f32>(-922f, 261f, var_0.c.x), var_0.d, var_0.e), Struct_1(var_0.a, vec2<bool>(var_0.d.x, true), var_0.c, vec4<bool>(var_0.d.x, var_0.b.x, var_0.d.x, var_0.b.x), vec4<i32>(global1.x, var_0.e.x, 1i, -280i)))), func_2(Struct_2(Struct_1(vec4<u32>(0u, 10411u, var_0.a.x, 26887u), var_0.b, vec3<f32>(1663f, var_0.c.x, var_0.c.x), vec4<bool>(var_0.b.x, true, false, true), var_0.e), var_0.c, var_0.c, Struct_1(var_0.a, var_0.d.yw, vec3<f32>(-792f, 471f, var_0.c.x), vec4<bool>(true, true, true, true), var_0.e), Struct_1(vec4<u32>(12947u, 130244u, var_0.a.x, u_input.b), vec2<bool>(var_0.b.x, var_0.b.x), vec3<f32>(-292f, var_0.c.x, var_0.c.x), vec4<bool>(false, false, true, var_0.b.x), var_0.e))))), vec3<f32>(var_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_div_f32(328f, -1000f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.c.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.c.x)))))), vec3<f32>(-1081f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.c.x))), -615f), Struct_1(~(~max(var_0.a, vec4<u32>(u_input.a, var_0.a.x, var_1, 46594u))), func_2(Struct_2(Struct_1(var_0.a, vec2<bool>(var_0.b.x, var_0.b.x), var_0.c, var_0.d, var_0.e), vec3<f32>(var_0.c.x, var_0.c.x, -1139f), vec3<f32>(631f, -853f, -396f), func_2(Struct_2(Struct_1(var_0.a, var_0.b, var_0.c, var_0.d, vec4<i32>(2147483647i, -2281i, var_0.e.x, global1.x)), var_0.c, vec3<f32>(var_0.c.x, 890f, -775f), Struct_1(var_0.a, vec2<bool>(var_0.d.x, var_0.b.x), var_0.c, vec4<bool>(var_0.d.x, true, var_0.d.x, false), var_0.e), Struct_1(var_0.a, var_0.b, var_0.c, vec4<bool>(true, true, true, false), var_0.e))), func_2(Struct_2(Struct_1(vec4<u32>(20502u, 64896u, 11501u, 546u), var_0.d.zy, var_0.c, var_0.d, var_0.e), var_0.c, vec3<f32>(588f, 2214f, var_0.c.x), Struct_1(vec4<u32>(25971u, 4208u, u_input.a, var_1), var_0.d.wz, vec3<f32>(-790f, 459f, var_0.c.x), var_0.d, var_0.e), Struct_1(vec4<u32>(var_0.a.x, 4294967295u, var_0.a.x, u_input.a), vec2<bool>(var_0.d.x, true), var_0.c, var_0.d, var_0.e))))).b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.c.x, -642f, var_0.c.x)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.c - var_0.c) - _wgslsmith_div_vec3_f32(var_0.c, vec3<f32>(1000f, 252f, var_0.c.x)))), vec4<bool>(var_0.e.x > (global1.x & -24362i), !any(vec4<bool>(var_0.b.x, true, true, false)), func_1(~var_0.e, Struct_2(Struct_1(var_0.a, vec2<bool>(false, var_0.b.x), var_0.c, vec4<bool>(var_0.b.x, var_0.b.x, true, true), var_0.e), vec3<f32>(var_0.c.x, -108f, var_0.c.x), var_0.c, Struct_1(vec4<u32>(var_1, var_1, 47551u, 2580u), var_0.b, var_0.c, vec4<bool>(var_0.b.x, var_0.d.x, false, var_0.d.x), vec4<i32>(-1i, -35093i, global1.x, -1i)), Struct_1(vec4<u32>(var_0.a.x, var_1, 94568u, u_input.a), var_0.d.yz, var_0.c, var_0.d, vec4<i32>(2147483647i, var_0.e.x, global1.x, global1.x)))).b, var_0.d.x), var_0.e), func_2(Struct_2(Struct_1(select(vec4<u32>(1u, 71347u, var_0.a.x, 92816u), vec4<u32>(var_0.a.x, 0u, 4294967295u, var_0.a.x), false), func_3(-2147483647i, vec3<i32>(global1.x, 38203i, -3443i), vec3<i32>(-2147483647i, var_0.e.x, global1.x)).wx, func_2(Struct_2(Struct_1(var_0.a, var_0.d.zx, var_0.c, var_0.d, vec4<i32>(24307i, -8239i, var_0.e.x, 1i)), vec3<f32>(var_0.c.x, var_0.c.x, 1000f), vec3<f32>(-728f, 997f, 1954f), Struct_1(vec4<u32>(u_input.b, var_1, u_input.a, var_0.a.x), var_0.b, vec3<f32>(var_0.c.x, -1073f, -681f), vec4<bool>(true, true, var_0.b.x, var_0.d.x), var_0.e), Struct_1(var_0.a, var_0.b, var_0.c, vec4<bool>(true, var_0.d.x, true, var_0.d.x), vec4<i32>(var_0.e.x, 45972i, var_0.e.x, 0i)))).c, func_2(Struct_2(Struct_1(var_0.a, vec2<bool>(var_0.d.x, var_0.d.x), vec3<f32>(1103f, -1563f, var_0.c.x), var_0.d, var_0.e), var_0.c, var_0.c, Struct_1(vec4<u32>(var_1, 119664u, 1u, 0u), vec2<bool>(false, var_0.b.x), var_0.c, var_0.d, vec4<i32>(-32731i, global1.x, 0i, 0i)), Struct_1(var_0.a, vec2<bool>(true, var_0.b.x), vec3<f32>(-803f, var_0.c.x, var_0.c.x), vec4<bool>(var_0.b.x, false, var_0.b.x, var_0.b.x), var_0.e))).d, -vec4<i32>(19993i, var_0.e.x, global1.x, 7826i)), vec3<f32>(_wgslsmith_f_op_f32(1313f * 1628f), _wgslsmith_f_op_f32(var_0.c.x * var_0.c.x), _wgslsmith_f_op_f32(floor(2142f))), _wgslsmith_f_op_vec3_f32(-var_0.c), func_2(Struct_2(Struct_1(var_0.a, vec2<bool>(var_0.b.x, var_0.b.x), var_0.c, var_0.d, var_0.e), var_0.c, var_0.c, Struct_1(vec4<u32>(4294967295u, 10279u, u_input.b, 4294967295u), vec2<bool>(false, var_0.b.x), var_0.c, vec4<bool>(false, var_0.d.x, false, false), vec4<i32>(54389i, -21643i, 1i, global1.x)), Struct_1(vec4<u32>(u_input.b, var_0.a.x, 31103u, 4294967295u), vec2<bool>(var_0.b.x, var_0.d.x), vec3<f32>(-1658f, var_0.c.x, -1080f), vec4<bool>(true, true, true, var_0.d.x), vec4<i32>(-29551i, 0i, 2147483647i, var_0.e.x)))), Struct_1(var_0.a << (vec4<u32>(var_0.a.x, u_input.b, var_0.a.x, 12926u) % vec4<u32>(32u)), !vec2<bool>(var_0.b.x, var_0.b.x), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.c.x, -729f, 1337f), vec3<f32>(-1474f, var_0.c.x, var_0.c.x)), var_0.d, vec4<i32>(-1i, global1.x, var_0.e.x, 0i)))));
    let var_3 = func_3(global1.x, firstTrailingBit(select(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(var_0.e.wxy, var_2.e.e.xzz), vec3<i32>(0i, var_2.e.e.x, 2147483647i)), max(vec3<i32>(-46811i, 2147483647i, 23811i), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, 6078i, -2147483647i), vec3<i32>(2628i, global1.x, var_2.a.e.x))), vec3<bool>(global1.x <= global1.x, all(var_2.a.d.xxz), false))), _wgslsmith_add_vec3_i32(abs(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.e.x, var_2.d.e.x, 8206i), var_2.d.e.zzx) | -vec3<i32>(-66410i, global1.x, 9136i)), abs(_wgslsmith_clamp_vec3_i32(firstTrailingBit(vec3<i32>(global1.x, 2751i, var_0.e.x)), var_0.e.yzz << (vec3<u32>(var_0.a.x, var_2.a.a.x, var_1) % vec3<u32>(32u)), vec3<i32>(var_2.e.e.x, var_0.e.x, var_2.a.e.x)))));
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) + _wgslsmith_f_op_f32(sign(var_0.c.x))) * func_2(Struct_2(Struct_1(var_2.a.a, var_3.wy, vec3<f32>(var_0.c.x, var_2.b.x, var_2.b.x), vec4<bool>(var_0.b.x, var_2.e.d.x, var_3.x, false), vec4<i32>(0i, -11431i, global1.x, global1.x)), vec3<f32>(1165f, -173f, 1486f), vec3<f32>(var_0.c.x, 731f, 839f), Struct_1(var_2.d.a, var_0.b, var_0.c, vec4<bool>(false, var_2.e.d.x, var_2.a.d.x, true), var_0.e), var_2.e)).c.x) + _wgslsmith_f_op_f32(abs(913f))), -394f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x))), var_0.c.x, all(var_2.a.d.yy))), _wgslsmith_f_op_f32(f32(-1f) * -1392f));
    let var_5 = _wgslsmith_mod_i32(var_2.e.e.x, (min(_wgslsmith_mult_i32(var_0.e.x, var_2.e.e.x), ~global1.x) << (~var_1 % 32u)) ^ _wgslsmith_dot_vec2_i32(~_wgslsmith_mult_vec2_i32(var_0.e.zw, vec2<i32>(-2147483647i, -28006i)), vec2<i32>(_wgslsmith_dot_vec2_i32(var_0.e.xx, vec2<i32>(-2147483647i, var_0.e.x)), ~38330i)));
    var_2 = Struct_2(Struct_1(_wgslsmith_div_vec4_u32((vec4<u32>(135449u, 26751u, 0u, 1u) << (var_2.e.a % vec4<u32>(32u))) & max(var_0.a, vec4<u32>(u_input.b, u_input.a, 4294967295u, var_2.d.a.x)), _wgslsmith_sub_vec4_u32(var_2.d.a, vec4<u32>(var_0.a.x, var_0.a.x, var_0.a.x, 0u)) | min(vec4<u32>(u_input.a, 4294967295u, 1u, 79536u), var_2.a.a)), !vec2<bool>(true, var_2.e.b.x), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(func_2(Struct_2(Struct_1(var_0.a, var_2.e.d.yw, vec3<f32>(-1034f, var_2.a.c.x, -833f), vec4<bool>(false, var_3.x, false, true), vec4<i32>(var_2.d.e.x, 9958i, var_5, 2147483647i)), var_0.c, var_4.wwx, var_2.a, Struct_1(vec4<u32>(var_2.d.a.x, 1u, var_2.a.a.x, 52073u), var_3.xw, var_2.d.c, vec4<bool>(true, false, var_2.d.b.x, var_0.b.x), var_0.e))).c.x, func_2(Struct_2(Struct_1(vec4<u32>(var_1, var_2.e.a.x, 16472u, var_2.a.a.x), var_2.a.b, vec3<f32>(-1066f, var_2.e.c.x, 173f), var_0.d, var_0.e), vec3<f32>(-524f, var_4.x, var_0.c.x), var_2.e.c, Struct_1(var_2.d.a, vec2<bool>(false, true), var_4.zwz, var_2.e.d, vec4<i32>(global1.x, 1i, 2147483647i, 0i)), var_2.d)).c.x, _wgslsmith_f_op_f32(-var_4.x)))), vec4<bool>(var_0.b.x, any(var_0.d.wyw), true, all(vec2<bool>(var_3.x, var_2.e.d.x))), (countOneBits(vec4<i32>(12857i, var_5, var_0.e.x, global1.x)) << (vec4<u32>(1u, 46723u, var_2.d.a.x, var_2.e.a.x) % vec4<u32>(32u))) ^ var_2.a.e), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_2.b.x + var_2.a.c.x), var_2.c.x, _wgslsmith_f_op_f32(-253f * -789f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_4.yww * _wgslsmith_f_op_vec3_f32(-vec3<f32>(630f, var_0.c.x, var_0.c.x))) + vec3<f32>(-543f, -126f, -773f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(729f, 626f, _wgslsmith_f_op_f32(sign(var_2.a.c.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.c.x * 1566f), _wgslsmith_f_op_f32(floor(var_4.x)), _wgslsmith_f_op_f32(-var_0.c.x))))), Struct_1(vec4<u32>(82443u, reverseBits(98804u), 4294967295u, var_0.a.x), vec2<bool>(~27448u == select(1u, var_1, false), !var_3.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_4.xyw)))), vec4<bool>(all(vec2<bool>(true, false)), var_3.x, var_0.b.x, any(!var_0.d)), -vec4<i32>(global1.x, -26261i, var_5, var_5) ^ (firstLeadingBit(vec4<i32>(var_0.e.x, var_2.e.e.x, global1.x, 2147483647i)) | vec4<i32>(16053i, var_2.e.e.x, var_5, -2147483647i))), func_2(Struct_2(Struct_1(vec4<u32>(1092u, 130829u, u_input.b, u_input.b), vec2<bool>(false, true), vec3<f32>(264f, -231f, var_0.c.x), select(vec4<bool>(false, false, var_2.e.b.x, var_0.b.x), var_2.a.d, var_2.a.b.x), var_2.a.e), var_2.e.c, _wgslsmith_div_vec3_f32(var_0.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.x, 1000f, var_0.c.x))), Struct_1(var_2.a.a, !vec2<bool>(var_3.x, false), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_4.x, var_0.c.x, var_4.x), var_4.xzw)), !vec4<bool>(false, var_3.x, var_2.d.b.x, false), func_2(Struct_2(var_2.d, var_0.c, var_2.e.c, Struct_1(var_0.a, vec2<bool>(var_2.a.d.x, var_0.d.x), vec3<f32>(var_0.c.x, 774f, -1230f), var_3, var_0.e), var_2.d)).e), Struct_1(~vec4<u32>(43089u, 0u, 1u, 24015u), vec2<bool>(false, var_2.a.b.x), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(705f, 449f, 797f), var_0.c)), func_2(Struct_2(var_2.d, var_4.xwy, var_0.c, Struct_1(var_0.a, var_2.e.b, vec3<f32>(var_0.c.x, var_4.x, -266f), var_3, var_2.a.e), var_2.e)).d, vec4<i32>(47895i, var_0.e.x, 2018i, var_2.a.e.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1, -285f, _wgslsmith_f_op_f32(-var_4.x), ~abs(~vec4<u32>(0u, 0u, var_1, 4294967295u)), _wgslsmith_f_op_f32(-var_0.c.x));
}

