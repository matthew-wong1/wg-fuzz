struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec3<f32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<i32>, 31> = array<vec4<i32>, 31>(vec4<i32>(39664i, -19015i, 0i, i32(-2147483648)), vec4<i32>(20075i, 19803i, 55086i, -6137i), vec4<i32>(i32(-2147483648), 59562i, i32(-2147483648), 81916i), vec4<i32>(i32(-2147483648), 1i, 30939i, 43795i), vec4<i32>(15035i, 21626i, 1i, 25589i), vec4<i32>(-7433i, -9417i, 2147483647i, 2147483647i), vec4<i32>(37987i, -2397i, -2279i, -21937i), vec4<i32>(-68951i, -1i, 23616i, 0i), vec4<i32>(2147483647i, 1i, 22688i, -1i), vec4<i32>(-22795i, 1i, -27043i, 8158i), vec4<i32>(54284i, 24776i, i32(-2147483648), 24560i), vec4<i32>(0i, 20276i, 11309i, 34356i), vec4<i32>(1i, -30152i, 65945i, 0i), vec4<i32>(1i, i32(-2147483648), 1i, 34481i), vec4<i32>(-42220i, -239i, 2147483647i, -37463i), vec4<i32>(-71291i, -5876i, -1i, 2147483647i), vec4<i32>(0i, 24232i, 14858i, -25171i), vec4<i32>(4958i, 2147483647i, i32(-2147483648), -51136i), vec4<i32>(1i, 1i, 2147483647i, 0i), vec4<i32>(-1i, i32(-2147483648), 1i, 28963i), vec4<i32>(1i, 16445i, 64011i, -1i), vec4<i32>(1i, 71099i, 31313i, 42618i), vec4<i32>(i32(-2147483648), 2147483647i, i32(-2147483648), -20455i), vec4<i32>(i32(-2147483648), -37420i, 4672i, -1i), vec4<i32>(-54830i, -60811i, -14692i, i32(-2147483648)), vec4<i32>(2147483647i, 63551i, 2147483647i, 20835i), vec4<i32>(-1i, 0i, 4031i, 15499i), vec4<i32>(-10286i, -21389i, -35695i, -2700i), vec4<i32>(-4139i, 31162i, 2147483647i, -20366i), vec4<i32>(-20591i, 2147483647i, 0i, 2147483647i), vec4<i32>(0i, 23773i, -4681i, i32(-2147483648)));

var<private> global2: vec2<f32> = vec2<f32>(1488f, -1114f);

var<private> global3: f32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec3<i32>) -> f32 {
    let var_0 = firstLeadingBit(vec3<i32>(_wgslsmith_add_i32(~select(u_input.b.x, arg_0.x, false), firstLeadingBit(0i)), max(-67061i >> (0u % 32u), arg_0.x) ^ u_input.d.x, 42892i));
    let var_1 = 1i;
    var var_2 = Struct_1(vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.c.yz, vec2<u32>(global0.d.x, 10132u) << (u_input.c.yx % vec2<u32>(32u))), ~global0.a.xz >> (global0.a.zx % vec2<u32>(32u))), global0.a.x, u_input.a.x, ~max(u_input.a.x, global0.a.x) << (~u_input.a.x % 32u)), 158f, global0.c, u_input.c);
    let var_3 = arg_0.x;
    var var_4 = vec4<bool>(all(vec3<bool>(_wgslsmith_div_f32(180f, -774f) >= global2.x, false || all(vec4<bool>(false, true, true, false)), any(vec3<bool>(true, true, true)))), all(vec3<bool>(!select(true, false, true), max(61797u, u_input.c.x) != 4294967295u, true)), var_2.a.x == 22180u, !(1u > firstTrailingBit(u_input.c.x)));
    return global0.b;
}

fn func_2(arg_0: vec2<i32>, arg_1: f32) -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(func_3(~u_input.d.xwy)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(2910f)), _wgslsmith_div_f32(1433f, global0.c.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.c))), ~(~vec4<u32>(~u_input.c.x, global0.d.x, countOneBits(76079u), countOneBits(u_input.a.x))), _wgslsmith_clamp_vec2_u32(~firstTrailingBit(vec2<u32>(global0.a.x, 0u) >> (u_input.c.yx % vec2<u32>(32u))), u_input.c.zz, global0.a.zz), Struct_1(vec4<u32>(global0.d.x, ~(~u_input.c.x), 39522u, 0u), _wgslsmith_div_f32(global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1, -474f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, _wgslsmith_f_op_f32(abs(370f)), 222f)), countOneBits(min(_wgslsmith_add_vec3_u32(u_input.c, global0.a.xwz), ~u_input.c))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -982f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(101f, var_0.d.c.x)) + _wgslsmith_f_op_f32(select(global0.c.x, 1000f, false))), global0.c.x))), select(~_wgslsmith_mult_vec4_u32(var_0.b, global0.a) >> (max(global0.a, ~var_0.d.a) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(~_wgslsmith_mult_vec4_u32(var_0.b, var_0.d.a), global0.a << ((vec4<u32>(0u, u_input.a.x, 41546u, u_input.c.x) >> (vec4<u32>(global0.a.x, 1u, 4060u, global0.a.x) % vec4<u32>(32u))) % vec4<u32>(32u))), true), u_input.a, Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.c.x, u_input.c.x, 1u, 25896u) >> (~vec4<u32>(52251u, 0u, 41373u, 76310u) % vec4<u32>(32u)), ~vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.c.x)), _wgslsmith_f_op_f32(step(-1586f, global2.x)), vec3<f32>(_wgslsmith_div_f32(-927f, _wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + _wgslsmith_f_op_f32(f32(-1f) * -107f)), 263f), select(vec3<u32>(~4294967295u, u_input.a.x << (global0.a.x % 32u), 0u), select(~vec3<u32>(80971u, 9453u, 13727u), ~global0.a.wwy, true), false)));
    global1 = array<vec4<i32>, 31>();
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1342f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(447f + var_0.d.b), _wgslsmith_f_op_f32(f32(-1f) * -560f))))));
    var var_3 = select(!(!(4294967295u <= _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.d.a.x, 4294967295u), vec2<u32>(4294967295u, var_0.b.x)))), true, (var_1.b.x >> (select(global0.d.x, 22353u, false) % 32u)) != global0.a.x);
    return Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, _wgslsmith_f_op_f32(-arg_1), arg_1) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-637f, -374f, -785f)))))), global0.a, vec2<u32>(u_input.a.x, ~(~1u)), var_0.d);
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1, arg_3: bool) -> Struct_2 {
    let var_0 = u_input.d.wwz;
    global3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(global0.b, global2.x))))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-1719f))))) * -1000f);
    let var_2 = _wgslsmith_dot_vec4_u32(arg_0.b, _wgslsmith_mult_vec4_u32(vec4<u32>(global0.d.x, ~5627u, select(global0.a.x, arg_0.b.x, arg_3), arg_0.d.d.x | u_input.c.x), global0.a)) << (_wgslsmith_dot_vec4_u32(arg_2.a, ~_wgslsmith_mod_vec4_u32(arg_0.b, vec4<u32>(u_input.a.x, arg_2.a.x, 38268u, u_input.c.x) << (arg_0.b % vec4<u32>(32u)))) % 32u);
    let var_3 = u_input.d.zwx;
    return func_2(abs(reverseBits(vec2<i32>(-2147483647i, u_input.b.x) ^ select(vec2<i32>(22887i, 1i), var_0.zx, true))), -822f);
}

fn func_5(arg_0: Struct_2, arg_1: vec3<bool>) -> Struct_2 {
    let var_0 = func_2(vec2<i32>(_wgslsmith_clamp_i32(-27935i, ~50141i, u_input.b.x), _wgslsmith_dot_vec2_i32(abs(u_input.b ^ vec2<i32>(u_input.e, 28613i)), -(u_input.d.yz & u_input.b))), func_4(Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-global2.x), 127f, _wgslsmith_f_op_f32(round(arg_0.a.x))), ~vec4<u32>(4294967295u, 22011u, 65949u, u_input.a.x), vec2<u32>(127869u, 15632u) | func_4(Struct_2(vec3<f32>(-218f, arg_0.d.b, 169f), arg_0.b, vec2<u32>(0u, 59820u), Struct_1(global0.a, global2.x, arg_0.a, vec3<u32>(1u, 60197u, u_input.a.x))), 32251i, arg_0.d, false).c, func_2(u_input.b, _wgslsmith_f_op_f32(-459f * -653f)).d), ~u_input.d.x, func_4(Struct_2(vec3<f32>(1499f, -868f, global0.c.x), arg_0.b << (vec4<u32>(u_input.a.x, arg_0.d.d.x, global0.d.x, global0.a.x) % vec4<u32>(32u)), vec2<u32>(arg_0.c.x, 0u), arg_0.d), u_input.b.x, Struct_1(~global0.a, _wgslsmith_div_f32(1834f, global0.c.x), global0.c, max(arg_0.b.yyw, global0.d)), true).d, true).d.c.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.d.c.yz - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, 2090f))) - vec2<f32>(_wgslsmith_f_op_f32(func_3(vec3<i32>(30461i, u_input.b.x, u_input.d.x))), 384f)));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1002f)) + _wgslsmith_f_op_f32(step(func_4(Struct_2(vec3<f32>(global0.b, 167f, -717f), arg_0.b, u_input.a, var_0.d), firstLeadingBit(u_input.d.x), arg_0.d, false).a.x, _wgslsmith_f_op_f32(-arg_0.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<i32>(u_input.d.x ^ u_input.d.x, ~u_input.d.x, select(43494i, u_input.d.x, false))))), _wgslsmith_f_op_f32(var_0.d.b * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(585f + 1707f), global0.c.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1723f))))), _wgslsmith_f_op_f32(floor(arg_0.a.x)));
    global0 = func_4(var_0, firstLeadingBit(22390i), var_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1911f)))) != func_2(vec2<i32>(u_input.b.x >> (var_0.c.x % 32u), abs(u_input.b.x)), global0.b).d.b).d;
    let var_3 = !arg_1;
    return arg_0;
}

fn func_6(arg_0: Struct_2, arg_1: f32, arg_2: vec2<f32>) -> Struct_2 {
    global3 = global0.b;
    global0 = Struct_1(min(global0.a, global0.a), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(arg_1, _wgslsmith_f_op_f32(-arg_2.x), false)))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-2469f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(986f + 1959f)), _wgslsmith_f_op_f32(-1423f * -253f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(arg_0.d.c, global0.c))))))), ~u_input.c);
    var var_0 = Struct_1(vec4<u32>(53863u, ~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 2984u, u_input.c.x, 0u), vec4<u32>(0u, 1u, 38537u, 89466u)), _wgslsmith_mult_u32(1u, arg_0.b.x)), ~(_wgslsmith_mod_u32(0u, 1u) & u_input.a.x), global0.d.x), 956f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(422f, _wgslsmith_f_op_f32(step(-1214f, arg_2.x)), 1280f)), ~(~func_4(Struct_2(vec3<f32>(arg_0.a.x, -1006f, 289f), vec4<u32>(arg_0.d.a.x, 4294967295u, u_input.a.x, arg_0.d.d.x), global0.d.xz, Struct_1(vec4<u32>(6904u, global0.a.x, arg_0.c.x, 4294967295u), -1000f, vec3<f32>(arg_1, global0.c.x, -428f), vec3<u32>(arg_0.b.x, 1u, u_input.c.x))), ~u_input.d.x, arg_0.d, true).b.xwy));
    var var_1 = ~(vec2<i32>(1i, _wgslsmith_dot_vec3_i32(min(vec3<i32>(u_input.d.x, u_input.e, 2147483647i), vec3<i32>(-2147483647i, -48038i, u_input.d.x)), vec3<i32>(27853i, 13668i, -1i))) | vec2<i32>(32251i, u_input.b.x));
    global2 = _wgslsmith_f_op_vec2_f32(arg_2 + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(arg_0.a.x - 231f)), _wgslsmith_f_op_vec2_f32(floor(func_5(Struct_2(vec3<f32>(arg_2.x, 501f, -279f), vec4<u32>(arg_0.b.x, u_input.c.x, arg_0.c.x, 1u), var_0.a.ww, arg_0.d), vec3<bool>(true, true, false)).d.c.xx)), true)))));
    return Struct_2(vec3<f32>(-2881f, arg_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -343f)), vec4<u32>(83120u, u_input.c.x, ~(u_input.a.x << (0u % 32u)) ^ 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(func_2(vec2<i32>(12496i, u_input.d.x), -1238f).d.a.x, ~4294967295u), ~reverseBits(arg_0.c))), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c.x, 41999u), ~var_0.d.xz), func_4(func_4(Struct_2(var_0.c, vec4<u32>(96268u, 0u, 3584u, 0u), vec2<u32>(11883u, u_input.a.x), func_4(arg_0, var_1.x, Struct_1(arg_0.d.a, -449f, vec3<f32>(global2.x, arg_2.x, -231f), vec3<u32>(arg_0.d.d.x, arg_0.d.d.x, 1u)), true).d), -753i, func_2(u_input.b, 2322f).d, true), ~_wgslsmith_sub_i32(var_1.x, abs(-15693i)), arg_0.d, !(~var_1.x > -2147483647i)).d);
}

fn func_1(arg_0: i32, arg_1: vec3<bool>, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = 1115f;
    var var_1 = global0.d;
    var var_2 = func_6(func_5(func_4(func_2(u_input.b, _wgslsmith_f_op_f32(max(global0.c.x, global2.x))), -4301i, func_2(u_input.b, global0.c.x).d, global0.c.x != _wgslsmith_f_op_f32(min(global0.c.x, 846f))), select(vec3<bool>(global0.c.x > 1387f, any(arg_1.xx), true), vec3<bool>(u_input.a.x != 1u, true, arg_1.x || arg_1.x), false)), _wgslsmith_f_op_f32(-1131f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1501f)), global2.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * _wgslsmith_f_op_f32(sign(-790f)))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.x, -1391f), global0.c.zy, vec2<bool>(true, arg_1.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2024f, global0.b) * global0.c.zy))), vec2<f32>(_wgslsmith_f_op_f32(-global2.x), 256f)))));
    let var_3 = func_4(Struct_2(var_2.a, ~select(firstLeadingBit(vec4<u32>(var_2.c.x, 37534u, u_input.c.x, global0.d.x)), global0.a | vec4<u32>(3329u, 29042u, global0.a.x, 0u), vec4<bool>(arg_1.x, false, true, false)), countOneBits(_wgslsmith_div_vec2_u32(var_1.xz, vec2<u32>(4294967295u, global0.a.x)) & var_2.b.zy), func_2(abs(min(vec2<i32>(-1i, 2147483647i), vec2<i32>(u_input.b.x, arg_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + -168f)).d), -11378i, var_2.d, false).d;
    var_0 = -1584f;
    return Struct_1(var_3.a, var_3.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(581f, -856f, 291f), var_3.c))), max(u_input.c, _wgslsmith_clamp_vec3_u32(vec3<u32>(select(var_2.d.a.x, global0.a.x, arg_1.x), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 26461u, global0.d.x), global0.a.yzz), _wgslsmith_div_u32(41388u, 3194u)), vec3<u32>(u_input.c.x, func_2(arg_2.xy, var_2.a.x).d.d.x, u_input.a.x), ~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, var_3.d.x, 4294967295u), u_input.c))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(-1i, select(vec3<bool>(!select(false, false, false), true || any(vec2<bool>(false, false)), all(vec3<bool>(true, true, true))), vec3<bool>(true, all(vec3<bool>(false, false, false)) & false, true), true), vec4<i32>(-1i) * -u_input.d);
    var var_1 = _wgslsmith_add_vec3_i32(abs(u_input.d.zww), -u_input.d.xwz);
    var var_2 = all(!vec4<bool>(true, false, _wgslsmith_f_op_f32(-1203f + global2.x) < _wgslsmith_f_op_f32(-126f * -788f), true));
    var var_3 = var_0;
    var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_0.a.x), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.b, global2.x, var_0.b, -187f) - vec4<f32>(1812f, var_3.c.x, 167f, global0.b))))), var_0.a.x);
}

