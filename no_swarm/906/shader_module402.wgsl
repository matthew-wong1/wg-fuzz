struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: vec4<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> vec4<bool> {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1071f))))), -580f) - -153f);
    let var_0 = arg_0 & !all(vec3<bool>(false, arg_0, !arg_0));
    let var_1 = select(!vec4<bool>(var_0, false, arg_0, var_0), !vec4<bool>(!var_0, any(select(vec3<bool>(var_0, arg_0, var_0), vec3<bool>(true, false, arg_0), arg_0)), !var_0, false & !arg_0), !vec4<bool>(false, false, select(arg_0, false, true && var_0), arg_0));
    var var_2 = Struct_2(Struct_1(select(!var_1.yy, vec2<bool>(!var_0, true), select(var_1.yz, select(var_1.wy, var_1.xz, var_0), vec2<bool>(true, false))), var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -824f) - -341f) - -113f)));
    let var_3 = -_wgslsmith_mod_vec4_i32(~(-abs(vec4<i32>(0i, 1i, u_input.a, 5635i))), _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(u_input.a, -52487i), min(2147483647i, u_input.a), u_input.a, u_input.a), -vec4<i32>(u_input.a, 0i, 6683i, -2147483647i)));
    return vec4<bool>(true, (i32(-1i) * -9384i) >= reverseBits(~reverseBits(var_3.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-447f)), _wgslsmith_f_op_f32(-1f))) == var_2.a.c, !(!var_0 & true) || var_0);
}

fn func_2() -> f32 {
    var var_0 = Struct_1(vec2<bool>(all(select(func_3(true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), false), func_3(false))), true), true && all(vec4<bool>(u_input.c.x != u_input.c.x, true, all(vec2<bool>(false, true)), false)), 1201f);
    global0 = 769f;
    let var_1 = u_input.c.x;
    var_0 = Struct_1(var_0.a, (var_0.b | true) || true, var_0.c);
    var var_2 = 792f;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c + -554f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1133f)))), _wgslsmith_f_op_f32(select(var_0.c, var_0.c, all(!select(vec3<bool>(var_0.b, var_0.a.x, var_0.b), vec3<bool>(false, var_0.b, true), false)))));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = ~vec4<u32>(~_wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, 73061u) >> (_wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.c.x, u_input.b), 12015u) % 32u), ~u_input.b, u_input.c.x, _wgslsmith_add_u32(~(~54429u), ~u_input.b));
    global0 = -2296f;
    let var_1 = Struct_2(Struct_1(select(select(func_3(arg_2.b.a.x).xy, !vec2<bool>(arg_2.b.a.x, arg_2.b.b), true), !arg_2.a.a.a, arg_2.b.a), (true & func_3(false).x) | (arg_2.b.a.x && arg_2.a.a.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, -149f)) + _wgslsmith_f_op_f32(exp2(arg_2.a.a.c))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -182f))))));
    return arg_2.b;
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_4(func_4((vec4<i32>(u_input.a, u_input.a, u_input.a, 15488i) << (countOneBits(vec4<u32>(4294967295u, 4294967295u, 1u, u_input.b)) % vec4<u32>(32u))) | select(-vec4<i32>(-1722i, -1i, -1i, u_input.a), ~vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.a), true), vec4<f32>(-1370f, _wgslsmith_f_op_f32(-1914f + -1562f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(115f * 1325f))), Struct_3(Struct_2(Struct_1(vec2<bool>(false, false), false, 1542f)), Struct_1(vec2<bool>(false, true), false, _wgslsmith_f_op_f32(f32(-1f) * -1551f)), _wgslsmith_f_op_f32(f32(-1f) * -1345f)), _wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.a, -51883i, u_input.a, -4816i), _wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.a, u_input.a, 2147483647i, 0i), ~vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)))));
    global0 = var_0.a.c;
    var var_1 = vec2<u32>(~u_input.b, 27886u);
    let var_2 = _wgslsmith_clamp_vec2_u32(vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.c.x, var_1.x) & vec4<u32>(var_1.x, u_input.b, 4294967295u, u_input.c.x), vec4<u32>(1u, u_input.b, var_1.x, 22298u)), var_1.x), select(~_wgslsmith_mult_vec2_u32(u_input.c.wz, u_input.c.xy), u_input.c.yw << (~firstTrailingBit(u_input.c.wx) % vec2<u32>(32u)), vec2<bool>(any(vec3<bool>(true, true, true)), var_0.a.b)), vec2<u32>(u_input.b, var_1.x));
    var_1 = u_input.c.zz;
    return Struct_2(func_4(abs(vec4<i32>(u_input.a, u_input.a, 1i, u_input.a) | vec4<i32>(-1i, -1i, 0i, -67088i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.a.c, var_0.a.c, var_0.a.c, var_0.a.c)))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.c, 588f, var_0.a.c, -1000f) + vec4<f32>(var_0.a.c, var_0.a.c, var_0.a.c, var_0.a.c))))), Struct_3(Struct_2(func_4(vec4<i32>(0i, u_input.a, 1i, u_input.a), vec4<f32>(388f, var_0.a.c, -1590f, var_0.a.c), Struct_3(Struct_2(Struct_1(var_0.a.a, var_0.a.a.x, var_0.a.c)), Struct_1(vec2<bool>(true, var_0.a.a.x), true, -1000f), -609f), vec4<i32>(-1i, u_input.a, u_input.a, u_input.a))), var_0.a, -172f), -select(vec4<i32>(16916i, 1i, -31938i, u_input.a), ~vec4<i32>(1i, -17658i, u_input.a, 2147483647i), func_3(var_0.a.b))));
}

fn func_5(arg_0: vec3<u32>, arg_1: bool, arg_2: vec4<u32>, arg_3: Struct_2) -> Struct_2 {
    var var_0 = false;
    var var_1 = vec3<u32>(58313u, 0u, ~arg_0.x);
    var_0 = true;
    let var_2 = true;
    var_1 = abs(_wgslsmith_clamp_vec3_u32(~countOneBits(arg_2.wyy), _wgslsmith_add_vec3_u32(~vec3<u32>(arg_0.x, u_input.c.x, 30634u), arg_2.xxx), ~vec3<u32>(_wgslsmith_div_u32(arg_2.x, 25565u), arg_2.x, select(arg_0.x, u_input.c.x, true))));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(round(1000f));
    var var_0 = func_5(vec3<u32>(abs(~u_input.b), 1u, firstLeadingBit(countOneBits(~5978u))), all(vec2<bool>(true, select(true, u_input.c.x > 1u, true))), u_input.c, func_1());
    var var_1 = 0u;
    var var_2 = Struct_4(var_0.a);
    var var_3 = !select(!vec4<bool>(all(var_0.a.a), false, true & var_0.a.a.x, false), vec4<bool>(~1u != select(40441u, 64890u, true), var_2.a.a.x, !func_1().a.b, true && func_4(vec4<i32>(1i, u_input.a, u_input.a, u_input.a), vec4<f32>(859f, var_0.a.c, 1196f, var_2.a.c), Struct_3(Struct_2(var_2.a), Struct_1(var_0.a.a, true, -1420f), var_0.a.c), vec4<i32>(u_input.a, 1i, -1i, -1i)).b), select(vec4<bool>(true, func_5(u_input.c.yzz, var_0.a.a.x, u_input.c, Struct_2(var_2.a)).a.b, var_2.a.b && var_0.a.b, all(vec4<bool>(var_2.a.a.x, var_2.a.a.x, var_2.a.a.x, false))), vec4<bool>(var_0.a.b, var_2.a.b, true, true), !select(vec4<bool>(var_2.a.b, true, false, var_2.a.b), vec4<bool>(false, false, true, false), vec4<bool>(var_2.a.a.x, var_0.a.a.x, true, var_0.a.a.x))));
    var var_4 = ~vec2<u32>(u_input.b | u_input.b, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(~0u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(2626f, var_2.a.c, var_0.a.c))))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.a.c, -329f, var_0.a.c), vec3<f32>(682f, -1508f, -591f)))))))), -2071f, _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.a, u_input.a), vec3<i32>(u_input.a, 1670i, 28036i)) << (_wgslsmith_add_u32(26025u, var_4.x) % 32u), u_input.a, -2147483647i, _wgslsmith_mult_i32(-2147483647i, -1i)), abs((vec4<i32>(u_input.a, -1i, u_input.a, u_input.a) ^ vec4<i32>(1i, -23997i, 6650i, u_input.a)) << (vec4<u32>(48968u, 4294967295u, var_4.x, 4294967295u) % vec4<u32>(32u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.c, var_0.a.c) - vec2<f32>(var_2.a.c, var_2.a.c)) + vec2<f32>(-738f, -725f)), vec2<f32>(_wgslsmith_f_op_f32(-var_2.a.c), _wgslsmith_f_op_f32(floor(-2835f)))))));
}

