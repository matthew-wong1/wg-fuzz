struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<f32>,
}

struct Struct_5 {
    a: bool,
    b: vec2<u32>,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: i32;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32, arg_1: vec2<u32>, arg_2: bool, arg_3: Struct_4) -> i32 {
    var var_0 = Struct_2((1i >> (abs(firstTrailingBit(arg_1.x)) % 32u)) & 37193i);
    var var_1 = i32(-1i) * -arg_3.a.a.a.x;
    global1 = 1i;
    let var_2 = _wgslsmith_f_op_f32(arg_3.a.c + _wgslsmith_div_f32(arg_3.b.x, _wgslsmith_f_op_f32(-arg_3.b.x)));
    var_0 = Struct_2(i32(-1i) * -firstLeadingBit(u_input.a.x));
    return -abs(min(-var_0.a << (~arg_1.x % 32u), _wgslsmith_mult_i32(~7272i, u_input.a.x)));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: vec4<f32>) -> Struct_3 {
    var var_0 = Struct_5(false, firstLeadingBit(vec2<u32>(1u, 1u)), Struct_2(-u_input.a.x), !any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), true)));
    var var_1 = Struct_2(2147483647i);
    let var_2 = select(vec4<i32>(select(countOneBits(u_input.a.x), _wgslsmith_sub_i32(u_input.a.x, _wgslsmith_add_i32(var_0.c.a, -1i)), select(!var_0.d, true, any(vec2<bool>(var_0.d, var_0.a)))), _wgslsmith_add_i32(~2147483647i ^ firstTrailingBit(var_0.c.a), 0i), -1i, u_input.a.x), _wgslsmith_mult_vec4_i32(~(-vec4<i32>(var_1.a, 1i, arg_0, -34126i) ^ (vec4<i32>(-1i, var_0.c.a, u_input.a.x, 8846i) | vec4<i32>(u_input.a.x, 48065i, u_input.a.x, -2147483647i))), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0, var_1.a, func_3(-5869i, var_0.b, var_0.d, Struct_4(Struct_3(Struct_1(vec4<i32>(-20467i, 0i, u_input.a.x, 27021i), -25252i, vec4<i32>(arg_1, var_1.a, u_input.a.x, u_input.a.x), var_0.b.x, vec3<u32>(4294967295u, 1u, var_0.b.x)), arg_1, -1554f, var_0.d), arg_2.xw)), -u_input.a.x), ~_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, arg_1, -10774i, u_input.a.x), vec4<i32>(arg_0, 5231i, -2147483647i, 2147483647i)), firstTrailingBit(vec4<i32>(arg_0, arg_0, var_0.c.a, -18302i)))), true);
    var_0 = Struct_5(false, reverseBits(vec2<u32>(35382u, ~(~var_0.b.x))), var_0.c, var_0.d && select(all(select(vec3<bool>(true, true, var_0.d), vec3<bool>(true, var_0.d, false), vec3<bool>(var_0.a, var_0.a, true))), var_0.d, any(vec4<bool>(var_0.d, false, false, var_0.a))));
    var var_3 = _wgslsmith_f_op_vec3_f32(arg_2.xzw - _wgslsmith_f_op_vec3_f32(trunc(arg_2.xyz)));
    return Struct_3(Struct_1(var_2, -12953i, var_2, ~var_0.b.x, ~firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.b.x, 82073u, var_0.b.x), vec3<u32>(98349u, 64762u, 7059u)))), 0i, arg_2.x, true);
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: bool) -> vec4<i32> {
    return countOneBits(vec4<i32>(func_2(firstLeadingBit(1i), reverseBits(8596i), vec4<f32>(_wgslsmith_f_op_f32(max(1000f, 221f)), 1693f, _wgslsmith_f_op_f32(-1338f + arg_1.c), arg_1.c)).a.b, _wgslsmith_dot_vec3_i32(arg_1.a.c.yxx | ~arg_1.a.a.xxw, arg_1.a.c.wxw), ~max(u_input.a.x ^ 16870i, min(6847i, -2147483647i)), 0i));
}

fn func_1(arg_0: vec3<bool>) -> f32 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_div_vec4_i32(max(abs(vec4<i32>(u_input.a.x, 0i, 12303i, u_input.a.x)), ~vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, u_input.a.x)), -vec4<i32>(2147483647i, 17866i, u_input.a.x, u_input.a.x) >> (abs(vec4<u32>(31480u, 0u, 1u, 11101u)) % vec4<u32>(32u))), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-15437i, u_input.a.x, -2147483647i, 0i), vec4<i32>(u_input.a.x, 2147483647i, -2147483647i, u_input.a.x), vec4<i32>(-20758i, u_input.a.x, u_input.a.x, u_input.a.x)) | _wgslsmith_mult_vec4_i32(vec4<i32>(-18735i, u_input.a.x, -37376i, u_input.a.x), vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.a.x)), func_4(_wgslsmith_f_op_f32(f32(-1f) * -2386f), func_2(-4799i, -2147483647i, vec4<f32>(442f, -1209f, 1009f, 918f)), ~vec2<u32>(4294967295u, 0u), arg_0.x)), vec4<i32>(u_input.a.x, _wgslsmith_sub_i32(u_input.a.x, _wgslsmith_dot_vec2_i32(u_input.a.zx, vec2<i32>(u_input.a.x, u_input.a.x))), 1i, u_input.a.x | _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 0i), vec2<i32>(0i, u_input.a.x))), _wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(1u, 2188u))), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), firstLeadingBit(countOneBits(vec3<u32>(0u, 1u, 4294967295u))))), 0i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-117f * -292f), 127f)), -750f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-392f, _wgslsmith_f_op_f32(f32(-1f) * -1236f)))), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(3894u, 91039u, 0u, 0u), vec4<u32>(8051u, 0u, 4294967295u, 4294967295u)), ~0u), abs(min(vec2<u32>(46146u, 0u), vec2<u32>(4294967295u, 0u)))) == select(~1u, 1u, select(arg_0.x, arg_0.x, true) | arg_0.x));
    var var_1 = Struct_2(36630i);
    var_0 = func_2(~(~1i | _wgslsmith_mod_i32(abs(u_input.a.x), u_input.a.x | 2147483647i)), 9308i, vec4<f32>(-269f, var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(284f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1034f - var_0.c) - _wgslsmith_f_op_f32(min(var_0.c, var_0.c)))), 691f));
    var var_2 = arg_0.x;
    var var_3 = ~(~vec3<u32>(firstTrailingBit(~var_0.a.e.x), 40464u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(var_0.a.e.yz, vec2<u32>(var_0.a.d, var_0.a.e.x)), vec2<u32>(4294967295u, var_0.a.d))));
    return _wgslsmith_f_op_f32(-var_0.c);
}

fn func_5(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: u32) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1403f, _wgslsmith_f_op_f32(-arg_1.x)) + arg_1.x), 1f, arg_1.x, _wgslsmith_f_op_f32(arg_1.x + 2191f)) + arg_1);
    let var_1 = _wgslsmith_mult_u32(33088u, _wgslsmith_add_u32(1u, 0u));
    let var_2 = Struct_5(false, _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(max(abs(vec2<u32>(arg_2, 0u)), vec2<u32>(arg_2, var_1)), vec2<u32>(~2492u, arg_2)), ~vec2<u32>(0u, 0u)), Struct_2(_wgslsmith_mult_i32(_wgslsmith_div_i32(18277i, i32(-1i) * -2147483647i), abs(func_4(-156f, Struct_3(Struct_1(vec4<i32>(u_input.a.x, 34503i, u_input.a.x, 0i), -40515i, vec4<i32>(u_input.a.x, u_input.a.x, 0i, -62041i), var_1, vec3<u32>(var_1, arg_2, arg_2)), 1i, var_0.x, arg_0.x), vec2<u32>(1u, arg_2), true).x))), !(select(true, arg_0.x, false) && true) || false);
    let var_3 = !any(select(select(vec2<bool>(true, true), select(arg_0.zy, vec2<bool>(var_2.a, false), arg_0.yx), select(vec2<bool>(true, var_2.d), arg_0.xx, true)), arg_0.xx, arg_0.x));
    let var_4 = Struct_5(!var_3, _wgslsmith_mod_vec2_u32(~select(min(vec2<u32>(var_1, arg_2), var_2.b), var_2.b, false), var_2.b << (vec2<u32>(~var_1, 4294967295u) % vec2<u32>(32u))), var_2.c, false);
    return Struct_4(Struct_3(func_2(-10511i, max(_wgslsmith_sub_i32(u_input.a.x, -10289i), _wgslsmith_sub_i32(u_input.a.x, -41643i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0 - vec4<f32>(arg_1.x, -1387f, arg_1.x, var_0.x)))).a, _wgslsmith_add_i32(~max(var_4.c.a, 12126i), select(func_4(arg_1.x, Struct_3(Struct_1(vec4<i32>(2147483647i, 2147483647i, u_input.a.x, var_4.c.a), var_4.c.a, vec4<i32>(var_2.c.a, -1i, var_2.c.a, var_2.c.a), 22485u, vec3<u32>(29722u, var_2.b.x, 35713u)), 2147483647i, arg_1.x, var_2.d), vec2<u32>(0u, 62422u), var_4.a).x, var_4.c.a, var_4.d || true)), _wgslsmith_f_op_f32(-arg_1.x), all(vec4<bool>(1000f > var_0.x, arg_1.x == var_0.x, true, true))), vec2<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(arg_1.x + var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec3<bool>(select(true, false, true), !(true & select(true, true, false)), (all(vec2<bool>(false, true)) & true) & true), !vec3<bool>(true, false, true && (-2147483647i < u_input.a.x)), true);
    let var_1 = all(vec4<bool>(true | any(vec2<bool>(var_0.x, var_0.x)), true, false, false));
    let var_2 = func_5(select(var_0, select(!var_0, !(!vec3<bool>(true, true, var_0.x)), var_0), !(-u_input.a.x == _wgslsmith_sub_i32(2147483647i, 0i))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-211f))), _wgslsmith_f_op_f32(func_1(var_0)), -1501f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -342f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1103f * -1228f), _wgslsmith_f_op_f32(round(1292f))))), abs(_wgslsmith_sub_u32(~(~132982u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 36993u, 8348u), vec3<u32>(43101u, 4294967295u, 41785u)))));
    global0 = _wgslsmith_mod_u32(countOneBits(firstTrailingBit(0u)), var_2.a.a.e.x);
    global0 = max(var_2.a.a.e.x, ~var_2.a.a.d);
    var var_3 = var_2.b.x;
    let var_4 = func_2(_wgslsmith_sub_i32(var_2.a.a.a.x, 1i) & var_2.a.b, func_3(37815i, var_2.a.a.e.yz, false, var_2), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a.c, var_2.a.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.x) * _wgslsmith_f_op_f32(-var_2.b.x)))), -396f, var_2.b.x, var_2.a.c)).a;
    let var_5 = u_input.a.x;
    var_3 = var_2.a.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_2.a.c - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2.a.c, -577f)) + _wgslsmith_f_op_f32(-var_2.b.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_2.a.c, var_2.a.c, var_2.a.c), vec3<f32>(var_2.b.x, var_2.a.c, -683f)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.c, var_2.a.c, var_2.b.x) - vec3<f32>(-498f, var_2.b.x, var_2.a.c)) * vec3<f32>(604f, var_2.a.c, var_2.a.c)))));
}

