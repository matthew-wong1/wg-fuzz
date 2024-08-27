struct Struct_1 {
    a: i32,
    b: u32,
    c: f32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: i32,
    d: vec3<f32>,
    e: vec4<i32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<f32>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: u32, arg_1: vec3<u32>) -> vec4<bool> {
    return vec4<bool>(true, true, true == !(-global0.a != -global0.a), false);
}

fn func_3(arg_0: bool, arg_1: vec2<i32>, arg_2: vec4<bool>) -> bool {
    let var_0 = global1.x;
    let var_1 = countOneBits(-2147483647i);
    global0 = Struct_1(_wgslsmith_clamp_i32(global0.a, -1i, -_wgslsmith_sub_i32(-17490i, var_1)) >> ((_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(9430u, 17533u, u_input.a.x), u_input.a.yzz)) << (~(~0u) % 32u)) % 32u), ~u_input.a.x, 2159f, u_input.a);
    global0 = Struct_1(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-1i, -2147483647i, arg_1.x)), vec3<i32>(1i, -4045i, -1i)), firstTrailingBit(global0.a)) >> (global0.b % 32u), reverseBits(4294967295u), _wgslsmith_f_op_f32(f32(-1f) * -279f), u_input.a);
    global1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.c))), global0.c, global1.x);
    return !(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.c + global1.x))), 440f)) > _wgslsmith_f_op_f32(299f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.x)))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = global1.zz;
    global1 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-845f + -542f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1580f, arg_0.e.c)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 1148f)))), arg_0.d.c);
    global0 = arg_0.e;
    var var_1 = select(arg_0.c.d.x, 4294967295u, arg_1.x);
    let var_2 = 31226i;
    return arg_0.d;
}

fn func_1(arg_0: Struct_4, arg_1: Struct_1) -> u32 {
    var var_0 = vec2<u32>(arg_0.c.b.d.x, arg_1.d.x);
    global0 = func_4(Struct_2(func_3(true, arg_0.a.yx, select(vec4<bool>(true, true, true, true), func_2(1u, global0.d.wxx), all(vec3<bool>(false, false, false)))), 42214u, Struct_1(reverseBits(-2147483647i), ~1u, 1224f, vec4<u32>(~38149u, firstTrailingBit(global0.b), global0.d.x, 0u)), arg_1, Struct_1(min(reverseBits(42428i), _wgslsmith_div_i32(arg_0.a.x, 1i)), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c)), reverseBits(global0.d) & _wgslsmith_mod_vec4_u32(vec4<u32>(4440u, arg_0.c.b.b, global0.d.x, 4294967295u), vec4<u32>(1u, arg_0.b.d.x, arg_1.d.x, 0u)))), vec4<bool>(any(vec4<bool>(true, true, false, true)), any(vec4<bool>(true, true, true, true)), true & (any(vec2<bool>(false, false)) && true), all(func_2(_wgslsmith_clamp_u32(0u, arg_1.d.x, u_input.a.x), u_input.a.wwy))));
    var_0 = vec2<u32>(_wgslsmith_mod_u32(var_0.x, min(~1u, _wgslsmith_mult_u32(arg_0.b.b, _wgslsmith_sub_u32(arg_0.b.b, global0.d.x)))), u_input.a.x);
    var_0 = ~abs(~vec2<u32>(~0u, reverseBits(arg_0.b.d.x)));
    var var_1 = Struct_2(any(vec3<bool>(func_3(true, vec2<i32>(arg_1.a, arg_0.b.a), vec4<bool>(true, true, true, false)) || true, !any(vec4<bool>(true, false, false, false)), true & func_3(false, vec2<i32>(arg_0.c.a.x, -22059i), vec4<bool>(true, true, false, true)))), arg_1.b, func_4(Struct_2(false, 63438u, func_4(Struct_2(true, 4294967295u, Struct_1(arg_1.a, global0.d.x, -664f, vec4<u32>(arg_1.d.x, 4294967295u, u_input.a.x, global0.d.x)), Struct_1(arg_1.a, u_input.a.x, -819f, vec4<u32>(80706u, arg_0.c.b.d.x, u_input.a.x, 1u)), arg_0.c.b), vec4<bool>(true, true, true, true)), Struct_1(i32(-1i) * -11639i, arg_0.b.d.x, -698f, vec4<u32>(var_0.x, 0u, 1u, 0u)), arg_0.c.b), select(func_2(~16162u, vec3<u32>(1u, var_0.x, 61088u)), vec4<bool>(true, false, true, false), func_3(all(vec3<bool>(true, true, true)), arg_0.c.a, vec4<bool>(true, true, true, true)))), Struct_1(-6994i, 10914u | ~_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(79259u, arg_0.c.b.d.x, global0.b, arg_1.b)), global1.x, _wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.b, 1u, global0.b, arg_1.b) & arg_1.d, abs(arg_1.d))), func_4(Struct_2(!all(vec2<bool>(false, true)), var_0.x, Struct_1(min(global0.a, -2147483647i), ~0u, _wgslsmith_f_op_f32(arg_0.c.b.c * -1329f), _wgslsmith_add_vec4_u32(vec4<u32>(1u, arg_0.c.b.b, var_0.x, global0.d.x), global0.d)), arg_0.b, arg_1), vec4<bool>(true, true, true, true)));
    return select(~(~(~4294967295u)), var_1.c.d.x, true);
}

fn func_5(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: i32, arg_3: vec2<f32>) -> Struct_4 {
    let var_0 = u_input.a.x;
    var var_1 = Struct_1(-2147483647i, 1u, -547f, _wgslsmith_mult_vec4_u32(select(_wgslsmith_sub_vec4_u32(select(vec4<u32>(4294967295u, 65672u, arg_0.x, 96216u), vec4<u32>(arg_0.x, global0.b, arg_0.x, 2884u), true), _wgslsmith_div_vec4_u32(vec4<u32>(51370u, var_0, global0.b, 31u), vec4<u32>(var_0, u_input.a.x, 23861u, 0u))), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4571u, 4294967295u), vec2<u32>(global0.d.x, 1u)), _wgslsmith_dot_vec2_u32(u_input.a.yz, global0.d.xw), 4294967295u, 1u), true), vec4<u32>(u_input.a.x >> (~45758u % 32u), _wgslsmith_dot_vec2_u32(global0.d.xy, vec2<u32>(4294967295u, 1u)) ^ u_input.a.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global0.d.x, global0.d.x), vec3<u32>(global0.d.x, var_0, 79657u)), select(1u, arg_0.x, true)), reverseBits(27436u))));
    var var_2 = -1i;
    let var_3 = ~0u;
    let var_4 = !all(!func_2(_wgslsmith_clamp_u32(24289u, var_1.d.x, var_1.b), vec3<u32>(var_0, var_3, 23567u) >> (u_input.a.wwy % vec3<u32>(32u))));
    return Struct_4(vec3<i32>(-30461i, -1i, 1i) ^ min(vec3<i32>(var_1.a, ~14496i, -arg_2), abs(select(vec3<i32>(global0.a, var_1.a, arg_2), vec3<i32>(-28492i, -50126i, var_1.a), false))), func_4(Struct_2(true, _wgslsmith_div_u32(~0u, ~59476u), Struct_1(12434i, ~var_1.b, _wgslsmith_f_op_f32(-global1.x), ~var_1.d), Struct_1(global0.a, _wgslsmith_add_u32(var_3, var_3), global1.x, vec4<u32>(global0.d.x, var_0, 4294967295u, var_1.d.x)), Struct_1(select(23315i, -4138i, true), ~114029u, 162f, global0.d)), !func_2(_wgslsmith_mod_u32(80140u, 61687u), var_1.d.zwx)), Struct_3(vec2<i32>(0i, global0.a), func_4(Struct_2(-279f < global0.c, _wgslsmith_mod_u32(var_1.d.x, var_1.d.x), func_4(Struct_2(var_4, 0u, Struct_1(-2147483647i, 1u, 1000f, vec4<u32>(u_input.a.x, arg_0.x, var_3, u_input.a.x)), Struct_1(0i, 4294967295u, arg_1.x, vec4<u32>(arg_0.x, u_input.a.x, 0u, 13104u)), Struct_1(-23684i, var_0, var_1.c, vec4<u32>(37065u, 44723u, 6919u, u_input.a.x))), vec4<bool>(false, false, true, var_4)), Struct_1(-2147483647i, arg_0.x, arg_1.x, vec4<u32>(global0.b, 12456u, 78050u, 1u)), Struct_1(arg_2, 0u, arg_1.x, u_input.a)), vec4<bool>(var_4, func_3(false, vec2<i32>(-2147483647i, global0.a), vec4<bool>(var_4, true, true, true)), false, all(vec2<bool>(var_4, true)))), firstTrailingBit(_wgslsmith_dot_vec3_i32(-vec3<i32>(-67626i, var_1.a, -1i), min(vec3<i32>(arg_2, -1i, -53217i), vec3<i32>(-16290i, 1421i, 1i)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.zwx)), vec3<f32>(_wgslsmith_f_op_f32(select(-580f, -1654f, true)), 1124f, _wgslsmith_f_op_f32(trunc(1498f)))), ~vec4<i32>(func_4(Struct_2(false, var_3, Struct_1(2147483647i, var_0, -220f, vec4<u32>(1u, var_1.d.x, var_3, 1u)), Struct_1(arg_2, 30523u, 1033f, global0.d), Struct_1(0i, 4294967295u, -1440f, vec4<u32>(8325u, 88889u, var_0, 0u))), vec4<bool>(true, true, true, var_4)).a, global0.a, -var_1.a, firstTrailingBit(arg_2))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(true, false, all(!vec3<bool>(true, global0.a == global0.a, false)));
    var var_1 = func_5(~vec3<u32>(1u, func_1(Struct_4(vec3<i32>(global0.a, global0.a, global0.a), Struct_1(0i, global0.d.x, global1.x, u_input.a), Struct_3(vec2<i32>(global0.a, global0.a), Struct_1(global0.a, global0.b, global0.c, global0.d), 1i, vec3<f32>(global0.c, 1440f, global1.x), vec4<i32>(global0.a, 1i, global0.a, global0.a))), Struct_1(global0.a, 39536u, global1.x, global0.d)), u_input.a.x) >> (~vec3<u32>(func_1(Struct_4(vec3<i32>(-18143i, -50249i, 0i), Struct_1(2147483647i, u_input.a.x, global0.c, vec4<u32>(u_input.a.x, 53809u, global0.d.x, 22898u)), Struct_3(vec2<i32>(global0.a, global0.a), Struct_1(global0.a, 66569u, 577f, vec4<u32>(global0.d.x, 1u, 69127u, u_input.a.x)), global0.a, vec3<f32>(-782f, global0.c, global1.x), vec4<i32>(global0.a, global0.a, global0.a, 48473i))), Struct_1(global0.a, u_input.a.x, global1.x, vec4<u32>(79600u, 22120u, 48096u, 3848u))), 23503u >> (0u % 32u), u_input.a.x & global0.b) % vec3<u32>(32u)), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.x + 913f), _wgslsmith_f_op_f32(trunc(global1.x)))))), _wgslsmith_f_op_f32(ceil(-917f)), -1803f, _wgslsmith_f_op_f32(-global0.c)), abs(~func_4(Struct_2(true, 0u, Struct_1(global0.a, u_input.a.x, global1.x, vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, global0.d.x)), Struct_1(global0.a, global0.d.x, global1.x, global0.d), Struct_1(11138i, u_input.a.x, global0.c, global0.d)), !vec4<bool>(var_0.x, false, true, true)).a), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(global1.x)))))), -441f));
    global0 = func_4(Struct_2(select(func_2(u_input.a.x, vec3<u32>(global0.b, 32648u, 90151u) >> (global0.d.wxw % vec3<u32>(32u))).x, any(var_0), var_0.x), ~func_1(Struct_4(var_1.c.e.yyy, var_1.c.b, var_1.c), func_4(Struct_2(var_0.x, var_1.c.b.d.x, Struct_1(global0.a, global0.d.x, 959f, vec4<u32>(u_input.a.x, 36736u, 1u, global0.b)), Struct_1(global0.a, 5778u, global0.c, vec4<u32>(u_input.a.x, global0.d.x, var_1.b.b, var_1.c.b.d.x)), var_1.b), vec4<bool>(var_0.x, false, false, false))), var_1.c.b, var_1.b, Struct_1(55378i, 4294967295u, _wgslsmith_f_op_f32(f32(-1f) * -1722f), vec4<u32>(~34113u, u_input.a.x ^ u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 59769u), var_1.b.d.zy), ~0u))), vec4<bool>(var_0.x, var_0.x, func_2(u_input.a.x << (1u % 32u), vec3<u32>(global0.d.x, u_input.a.x, 11094u) & vec3<u32>(1u, 0u, 13400u)).x & (1f == global0.c), func_5(vec3<u32>(u_input.a.x, var_1.c.b.d.x, 61595u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c, global1.x, var_1.c.d.x, 1561f)), var_1.c.b.a << (u_input.a.x % 32u), vec2<f32>(global0.c, var_1.b.c)).b.d.x != global0.d.x));
    global0 = func_4(Struct_2(var_0.x, abs(~(~global0.b)), Struct_1(1701i, func_5(vec3<u32>(u_input.a.x, u_input.a.x, 0u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -879f, global1.x, global0.c)), -2147483647i, _wgslsmith_f_op_vec2_f32(global1.yx * vec2<f32>(-1000f, 143f))).b.d.x, global1.x, u_input.a), func_5(vec3<u32>(func_1(Struct_4(vec3<i32>(global0.a, -3400i, var_1.c.e.x), var_1.b, var_1.c), var_1.b), var_1.c.b.d.x ^ 1u, 1u), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(2080f, global1.x, 1061f, 213f), vec4<f32>(128f, -266f, var_1.c.d.x, var_1.c.b.c)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1043f, 132f, 726f, var_1.c.d.x) + vec4<f32>(global0.c, global1.x, -1529f, var_1.c.b.c))), abs(_wgslsmith_clamp_i32(var_1.c.c, global0.a, var_1.a.x)), _wgslsmith_div_vec2_f32(vec2<f32>(global0.c, var_1.c.d.x), vec2<f32>(global1.x, var_1.b.c))).c.b, func_5(min(var_1.c.b.d.wxz, vec3<u32>(var_1.b.b, u_input.a.x, 1u)), vec4<f32>(_wgslsmith_f_op_f32(-var_1.b.c), _wgslsmith_f_op_f32(select(var_1.b.c, global0.c, true)), _wgslsmith_f_op_f32(floor(global1.x)), _wgslsmith_f_op_f32(f32(-1f) * -1403f)), ~(-global0.a), vec2<f32>(_wgslsmith_f_op_f32(exp2(global0.c)), _wgslsmith_f_op_f32(-1252f + 296f))).b), !(!vec4<bool>(true, !var_0.x, func_2(66013u, vec3<u32>(1u, 4294967295u, var_1.c.b.d.x)).x, select(false, false, var_0.x))));
    var var_2 = Struct_4(var_1.c.e.xww, var_1.b, Struct_3(var_1.a.xz, func_5(_wgslsmith_div_vec3_u32(var_1.b.d.wxz << (vec3<u32>(0u, 1u, u_input.a.x) % vec3<u32>(32u)), var_1.c.b.d.zxz), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-534f, global0.c, -983f, -818f) - vec4<f32>(var_1.c.d.x, var_1.c.b.c, global0.c, -246f))), -23863i, _wgslsmith_f_op_vec2_f32(-global1.xx)).b, _wgslsmith_clamp_i32(-var_1.c.a.x | ~var_1.c.a.x, -var_1.c.e.x ^ -27508i, ~var_1.b.a), vec3<f32>(_wgslsmith_f_op_f32(trunc(global1.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.x), 935f)), var_1.c.d.x), ~var_1.c.e));
    var var_3 = Struct_2(var_0.x, 1u, func_5(vec3<u32>(20550u, ~4294967295u, func_5(var_2.b.d.xzz, vec4<f32>(500f, var_2.c.d.x, var_1.b.c, -1338f), -19616i, var_1.c.d.xz).b.d.x) & firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(35417u, 1u, 37134u), vec3<u32>(u_input.a.x, 4294967295u, 0u))), vec4<f32>(_wgslsmith_f_op_f32(452f - -551f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(global0.c)))), _wgslsmith_f_op_f32(f32(-1f) * -730f), -548f), 1i, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(686f, _wgslsmith_f_op_f32(round(var_1.c.b.c))), var_1.c.d.xx, (global0.a == var_1.b.a) | any(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))))).b, var_2.c.b, func_4(Struct_2(var_0.x, reverseBits(~u_input.a.x), func_4(Struct_2(var_0.x, 8133u, var_1.c.b, var_2.c.b, var_1.b), select(vec4<bool>(false, var_0.x, true, var_0.x), vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(true, var_0.x, false, true))), Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-20290i, -395i, 55122i, -1i), vec4<i32>(-2147483647i, -1i, 0i, 40787i)), var_2.c.b.b, _wgslsmith_f_op_f32(global0.c - global1.x), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 4002u, 4294967295u, var_1.c.b.b), var_1.b.d)), var_1.b), vec4<bool>(all(!var_0), select(var_0.x, true, var_0.x), func_2(4294967295u, vec3<u32>(var_1.c.b.b, 4294967295u, 30236u)).x, all(vec4<bool>(var_0.x, false, true, var_0.x)) & all(var_0.yx))));
    global0 = var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(global0.d.xw, global0.d.zy), 56506u));
}

