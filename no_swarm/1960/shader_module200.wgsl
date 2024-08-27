struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9>;

var<private> global1: Struct_5 = Struct_5(vec3<f32>(-162f, -254f, -636f), vec4<bool>(true, false, true, true), Struct_1(-586f, 990f));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> vec2<u32> {
    global0 = array<f32, 9>();
    let var_0 = vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(u_input.a, max(u_input.a, 0u)), ~u_input.a, 0u, 17191u), ~(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) & _wgslsmith_clamp_vec4_u32(vec4<u32>(62011u, u_input.a, 4294967295u, u_input.a), vec4<u32>(u_input.a, u_input.a, 39788u, 4294967295u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)))), select(_wgslsmith_mult_u32(~_wgslsmith_div_u32(1u, u_input.a), u_input.a), ~max(~1366u, ~u_input.a), true), abs(u_input.a), _wgslsmith_mod_u32(u_input.a, abs(u_input.a)));
    var var_1 = Struct_3(Struct_2(var_0.xyz, ~_wgslsmith_sub_vec3_i32(vec3<i32>(13324i, -63679i, 0i), vec3<i32>(11528i, 1i, 2147483647i)) >> (var_0.zzz % vec3<u32>(32u)), ~max(~0i, 0i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0, -494f, 102f, global1.a.x))))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -554f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0, 401f, true)) * _wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-706f - global1.c.a))))));
    var_1 = Struct_3(Struct_2(countOneBits(~firstLeadingBit(var_0.zwy)), vec3<i32>(max(~(-1i), 18852i), _wgslsmith_add_i32(33091i, var_1.a.b.x | -14227i), var_1.a.b.x), var_1.a.c, vec4<f32>(arg_0, -1541f, arg_0, -1133f)));
    return max(min(var_1.a.a.zz, _wgslsmith_clamp_vec2_u32(var_1.a.a.zz, var_0.wz, max(var_0.zw, var_0.xx) & var_0.yx)), var_1.a.a.zx);
}

fn func_2() -> Struct_1 {
    global0 = array<f32, 9>();
    let var_0 = ~(vec2<u32>(abs(u_input.a), _wgslsmith_div_u32(1u, ~u_input.a)) ^ min(~vec2<u32>(u_input.a, 1u), ~func_3(global0[_wgslsmith_index_u32(u_input.a, 9u)])));
    global0 = array<f32, 9>();
    var var_1 = vec2<bool>(false, all(select(global1.b, !(!global1.b), true)));
    let var_2 = select(vec2<bool>(true, select(all(!global1.b.wzz), !(!global1.b.x), true)), global1.b.zw, select(vec2<bool>(false, true), select(vec2<bool>(true, false | var_1.x), vec2<bool>(var_0.x <= u_input.a, true), global1.b.wz), global1.b.x));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.a, 9u)], -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1322f)) * global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 1u), 9u)])) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1609f) + 1034f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.x, 9u)]), -679f, any(global1.b.yxz))));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = i32(-1i) * -15130i;
    global1 = Struct_5(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_div_f32(1645f, _wgslsmith_f_op_f32(step(-102f, global0[_wgslsmith_index_u32(u_input.a, 9u)]))), -809f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + global0[_wgslsmith_index_u32(47330u, 9u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 9u)] + -1097f), global1.c.b, -352f) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -997f), arg_1.b, _wgslsmith_f_op_f32(f32(-1f) * -1306f))))), select(global1.b, select(select(global1.b, !global1.b, true), !arg_0, vec4<bool>(true, true, true, true)), var_0 < _wgslsmith_mult_i32(var_0, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0, -1i, -82295i), vec3<i32>(-527i, -2147483647i, 0i)))), func_2());
    let var_1 = select(all(arg_0.zwx), !global1.b.x | (true | !select(true, global1.b.x, false)), true);
    var var_2 = vec2<bool>(!(!var_1), all(vec2<bool>(true, var_1)) || (!arg_0.x != (_wgslsmith_sub_u32(u_input.a, 16513u) <= 81816u)));
    var_2 = arg_0.zz;
    return arg_0.wyy;
}

fn func_5(arg_0: vec3<i32>, arg_1: bool, arg_2: vec3<f32>, arg_3: bool) -> Struct_4 {
    let var_0 = true;
    let var_1 = 582f;
    var var_2 = global1.c;
    global0 = array<f32, 9>();
    global1 = Struct_5(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(449f, var_2.b))), -1333f, _wgslsmith_f_op_f32(select(1278f, _wgslsmith_div_f32(242f, 784f), true))), arg_2, true)), vec4<bool>(false, 1i >= _wgslsmith_dot_vec4_i32(vec4<i32>(-5626i, arg_0.x, 0i, 1i) | vec4<i32>(-37336i, arg_0.x, arg_0.x, arg_0.x), -vec4<i32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), var_1 > -938f, false), Struct_1(505f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.c.b * var_1), _wgslsmith_f_op_f32(-var_1)) + 1420f)));
    return Struct_4(-1080f, Struct_1(var_2.b, global1.c.a));
}

fn func_6(arg_0: Struct_4, arg_1: i32, arg_2: bool, arg_3: vec2<bool>) -> Struct_2 {
    var var_0 = 1u;
    var var_1 = _wgslsmith_f_op_f32(-940f - _wgslsmith_f_op_f32(ceil(209f)));
    let var_2 = u_input.a;
    global0 = array<f32, 9>();
    let var_3 = _wgslsmith_mult_u32(1u, 1u);
    return Struct_2(~min(abs(abs(vec3<u32>(4294967295u, 4294967295u, 24160u))), ~(~vec3<u32>(13233u, var_3, var_3))), -min(select(-vec3<i32>(21051i, arg_1, -68619i), vec3<i32>(2147483647i, arg_1, arg_1), true), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, arg_1, arg_1), vec3<i32>(arg_1, arg_1, arg_1)), vec3<i32>(arg_1, 1i, -26284i) ^ vec3<i32>(arg_1, 0i, arg_1))), -1812i, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(583f, -440f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.a.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1338f, arg_0.b.b)))), arg_0.b.a));
}

fn func_1(arg_0: f32, arg_1: vec4<bool>, arg_2: u32, arg_3: i32) -> Struct_2 {
    let var_0 = global1.c;
    let var_1 = ~(~(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, arg_2, 57896u), vec3<u32>(59971u, arg_2, u_input.a))) & vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(28396u, u_input.a), u_input.a), ~(~53619u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, arg_2, arg_2), ~vec4<u32>(4294967295u, u_input.a, 7267u, 0u))));
    let var_2 = -14510i;
    var var_3 = global1.c;
    var_3 = global1.c;
    return func_6(func_5(min(max(vec3<i32>(-1i, 15060i, 471i), vec3<i32>(var_2, var_2, var_2)), vec3<i32>(0i, 0i, 26453i) ^ vec3<i32>(2147483647i, var_2, 0i)) ^ -vec3<i32>(2147483647i, 1i, 2147483647i), any(func_4(global1.b, func_2())), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1612f, global0[_wgslsmith_index_u32(u_input.a, 9u)], var_0.b)))))), any(arg_1.xwy)), select(select(arg_3, countOneBits(firstTrailingBit(-45845i)), arg_1.x), _wgslsmith_dot_vec4_i32(select(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, arg_3, arg_3, 39170i), vec4<i32>(6384i, -1915i, arg_3, var_2)), vec4<i32>(0i, -11041i, -10958i, 339i), false), select(vec4<i32>(var_2, -2147483647i, -2147483647i, arg_3) ^ vec4<i32>(16307i, arg_3, -54079i, 2147483647i), vec4<i32>(2147483647i, var_2, -7059i, var_2) | vec4<i32>(var_2, 2147483647i, var_2, -2147483647i), !arg_1.x)), func_4(!(!arg_1), func_2()).x), any(!arg_1.wzy), vec2<bool>(any(select(vec4<bool>(true, false, global1.b.x, arg_1.x), !arg_1, arg_1)), -786f > global0[_wgslsmith_index_u32(u_input.a, 9u)]));
}

fn func_7(arg_0: Struct_2, arg_1: bool, arg_2: Struct_4) -> Struct_1 {
    var var_0 = !select(select(vec2<bool>(arg_0.a.x > u_input.a, func_4(global1.b, Struct_1(global0[_wgslsmith_index_u32(u_input.a, 9u)], -401f)).x), global1.b.xy, global1.b.zy), vec2<bool>(!(50665u <= arg_0.a.x), select(true | arg_1, true, arg_1)), func_4(vec4<bool>(true, true, true, global1.b.x), Struct_1(global1.a.x, _wgslsmith_f_op_f32(-global1.c.b))).yy);
    let var_1 = arg_2;
    global0 = array<f32, 9>();
    let var_2 = max(select(vec3<i32>(-1i, _wgslsmith_sub_i32(arg_0.b.x, arg_0.c), 1i), firstLeadingBit(abs(arg_0.b)), select(global1.b.yxw, vec3<bool>(var_0.x, false, false), !vec3<bool>(arg_1, var_0.x, arg_1))) | arg_0.b, arg_0.b & -firstLeadingBit(abs(vec3<i32>(-2147483647i, arg_0.b.x, arg_0.c))));
    let var_3 = -2147483647i >> (_wgslsmith_mult_u32(_wgslsmith_div_u32(arg_0.a.x, ~(~u_input.a)), ~func_6(var_1, -20723i, global1.b.x, global1.b.ww).a.x >> (~(~arg_0.a.x) % 32u)) % 32u);
    return global1.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(func_1(global0[_wgslsmith_index_u32(46738u, 9u)], global1.b, u_input.a, abs(firstTrailingBit(-43804i))), global1.b.x, Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1488u, 9u)] * -355f))), func_2()));
    let var_1 = Struct_3(Struct_2(~(vec3<u32>(u_input.a, u_input.a, 2848u) >> (firstTrailingBit(vec3<u32>(u_input.a, u_input.a, u_input.a)) % vec3<u32>(32u))), ~func_1(-1059f, !global1.b, u_input.a >> (u_input.a % 32u), -36359i).b, i32(-1i) * -39700i, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.x, -326f, global0[_wgslsmith_index_u32(u_input.a, 9u)], global0[_wgslsmith_index_u32(1999u, 9u)]) - vec4<f32>(var_0.b, -1000f, global1.a.x, global1.c.b)), vec4<f32>(-1000f, -100f, global0[_wgslsmith_index_u32(u_input.a, 9u)], -398f))))));
    var var_2 = 527f;
    var_0 = Struct_1(global0[_wgslsmith_index_u32(max(1u, u_input.a), 9u)], global0[_wgslsmith_index_u32(4294967295u & u_input.a, 9u)]);
    var var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1699f, -1867f, -529f)), vec3<f32>(103f, -1465f, func_5(-func_6(Struct_4(var_0.b, global1.c), var_1.a.b.x, true, global1.b.xx).b, all(vec3<bool>(global1.b.x, global1.b.x, false)), vec3<f32>(1f, 1f, 1f), any(vec2<bool>(global1.b.x, true))).a), select(select(vec3<bool>(true & global1.b.x, true, global1.b.x & global1.b.x), select(!vec3<bool>(global1.b.x, false, global1.b.x), !global1.b.wwz, func_4(vec4<bool>(global1.b.x, true, false, global1.b.x), global1.c)), func_4(vec4<bool>(false, false, global1.b.x, false), Struct_1(global1.a.x, -2323f))), vec3<bool>(true, global1.b.x, global1.b.x), false)));
    let var_4 = vec4<f32>(global0[_wgslsmith_index_u32(firstLeadingBit(~4027u), 9u)], _wgslsmith_f_op_f32(exp2(var_1.a.d.x)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(7368u, 9u)]), _wgslsmith_f_op_f32(_wgslsmith_div_f32(339f, global1.a.x) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(366f * var_1.a.d.x) * _wgslsmith_div_f32(var_1.a.d.x, var_1.a.d.x)), -323f)));
    let var_5 = func_7(func_6(func_5(_wgslsmith_mod_vec3_i32(var_1.a.b, vec3<i32>(1i, var_1.a.c, -1i)), global1.b.x, vec3<f32>(_wgslsmith_f_op_f32(min(var_4.x, global0[_wgslsmith_index_u32(u_input.a, 9u)])), _wgslsmith_f_op_f32(min(global1.c.a, -947f)), _wgslsmith_f_op_f32(abs(2173f))), global1.b.x), 39760i, global1.b.x, !select(!vec2<bool>(global1.b.x, global1.b.x), select(vec2<bool>(global1.b.x, global1.b.x), vec2<bool>(true, true), vec2<bool>(global1.b.x, global1.b.x)), vec2<bool>(false, false))), !any(global1.b.xx), func_5(max(func_6(func_5(vec3<i32>(-2147483647i, var_1.a.c, var_1.a.c), true, var_1.a.d.xyx, true), var_1.a.c, global1.b.x, vec2<bool>(global1.b.x, true)).b, vec3<i32>(func_1(-1188f, global1.b, 47905u, var_1.a.b.x).c, ~var_1.a.c, 2147483647i)), var_1.a.a.x != (firstTrailingBit(u_input.a) << (max(u_input.a, var_1.a.a.x) % 32u)), var_1.a.d.ywx, global1.b.x));
    var_3 = _wgslsmith_f_op_vec3_f32(global1.a + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-486f, var_5.a, var_5.b) + vec3<f32>(var_1.a.d.x, var_3.x, var_5.a)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(5340u, 9u)], -147f, var_1.a.d.x)) * global1.a)), _wgslsmith_f_op_vec3_f32(global1.a + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.a.d.wxy - var_4.wxy) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 9u)], -651f, global1.c.b))))));
    let var_6 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.a, _wgslsmith_f_op_f32(select(-1623f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.b)))), global1.b.x)), var_6.c, select(1u, 0u, !(!global1.b.x)), 1u);
}

