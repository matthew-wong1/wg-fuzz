struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec2<f32>;

var<private> global2: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(vec4<bool>(true, true, true, true), Struct_1(vec2<i32>(2147483647i, 0i), vec3<i32>(-1i, -1i, 1i)), vec2<bool>(true, true)), Struct_2(vec4<bool>(false, false, false, true), Struct_1(vec2<i32>(48710i, i32(-2147483648)), vec3<i32>(0i, 1i, -41543i)), vec2<bool>(false, false)), Struct_2(vec4<bool>(true, false, false, false), Struct_1(vec2<i32>(-70074i, 1i), vec3<i32>(20344i, 1267i, 33279i)), vec2<bool>(false, true)), Struct_2(vec4<bool>(false, true, false, false), Struct_1(vec2<i32>(37175i, 1i), vec3<i32>(-1i, i32(-2147483648), 19471i)), vec2<bool>(true, false)), Struct_2(vec4<bool>(true, true, false, false), Struct_1(vec2<i32>(37154i, -1i), vec3<i32>(-69648i, i32(-2147483648), 1i)), vec2<bool>(false, true)), Struct_2(vec4<bool>(true, false, true, true), Struct_1(vec2<i32>(0i, 4786i), vec3<i32>(4609i, -1i, 28062i)), vec2<bool>(false, true)), Struct_2(vec4<bool>(true, true, false, false), Struct_1(vec2<i32>(2147483647i, -1i), vec3<i32>(7030i, 1i, 20371i)), vec2<bool>(true, false)), Struct_2(vec4<bool>(true, false, true, true), Struct_1(vec2<i32>(1i, -1i), vec3<i32>(-44434i, 25139i, -1i)), vec2<bool>(false, true)), Struct_2(vec4<bool>(true, false, false, false), Struct_1(vec2<i32>(21603i, 72559i), vec3<i32>(-39884i, -804i, i32(-2147483648))), vec2<bool>(true, true)), Struct_2(vec4<bool>(false, false, false, false), Struct_1(vec2<i32>(i32(-2147483648), -34811i), vec3<i32>(-58057i, -33111i, 68986i)), vec2<bool>(true, false)), Struct_2(vec4<bool>(true, false, true, true), Struct_1(vec2<i32>(-26075i, 57420i), vec3<i32>(13394i, 2147483647i, 7612i)), vec2<bool>(true, true)), Struct_2(vec4<bool>(true, false, false, false), Struct_1(vec2<i32>(-15789i, 2147483647i), vec3<i32>(0i, 1i, -53000i)), vec2<bool>(true, true)), Struct_2(vec4<bool>(false, false, true, false), Struct_1(vec2<i32>(-1i, -1i), vec3<i32>(-10113i, 2147483647i, 1i)), vec2<bool>(true, true)), Struct_2(vec4<bool>(true, true, true, false), Struct_1(vec2<i32>(-1i, -1i), vec3<i32>(1i, 1i, 1i)), vec2<bool>(true, false)), Struct_2(vec4<bool>(false, true, false, false), Struct_1(vec2<i32>(1i, -6757i), vec3<i32>(-25078i, 2147483647i, 42542i)), vec2<bool>(true, true)), Struct_2(vec4<bool>(true, true, true, true), Struct_1(vec2<i32>(2147483647i, 1i), vec3<i32>(-1i, 10072i, -15582i)), vec2<bool>(true, true)), Struct_2(vec4<bool>(false, true, true, true), Struct_1(vec2<i32>(16468i, 2147483647i), vec3<i32>(8475i, 0i, 0i)), vec2<bool>(false, true)), Struct_2(vec4<bool>(false, false, false, true), Struct_1(vec2<i32>(-31180i, i32(-2147483648)), vec3<i32>(22679i, -49955i, 28911i)), vec2<bool>(false, false)), Struct_2(vec4<bool>(true, true, true, true), Struct_1(vec2<i32>(-1i, 1i), vec3<i32>(-26826i, -23749i, 2147483647i)), vec2<bool>(true, true)), Struct_2(vec4<bool>(false, true, false, true), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), vec3<i32>(0i, 4202i, -42331i)), vec2<bool>(false, true)), Struct_2(vec4<bool>(false, false, true, true), Struct_1(vec2<i32>(20701i, 28833i), vec3<i32>(-1i, 1i, -24469i)), vec2<bool>(false, true)), Struct_2(vec4<bool>(true, false, false, true), Struct_1(vec2<i32>(-4409i, 7774i), vec3<i32>(45190i, 7957i, 51340i)), vec2<bool>(true, true)), Struct_2(vec4<bool>(false, false, false, true), Struct_1(vec2<i32>(0i, 14074i), vec3<i32>(0i, i32(-2147483648), 10478i)), vec2<bool>(true, false)), Struct_2(vec4<bool>(true, true, false, true), Struct_1(vec2<i32>(-1i, 79342i), vec3<i32>(2917i, 1i, 20807i)), vec2<bool>(true, false)), Struct_2(vec4<bool>(true, false, true, true), Struct_1(vec2<i32>(-18179i, -14004i), vec3<i32>(i32(-2147483648), 0i, -1i)), vec2<bool>(true, false)), Struct_2(vec4<bool>(false, true, true, false), Struct_1(vec2<i32>(1i, 36528i), vec3<i32>(-12557i, -14097i, 34207i)), vec2<bool>(true, true)), Struct_2(vec4<bool>(false, true, false, false), Struct_1(vec2<i32>(-33002i, 0i), vec3<i32>(19066i, 31079i, 2147483647i)), vec2<bool>(false, true)));

var<private> global3: array<vec4<f32>, 20> = array<vec4<f32>, 20>(vec4<f32>(1221f, 178f, -769f, -1585f), vec4<f32>(351f, -502f, 1022f, -361f), vec4<f32>(365f, -890f, 799f, -1416f), vec4<f32>(788f, 1000f, -932f, -228f), vec4<f32>(-1190f, -1000f, -734f, 1109f), vec4<f32>(-2115f, 207f, -1163f, 636f), vec4<f32>(217f, 1687f, -393f, -831f), vec4<f32>(-1000f, 2211f, 483f, -1632f), vec4<f32>(-1041f, -775f, -1447f, -2495f), vec4<f32>(2610f, -858f, 2446f, -841f), vec4<f32>(576f, 1942f, 1000f, 340f), vec4<f32>(-771f, 722f, -1496f, 392f), vec4<f32>(-195f, 515f, -1306f, 537f), vec4<f32>(-1000f, -776f, -1000f, 1045f), vec4<f32>(-848f, 779f, -1044f, 1000f), vec4<f32>(-114f, 905f, -1000f, 983f), vec4<f32>(-461f, -1862f, 210f, 2323f), vec4<f32>(644f, -314f, -922f, -1939f), vec4<f32>(-1269f, -1000f, 1467f, -333f), vec4<f32>(569f, 570f, 1108f, 503f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: f32) -> Struct_1 {
    global2 = array<Struct_2, 27>();
    var var_0 = global2[_wgslsmith_index_u32(0u, 27u)];
    let var_1 = var_0.c;
    global1 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(global1.x + global1.x))));
    global2 = array<Struct_2, 27>();
    return Struct_1(firstLeadingBit(vec2<i32>(select(var_0.b.a.x >> (u_input.b.x % 32u), 8615i, all(vec4<bool>(true, true, false, true))), u_input.a << (u_input.b.x % 32u))), var_0.b.b);
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: vec4<f32>) -> Struct_1 {
    global3 = array<vec4<f32>, 20>();
    global2 = array<Struct_2, 27>();
    var var_0 = arg_2.xxy;
    return Struct_1(~(~vec2<i32>(-1i, _wgslsmith_div_i32(2699i, u_input.a))), arg_1.b.b);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: u32) -> Struct_2 {
    var var_0 = Struct_2(!vec4<bool>(all(arg_1), !(global1.x != global1.x), !arg_1.x, 35771u <= arg_3), func_2(_wgslsmith_f_op_f32(max(594f, _wgslsmith_f_op_f32(-1000f + -1016f)))), vec2<bool>(arg_1.x, !(!(!arg_1.x))));
    return Struct_2(var_0.a, arg_2, !select(vec2<bool>(false && var_0.c.x, arg_1.x), select(arg_1.wx, arg_1.yx, !var_0.a.yz), false));
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: Struct_2, arg_3: u32) -> Struct_2 {
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(954f, global1.x) + vec2<f32>(-501f, global1.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, -1232f) + vec2<f32>(global1.x, -2195f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(global1.x)), global1.x) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(648f, 126f)))), arg_2.a.x)));
    let var_0 = func_3(_wgslsmith_mult_u32(abs(1u), 68343u), Struct_2(arg_2.a, Struct_1(vec2<i32>(arg_2.b.b.x, u_input.a), arg_2.b.b), arg_2.a.zx), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(global1.x)), _wgslsmith_f_op_f32(select(global1.x, 701f, arg_2.a.x)), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(floor(global1.x)))))).b;
    var var_1 = firstLeadingBit(_wgslsmith_dot_vec2_i32(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1119f)) + global1.x)).b.zz, vec2<i32>(_wgslsmith_dot_vec3_i32(func_3(u_input.b.x, global2[_wgslsmith_index_u32(17894u, 27u)], global3[_wgslsmith_index_u32(u_input.b.x, 20u)]).b, ~vec3<i32>(1i, 53586i, u_input.a)), 5919i)));
    global1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-311f, global1.x) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-849f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))))));
    var var_2 = arg_2.c.x;
    return arg_2;
}

fn func_1() -> vec2<bool> {
    let var_0 = func_5(~(firstTrailingBit(reverseBits(-1i)) ^ 3998i), 11853i, func_4(func_3(~u_input.b.x, Struct_2(vec4<bool>(false, false, false, true), func_2(755f), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false))), global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(61057u, 71330u), vec2<u32>(1u, 15582u)), 20u)]), select(vec4<bool>(true, true, false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), false)), true), Struct_1(vec2<i32>(-u_input.a, countOneBits(u_input.a)), abs(vec3<i32>(1i, u_input.a, -1i)) << ((u_input.b << (u_input.b % vec3<u32>(32u))) % vec3<u32>(32u))), u_input.b.x), (~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 55885u), vec2<u32>(121922u, 73969u)) | _wgslsmith_mult_u32(u_input.b.x, abs(33537u))) | u_input.b.x);
    let var_1 = Struct_2(var_0.a, Struct_1(-(~var_0.b.b.zz), vec3<i32>(firstLeadingBit(-26433i), _wgslsmith_clamp_i32(var_0.b.a.x, abs(0i), u_input.a), _wgslsmith_mod_i32(~var_0.b.b.x, var_0.b.a.x))), vec2<bool>(any(vec4<bool>(false, false, 56439u > u_input.b.x, any(var_0.a.wwy))), false));
    let var_2 = Struct_2(!var_0.a, var_0.b, var_0.a.yw);
    global3 = array<vec4<f32>, 20>();
    let var_3 = _wgslsmith_dot_vec2_i32((var_2.b.a << (firstTrailingBit(u_input.b.zy) % vec2<u32>(32u))) << (vec2<u32>(28078u, 87665u) % vec2<u32>(32u)), var_0.b.a);
    return var_0.a.xy;
}

fn func_6(arg_0: Struct_2, arg_1: i32, arg_2: f32, arg_3: vec4<i32>) -> StorageBuffer {
    var var_0 = Struct_2(func_5(firstTrailingBit(firstTrailingBit(-u_input.a)), -2147483647i, func_5(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 35807i), ~vec2<i32>(u_input.a, arg_3.x)), func_3(firstLeadingBit(3453u), Struct_2(vec4<bool>(arg_0.c.x, arg_0.a.x, arg_0.a.x, false), Struct_1(arg_3.wy, vec3<i32>(arg_0.b.b.x, arg_0.b.a.x, -21433i)), arg_0.a.zx), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, arg_2, global1.x, -1092f))).a.x, arg_0, 51325u), ~_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(15877u, u_input.b.x)), _wgslsmith_div_vec2_u32(u_input.b.zx, u_input.b.xx))).a, arg_0.b, select(select(func_4(func_5(0i, arg_3.x, Struct_2(arg_0.a, Struct_1(vec2<i32>(-37047i, 0i), arg_0.b.b), vec2<bool>(true, false)), 35265u).b, !vec4<bool>(false, arg_0.c.x, true, arg_0.c.x), Struct_1(vec2<i32>(arg_1, arg_1), vec3<i32>(-2147483647i, -1i, 2147483647i)), _wgslsmith_dot_vec4_u32(vec4<u32>(1175u, u_input.b.x, 1u, u_input.b.x), vec4<u32>(u_input.b.x, 4294967295u, 0u, u_input.b.x))).a.yw, vec2<bool>(-51984i < arg_0.b.a.x, true), func_4(arg_0.b, arg_0.a, arg_0.b, 27374u).c), !arg_0.a.yw, vec2<bool>(!arg_0.a.x, false)));
    let var_1 = func_3(~u_input.b.x, arg_0, vec4<f32>(global1.x, global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(877f, -1179f))), global1.x));
    var var_2 = func_5(u_input.a, -_wgslsmith_dot_vec2_i32(arg_0.b.a, reverseBits(reverseBits(vec2<i32>(u_input.a, arg_1)))), func_4(func_3(_wgslsmith_sub_u32(~16620u, abs(85209u)), func_5(-22508i, min(arg_1, 1087i), arg_0, u_input.b.x), global3[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.b.x, 4294967295u), 20u)]), func_4(func_4(var_1, !var_0.a, func_4(Struct_1(arg_0.b.b.zz, var_0.b.b), var_0.a, arg_0.b, 0u).b, 47066u >> (u_input.b.x % 32u)).b, vec4<bool>(true, !arg_0.a.x, var_0.a.x | arg_0.c.x, all(arg_0.a.zzz)), Struct_1(var_0.b.a, vec3<i32>(arg_0.b.a.x, 1i, -1i)), u_input.b.x).a, func_5(1i, var_0.b.b.x, Struct_2(var_0.a, func_4(arg_0.b, arg_0.a, Struct_1(arg_3.yx, arg_0.b.b), u_input.b.x).b, vec2<bool>(false, false)), u_input.b.x | u_input.b.x).b, 1u), 0u).b;
    var var_3 = select((arg_3.x | ~reverseBits(13208i)) < -var_2.b.x, (var_0.c.x && false) || (45500i >= _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 2147483647i), ~var_2.b.xz)), true | (any(vec4<bool>(var_0.c.x, false, var_0.c.x, arg_0.c.x)) != var_0.c.x));
    return StorageBuffer(global1.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(arg_2, -1041f), vec2<f32>(-1804f, 1000f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 1045f)), arg_0.c)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, 1114f) - vec2<f32>(721f, -1000f)), vec2<f32>(-636f, global1.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x - -2005f) + 813f), _wgslsmith_f_op_f32(abs(global1.x)));
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-234f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-158f + -1000f), _wgslsmith_f_op_f32(global1.x * -1304f))))), -2227f));
    let x = u_input.a;
    s_output = func_6(Struct_2(select(vec4<bool>(u_input.b.x < 0u, global1.x >= -1292f, any(vec4<bool>(false, true, true, false)), all(vec2<bool>(true, false))), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true)), Struct_1(vec2<i32>(-1i, reverseBits(-2147483647i)), vec3<i32>(34201i, u_input.a, _wgslsmith_sub_i32(u_input.a, u_input.a))), select(vec2<bool>(true, true), !func_1(), vec2<bool>(true, any(vec4<bool>(false, false, false, false))))), u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), firstLeadingBit(min(~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(22203i, 2147483647i, u_input.a, u_input.a), vec4<i32>(-8779i, 19643i, u_input.a, u_input.a)), vec4<i32>(u_input.a, _wgslsmith_sub_i32(u_input.a, -1i), -31389i, 2147483647i))));
}

