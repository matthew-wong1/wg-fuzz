struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(21560u, vec4<f32>(-524f, 1000f, -1000f, -722f), vec3<u32>(4294967295u, 1u, 1u), vec3<bool>(true, true, true));

var<private> global1: array<vec2<u32>, 25> = array<vec2<u32>, 25>(vec2<u32>(0u, 16816u), vec2<u32>(0u, 52951u), vec2<u32>(0u, 1u), vec2<u32>(1u, 0u), vec2<u32>(16275u, 13501u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 48150u), vec2<u32>(4294967295u, 95197u), vec2<u32>(1393u, 0u), vec2<u32>(1834u, 4294967295u), vec2<u32>(1u, 1u), vec2<u32>(1u, 64183u), vec2<u32>(27509u, 0u), vec2<u32>(4294967295u, 28597u), vec2<u32>(3597u, 63970u), vec2<u32>(1u, 25327u), vec2<u32>(481u, 17137u), vec2<u32>(0u, 75281u), vec2<u32>(1u, 4294967295u), vec2<u32>(12630u, 4294967295u), vec2<u32>(1u, 60487u), vec2<u32>(24729u, 74112u), vec2<u32>(1u, 0u), vec2<u32>(9139u, 3724u), vec2<u32>(52046u, 57704u));

var<private> global2: array<vec2<i32>, 9>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: i32, arg_3: vec4<bool>) -> vec4<u32> {
    global0 = arg_1;
    let var_0 = Struct_1(1u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(arg_1.b)) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, global0.b.x, global0.b.x, arg_1.b.x))))), _wgslsmith_mod_vec3_u32(min(_wgslsmith_clamp_vec3_u32(~vec3<u32>(arg_1.c.x, global0.c.x, u_input.a.x), select(arg_1.c, vec3<u32>(64883u, 36835u, 241u), vec3<bool>(arg_3.x, false, arg_1.d.x)), arg_1.c << (vec3<u32>(1u, arg_1.c.x, arg_1.a) % vec3<u32>(32u))), abs(~vec3<u32>(37806u, global0.c.x, 5596u))), global0.c), select(!select(global0.d, select(vec3<bool>(arg_0.x, arg_1.d.x, false), arg_1.d, true), arg_0.x), !global0.d, select(select(!global0.d, !vec3<bool>(arg_0.x, true, false), all(vec2<bool>(global0.d.x, arg_3.x))), vec3<bool>(arg_1.d.x, !arg_0.x, all(global0.d.yz)), true != global0.d.x)));
    var var_1 = 81476u;
    let var_2 = 4294967295u;
    var var_3 = Struct_1(~(var_2 << (reverseBits(~4294967295u) % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.b - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.b.x, 1627f, global0.b.x, 474f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(689f, arg_1.b.x, arg_1.b.x, global0.b.x) - vec4<f32>(arg_1.b.x, var_0.b.x, -421f, arg_1.b.x))))), ~min(vec3<u32>(46194u, 14687u, ~1u), arg_1.c), select(vec3<bool>(arg_3.x, all(!arg_3.wz), !(var_0.d.x | true)), !select(select(vec3<bool>(arg_0.x, false, true), arg_3.yzy, global0.d), arg_1.d, true), arg_0.x));
    return ~select(vec4<u32>(var_3.a, ~var_0.a, ~1u, countOneBits(arg_1.a)), vec4<u32>(var_0.c.x, 1u, var_0.c.x, var_3.c.x) >> (vec4<u32>(var_3.c.x, global0.c.x, var_2, var_3.a) % vec4<u32>(32u)), all(!arg_3)) ^ _wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(0u, 19753u, 19567u, 4294967295u)) & countOneBits(vec4<u32>(1u, var_0.a, u_input.a.x, var_3.a)), vec4<u32>(reverseBits(~u_input.a.x), 0u, u_input.a.x, select(~24400u, ~global0.c.x, arg_0.x)));
}

fn func_2(arg_0: Struct_1) -> bool {
    global1 = array<vec2<u32>, 25>();
    let var_0 = Struct_1(reverseBits(~_wgslsmith_dot_vec4_u32(func_3(global0.d, arg_0, 2147483647i, vec4<bool>(false, false, false, global0.d.x)), ~vec4<u32>(arg_0.a, 43464u, global0.a, 84655u))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, -644f, -1166f, global0.b.x)))), arg_0.c, arg_0.d);
    var var_1 = false;
    let var_2 = ~u_input.b;
    var var_3 = -429f;
    return _wgslsmith_f_op_f32(arg_0.b.x - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(272f + 1859f), _wgslsmith_f_op_f32(max(561f, global0.b.x))))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x));
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    var var_0 = vec3<i32>(reverseBits(countOneBits(2147483647i) & ~(arg_0 >> (31956u % 32u))), _wgslsmith_mod_i32(-(~85820i), reverseBits(-_wgslsmith_sub_i32(arg_0, arg_0))), 2147483647i);
    global2 = array<vec2<i32>, 9>();
    let var_1 = Struct_1(global0.c.x, global0.b, arg_3.c, vec3<bool>(true, !(!(!global0.d.x)), all(!vec2<bool>(arg_3.d.x, false))));
    var_0 = _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, u_input.b, -2106i), vec3<i32>(i32(-1i) * -2147483647i, arg_0, ~(-2147483647i)));
    let var_2 = 1u;
    return arg_3;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec2<u32>) -> i32 {
    var var_0 = Struct_1(~u_input.a.x, vec4<f32>(1f, -1045f, arg_0.b.x, -1335f), vec3<u32>(80852u, ~1u ^ _wgslsmith_mod_u32(arg_2.x, u_input.a.x), 38667u) | select(u_input.a, firstLeadingBit(arg_0.c), !select(arg_0.d.x, true, false)), !arg_0.d);
    let var_1 = vec4<bool>(arg_0.a > global0.c.x, select(true, var_0.b.x != _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-563f)), _wgslsmith_f_op_f32(select(1019f, global0.b.x, true)))), !var_0.d.x), func_4(~arg_1.x ^ 1i, 1f, true, arg_0).d.x && false, _wgslsmith_f_op_f32(673f * -1034f) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1128f, arg_0.b.x)))));
    global1 = array<vec2<u32>, 25>();
    global2 = array<vec2<i32>, 9>();
    global2 = array<vec2<i32>, 9>();
    return i32(-1i) * -min(1i, 2147483647i);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<bool>) -> vec3<bool> {
    var var_0 = arg_0.x;
    let var_1 = vec4<i32>(max(-1i, -(u_input.b & (u_input.b & 0i))), u_input.b, func_5(func_4(35728i, global0.b.x, func_2(Struct_1(23249u, global0.b, vec3<u32>(u_input.a.x, 31003u, u_input.a.x), vec3<bool>(true, false, false))) && true, Struct_1(_wgslsmith_mod_u32(4414u, 89782u), _wgslsmith_f_op_vec4_f32(exp2(global0.b)), vec3<u32>(0u, 41584u, global0.a), !vec3<bool>(arg_1.x, arg_1.x, false))), vec2<i32>(u_input.b, 27852i) | global2[_wgslsmith_index_u32(global0.a, 9u)], arg_0), u_input.b);
    let var_2 = func_4(-(i32(-1i) * -1i) & (-1i & abs(var_1.x)), -1000f, false, Struct_1(u_input.a.x, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.b.x, -1452f, 1424f, -1000f))), reverseBits(reverseBits(global0.c) << (select(u_input.a, global0.c, arg_1) % vec3<u32>(32u))), func_4(-1i, -197f, global0.d.x, Struct_1(u_input.a.x, _wgslsmith_div_vec4_f32(vec4<f32>(global0.b.x, global0.b.x, global0.b.x, -180f), global0.b), ~u_input.a, select(vec3<bool>(true, global0.d.x, true), vec3<bool>(global0.d.x, arg_1.x, false), false))).d));
    global1 = array<vec2<u32>, 25>();
    var var_3 = select(-(i32(-1i) * -u_input.b), _wgslsmith_mod_i32(u_input.b, ~(-1i & min(0i, u_input.b))), any(select(vec2<bool>(any(vec4<bool>(arg_1.x, true, var_2.d.x, true)), any(vec4<bool>(true, false, var_2.d.x, global0.d.x))), !(!arg_1.yy), all(vec4<bool>(global0.d.x, true, arg_1.x, false)))));
    return func_4(0i | u_input.b, _wgslsmith_f_op_f32(global0.b.x + -1763f), global0.d.x && (_wgslsmith_div_f32(300f, _wgslsmith_f_op_f32(round(var_2.b.x))) > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1459f + -802f)))), func_4(abs(func_5(func_4(1i, var_2.b.x, arg_1.x, Struct_1(global0.a, vec4<f32>(1589f, global0.b.x, -1479f, 1620f), global0.c, global0.d)), vec2<i32>(var_1.x, 10515i), select(global0.c.zx, vec2<u32>(1u, var_2.a), arg_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -218f), 1357f)) + _wgslsmith_f_op_f32(floor(func_4(u_input.b, var_2.b.x, arg_1.x, var_2).b.x))), any(select(select(vec4<bool>(true, false, var_2.d.x, true), vec4<bool>(var_2.d.x, global0.d.x, var_2.d.x, true), vec4<bool>(true, var_2.d.x, true, var_2.d.x)), select(vec4<bool>(var_2.d.x, true, true, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, true, var_2.d.x), true), arg_1.x)), var_2)).d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_mult_u32(global0.a, global0.a), global0.b, vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(global0.c.x, global0.c.x, 0u, global0.c.x), countOneBits(vec4<u32>(u_input.a.x, 0u, u_input.a.x, 55050u))), firstTrailingBit(4294967295u), firstTrailingBit(4294967295u)), select(func_1(~vec2<u32>(u_input.a.x, 150081u), global0.d), !vec3<bool>(true, global0.d.x | false, select(global0.d.x, false, true)), false));
    let var_1 = vec3<i32>(~u_input.b, _wgslsmith_sub_i32(i32(-1i) * -29145i, _wgslsmith_clamp_i32(_wgslsmith_div_i32(0i, _wgslsmith_clamp_i32(-55770i, u_input.b, u_input.b)), ~24565i >> (_wgslsmith_mod_u32(u_input.a.x, 0u) % 32u), i32(-1i) * -1i)), u_input.b);
    let var_2 = Struct_1(global0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global0.b * global0.b), vec4<f32>(global0.b.x, var_0.b.x, -931f, -1000f), var_0.d.x)))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 694f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.b.x))), var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(498f, global0.b.x)) * _wgslsmith_f_op_f32(-var_0.b.x)))), firstTrailingBit(vec3<u32>(0u, 19418u, abs(select(4294967295u, u_input.a.x, false)))), func_4(~select(i32(-1i) * -2147483647i, _wgslsmith_add_i32(2147483647i, -10315i), var_0.d.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), any(!(!global0.d)), func_4(-1i | var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(637f + -619f)), all(global0.d), func_4(max(-6842i, u_input.b), _wgslsmith_f_op_f32(max(global0.b.x, -2108f)), global0.d.x, Struct_1(1u, vec4<f32>(1359f, global0.b.x, 709f, 646f), u_input.a, vec3<bool>(var_0.d.x, false, global0.d.x))))).d);
    var_0 = Struct_1(var_2.a, global0.b, ~(~vec3<u32>(var_2.c.x, firstTrailingBit(var_0.a), 1u)), vec3<bool>(!var_0.d.x, var_0.d.x, var_2.d.x));
    global1 = array<vec2<u32>, 25>();
    let var_3 = select(~vec4<u32>(~(~global0.a), ~var_0.a, ~_wgslsmith_div_u32(var_2.c.x, u_input.a.x), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_2.a, 1u), var_0.c.xy), ~vec2<u32>(20519u, 1u))), _wgslsmith_div_vec4_u32(vec4<u32>(var_2.a ^ ~global0.a, 14569u, ~_wgslsmith_div_u32(global0.a, global0.c.x), ~(~var_2.c.x)), ~_wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.a.x, 27433u, global0.a), vec4<u32>(32311u, 16014u, 1u, 35741u)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(58222u, 4294967295u, 66058u, var_0.c.x), vec4<u32>(var_2.c.x, var_2.a, 0u, global0.c.x), countOneBits(vec4<u32>(u_input.a.x, global0.c.x, 70867u, 33713u))) % vec4<u32>(32u))), var_0.d.x);
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_0.b.xx, var_2.b.yy) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1156f, 613f)))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1307f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.b.x, _wgslsmith_f_op_f32(1024f * -138f)), global0.b.yx, select(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 2147483647i, 0i), vec3<i32>(u_input.b, 2147483647i, var_1.x)), any(vec4<bool>(global0.d.x, global0.d.x, global0.d.x, var_0.d.x))) <= _wgslsmith_sub_i32(-var_1.x, var_1.x))));
    let var_5 = -(~_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(firstTrailingBit(vec2<i32>(-25783i, 1i)), -vec2<i32>(u_input.b, u_input.b)), -_wgslsmith_div_vec2_i32(global2[_wgslsmith_index_u32(var_2.c.x, 9u)], vec2<i32>(11366i, 2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.b.x)) * _wgslsmith_f_op_f32(trunc(global0.b.x))), _wgslsmith_div_f32(636f, 1f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-func_4(-1i, 270f, global0.d.x, Struct_1(var_2.c.x, var_0.b, u_input.a, global0.d)).b.x))), _wgslsmith_f_op_f32(f32(-1f) * -817f))), ~firstTrailingBit(var_1), min(vec2<i32>(~(~u_input.b), abs(33249i)), -var_5));
}

