struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: vec4<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<u32>,
    c: Struct_2,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<f32>,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: i32 = i32(-2147483648);

var<private> global2: Struct_5;

var<private> global3: array<vec3<u32>, 19> = array<vec3<u32>, 19>(vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(1u, 40930u, 81878u), vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(21821u, 0u, 0u), vec3<u32>(19313u, 71551u, 0u), vec3<u32>(4294967295u, 42691u, 4294967295u), vec3<u32>(31230u, 1u, 0u), vec3<u32>(23535u, 4294967295u, 1u), vec3<u32>(62345u, 0u, 80587u), vec3<u32>(1u, 27172u, 17780u), vec3<u32>(0u, 4294967295u, 24764u), vec3<u32>(16057u, 4294967295u, 57646u), vec3<u32>(0u, 67965u, 2162u), vec3<u32>(11983u, 1u, 44438u), vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(30539u, 4650u, 108153u), vec3<u32>(0u, 1u, 2948u), vec3<u32>(84494u, 47302u, 1u), vec3<u32>(1u, 8510u, 4294967295u));

var<private> global4: array<Struct_1, 29>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: f32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3, 111f, -1153f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.x)))) + arg_0));
    var var_1 = Struct_1(_wgslsmith_add_u32(15545u, reverseBits(~(~1u))), vec2<u32>(~35659u, u_input.b.x), !arg_2.c);
    let var_2 = Struct_5(Struct_3(arg_1, !(!global2.a.b), global2.a.a), u_input.e.zz, Struct_2(false, Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.c.a, arg_1.c.a, var_1.a), u_input.e), ~vec3<u32>(global2.b.x, var_1.a, u_input.d)), _wgslsmith_mod_vec2_u32(arg_1.c.b, vec2<u32>(0u, 22226u)), select(!global2.c.c.c, vec3<bool>(false, true, false), global2.c.c.c.x)), Struct_1(~1u, ~arg_2.b & u_input.b, select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), !arg_1.b.c))), _wgslsmith_f_op_vec3_f32(round(arg_0.xzw)));
    let var_3 = arg_1.c.a >= _wgslsmith_clamp_u32(countOneBits(countOneBits(arg_2.a)), 63628u, ~countOneBits(1065u ^ arg_1.b.a));
    global2 = Struct_5(Struct_3(var_2.c, any(select(select(global2.c.b.c.zy, global0.ww, var_2.c.c.c.xz), vec2<bool>(true, true), true)), arg_1), select(~_wgslsmith_mod_vec2_u32(vec2<u32>(20284u, 0u), ~vec2<u32>(global2.c.c.b.x, arg_1.c.b.x)), ~countOneBits(vec2<u32>(65058u, u_input.e.x)) & vec2<u32>(69736u << (arg_2.a % 32u), var_1.a), !(!(!var_1.c.yz))), Struct_2(false == !all(vec3<bool>(false, false, arg_2.c.x)), Struct_1(arg_1.c.b.x, ~vec2<u32>(arg_2.b.x, 4294967295u), vec3<bool>(arg_1.a, false, -109f < arg_3)), Struct_1(0u, select(~vec2<u32>(67555u, u_input.e.x), reverseBits(vec2<u32>(4294967295u, 39219u)), var_1.c.x), select(vec3<bool>(var_1.c.x, false, false), vec3<bool>(true, true, true), select(vec3<bool>(false, var_3, true), global2.c.b.c, arg_1.c.c)))), vec3<f32>(_wgslsmith_f_op_f32(var_2.d.x - 1016f), _wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(566f * _wgslsmith_f_op_f32(f32(-1f) * -1221f))));
    return max(-33326i, -2147483647i);
}

fn func_2() -> Struct_3 {
    global3 = array<vec3<u32>, 19>();
    var var_0 = all(!(!global0.wy));
    global1 = _wgslsmith_add_i32(-(~max(func_3(vec4<f32>(global2.d.x, -1422f, -1014f, global2.d.x), global2.c, Struct_1(22202u, vec2<u32>(u_input.d, 1u), global0.xzx), 254f), 2147483647i)), -30433i ^ u_input.a);
    var var_1 = _wgslsmith_div_f32(global2.d.x, global2.d.x);
    global2 = Struct_5(global2.a, abs(_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(global2.c.c.b.x, u_input.e.x), reverseBits(4294967295u)), _wgslsmith_div_vec2_u32(reverseBits(global2.a.c.b.b), ~vec2<u32>(28507u, 43828u)))), Struct_2(global0.x, global4[_wgslsmith_index_u32(firstLeadingBit(~4294967295u), 29u)], global4[_wgslsmith_index_u32(firstTrailingBit(4294967295u) | u_input.d, 29u)]), vec3<f32>(_wgslsmith_f_op_f32(global2.d.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global2.d.x)), _wgslsmith_f_op_f32(global2.d.x + global2.d.x))), _wgslsmith_f_op_f32(-global2.d.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(global2.d.x))))));
    return Struct_3(global2.a.c, !global0.x, global2.a.c);
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec4<f32>) -> Struct_5 {
    let var_0 = arg_3.yy;
    global1 = _wgslsmith_clamp_i32(firstTrailingBit(~46753i) << (~arg_1.c.b.b.x % 32u), -firstTrailingBit(-2147483647i), u_input.a);
    var var_1 = select(vec3<bool>(arg_2.c.b.a > ~_wgslsmith_div_u32(0u, arg_2.c.c.b.x), arg_1.a.c.c.x, !any(vec3<bool>(true, true, true))), global2.c.b.c, arg_1.c.b.c);
    global4 = array<Struct_1, 29>();
    let var_2 = countOneBits(vec4<i32>(-38666i | ~_wgslsmith_div_i32(u_input.a, 0i), abs(u_input.a >> (~61u % 32u)), (u_input.a | u_input.a) | ~_wgslsmith_div_i32(-42654i, 2147483647i), -2147483647i));
    return Struct_5(func_2(), select(~vec2<u32>(~0u, global2.a.a.c.a >> (u_input.c.x % 32u)), abs(arg_1.a.b.b), vec2<bool>(func_2().a.a, global2.c.a & (global2.a.c.b.a < 4294967295u))), func_2().c, _wgslsmith_f_op_vec3_f32(vec3<f32>(555f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1564f - var_0.x) * -1241f), var_0.x) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_3.yzy) * global2.d), arg_3.xwx, any(!vec3<bool>(false, global2.a.c.b.c.x, global0.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.d.x, 280f) * _wgslsmith_f_op_f32(-global2.d.x)), _wgslsmith_f_op_f32(-global2.d.x))), global2.d.x), global2.a, global2.a, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2.d.x, global2.d.x, -1000f, -1090f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1408f), -487f, 744f, _wgslsmith_f_op_f32(-global2.d.x)) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.d.x, global2.d.x, -945f, global2.d.x) * vec4<f32>(479f, global2.d.x, global2.d.x, 818f))))))));
    global3 = array<vec3<u32>, 19>();
    var var_1 = Struct_4(func_1(_wgslsmith_f_op_f32(-global2.d.x), func_1(923f, Struct_3(func_2().c, global2.a.a.c.c.x, var_0.c), global2.a, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(926f, -926f, global2.d.x, -2117f), vec4<f32>(global2.d.x, global2.d.x, -967f, global2.d.x)))))).a, func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1337f) - _wgslsmith_f_op_f32(sign(527f))), var_0.a, Struct_3(func_1(250f, Struct_3(Struct_2(var_0.a.a.a, global4[_wgslsmith_index_u32(global2.c.c.b.x, 29u)], Struct_1(global2.a.a.b.a, vec2<u32>(var_0.c.b.b.x, 10406u), vec3<bool>(false, true, false))), global0.x, var_0.a.c), var_0.a, vec4<f32>(var_0.d.x, -420f, var_0.d.x, global2.d.x)).c, false, Struct_2(false, Struct_1(var_0.a.a.b.a, u_input.b, vec3<bool>(false, false, global2.c.b.c.x)), global4[_wgslsmith_index_u32(u_input.b.x, 29u)])), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.d.x, global2.d.x, global2.d.x, 678f) - vec4<f32>(var_0.d.x, var_0.d.x, -548f, 839f)) - vec4<f32>(global2.d.x, -313f, global2.d.x, -335f))).a, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1403f, var_0.d.x, -234f, global2.d.x) * vec4<f32>(945f, -566f, var_0.d.x, -774f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.d.x, global2.d.x, var_0.d.x, -616f))), !(!vec4<bool>(false, true, var_0.a.b, false))))).a.a.c, var_0.c.b.b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -884f) * -120f), _wgslsmith_f_op_f32(global2.d.x + -279f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(2519f, _wgslsmith_f_op_f32(ceil(-1409f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.d.x)), var_0.d.x, -995f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.d.x, -285f, var_0.d.x, var_0.d.x)))));
    global4 = array<Struct_1, 29>();
    var_0 = Struct_5(func_2(), ~vec2<u32>(var_1.a.a, 55138u), var_0.a.c, _wgslsmith_f_op_vec3_f32(trunc(func_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -677f))), Struct_3(Struct_2(true, Struct_1(var_1.b, u_input.e.zy, vec3<bool>(true, true, global2.a.c.a)), Struct_1(u_input.c.x, global2.a.a.b.b, vec3<bool>(true, true, true))), false, func_2().a), Struct_3(Struct_2(var_0.a.a.b.c.x, Struct_1(0u, global2.b, var_0.a.a.b.c), Struct_1(1613u, global2.a.c.b.b, var_0.a.c.b.c)), true, func_1(var_1.d.x, Struct_3(var_0.a.a, true, Struct_2(false, Struct_1(0u, var_1.a.b, vec3<bool>(true, false, false)), Struct_1(0u, vec2<u32>(15270u, 0u), vec3<bool>(true, true, false)))), var_0.a, vec4<f32>(-1374f, -1558f, var_0.d.x, var_1.c)).a.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.x, -757f, global2.d.x, 264f) + var_1.d))).d)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(0i, _wgslsmith_dot_vec2_i32(-vec2<i32>(-10689i, u_input.a), firstLeadingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 16282i)))), _wgslsmith_mod_i32(u_input.a, -_wgslsmith_mult_i32(u_input.a, u_input.a)), abs(_wgslsmith_mult_i32(func_3(vec4<f32>(1456f, 542f, var_0.d.x, var_1.d.x), Struct_2(global2.c.b.c.x, Struct_1(15440u, global2.c.c.b, vec3<bool>(var_0.c.c.c.x, false, false)), Struct_1(var_0.c.b.a, var_0.a.c.c.b, var_0.a.c.c.c)), Struct_1(global2.c.b.a, var_0.a.a.c.b, vec3<bool>(var_1.a.c.x, false, global0.x)), 635f), _wgslsmith_add_i32(u_input.a, -32533i)))), 4294967295u, var_1.d, reverseBits(~var_0.a.c.b.b) >> (((~vec2<u32>(var_1.a.a, 0u) | vec2<u32>(var_0.c.c.b.x, 4294967295u)) << (_wgslsmith_div_vec2_u32(vec2<u32>(global2.a.a.b.b.x, global2.c.b.b.x), ~vec2<u32>(37166u, 5789u)) % vec2<u32>(32u))) % vec2<u32>(32u)), max(~global2.c.b.b.x, _wgslsmith_div_u32(global2.b.x, min(func_1(var_0.d.x, var_0.a, Struct_3(Struct_2(var_0.a.c.b.c.x, var_0.c.c, Struct_1(var_1.a.b.x, u_input.e.zx, vec3<bool>(var_0.a.c.c.c.x, var_0.c.b.c.x, false))), global0.x, Struct_2(var_1.a.c.x, global4[_wgslsmith_index_u32(25342u, 29u)], Struct_1(5386u, u_input.e.xy, vec3<bool>(var_0.a.c.c.c.x, var_1.a.c.x, false)))), vec4<f32>(1000f, 251f, var_1.d.x, 2151f)).a.c.b.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 1079u, 73504u, var_0.a.a.b.b.x), u_input.c)))));
}

