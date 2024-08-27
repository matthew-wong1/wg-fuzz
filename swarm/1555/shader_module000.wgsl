struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
    c: i32,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20> = array<i32, 20>(-1i, 60414i, 52588i, 27539i, 11824i, 2147483647i, -18036i, 2147483647i, -20269i, -1i, -1i, 7260i, 3509i, 1i, -21653i, 1i, -13974i, -17649i, -51681i, -2836i);

var<private> global1: array<i32, 18> = array<i32, 18>(15705i, 42923i, 13693i, -16358i, -1i, -27293i, 1i, 2147483647i, -77348i, 26278i, 20792i, -1i, i32(-2147483648), -39627i, 64295i, i32(-2147483648), -1i, 1i);

var<private> global2: vec4<u32> = vec4<u32>(82988u, 38534u, 42600u, 4294967295u);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: f32) -> vec2<bool> {
    var var_0 = all(select(!(!(!vec3<bool>(true, arg_1.a.a, false))), !(!select(vec3<bool>(true, false, arg_1.a.a), vec3<bool>(true, true, arg_1.a.a), vec3<bool>(false, arg_1.a.a, arg_1.a.a))), global2.x < (0u & countOneBits(u_input.a))));
    var var_1 = select(13303u, ~abs(0u), any(!vec4<bool>(!arg_1.a.a, any(vec2<bool>(false, false)), any(vec2<bool>(arg_1.a.a, arg_1.a.a)), !arg_1.a.a)));
    let var_2 = !select(vec3<bool>(false, all(select(vec3<bool>(false, true, false), vec3<bool>(arg_1.a.a, arg_1.a.a, arg_1.a.a), true)), select(arg_1.a.a || false, true, true)), !select(vec3<bool>(arg_1.a.a, arg_1.a.a, true), !vec3<bool>(false, arg_1.a.a, arg_1.a.a), true), select(select(select(vec3<bool>(arg_1.a.a, true, false), vec3<bool>(arg_1.a.a, true, arg_1.a.a), arg_1.a.a), !vec3<bool>(arg_1.a.a, true, false), false), !select(vec3<bool>(arg_1.a.a, arg_1.a.a, arg_1.a.a), vec3<bool>(false, false, arg_1.a.a), arg_1.a.a), arg_1.a.a));
    var var_3 = -14811i;
    var var_4 = arg_1;
    return select(!var_2.zx, var_2.yx, select(var_2.xx, vec2<bool>(all(vec3<bool>(true, arg_1.a.a, true)) & var_4.a.a, true), var_2.yz));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<f32>) -> u32 {
    var var_0 = Struct_2(Struct_1(-41170i <= arg_0.d.x, -(~arg_0.e.x), 27617u), abs(~arg_0.e));
    let var_1 = vec2<bool>(!(!(!(-461f > arg_1.x))), all(select(vec2<bool>(var_0.a.a, !var_0.a.a), !select(vec2<bool>(var_0.a.a, true), vec2<bool>(false, var_0.a.a), false), select(func_3(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, var_0.a.c), Struct_2(var_0.a, arg_0.b.wxw), arg_1.x), !vec2<bool>(true, var_0.a.a), vec2<bool>(true, true)))));
    global2 = _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(firstTrailingBit(1u), var_0.a.c, 4294967295u, ~global2.x), min(select(vec4<u32>(u_input.a, 62195u, global2.x, 1u) << (vec4<u32>(var_0.a.c, u_input.a, u_input.a, u_input.b.x) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 35419u, 1u, 40469u), vec4<u32>(1u, 1u, var_0.a.c, u_input.a)), !var_0.a.a), ~vec4<u32>(32436u, 1u, 4294967295u, u_input.b.x))), ~firstLeadingBit(vec4<u32>(_wgslsmith_clamp_u32(global2.x, var_0.a.c, 22168u), _wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, global2.x, 4294967295u, var_0.a.c), vec4<u32>(var_0.a.c, 20888u, 35246u, 20917u)), ~4294967295u, _wgslsmith_mult_u32(78536u, global2.x))));
    global2 = abs(vec4<u32>(_wgslsmith_add_u32(4294967295u, ~(~u_input.b.x)), ~abs(var_0.a.c | 844u), 1u, reverseBits(~4294967295u & var_0.a.c)));
    let var_2 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(select(global2.x & var_0.a.c, abs(1u), var_0.a.a && var_1.x), abs(4294967295u), u_input.a), _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.a.c, var_0.a.c, u_input.a) | global2.xww, select(vec3<u32>(global2.x, global2.x, var_0.a.c), vec3<u32>(1u, var_0.a.c, 1u), vec3<bool>(true, var_1.x, true))) << (_wgslsmith_mod_vec3_u32(global2.xyz, ~global2.wxy) % vec3<u32>(32u)));
    return u_input.a;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: i32) -> vec3<i32> {
    var var_0 = _wgslsmith_clamp_i32(-global0[_wgslsmith_index_u32(~arg_1.c << (u_input.b.x % 32u), 20u)] ^ -arg_1.b, arg_1.b, 0i);
    var var_1 = Struct_2(Struct_1(func_3((vec4<u32>(21692u, 1430u, 4294967295u, global2.x) << (vec4<u32>(74606u, global2.x, u_input.b.x, arg_1.c) % vec4<u32>(32u))) ^ _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.b.x, 17074u, arg_1.c), vec4<u32>(5533u, 7377u, global2.x, 4294967295u)), Struct_2(arg_1, max(vec3<i32>(arg_0.x, -2147483647i, 0i), vec3<i32>(41671i, arg_2, arg_0.x))), 142f).x, arg_2, _wgslsmith_div_u32(43396u, 10737u & select(106334u, u_input.b.x, true))), vec3<i32>(i32(-1i) * -_wgslsmith_sub_i32(2147483647i, arg_1.b), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(29443u, 4294967295u), ~93011u), 20u)] >> (u_input.a % 32u), abs(-global0[_wgslsmith_index_u32(reverseBits(u_input.a), 20u)])));
    var var_2 = -global1[_wgslsmith_index_u32(1u, 18u)];
    var var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-615f)))))), abs(vec4<i32>((-17608i & var_1.a.b) | arg_2, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(var_1.a.c, 18u)], 20689i, var_1.a.b, global1[_wgslsmith_index_u32(u_input.b.x, 18u)]), vec4<i32>(25119i, -26353i, 22195i, 1i)) ^ 2147483647i, ~_wgslsmith_mult_i32(arg_1.b, 2147483647i))), _wgslsmith_sub_i32(~arg_2, firstTrailingBit(1i)), vec2<i32>(countOneBits(-2147483647i) | (~arg_2 << (abs(4294967295u) % 32u)), global1[_wgslsmith_index_u32(~arg_1.c, 18u)]), var_1.b);
    let var_4 = Struct_2(arg_1, var_3.e);
    return vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_4.b.x, _wgslsmith_add_i32(13180i, var_1.a.b) & _wgslsmith_clamp_i32(-14764i, arg_0.x, -2147483647i), 0i, var_3.b.x), max(-var_3.b, firstLeadingBit(_wgslsmith_mod_vec4_i32(var_3.b, vec4<i32>(49951i, -26403i, 0i, global0[_wgslsmith_index_u32(var_1.a.c, 20u)]))))), var_3.d.x, abs(~min(max(arg_0.x, 4620i), 1i)));
}

fn func_1() -> vec4<i32> {
    var var_0 = func_4(~vec2<i32>(9897i, global0[_wgslsmith_index_u32(global2.x, 20u)]) << (vec2<u32>(countOneBits(25944u), _wgslsmith_sub_u32(119418u, global2.x)) % vec2<u32>(32u)), Struct_1(all(vec3<bool>(true, true, true)), global0[_wgslsmith_index_u32(8314u, 20u)], func_2(Struct_3(-2477f, vec4<i32>(global0[_wgslsmith_index_u32(global2.x, 20u)], 1i, -16426i, global1[_wgslsmith_index_u32(global2.x, 18u)]), -1i, vec2<i32>(22724i, global1[_wgslsmith_index_u32(u_input.b.x, 18u)]), vec3<i32>(64440i, global0[_wgslsmith_index_u32(global2.x, 20u)], global0[_wgslsmith_index_u32(91235u, 20u)])), vec2<f32>(-636f, 924f))), global0[_wgslsmith_index_u32(global2.x, 20u)] >> (global2.x % 32u)) << (abs(u_input.b) % vec3<u32>(32u));
    var_0 = -max(-vec3<i32>(-2147483647i, 1i, -1i), -vec3<i32>(global0[_wgslsmith_index_u32(global2.x, 20u)], global1[_wgslsmith_index_u32(u_input.b.x, 18u)], global0[_wgslsmith_index_u32(15426u, 20u)])) ^ ~firstLeadingBit(firstLeadingBit(vec3<i32>(var_0.x, global1[_wgslsmith_index_u32(u_input.b.x, 18u)], global1[_wgslsmith_index_u32(u_input.a, 18u)])));
    let var_1 = Struct_1(true, 0i, ~firstTrailingBit(4294967295u));
    var_0 = firstTrailingBit(_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(-vec3<i32>(-6565i, global1[_wgslsmith_index_u32(40155u, 18u)], -1i), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.x, var_0.x, global1[_wgslsmith_index_u32(51353u, 18u)]) | vec3<i32>(1i, global0[_wgslsmith_index_u32(global2.x, 20u)], -2147483647i), -vec3<i32>(-1i, 9018i, 2147483647i), ~vec3<i32>(global0[_wgslsmith_index_u32(var_1.c, 20u)], global0[_wgslsmith_index_u32(4294967295u, 20u)], 2147483647i))), abs(~reverseBits(vec3<i32>(2147483647i, 0i, var_1.b)))));
    var var_2 = 4294967295u;
    return ~(vec4<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(var_1.b, global1[_wgslsmith_index_u32(1u, 18u)], 14363i), vec3<i32>(1i, 1i, 1i)), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.b, 12424i, 21286i, 46295i), vec4<i32>(-2147483647i, global1[_wgslsmith_index_u32(u_input.b.x, 18u)], var_0.x, 48179i)), abs(vec4<i32>(global1[_wgslsmith_index_u32(21431u, 18u)], 0i, global0[_wgslsmith_index_u32(0u, 20u)], -2147483647i))), _wgslsmith_dot_vec4_i32(~vec4<i32>(var_1.b, 27565i, global1[_wgslsmith_index_u32(81108u, 18u)], var_0.x), _wgslsmith_div_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(1u, 20u)], global1[_wgslsmith_index_u32(25997u, 18u)], global0[_wgslsmith_index_u32(4294967295u, 20u)], -15336i), vec4<i32>(0i, var_0.x, -2147483647i, global1[_wgslsmith_index_u32(var_1.c, 18u)]))), -17873i) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(abs(11620u), var_1.c, ~4294967295u, global2.x), _wgslsmith_sub_vec4_u32(vec4<u32>(global2.x, var_1.c, 0u, 49682u) >> (vec4<u32>(global2.x, 45830u, global2.x, u_input.b.x) % vec4<u32>(32u)), vec4<u32>(u_input.a, 4294967295u, 25523u, 4294967295u))) % vec4<u32>(32u)));
}

fn func_5(arg_0: vec4<i32>, arg_1: i32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1588f)));
    global0 = array<i32, 20>();
    global2 = ~vec4<u32>(u_input.a, ~u_input.a, 0u, _wgslsmith_div_u32(_wgslsmith_clamp_u32(abs(global2.x), global2.x, 0u), ~(~u_input.a)));
    let var_1 = arg_0;
    global1 = array<i32, 18>();
    return u_input.a;
}

fn func_6(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_3) -> Struct_2 {
    let var_0 = vec3<u32>(59874u >> (arg_0 % 32u), ~u_input.a, ~1663u);
    let var_1 = true;
    var var_2 = Struct_1(~_wgslsmith_mod_u32(min(arg_0, u_input.a), ~92987u) <= min(_wgslsmith_sub_u32(65223u, 15365u), 1u), _wgslsmith_mod_i32(firstLeadingBit(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(55045u, 20u)] << (arg_0 % 32u), -global1[_wgslsmith_index_u32(u_input.b.x, 18u)])), i32(-1i) * -35222i), _wgslsmith_dot_vec4_u32(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(47166u, var_0.x, global2.x, arg_0), vec4<u32>(4294967295u, arg_0, 1u, 22636u))) << (~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, var_0.x, 53485u, 8237u), vec4<u32>(20603u, arg_0, u_input.b.x, arg_0)) % vec4<u32>(32u)), vec4<u32>(func_2(arg_2, vec2<f32>(arg_2.a, -729f)), arg_0, ~global2.x, min(41086u, 1u)) & vec4<u32>(~var_0.x, ~u_input.a, u_input.b.x >> (global2.x % 32u), arg_0)));
    global1 = array<i32, 18>();
    var var_3 = Struct_1(~global0[_wgslsmith_index_u32(0u, 20u)] < _wgslsmith_div_i32(_wgslsmith_div_i32(~(-5469i), var_2.b), ~reverseBits(var_2.b)), _wgslsmith_clamp_i32(-20838i, -1i, -(~(-10175i))), 4294967295u << (var_2.c % 32u));
    return Struct_2(Struct_1(true, -6801i, _wgslsmith_clamp_u32(reverseBits(global2.x), 1u, ~(~var_0.x))), vec3<i32>(~_wgslsmith_div_i32(-9388i, 27847i), global0[_wgslsmith_index_u32(1u, 20u)], firstTrailingBit(i32(-1i) * -1i)) ^ arg_2.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(-_wgslsmith_mult_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(40886u, 18u)], 58332i, -43823i, 61802i), -vec4<i32>(-2147483647i, global1[_wgslsmith_index_u32(19617u, 18u)], global1[_wgslsmith_index_u32(u_input.a, 18u)], -12264i))) >> (abs(vec4<u32>(0u, 11111u, 87470u, 26025u)) % vec4<u32>(32u));
    let var_1 = func_6(~func_5(func_1(), max(1i, ~global0[_wgslsmith_index_u32(87293u, 20u)])), -var_0.ww, Struct_3(_wgslsmith_f_op_f32(max(185f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(753f + -964f)))), countOneBits(countOneBits(vec4<i32>(0i, global1[_wgslsmith_index_u32(u_input.b.x, 18u)], global0[_wgslsmith_index_u32(1u, 20u)], global0[_wgslsmith_index_u32(u_input.b.x, 20u)]))) ^ ((vec4<i32>(global1[_wgslsmith_index_u32(91546u, 18u)], global0[_wgslsmith_index_u32(u_input.b.x, 20u)], 49051i, -2147483647i) & vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 18u)], global0[_wgslsmith_index_u32(u_input.b.x, 20u)], global0[_wgslsmith_index_u32(global2.x, 20u)], -2147483647i)) & vec4<i32>(0i, global0[_wgslsmith_index_u32(u_input.a, 20u)], var_0.x, -2147483647i)), var_0.x, -vec2<i32>(0i, _wgslsmith_mult_i32(0i, -11321i)), var_0.xwz));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_i32(51771i | func_6(0u, vec2<i32>(global1[_wgslsmith_index_u32(1u, 18u)], 2147483647i), Struct_3(909f, vec4<i32>(1i, var_1.b.x, global1[_wgslsmith_index_u32(15677u, 18u)], -2147483647i), var_0.x, var_1.b.zz, var_1.b)).b.x, global0[_wgslsmith_index_u32(u_input.a, 20u)]), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(471f, _wgslsmith_f_op_f32(select(-469f, -534f, var_1.a.a)), _wgslsmith_f_op_f32(-1867f * -1443f), 350f))) * vec4<f32>(_wgslsmith_f_op_f32(step(-2176f, -1337f)), _wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-740f, 154f)) - _wgslsmith_f_op_f32(f32(-1f) * -310f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1479f * -598f) + _wgslsmith_f_op_f32(abs(-435f))))));
}

