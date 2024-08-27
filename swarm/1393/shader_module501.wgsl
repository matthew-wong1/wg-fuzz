struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: i32,
    d: u32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> vec2<bool> {
    global0 = arg_1.e.zz;
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - -202f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * -740f) + global0.x)), -1000f));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(arg_1.e.x)))), arg_1.e.x);
    var var_0 = arg_1.b;
    let var_1 = vec4<u32>(0u, arg_1.a.x << (_wgslsmith_sub_u32(31148u, select(_wgslsmith_add_u32(arg_1.d, 0u), _wgslsmith_dot_vec2_u32(arg_1.a, arg_1.a), arg_1.c >= u_input.c)) % 32u), ~(~24375u), _wgslsmith_div_u32(arg_1.a.x << (~(arg_1.a.x << (40065u % 32u)) % 32u), firstLeadingBit(abs(arg_1.a.x))));
    return vec2<bool>(select(!all(arg_1.b), true, 257f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.e.x - 1872f))), true);
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = global0.x != global0.x;
    global0 = vec2<f32>(910f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(floor(1441f)))) + global0.x));
    global0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.x, 567f), arg_0.e.zz)))) - vec2<f32>(arg_0.e.x, _wgslsmith_f_op_f32(round(1177f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, -447f))), vec2<f32>(arg_0.e.x, 729f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, arg_0.e.x))) * arg_0.e.zy))));
    let var_1 = ~0u ^ arg_0.a.x;
    var var_2 = arg_0;
    return 426f;
}

fn func_1(arg_0: u32, arg_1: u32) -> Struct_1 {
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.x, 1206f, true)) + -1355f))), global0.x);
    var var_0 = Struct_1(select(~vec2<u32>(arg_1, 65468u), ~(~(~vec2<u32>(4294967295u, 40045u))), func_2(0i, Struct_1(vec2<u32>(arg_1, arg_1), vec2<bool>(true, true), 46693i, 27285u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, -902f, global0.x))))), func_2(u_input.a, Struct_1(~(vec2<u32>(4294967295u, arg_0) | vec2<u32>(0u, arg_1)), vec2<bool>(true, true), u_input.d, arg_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(940f, global0.x, global0.x, -1411f), vec4<f32>(-527f, global0.x, global0.x, 368f))))), u_input.d, _wgslsmith_clamp_u32(arg_1, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1, arg_1, arg_0, arg_0), vec4<u32>(4294967295u, arg_1, arg_0, 39713u)), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 32525u, arg_0, arg_0), vec4<u32>(arg_0, arg_0, arg_1, 47972u))), arg_1), 47684u), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1225f, global0.x)))), -2311f, _wgslsmith_f_op_f32(func_3(Struct_1(abs(vec2<u32>(64249u, arg_1)), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), 1203i, ~4294967295u, vec4<f32>(-585f, global0.x, global0.x, 2479f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(797f + _wgslsmith_f_op_f32(-1122f - 1653f)) - global0.x)));
    var var_1 = Struct_1(_wgslsmith_mod_vec2_u32(var_0.a, var_0.a), !select(select(vec2<bool>(true, true), var_0.b, vec2<bool>(false, true)), !var_0.b, false), var_0.c, 4294967295u, var_0.e);
    let var_2 = Struct_1(vec2<u32>(max(arg_1, 1u) ^ ((var_1.a.x & 0u) | var_0.a.x), firstTrailingBit(~_wgslsmith_add_u32(arg_1, var_1.d))), !select(var_1.b, vec2<bool>(true, any(vec4<bool>(var_0.b.x, true, false, false))), var_0.b.x), _wgslsmith_mod_i32(abs(_wgslsmith_div_i32(-2147483647i, 1i)), var_1.c), ~arg_0, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(trunc(-1392f)), 1470f, -158f, -333f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-var_0.e), var_1.e)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-809f, var_1.e.x, var_0.e.x, -468f))))));
    var var_3 = Struct_1(~((~var_1.a | _wgslsmith_sub_vec2_u32(vec2<u32>(var_2.d, 5900u), var_2.a)) << (min(var_2.a, var_0.a) % vec2<u32>(32u))), func_2(firstTrailingBit(_wgslsmith_clamp_i32(var_0.c, u_input.c << (arg_0 % 32u), abs(u_input.b.x))), Struct_1(var_0.a, !(!var_0.b), var_2.c, var_2.a.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, var_0.e.x, var_1.e.x, -150f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(725f, 521f, 1000f, -705f), vec4<f32>(global0.x, global0.x, global0.x, var_0.e.x), var_2.b.x))))), var_0.c, firstLeadingBit(arg_1), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-411f, var_1.e.x, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(func_3(var_2))))));
    return Struct_1(~(~(var_3.a ^ var_1.a)), select(select(func_2(25464i, var_2), func_2(var_0.c, Struct_1(vec2<u32>(0u, 28645u), vec2<bool>(true, var_3.b.x), -9916i, arg_1, vec4<f32>(global0.x, var_1.e.x, 492f, var_0.e.x))), var_0.b.x), vec2<bool>(var_1.b.x, true), var_2.b.x && true), 2147483647i, 4294967295u, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-var_0.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(282f))), var_0.e.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(var_3.e.x))))))));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec3<i32>) -> vec4<f32> {
    global0 = vec2<f32>(1547f, _wgslsmith_f_op_f32(arg_1.e.x * -887f));
    let var_0 = ~(~vec2<u32>(83u, 38842u) | (vec2<u32>(0u, 59073u) << ((arg_1.a | arg_1.a) % vec2<u32>(32u)))) << (arg_1.a % vec2<u32>(32u));
    var var_1 = select(vec4<bool>(true, arg_1.b.x, arg_1.b.x | (true | arg_1.b.x), true), select(!vec4<bool>(true, true, !arg_1.b.x, !arg_1.b.x), vec4<bool>(false, arg_1.b.x, arg_1.b.x, any(vec4<bool>(false, arg_1.b.x, arg_1.b.x, false))), true), select(select(vec4<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x, true), select(vec4<bool>(arg_1.b.x, true, arg_1.b.x, arg_1.b.x), !vec4<bool>(true, true, arg_1.b.x, true), arg_1.b.x), vec4<bool>(!arg_1.b.x, false & arg_1.b.x, arg_1.b.x && true, true)), vec4<bool>(_wgslsmith_f_op_f32(abs(arg_1.e.x)) >= arg_1.e.x, arg_1.b.x, arg_1.b.x, any(!vec3<bool>(arg_1.b.x, true, arg_1.b.x))), arg_1.b.x));
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(arg_1.e.yx)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 885f)) - vec2<f32>(arg_1.e.x, global0.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(arg_1.e.zx))))), vec2<f32>(-974f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-866f - 1000f) + arg_1.e.x)))));
    var var_2 = Struct_1(var_0, vec2<bool>(true, (_wgslsmith_dot_vec2_i32(arg_2.xy, vec2<i32>(21985i, arg_0)) == -arg_1.c) | any(!vec4<bool>(false, true, arg_1.b.x, true))), firstTrailingBit(-u_input.d), 4294967295u, vec4<f32>(-657f, global0.x, _wgslsmith_f_op_f32(arg_1.e.x * -1085f), arg_1.e.x));
    return var_2.e;
}

fn func_5(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: u32) -> vec2<u32> {
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, -1000f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_0.x + -1143f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global0.x)), arg_0.x)) - arg_0.yw));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.zz + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.wx - arg_0.ww))))));
    var var_0 = 4294967295u;
    return vec2<u32>(reverseBits(arg_1.x ^ 64625u), ~(~(_wgslsmith_dot_vec3_u32(arg_1.www, arg_1.wxw) << (0u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, -131f, global0.x, -2217f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-871f, global0.x, -2427f, global0.x))) - _wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, 2353f, global0.x), vec4<f32>(global0.x, global0.x, global0.x, global0.x))), select(true, true, true))), _wgslsmith_f_op_vec4_f32(func_4(1i, func_1(~0u, _wgslsmith_add_u32(80788u, 53844u)), -vec3<i32>(u_input.c, u_input.a, -1i)))), firstTrailingBit(vec4<u32>(min(1u, 0u), _wgslsmith_add_u32(1u, 23375u), ~4294967295u, ~1u) << (abs(_wgslsmith_mod_vec4_u32(vec4<u32>(48790u, 17071u, 0u, 0u), vec4<u32>(1u, 1u, 33943u, 20051u))) % vec4<u32>(32u))), ~func_1(~1u, 35335u).d | ~countOneBits(~4294967295u));
    var var_1 = var_0.x;
    var var_2 = any(select(vec3<bool>(!(15033u <= var_0.x), true, _wgslsmith_f_op_f32(596f * 493f) < _wgslsmith_f_op_f32(max(global0.x, -641f))), !vec3<bool>(true, true, all(vec3<bool>(true, false, false))), vec3<bool>(select(true, true, false) | true, any(vec2<bool>(false, false)), !all(vec3<bool>(false, true, false)))));
    var_1 = 1u;
    var var_3 = Struct_1(_wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_0.x, 76671u), vec3<u32>(var_0.x, 30059u, var_0.x)), 97897u)), max(_wgslsmith_add_vec2_u32(var_0, ~var_0), ~abs(var_0))), !select(!func_2(u_input.c, Struct_1(var_0, vec2<bool>(true, true), u_input.a, var_0.x, vec4<f32>(global0.x, global0.x, 2128f, -2700f))), !select(vec2<bool>(false, true), vec2<bool>(false, false), false), false), -34462i, 0u, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.x, -218f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + global0.x))))));
    var_3 = Struct_1(var_3.a, var_3.b, u_input.b.x, var_3.d | 4294967295u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.e.x, var_3.e.x)), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.e.x + 1076f)), -616f)));
    var_3 = Struct_1(firstTrailingBit(~vec2<u32>(~var_3.d, var_3.a.x | 1u)), select(vec2<bool>(false, all(vec4<bool>(true, var_3.b.x, var_3.b.x, var_3.b.x))), select(var_3.b, vec2<bool>(var_3.b.x, var_3.e.x <= var_3.e.x), !vec2<bool>(false, var_3.b.x)), !vec2<bool>(true, any(var_3.b))), (0i & _wgslsmith_dot_vec3_i32(u_input.b & u_input.b, u_input.b)) >> (~0u % 32u), 1u, var_3.e);
    let x = u_input.a;
    s_output = StorageBuffer(-max(~1591i, 0i), _wgslsmith_f_op_f32(abs(global0.x)), func_1(~(~124672u), 1u).c);
}

