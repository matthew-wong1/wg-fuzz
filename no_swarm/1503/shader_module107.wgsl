struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
    d: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -738f;

var<private> global1: Struct_3;

var<private> global2: array<Struct_3, 10> = array<Struct_3, 10>(Struct_3(Struct_1(vec3<bool>(true, false, false), 10523u), Struct_2(true, vec4<i32>(-2269i, 0i, -1i, 57854i), Struct_1(vec3<bool>(true, true, false), 4294967295u), vec3<bool>(false, true, false)), 0u, vec3<u32>(4294967295u, 61618u, 0u)), Struct_3(Struct_1(vec3<bool>(false, true, true), 17914u), Struct_2(false, vec4<i32>(1i, 26699i, 0i, 4495i), Struct_1(vec3<bool>(false, true, true), 1u), vec3<bool>(false, false, true)), 1u, vec3<u32>(35860u, 4294967295u, 19325u)), Struct_3(Struct_1(vec3<bool>(false, false, true), 64742u), Struct_2(false, vec4<i32>(72252i, -8092i, -1i, 9556i), Struct_1(vec3<bool>(true, false, true), 35898u), vec3<bool>(false, true, false)), 39007u, vec3<u32>(4294967295u, 1u, 68123u)), Struct_3(Struct_1(vec3<bool>(true, false, false), 4858u), Struct_2(false, vec4<i32>(2147483647i, i32(-2147483648), 27111i, -1i), Struct_1(vec3<bool>(false, true, true), 13816u), vec3<bool>(true, true, true)), 0u, vec3<u32>(33031u, 1u, 12395u)), Struct_3(Struct_1(vec3<bool>(true, true, true), 32164u), Struct_2(false, vec4<i32>(i32(-2147483648), -4793i, 0i, 5604i), Struct_1(vec3<bool>(true, false, false), 42122u), vec3<bool>(true, true, false)), 0u, vec3<u32>(1u, 10250u, 140343u)), Struct_3(Struct_1(vec3<bool>(true, true, false), 16750u), Struct_2(true, vec4<i32>(1i, 0i, 2147483647i, 1831i), Struct_1(vec3<bool>(true, false, false), 4294967295u), vec3<bool>(true, false, false)), 29100u, vec3<u32>(1u, 0u, 1u)), Struct_3(Struct_1(vec3<bool>(false, false, false), 4294967295u), Struct_2(true, vec4<i32>(-1i, 1i, 31426i, 0i), Struct_1(vec3<bool>(true, true, true), 4525u), vec3<bool>(false, true, false)), 4294967295u, vec3<u32>(26135u, 0u, 4294967295u)), Struct_3(Struct_1(vec3<bool>(false, false, true), 26929u), Struct_2(true, vec4<i32>(21331i, -26751i, -23568i, -4268i), Struct_1(vec3<bool>(false, false, false), 4294967295u), vec3<bool>(false, false, true)), 0u, vec3<u32>(0u, 107214u, 4294967295u)), Struct_3(Struct_1(vec3<bool>(true, false, true), 39375u), Struct_2(true, vec4<i32>(-51394i, 18440i, i32(-2147483648), 5472i), Struct_1(vec3<bool>(false, false, false), 1u), vec3<bool>(true, false, true)), 0u, vec3<u32>(1u, 2243u, 4294967295u)), Struct_3(Struct_1(vec3<bool>(false, false, false), 0u), Struct_2(false, vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), -10013i), Struct_1(vec3<bool>(true, true, false), 25670u), vec3<bool>(false, true, true)), 0u, vec3<u32>(71526u, 10134u, 1u)));

var<private> global3: f32 = 770f;

var<private> global4: array<f32, 7> = array<f32, 7>(1000f, -442f, 891f, 1670f, 1244f, -1321f, -859f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: f32, arg_3: vec4<f32>) -> u32 {
    global3 = global4[_wgslsmith_index_u32(arg_0, 7u)];
    let var_0 = reverseBits(max(abs(arg_0), global1.a.b));
    var var_1 = max(global1.b.b.x, -7592i & _wgslsmith_sub_i32(global1.b.b.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(global1.b.b.wyy, vec3<i32>(global1.b.b.x, 0i, u_input.b)), -41192i >> (u_input.a % 32u))));
    var var_2 = Struct_4(global1.b, Struct_1(vec3<bool>(true, true, any(vec4<bool>(false, true, global1.b.c.a.x, true))), ~arg_0), Struct_2(false, ~_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(global1.b.b, vec4<i32>(global1.b.b.x, 44189i, 2147483647i, -2147483647i), global1.b.b), firstLeadingBit(vec4<i32>(2147483647i, 34636i, u_input.b, 0i))), Struct_1(global1.b.c.a, ~(~arg_0)), vec3<bool>(select(true, global1.b.d.x & global1.b.d.x, global1.a.a.x), global1.a.a.x, true)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -506f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global4[_wgslsmith_index_u32(4294967295u, 7u)]), -2136f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1820f + _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(global1.d.x, 7u)] - global4[_wgslsmith_index_u32(0u, 7u)])))));
    global4 = array<f32, 7>();
    return ~(global1.c | _wgslsmith_dot_vec4_u32(countOneBits(select(vec4<u32>(var_2.c.c.b, global1.d.x, u_input.a, var_2.b.b), vec4<u32>(var_0, arg_0, 120256u, 0u), vec4<bool>(global1.a.a.x, false, false, var_2.b.a.x))), vec4<u32>(abs(var_0), _wgslsmith_div_u32(u_input.a, 4294967295u), abs(u_input.a), 529u)));
}

fn func_2(arg_0: Struct_4, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = global2[_wgslsmith_index_u32(func_3(arg_3.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.d.x))))) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), -712f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -921f), _wgslsmith_f_op_f32(min(arg_0.d.x, -1163f)), -2030f, _wgslsmith_f_op_f32(f32(-1f) * -1837f)), vec4<f32>(_wgslsmith_f_op_f32(arg_0.d.x + -899f), -727f, _wgslsmith_f_op_f32(f32(-1f) * -874f), _wgslsmith_f_op_f32(max(global4[_wgslsmith_index_u32(u_input.a, 7u)], arg_0.d.x)))))), 10u)];
    global2 = array<Struct_3, 10>();
    return !(!(!(all(var_0.b.c.a.yy) | false)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> Struct_2 {
    var var_0 = vec3<bool>(26568i < arg_0.b.x, any(!global1.a.a.yz), any(global1.a.a.zz));
    let var_1 = arg_0.c.a.x;
    global1 = Struct_3(arg_2.c, Struct_2(false, arg_0.b, Struct_1(arg_2.d, global1.d.x), select(select(vec3<bool>(false, global1.b.d.x, false), vec3<bool>(false, arg_2.a, false), !arg_2.c.a.x), arg_1.d, any(vec4<bool>(true, var_1, true, true)) == (false == var_1))), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.c.b, countOneBits(~arg_0.c.b), ~31665u), firstLeadingBit(vec3<u32>(~4294967295u, arg_1.c.b << (10383u % 32u), ~11956u))), ~global1.d);
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global4[_wgslsmith_index_u32(global1.a.b, 7u)])) + _wgslsmith_f_op_f32(max(-370f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1383f) * _wgslsmith_div_f32(1943f, 312f)), 1000f, true)))));
    return arg_0;
}

fn func_1() -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-136f * -329f), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~global1.d.xy, ~_wgslsmith_add_vec2_u32(vec2<u32>(59619u, 4294967295u), vec2<u32>(1u, global1.b.c.b))), 7u)])));
    let var_1 = func_4(global1.b, Struct_2(!func_2(Struct_4(Struct_2(global1.b.d.x, global1.b.b, Struct_1(vec3<bool>(true, global1.a.a.x, true), global1.a.b), vec3<bool>(false, global1.a.a.x, false)), global1.a, global1.b, vec4<f32>(global4[_wgslsmith_index_u32(1u, 7u)], 1775f, global4[_wgslsmith_index_u32(0u, 7u)], -1400f)), 2147483647i, Struct_1(vec3<bool>(global1.b.a, global1.b.a, global1.b.c.a.x), global1.c), global1.b.c), _wgslsmith_mod_vec4_i32(global1.b.b, vec4<i32>(~u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(42163i, global1.b.b.x), vec2<i32>(14396i, -38390i)), 2955i, _wgslsmith_add_i32(0i, 2147483647i))), global1.a, vec3<bool>(global1.a.a.x, select(true, !global1.a.a.x, all(vec4<bool>(true, true, false, false))), any(vec3<bool>(global1.a.a.x, true, global1.a.a.x)))), Struct_2(select(global1.b.c.a.x || all(vec4<bool>(global1.b.d.x, global1.a.a.x, true, true)), all(select(vec4<bool>(global1.b.a, false, global1.a.a.x, false), vec4<bool>(false, global1.b.c.a.x, false, true), vec4<bool>(false, true, global1.b.d.x, false))), global1.a.a.x), global1.b.b, Struct_1(select(select(global1.b.c.a, global1.b.d, global1.b.a), vec3<bool>(global1.a.a.x, global1.a.a.x, false), all(global1.b.c.a)), u_input.a), select(vec3<bool>(true, true, false), vec3<bool>(any(global1.a.a.yy), global1.a.a.x, false), !global1.b.c.a)));
    let var_2 = vec3<bool>(true, true, true);
    var var_3 = Struct_3(var_1.c, Struct_2(false, var_1.b, Struct_1(func_4(Struct_2(var_2.x, vec4<i32>(global1.b.b.x, u_input.b, 0i, u_input.b), global1.b.c, var_2), func_4(var_1, Struct_2(var_2.x, vec4<i32>(var_1.b.x, -10309i, -1i, 2147483647i), global1.b.c, vec3<bool>(var_1.a, false, global1.a.a.x)), Struct_2(true, var_1.b, var_1.c, vec3<bool>(global1.b.d.x, false, var_2.x))), Struct_2(false, var_1.b, Struct_1(vec3<bool>(var_1.d.x, false, var_1.c.a.x), 4294967295u), vec3<bool>(false, false, global1.b.a))).c.a, global1.b.c.b), vec3<bool>(!var_2.x, -1000f < var_0.x, var_1.a)), reverseBits(global1.a.b), _wgslsmith_clamp_vec3_u32(countOneBits(abs(~vec3<u32>(1u, 4294967295u, 2157u))), reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.a), global1.d) << (vec3<u32>(85717u, global1.a.b, global1.d.x) % vec3<u32>(32u))), ~select(vec3<u32>(global1.b.c.b, 60762u, u_input.a), vec3<u32>(global1.b.c.b, u_input.a, 4294967295u), global1.a.a.x) << (~(~global1.d) % vec3<u32>(32u))));
    global1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(max(vec3<u32>(14545u, var_3.d.x, abs(~30610u)), _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(4294967295u, global1.d.x, 1u)), abs(global1.d)), ~vec3<u32>(var_3.d.x, u_input.a, var_1.c.b))), ~reverseBits(vec3<u32>(global1.b.c.b, 1u, 46553u)) ^ _wgslsmith_div_vec3_u32(~(~vec3<u32>(13009u, var_1.c.b, 56283u)), vec3<u32>(31419u, abs(10593u), 1u))), 10u)];
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global4[_wgslsmith_index_u32(global1.c, 7u)], var_0.x, global4[_wgslsmith_index_u32(125485u, 7u)], -769f) * vec4<f32>(var_0.x, -931f, var_0.x, 1917f)))))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.x + var_0.x))), var_0.x), vec4<f32>(-650f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-575f)) * _wgslsmith_f_op_f32(step(var_0.x, global4[_wgslsmith_index_u32(global1.b.c.b, 7u)]))), _wgslsmith_f_op_f32(f32(-1f) * -1248f), var_0.x))), !select(vec4<bool>(!global1.a.a.x, !var_1.d.x, var_3.a.a.x, var_0.x != var_0.x), !(!vec4<bool>(var_3.b.c.a.x, false, false, false)), true)));
}

fn func_5(arg_0: vec4<f32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-2848f, _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(1u, 7u)] - global4[_wgslsmith_index_u32(firstLeadingBit(23357u), 7u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -116f) - _wgslsmith_f_op_f32(-801f - 1000f)))))));
    var var_1 = !any(select(vec4<bool>(!global1.a.a.x, true, global1.b.a | global1.b.c.a.x, !global1.b.c.a.x), select(!vec4<bool>(false, true, true, global1.a.a.x), select(vec4<bool>(false, global1.a.a.x, true, global1.b.d.x), vec4<bool>(false, false, false, global1.b.a), false), !global1.b.a), any(!global1.b.c.a)));
    let var_2 = ~vec2<u32>(0u, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, 46544u, u_input.a, global1.d.x), vec4<u32>(6853u, 1u, 0u, 0u) << (vec4<u32>(1u, 4294967295u, global1.c, u_input.a) % vec4<u32>(32u))));
    var var_3 = global1.b;
    global1 = global2[_wgslsmith_index_u32(func_4(func_4(global1.b, global1.b, global1.b), Struct_2(!(!(-31699i > u_input.b)), global1.b.b, func_4(global1.b, global1.b, func_4(func_4(Struct_2(var_3.d.x, global1.b.b, var_3.c, global1.b.d), Struct_2(true, global1.b.b, Struct_1(vec3<bool>(var_3.a, global1.b.a, false), var_3.c.b), vec3<bool>(var_3.a, false, var_3.c.a.x)), global1.b), global1.b, func_4(global1.b, global1.b, Struct_2(var_3.a, global1.b.b, global1.b.c, vec3<bool>(true, false, global1.a.a.x))))).c, var_3.c.a), global1.b).c.b, 10u)];
    return all(vec3<bool>(global1.a.a.x, !global1.a.a.x, !(false != any(var_3.c.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_3, 10>();
    var var_0 = vec4<bool>(!func_5(_wgslsmith_f_op_vec4_f32(func_1())), 7339i != u_input.b, true, global1.a.a.x);
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * global4[_wgslsmith_index_u32(u_input.a, 7u)]) + _wgslsmith_f_op_f32(2066f + global4[_wgslsmith_index_u32(global1.a.b, 7u)])))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(global1.a.b, 7u)]), _wgslsmith_f_op_f32(exp2(global4[_wgslsmith_index_u32(global1.b.c.b, 7u)]))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(func_1()).x;
    global4 = array<f32, 7>();
    let var_2 = global1.b;
    global4 = array<f32, 7>();
    global2 = array<Struct_3, 10>();
    global2 = array<Struct_3, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(-var_2.b.x, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(200f, var_1, global4[_wgslsmith_index_u32(33648u & _wgslsmith_sub_u32(var_2.c.b, var_2.c.b), 7u)], _wgslsmith_f_op_f32(-var_1)))));
}

