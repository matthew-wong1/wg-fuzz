struct Struct_1 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 25231u;

var<private> global1: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec3<i32>(7975i, i32(-2147483648), i32(-2147483648)), -6829i), Struct_1(vec3<i32>(2147483647i, i32(-2147483648), -3484i), 0i), Struct_1(vec3<i32>(-1i, -1i, -1i), 2789i), Struct_1(vec3<i32>(1i, -20777i, 2147483647i), 1i), Struct_1(vec3<i32>(30948i, 47816i, -36948i), -1i), Struct_1(vec3<i32>(-1i, 2147483647i, -34181i), 1i), Struct_1(vec3<i32>(-20831i, 2147483647i, -25275i), -66164i), Struct_1(vec3<i32>(0i, 1i, 2147483647i), 0i), Struct_1(vec3<i32>(0i, -37831i, -23908i), -35108i), Struct_1(vec3<i32>(-1i, 33708i, 8042i), -3714i), Struct_1(vec3<i32>(39271i, 1i, -1i), 2147483647i), Struct_1(vec3<i32>(-1i, -61103i, 39410i), 13370i), Struct_1(vec3<i32>(0i, 1i, i32(-2147483648)), -962i), Struct_1(vec3<i32>(i32(-2147483648), -1i, 4135i), 14954i), Struct_1(vec3<i32>(39859i, -1i, 2147483647i), 0i), Struct_1(vec3<i32>(i32(-2147483648), -11839i, 2147483647i), 0i), Struct_1(vec3<i32>(36927i, -6364i, 2147483647i), -31399i), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, -26741i), 41703i), Struct_1(vec3<i32>(2147483647i, 41004i, -17915i), 101148i), Struct_1(vec3<i32>(0i, -21904i, i32(-2147483648)), 2147483647i), Struct_1(vec3<i32>(2147483647i, 0i, 24485i), 1i));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: f32) -> u32 {
    global1 = array<Struct_1, 21>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, 1082f, 158f)))))) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, _wgslsmith_f_op_f32(ceil(arg_2)), _wgslsmith_f_op_f32(ceil(296f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-735f, arg_2, arg_2) - vec3<f32>(222f, -926f, 258f))))));
    var var_1 = Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, ~5744u), 21u)], _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-637f, var_0.x, -1459f, -1639f), vec4<f32>(arg_2, 1403f, var_0.x, var_0.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, 1015f, 1216f, var_0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2238f, 1000f, -570f, -933f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-418f, var_0.x, -262f, var_0.x)))), vec4<bool>(!any(vec3<bool>(true, false, true)), all(vec3<bool>(false, true, true)), all(vec4<bool>(true, false, false, true)), 1345f < arg_2))), Struct_1(_wgslsmith_div_vec3_i32(arg_1.a, vec3<i32>(-arg_0, arg_1.b, 38308i)), u_input.b));
    let var_2 = ~_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, u_input.b, ~arg_1.b | ~17651i), ~firstTrailingBit(vec4<i32>(arg_0, -2147483647i, arg_0, arg_1.a.x)) << ((~vec4<u32>(4294967295u, u_input.a, 1u, 1u) | ~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)) % vec4<u32>(32u)));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * 1319f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -446f) - _wgslsmith_div_f32(-562f, -130f)))), _wgslsmith_f_op_f32(step(var_1.b.x, _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.b.x)))))), var_1.b.x);
    return _wgslsmith_dot_vec4_u32(vec4<u32>(30308u, u_input.a, ~(~0u), u_input.a), ~max(firstTrailingBit(vec4<u32>(4294967295u, 4294967295u, 1u, u_input.a)), firstLeadingBit(abs(vec4<u32>(34092u, u_input.a, u_input.a, 73932u)))));
}

fn func_4(arg_0: Struct_3, arg_1: f32) -> f32 {
    let var_0 = arg_0;
    var var_1 = var_0.b;
    var var_2 = _wgslsmith_mod_i32(~2147483647i, 14999i);
    var var_3 = Struct_3(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.a, 0u, 4294967295u), vec4<u32>(u_input.a, 16312u, u_input.a, 0u)), vec4<u32>(u_input.a, 0u, u_input.a, 37134u) >> (vec4<u32>(68326u, u_input.a, 1u, u_input.a) % vec4<u32>(32u))) ^ u_input.a), 21u)], global1[_wgslsmith_index_u32(~u_input.a, 21u)], var_0.a.a.x, var_1.a.x & max(var_1.b, -7607i), _wgslsmith_f_op_f32(min(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-802f * _wgslsmith_f_op_f32(round(706f))) * arg_0.e))));
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0.e * _wgslsmith_f_op_f32(-arg_1)), 331f, -1607f, var_0.e)) - vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_1)), 740f, _wgslsmith_f_op_f32(step(var_3.e, arg_0.e)), var_0.e));
    return var_3.e;
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_3(Struct_1(vec3<i32>(~2147483647i, 0i, -9432i) ^ vec3<i32>(1i, u_input.b, ~u_input.b), reverseBits(~(-71778i))), global1[_wgslsmith_index_u32((u_input.a & u_input.a) ^ abs(1u), 21u)], u_input.b, ~1i, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_4(Struct_3(global1[_wgslsmith_index_u32(59459u >> (0u % 32u), 21u)], global1[_wgslsmith_index_u32(func_3(u_input.b, Struct_1(vec3<i32>(u_input.b, u_input.b, u_input.b), -2147483647i), -263f), 21u)], u_input.b << (1u % 32u), u_input.b, _wgslsmith_f_op_f32(step(-136f, -1000f))), _wgslsmith_f_op_f32(f32(-1f) * -486f))))));
    return Struct_3(var_0.a, var_0.b, ~_wgslsmith_div_i32(36309i, -2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(max(_wgslsmith_add_i32(-18447i, var_0.a.a.x), -10463i), max(u_input.b, -var_0.a.b), _wgslsmith_mult_i32(~var_0.a.b, ~(-2147483647i))), -_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(var_0.b.a, vec3<i32>(u_input.b, u_input.b, -10827i)), _wgslsmith_div_vec3_i32(var_0.a.a, var_0.a.a))), var_0.e);
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(exp2(arg_0.b.x));
    global1 = array<Struct_1, 21>();
    var var_1 = ~(~0u);
    var var_2 = func_2();
    let var_3 = Struct_3(arg_0.a, Struct_1(arg_2.a, _wgslsmith_add_i32(countOneBits(i32(-1i) * -12720i), i32(-1i) * -u_input.b)), abs(_wgslsmith_mult_i32(arg_0.c.a.x, 1i)), arg_0.c.a.x, _wgslsmith_f_op_f32(func_4(func_2(), -719f)));
    return _wgslsmith_f_op_vec2_f32(select(arg_0.b.zz, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, -332f) - vec2<f32>(arg_0.b.x, 1420f)), !vec2<bool>(u_input.a > 1u, any(vec3<bool>(true, true, true)))));
}

fn func_5(arg_0: vec2<f32>, arg_1: f32) -> Struct_1 {
    global0 = min(4294967295u, func_3(firstTrailingBit(_wgslsmith_mod_i32(30923i, -31696i)), Struct_1(vec3<i32>(u_input.b, 1i << (0u % 32u), 4493i), u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-673f * arg_1) * 929f))));
    global0 = 4294967295u;
    global0 = u_input.a;
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.x, 125f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(1052f)))), arg_1, _wgslsmith_f_op_f32(-arg_1))), vec4<f32>(434f, -1022f, -261f, -198f), ((_wgslsmith_f_op_f32(-arg_1) < arg_1) & true) && (u_input.b < u_input.b)));
    var var_1 = firstTrailingBit(vec4<u32>(4294967295u, 12154u, ~func_3(1i, func_2().a, var_0.x), 30236u));
    return func_2().b;
}

fn func_6(arg_0: Struct_3, arg_1: bool, arg_2: Struct_2, arg_3: f32) -> Struct_3 {
    var var_0 = arg_2.b.wx;
    let var_1 = vec3<i32>(countOneBits(max(arg_0.c, u_input.b)), _wgslsmith_dot_vec4_i32(~abs(vec4<i32>(u_input.b, -2147483647i, arg_2.c.b, arg_0.d)) << ((vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) | ~vec4<u32>(34662u, 1u, 16967u, u_input.a)) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(abs(-56555i), -arg_0.d, _wgslsmith_add_i32(-4800i, arg_0.b.b), _wgslsmith_mod_i32(u_input.b, -37140i)), vec4<i32>(u_input.b, -11741i, ~0i, arg_0.b.a.x << (0u % 32u)), ~firstLeadingBit(vec4<i32>(u_input.b, -2147483647i, -1i, arg_0.b.a.x)))), countOneBits(-38010i));
    let var_2 = _wgslsmith_sub_u32(u_input.a, ~_wgslsmith_mult_u32(u_input.a, u_input.a >> (_wgslsmith_dot_vec2_u32(vec2<u32>(16288u, u_input.a), vec2<u32>(4294967295u, u_input.a)) % 32u)));
    global1 = array<Struct_1, 21>();
    var var_3 = arg_0;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = false;
    var var_2 = func_6(Struct_3(Struct_1(abs(~vec3<i32>(u_input.b, -36638i, u_input.b)), u_input.b), func_5(_wgslsmith_f_op_vec2_f32(func_1(Struct_2(Struct_1(vec3<i32>(0i, 42808i, u_input.b), u_input.b), vec4<f32>(1634f, 1105f, 295f, 1481f), global1[_wgslsmith_index_u32(1u, 21u)]), -10739i, Struct_1(vec3<i32>(u_input.b, -2147483647i, u_input.b), u_input.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1916f + 1448f))), u_input.b, _wgslsmith_div_i32(-1i, _wgslsmith_clamp_i32(max(u_input.b, 6601i), abs(u_input.b), func_5(vec2<f32>(-2598f, 524f), -1000f).a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f)))), !((all(vec4<bool>(var_0, var_0, true, true)) && true) && !var_1), Struct_2(func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(946f, -295f), vec2<f32>(-239f, 597f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(1620f))))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1553f), _wgslsmith_f_op_f32(f32(-1f) * -882f), _wgslsmith_div_f32(-596f, -1100f), _wgslsmith_f_op_f32(trunc(-573f))))), global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.a, 4294967295u), 21u)]), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, 119f))), -2079f)))));
    var var_3 = all(vec3<bool>(true | !var_1, var_1, all(select(select(vec4<bool>(var_0, false, var_0, var_1), vec4<bool>(true, false, var_1, var_1), vec4<bool>(var_1, false, false, false)), vec4<bool>(true, true, true, true), !vec4<bool>(true, true, var_1, true)))));
    var_2 = func_6(func_2(), true, Struct_2(Struct_1(-var_2.a.a & ~var_2.a.a, -(~67097i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1424f, var_2.e, -893f, var_2.e)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1302f, var_2.e, var_2.e, var_2.e) + vec4<f32>(-1859f, var_2.e, -1537f, var_2.e)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-569f, var_2.e, 737f, var_2.e) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.e, var_2.e, var_2.e, 143f)))), Struct_1(func_5(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1010f, var_2.e), vec2<f32>(1000f, -1000f))), var_2.e).a, _wgslsmith_mod_i32(u_input.b, var_2.d))), 1043f);
    let var_4 = Struct_1(vec3<i32>(var_2.d, func_6(func_2(), var_1, Struct_2(Struct_1(var_2.b.a, u_input.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.e, -1228f, 125f, -588f) - vec4<f32>(640f, 545f, var_2.e, var_2.e)), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, u_input.a), 21u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.e + -674f) * var_2.e)).a.a.x, firstLeadingBit(firstLeadingBit(-24003i)) | ~_wgslsmith_sub_i32(1i, u_input.b)), _wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.b, 1i), var_2.b.b));
    let var_5 = vec3<f32>(var_2.e, var_2.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(194f, -640f)))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -608f)), _wgslsmith_f_op_f32(344f - -1065f), !var_0))));
    var_3 = all(!(!select(select(vec2<bool>(var_0, var_1), vec2<bool>(var_0, false), var_0), !vec2<bool>(true, var_0), vec2<bool>(true, var_1))));
    let var_6 = vec3<bool>(false, ~_wgslsmith_dot_vec4_u32(select(vec4<u32>(8742u, u_input.a, u_input.a, 66634u), vec4<u32>(u_input.a, 1u, u_input.a, 0u), vec4<bool>(var_0, var_0, var_0, false)), ~vec4<u32>(20357u, 13535u, 39882u, 4294967295u)) != ~(~1u), all(vec4<bool>(var_1, var_1, false, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_5.xx)), func_5(vec2<f32>(1000f, -1000f), var_5.x).b);
}

