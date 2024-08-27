struct Struct_1 {
    a: u32,
    b: i32,
    c: i32,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 6> = array<vec4<bool>, 6>(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true));

var<private> global1: array<f32, 31> = array<f32, 31>(1429f, -303f, 539f, -296f, -688f, 238f, 1000f, -252f, 1000f, 465f, 2023f, 1000f, 1525f, 884f, -1572f, -1502f, -577f, -1865f, 641f, 720f, 460f, -468f, -431f, -229f, -488f, -416f, 729f, 813f, -1164f, -478f, -798f);

var<private> global2: vec4<i32>;

var<private> global3: bool = true;

var<private> global4: vec4<bool>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> i32 {
    global4 = !vec4<bool>(global4.x, false, false, arg_1.d);
    var var_0 = true == arg_1.d;
    var var_1 = vec2<i32>(~(~(~(~u_input.d))), -arg_0);
    global2 = abs(vec4<i32>(arg_0, -(i32(-1i) * -36044i), -global2.x, 29267i));
    let var_2 = Struct_2(any(vec4<bool>(global4.x, select(u_input.c.x, 4294967295u, false) > ~0u, _wgslsmith_f_op_f32(-arg_1.e) != global1[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 31u)], any(select(vec2<bool>(false, true), vec2<bool>(false, arg_1.d), vec2<bool>(arg_1.d, true))))), Struct_1(arg_1.a, ~global2.x, 41209i, select(1u | u_input.c.x, ~47126u, true) < arg_1.a, _wgslsmith_f_op_f32(step(267f, global1[_wgslsmith_index_u32(~21130u, 31u)]))), global2.x, Struct_1(u_input.c.x, abs(_wgslsmith_sub_i32(firstTrailingBit(var_1.x), abs(arg_0))), -1i, true, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(58805u, 31u)]))), 1000f))), -(~min(3888i << (u_input.c.x % 32u), _wgslsmith_div_i32(arg_0, 2147483647i))));
    return -11779i;
}

fn func_2(arg_0: vec2<i32>, arg_1: f32, arg_2: bool, arg_3: bool) -> i32 {
    global2 = vec4<i32>(global2.x, _wgslsmith_div_i32(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.a, global2.x), 1i, firstTrailingBit(1i)), func_3(arg_0.x, Struct_1(1035u, arg_0.x, u_input.d, true, 1000f))) | firstTrailingBit(33876i), -5185i, i32(-1i) * -select(_wgslsmith_mult_i32(u_input.b.x, 0i), 1i, true));
    global1 = array<f32, 31>();
    var var_0 = Struct_2(false, Struct_1(~(1u << (~u_input.c.x % 32u)), -2147483647i, u_input.a, arg_3 && all(!vec3<bool>(false, arg_3, global4.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - -498f) - 1000f)), countOneBits(_wgslsmith_div_i32(-1i, select(~arg_0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, global2.x), global2.yz), all(global4.ww)))), Struct_1(countOneBits(u_input.c.x >> ((89862u | u_input.c.x) % 32u)), 1i, _wgslsmith_sub_i32(~1i, _wgslsmith_dot_vec4_i32(vec4<i32>(31061i, 24015i, 2147483647i, 29000i), vec4<i32>(u_input.a, arg_0.x, u_input.a, -38155i))), true, global1[_wgslsmith_index_u32(63836u, 31u)]), arg_0.x);
    global2 = vec4<i32>(var_0.c, countOneBits(firstTrailingBit(global2.x)), -arg_0.x, -_wgslsmith_mult_i32(23317i, _wgslsmith_mod_i32(arg_0.x, -2147483647i)));
    let var_1 = Struct_2(true, Struct_1(~var_0.d.a, -select(global2.x ^ global2.x, var_0.c, true), _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(global2.x, arg_0.x, arg_0.x)), u_input.b), arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, 324f)))), ~global2.x, Struct_1(1u, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, arg_0.x >> (u_input.c.x % 32u), reverseBits(-2147483647i)), -vec3<i32>(arg_0.x, global2.x, -1i)), max(global2.x, global2.x), true, global1[_wgslsmith_index_u32(~var_0.b.a, 31u)]), func_3(2147483647i, Struct_1(81295u, _wgslsmith_mult_i32(_wgslsmith_mod_i32(global2.x, -72287i), max(1i, 2147483647i)), -2424i, arg_2, _wgslsmith_f_op_f32(min(-429f, -297f)))));
    return abs(53087i);
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: vec2<f32>) -> Struct_1 {
    global3 = true;
    var var_0 = Struct_1(42317u, global2.x, 2147483647i << (0u % 32u), true, arg_2.x);
    global3 = select(arg_1, arg_1, !any(global4.yyy));
    var var_1 = Struct_1(2896u << (0u % 32u), _wgslsmith_dot_vec4_i32(-firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(global2.x, arg_0, arg_0, -8759i), vec4<i32>(0i, arg_0, u_input.b.x, 1i), vec4<i32>(arg_0, arg_0, 33280i, -1i))), min(firstTrailingBit(~vec4<i32>(1i, var_0.b, u_input.b.x, 2147483647i)), firstTrailingBit(vec4<i32>(0i, 109i, -48212i, u_input.b.x)))), 1i, all(vec2<bool>(!any(global0[_wgslsmith_index_u32(0u, 6u)]), select(var_0.d, true, false))), _wgslsmith_f_op_f32(190f + arg_2.x));
    var var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1300f, 1842f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, var_0.e, var_0.e) + vec3<f32>(arg_2.x, -1612f, -1486f))))))));
    return Struct_1(var_1.a, _wgslsmith_div_i32(abs(arg_0), -2279i), global2.x, var_0.d, -1917f);
}

fn func_1() -> bool {
    var var_0 = func_4(_wgslsmith_dot_vec3_i32(u_input.b & u_input.b, vec3<i32>(func_2(global2.yz, _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(u_input.c.x, 31u)])), false, global4.x), -9370i, firstLeadingBit(0i))), select(true, global4.x, all(!global4.zxz)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * global1[_wgslsmith_index_u32(u_input.c.x, 31u)]) - -475f), -1000f) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 31u)], global1[_wgslsmith_index_u32(u_input.c.x, 31u)]), vec2<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 31u)], 341f)))))));
    var var_1 = _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(1i, var_0.c, -global2.x, ~(-8318i))) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(67958u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 28665u, 22757u), vec3<u32>(var_0.a, 29920u, u_input.c.x)), select(u_input.c.x, 0u, var_0.d), _wgslsmith_add_u32(4294967295u, var_0.a)), _wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(15457u, 72835u, 19025u, var_0.a)), abs(vec4<u32>(1u, var_0.a, var_0.a, 5952u)), vec4<u32>(0u, var_0.a, 53108u, 0u))) % vec4<u32>(32u)), ~(~reverseBits(max(vec4<i32>(14126i, -1i, -1i, 2147483647i), vec4<i32>(47177i, 1i, 0i, 4368i)))), -vec4<i32>(41197i, 7775i, _wgslsmith_dot_vec4_i32(vec4<i32>(-15162i, global2.x, -1i, var_0.b), vec4<i32>(0i, u_input.b.x, u_input.b.x, -55367i)) & max(-1i, 0i), ~var_0.c));
    global2 = -(~(_wgslsmith_sub_vec4_i32(~vec4<i32>(-2147483647i, 0i, global2.x, -30378i), abs(vec4<i32>(-3771i, 2762i, 32395i, 19458i))) & countOneBits(-vec4<i32>(u_input.a, 17940i, var_0.b, var_0.b))));
    global0 = array<vec4<bool>, 6>();
    return select(global4.x, var_0.d && true, var_0.e <= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e + var_0.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1521f + -2570f)))));
}

fn func_5(arg_0: u32, arg_1: u32, arg_2: vec3<bool>, arg_3: bool) -> Struct_1 {
    global3 = global4.x;
    let var_0 = vec2<f32>(global1[_wgslsmith_index_u32(782u, 31u)], -203f);
    var var_1 = Struct_2(global4.x, func_4(global2.x, all(!select(arg_2, vec3<bool>(false, arg_3, arg_2.x), true)), var_0), -1i, Struct_1(_wgslsmith_mult_u32(~1u, 1u << (_wgslsmith_mod_u32(u_input.c.x, 4294967295u) % 32u)), -756i | u_input.b.x, 11572i, !(!func_1()), global1[_wgslsmith_index_u32(1u, 31u)]), 0i | -firstTrailingBit(abs(-16509i)));
    let var_2 = vec4<i32>(-1i) * -abs(select(_wgslsmith_div_vec4_i32(vec4<i32>(global2.x, u_input.b.x, global2.x, u_input.a), vec4<i32>(global2.x, var_1.c, u_input.d, global2.x)), ~vec4<i32>(global2.x, -670i, -34801i, -2147483647i), false));
    let var_3 = Struct_1(_wgslsmith_div_u32(~_wgslsmith_clamp_u32(18352u, select(7646u, arg_0, arg_3), _wgslsmith_div_u32(u_input.c.x, var_1.b.a)), ~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(42489u, 1u, 0u, 0u), vec4<u32>(u_input.c.x, arg_1, 20937u, arg_0)), ~8512u)), func_3(8183i, func_4(2147483647i, select(all(global4.zy), true, !global4.x), vec2<f32>(-154f, _wgslsmith_div_f32(global1[_wgslsmith_index_u32(4294967295u, 31u)], 846f)))), global2.x << (arg_1 % 32u), true, _wgslsmith_f_op_f32(-var_1.b.e));
    return Struct_1(select(u_input.c.x, countOneBits(min(abs(u_input.c.x), var_3.a)), arg_2.x), -1i, _wgslsmith_sub_i32(u_input.b.x, 2147483647i), var_1.a, _wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

fn func_6(arg_0: i32, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec3<f32>) -> Struct_1 {
    global4 = global0[_wgslsmith_index_u32(u_input.c.x, 6u)];
    let var_0 = abs(vec3<i32>(-1i) * -vec3<i32>(arg_2.x & u_input.d, ~0i, u_input.a));
    var var_1 = _wgslsmith_mult_i32(-func_3(~u_input.b.x, Struct_1(56143u, _wgslsmith_dot_vec3_i32(arg_2.ywz, u_input.b), 1i, any(global0[_wgslsmith_index_u32(9113u, 6u)]), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c.x, 60977u), 31u)])), abs(1265i));
    var_1 = 0i;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(741f, arg_1.e))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.e, global1[_wgslsmith_index_u32(54630u, 31u)]) - vec2<f32>(arg_1.e, global1[_wgslsmith_index_u32(arg_1.a, 31u)])))))) - vec2<f32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(55659u, arg_1.a), ~u_input.c.zx), 31u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, arg_3.x)) + -2005f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.x, _wgslsmith_f_op_f32(-1428f + global1[_wgslsmith_index_u32(0u, 31u)]))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(arg_3.yx)), _wgslsmith_div_vec2_f32(arg_3.yz, arg_3.zy)))));
    return func_4(u_input.a, false, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_1.a, 31u)])))), var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(-1i, u_input.b.x);
    var var_1 = func_6(select(-1i, _wgslsmith_div_i32(min(u_input.d, u_input.a), global2.x), true) | 32154i, func_5(~28267u, reverseBits(u_input.c.x), !select(!global4.wxy, global4.zxw, func_1()), func_1()), _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(global2.x, func_2(global2.yy, 2540f, false, global4.x), -var_0.x), u_input.a, -29553i, 0i), abs(max(vec4<i32>(2748i, var_0.x, u_input.d, u_input.b.x), vec4<i32>(u_input.b.x, global2.x, global2.x, 1i)))), vec3<f32>(global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec2_u32(~u_input.c.zx, ~u_input.c.zz)), 31u)], global1[_wgslsmith_index_u32(61379u, 31u)], 1000f));
    let var_2 = func_4(func_3(2147483647i, func_6(firstTrailingBit(global2.x), func_5(_wgslsmith_dot_vec2_u32(vec2<u32>(45504u, 54055u), u_input.c.zy), abs(var_1.a), select(vec3<bool>(true, true, global4.x), global4.zzz, true), any(global0[_wgslsmith_index_u32(0u, 6u)])), vec4<i32>(global2.x, ~global2.x, -u_input.b.x, func_3(var_0.x, Struct_1(0u, 994i, var_1.c, var_1.d, global1[_wgslsmith_index_u32(u_input.c.x, 31u)]))), vec3<f32>(_wgslsmith_f_op_f32(-var_1.e), _wgslsmith_f_op_f32(sign(-437f)), _wgslsmith_f_op_f32(165f + global1[_wgslsmith_index_u32(var_1.a, 31u)])))), var_1.d, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.e, var_1.e)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(2116f, var_1.e))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 31u)], var_1.e) * vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 31u)], global1[_wgslsmith_index_u32(4294967295u, 31u)])))), vec2<f32>(1000f, var_1.e)))));
    var var_3 = Struct_1(u_input.c.x, _wgslsmith_dot_vec2_i32(-max(-vec2<i32>(var_2.b, var_1.c), _wgslsmith_add_vec2_i32(vec2<i32>(-9869i, -2147483647i), global2.wx)), ~u_input.b.zx), var_0.x, !all(global4.xz) & var_2.d, -2121f);
    var var_4 = Struct_2(_wgslsmith_dot_vec3_i32(u_input.b, ~u_input.b) <= var_0.x, func_5(func_5(~(~var_2.a), 4294967295u, !global4.zwz, any(!global0[_wgslsmith_index_u32(4294967295u, 6u)])).a, func_5(33198u, _wgslsmith_add_u32(95256u, 47487u) & _wgslsmith_sub_u32(var_2.a, var_2.a), select(global4.xwx, global4.yzx, global4.zww), all(vec4<bool>(false, var_3.d, var_3.d, true))).a, global4.wzy, var_1.d), -1i, var_2, -52490i);
    let var_5 = _wgslsmith_clamp_vec2_u32(countOneBits(u_input.c.yz), vec2<u32>(~countOneBits(~0u), _wgslsmith_sub_u32(1u, var_1.a)), vec2<u32>(var_4.b.a | var_1.a, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.c, u_input.c), u_input.c >> (u_input.c % vec3<u32>(32u)))) | ~select(vec2<u32>(5671u, 80303u), u_input.c.zx, select(false, var_2.d, false)));
    var var_6 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2.e, var_4.d.e, var_4.b.e, -1048f))) * vec4<f32>(var_3.e, -590f, var_3.e, -484f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(var_5.x, 31u)], 1829f, var_3.e, var_4.d.e), vec4<f32>(-1209f, -176f, -1066f, var_4.b.e)) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.e, var_3.e, global1[_wgslsmith_index_u32(var_5.x, 31u)], var_4.b.e)))))) - vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c.x, 31u)] - var_1.e))), _wgslsmith_f_op_f32(-var_4.b.e), func_4(_wgslsmith_sub_i32(-1771i, 38501i), false, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.e, var_3.e))).e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(10365u, 31u)] * 1000f) - _wgslsmith_f_op_f32(f32(-1f) * -977f)))));
    var_4 = Struct_2(var_4.b.d, var_2, -func_2(firstLeadingBit(global2.yx) & abs(vec2<i32>(2147483647i, -8683i)), 1098f, !func_1(), true), var_4.d, u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-351f, -1680f, 2021f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_6.x, -611f, 225f), vec3<f32>(var_3.e, var_1.e, -1416f), var_4.a)))) - vec3<f32>(_wgslsmith_f_op_f32(-var_4.d.e), -3569f, _wgslsmith_f_op_f32(-var_2.e))))));
}

