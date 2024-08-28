struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: f32,
    d: u32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: bool,
}

struct Struct_5 {
    a: vec3<bool>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec3<u32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 21> = array<vec4<i32>, 21>(vec4<i32>(-577i, 18177i, 18493i, 29294i), vec4<i32>(i32(-2147483648), -1i, -6853i, 19701i), vec4<i32>(-22364i, 1i, i32(-2147483648), -1i), vec4<i32>(-5156i, i32(-2147483648), 33661i, -43769i), vec4<i32>(-2843i, 5841i, 0i, -2959i), vec4<i32>(14031i, 0i, 1i, 2147483647i), vec4<i32>(-54487i, -41590i, -26693i, -16203i), vec4<i32>(-2354i, -31681i, 2147483647i, 0i), vec4<i32>(34255i, 2147483647i, -211i, 0i), vec4<i32>(-32350i, -25589i, -1i, 2450i), vec4<i32>(-2923i, -1i, 8898i, 23947i), vec4<i32>(2147483647i, 1i, -9880i, 21204i), vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), 16651i), vec4<i32>(25583i, 42244i, -1i, 39406i), vec4<i32>(2147483647i, -1i, i32(-2147483648), -102647i), vec4<i32>(-29008i, i32(-2147483648), -9434i, -1i), vec4<i32>(-13519i, 2147483647i, 2147483647i, 0i), vec4<i32>(14005i, 22212i, 2147483647i, -1i), vec4<i32>(0i, 13892i, 14191i, -33250i), vec4<i32>(33383i, -40717i, 52232i, -1i), vec4<i32>(2147483647i, -1i, 2147483647i, 43650i));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: i32, arg_2: vec2<i32>, arg_3: bool) -> vec4<bool> {
    var var_0 = Struct_5(vec3<bool>(false, all(vec4<bool>(true, arg_0.b.c < arg_0.a.b.c, any(arg_0.b.b), arg_0.a.a.x)), arg_0.c.b.b.x), 0i << (_wgslsmith_sub_u32(abs(~1u), firstTrailingBit(~arg_0.b.a)) % 32u));
    var var_1 = _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(~(~u_input.a), u_input.a), firstTrailingBit(_wgslsmith_div_vec2_u32(~(~vec2<u32>(u_input.a.x, 4294967295u)), vec2<u32>(arg_0.c.d, 1u))));
    var var_2 = Struct_5(!select(!(!vec3<bool>(arg_3, true, arg_0.d)), select(vec3<bool>(arg_0.d, var_0.a.x, arg_0.a.b.b.x), vec3<bool>(false, false, arg_0.b.b.x), select(vec3<bool>(arg_0.d, var_0.a.x, arg_3), vec3<bool>(var_0.a.x, arg_3, true), vec3<bool>(arg_3, arg_0.d, arg_0.a.b.b.x))), all(var_0.a)), -arg_1);
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1109f))))), arg_0.a.c, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-405f)))));
    var var_4 = vec3<f32>(var_3.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.c) * -1114f)), 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-836f))))));
    return arg_0.a.b.b;
}

fn func_2(arg_0: vec2<u32>) -> Struct_5 {
    var var_0 = Struct_4(Struct_2(vec3<bool>(true, any(vec4<bool>(false, true, true, false)), false), Struct_1(u_input.a.x, vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(ceil(540f))), 1f, ~(~_wgslsmith_sub_u32(arg_0.x, 32303u))), Struct_1(_wgslsmith_sub_u32(91547u, u_input.a.x), !select(func_3(Struct_4(Struct_2(vec3<bool>(false, false, false), Struct_1(0u, vec4<bool>(true, false, true, true), -1000f), -175f, arg_0.x), Struct_1(arg_0.x, vec4<bool>(false, true, false, true), -1651f), Struct_2(vec3<bool>(false, false, false), Struct_1(23044u, vec4<bool>(false, true, true, false), 1000f), -2842f, u_input.a.x), true), 19514i, vec2<i32>(25425i, 29347i), false), vec4<bool>(false, true, true, true), select(true, true, false)), 171f), Struct_2(!func_3(Struct_4(Struct_2(vec3<bool>(false, true, false), Struct_1(u_input.a.x, vec4<bool>(false, false, true, false), -327f), 822f, arg_0.x), Struct_1(u_input.a.x, vec4<bool>(false, false, true, false), -839f), Struct_2(vec3<bool>(false, true, true), Struct_1(21618u, vec4<bool>(false, true, false, false), -1000f), 982f, 1u), true), select(-71731i, -2147483647i, true), vec2<i32>(1i, 1i), true).wxz, Struct_1(~4243u, !select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), true), -282f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(796f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1898f)))), arg_0.x), (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-153f, -763f)) - _wgslsmith_f_op_f32(-722f + 1600f)) != 1178f) && (any(vec4<bool>(true, true, true, true)) && any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)))));
    global0 = array<vec4<i32>, 21>();
    let var_1 = -abs(vec3<i32>(abs(-4746i), _wgslsmith_add_i32(-1i, 0i), _wgslsmith_mult_i32(abs(2147483647i), -1i)));
    var_0 = Struct_4(var_0.c, Struct_1(~firstLeadingBit(min(arg_0.x, 31432u)), var_0.c.b.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -438f))) * _wgslsmith_f_op_f32(ceil(var_0.c.b.c)))), Struct_2(!vec3<bool>(true, func_3(Struct_4(var_0.c, var_0.c.b, Struct_2(var_0.c.b.b.wwx, Struct_1(20462u, vec4<bool>(var_0.d, var_0.a.a.x, var_0.a.a.x, false), var_0.a.c), 183f, 0u), false), -2147483647i, var_1.xx, false).x, !var_0.c.a.x), var_0.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - var_0.c.b.c) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.a.b.c)))), _wgslsmith_div_u32(_wgslsmith_div_u32(~var_0.b.a, u_input.a.x), firstLeadingBit(~7808u))), var_0.d);
    var_0 = Struct_4(var_0.c, Struct_1(1u, var_0.a.b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0.a.c, -1168f))))), var_0.c, !select(any(var_0.b.b.wwz), any(vec3<bool>(true, false, var_0.a.a.x)), true) || !var_0.a.a.x);
    return Struct_5(vec3<bool>(var_0.c.b.b.x, !var_0.b.b.x & false, var_0.c.b.b.x), max(countOneBits(var_1.x), _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(26827i, var_1.x, -1i)), var_1 ^ var_1)) >> (((_wgslsmith_mod_u32(16740u, u_input.a.x) & _wgslsmith_dot_vec3_u32(vec3<u32>(43620u, 1u, 4294967295u), vec3<u32>(81092u, u_input.a.x, arg_0.x))) >> (reverseBits(var_0.b.a) % 32u)) % 32u));
}

fn func_4(arg_0: Struct_5) -> Struct_4 {
    var var_0 = arg_0.b;
    var var_1 = arg_0.a.x;
    var var_2 = Struct_2(arg_0.a, Struct_1(~(u_input.a.x >> (u_input.a.x % 32u)) << (u_input.a.x % 32u), !vec4<bool>(any(arg_0.a), true, arg_0.a.x, !arg_0.a.x), _wgslsmith_f_op_f32(select(762f, 1f, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(577f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -267f), _wgslsmith_div_f32(1067f, -321f)))) + 775f), 64057u);
    let var_3 = var_2.b;
    var_2 = Struct_2(func_3(Struct_4(Struct_2(select(arg_0.a, vec3<bool>(true, true, false), false), Struct_1(var_2.d, var_2.b.b, var_3.c), var_2.c, ~0u), var_2.b, Struct_2(var_3.b.xyw, Struct_1(0u, var_3.b, -888f), _wgslsmith_f_op_f32(-var_3.c), firstTrailingBit(66080u)), arg_0.a.x && !var_2.b.b.x), 23716i, _wgslsmith_mod_vec2_i32(~vec2<i32>(arg_0.b, 1i) ^ ~vec2<i32>(arg_0.b, arg_0.b), vec2<i32>(arg_0.b, _wgslsmith_sub_i32(arg_0.b, arg_0.b))), var_2.a.x).zzx, Struct_1(67054u, !vec4<bool>(true, true, var_2.a.x, true), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.c + 313f)), var_3.c))), _wgslsmith_f_op_f32(max(var_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_3.c)))))), ~(~1u));
    return Struct_4(Struct_2(select(select(select(vec3<bool>(true, arg_0.a.x, arg_0.a.x), var_3.b.zxx, var_3.b.xwx), arg_0.a, var_3.b.x), func_3(Struct_4(Struct_2(vec3<bool>(var_2.b.b.x, arg_0.a.x, var_3.b.x), Struct_1(4294967295u, var_2.b.b, var_3.c), var_2.c, 25561u), Struct_1(var_3.a, vec4<bool>(true, false, arg_0.a.x, true), var_3.c), Struct_2(var_2.b.b.yww, Struct_1(var_3.a, vec4<bool>(arg_0.a.x, var_2.a.x, false, var_3.b.x), var_3.c), -1000f, var_3.a), var_2.b.b.x), arg_0.b << (u_input.a.x % 32u), countOneBits(vec2<i32>(-9254i, arg_0.b)), func_2(u_input.a).a.x).wyy, select(true & arg_0.a.x, true, true)), var_2.b, -1000f, var_3.a), Struct_1(~u_input.a.x >> (select(u_input.a.x, ~1u, any(vec3<bool>(var_3.b.x, false, true))) % 32u), select(select(var_2.b.b, select(var_2.b.b, vec4<bool>(false, var_2.a.x, false, var_3.b.x), var_2.a.x), vec4<bool>(var_3.b.x, arg_0.a.x, true, true)), vec4<bool>(any(var_3.b.yz), true, var_2.a.x, !var_3.b.x), !(!var_2.b.b)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_3.c)), _wgslsmith_f_op_f32(trunc(var_3.c))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1619f), var_2.c, true))))), Struct_2(vec3<bool>(max(u_input.a.x, 75755u) != 1u, !any(var_2.b.b), arg_0.a.x & (var_2.b.a > 1u)), Struct_1(~1u, !var_2.b.b, var_2.b.c), -2549f, ~(~(var_2.d | u_input.a.x))), all(var_2.a.zy));
}

fn func_1() -> Struct_4 {
    var var_0 = func_4(func_2(vec2<u32>(select(1u, 8009u, true) & ~4294967295u, u_input.a.x)));
    global0 = array<vec4<i32>, 21>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(1000f, -1048f)), _wgslsmith_f_op_f32(sign(237f)))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-953f, var_0.c.b.c)) - 448f)) - var_0.c.b.c);
    return Struct_4(Struct_2(vec3<bool>(!var_0.a.a.x, true, !func_2(vec2<u32>(var_0.c.d, 1u)).a.x), func_4(func_2(~vec2<u32>(0u, u_input.a.x))).a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1307f, -1000f))), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(15293u, var_0.c.d) & u_input.a), select(u_input.a, vec2<u32>(6440u, 0u), !var_0.b.b.x))), var_0.b, Struct_2(func_3(func_4(func_2(vec2<u32>(3040u, 1u))), _wgslsmith_clamp_i32(_wgslsmith_div_i32(-63004i, -53200i), 2147483647i, 0i), -(vec2<i32>(58372i, 42724i) >> (u_input.a % vec2<u32>(32u))), var_0.c.b.a < (u_input.a.x << (var_0.a.b.a % 32u))).zww, var_0.a.b, _wgslsmith_f_op_f32(1293f * var_0.b.c), 26419u), !(23462u <= ~(u_input.a.x >> (90058u % 32u))));
}

fn func_5(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: Struct_4) -> vec4<u32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c.b.c - 1745f)), _wgslsmith_div_f32(1000f, -448f), _wgslsmith_f_op_f32(sign(arg_2.c.b.c)), _wgslsmith_div_f32(-1614f, _wgslsmith_f_op_f32(-arg_2.a.b.c)));
    var var_1 = Struct_4(Struct_2(!arg_1, Struct_1(arg_2.c.d, vec4<bool>(arg_2.b.b.x && false, any(vec2<bool>(arg_0.a.a.x, arg_1.x)), true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.c)), 43994u), arg_0.b, Struct_2(func_4(Struct_5(arg_1, firstTrailingBit(10984i))).b.b.zyy, arg_2.a.b, _wgslsmith_f_op_f32(ceil(arg_0.a.c)), 0u), arg_0.b.b.x);
    let var_2 = func_2(_wgslsmith_clamp_vec2_u32(abs(~_wgslsmith_mult_vec2_u32(u_input.a, u_input.a)), _wgslsmith_mod_vec2_u32(vec2<u32>(15631u, arg_2.b.a) >> (u_input.a % vec2<u32>(32u)), u_input.a) ^ vec2<u32>(_wgslsmith_add_u32(var_1.c.d, 0u), u_input.a.x), u_input.a));
    let var_3 = arg_2.c;
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_1.a.b.c)), _wgslsmith_f_op_f32(floor(1603f))))), arg_0.a.b.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.b.c) + -1696f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.c.c * -378f) - -223f));
    return select(~(~firstTrailingBit(vec4<u32>(30299u, arg_0.b.a, u_input.a.x, var_3.b.a))), reverseBits(vec4<u32>(10570u, 0u, abs(0u), ~4294967295u)), var_3.b.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec4_u32(~func_5(func_1(), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), any(vec4<bool>(false, false, true, true))), Struct_4(Struct_2(vec3<bool>(false, true, false), Struct_1(u_input.a.x, vec4<bool>(true, true, false, false), -1009f), 1749f, u_input.a.x), func_1().b, Struct_2(vec3<bool>(true, false, false), Struct_1(u_input.a.x, vec4<bool>(true, false, true, true), 152f), 1711f, 4294967295u), select(false, false, true))), vec4<u32>(u_input.a.x, _wgslsmith_mult_u32(1u, u_input.a.x), ~u_input.a.x, reverseBits(u_input.a.x)));
    var var_1 = Struct_4(func_1().a, Struct_1(56914u, vec4<bool>(true, false, func_3(func_1(), ~(-16336i), ~vec2<i32>(-23310i, 1i), func_4(Struct_5(vec3<bool>(true, true, true), -27135i)).c.b.b.x).x, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_1().b.c) * _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(ceil(-1342f))))), func_1().c, func_3(Struct_4(func_1().c, Struct_1(u_input.a.x, vec4<bool>(true, true, false, true), -1326f), Struct_2(vec3<bool>(true, false, false), func_1().a.b, -194f, 34495u), true), firstTrailingBit(-1i), _wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(1i, 1i), firstLeadingBit(vec2<i32>(-2147483647i, 43399i))), abs(-vec2<i32>(2147483647i, 16711i)), -vec2<i32>(-2147483647i, 0i)), !func_3(func_1(), 1i, -vec2<i32>(-57441i, 89941i), false).x).x);
    var_0 = _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(~4294967295u, ~var_1.a.d), ~18621u, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 4294967295u, var_0.x), var_0.xzy), u_input.a.x | 4294967295u), _wgslsmith_div_u32(_wgslsmith_div_u32(50436u, 1u), abs(var_1.b.a))), reverseBits(~(~vec4<u32>(4294967295u, var_0.x, 4294967295u, 4294967295u)))) & ((firstTrailingBit(~vec4<u32>(u_input.a.x, 0u, 5746u, u_input.a.x)) << (countOneBits(vec4<u32>(var_0.x, var_1.a.d, var_0.x, var_1.a.b.a)) % vec4<u32>(32u))) ^ ~select(vec4<u32>(0u, var_1.b.a, 0u, u_input.a.x), vec4<u32>(var_0.x, var_1.b.a, 13644u, 0u), func_3(Struct_4(Struct_2(vec3<bool>(false, true, var_1.d), var_1.b, var_1.b.c, 1u), Struct_1(4294967295u, vec4<bool>(var_1.c.b.b.x, var_1.d, var_1.a.a.x, var_1.a.b.b.x), var_1.c.c), Struct_2(vec3<bool>(false, true, var_1.c.b.b.x), Struct_1(4294967295u, vec4<bool>(false, var_1.c.b.b.x, false, var_1.b.b.x), var_1.c.c), 567f, 0u), false), 36561i, vec2<i32>(2147483647i, -2147483647i), var_1.a.b.b.x)));
    var_1 = Struct_4(func_4(func_2(firstLeadingBit(vec2<u32>(var_1.a.d, 4294967295u)) << (~vec2<u32>(u_input.a.x, 4294967295u) % vec2<u32>(32u)))).c, Struct_1(0u, func_4(func_2(select(var_0.zx, var_0.yy, var_1.c.b.b.x))).b.b, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_1.c.c)), _wgslsmith_f_op_f32(step(-245f, var_1.c.b.c))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-362f, -1644f))))))), Struct_2(func_4(func_2(~vec2<u32>(1224u, u_input.a.x))).b.b.wzy, var_1.b, _wgslsmith_f_op_f32(-var_1.b.c), 1u), any(!var_1.b.b));
    var var_2 = var_1.c;
    let var_3 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(-2147483647i, ~(-21490i), firstLeadingBit(-16336i), -firstTrailingBit(31850i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.b.c * func_4(Struct_5(vec3<bool>(false, var_1.c.b.b.x, var_2.a.x), -29080i)).a.c))), ~_wgslsmith_mod_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(var_2.b.a, 1u, 1u), vec3<u32>(55109u, 4294967295u, var_2.d)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 1u, 0u), var_0.wyz) ^ var_0.yzx), -31673i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.c + _wgslsmith_f_op_f32(floor(768f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-280f, var_2.c))) + 2324f)));
}

