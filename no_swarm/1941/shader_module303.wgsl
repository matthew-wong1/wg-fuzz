struct Struct_1 {
    a: f32,
    b: i32,
    c: bool,
    d: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 17> = array<vec4<u32>, 17>(vec4<u32>(3748u, 15913u, 52600u, 59061u), vec4<u32>(10134u, 0u, 0u, 0u), vec4<u32>(34766u, 0u, 4294967295u, 4294967295u), vec4<u32>(56606u, 4294967295u, 1904u, 4294967295u), vec4<u32>(0u, 28586u, 17075u, 21644u), vec4<u32>(18161u, 4294967295u, 1u, 4294967295u), vec4<u32>(84496u, 292u, 8403u, 3823u), vec4<u32>(0u, 4294967295u, 0u, 7521u), vec4<u32>(13410u, 4294967295u, 18688u, 50013u), vec4<u32>(25653u, 3659u, 4294967295u, 0u), vec4<u32>(32800u, 0u, 1u, 51338u), vec4<u32>(65166u, 22550u, 1u, 32791u), vec4<u32>(74838u, 1u, 58945u, 153090u), vec4<u32>(4294967295u, 4294967295u, 25245u, 0u), vec4<u32>(0u, 0u, 0u, 19427u), vec4<u32>(1u, 11516u, 111118u, 0u), vec4<u32>(1u, 39966u, 1u, 3499u));

var<private> global1: array<vec2<u32>, 12> = array<vec2<u32>, 12>(vec2<u32>(0u, 1u), vec2<u32>(43725u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(9646u, 64283u), vec2<u32>(1u, 13886u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(50656u, 17823u), vec2<u32>(14572u, 0u), vec2<u32>(40607u, 4294967295u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 42646u));

var<private> global2: array<u32, 19> = array<u32, 19>(33162u, 1u, 29699u, 43748u, 4294967295u, 4294967295u, 4709u, 1u, 4294967295u, 1u, 42907u, 0u, 4294967295u, 59847u, 8134u, 4294967295u, 0u, 27771u, 4294967295u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> i32 {
    let var_0 = 49390u;
    global0 = array<vec4<u32>, 17>();
    let var_1 = vec3<u32>(var_0, abs(max(_wgslsmith_mult_u32(1u, select(var_0, 0u, arg_1.c)), ~reverseBits(global2[_wgslsmith_index_u32(u_input.b, 19u)]))), firstLeadingBit(var_0));
    var var_2 = Struct_3(Struct_1(arg_1.d.x, -(~1i), all(vec4<bool>(false, true, arg_1.c || true, arg_1.a == arg_1.d.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, arg_1.d.x, arg_1.d.x, arg_1.a), vec4<f32>(arg_1.a, -568f, arg_1.d.x, arg_1.a))))), arg_1.d)));
    global2 = array<u32, 19>();
    return _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(max(23999i, arg_1.b), 1i, 15286i), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_1.b, 1i, arg_0), abs(vec3<i32>(u_input.a, u_input.a, -2147483647i))) | select(~vec3<i32>(u_input.a, -1i, -21617i), vec3<i32>(-2147483647i, var_2.a.b, arg_0) & vec3<i32>(2147483647i, 1423i, -7517i), true)), vec3<i32>(u_input.a ^ u_input.a, 0i, arg_0) >> (abs(firstLeadingBit(max(var_1, vec3<u32>(var_0, 16952u, var_0)))) % vec3<u32>(32u)));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec2<i32>) -> vec2<u32> {
    var var_0 = vec4<i32>(2147483647i, arg_1.a.b, -arg_3.x, abs(-_wgslsmith_mod_i32(10010i, u_input.a)));
    let var_1 = arg_2.d.zy;
    let var_2 = select(select(false, -43750i < arg_3.x, arg_2.c), true, any(!(!vec2<bool>(true, arg_2.c))) & false);
    var var_3 = false;
    var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1203f - arg_2.a))) + var_1.x) >= _wgslsmith_div_f32(_wgslsmith_div_f32(-155f, var_1.x), _wgslsmith_f_op_f32(arg_2.d.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.a - 1294f) - _wgslsmith_f_op_f32(f32(-1f) * -803f))));
    return global1[_wgslsmith_index_u32(firstLeadingBit(u_input.b) | (~(~1u) >> ((~_wgslsmith_div_u32(0u, 62726u) ^ (firstLeadingBit(u_input.b) << (u_input.b % 32u))) % 32u)), 12u)];
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    global1 = array<vec2<u32>, 12>();
    var var_0 = -12403i;
    var_0 = reverseBits(arg_2.d.b);
    let var_1 = func_4(true, Struct_3(arg_1), Struct_1(1279f, -2147483647i, !(!all(vec2<bool>(arg_1.c, arg_2.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -708f, 642f, arg_2.d.d.x) + arg_1.d) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -906f, arg_2.b, 771f) - vec4<f32>(246f, arg_2.b, 635f, -1080f))))), vec2<i32>(abs(func_3(-2147483647i, arg_2.d) | _wgslsmith_dot_vec4_i32(vec4<i32>(8136i, arg_2.d.b, arg_2.d.b, arg_1.b), vec4<i32>(27815i, arg_1.b, arg_1.b, arg_2.d.b))), 1i));
    let var_2 = arg_2.d.b;
    return arg_0.x;
}

fn func_1() -> Struct_1 {
    let var_0 = vec3<u32>(1u, _wgslsmith_div_u32(4294967295u, 4294967295u), reverseBits(1u));
    var var_1 = Struct_2(true, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-116f + -473f), _wgslsmith_f_op_f32(f32(-1f) * -309f))), -178f) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(416f, _wgslsmith_f_op_f32(ceil(-1930f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(106f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_dot_vec2_u32(select(~(~var_0.zy), firstLeadingBit(global1[_wgslsmith_index_u32(firstLeadingBit(4528u), 12u)]), vec2<bool>(true, all(vec2<bool>(true, true)))), ~((vec2<u32>(u_input.b, 0u) >> (var_0.yz % vec2<u32>(32u))) ^ abs(var_0.zz))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-512f, _wgslsmith_f_op_f32(func_2(vec4<f32>(1550f, -216f, 1142f, -850f), Struct_1(390f, u_input.a, true, vec4<f32>(-138f, -237f, -160f, 760f)), Struct_2(false, 140f, u_input.b, Struct_1(-719f, u_input.a, false, vec4<f32>(111f, 770f, 167f, -185f))))), false))), _wgslsmith_dot_vec4_i32(~countOneBits(vec4<i32>(u_input.a, -30019i, -5661i, 26926i)), abs(firstLeadingBit(vec4<i32>(-13977i, -2147483647i, u_input.a, 1i)))), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-496f, 1661f, 1392f, -507f)))));
    let var_2 = Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.b - var_1.d.d.x), -1770f) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.d.d.x - var_1.b)))), var_1.d.b, false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(546f, 2798f, -467f, 196f) - var_1.d.d)))));
    var_1 = Struct_2(var_2.a.b > _wgslsmith_div_i32(~abs(var_2.a.b), -func_3(-5783i, Struct_1(var_1.d.a, u_input.a, var_2.a.c, var_2.a.d))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.d.a, var_1.b)), abs(_wgslsmith_mod_u32(9107u, max(u_input.b, var_1.c)) >> (1u % 32u)), var_2.a);
    var var_3 = 856f;
    return var_2.a;
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2) -> Struct_1 {
    global1 = array<vec2<u32>, 12>();
    var var_0 = Struct_3(func_1());
    var_0 = Struct_3(arg_2.d);
    var_0 = Struct_3(arg_0);
    global2 = array<u32, 19>();
    return arg_2.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(720f * 1365f)))))), Struct_2(!(!all(vec3<bool>(true, false, true))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-1835f)))), _wgslsmith_add_u32(1u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 5805u, 0u), vec3<u32>(u_input.b, global2[_wgslsmith_index_u32(u_input.b, 19u)], u_input.b)) % 32u), _wgslsmith_mult_u32(0u | global2[_wgslsmith_index_u32(57485u, 19u)], 54647u)), Struct_1(-239f, ~(~u_input.a), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(845f, 432f, 2609f, -1170f), vec4<f32>(823f, 1000f, 578f, -421f), vec4<bool>(false, false, false, false)))))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(var_0.d.x))))), 2511i, false | var_0.c, func_1().d);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0.d.x, true))) - _wgslsmith_f_op_f32(ceil(-954f))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-559f))) + 588f))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.d.wxx * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(var_1.a + -1382f), _wgslsmith_f_op_f32(791f * 1324f), _wgslsmith_f_op_f32(-var_1.d.x)), func_1().d.zzx, all(!vec4<bool>(var_1.c, var_0.c, var_1.c, var_1.c))))));
    var var_4 = Struct_2(0u <= _wgslsmith_sub_u32(1u, firstTrailingBit(min(u_input.b, 1u))), -647f, abs(select(1071u, max(~742u, _wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(4294967295u, 17u)], global0[_wgslsmith_index_u32(0u, 17u)])), true)), func_1());
    let x = u_input.a;
    s_output = StorageBuffer(~global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(abs(var_4.c), 4294967295u, _wgslsmith_sub_u32(51594u, 1u)), 12u)]);
}

