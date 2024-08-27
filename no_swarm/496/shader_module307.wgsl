struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -543f;

var<private> global1: i32;

var<private> global2: vec4<u32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2) -> i32 {
    let var_0 = Struct_3(-_wgslsmith_dot_vec3_i32(vec3<i32>(~u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -22274i), vec2<i32>(u_input.c.x, -1i)), _wgslsmith_div_i32(u_input.b, 66100i)), -vec3<i32>(-6421i, u_input.c.x, u_input.c.x)));
    var var_1 = arg_0;
    var_1 = arg_0;
    var var_2 = Struct_1(34089u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-344f, _wgslsmith_f_op_f32(-arg_0), arg_0)), 1071f, all(vec3<bool>(true, !all(vec4<bool>(true, true, true, false)), u_input.b >= _wgslsmith_dot_vec3_i32(u_input.c.xyz, vec3<i32>(0i, var_0.a, var_0.a)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(782f - arg_0)), -362f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0, -1674f)) - 1f), _wgslsmith_f_op_f32(-arg_0)) * vec4<f32>(arg_0, -860f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0, arg_0, false))))));
    global0 = _wgslsmith_f_op_f32(abs(arg_0));
    return 18209i;
}

fn func_2(arg_0: vec2<i32>, arg_1: i32, arg_2: f32, arg_3: vec3<f32>) -> Struct_3 {
    var var_0 = Struct_3(_wgslsmith_add_i32(arg_0.x, _wgslsmith_clamp_i32(-20658i, _wgslsmith_sub_i32(arg_0.x, arg_1), -2147483647i) & func_3(387f, Struct_2(vec4<u32>(u_input.a, u_input.a, 126222u, 44457u)), Struct_2(vec4<u32>(global2.x, 0u, 1u, u_input.a)))));
    var var_1 = u_input.c.xxw;
    global1 = -1i;
    var_0 = Struct_3(countOneBits(~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, var_0.a), u_input.c.xz)) & ~_wgslsmith_div_i32(-168i, min(arg_1, u_input.b)));
    var_0 = Struct_3(~1i);
    return Struct_3(62178i);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec3<f32>) -> f32 {
    let var_0 = Struct_1(global2.x, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_2.x, arg_2.x)) + arg_2.x), _wgslsmith_f_op_f32(sign(-178f)), 1362f), arg_2.x, all(!vec4<bool>(true, true, any(vec4<bool>(true, true, false, true)), true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(arg_2.x, -1116f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x * 524f) + -217f), arg_2.x, -339f)));
    global0 = 689f;
    global1 = -1842i;
    let var_1 = Struct_4(vec4<bool>(var_0.d, false, !(1314f <= _wgslsmith_f_op_f32(step(var_0.b.x, 1322f))), all(vec3<bool>(false, !var_0.d, var_0.d))), ~vec4<u32>(~var_0.a << (0u % 32u), var_0.a ^ global2.x, countOneBits(_wgslsmith_sub_u32(u_input.a, 4294967295u)), ~var_0.a << (55135u % 32u)), Struct_3(u_input.c.x));
    let var_2 = 394f;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.c)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c + -2054f) * var_0.c))) - _wgslsmith_f_op_f32(ceil(1f)));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_4) -> Struct_4 {
    global0 = _wgslsmith_f_op_f32(min(645f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1246f), -806f)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(980f * 1291f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_2(u_input.c.xx, u_input.c.x, 299f, vec3<f32>(1000f, 180f, 1189f)), Struct_3(3986i), _wgslsmith_f_op_vec3_f32(vec3<f32>(-707f, 1954f, -376f) * vec3<f32>(-1000f, 349f, 1197f))))))));
    var var_0 = ~91381u;
    let var_1 = 6309i;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -348f)));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, -289f, arg_0.x)))))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1000f + -1507f), _wgslsmith_f_op_f32(f32(-1f) * -523f))), _wgslsmith_f_op_f32(1000f - 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -914f) * -188f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-118f)), -2237f)))))));
    return Struct_4(vec4<bool>(false, (2147483647i | _wgslsmith_dot_vec2_i32(u_input.c.yw, u_input.c.wx)) < arg_1.c.a, arg_0.x, u_input.a > (reverseBits(30394u) | u_input.a)), max(_wgslsmith_sub_vec4_u32(arg_1.b, vec4<u32>(_wgslsmith_clamp_u32(20194u, arg_1.b.x, 38792u), _wgslsmith_sub_u32(arg_1.b.x, 1u), u_input.a, 87457u)), vec4<u32>(u_input.a, min(121176u, global2.x), _wgslsmith_mod_u32(global2.x, ~33162u), global2.x)), arg_1.c);
}

fn func_5(arg_0: Struct_4, arg_1: i32) -> vec2<i32> {
    var var_0 = ~_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(global2.x, u_input.a, 39266u, 4294967295u), max(arg_0.b, arg_0.b)), global2.x, ~func_1(arg_0.a.ww, arg_0).b.x), vec3<u32>(abs(4294967295u), _wgslsmith_dot_vec4_u32(~arg_0.b, _wgslsmith_div_vec4_u32(vec4<u32>(arg_0.b.x, 146333u, 24496u, 3564u), arg_0.b)), u_input.a));
    var var_1 = Struct_4(!(!(!(!vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x)))), vec4<u32>(~countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), global2.zy)), func_1(!select(vec2<bool>(false, false), vec2<bool>(false, true), false), arg_0).b.x, ~_wgslsmith_mult_u32(~u_input.a, ~arg_0.b.x), reverseBits(min(func_1(vec2<bool>(arg_0.a.x, false), arg_0).b.x, 0u))), func_1(!(!(!arg_0.a.wx)), arg_0).c);
    var var_2 = 1143f;
    let var_3 = global2.xzy;
    let var_4 = u_input.a;
    return -select(vec2<i32>(arg_1, firstLeadingBit(16217i)), min(countOneBits(u_input.c.xw), ~vec2<i32>(4861i, -297i)), select(func_1(vec2<bool>(arg_0.a.x, arg_0.a.x), Struct_4(vec4<bool>(true, false, true, arg_0.a.x), arg_0.b, var_1.c)).a.xy, vec2<bool>(false, arg_0.a.x), var_1.a.yw)) & select(select(u_input.c.yx & vec2<i32>(0i, var_1.c.a), u_input.c.wx, false) & vec2<i32>(-29783i, _wgslsmith_mult_i32(arg_0.c.a, 26700i)), ~u_input.c.wx, select(all(arg_0.a), any(var_1.a.yxy), true));
}

fn func_6(arg_0: vec2<i32>, arg_1: i32) -> Struct_4 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-739f, 1781f) - -350f))) + -390f) + -776f);
    let var_0 = 1u;
    global2 = select(~vec4<u32>(~u_input.a, var_0, _wgslsmith_mod_u32(u_input.a, u_input.a), u_input.a), ~_wgslsmith_mod_vec4_u32(reverseBits(firstLeadingBit(vec4<u32>(0u, 1u, 0u, var_0))), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, 51149u, var_0), vec4<u32>(u_input.a, 4294967295u, var_0, u_input.a)), vec4<u32>(global2.x, 42501u, 1u, var_0) & vec4<u32>(18024u, 96267u, 4717u, global2.x))), false);
    let var_1 = u_input.c.x;
    let var_2 = vec4<bool>(true, !(!(arg_0.x > func_5(Struct_4(vec4<bool>(true, true, true, true), vec4<u32>(49416u, 2426u, var_0, var_0), Struct_3(arg_0.x)), 85398i).x)), false, global2.x == global2.x);
    return func_1(select(select(vec2<bool>(true, true), !var_2.zy, true), select(select(select(vec2<bool>(var_2.x, var_2.x), vec2<bool>(true, var_2.x), true), vec2<bool>(var_2.x, false), var_2.xx), var_2.yz, select(!var_2.yz, !vec2<bool>(var_2.x, true), var_2.zy)), !var_2.wx), Struct_4(var_2, select(vec4<u32>(u_input.a, 4294967295u, reverseBits(29325u), 1u), vec4<u32>(4294967295u, u_input.a, _wgslsmith_mult_u32(global2.x, global2.x), var_0), true), Struct_3(~_wgslsmith_dot_vec3_i32(u_input.c.zwz, u_input.c.zzx))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c.x, -38869i | u_input.c.x), func_5(func_1(vec2<bool>(false, true), Struct_4(vec4<bool>(false, true, false, false), vec4<u32>(global2.x, 60619u, 1u, 0u), Struct_3(u_input.c.x))), 36743i)) | vec2<i32>(func_2(u_input.c.wz, -47388i, 907f, vec3<f32>(1835f, -1903f, -1337f)).a | _wgslsmith_mult_i32(25459i, -2151i), func_3(-1163f, Struct_2(vec4<u32>(112305u, u_input.a, global2.x, u_input.a)), Struct_2(vec4<u32>(90792u, global2.x, 49650u, u_input.a)))), ~(-(i32(-1i) * -2147483647i)));
    global1 = var_0.c.a;
    var var_1 = !vec2<bool>(func_1(!(!var_0.a.xx), Struct_4(vec4<bool>(true, false, var_0.a.x, var_0.a.x), var_0.b, Struct_3(u_input.c.x))).a.x, ~u_input.a != firstLeadingBit(_wgslsmith_add_u32(4294967295u, 0u)));
    var var_2 = select(~22947u, ~33476u, !(!any(var_0.a.xx) != (~u_input.b < _wgslsmith_dot_vec3_i32(u_input.c.ywy, vec3<i32>(u_input.b, u_input.b, u_input.b)))));
    global2 = ~(func_6(~(~vec2<i32>(u_input.c.x, var_0.c.a)), _wgslsmith_dot_vec2_i32(u_input.c.yy, _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, var_0.c.a), u_input.c.yw))).b >> (~var_0.b % vec4<u32>(32u)));
    let var_3 = vec4<i32>(_wgslsmith_add_i32(-2147483647i, 2147483647i), 0i, ~func_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-343f * 1586f), _wgslsmith_f_op_f32(-899f * -572f))), Struct_2(var_0.b ^ vec4<u32>(4294967295u, 4294967295u, 58213u, 0u)), Struct_2(vec4<u32>(global2.x, 61519u, global2.x, 1u))), 26927i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1000f, 341f), vec2<f32>(294f, 282f)))))))), ~func_6(u_input.c.xw, ~_wgslsmith_div_i32(1i, var_0.c.a)).c.a, -(u_input.c.zx | ~min(vec2<i32>(u_input.c.x, 17621i), vec2<i32>(var_0.c.a, var_0.c.a))));
}

