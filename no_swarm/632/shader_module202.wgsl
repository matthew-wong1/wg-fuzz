struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: f32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
    c: Struct_1,
    d: vec4<bool>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: bool,
    c: vec3<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec4<i32>, 22>;

var<private> global2: vec3<i32>;

var<private> global3: array<vec2<f32>, 18> = array<vec2<f32>, 18>(vec2<f32>(628f, -428f), vec2<f32>(-1393f, 1000f), vec2<f32>(-138f, 529f), vec2<f32>(-978f, -318f), vec2<f32>(-358f, 666f), vec2<f32>(-592f, -251f), vec2<f32>(1307f, -1000f), vec2<f32>(1000f, 179f), vec2<f32>(-1000f, 130f), vec2<f32>(-1073f, -1367f), vec2<f32>(1640f, 433f), vec2<f32>(-596f, 1067f), vec2<f32>(2066f, -769f), vec2<f32>(454f, -1288f), vec2<f32>(-540f, 335f), vec2<f32>(-756f, -1035f), vec2<f32>(-134f, -552f), vec2<f32>(-376f, -859f));

var<private> global4: array<vec3<bool>, 22>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4) -> vec2<u32> {
    let var_0 = true;
    global0 = false;
    var var_1 = global4[_wgslsmith_index_u32(12331u, 22u)];
    let var_2 = reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.a.x, ~(~4294967295u), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.c, arg_1.a.x, arg_0.a.x)), vec3<u32>(arg_1.a.x, 1u, 0u)), 4294967295u), _wgslsmith_sub_vec4_u32(~abs(vec4<u32>(u_input.a, 1230u, u_input.c, arg_0.a.x)), countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 1u, arg_1.a.x, arg_0.a.x), vec4<u32>(arg_0.a.x, 0u, arg_1.a.x, arg_0.a.x))))));
    var var_3 = var_2.x;
    return select(abs(arg_1.a), vec2<u32>(u_input.c, 116890u), vec2<bool>(_wgslsmith_add_i32(~u_input.b, _wgslsmith_add_i32(global2.x, -1i)) >= _wgslsmith_mod_i32(firstTrailingBit(23152i), _wgslsmith_mod_i32(u_input.b, 2147483647i)), true));
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: vec4<u32>, arg_3: vec2<f32>) -> vec2<bool> {
    global2 = ~_wgslsmith_mod_vec3_i32(~(~firstLeadingBit(vec3<i32>(-17349i, 1i, 7456i))), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, i32(-1i) * -2147483647i, _wgslsmith_mult_i32(-3051i, 0i)), vec3<i32>(0i, -23484i, abs(55931i))));
    let var_0 = Struct_3(~global2.xz);
    let var_1 = _wgslsmith_clamp_i32(12560i, u_input.b, global2.x);
    var var_2 = Struct_5(Struct_2(all(!select(vec4<bool>(arg_1.c.x, arg_1.c.x, true, true), vec4<bool>(arg_1.b, arg_1.c.x, true, false), vec4<bool>(arg_1.b, true, arg_1.c.x, true))), _wgslsmith_mult_vec4_i32(-firstTrailingBit(global1[_wgslsmith_index_u32(arg_2.x, 22u)]), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(reverseBits(52077u), 37983u), 22u)]), Struct_1(arg_2.wx, arg_1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(246f))), !vec2<bool>(arg_1.b, arg_1.b)), vec4<bool>(true & any(vec4<bool>(true, arg_1.c.x, arg_1.c.x, true)), ~var_1 < -32991i, all(select(vec4<bool>(arg_1.c.x, false, arg_1.c.x, arg_1.c.x), vec4<bool>(arg_1.c.x, true, false, arg_1.b), arg_1.b)), true), !(!arg_1.c.zy)), !select(arg_1.a.x >= arg_0, reverseBits(58054i) <= (-12982i ^ var_0.a.x), false), Struct_1(countOneBits(~select(vec2<u32>(arg_2.x, 6480u), arg_1.a, arg_1.c.x)), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_3.x))), arg_1.c.zy));
    let var_3 = !var_2.a.d.wz;
    return var_3;
}

fn func_2(arg_0: i32) -> i32 {
    global4 = array<vec3<bool>, 22>();
    global3 = array<vec2<f32>, 18>();
    let var_0 = func_4(~u_input.a, Struct_4(select(_wgslsmith_sub_vec2_u32(~vec2<u32>(1u, 1u), vec2<u32>(u_input.c, 1u)), func_3(Struct_4(vec2<u32>(u_input.c, 0u), false, vec3<bool>(false, true, true)), Struct_4(vec2<u32>(48956u, u_input.c), false, vec3<bool>(true, true, true))), vec2<bool>(false, true)), false, global4[_wgslsmith_index_u32(1u, 22u)]), _wgslsmith_div_vec4_u32(~_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.c, 3831u, u_input.c, 55152u), vec4<u32>(u_input.c, 4294967295u, 76339u, u_input.c)), vec4<u32>(_wgslsmith_mult_u32(u_input.c, 28032u) << (1u % 32u), 1u, u_input.a, 6967u)), vec2<f32>(-211f, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(201f)) + _wgslsmith_f_op_f32(f32(-1f) * -1636f)))));
    let var_1 = Struct_2(var_0.x, vec4<i32>(2147483647i, ~min(1i, u_input.b), u_input.b << (~(~26809u) % 32u), -(~u_input.b << (8402u % 32u))), Struct_1(_wgslsmith_sub_vec2_u32(~vec2<u32>(4294967295u, 4294967295u), vec2<u32>(u_input.c, 1u)) << (min(vec2<u32>(1620u, u_input.a), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(71170u, u_input.c))) % vec2<u32>(32u)), func_4(_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.c, u_input.c), countOneBits(u_input.c)), Struct_4(vec2<u32>(u_input.a, u_input.a), var_0.x, vec3<bool>(var_0.x, false, true)), ~reverseBits(vec4<u32>(u_input.c, u_input.a, u_input.c, 44536u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(global3[_wgslsmith_index_u32(u_input.c, 18u)])), global3[_wgslsmith_index_u32(~u_input.c, 18u)])).x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-150f, _wgslsmith_f_op_f32(2021f * 560f))))), var_0), !select(vec4<bool>(true, true, var_0.x, !var_0.x), !vec4<bool>(false, var_0.x, false, true), var_0.x), vec2<bool>(false, var_0.x));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -396f), _wgslsmith_div_f32(-371f, 1243f), 949f, var_1.c.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.c, var_1.c.c, 713f, -808f) - vec4<f32>(-558f, 226f, 1555f, -264f)) * _wgslsmith_div_vec4_f32(vec4<f32>(var_1.c.c, 1337f, var_1.c.c, 1026f), vec4<f32>(var_1.c.c, var_1.c.c, 1364f, 839f))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.c.c, var_1.c.c, var_1.c.c, 1863f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(795f, 2517f, -1039f, 1000f)))))) * vec4<f32>(-129f, var_1.c.c, var_1.c.c, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1187f), var_1.c.c))))));
    return max(-2147483647i, global2.x);
}

fn func_5(arg_0: vec2<i32>, arg_1: i32, arg_2: f32) -> Struct_2 {
    let var_0 = ~_wgslsmith_clamp_u32(~u_input.c, ~(~4294967295u << (firstTrailingBit(57454u) % 32u)), 0u);
    global1 = array<vec4<i32>, 22>();
    var var_1 = any(func_4(~(_wgslsmith_dot_vec3_u32(vec3<u32>(4576u, var_0, 86244u), vec3<u32>(u_input.a, u_input.a, var_0)) ^ ~u_input.c), Struct_4(_wgslsmith_mod_vec2_u32(vec2<u32>(10242u, 0u) << (vec2<u32>(0u, u_input.c) % vec2<u32>(32u)), select(vec2<u32>(88287u, 4294967295u), vec2<u32>(30069u, 9893u), true)), any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true)), vec4<u32>(_wgslsmith_add_u32(firstLeadingBit(u_input.c), 36450u), var_0, ~u_input.c ^ firstTrailingBit(4294967295u), ~u_input.c & 40643u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_2, arg_2)))) + _wgslsmith_f_op_vec2_f32(exp2(global3[_wgslsmith_index_u32(~var_0, 18u)])))));
    let var_2 = firstTrailingBit(min(select(~(~vec3<u32>(0u, 4294967295u, 1u)), ~(~vec3<u32>(u_input.c, 0u, 76533u)), global4[_wgslsmith_index_u32(var_0, 22u)]), countOneBits(~abs(vec3<u32>(var_0, var_0, var_0)))));
    var var_3 = firstTrailingBit(_wgslsmith_div_vec2_i32(global2.yx, ~arg_0)) << (vec2<u32>(~1285u, u_input.c) % vec2<u32>(32u));
    return Struct_2(true, vec4<i32>(1i | -var_3.x, reverseBits(var_3.x), i32(-1i) * -19719i, _wgslsmith_sub_i32(-46936i, arg_0.x)) ^ _wgslsmith_mod_vec4_i32(-(vec4<i32>(u_input.b, global2.x, -18905i, 1i) & vec4<i32>(arg_0.x, u_input.b, var_3.x, global2.x)), reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(-4709i, -58359i, global2.x, global2.x), global1[_wgslsmith_index_u32(12545u, 22u)]))), Struct_1(reverseBits(~_wgslsmith_sub_vec2_u32(vec2<u32>(var_2.x, 0u), vec2<u32>(1u, var_0))), _wgslsmith_mod_u32(1u ^ u_input.a, 4294967295u) <= 0u, _wgslsmith_f_op_f32(-arg_2), vec2<bool>(true, true)), select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false)), true), vec4<bool>(all(vec2<bool>(false, false)), false, true, false), false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true)), true), func_2(var_3.x) >= _wgslsmith_sub_i32(u_input.b, -2147483647i))), func_4(abs(_wgslsmith_mod_u32(var_2.x, ~4294967295u)), Struct_4(var_2.yy, true, global4[_wgslsmith_index_u32(var_0, 22u)]), firstTrailingBit(~vec4<u32>(var_2.x, 0u, 0u, var_2.x)), _wgslsmith_div_vec2_f32(vec2<f32>(arg_2, 798f), _wgslsmith_div_vec2_f32(vec2<f32>(arg_2, arg_2), global3[_wgslsmith_index_u32(~var_2.x, 18u)]))));
}

fn func_1() -> Struct_5 {
    var var_0 = func_5(vec2<i32>(-1i) * -vec2<i32>(_wgslsmith_sub_i32(0i, u_input.b), -2147483647i), min(_wgslsmith_add_i32(reverseBits(-1i), u_input.b), func_2(_wgslsmith_dot_vec2_i32(-vec2<i32>(1i, 14562i), ~vec2<i32>(global2.x, 1i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(318f))))));
    var_0 = func_5(var_0.b.zx, 0i, var_0.c.c);
    global2 = firstTrailingBit(~vec3<i32>(-_wgslsmith_mod_i32(var_0.b.x, 29293i), _wgslsmith_div_i32(max(global2.x, global2.x), countOneBits(u_input.b)), 12774i));
    global0 = !(!var_0.e.x);
    var var_1 = 64733u;
    return Struct_5(Struct_2(true, global1[_wgslsmith_index_u32(~firstLeadingBit(0u), 22u)], func_5(var_0.b.xx, _wgslsmith_add_i32(global2.x, -1i), var_0.c.c).c, var_0.d, !(!select(vec2<bool>(true, true), var_0.e, var_0.e.x))), any(!vec2<bool>(!var_0.c.d.x, func_5(global2.xx, var_0.b.x, -691f).c.d.x)), var_0.c);
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: Struct_5) -> Struct_2 {
    global4 = array<vec3<bool>, 22>();
    global0 = (_wgslsmith_dot_vec3_i32(vec3<i32>(firstTrailingBit(u_input.b), i32(-1i) * -37568i, u_input.b), -arg_2.a.b.zxw) >= 1i) | true;
    let var_0 = Struct_2(!all(arg_2.a.d.yyw), ~(~(arg_2.a.b << (~vec4<u32>(u_input.c, u_input.c, 1831u, arg_1) % vec4<u32>(32u)))), Struct_1(~(~reverseBits(arg_0.a)), arg_0.c == arg_2.c.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.c, arg_2.c.c, true)))), func_4(arg_2.a.c.a.x, Struct_4(reverseBits(arg_2.a.c.a), true, func_5(vec2<i32>(global2.x, arg_2.a.b.x), 0i, -1165f).d.xzy), ~(~vec4<u32>(68704u, arg_0.a.x, arg_0.a.x, 23246u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1309f, arg_0.c), global3[_wgslsmith_index_u32(arg_0.a.x, 18u)])) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.c, 494f)))))), select(arg_2.a.d, vec4<bool>(_wgslsmith_f_op_f32(-890f * arg_0.c) > _wgslsmith_f_op_f32(1237f - arg_0.c), !(!arg_0.d.x), !(arg_2.a.a | false), all(select(arg_2.a.d, arg_2.a.d, vec4<bool>(arg_0.d.x, arg_2.a.d.x, false, arg_2.c.d.x)))), any(vec3<bool>(all(vec3<bool>(arg_2.b, arg_0.d.x, true)), false, true))), arg_2.a.e);
    let var_1 = !any(vec2<bool>(func_5(vec2<i32>(-69734i, 1i), u_input.b, var_0.c.c).c.b, any(vec3<bool>(false, arg_0.d.x, var_0.a)))) | (all(arg_0.d) != arg_0.b);
    var var_2 = Struct_2(false, firstTrailingBit(vec4<i32>(arg_2.a.b.x, var_0.b.x, firstLeadingBit(2015i), ~(-2147483647i))) | func_5(vec2<i32>(1i, 0i), 2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c.c))).b, Struct_1(var_0.c.a, !arg_0.d.x, arg_0.c, func_1().a.c.d), vec4<bool>(select(select(false, arg_0.d.x, true) || true, var_1 && false, any(var_0.d)), true, false, true), !vec2<bool>(true, select(!var_1, var_0.a, false)));
    return Struct_2((func_5(-arg_2.a.b.yz, abs(1i), _wgslsmith_f_op_f32(select(-298f, var_0.c.c, arg_2.b))).c.a.x << (~86921u % 32u)) == 33504u, vec4<i32>(_wgslsmith_clamp_i32(79585i, 1i, var_0.b.x), reverseBits(var_0.b.x), global2.x, -20826i), var_2.c, vec4<bool>(true, !arg_0.b, true, reverseBits(24287i) <= -var_2.b.x), !select(vec2<bool>(var_2.b.x > arg_2.a.b.x, func_5(vec2<i32>(-2015i, 25763i), u_input.b, 384f).d.x), arg_2.a.d.yy, var_0.e));
}

fn func_7(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_4) -> Struct_1 {
    var var_0 = true;
    var var_1 = ~_wgslsmith_sub_i32(u_input.b, arg_0.a.x & -6202i);
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -588f, -1000f) - vec3<f32>(_wgslsmith_f_op_f32(func_5(vec2<i32>(global2.x, u_input.b), arg_1.b.x, _wgslsmith_f_op_f32(-arg_1.c.c)).c.c * arg_1.c.c), 367f, -596f));
    let var_3 = vec3<f32>(arg_1.c.c, func_5(global2.yx, 0i, arg_1.c.c).c.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.c)));
    let var_4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-350f))));
    return arg_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(!select(vec2<bool>(true, true), vec2<bool>(true, false), 23045i <= u_input.b), vec2<bool>(true, false), !vec2<bool>(false, u_input.a <= u_input.c));
    global0 = ~4294967295u >= _wgslsmith_add_u32(abs(countOneBits(~26400u)), firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 50129u, 79319u), vec3<u32>(u_input.c, 0u, 31994u))) ^ (_wgslsmith_add_u32(24805u, u_input.c) >> (1u % 32u)));
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -115f)) + 356f))) >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-570f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1727f)))), _wgslsmith_f_op_f32(436f + _wgslsmith_f_op_f32(f32(-1f) * -656f))));
    var var_2 = Struct_1(vec2<u32>((~u_input.a | u_input.a) | u_input.a, ~(max(0u, u_input.c) << (1u % 32u))), true, _wgslsmith_f_op_f32(-1009f * 119f), var_0);
    let var_3 = ~(~(~_wgslsmith_mod_u32(~var_2.a.x, 4294967295u)));
    var var_4 = func_7(Struct_3(global2.zy), func_6(Struct_1(~vec2<u32>(var_3, 21970u) >> (var_2.a % vec2<u32>(32u)), all(vec4<bool>(false, var_2.d.x, false, true)), -1000f, !select(var_2.d, var_0, var_0.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, ~1u), ~(~var_2.a)), func_1()), Struct_4(var_2.a, true, vec3<bool>(true, true, true)));
    var var_5 = var_2.c != func_5(vec2<i32>(_wgslsmith_add_i32(u_input.b, global2.x) << ((var_3 | 1u) % 32u), 1i), _wgslsmith_clamp_i32(-63712i, abs(global2.x), ~35774i) | _wgslsmith_dot_vec2_i32(-vec2<i32>(global2.x, 1i), ~vec2<i32>(u_input.b, global2.x)), _wgslsmith_f_op_f32(-1611f - func_1().c.c)).c.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.c, var_4.c, 1000f)))), _wgslsmith_f_op_vec2_f32(global3[_wgslsmith_index_u32(reverseBits(var_3), 18u)] * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.c, var_4.c) * _wgslsmith_div_vec2_f32(vec2<f32>(-252f, -959f), vec2<f32>(-1172f, -1000f))) + _wgslsmith_f_op_vec2_f32(-global3[_wgslsmith_index_u32(u_input.a, 18u)]))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(sign(var_2.c)), _wgslsmith_f_op_f32(exp2(var_4.c))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-497f, -1355f))))))));
}

