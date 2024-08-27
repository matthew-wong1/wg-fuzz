struct Struct_1 {
    a: u32,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1u, 635f, 1u);

var<private> global1: array<i32, 29>;

var<private> global2: array<vec3<i32>, 24> = array<vec3<i32>, 24>(vec3<i32>(1i, 58971i, 1i), vec3<i32>(-1i, -67268i, 107463i), vec3<i32>(i32(-2147483648), 21035i, i32(-2147483648)), vec3<i32>(-12924i, 1i, -30980i), vec3<i32>(0i, i32(-2147483648), -28760i), vec3<i32>(1i, -1i, 17411i), vec3<i32>(27121i, 29127i, i32(-2147483648)), vec3<i32>(-5612i, -34444i, -46938i), vec3<i32>(1i, 0i, 9796i), vec3<i32>(10575i, 4034i, 34370i), vec3<i32>(-1i, 2147483647i, -4122i), vec3<i32>(1i, 0i, i32(-2147483648)), vec3<i32>(0i, 2147483647i, 44017i), vec3<i32>(-13803i, -20722i, 1i), vec3<i32>(-1i, 0i, 11375i), vec3<i32>(0i, -14777i, 1i), vec3<i32>(-1i, -1i, i32(-2147483648)), vec3<i32>(2147483647i, 0i, 0i), vec3<i32>(-1i, 0i, -8464i), vec3<i32>(36345i, 58222i, -24560i), vec3<i32>(2147483647i, -48445i, 2144i), vec3<i32>(1i, -27526i, -12292i), vec3<i32>(0i, 0i, 37591i), vec3<i32>(-9620i, -20436i, 1i));

var<private> global3: Struct_1;

var<private> global4: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(vec3<bool>(false, false, false), Struct_1(17579u, -699f, 4294967295u)), Struct_2(vec3<bool>(true, true, false), Struct_1(27801u, 832f, 0u)), Struct_2(vec3<bool>(true, false, true), Struct_1(28133u, 355f, 72208u)), Struct_2(vec3<bool>(true, true, true), Struct_1(41107u, -674f, 0u)), Struct_2(vec3<bool>(true, false, false), Struct_1(39916u, 307f, 7146u)), Struct_2(vec3<bool>(false, false, false), Struct_1(20040u, -153f, 32975u)), Struct_2(vec3<bool>(true, true, true), Struct_1(4294967295u, 1000f, 0u)), Struct_2(vec3<bool>(true, true, false), Struct_1(57262u, 2303f, 96573u)), Struct_2(vec3<bool>(false, false, false), Struct_1(4294967295u, -1507f, 39008u)), Struct_2(vec3<bool>(false, true, false), Struct_1(0u, -895f, 1u)), Struct_2(vec3<bool>(true, false, false), Struct_1(1u, 758f, 4294967295u)), Struct_2(vec3<bool>(true, true, false), Struct_1(28943u, -1000f, 34329u)), Struct_2(vec3<bool>(false, false, true), Struct_1(21044u, -1390f, 1u)), Struct_2(vec3<bool>(false, false, true), Struct_1(0u, 2243f, 4294967295u)), Struct_2(vec3<bool>(false, false, false), Struct_1(24454u, 1106f, 2518u)), Struct_2(vec3<bool>(false, false, false), Struct_1(67591u, -1096f, 12240u)), Struct_2(vec3<bool>(true, true, false), Struct_1(0u, -700f, 637u)), Struct_2(vec3<bool>(true, false, true), Struct_1(4294967295u, 987f, 25518u)));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: f32) -> u32 {
    var var_0 = vec2<bool>(any(select(select(select(vec3<bool>(true, arg_0, true), vec3<bool>(true, true, true), arg_0), vec3<bool>(arg_0, true, arg_0), !arg_0), !(!vec3<bool>(arg_0, true, arg_0)), !vec3<bool>(arg_0, arg_0, true))), arg_0);
    return ~0u;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: vec2<f32>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(1u, 29u)], firstLeadingBit(firstLeadingBit(reverseBits(global1[_wgslsmith_index_u32(25859u, 29u)])))) << (arg_3.b.a % 32u);
    let var_1 = Struct_2(vec3<bool>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(arg_3.b.b, 1655f)))) != _wgslsmith_f_op_f32(arg_3.b.b * _wgslsmith_f_op_f32(-1236f - global3.b)), !(!arg_3.a.x), arg_3.a.x), arg_3.b);
    global0 = Struct_1(_wgslsmith_div_u32(arg_1.x, func_3(!any(vec2<bool>(var_1.a.x, arg_3.a.x)), arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1265f, 531f) - var_1.b.b))), global0.b, 1u);
    var var_2 = 1u;
    let var_3 = Struct_2(!select(!(!var_1.a), !vec3<bool>(false, var_1.a.x, false), vec3<bool>(false, var_1.a.x, var_1.a.x)), Struct_1(_wgslsmith_div_u32(_wgslsmith_sub_u32(firstLeadingBit(arg_1.x), arg_1.x ^ arg_3.b.a), ~(~var_1.b.c)), -186f, _wgslsmith_mult_u32(7674u, 109214u)));
    return var_3.b;
}

fn func_4(arg_0: Struct_1) -> vec4<f32> {
    global4 = array<Struct_2, 18>();
    var var_0 = Struct_2(!vec3<bool>(any(vec4<bool>(true, false, false, true)) && any(vec2<bool>(false, false)), true, arg_0.b >= 446f), arg_0);
    global1 = array<i32, 29>();
    var var_1 = ~(_wgslsmith_dot_vec2_u32(~vec2<u32>(global3.c, global0.a), ~(vec2<u32>(62521u, 1u) ^ vec2<u32>(var_0.b.a, 22857u))) | ((_wgslsmith_add_u32(var_0.b.a, global0.a) | _wgslsmith_dot_vec3_u32(vec3<u32>(global0.c, 38132u, 49732u), vec3<u32>(global3.c, global3.c, 3182u))) ^ ~1u));
    let var_2 = func_2(_wgslsmith_clamp_vec2_i32(-_wgslsmith_clamp_vec2_i32(vec2<i32>(-13819i, 1i), vec2<i32>(u_input.a, -1i) >> (vec2<u32>(var_0.b.c, 0u) % vec2<u32>(32u)), -vec2<i32>(2147483647i, global1[_wgslsmith_index_u32(global3.a, 29u)])), max(select(~vec2<i32>(-2147483647i, -72i), vec2<i32>(15307i, u_input.a), any(var_0.a)), vec2<i32>(max(u_input.a, u_input.a), -1i << (arg_0.a % 32u))), ~vec2<i32>(global1[_wgslsmith_index_u32(~4294967295u, 29u)], -1i)), ~(~abs(vec2<u32>(global3.c, 0u))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b, 671f) + vec2<f32>(136f, _wgslsmith_div_f32(374f, _wgslsmith_f_op_f32(min(var_0.b.b, arg_0.b))))), Struct_2(select(select(vec3<bool>(false, var_0.a.x, var_0.a.x), select(vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), vec3<bool>(true, var_0.a.x, true), vec3<bool>(true, var_0.a.x, var_0.a.x)), select(vec3<bool>(false, false, true), var_0.a, var_0.a)), !select(var_0.a, var_0.a, var_0.a.x), var_0.a), func_2(-select(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(global1[_wgslsmith_index_u32(1u, 29u)], -32722i), var_0.a.yy), vec2<u32>(arg_0.c, _wgslsmith_sub_u32(var_0.b.a, arg_0.c)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.b.b, -776f), vec2<f32>(677f, -1253f)))), Struct_2(!var_0.a, Struct_1(var_0.b.a, 938f, 14246u)))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1848f, var_2.b, var_0.b.b, -798f))))))) - vec4<f32>(var_2.b, -373f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -640f) + 477f), global0.b));
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: vec4<f32>) -> vec4<bool> {
    global1 = array<i32, 29>();
    global0 = func_2(vec2<i32>(-29517i, 1i), select(vec2<u32>(_wgslsmith_sub_u32(57742u, 44392u), ~global3.a), select(vec2<u32>(4294967295u, 1u), abs(vec2<u32>(4294967295u, 21168u)), vec2<bool>(true, true)), true) >> (arg_2.xw % vec2<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0, global3.b)))), Struct_2(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false))), Struct_1(countOneBits(41868u << (arg_2.x % 32u)), arg_1.b, arg_1.c)));
    var var_0 = Struct_2(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), any(vec2<bool>(true, true))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), vec3<bool>(true, all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false)), false)), Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(arg_2 ^ vec4<u32>(1296u, global0.c, 4294967295u, 11545u), vec4<u32>(arg_1.c, arg_2.x, 19173u, arg_1.c)), (vec4<u32>(global3.c, 1u, 28329u, 0u) | arg_2) & _wgslsmith_clamp_vec4_u32(vec4<u32>(global3.c, global3.c, 22423u, 32497u), arg_2, vec4<u32>(115808u, 34733u, arg_2.x, 10143u))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1067f, 675f) + arg_0), _wgslsmith_add_u32(arg_1.c | ~arg_1.c, 1u)));
    var var_1 = select(select(var_0.a, !var_0.a, !var_0.a), !var_0.a, any(vec4<bool>(all(select(vec4<bool>(false, var_0.a.x, false, true), vec4<bool>(false, var_0.a.x, var_0.a.x, var_0.a.x), var_0.a.x)), true, var_0.a.x, var_0.a.x)));
    var_0 = Struct_2(select(select(var_0.a, var_0.a, false), !vec3<bool>(true, any(vec4<bool>(var_1.x, var_1.x, var_0.a.x, true)), var_0.a.x), var_0.a), Struct_1(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global3.c, global0.c, 4294967295u), arg_2) | (4294967295u ^ arg_2.x), -283f, firstLeadingBit(arg_1.a)));
    return select(select(!select(select(vec4<bool>(var_0.a.x, false, true, var_0.a.x), vec4<bool>(var_1.x, true, true, false), vec4<bool>(false, var_0.a.x, var_0.a.x, var_1.x)), select(vec4<bool>(var_0.a.x, var_0.a.x, var_1.x, false), vec4<bool>(false, var_0.a.x, false, true), vec4<bool>(var_0.a.x, var_1.x, var_0.a.x, true)), vec4<bool>(false, true, true, true)), vec4<bool>(var_0.a.x, any(var_1.xz) || any(vec2<bool>(var_1.x, var_0.a.x)), !var_1.x, true), select(!select(vec4<bool>(true, var_1.x, var_0.a.x, true), vec4<bool>(var_1.x, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(var_0.a.x, var_1.x, true, var_1.x)), vec4<bool>(any(vec4<bool>(var_1.x, var_0.a.x, false, var_0.a.x)), false, 0i > global1[_wgslsmith_index_u32(global3.a, 29u)], true), var_0.a.x)), vec4<bool>(var_0.a.x, any(select(vec4<bool>(true, false, var_1.x, var_0.a.x), vec4<bool>(false, var_1.x, true, var_0.a.x), vec4<bool>(var_0.a.x, var_0.a.x, var_1.x, false))) | !(arg_0 <= global0.b), false, var_1.x), var_1.x);
}

fn func_6(arg_0: vec4<bool>, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = Struct_2(!arg_0.zzx, func_2(vec2<i32>(~2147483647i, 0i), firstTrailingBit(firstTrailingBit(vec2<u32>(0u, global3.c)) >> (~vec2<u32>(global3.a, 1u) % vec2<u32>(32u))), arg_1, Struct_2(vec3<bool>(arg_0.x | arg_0.x, all(vec4<bool>(false, arg_0.x, arg_0.x, true)), false), func_2(abs(vec2<i32>(global1[_wgslsmith_index_u32(global3.a, 29u)], u_input.a)), ~vec2<u32>(4294967295u, global0.a), arg_1, global4[_wgslsmith_index_u32(~global3.a, 18u)]))));
    let var_1 = arg_0.x;
    var var_2 = abs(2147483647i);
    var_0 = global4[_wgslsmith_index_u32(global3.a, 18u)];
    let var_3 = var_0.a;
    return var_0.b;
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2, arg_3: vec3<i32>) -> bool {
    global3 = func_6(func_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -239f) - global0.b), -1046f), arg_2.b, ~vec4<u32>(21283u, ~44368u, global0.a, ~1u), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(func_4(func_2(arg_3.yx, vec2<u32>(global0.a, global3.c), vec2<f32>(208f, 1000f), Struct_2(arg_2.a, arg_2.b))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b, arg_0.b.b) * vec2<f32>(arg_0.b.b, 660f)) + vec2<f32>(2394f, -645f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, 1198f)))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-371f, -417f))));
    let var_0 = arg_0;
    global4 = array<Struct_2, 18>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(arg_2.b.b)))) * var_0.b.b) - global0.b));
    var var_2 = vec4<i32>(firstTrailingBit(1i), abs(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-63449i, -1i, -2147483647i), global2[_wgslsmith_index_u32(var_0.b.c, 24u)] ^ vec3<i32>(arg_3.x, arg_3.x, -2147483647i)), u_input.a ^ -1i)), 1i, firstLeadingBit(u_input.a));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -436f), 1098f)) <= _wgslsmith_f_op_f32(max(arg_0.b.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1, -1613f))) - _wgslsmith_f_op_f32(-583f + _wgslsmith_f_op_f32(-global0.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec3<bool>(true, all(select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)))), true), Struct_1(~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global3.c, 30899u, global0.a, global0.a), vec4<u32>(global3.a, global0.a, 29528u, global3.c)), vec4<u32>(1u, 49139u, global3.c, global0.c) ^ vec4<u32>(global0.c, global0.c, 4294967295u, global3.a)), _wgslsmith_f_op_f32(f32(-1f) * -160f), 4294967295u));
    let var_1 = Struct_1(var_0.b.c, _wgslsmith_f_op_f32(-global3.b), var_0.b.a);
    let var_2 = select(!select(select(select(vec4<bool>(var_0.a.x, var_0.a.x, false, true), vec4<bool>(true, true, true, var_0.a.x), false), vec4<bool>(false, var_0.a.x, false, var_0.a.x), vec4<bool>(var_0.a.x, false, var_0.a.x, var_0.a.x)), vec4<bool>(var_0.a.x, func_1(global4[_wgslsmith_index_u32(var_0.b.c, 18u)], true, var_0, vec3<i32>(-21753i, global1[_wgslsmith_index_u32(0u, 29u)], global1[_wgslsmith_index_u32(global3.a, 29u)])), var_0.a.x, var_0.a.x), var_0.a.x), func_5(global0.b, func_2(~(~vec2<i32>(u_input.a, global1[_wgslsmith_index_u32(35596u, 29u)])), _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(global3.c, 131407u), vec2<u32>(var_1.c, global0.c)), max(vec2<u32>(4294967295u, global0.c), vec2<u32>(global0.a, 109124u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1186f, global3.b)), global4[_wgslsmith_index_u32(global0.c, 18u)]), ~min(abs(vec4<u32>(var_0.b.a, global0.a, global0.c, 19588u)), select(vec4<u32>(1u, 4447u, global0.a, 4294967295u), vec4<u32>(global3.a, 1u, 56212u, 13774u), var_0.a.x)), _wgslsmith_div_vec4_f32(vec4<f32>(-679f, _wgslsmith_f_op_f32(max(-520f, var_1.b)), -1395f, 429f), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.b, var_0.b.b, -316f, 364f) * vec4<f32>(1000f, -1297f, var_0.b.b, global3.b)))))), select(!func_5(-1000f, var_1, vec4<u32>(15896u, 12784u, 1u, 0u) ^ vec4<u32>(44412u, global0.c, 97765u, global3.c), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.b.b, 1512f, var_0.b.b, -666f), vec4<f32>(var_0.b.b, global3.b, -537f, -735f)))), !vec4<bool>(var_0.a.x, all(vec4<bool>(false, false, var_0.a.x, var_0.a.x)), var_0.a.x, var_0.a.x), !(!var_0.a.x)));
    var var_3 = vec2<bool>(false, 15513u <= ~countOneBits(_wgslsmith_mult_u32(var_0.b.c, 32192u)));
    var_3 = !select(vec2<bool>(var_3.x, any(vec4<bool>(true, false, var_0.a.x, var_2.x)) & var_3.x), var_2.zx, !vec2<bool>(true, 12084u > global0.a));
    global1 = array<i32, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(~var_0.b.c, global3.a), 4294967295u, 0u);
}

