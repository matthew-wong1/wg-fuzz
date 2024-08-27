struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27>;

var<private> global1: bool;

var<private> global2: vec2<f32> = vec2<f32>(808f, -1386f);

var<private> global3: vec3<u32> = vec3<u32>(38781u, 1u, 0u);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> bool {
    let var_0 = Struct_1(~(_wgslsmith_clamp_u32(1u, abs(35208u), _wgslsmith_dot_vec4_u32(vec4<u32>(62689u, global0[_wgslsmith_index_u32(5774u, 27u)], 1u, global3.x), vec4<u32>(4294967295u, 41833u, global3.x, 13981u))) & _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(0u, 27u)]), global3.zz)), firstTrailingBit(0u), !(!any(vec3<bool>(false, true, true))) == (true || (~global3.x < 18053u)), 37166u);
    return true;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = min(vec2<u32>(((62508u ^ arg_2.b) | _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.b, 49662u), vec2<u32>(global0[_wgslsmith_index_u32(global3.x, 27u)], u_input.a))) << (arg_2.b % 32u), 1u), ~global3.yy);
    global2 = _wgslsmith_div_vec2_f32(arg_0, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global2.x, -489f), arg_0)))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-387f, 867f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), !(!arg_2.c))));
    var var_1 = Struct_1(reverseBits(reverseBits(_wgslsmith_dot_vec2_u32(global3.xz, vec2<u32>(global0[_wgslsmith_index_u32(29608u, 27u)], global3.x))) ^ ~(~u_input.b)), countOneBits(4294967295u), true, firstLeadingBit(4294967295u));
    let var_2 = select(~arg_1.b, var_0.x, true);
    global3 = countOneBits(~vec3<u32>(reverseBits(u_input.a), 0u, _wgslsmith_mult_u32(89870u, global0[_wgslsmith_index_u32(arg_1.a, 27u)])));
    return vec3<bool>(arg_1.c, true, any(select(!(!vec4<bool>(arg_1.c, false, var_1.c, false)), select(vec4<bool>(var_1.c, arg_2.c, arg_2.c, arg_1.c), vec4<bool>(arg_1.c, var_1.c, arg_2.c, var_1.c), !vec4<bool>(arg_1.c, false, false, true)), select(vec4<bool>(true, true, arg_2.c, arg_2.c), select(vec4<bool>(true, arg_1.c, arg_1.c, var_1.c), vec4<bool>(true, true, false, false), vec4<bool>(true, true, arg_1.c, true)), select(false, arg_2.c, false)))));
}

fn func_2() -> i32 {
    let var_0 = select(!vec3<bool>(all(vec2<bool>(true, true)) != true, true, true), func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(2392f, global2.x) + vec2<f32>(234f, -280f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-805f, global2.x))))), Struct_1(_wgslsmith_add_u32(38822u, _wgslsmith_mod_u32(4294967295u, global0[_wgslsmith_index_u32(0u, 27u)])), 80876u, func_3(), abs(firstTrailingBit(u_input.b))), Struct_1(global3.x, ~abs(global3.x), max(4294967295u, 5707u) <= (global3.x << (global0[_wgslsmith_index_u32(u_input.b, 27u)] % 32u)), 70055u)), !all(vec4<bool>(true, true, true, true)));
    let var_1 = Struct_1(7310u, abs(global3.x), !var_0.x && (-191f < _wgslsmith_f_op_f32(exp2(global2.x))), u_input.b);
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(-338f - _wgslsmith_div_f32(-1686f, global2.x))), -554f, false))));
    let var_3 = global2.x;
    global0 = array<u32, 27>();
    return -30902i;
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_mult_u32(~abs(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_2.b, global3.x), 27u)]), ~(~4294967295u)), ~(~_wgslsmith_mod_u32(0u >> (arg_1.d % 32u), arg_3.a << (1u % 32u))), true, _wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(~vec3<u32>(global0[_wgslsmith_index_u32(arg_2.b, 27u)], arg_2.d, 4294967295u), vec3<u32>(u_input.a, arg_1.d, global0[_wgslsmith_index_u32(global3.x, 27u)]) & vec3<u32>(global3.x, 21322u, 28822u)), vec3<u32>(4294967295u, 1u, _wgslsmith_dot_vec2_u32(global3.zz, _wgslsmith_mod_vec2_u32(vec2<u32>(1u, arg_2.b), global3.xy)))));
    global3 = select(firstTrailingBit(~(~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(12051u, global0[_wgslsmith_index_u32(5991u, 27u)], global0[_wgslsmith_index_u32(0u, 27u)])))), reverseBits(reverseBits(vec3<u32>(4294967295u, _wgslsmith_mod_u32(arg_3.d, 55554u), _wgslsmith_div_u32(1u, 4294967295u)))), !(!(!vec3<bool>(false, false, arg_3.c))));
    var var_1 = false;
    var var_2 = var_0.c;
    var var_3 = global3.x;
    return arg_3;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: i32) -> u32 {
    var var_0 = select(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2.x, _wgslsmith_f_op_f32(floor(global2.x)))) - -762f) == _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x * global2.x) - _wgslsmith_f_op_f32(325f + 979f)))), true);
    let var_1 = func_5(func_2(), Struct_1(_wgslsmith_sub_u32(_wgslsmith_div_u32(arg_1.x, u_input.b & u_input.a), 23443u), abs(~_wgslsmith_clamp_u32(0u, global3.x, u_input.b)), (false | all(vec4<bool>(false, true, false, false))) && true, u_input.a), Struct_1(arg_1.x, ~(~25653u), true, ~global3.x), Struct_1(4294967295u, global0[_wgslsmith_index_u32(u_input.a, 27u)] << (select(abs(0u), max(0u, 60602u), true) % 32u), func_3() == func_4(vec2<f32>(global2.x, -366f), Struct_1(u_input.a, 25494u, true, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 27u)], 27u)]), Struct_1(global0[_wgslsmith_index_u32(1u, 27u)], arg_1.x, false, global0[_wgslsmith_index_u32(global3.x, 27u)])).x, ~0u));
    global0 = array<u32, 27>();
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(global2.x)), global2.x));
    let var_3 = var_1.c;
    return ~(~0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(reverseBits(_wgslsmith_div_u32(func_1(vec4<i32>(-53508i, -1490i, -1691i, -2147483647i), vec2<u32>(global3.x, 28750u), -9574i) & u_input.a, u_input.b)), max(firstTrailingBit(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(~31893u, 27u)], u_input.a)), 0u), func_1(vec4<i32>(select(1i, -15898i, true), -26477i, -1i, 1i >> (firstLeadingBit(18098u) % 32u)), global3.xz, (_wgslsmith_mult_i32(0i, -2147483647i) << (~u_input.a % 32u)) >> (~(~u_input.a) % 32u)), _wgslsmith_dot_vec4_u32(min(countOneBits(vec4<u32>(1u, global3.x, 4294967295u, 4294967295u)), select(vec4<u32>(global0[_wgslsmith_index_u32(1u, 27u)], u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3.x, 27u)], 27u)], 4294967295u), vec4<u32>(u_input.b, 1u, u_input.a, u_input.a), vec4<bool>(true, true, false, false))), reverseBits(~vec4<u32>(global3.x, 34310u, 30171u, 59446u))) & 4294967295u);
    let var_1 = func_5(firstTrailingBit(1i), Struct_1(global0[_wgslsmith_index_u32(4294967295u, 27u)], global3.x, true, ~60984u), func_5(max(-19323i, 19838i) << (_wgslsmith_mult_u32(_wgslsmith_div_u32(4294967295u, 589u), ~global0[_wgslsmith_index_u32(u_input.b, 27u)]) % 32u), func_5(firstTrailingBit(reverseBits(6969i)), Struct_1(~u_input.b, 1u, true, _wgslsmith_clamp_u32(15995u, global0[_wgslsmith_index_u32(global3.x, 27u)], 4294967295u)), Struct_1(~u_input.b, global0[_wgslsmith_index_u32(var_0.x, 27u)], true, ~global3.x), Struct_1(countOneBits(11362u), 5927u, true, 74736u)), Struct_1(~1u, _wgslsmith_clamp_u32(~global0[_wgslsmith_index_u32(1u, 27u)], u_input.a & var_0.x, select(u_input.b, 4294967295u, true)), true, _wgslsmith_mod_u32(_wgslsmith_sub_u32(0u, global0[_wgslsmith_index_u32(global3.x, 27u)]), func_1(vec4<i32>(0i, -1i, 1i, 1i), var_0.xy, -1i))), func_5(_wgslsmith_dot_vec2_i32(vec2<i32>(51931i, 1i), -vec2<i32>(-2147483647i, 1i)), func_5(_wgslsmith_mod_i32(1i, -2147483647i), func_5(0i, Struct_1(u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 27u)], 27u)], false, 20615u), Struct_1(var_0.x, 7640u, true, u_input.b), Struct_1(global0[_wgslsmith_index_u32(0u, 27u)], 1u, false, u_input.b)), Struct_1(var_0.x, var_0.x, true, u_input.b), Struct_1(var_0.x, global3.x, false, u_input.a)), Struct_1(0u, global3.x, true, 50617u), func_5(2147483647i, func_5(35786i, Struct_1(0u, global0[_wgslsmith_index_u32(9233u, 27u)], true, var_0.x), Struct_1(17270u, 88920u, true, 44874u), Struct_1(global0[_wgslsmith_index_u32(1u, 27u)], u_input.a, false, global0[_wgslsmith_index_u32(1u, 27u)])), Struct_1(0u, global0[_wgslsmith_index_u32(4294967295u, 27u)], false, global0[_wgslsmith_index_u32(var_0.x, 27u)]), func_5(0i, Struct_1(var_0.x, 15811u, true, var_0.x), Struct_1(global0[_wgslsmith_index_u32(global3.x, 27u)], u_input.b, false, global0[_wgslsmith_index_u32(0u, 27u)]), Struct_1(4294967295u, 19209u, false, var_0.x))))), func_5(1i, Struct_1(abs(firstTrailingBit(4294967295u)), ~(~global3.x), (var_0.x > 1u) | all(vec4<bool>(true, false, true, false)), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(firstTrailingBit(1u), 27u)], 27u)]), func_5(1i, Struct_1(1u, ~30681u, all(vec2<bool>(false, true)), ~37323u), Struct_1(76825u, abs(1u), true, ~4294967295u), Struct_1(_wgslsmith_sub_u32(u_input.a, 0u), 1u, true, 1u)), func_5(-1i, Struct_1(u_input.a, global3.x >> (1u % 32u), false, 83220u), func_5(1i, Struct_1(1u, u_input.b, false, u_input.a), func_5(18876i, Struct_1(4294967295u, var_0.x, false, 2065u), Struct_1(20582u, global0[_wgslsmith_index_u32(35270u, 27u)], true, 23787u), Struct_1(0u, u_input.b, false, 27561u)), Struct_1(35891u, 1u, true, 54663u)), Struct_1(global0[_wgslsmith_index_u32(45345u, 27u)] >> (var_0.x % 32u), ~var_0.x, any(vec3<bool>(true, false, false)), u_input.b >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.x, 27u)], 27u)] % 32u)))));
    global3 = reverseBits(var_0.xwx);
    global2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-628f, 149f)))) + vec2<f32>(_wgslsmith_f_op_f32(exp2(global2.x)), _wgslsmith_f_op_f32(select(-608f, global2.x, var_1.c)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global2.x, 450f))))))), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_div_f32(225f, -928f), global2.x))), global2.x)));
    var var_2 = func_5(_wgslsmith_dot_vec3_i32(~(vec3<i32>(1i, 1i, 1i) << (vec3<u32>(global3.x, var_1.d, 52593u) % vec3<u32>(32u))), abs(vec3<i32>(1i, 1i, 1i))), func_5(_wgslsmith_clamp_i32(min(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 0i, -8963i, 2147483647i), vec4<i32>(44913i, 2147483647i, -25795i, -45115i))), -_wgslsmith_clamp_i32(-2147483647i, 1i, -1i), 0i), var_1, Struct_1(global3.x, _wgslsmith_mod_u32(44148u, var_0.x), func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(415f, global2.x) - vec2<f32>(global2.x, 563f)), var_1, func_5(-6668i, var_1, var_1, var_1)).x, 44750u << (~var_1.d % 32u)), Struct_1(max(var_1.b, ~var_1.b), var_1.d | 97532u, false, ~15761u)), var_1, var_1);
    global3 = ~select((~vec3<u32>(global3.x, 102941u, 20500u) ^ (var_0.xxz & var_0.zzz)) >> (vec3<u32>(28298u, ~var_1.a, 0u) % vec3<u32>(32u)), var_0.xzz, select(vec3<bool>(true, true, any(vec4<bool>(var_1.c, var_2.c, var_1.c, var_2.c))), vec3<bool>(true && var_2.c, !var_1.c, true), any(vec2<bool>(true, true))));
    let var_3 = var_0.yyw;
    let var_4 = Struct_1(_wgslsmith_clamp_u32(55892u, 1u | ~(~var_2.b), 64741u >> (global3.x % 32u)), ~reverseBits(~var_1.b), any(select(vec3<bool>(any(vec3<bool>(true, var_2.c, var_2.c)), var_2.c, !var_1.c), vec3<bool>(false, false, var_2.c), func_4(_wgslsmith_div_vec2_f32(vec2<f32>(global2.x, -314f), vec2<f32>(global2.x, -113f)), Struct_1(global0[_wgslsmith_index_u32(0u, 27u)], var_0.x, false, var_0.x), Struct_1(var_1.d, 1u, true, u_input.b)))), var_3.x);
    var var_5 = func_4(vec2<f32>(global2.x, _wgslsmith_div_f32(-1151f, global2.x)), Struct_1(~1u, global3.x, var_1.d > ~_wgslsmith_div_u32(var_3.x, global3.x), var_3.x), var_1);
    let x = u_input.a;
    s_output = StorageBuffer(abs(firstLeadingBit(-1i)), var_3.x, vec2<i32>(1i << (global3.x % 32u), _wgslsmith_dot_vec4_i32(select(~vec4<i32>(1i, 1i, 0i, -33503i), select(vec4<i32>(-80617i, 11785i, 0i, 27518i), vec4<i32>(2147483647i, -2147483647i, -2147483647i, 2147483647i), false), var_1.c), -vec4<i32>(1i, 1i, 1i, 1i))), 1000f);
}

