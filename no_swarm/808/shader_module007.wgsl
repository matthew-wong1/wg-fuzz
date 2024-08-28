struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec3<bool>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_2 = Struct_2(Struct_1(0u), 1110f, Struct_1(1u), vec3<bool>(false, false, false), 1i);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: u32) -> vec4<u32> {
    let var_0 = Struct_2(global1.c, _wgslsmith_f_op_f32(global1.b - 1343f), Struct_1(_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(38314u, global0.c.a, 42399u, 28418u)) << (0u % 32u)), select(vec3<bool>(global0.d.x, false, true), global0.d, false), -25078i);
    var var_1 = global0.d;
    var var_2 = !global1.d.x;
    global1 = var_0;
    var var_3 = Struct_2(arg_0, _wgslsmith_f_op_f32(step(global1.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b), var_0.b)))), Struct_1(_wgslsmith_sub_u32(arg_1.x, 1u)), select(select(!select(global0.d, global1.d, vec3<bool>(false, var_0.d.x, true)), !select(global0.d, global1.d, global0.d), any(!global0.d)), vec3<bool>(true, false, var_0.d.x), vec3<bool>(!global0.d.x, false, global0.d.x)), global0.e);
    return reverseBits(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(~u_input.c, u_input.c), vec4<u32>(1u, u_input.c.x & 39024u, ~149013u, 1u)) >> (firstLeadingBit(~firstTrailingBit(u_input.c)) % vec4<u32>(32u)));
}

fn func_2(arg_0: vec2<f32>, arg_1: u32) -> vec4<f32> {
    let var_0 = ~(~_wgslsmith_div_u32(global1.a.a, _wgslsmith_div_u32(38333u ^ global0.c.a, 115987u >> (arg_1 % 32u))));
    global0 = Struct_2(global0.c, 417f, Struct_1(global1.c.a), global1.d, 2147483647i);
    global1 = Struct_2(Struct_1(countOneBits(global0.a.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1446f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b - global1.b)))), Struct_1(~_wgslsmith_dot_vec4_u32(func_3(Struct_1(global1.a.a), u_input.c.zzy, global0.c.a), ~u_input.c)), vec3<bool>(!(!global0.d.x & global0.d.x), global1.d.x, global0.d.x), _wgslsmith_dot_vec4_i32(select(max(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, 2147483647i, global1.e, -1i), vec4<i32>(-22976i, -35518i, u_input.b.x, global0.e), vec4<i32>(global1.e, -2491i, global1.e, -1i)), vec4<i32>(u_input.b.x, 34390i, 0i, 2147483647i) ^ vec4<i32>(14482i, u_input.b.x, global1.e, u_input.b.x)), abs(firstLeadingBit(vec4<i32>(global1.e, 1i, global0.e, 0i))), select(true, all(global0.d), true)), ~(-countOneBits(vec4<i32>(74088i, global1.e, global0.e, global1.e)))));
    let var_1 = Struct_2(global0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.b))))), Struct_1(_wgslsmith_mult_u32(var_0, global0.c.a)), global1.d, _wgslsmith_mod_i32(0i, select(u_input.b.x, global0.e, all(!vec4<bool>(global0.d.x, true, global0.d.x, false)))));
    let var_2 = global1.c;
    return vec4<f32>(_wgslsmith_f_op_f32(round(437f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b + _wgslsmith_f_op_f32(max(arg_0.x, 962f))) + var_1.b))), -653f, -1259f);
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-3028f + global0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1089f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1000f, -1000f))) - 868f) - _wgslsmith_f_op_f32(-873f - 1076f)));
    var var_1 = _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(var_0 - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b, var_0.x) + var_0))))), arg_2.a));
    let var_2 = ~_wgslsmith_mod_vec3_u32(u_input.c.zxx ^ u_input.c.wxy, u_input.c.zwx);
    var var_3 = Struct_2(Struct_1(global0.a.a ^ ~arg_2.a), var_0.x, Struct_1(~_wgslsmith_mult_u32(_wgslsmith_add_u32(1u, var_2.x), global0.c.a)), select(!select(select(vec3<bool>(global0.d.x, true, true), vec3<bool>(true, global1.d.x, true), vec3<bool>(arg_1, global1.d.x, true)), !vec3<bool>(arg_1, false, false), global1.d), select(!(!vec3<bool>(true, false, global1.d.x)), global1.d, vec3<bool>(arg_1, false, false)), false), 1i);
    var var_4 = global1.c;
    return select(vec3<bool>(global0.d.x, true, _wgslsmith_mod_i32(var_3.e ^ -1i, 2147483647i) >= (_wgslsmith_add_i32(var_3.e, u_input.b.x) << (_wgslsmith_dot_vec2_u32(u_input.c.yy, var_2.zz) % 32u))), global1.d, true);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: f32, arg_3: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.b)))), -663f));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.d.yy;
    var var_1 = func_4(53615u, Struct_1(_wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(u_input.c.xyz, vec3<u32>(1u, global0.a.a, 41573u)), firstLeadingBit(vec3<u32>(7435u, 1u, global0.c.a) >> (u_input.c.zwx % vec3<u32>(32u))))), 1834f, Struct_2(global0.c, _wgslsmith_f_op_f32(sign(-637f)), Struct_1(global1.a.a), func_1(global1.a.a, any(vec4<bool>(global0.d.x, false, global1.d.x, global1.d.x)) | true, Struct_1(global1.c.a)), -u_input.b.x));
    var_1 = Struct_2(Struct_1(var_1.c.a), -642f, var_1.a, var_1.d, 1i);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(var_1.b - global0.b), global1.b, -1000f);
    let var_3 = Struct_1(24650u);
    var var_4 = Struct_2(Struct_1(1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(484f + global0.b))), Struct_1(0u), select(vec3<bool>(var_1.d.x, 34744u <= (var_1.a.a | global1.a.a), all(var_1.d)), func_1(_wgslsmith_dot_vec3_u32(u_input.c.wzy, vec3<u32>(global0.a.a, 4294967295u, 1u)), true, func_4(29830u, Struct_1(1u), 1349f, func_4(4294967295u, global1.a, var_1.b, Struct_2(Struct_1(4294967295u), global1.b, Struct_1(1u), vec3<bool>(false, var_1.d.x, false), 2147483647i))).c), func_4(54586u | _wgslsmith_mod_u32(37205u, var_3.a), func_4(0u, func_4(27381u, var_1.c, 1929f, Struct_2(Struct_1(global1.a.a), 1000f, Struct_1(15384u), global1.d, u_input.b.x)).c, _wgslsmith_f_op_f32(global0.b - -501f), func_4(var_3.a, global0.c, 927f, Struct_2(var_3, -116f, Struct_1(global1.c.a), vec3<bool>(true, false, var_1.d.x), -21776i))).c, 878f, func_4(50829u, Struct_1(46979u), _wgslsmith_f_op_f32(-global1.b), func_4(23743u, var_3, 937f, Struct_2(var_3, var_1.b, global1.c, global1.d, global1.e)))).d), 25931i);
    var var_5 = u_input.c.zx;
    var_1 = Struct_2(Struct_1(global1.c.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1223f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b + global1.b)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -387f))))), var_1.a, select(var_1.d, vec3<bool>(true, true, var_1.d.x), global1.d.x), -reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.e, 1093i, -29928i, -1i), vec4<i32>(var_4.e, -2946i, -1i, var_1.e) << (vec4<u32>(1u, 4294967295u, 4294967295u, 1u) % vec4<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer((vec2<i32>(-1i) * -abs(vec2<i32>(9028i, 40851i))) << (vec2<u32>(4294967295u, ~func_3(global1.a, vec3<u32>(0u, 0u, var_5.x), global0.c.a).x) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) - global0.b), -1153f, _wgslsmith_f_op_f32(step(global1.b, 205f)), global0.b))), 1i);
}

