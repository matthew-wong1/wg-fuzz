struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
    c: i32,
    d: f32,
    e: vec4<u32>,
}

struct Struct_4 {
    a: u32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: Struct_4 = Struct_4(1u, vec4<i32>(27725i, i32(-2147483648), 2504i, -16036i));

var<private> global2: Struct_2;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32) -> u32 {
    var var_0 = Struct_3(global1.b, true, -42962i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * 1024f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(arg_0, 833f)))), _wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(select(arg_0, arg_0, global0.x)))))), vec4<u32>(_wgslsmith_mult_u32(global2.a.x, ~39725u), 0u, ~0u, u_input.a));
    var_0 = Struct_3(vec4<i32>(global2.b, -var_0.a.x, -2147483647i, 1i), all(vec2<bool>(all(global0.xy), (false && var_0.b) & var_0.b)), abs(global2.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(634f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))) - arg_0)), countOneBits(max(global2.a, var_0.e >> (firstTrailingBit(global2.a) % vec4<u32>(32u)))));
    global0 = vec4<bool>(global1.a < global2.a.x, any(global0.yy), false, false);
    global2 = Struct_2(vec4<u32>(~min(0u << (1u % 32u), 0u), 0u, global1.a, ~29689u), (firstLeadingBit(-1i) >> (1u % 32u)) & _wgslsmith_mod_i32(global2.b, ~(-var_0.a.x)));
    var_0 = Struct_3(countOneBits(reverseBits(var_0.a)), global0.x, ~_wgslsmith_mod_i32(-var_0.a.x, countOneBits(41632i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-770f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_0.d, -1524f))) * _wgslsmith_f_op_f32(f32(-1f) * -1262f))), vec4<u32>(var_0.e.x, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(~u_input.a, ~global1.a, var_0.e.x), 11018u, _wgslsmith_mod_u32(_wgslsmith_add_u32(global1.a, global2.a.x), 4294967295u)), ~23229u, 68244u));
    return ~1u;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: bool) -> bool {
    global1 = Struct_4(u_input.a, vec4<i32>(-(~arg_0.c.x), -1i, -18531i, reverseBits(0i)));
    var var_0 = _wgslsmith_div_i32(global2.b, ~(global2.b & select(arg_0.c.x, -6451i, arg_1)) ^ global1.b.x);
    let var_1 = global2.a.x;
    var_0 = -54214i;
    var var_2 = vec4<bool>(false, global0.x, ((global1.b.x ^ (i32(-1i) * -16088i)) << (_wgslsmith_mod_u32(~arg_0.b.x, 29234u) % 32u)) != 1i, ~_wgslsmith_add_u32(u_input.a, 4294967295u) >= ~1u);
    return true;
}

fn func_2(arg_0: vec2<f32>) -> f32 {
    let var_0 = func_4(Struct_1(arg_0.x, _wgslsmith_sub_vec3_u32(global2.a.wzy, vec3<u32>(func_3(612f), ~12171u, 10133u >> (u_input.a % 32u))), -global1.b, vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, global0.x)))), -1059f, _wgslsmith_div_f32(-638f, arg_0.x), arg_0.x)), false, !(!all(vec3<bool>(global0.x, false, false))));
    global2 = Struct_2(vec4<u32>(~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(global2.a.xy, global2.a.zw), max(10236u, 1u)), ~(~u_input.a >> (~global1.a % 32u)), func_3(_wgslsmith_f_op_f32(floor(1f))), 35034u), _wgslsmith_sub_i32(-45824i, min(global2.b, ~(~(-41843i)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-603f, _wgslsmith_f_op_f32(ceil(-1331f)))), _wgslsmith_f_op_vec2_f32(-arg_0)));
    let var_2 = _wgslsmith_dot_vec4_i32(-_wgslsmith_div_vec4_i32(min(global1.b, ~vec4<i32>(global2.b, -2147483647i, global2.b, -5270i)), global1.b), vec4<i32>(_wgslsmith_dot_vec4_i32(abs(_wgslsmith_div_vec4_i32(global1.b, global1.b)), abs(global1.b << (vec4<u32>(u_input.a, 4294967295u, 58924u, 1u) % vec4<u32>(32u)))), ~(~(global2.b & global1.b.x)), abs(~(-52560i)), ~(-2147483647i) << ((~global2.a.x >> (36548u % 32u)) % 32u)));
    let var_3 = 0u;
    return arg_0.x;
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(vec2<f32>(-915f, -585f))), arg_0.a)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.a)))), ~(~arg_0.b), _wgslsmith_clamp_vec4_i32(~(~abs(vec4<i32>(-13120i, 23275i, -1i, 1i))), vec4<i32>(abs(1i), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.c.x, 1i), vec2<i32>(0i, -7002i)), 55882i), abs(26128i), global2.b), arg_0.c ^ arg_0.c), arg_0.d);
    let var_1 = _wgslsmith_dot_vec3_i32(arg_0.c.yyx, ~(~(-vec3<i32>(1i, 32797i, arg_0.c.x)))) | arg_0.c.x;
    var var_2 = arg_0;
    return Struct_2(global2.a, countOneBits(_wgslsmith_dot_vec3_i32(select(vec3<i32>(var_1, arg_0.c.x, var_1), vec3<i32>(var_1, -49421i, var_2.c.x), true), countOneBits(vec3<i32>(arg_0.c.x, -38440i, global2.b))) & global1.b.x));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: bool, arg_3: f32) -> Struct_3 {
    var var_0 = func_5(Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(arg_1.d.xz)))), arg_1.b, vec4<i32>(-1i) * -max(global1.b, arg_1.c), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.d.x, -133f, arg_3, arg_3) - arg_1.d)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-arg_1.d), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d.x, arg_1.d.x, arg_1.d.x, arg_1.a)), vec4<bool>(false, true, false, global0.x))), select(vec4<bool>(true, true, arg_2, arg_2), vec4<bool>(false, global0.x, true, false), true)))));
    global1 = Struct_4(~_wgslsmith_mod_u32(~(~57376u), abs(~arg_1.b.x)), arg_0);
    let var_1 = min(-arg_1.c.xz, arg_1.c.xx);
    let var_2 = Struct_4(_wgslsmith_mult_u32(~var_0.a.x, 5444u), global1.b);
    var_0 = func_5(arg_1);
    return Struct_3(_wgslsmith_sub_vec4_i32(~(vec4<i32>(2147483647i, -1i, var_1.x, global1.b.x) ^ arg_0), -global1.b) << (reverseBits(_wgslsmith_mod_vec4_u32(~vec4<u32>(28476u, 37853u, 2216u, u_input.a), var_0.a)) % vec4<u32>(32u)), any(vec3<bool>(global0.x, true, func_4(Struct_1(arg_1.a, var_0.a.wzz, var_2.b, vec4<f32>(-1000f, arg_3, arg_3, arg_3)), true, global0.x))), _wgslsmith_dot_vec3_i32(arg_0.xyw & min(vec3<i32>(0i, var_1.x, global1.b.x), ~vec3<i32>(1i, -48536i, -88919i)), arg_0.xwy), arg_1.a, countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(80644u, u_input.a, _wgslsmith_mod_u32(14015u, 22150u), _wgslsmith_div_u32(u_input.a, global2.a.x)), vec4<u32>(_wgslsmith_mult_u32(global2.a.x, 0u), 40271u, _wgslsmith_clamp_u32(u_input.a, global2.a.x, 94765u), 4294967295u))));
}

fn func_6(arg_0: Struct_3) -> Struct_1 {
    var var_0 = global1.b.ww;
    let var_1 = select(!select(global0.wx, global0.zx, any(!vec4<bool>(true, global0.x, arg_0.b, global0.x))), vec2<bool>(true | ((arg_0.e.x <= 1u) || arg_0.b), true), vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d + arg_0.d) - _wgslsmith_f_op_f32(round(arg_0.d))) > 257f, all(select(!vec4<bool>(true, false, arg_0.b, arg_0.b), vec4<bool>(global0.x, arg_0.b, false, false), select(vec4<bool>(true, arg_0.b, arg_0.b, false), vec4<bool>(true, true, global0.x, arg_0.b), global0.x)))));
    global2 = Struct_2(global2.a, -arg_0.a.x & func_1(-_wgslsmith_div_vec4_i32(global1.b, vec4<i32>(var_0.x, global2.b, global2.b, 2147483647i)), Struct_1(-317f, vec3<u32>(62716u, global2.a.x, 32025u) | vec3<u32>(61520u, global2.a.x, arg_0.e.x), arg_0.a, vec4<f32>(arg_0.d, -627f, arg_0.d, 194f)), func_1(max(vec4<i32>(var_0.x, 1i, -2147483647i, global1.b.x), vec4<i32>(var_0.x, var_0.x, var_0.x, arg_0.a.x)), Struct_1(-133f, vec3<u32>(4294967295u, global1.a, 0u), vec4<i32>(-55883i, -37177i, 1i, 2147483647i), vec4<f32>(arg_0.d, 1423f, arg_0.d, -474f)), var_1.x, _wgslsmith_f_op_f32(round(arg_0.d))).b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(1000f, 196f)), _wgslsmith_f_op_f32(-arg_0.d), true))).a.x);
    var var_2 = false;
    let var_3 = firstTrailingBit(22442u);
    return Struct_1(_wgslsmith_f_op_f32(-arg_0.d), ~_wgslsmith_div_vec3_u32(vec3<u32>(firstTrailingBit(arg_0.e.x), u_input.a, func_1(global1.b, Struct_1(arg_0.d, global2.a.xzw, arg_0.a, vec4<f32>(arg_0.d, 491f, -1140f, -1784f)), global0.x, arg_0.d).e.x), vec3<u32>(_wgslsmith_mod_u32(4294967295u, global1.a), 1u, 1u)), vec4<i32>(47778i, 0i, global1.b.x, global1.b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.d, arg_0.d, 345f, arg_0.d), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d, 171f, -269f, 1911f)))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1310f, -407f, -630f, -637f) * vec4<f32>(arg_0.d, 1000f, 890f, 584f)))))));
}

fn func_7(arg_0: Struct_1) -> Struct_4 {
    global1 = Struct_4(0u, _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(abs(vec4<i32>(arg_0.c.x, arg_0.c.x, -97951i, 924i)), reverseBits(arg_0.c)), ~global1.b) >> (vec4<u32>(global1.a, firstTrailingBit(_wgslsmith_dot_vec4_u32(global2.a, global2.a)), ~(43323u | arg_0.b.x), countOneBits(4294967295u)) % vec4<u32>(32u)));
    global0 = vec4<bool>(!(global0.x & !global0.x) != global0.x, all(select(global0.yzz, !(!vec3<bool>(true, global0.x, global0.x)), select(vec3<bool>(true, global0.x, true), !global0.zwz, select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(global0.x, true, global0.x), false)))), all(select(!(!vec4<bool>(global0.x, global0.x, global0.x, false)), vec4<bool>(global0.x, global0.x, !global0.x, global0.x), !global0.x)), func_6(func_1(vec4<i32>(0i, global1.b.x, 2147483647i, -1i), func_6(Struct_3(global1.b, true, global1.b.x, arg_0.d.x, vec4<u32>(1u, u_input.a, arg_0.b.x, 25668u))), func_1(arg_0.c, arg_0, false, arg_0.a).b, _wgslsmith_f_op_f32(max(-170f, arg_0.d.x)))).c.x == arg_0.c.x);
    return Struct_4(_wgslsmith_sub_u32(~u_input.a, 1u), countOneBits(_wgslsmith_sub_vec4_i32(~(~arg_0.c), -arg_0.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(func_6(func_1(vec4<i32>(-56660i, global2.b, 1i, ~global1.b.x), Struct_1(_wgslsmith_div_f32(-294f, -788f), global2.a.wzy ^ vec3<u32>(u_input.a, global1.a, global1.a), vec4<i32>(global1.b.x, 2147483647i, 2147483647i, global2.b), vec4<f32>(363f, 401f, 1026f, 1257f)), _wgslsmith_mod_i32(global2.b, global2.b) != 2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-290f, 509f))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(func_6(Struct_3(vec4<i32>(global1.b.x, -27254i, -1i, 1i), false, -2147483647i, 928f, vec4<u32>(var_0.a, global2.a.x, var_0.a, var_0.a))).d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 719f, -920f, 412f)))))));
    global1 = Struct_4(global2.a.x, vec4<i32>(_wgslsmith_clamp_i32(var_0.b.x, _wgslsmith_sub_i32(13624i, -1i), -33483i), global1.b.x, -global2.b, func_5(func_6(Struct_3(vec4<i32>(1i, var_0.b.x, -39045i, var_0.b.x), false, 0i, 1467f, vec4<u32>(global2.a.x, 42471u, 7173u, global1.a)))).b));
    let var_2 = func_5(func_6(func_1(global1.b, Struct_1(var_1.x, firstTrailingBit(global2.a.yzy), reverseBits(vec4<i32>(global1.b.x, var_0.b.x, global1.b.x, global1.b.x)), var_1), all(select(global0.wxy, vec3<bool>(true, global0.x, false), global0.wzx)), var_1.x)));
    let var_3 = _wgslsmith_f_op_vec2_f32(-var_1.yy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(vec4<f32>(-367f, var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(var_1.x - 1211f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1 + _wgslsmith_f_op_vec4_f32(-var_1)))), _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(~var_0.b, ~_wgslsmith_mod_vec4_i32(var_0.b, var_0.b)), vec4<i32>(~(-2147483647i), countOneBits(46276i), var_2.b, abs(global2.b)), global1.b), func_1(vec4<i32>(1i, -(~78627i), var_0.b.x, var_2.b), func_6(func_1(func_1(vec4<i32>(-1i, -34005i, global1.b.x, 0i), Struct_1(-2396f, vec3<u32>(var_2.a.x, var_0.a, var_2.a.x), vec4<i32>(-18465i, var_2.b, var_2.b, 0i), var_1), global0.x, 1401f).a, func_6(Struct_3(var_0.b, global0.x, -30862i, -136f, global2.a)), false, _wgslsmith_div_f32(767f, 591f))), global0.x, func_1(~(-vec4<i32>(46371i, global1.b.x, 2147483647i, -2147483647i)), func_6(Struct_3(var_0.b, true, global2.b, var_3.x, var_2.a)), global0.x, 1f).d).e.x, vec3<u32>(global1.a, ~(~u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(3242u, global2.a.x, var_0.a, 1u), var_2.a)));
}

