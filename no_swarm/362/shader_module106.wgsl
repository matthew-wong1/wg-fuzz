struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: bool,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
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

var<private> global0: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(-1i, vec2<i32>(-18635i, 18879i), vec4<u32>(130792u, 1u, 4294967295u, 26168u)), Struct_1(20785i, vec2<i32>(24935i, -6034i), vec4<u32>(121027u, 48414u, 44509u, 1u)), Struct_1(-51295i, vec2<i32>(7202i, -17159i), vec4<u32>(0u, 11726u, 1u, 0u)), Struct_1(0i, vec2<i32>(64946i, -1i), vec4<u32>(24178u, 0u, 1u, 76222u)), Struct_1(37324i, vec2<i32>(-1i, -29000i), vec4<u32>(40637u, 4294967295u, 42395u, 0u)), Struct_1(1i, vec2<i32>(-51488i, 0i), vec4<u32>(2992u, 1u, 29434u, 1u)), Struct_1(i32(-2147483648), vec2<i32>(1i, 10748i), vec4<u32>(1u, 1u, 53017u, 5295u)), Struct_1(-1i, vec2<i32>(-1i, -5022i), vec4<u32>(1u, 1u, 33480u, 1u)), Struct_1(-1i, vec2<i32>(10003i, 1i), vec4<u32>(34458u, 0u, 1u, 4294967295u)), Struct_1(2147483647i, vec2<i32>(2147483647i, 0i), vec4<u32>(31762u, 0u, 0u, 4294967295u)));

var<private> global1: Struct_2;

var<private> global2: Struct_2 = Struct_2(1413f, 0u, true, -618f, 62803u);

var<private> global3: Struct_2;

var<private> global4: vec3<f32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: Struct_1) -> f32 {
    let var_0 = true;
    let var_1 = true;
    global2 = Struct_2(global1.a, u_input.c, any(vec4<bool>(0i < arg_2.b.x, !(var_0 & true), select(u_input.c > global1.e, true, true), !(arg_2.b.x <= -2147483647i))), _wgslsmith_f_op_f32(f32(-1f) * -558f), arg_2.c.x);
    global0 = array<Struct_1, 10>();
    var var_2 = Struct_1(1i, -u_input.b.zz, countOneBits(abs(~arg_2.c)));
    return 589f;
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: bool) -> f32 {
    global1 = Struct_2(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1504f, _wgslsmith_f_op_f32(-global4.x))), global2.d, Struct_1(u_input.b.x, -_wgslsmith_div_vec2_i32(u_input.b.zx, vec2<i32>(u_input.b.x, u_input.b.x)), min(~vec4<u32>(4294967295u, global1.e, arg_0, global1.b), vec4<u32>(arg_0, u_input.c, 58646u, 0u))))), _wgslsmith_div_u32(global3.e & global2.b, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(min(4294967295u, 0u), u_input.c), 4294967295u, global1.b ^ (0u & u_input.c))), all(!vec4<bool>(false, all(vec3<bool>(false, false, true)), 4136u != arg_1.b, any(vec3<bool>(false, arg_1.c, global3.c)))), global2.d, 67391u);
    let var_0 = !vec2<bool>((~global3.e >= ~48146u) & global3.c, !all(select(vec3<bool>(false, false, false), vec3<bool>(true, global3.c, global3.c), arg_1.c)));
    let var_1 = Struct_1(~(~(-2147483647i | u_input.b.x) & min(u_input.b.x, ~47197i)), ~vec2<i32>(u_input.a, _wgslsmith_mod_i32(56330i, u_input.a) | _wgslsmith_div_i32(u_input.a, 21977i)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_1.e, global1.b), ~vec3<u32>(11060u, 54062u, 4294967295u)), global2.e, global2.e ^ max(116654u, 145994u), _wgslsmith_dot_vec2_u32(vec2<u32>(77780u, 14254u), ~vec2<u32>(34957u, 1u))) & ~(~vec4<u32>(arg_0, 1u, 7855u, global1.b) | (vec4<u32>(global2.b, u_input.c, global1.e, global3.e) ^ vec4<u32>(global3.b, arg_0, 20025u, 44922u))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.x * -311f));
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: i32, arg_3: u32) -> i32 {
    var var_0 = vec3<bool>(!global3.c, true, true | global1.c);
    var var_1 = global0[_wgslsmith_index_u32(global2.b, 10u)];
    let var_2 = -184f;
    let var_3 = var_1.c;
    var var_4 = select(select(select(var_0.xx, !select(vec2<bool>(true, global1.c), vec2<bool>(var_0.x, true), var_0.xx), !(!vec2<bool>(global2.c, global3.c))), !(!var_0.zx), var_0.zy), !select(vec2<bool>(any(vec3<bool>(false, false, false)), true), vec2<bool>(true, !var_0.x), false | (arg_1 >= global3.d)), global2.c);
    return 9630i;
}

fn func_5(arg_0: i32, arg_1: vec2<u32>, arg_2: vec2<u32>, arg_3: vec2<i32>) -> vec4<u32> {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2.d), global4.x)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, ~arg_2.x), vec2<u32>(3195u, arg_2.x ^ 15975u)), false, _wgslsmith_f_op_f32(479f * -1884f), max(global2.e, max(1u, arg_1.x | (u_input.c << (u_input.c % 32u)))));
    var var_1 = global0[_wgslsmith_index_u32(4294967295u, 10u)];
    global4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global1.d), -913f, _wgslsmith_f_op_f32(global1.d + global2.a)))));
    var var_2 = var_0.b;
    let var_3 = (-384f == global1.d) && global1.c;
    return vec4<u32>(_wgslsmith_mult_u32(global3.e, min(_wgslsmith_mod_u32(arg_2.x, 1432u), var_1.c.x ^ u_input.c)) << (global3.e % 32u), ~countOneBits(~global1.e), _wgslsmith_sub_u32(abs(~arg_1.x), var_0.e) | global2.b, 7210u);
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(~(~(-u_input.b.x)), ~vec2<i32>(0i, _wgslsmith_sub_i32(1i, _wgslsmith_mod_i32(u_input.b.x, u_input.a))), func_5(func_4(max(-1i, -3980i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(0u, Struct_2(global4.x, global3.b, global2.c, global3.a, global2.e), global1.c)) + _wgslsmith_f_op_f32(abs(168f))), u_input.b.x, _wgslsmith_add_u32(1u, global1.b)), ~(firstLeadingBit(vec2<u32>(0u, global3.b)) & vec2<u32>(5034u, 41304u)), ~_wgslsmith_div_vec2_u32(vec2<u32>(global3.e, global2.e) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(vec2<u32>(32388u, global3.e), vec2<u32>(1u, global2.e))), _wgslsmith_div_vec2_i32(vec2<i32>(-1i, u_input.b.x >> (global3.b % 32u)), u_input.b.xw)));
    global0 = array<Struct_1, 10>();
    var var_1 = !vec2<bool>(any(select(select(vec4<bool>(global1.c, global2.c, global2.c, false), vec4<bool>(false, global2.c, global2.c, global2.c), true), !vec4<bool>(true, false, false, global3.c), select(vec4<bool>(false, false, global2.c, true), vec4<bool>(true, true, global3.c, false), vec4<bool>(true, global2.c, false, false)))), true & (true || all(vec2<bool>(global2.c, true))));
    var var_2 = u_input.c;
    let var_3 = !(!(select(!global3.c, !var_1.x, global1.d != global3.a) & global1.c));
    return Struct_1((i32(-1i) * -2147483647i) << (var_0.c.x % 32u), vec2<i32>(_wgslsmith_sub_i32(~u_input.a, reverseBits(var_0.a << (global2.b % 32u))), min(48924i, min(_wgslsmith_clamp_i32(-15822i, 0i, u_input.b.x), -var_0.b.x))), _wgslsmith_add_vec4_u32(max(vec4<u32>(countOneBits(19621u), 38153u, u_input.c, ~global3.e), vec4<u32>(~var_0.c.x, ~43472u, var_0.c.x, global1.b)), firstTrailingBit(firstLeadingBit(var_0.c))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<bool>(global2.c, global2.c), !vec2<bool>(!(!global2.c), !(global3.c && global1.c)), global2.c);
    var var_1 = func_1();
    let var_2 = _wgslsmith_f_op_f32(global2.d * _wgslsmith_f_op_f32(global1.d - _wgslsmith_f_op_f32(select(global3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))), 18428i < var_1.b.x))));
    let var_3 = Struct_2(_wgslsmith_div_f32(global3.d, _wgslsmith_f_op_f32(global1.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(126f))))), ~global1.b << (max(26927u, 0u) % 32u), select(select(false, !global2.c, true), var_0.x, !global1.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(549f + 1569f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1441f, global4.x))))), _wgslsmith_add_u32(~_wgslsmith_sub_u32(75261u, u_input.c), firstTrailingBit(var_1.c.x)));
    global4 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1.a, 649f, -956f))))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a, global2.a, global3.a))))) - vec3<f32>(1264f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -197f), -533f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1047f)))))));
    let var_4 = -(~firstLeadingBit(countOneBits(u_input.b.zyw << (var_1.c.wxy % vec3<u32>(32u)))));
    let var_5 = -abs(vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_1.b.x, var_4.x, u_input.a), vec4<i32>(-2147483647i, 0i, 0i, var_4.x)), u_input.b.x | u_input.a), select(countOneBits(u_input.b.x), ~u_input.a, !var_0.x), 39814i, var_1.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.d * _wgslsmith_f_op_f32(abs(global2.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(abs(global1.e), Struct_2(-313f, u_input.c, false, global1.a, 4294967295u), !global3.c)))), _wgslsmith_add_i32(var_4.x, _wgslsmith_sub_i32(func_4(37367i, 1000f, -12461i, 35295u), _wgslsmith_dot_vec4_i32(vec4<i32>(var_4.x, -1i, var_1.b.x, u_input.a), vec4<i32>(var_5.x, 2147483647i, var_4.x, -6791i)))) & 2147483647i);
}

