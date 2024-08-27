struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: f32,
    d: f32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<bool>(false, true, true, true), 17215i, Struct_1(vec4<i32>(i32(-2147483648), 1i, 2147483647i, -1i), vec3<f32>(-697f, -1422f, 216f), -1481f, 1877f, vec3<i32>(-5711i, 50317i, 7415i)), 602f, Struct_1(vec4<i32>(3761i, 0i, -1i, i32(-2147483648)), vec3<f32>(-544f, 732f, 1000f), -1000f, -1365f, vec3<i32>(-74492i, 18895i, 17114i)));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> f32 {
    global0 = Struct_2(vec4<bool>(global0.a.x || (-976f <= _wgslsmith_f_op_f32(exp2(global0.c.c))), !any(global0.a.wzz) & global0.a.x, all(vec3<bool>(-654f >= global0.d, global0.a.x, !global0.a.x)), true && !all(global0.a)), abs(u_input.b.x), global0.e, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.e.b.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.c.d)) - global0.e.c)), -538f)), global0.e);
    global0 = Struct_2(!vec4<bool>(any(global0.a.yx) | (global0.d < global0.c.c), true, !(!global0.a.x), global0.a.x), _wgslsmith_mult_i32(-2326i, u_input.d.x), Struct_1(_wgslsmith_mult_vec4_i32(reverseBits(firstTrailingBit(global0.c.a)), vec4<i32>(firstLeadingBit(u_input.d.x), global0.c.e.x, 1i, 0i)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(global0.e.b)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.d), _wgslsmith_f_op_f32(step(global0.c.d, global0.d))) - 797f), global0.e.d, countOneBits(firstTrailingBit(global0.c.e))), global0.e.d, Struct_1(global0.e.a, _wgslsmith_f_op_vec3_f32(abs(global0.c.b)), -798f, global0.c.b.x, select(~global0.c.a.xyx, countOneBits(global0.c.a.zzz), true) | vec3<i32>(_wgslsmith_clamp_i32(global0.b, global0.c.e.x, 39035i), ~53538i, global0.c.e.x ^ u_input.b.x)));
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.e.d), _wgslsmith_f_op_f32(-global0.e.b.x), !global0.a.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.e.d), 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d * -2957f) - _wgslsmith_f_op_f32(-global0.c.b.x)))));
    var var_1 = Struct_2(vec4<bool>(any(global0.a), !(!(arg_0 > 4294967295u)), false, !all(select(global0.a.yz, global0.a.yz, vec2<bool>(global0.a.x, global0.a.x)))), 2147483647i, global0.e, _wgslsmith_f_op_f32(step(global0.e.d, _wgslsmith_f_op_f32(step(global0.d, -335f)))), Struct_1(~_wgslsmith_mod_vec4_i32(vec4<i32>(-38861i, 0i, -29577i, u_input.b.x), global0.e.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, 1055f, global0.e.b.x), global0.e.b)), _wgslsmith_f_op_vec3_f32(exp2(var_0)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.x, global0.e.d, global0.d))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-703f, var_0.x, 1437f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + -326f), _wgslsmith_f_op_f32(865f + 254f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-434f * _wgslsmith_f_op_f32(abs(909f))))), vec3<i32>(_wgslsmith_mult_i32(-u_input.c, _wgslsmith_div_i32(global0.e.a.x, u_input.d.x)), -28542i, 1i)));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global0.e.d, global0.e.d), _wgslsmith_f_op_f32(select(617f, -846f, true)))) + -1000f))));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_clamp_u32(22365u, ~_wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, u_input.a)), u_input.a), 1u);
    let var_1 = Struct_2(vec4<bool>(false, global0.a.x, global0.a.x, true), 2147483647i, global0.c, global0.d, Struct_1(vec4<i32>(_wgslsmith_div_i32(-u_input.d.x, global0.c.a.x), global0.e.e.x, global0.b, ~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, -27420i), global0.c.e)), vec3<f32>(-1358f, global0.c.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-924f, -1250f)))), _wgslsmith_f_op_f32(func_3(~var_0)), global0.c.c, vec3<i32>(abs(0i), ~_wgslsmith_add_i32(-40688i, 35866i), firstTrailingBit(u_input.c) >> (1u % 32u))));
    var var_2 = vec2<u32>(u_input.a, u_input.a);
    let var_3 = select(select(select(!global0.a.yz, vec2<bool>(all(global0.a.wx), -1i >= global0.b), global0.a.x), !vec2<bool>(true, 685f > var_1.c.d), var_1.a.x), !vec2<bool>(global0.a.x, any(vec2<bool>(true, false))), !var_1.a.x);
    var var_4 = _wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(~(~0u), ~firstTrailingBit(18232u), 1u, ~u_input.a ^ (72798u << (u_input.a % 32u)))), vec4<u32>(1u, u_input.a ^ ~var_2.x, ~(~u_input.a), ~(~0u)));
    return var_1;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2) -> vec4<bool> {
    let var_0 = arg_1;
    let var_1 = global0.c;
    var var_2 = func_2();
    var var_3 = -22174i;
    var_3 = i32(-1i) * -abs(_wgslsmith_div_i32(-2147483647i, u_input.c >> (1u % 32u)));
    return !var_2.a;
}

fn func_1(arg_0: vec4<u32>, arg_1: bool, arg_2: vec4<u32>, arg_3: f32) -> i32 {
    global0 = Struct_2(!select(select(select(global0.a, vec4<bool>(arg_1, false, true, arg_1), vec4<bool>(false, arg_1, arg_1, true)), global0.a, vec4<bool>(true, true, arg_1, false)), vec4<bool>(global0.a.x != arg_1, true, arg_1, global0.a.x), func_4(arg_0, func_2())), 1i, global0.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-596f))))), global0.c);
    var var_0 = u_input.d.zy;
    let var_1 = arg_2.yzw;
    global0 = Struct_2(!vec4<bool>(false, -2147483647i >= global0.b, all(!global0.a.wzz), true), -(_wgslsmith_add_i32(64830i << (arg_0.x % 32u), -62656i) >> (32189u % 32u)), global0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(112f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1318f, -1000f) * -1389f)))), Struct_1(global0.c.a, vec3<f32>(1648f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(921f, global0.d)) - _wgslsmith_f_op_f32(f32(-1f) * -820f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e.d) + _wgslsmith_f_op_f32(round(-958f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1317f, arg_3)), 1834f, _wgslsmith_clamp_vec3_i32(vec3<i32>(~(-1i), -24032i, 1i), func_2().e.e, _wgslsmith_mod_vec3_i32(firstLeadingBit(u_input.d), vec3<i32>(global0.e.a.x, 26400i, global0.e.a.x)))));
    var var_2 = Struct_1(_wgslsmith_div_vec4_i32(~vec4<i32>(abs(2147483647i), -50012i, _wgslsmith_mult_i32(-37061i, u_input.d.x), global0.e.e.x ^ -1i), abs(reverseBits(-global0.c.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3, -615f, -637f) * vec3<f32>(436f, 520f, 195f)), vec3<f32>(_wgslsmith_f_op_f32(670f * 2082f), -1475f, _wgslsmith_f_op_f32(max(-219f, global0.e.c)))) + _wgslsmith_f_op_vec3_f32(-global0.c.b)), -1752f, 1f, ~min(global0.c.e, _wgslsmith_clamp_vec3_i32(global0.c.e, vec3<i32>(global0.c.a.x, u_input.c, var_0.x), global0.c.a.yxy) << (~var_1 % vec3<u32>(32u))));
    return _wgslsmith_dot_vec2_i32(vec2<i32>(-13486i, -36993i), vec2<i32>(-26525i, -14359i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_mult_i32(u_input.c, func_1(~(vec4<u32>(4294967295u, u_input.a, u_input.a, 9056u) << (vec4<u32>(u_input.a, 5670u, 4294967295u, u_input.a) % vec4<u32>(32u))), global0.a.x, select(select(vec4<u32>(4595u, u_input.a, 38028u, 30066u), vec4<u32>(0u, 10920u, 4294967295u, 2688u), vec4<bool>(true, global0.a.x, false, global0.a.x)), vec4<u32>(1u, u_input.a, 4294967295u, 1u) & vec4<u32>(108495u, 0u, u_input.a, u_input.a), true), 285f));
    global0 = Struct_2(select(!vec4<bool>(global0.a.x, var_0 <= -1i, func_2().a.x, true), global0.a, false), select(_wgslsmith_dot_vec4_i32(global0.c.a, ~_wgslsmith_add_vec4_i32(global0.e.a, global0.c.a)), ~(global0.b >> (0u % 32u)) >> (1u % 32u), all(!(!global0.a))), global0.c, _wgslsmith_f_op_f32(global0.e.b.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.e.d)) - _wgslsmith_f_op_f32(global0.c.c - _wgslsmith_f_op_f32(ceil(global0.d))))), global0.e);
    var var_1 = abs(u_input.a) >> (51216u % 32u);
    global0 = Struct_2(func_2().a, reverseBits(var_0 | min(0i, _wgslsmith_mult_i32(20404i, u_input.b.x))), func_2().e, global0.e.c, global0.c);
    let var_2 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec3<u32>(1u, 4294967295u, 1u) ^ select(vec3<u32>(52607u, 1u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<bool>(false, var_2.a.x, global0.a.x))) & firstTrailingBit(_wgslsmith_mult_vec3_u32(select(vec3<u32>(15428u, 4294967295u, u_input.a), vec3<u32>(u_input.a, u_input.a, 4294967295u), global0.a.ywz), ~vec3<u32>(u_input.a, u_input.a, u_input.a))), (i32(-1i) * -global0.b) | select(_wgslsmith_div_i32(global0.b, 12838i) ^ 36939i, 1i, false), u_input.a);
}

