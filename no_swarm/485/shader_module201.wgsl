struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: bool,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
    c: Struct_3,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 18>;

var<private> global1: Struct_1;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<u32>, arg_1: u32, arg_2: bool) -> u32 {
    var var_0 = 1i >> (1u % 32u);
    var var_1 = min(1u, firstTrailingBit(~arg_1));
    var_0 = u_input.d;
    var_0 = _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(-(vec2<i32>(0i, u_input.d) << (u_input.a.xz % vec2<u32>(32u))), reverseBits(-vec2<i32>(u_input.c, -1i))) | -_wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(u_input.d, -2147483647i)), vec2<i32>(u_input.d, 1i) >> (vec2<u32>(u_input.b, arg_0.x) % vec2<u32>(32u))), select(vec2<i32>(-u_input.c & _wgslsmith_add_i32(22975i, u_input.c), ~(-45435i)), firstLeadingBit(~(-vec2<i32>(u_input.d, -49819i))), select(false, false, !arg_2)));
    global0 = array<Struct_3, 18>();
    return global1.c.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>) -> Struct_2 {
    var var_0 = Struct_1(55700u, ~vec4<u32>(arg_0.e.x, ~func_3(vec2<u32>(u_input.a.x, arg_0.c.x), global1.a, global1.d), ~(20815u & u_input.b), 1u), u_input.a.xz, global1.d, arg_0.b);
    var var_1 = Struct_1(~(~(~0u) >> (1u % 32u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(29820u, 4294967295u, 18524u, ~var_0.e.x), arg_1, abs(abs(arg_1))), abs(_wgslsmith_sub_vec2_u32(global1.b.zx, u_input.a.yx)), any(vec4<bool>(arg_0.d, 28458u != ~global1.e.x, all(select(vec2<bool>(false, false), vec2<bool>(global1.d, false), var_0.d)), any(select(vec3<bool>(var_0.d, false, true), vec3<bool>(arg_0.d, arg_0.d, arg_0.d), var_0.d)))), arg_1);
    var_0 = arg_0;
    let var_2 = _wgslsmith_dot_vec2_i32(countOneBits(~max(vec2<i32>(u_input.c, -1i), vec2<i32>(12608i, -41453i)) ^ vec2<i32>(select(u_input.c, 35725i, false), 8253i)), vec2<i32>(~(-10542i), 2147483647i));
    let var_3 = vec3<i32>(abs(var_2), _wgslsmith_mod_i32(firstLeadingBit((var_2 ^ -37953i) << (106753u % 32u)), u_input.c), 1i);
    return Struct_2(arg_0, vec3<i32>(-1i, _wgslsmith_mod_i32(u_input.c, -2147483647i), -2147483647i));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: vec3<f32>, arg_3: vec2<f32>) -> u32 {
    global1 = Struct_1(_wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(arg_1.a.a.c.x, global1.a), ~1u >> ((global1.e.x << (1u % 32u)) % 32u)), 8534u), arg_1.a.a.b, global1.c, true, global1.b);
    return u_input.a.x;
}

fn func_1(arg_0: vec2<u32>, arg_1: f32) -> vec4<i32> {
    global1 = Struct_1(8236u ^ _wgslsmith_dot_vec2_u32(~vec2<u32>(global1.a, 2996u) | vec2<u32>(12594u, arg_0.x), _wgslsmith_div_vec2_u32(~u_input.a.yy, vec2<u32>(4294967295u, u_input.a.x) ^ global1.e.xy)), ~(~abs(~global1.b)), _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_div_u32(global1.c.x, 47431u), global1.e.x), vec2<u32>(max(37134u, arg_0.x), _wgslsmith_dot_vec2_u32(arg_0, vec2<u32>(48912u, global1.e.x))), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(global1.b.x, u_input.a.x), vec2<u32>(1u, u_input.a.x), vec2<u32>(u_input.a.x, arg_0.x))) & global1.e.wy, true, vec4<u32>(~abs(29527u), func_4(vec2<i32>(_wgslsmith_add_i32(u_input.d, 5440i), u_input.d | u_input.d), Struct_4(func_2(Struct_1(0u, vec4<u32>(arg_0.x, 33693u, u_input.a.x, arg_0.x), vec2<u32>(86574u, 67124u), false, vec4<u32>(27290u, 1u, global1.c.x, 1u)), global1.e)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-2250f, -207f, arg_1), vec3<f32>(arg_1, -1000f, -681f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-724f, arg_1, arg_1) * vec3<f32>(arg_1, 922f, 1787f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-770f, -796f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(486f, arg_1)))), 79286u, 1u));
    global1 = func_2(Struct_1(func_2(Struct_1(_wgslsmith_add_u32(0u, global1.e.x), vec4<u32>(4294967295u, u_input.a.x, 31007u, 4294967295u), vec2<u32>(0u, u_input.a.x), global1.d, abs(global1.b)), ~countOneBits(vec4<u32>(5182u, u_input.b, global1.c.x, global1.e.x))).a.a, ~vec4<u32>(0u, func_4(vec2<i32>(-7066i, 39314i), Struct_4(Struct_2(Struct_1(60537u, vec4<u32>(global1.b.x, 4294967295u, 1u, 48295u), arg_0, true, global1.b), vec3<i32>(-33381i, u_input.d, u_input.d))), vec3<f32>(-501f, 307f, 641f), vec2<f32>(-217f, arg_1)), _wgslsmith_add_u32(0u, u_input.b), _wgslsmith_clamp_u32(u_input.b, 4294967295u, 8006u)), vec2<u32>(_wgslsmith_sub_u32(arg_0.x, 0u) ^ arg_0.x, ~(0u << (arg_0.x % 32u))), !(true | (u_input.b >= 51727u)), vec4<u32>(abs(~global1.a), abs(~1u), (u_input.a.x ^ 4294967295u) & countOneBits(arg_0.x), ~reverseBits(global1.c.x))), ~firstLeadingBit(vec4<u32>(~u_input.a.x, ~arg_0.x, firstTrailingBit(global1.a), ~85909u))).a;
    global1 = Struct_1(~79504u, ~vec4<u32>(27720u, abs(4294967295u), 60373u, global1.a), vec2<u32>(~(~global1.a), arg_0.x), !any(vec4<bool>(true & global1.d, false, true, true)), vec4<u32>(abs(~u_input.a.x), 0u, ~firstTrailingBit(4294967295u) | arg_0.x, 60395u));
    let var_0 = Struct_2(func_2(func_2(Struct_1(~global1.e.x, ~global1.e, u_input.a.yx & global1.b.zy, false, countOneBits(global1.e)), global1.e).a, ~countOneBits(max(vec4<u32>(28616u, 52907u, 1u, u_input.b), vec4<u32>(13980u, global1.e.x, 81860u, 1u)))).a, ~firstTrailingBit(~vec3<i32>(u_input.c, u_input.d, -1i)) & max(~vec3<i32>(u_input.c, -21931i, u_input.d), vec3<i32>(-14836i, _wgslsmith_div_i32(2147483647i, 25770i), u_input.c)));
    global1 = Struct_1(~_wgslsmith_div_u32(1u, min(_wgslsmith_clamp_u32(u_input.b, var_0.a.c.x, 68563u), firstTrailingBit(4294967295u))), firstTrailingBit(~firstLeadingBit(select(var_0.a.b, vec4<u32>(var_0.a.a, u_input.b, 29194u, u_input.b), vec4<bool>(global1.d, global1.d, var_0.a.d, false)))), var_0.a.e.wy, !all(vec2<bool>(false, true)), var_0.a.e);
    return -abs(vec4<i32>(2147483647i, -1i, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(var_0.b.xy, vec2<i32>(-41355i, -21839i)), ~u_input.d), func_2(Struct_1(0u, var_0.a.b, u_input.a.zx, false, var_0.a.b), max(vec4<u32>(4294967295u, var_0.a.b.x, 1u, 39425u), vec4<u32>(var_0.a.a, u_input.b, var_0.a.a, 7433u))).b.x));
}

fn func_5(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_4, arg_3: u32) -> Struct_1 {
    global0 = array<Struct_3, 18>();
    let var_0 = func_2(Struct_1(global1.e.x, select(abs(arg_2.a.a.e), vec4<u32>(1u, 65402u, func_2(Struct_1(0u, global1.b, vec2<u32>(142850u, 0u), global1.d, arg_2.a.a.b), arg_2.a.a.b).a.e.x, 14085u), !(!vec4<bool>(global1.d, arg_2.a.a.d, true, arg_2.a.a.d))), ~(u_input.a.zy >> (~vec2<u32>(global1.b.x, 9894u) % vec2<u32>(32u))), true, global1.b), vec4<u32>(min(func_2(arg_2.a.a, arg_2.a.a.e).a.b.x, countOneBits(34394u)), 63471u, arg_3, arg_2.a.a.e.x)).a;
    global1 = func_2(func_2(func_2(arg_2.a.a, ~(var_0.e | vec4<u32>(arg_3, 4294967295u, 4294967295u, 1u))).a, global1.e).a, ~(~var_0.b)).a;
    global0 = array<Struct_3, 18>();
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -172f) - _wgslsmith_f_op_f32(select(-794f, -1383f, false))) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2396f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1613f) * _wgslsmith_f_op_f32(abs(828f))))), _wgslsmith_div_f32(-214f, -103f));
    return func_2(func_2(var_0, max(select(firstLeadingBit(vec4<u32>(1u, global1.e.x, 1u, u_input.a.x)), abs(arg_2.a.a.b), all(vec3<bool>(true, true, false))), var_0.e ^ ~vec4<u32>(var_0.e.x, 0u, global1.c.x, 59919u))).a, ~vec4<u32>(reverseBits(arg_3), 41882u | global1.a, ~func_2(var_0, var_0.e).a.e.x, 4294967295u)).a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 18>();
    let var_0 = func_5(func_1(_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_add_u32(2443u, u_input.b), ~58034u), vec2<u32>(u_input.a.x, 52133u >> (global1.b.x % 32u))), _wgslsmith_f_op_f32(trunc(1502f))), ~u_input.c, Struct_4(func_2(func_2(func_2(Struct_1(u_input.a.x, vec4<u32>(59515u, u_input.a.x, 23408u, 1471u), u_input.a.zz, false, global1.e), global1.e).a, vec4<u32>(0u, 0u, 0u, 0u)).a, (vec4<u32>(3265u, u_input.a.x, 0u, u_input.b) >> (global1.b % vec4<u32>(32u))) | ~vec4<u32>(130787u, u_input.b, 4294967295u, u_input.b))), 1u);
    let var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(global1.b.x, ~_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(var_0.a, global1.b.x, global1.c.x))), 18u)];
    global0 = array<Struct_3, 18>();
    global1 = func_2(Struct_1(~4294967295u, global1.b, select(vec2<u32>(select(0u, 20487u, var_0.d), ~51836u), select(max(vec2<u32>(u_input.b, 1u), vec2<u32>(33217u, u_input.a.x)), var_0.b.zw, !vec2<bool>(true, global1.d)), global1.d), func_5(abs(vec4<i32>(-1i, u_input.c, -1i, u_input.d)), u_input.d, Struct_4(Struct_2(var_0, vec3<i32>(2147483647i, 0i, u_input.d))), _wgslsmith_add_u32(var_1.c.x, u_input.a.x)).d | global1.d, ~(firstLeadingBit(vec4<u32>(var_1.c.x, 0u, var_0.e.x, 10013u)) << (var_0.e % vec4<u32>(32u)))), vec4<u32>(1u, var_0.b.x, 6682u, _wgslsmith_dot_vec3_u32(reverseBits(~var_1.c), var_1.c))).a;
    let var_2 = ~vec4<u32>(var_0.a, reverseBits(13749u & var_1.c.x) & var_1.c.x, ~var_0.b.x, var_1.c.x);
    let var_3 = global0[_wgslsmith_index_u32(global1.e.x, 18u)];
    var var_4 = Struct_5(Struct_3(_wgslsmith_f_op_f32(-var_3.a), (1i | u_input.d) ^ (u_input.c << (firstLeadingBit(global1.b.x) % 32u)), var_1.c), ~_wgslsmith_dot_vec2_u32(var_3.c.yz, abs(var_2.wz)), global0[_wgslsmith_index_u32(10543u, 18u)], _wgslsmith_add_u32(33288u, u_input.b));
    let var_5 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.a.a * _wgslsmith_f_op_f32(var_4.c.a + -579f))), -1000f), ~(vec4<i32>(var_5, min(var_3.b, var_4.a.b), _wgslsmith_mod_i32(u_input.c, -2147483647i), 1i) << (~firstTrailingBit(vec4<u32>(var_2.x, var_1.c.x, 38006u, var_3.c.x)) % vec4<u32>(32u))), -2147483647i);
}

