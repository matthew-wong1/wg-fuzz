struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: i32,
    d: f32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(4294967295u, Struct_1(vec3<f32>(-488f, 689f, 185f)), 0i, -1000f, vec3<i32>(894i, -4025i, i32(-2147483648)));

var<private> global1: Struct_2 = Struct_2(48973u, Struct_1(vec3<f32>(1365f, -417f, -1188f)), -1i, 1762f, vec3<i32>(-29410i, 31222i, -942i));

var<private> global2: Struct_1 = Struct_1(vec3<f32>(-561f, 971f, 891f));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> i32 {
    global1 = Struct_2(1u, global0.b, global1.c, -372f, firstTrailingBit(global1.e));
    var var_0 = vec2<bool>(true, true);
    var var_1 = select(select(vec3<bool>(any(vec2<bool>(true, true)), !(var_0.x || false), all(vec3<bool>(true, true, true))), !(!select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(false, true, var_0.x))), !var_0.x), !select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), select(vec3<bool>(true, true, var_0.x), vec3<bool>(true, false, var_0.x), vec3<bool>(true, var_0.x, var_0.x)), !var_0.x), vec3<bool>(true, global0.d < global2.a.x, true)), false);
    var var_2 = abs(~(i32(-1i) * -69618i));
    var_0 = !select(!(!select(vec2<bool>(true, false), var_1.yz, var_1.xy)), !vec2<bool>(select(false, var_1.x, var_1.x), any(vec4<bool>(true, var_0.x, true, var_1.x))), var_1.xy);
    return global1.c;
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2, arg_3: vec4<bool>) -> f32 {
    let var_0 = firstTrailingBit(min(abs(reverseBits(vec4<i32>(global0.e.x, 70666i, 2728i, arg_0.e.x) >> (vec4<u32>(arg_0.a, 4294967295u, 1u, arg_2.a) % vec4<u32>(32u)))), vec4<i32>(-2147483647i, arg_2.e.x, func_3(), -7239i)));
    global0 = arg_2;
    var var_1 = ~32416u;
    var var_2 = min(u_input.c.xz, abs(vec2<u32>(91754u & arg_0.a, global0.a)) >> (u_input.c.yx % vec2<u32>(32u)));
    var var_3 = 1000f;
    return 1536f;
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(func_4(Struct_2(_wgslsmith_mod_u32(112593u, global0.a), global0.b, 0i, arg_0.a.x, vec3<i32>(reverseBits(func_3()), -2147483647i, 22450i << (min(u_input.c.x, u_input.d) % 32u))), any(vec3<bool>(true, all(vec4<bool>(true, true, true, true)), true)), Struct_2(0u, Struct_1(arg_0.a), firstLeadingBit(0i), 543f, ~firstTrailingBit(_wgslsmith_sub_vec3_i32(global0.e, vec3<i32>(global1.e.x, global0.c, -21141i)))), vec4<bool>(true, true, true, true)));
    let var_1 = u_input.c;
    var var_2 = !(_wgslsmith_dot_vec4_i32(-vec4<i32>(global0.e.x, 32867i, global0.c, -2147483647i), ~(~vec4<i32>(global0.c, global0.c, 0i, 1i))) <= firstTrailingBit(global0.c));
    var var_3 = ~4294967295u;
    var var_4 = select(!(!vec2<bool>(true, any(vec2<bool>(true, true)))), !(!select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(false, true))), vec2<bool>(true, min(global0.e.x >> (global1.a % 32u), -1i) < 54887i));
    return _wgslsmith_mult_u32(global0.a, abs(u_input.a));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> Struct_2 {
    var var_0 = ~abs(~vec4<u32>(abs(28742u), abs(4294967295u), global0.a & 0u, func_2(arg_0.b)));
    var var_1 = arg_1;
    let var_2 = _wgslsmith_add_i32(var_1.e.x, arg_0.c);
    global2 = Struct_1(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(1000f, 151f)))), -205f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.d + arg_0.d) + _wgslsmith_f_op_f32(min(arg_2.a.x, arg_1.d))) - arg_1.b.a.x), 439f));
    var_0 = select(vec4<u32>(_wgslsmith_add_u32(~1u, 1u), ~arg_0.a, var_1.a, 41157u), ~(~_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.c.x, 4294967295u, 62201u, 0u), vec4<u32>(30591u, 78411u, 4294967295u, 24753u) ^ vec4<u32>(arg_1.a, arg_0.a, global1.a, global1.a))), vec4<bool>(true, true, true, true));
    return arg_1;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    global2 = func_1(arg_0, arg_0, Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(992f, global0.b.a.x, global1.d) - _wgslsmith_div_vec3_f32(vec3<f32>(global0.b.a.x, arg_1.b.a.x, 1080f), func_1(arg_1, arg_1, Struct_1(vec3<f32>(arg_1.b.a.x, -416f, global1.b.a.x))).b.a)))).b;
    global0 = arg_1;
    let var_0 = 4294967295u;
    var var_1 = Struct_1(global1.b.a);
    let var_2 = arg_1;
    return global1.b;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1) -> Struct_2 {
    global0 = func_1(Struct_2(max(22715u, ~(~4294967295u)), func_5(func_1(Struct_2(4176u, Struct_1(vec3<f32>(arg_1.a.x, global2.a.x, -362f)), 0i, 796f, global0.e), Struct_2(4294967295u, global1.b, 2147483647i, global1.b.a.x, vec3<i32>(global1.e.x, -1i, arg_0.c)), arg_1), arg_0), 1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -742f)) - _wgslsmith_f_op_f32(arg_1.a.x - _wgslsmith_f_op_f32(-arg_0.b.a.x))), ~arg_0.e), arg_0, global0.b);
    let var_0 = Struct_2(global1.a, global1.b, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(-(~vec4<i32>(global1.e.x, 2147483647i, global1.e.x, 0i)), vec4<i32>(-32613i, -1i, i32(-1i) * -2147483647i, _wgslsmith_add_i32(-36965i, -29506i)), ~vec4<i32>(38969i, global1.c, global0.c, arg_0.e.x) << (countOneBits(vec4<u32>(global0.a, 11203u, 21815u, arg_0.a)) % vec4<u32>(32u))), vec4<i32>(-1i) * -firstLeadingBit(vec4<i32>(global0.e.x, arg_0.c, 1i, arg_0.e.x))), arg_0.d, global1.e);
    global0 = var_0;
    global2 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.b.a * global0.b.a) + func_1(Struct_2(global1.a, global0.b, var_0.e.x, -1426f, vec3<i32>(arg_0.e.x, 0i, var_0.e.x)), Struct_2(25011u, Struct_1(arg_0.b.a), global1.e.x, -115f, vec3<i32>(var_0.c, var_0.c, 0i)), Struct_1(vec3<f32>(177f, var_0.b.a.x, arg_0.b.a.x))).b.a)), arg_0.b.a));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d) * -772f), _wgslsmith_f_op_f32(293f * global2.a.x));
    return Struct_2(4294967295u, func_5(func_1(Struct_2(_wgslsmith_mod_u32(arg_0.a, 0u), Struct_1(vec3<f32>(arg_0.d, -1109f, global2.a.x)), abs(-1i), arg_0.d, vec3<i32>(1i, 2147483647i, 1i)), func_1(func_1(arg_0, Struct_2(13330u, global0.b, arg_0.c, 1153f, vec3<i32>(1i, arg_0.e.x, -21401i)), arg_0.b), var_0, func_1(arg_0, arg_0, Struct_1(arg_0.b.a)).b), func_1(Struct_2(0u, Struct_1(vec3<f32>(-794f, -478f, global0.b.a.x)), 1i, var_1.x, vec3<i32>(1i, -4673i, 0i)), func_1(arg_0, var_0, global0.b), func_5(var_0, Struct_2(4294967295u, Struct_1(arg_0.b.a), arg_0.e.x, -1000f, vec3<i32>(37276i, var_0.e.x, -31681i)))).b), Struct_2(0u, global1.b, -global0.c ^ ~global0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -989f) - var_1.x), firstLeadingBit(~vec3<i32>(arg_0.e.x, 20507i, -10870i)))), func_1(arg_0, arg_0, Struct_1(var_0.b.a)).e.x, -826f, vec3<i32>(-max(_wgslsmith_dot_vec2_i32(var_0.e.yx, vec2<i32>(-1i, -2147483647i)), min(arg_0.c, 55018i)), global0.e.x, var_0.e.x));
}

fn func_7(arg_0: Struct_2) -> Struct_2 {
    var var_0 = Struct_2(global1.a, func_1(Struct_2(max(43541u, 14162u), Struct_1(vec3<f32>(arg_0.d, global1.b.a.x, 472f)), 26258i, -1066f, _wgslsmith_div_vec3_i32(-vec3<i32>(arg_0.c, 0i, 84060i), vec3<i32>(-2147483647i, arg_0.e.x, 1i))), arg_0, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(339f + -536f), -826f, _wgslsmith_f_op_f32(arg_0.d * global1.d)))).b, global0.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(func_5(func_1(arg_0, Struct_2(global0.a, global0.b, global1.c, global0.b.a.x, vec3<i32>(global1.e.x, arg_0.e.x, -10162i)), Struct_1(global2.a)), arg_0).a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1182f) * -1945f)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1766f, arg_0.d)), -498f))), vec3<i32>(1i, _wgslsmith_dot_vec3_i32(-vec3<i32>(global1.e.x, arg_0.e.x, arg_0.c), global0.e), global0.c));
    let var_1 = global0.b;
    let var_2 = select(select(select(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)))), !any(select(vec2<bool>(false, true), vec2<bool>(false, false), true))), !(!vec4<bool>(all(vec2<bool>(true, false)), true, true, false)), !vec4<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), true, true, !all(vec2<bool>(false, true))));
    let var_3 = !var_2.wx;
    let var_4 = func_6(arg_0, func_1(arg_0, arg_0, Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b.a.x, var_1.a.x, -1480f) * _wgslsmith_f_op_vec3_f32(exp2(global2.a))))).b);
    return func_6(func_1(func_6(Struct_2(_wgslsmith_dot_vec2_u32(vec2<u32>(54916u, 49460u), vec2<u32>(u_input.a, var_0.a)), func_1(arg_0, Struct_2(arg_0.a, global1.b, var_0.c, 309f, var_0.e), var_0.b).b, max(-1i, -1i), _wgslsmith_f_op_f32(sign(arg_0.b.a.x)), select(var_0.e, arg_0.e, var_2.yxz)), global0.b), func_6(Struct_2(global0.a, Struct_1(global0.b.a), 0i, _wgslsmith_f_op_f32(ceil(global1.d)), -arg_0.e), Struct_1(vec3<f32>(-1000f, var_0.b.a.x, -787f))), Struct_1(vec3<f32>(1425f, _wgslsmith_f_op_f32(global1.b.a.x - global2.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1243f)))), var_4.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(_wgslsmith_dot_vec2_u32(~firstTrailingBit(u_input.c.zz | u_input.c.zy), _wgslsmith_clamp_vec2_u32(u_input.c.zx, firstTrailingBit(_wgslsmith_mult_vec2_u32(u_input.c.zx, u_input.c.yy)), reverseBits(vec2<u32>(4294967295u, u_input.c.x)))));
    let var_1 = global1.b.a.x;
    global0 = func_7(func_6(Struct_2(global1.a, func_5(func_1(Struct_2(global1.a, Struct_1(global1.b.a), 1i, 2775f, vec3<i32>(global0.c, global0.e.x, -2147483647i)), Struct_2(11178u, global0.b, global1.c, global1.b.a.x, vec3<i32>(global0.c, global1.c, -1i)), Struct_1(global1.b.a)), func_1(Struct_2(global0.a, Struct_1(global2.a), global0.e.x, global2.a.x, vec3<i32>(global1.c, global1.e.x, -2147483647i)), Struct_2(global1.a, Struct_1(vec3<f32>(global0.d, -2258f, -2244f)), global1.e.x, 210f, vec3<i32>(0i, -2147483647i, global0.c)), Struct_1(global1.b.a))), abs(reverseBits(-21623i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.x) + _wgslsmith_f_op_f32(sign(1068f))), vec3<i32>(-1i, -1i, 2147483647i) >> (min(u_input.c, vec3<u32>(71768u, global1.a, global1.a)) % vec3<u32>(32u))), func_5(func_1(Struct_2(u_input.e, Struct_1(vec3<f32>(1000f, -707f, -440f)), -21459i, 1000f, vec3<i32>(global0.e.x, -21440i, -2147483647i)), func_1(Struct_2(39973u, global0.b, global1.c, 349f, vec3<i32>(9593i, 20855i, 1i)), Struct_2(u_input.c.x, global1.b, 0i, global2.a.x, global1.e), Struct_1(global1.b.a)), func_5(Struct_2(41591u, global0.b, 40420i, global2.a.x, global1.e), Struct_2(20689u, Struct_1(vec3<f32>(global2.a.x, 1937f, global2.a.x)), 4287i, -1407f, vec3<i32>(global0.c, global1.e.x, global1.c)))), func_1(Struct_2(u_input.d, Struct_1(global0.b.a), global0.e.x, global1.d, vec3<i32>(-1i, -1i, global1.c)), func_1(Struct_2(u_input.d, Struct_1(vec3<f32>(-575f, global2.a.x, 247f)), global0.c, global1.b.a.x, global1.e), Struct_2(0u, global1.b, 1i, -1282f, vec3<i32>(41166i, 2147483647i, 1i)), global0.b), func_1(Struct_2(global0.a, global1.b, global1.e.x, -912f, global1.e), Struct_2(64245u, Struct_1(global1.b.a), global1.e.x, -737f, vec3<i32>(global1.e.x, global0.e.x, global0.c)), global0.b).b))));
    let var_2 = 2147483647i;
    let var_3 = abs(_wgslsmith_mult_vec4_u32(vec4<u32>(func_1(func_1(Struct_2(global0.a, Struct_1(vec3<f32>(global0.d, -510f, global0.b.a.x)), global0.e.x, global2.a.x, global1.e), Struct_2(5641u, global0.b, var_2, -991f, global0.e), global1.b), Struct_2(global1.a, Struct_1(vec3<f32>(-649f, -453f, 1606f)), -2147483647i, global0.b.a.x, vec3<i32>(-1i, 2147483647i, var_2)), global1.b).a, func_6(func_1(Struct_2(21444u, global1.b, -1i, 1000f, vec3<i32>(-13105i, global1.e.x, var_2)), Struct_2(u_input.b, global0.b, 19347i, -385f, vec3<i32>(0i, 6140i, -15181i)), Struct_1(global1.b.a)), func_5(Struct_2(1u, global0.b, var_2, global1.b.a.x, global0.e), Struct_2(global0.a, global1.b, global1.e.x, global1.b.a.x, vec3<i32>(global1.e.x, 12629i, 0i)))).a, global1.a, ~4294967295u), ~(~vec4<u32>(31580u, 0u, 26558u, global0.a)) << (~vec4<u32>(global0.a, global1.a, global0.a, 4294967295u) % vec4<u32>(32u))));
    let var_4 = func_6(Struct_2(_wgslsmith_div_u32(0u, _wgslsmith_div_u32(4294967295u, 4294967295u)), global1.b, global0.c, -100f, vec3<i32>(51960i, global1.e.x, 9536i)), Struct_1(func_7(func_7(Struct_2(u_input.e, global0.b, var_2, global2.a.x, global0.e))).b.a)).b;
    var_0 = _wgslsmith_sub_u32(func_7(Struct_2((4294967295u & var_3.x) >> (~18325u % 32u), Struct_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global2.a.x, global2.a.x, global2.a.x), vec3<f32>(-296f, -1105f, 1076f)))), ~1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2128f - 2439f) * global1.d), vec3<i32>(max(28086i, global0.c), 0i, 0i))).a, var_3.x);
    var_0 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(select(global0.e.x, -global0.e.x, !(!(global1.c < var_2))));
}

