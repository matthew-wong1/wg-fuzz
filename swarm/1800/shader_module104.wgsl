struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: bool,
    d: vec3<f32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
    c: vec3<bool>,
    d: Struct_2,
    e: vec2<i32>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30>;

var<private> global1: vec3<u32>;

var<private> global2: array<i32, 9>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_5) -> f32 {
    var var_0 = Struct_4(Struct_3(Struct_1(vec3<u32>(4255u, reverseBits(global1.x), countOneBits(u_input.b.x)), countOneBits(vec4<u32>(1062u, global1.x, global1.x, u_input.a)) & vec4<u32>(4294967295u, global1.x, u_input.a, u_input.c.x), !select(global0[_wgslsmith_index_u32(global1.x, 30u)], false, arg_0.b.x), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(451f, -475f, -776f), vec3<f32>(-1112f, -1000f, 1957f), vec3<bool>(global0[_wgslsmith_index_u32(global1.x, 30u)], global0[_wgslsmith_index_u32(56652u, 30u)], false))))), _wgslsmith_f_op_f32(f32(-1f) * -733f)), Struct_2(Struct_1(vec3<u32>(1u, 63652u, 41010u), ~vec4<u32>(global1.x, 41531u, global1.x, global1.x), arg_0.a.x, vec3<f32>(-171f, -1000f, 205f), -1846f), Struct_1(u_input.b << (u_input.c % vec3<u32>(32u)), firstLeadingBit(vec4<u32>(0u, global1.x, u_input.a, u_input.c.x)), any(vec2<bool>(arg_0.b.x, false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(123f, 1000f, -344f) + vec3<f32>(251f, -886f, 965f)), -799f), vec4<u32>(46860u ^ global1.x, 42198u, 1u, 15457u)), Struct_1((u_input.b << (u_input.b % vec3<u32>(32u))) << (u_input.c % vec3<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, u_input.a, u_input.c.x, 42540u), vec4<u32>(0u, u_input.a, 0u, 1884u), vec4<u32>(1u, 4294967295u, global1.x, global1.x)) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(global1.x, 4294967295u, 0u, u_input.a), vec4<u32>(0u, 23387u, 66749u, 84519u)) % vec4<u32>(32u)), false, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2554f, 1668f, 757f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(973f, -361f, 1119f) - vec3<f32>(616f, -339f, 207f))), 1000f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1207f, -1259f, -911f) - vec3<f32>(-999f, -830f, -384f)))) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(709f, _wgslsmith_f_op_f32(1295f - -1317f), 1000f)))), arg_0.b, Struct_2(Struct_1(u_input.b, reverseBits(vec4<u32>(u_input.c.x, global1.x, 15488u, global1.x) & vec4<u32>(21570u, global1.x, global1.x, 4080u)), all(select(arg_0.b, arg_0.b, false)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1754f, -678f, -238f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(195f, -1170f, -1000f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(1000f))))), Struct_1(~u_input.b, select(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.c.x, 73265u, global1.x), vec4<u32>(u_input.c.x, 12423u, u_input.b.x, 0u)), ~vec4<u32>(u_input.b.x, 1u, 7120u, global1.x), select(vec4<bool>(true, true, arg_0.b.x, arg_0.a.x), vec4<bool>(global0[_wgslsmith_index_u32(48904u, 30u)], global0[_wgslsmith_index_u32(global1.x, 30u)], true, arg_0.b.x), vec4<bool>(false, arg_0.a.x, true, false))), arg_0.a.x, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(789f, 2415f, -558f)), vec3<f32>(-2700f, -1000f, 249f))), _wgslsmith_f_op_f32(-250f - -275f)), vec4<u32>(global1.x >> (~1u % 32u), 1u, _wgslsmith_mult_u32(global1.x, 0u << (1u % 32u)), u_input.b.x)), -abs(~vec2<i32>(-7872i, 20506i)));
    global0 = array<bool, 30>();
    var_0 = Struct_4(var_0.a, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.b + vec3<f32>(-295f, 632f, -1000f)))))), !(!(!(!vec3<bool>(var_0.a.c.c, global0[_wgslsmith_index_u32(var_0.d.c.x, 30u)], true)))), Struct_2(Struct_1(select(u_input.b, u_input.c, arg_0.a.x || global0[_wgslsmith_index_u32(0u, 30u)]), select(_wgslsmith_mult_vec4_u32(var_0.d.a.b, var_0.d.c), var_0.d.b.b, select(vec4<bool>(true, true, true, false), vec4<bool>(arg_0.a.x, true, true, true), vec4<bool>(true, arg_0.b.x, true, false))), _wgslsmith_dot_vec3_i32(vec3<i32>(-42i, 4993i, var_0.e.x), vec3<i32>(global2[_wgslsmith_index_u32(56369u, 9u)], global2[_wgslsmith_index_u32(u_input.b.x, 9u)], 16446i)) <= ~(-49215i), _wgslsmith_f_op_vec3_f32(step(var_0.d.b.d, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, -1367f, var_0.a.b.a.d.x))))), var_0.d.a.d.x), Struct_1(select(var_0.a.a.b.zwz >> (vec3<u32>(u_input.a, 44839u, global1.x) % vec3<u32>(32u)), var_0.d.a.a >> (var_0.a.b.c.wyx % vec3<u32>(32u)), !arg_0.b), reverseBits(~vec4<u32>(var_0.d.a.b.x, 51517u, global1.x, global1.x)), true, var_0.d.b.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b.x - var_0.d.b.e), _wgslsmith_f_op_f32(-1319f + -369f))), abs(var_0.d.a.b)), vec2<i32>(-12688i, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(abs(vec3<i32>(1487i, var_0.e.x, -17012i)), min(vec3<i32>(-2147483647i, 20998i, global2[_wgslsmith_index_u32(1u, 9u)]), vec3<i32>(-2147483647i, var_0.e.x, var_0.e.x))), vec3<i32>(_wgslsmith_clamp_i32(-8657i, global2[_wgslsmith_index_u32(u_input.a, 9u)], -22295i), i32(-1i) * -1i, reverseBits(var_0.e.x)))));
    global0 = array<bool, 30>();
    global1 = u_input.b;
    return _wgslsmith_f_op_f32(f32(-1f) * -548f);
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: Struct_4) -> i32 {
    global1 = vec3<u32>(~(~_wgslsmith_dot_vec2_u32(global1.yy, _wgslsmith_div_vec2_u32(u_input.c.zz, vec2<u32>(global1.x, arg_2.d.b.b.x)))), 31070u, 8u);
    global2 = array<i32, 9>();
    global2 = array<i32, 9>();
    var var_0 = true | (any(vec4<bool>(arg_0, true, arg_2.d.a.c, true)) && true);
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-779f, arg_2.b.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2.d.b.d.x - -1214f), arg_2.a.a.e))))) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1, 253f, -1256f))));
    return arg_2.e.x;
}

fn func_2(arg_0: i32) -> f32 {
    let var_0 = vec4<i32>(8994i, countOneBits(abs(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, 1u), 9u)])) >> (_wgslsmith_sub_u32(_wgslsmith_mult_u32(firstTrailingBit(u_input.a), firstLeadingBit(0u)), 41919u) % 32u), func_4(global0[_wgslsmith_index_u32(global1.x, 30u)], _wgslsmith_f_op_f32(func_3(Struct_5(select(vec2<bool>(global0[_wgslsmith_index_u32(11903u, 30u)], false), vec2<bool>(global0[_wgslsmith_index_u32(5918u, 30u)], global0[_wgslsmith_index_u32(u_input.a, 30u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(global1.x, 30u)])), !vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 30u)], global0[_wgslsmith_index_u32(10239u, 30u)], global0[_wgslsmith_index_u32(u_input.c.x, 30u)])))), Struct_4(Struct_3(Struct_1(u_input.c, vec4<u32>(global1.x, 31040u, 1u, 1u), global0[_wgslsmith_index_u32(0u, 30u)], vec3<f32>(1516f, -1587f, -1069f), 1789f), Struct_2(Struct_1(u_input.b, vec4<u32>(17288u, 0u, 74326u, u_input.b.x), global0[_wgslsmith_index_u32(u_input.c.x, 30u)], vec3<f32>(304f, -1199f, 493f), -638f), Struct_1(vec3<u32>(39464u, global1.x, u_input.a), vec4<u32>(global1.x, global1.x, 57141u, 4294967295u), false, vec3<f32>(470f, 326f, 847f), 221f), vec4<u32>(global1.x, 27531u, global1.x, u_input.a)), Struct_1(u_input.c, vec4<u32>(66511u, 0u, global1.x, 4294967295u), global0[_wgslsmith_index_u32(u_input.a, 30u)], vec3<f32>(200f, -211f, -151f), -782f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1591f, 1283f, -259f)))), select(select(vec3<bool>(global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(global1.x, 30u)], global0[_wgslsmith_index_u32(29886u, 30u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 30u)], global0[_wgslsmith_index_u32(1u, 30u)], false), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(0u, 30u)], false)), vec3<bool>(false, false, true), global0[_wgslsmith_index_u32(4294967295u, 30u)] & true), Struct_2(Struct_1(u_input.b, vec4<u32>(27158u, global1.x, 56841u, global1.x), true, vec3<f32>(-184f, -1391f, -583f), -1527f), Struct_1(u_input.b, vec4<u32>(1u, 1u, u_input.a, u_input.c.x), global0[_wgslsmith_index_u32(20291u, 30u)], vec3<f32>(581f, 547f, -1362f), -182f), vec4<u32>(u_input.a, u_input.b.x, 1u, u_input.b.x)), -(~vec2<i32>(global2[_wgslsmith_index_u32(4294967295u, 9u)], global2[_wgslsmith_index_u32(u_input.b.x, 9u)])))), countOneBits(max(global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(u_input.c.x, 0u), 9u)], arg_0)));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -2039f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-142f, 911f)))))), 446f);
    var var_2 = reverseBits(u_input.a);
    let var_3 = 65820u;
    global0 = array<bool, 30>();
    return _wgslsmith_f_op_f32(floor(-401f));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: vec4<i32>) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-696f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * arg_0.x) + arg_1.x), _wgslsmith_f_op_f32(arg_0.x * arg_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(arg_1.x * arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.x)) * _wgslsmith_div_f32(830f, arg_1.x)))) - vec4<f32>(_wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.x))), any(vec2<bool>(false, false)))), arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_mult_i32(global2[_wgslsmith_index_u32(1u, 9u)], -10255i)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-895f)) * arg_1.x), 847f, global0[_wgslsmith_index_u32(min(22586u, 4294967295u), 30u)]))));
    var var_1 = Struct_5(select(!vec2<bool>(true, all(vec3<bool>(true, global0[_wgslsmith_index_u32(global1.x, 30u)], false))), vec2<bool>(any(select(vec2<bool>(global0[_wgslsmith_index_u32(global1.x, 30u)], global0[_wgslsmith_index_u32(4294967295u, 30u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 30u)], global0[_wgslsmith_index_u32(u_input.c.x, 30u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 30u)], false))), any(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 30u)]))), false), vec3<bool>(true, any(vec2<bool>(true, true)), true));
    global2 = array<i32, 9>();
    global0 = array<bool, 30>();
    global2 = array<i32, 9>();
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1368f) - -2211f)))));
    global0 = array<bool, 30>();
    var var_1 = (i32(-1i) * -2147483647i) >> (global1.x % 32u);
    var_1 = global2[_wgslsmith_index_u32(global1.x, 9u)];
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1484f, 563f, -164f, -348f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1000f, -1783f, 1964f))))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1272f, -373f, 1000f))), _wgslsmith_div_vec3_f32(vec3<f32>(-1206f, 1000f, 1293f), vec3<f32>(-675f, 1292f, -834f)), _wgslsmith_mult_vec4_i32(vec4<i32>(-30310i, 0i, global2[_wgslsmith_index_u32(u_input.c.x, 9u)], 0i), vec4<i32>(global2[_wgslsmith_index_u32(u_input.c.x, 9u)], 1i, 17334i, 5155i)))))), vec4<f32>(-825f, _wgslsmith_f_op_f32(f32(-1f) * -1957f), -882f, 2042f)));
    global0 = array<bool, 30>();
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-654f)) - var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(-(~vec3<i32>(24026i, -2147483647i, global2[_wgslsmith_index_u32(global1.x, 9u)])) | (_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, -19259i, -2147483647i), vec3<i32>(-46548i, global2[_wgslsmith_index_u32(0u, 9u)], global2[_wgslsmith_index_u32(11456u, 9u)])) | (vec3<i32>(13240i, global2[_wgslsmith_index_u32(global1.x, 9u)], global2[_wgslsmith_index_u32(29544u, 9u)]) << (u_input.c % vec3<u32>(32u)))), countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 9u)], global2[_wgslsmith_index_u32(10856u, 9u)], -2620i), vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 9u)], -27747i, global2[_wgslsmith_index_u32(89240u, 9u)]), vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 9u)], global2[_wgslsmith_index_u32(global1.x, 9u)], global2[_wgslsmith_index_u32(global1.x, 9u)])) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(global1.x, global1.x, u_input.b.x), u_input.b, u_input.b) % vec3<u32>(32u)))), -(~1i), firstTrailingBit(countOneBits(~_wgslsmith_div_vec2_u32(u_input.c.zx, global1.xx))), ~u_input.b.zy);
}

