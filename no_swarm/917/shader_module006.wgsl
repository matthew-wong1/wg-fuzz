struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: vec2<bool>,
    d: u32,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: bool,
    d: vec3<bool>,
}

struct Struct_5 {
    a: bool,
    b: u32,
    c: Struct_3,
    d: vec2<bool>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 31> = array<vec4<bool>, 31>(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true));

var<private> global1: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(vec2<u32>(1u, 1u), true, vec2<bool>(false, true), 28270u, 4294967295u), Struct_2(vec2<u32>(14446u, 1u), true, vec2<bool>(true, true), 0u, 22487u), Struct_2(vec2<u32>(70803u, 4294967295u), true, vec2<bool>(false, false), 58604u, 27975u), Struct_2(vec2<u32>(42137u, 4294967295u), true, vec2<bool>(true, true), 0u, 0u), Struct_2(vec2<u32>(0u, 0u), true, vec2<bool>(true, false), 1u, 0u), Struct_2(vec2<u32>(10084u, 1u), false, vec2<bool>(false, false), 1u, 4294967295u), Struct_2(vec2<u32>(0u, 4294967295u), false, vec2<bool>(false, false), 16017u, 13122u), Struct_2(vec2<u32>(56322u, 48257u), true, vec2<bool>(false, false), 25730u, 38851u), Struct_2(vec2<u32>(35866u, 4294967295u), false, vec2<bool>(true, true), 32734u, 0u), Struct_2(vec2<u32>(19686u, 43132u), false, vec2<bool>(true, true), 14464u, 1u));

var<private> global2: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(vec2<u32>(4294967295u, 45611u), true, vec2<bool>(false, false), 4294967295u, 45906u), Struct_2(vec2<u32>(24360u, 0u), false, vec2<bool>(true, false), 20916u, 0u), Struct_2(vec2<u32>(4294967295u, 0u), true, vec2<bool>(false, false), 17116u, 53405u), Struct_2(vec2<u32>(51109u, 24678u), true, vec2<bool>(true, false), 4294967295u, 0u), Struct_2(vec2<u32>(0u, 4294967295u), false, vec2<bool>(true, true), 4294967295u, 0u), Struct_2(vec2<u32>(1u, 4294967295u), false, vec2<bool>(false, false), 80890u, 1u), Struct_2(vec2<u32>(34706u, 52767u), true, vec2<bool>(true, true), 0u, 11350u), Struct_2(vec2<u32>(10967u, 22251u), false, vec2<bool>(false, false), 4294967295u, 4294967295u), Struct_2(vec2<u32>(0u, 90928u), false, vec2<bool>(false, true), 0u, 4294967295u), Struct_2(vec2<u32>(3486u, 0u), true, vec2<bool>(false, false), 0u, 1u), Struct_2(vec2<u32>(33356u, 1u), false, vec2<bool>(false, true), 4294967295u, 21676u), Struct_2(vec2<u32>(67972u, 0u), true, vec2<bool>(false, true), 4294967295u, 15348u), Struct_2(vec2<u32>(47983u, 0u), false, vec2<bool>(false, false), 1u, 63228u), Struct_2(vec2<u32>(17197u, 104203u), false, vec2<bool>(false, true), 4294967295u, 6734u), Struct_2(vec2<u32>(4294967295u, 1u), true, vec2<bool>(true, false), 8696u, 1888u), Struct_2(vec2<u32>(20785u, 1u), false, vec2<bool>(false, true), 15887u, 4294967295u), Struct_2(vec2<u32>(0u, 20169u), false, vec2<bool>(false, true), 75984u, 0u), Struct_2(vec2<u32>(36605u, 4294967295u), false, vec2<bool>(false, true), 55247u, 0u), Struct_2(vec2<u32>(2520u, 4294967295u), false, vec2<bool>(true, false), 55372u, 1u), Struct_2(vec2<u32>(53243u, 0u), false, vec2<bool>(false, false), 1u, 3623u), Struct_2(vec2<u32>(4294967295u, 4294967295u), true, vec2<bool>(false, true), 37398u, 74698u), Struct_2(vec2<u32>(0u, 1u), false, vec2<bool>(false, false), 0u, 1u));

var<private> global3: array<vec2<u32>, 3>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: u32, arg_2: vec3<bool>) -> bool {
    let var_0 = -849f;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(var_0, var_0), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) - vec2<f32>(-1000f, -950f))))))) * _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-798f, -870f))), var_0), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0, -821f), vec2<f32>(-204f, var_0), vec2<bool>(arg_0.a.b, true)))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-922f, -702f)), vec2<f32>(var_0, var_0))))));
    global1 = array<Struct_2, 10>();
    var var_2 = Struct_4(global2[_wgslsmith_index_u32(u_input.d, 22u)], true, !(arg_1 == (_wgslsmith_div_u32(76245u, arg_1) | abs(u_input.a.x))), arg_2);
    var var_3 = ~(~(~global3[_wgslsmith_index_u32(44908u, 3u)]));
    return !arg_0.a.b;
}

fn func_2(arg_0: Struct_4) -> Struct_1 {
    let var_0 = Struct_4(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(~0u, ~u_input.d | _wgslsmith_mod_u32(55276u, arg_0.a.e)), ~_wgslsmith_mod_u32(~0u, _wgslsmith_div_u32(35505u, u_input.d))), 22u)], (firstTrailingBit(0u) & arg_0.a.d) == 1u, arg_0.a.c.x, vec3<bool>(any(!(!arg_0.d)), arg_0.b, func_3(arg_0, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.e, u_input.d, 1944u), abs(u_input.a)), vec3<bool>(arg_0.a.b, true, true))));
    global0 = array<vec4<bool>, 31>();
    let var_1 = reverseBits(arg_0.a.d);
    let var_2 = select(global0[_wgslsmith_index_u32(countOneBits(~(19225u ^ u_input.d)), 31u)], !vec4<bool>(!var_0.b || arg_0.a.b, arg_0.c, true, arg_0.d.x), true);
    let var_3 = -1i;
    return Struct_1(_wgslsmith_f_op_f32(select(269f, -250f, any(var_2.zy))), countOneBits(4294967295u));
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_3(func_2(Struct_4(Struct_2(u_input.a.xx, true, vec2<bool>(true, false), abs(u_input.d), u_input.a.x), any(vec3<bool>(true, true, true)), u_input.a.x <= ~28904u, vec3<bool>(true, true, true))), -1026f, _wgslsmith_f_op_f32(1072f + -1000f), select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false))), select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false), all(vec3<bool>(true, true, false)))), !select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), true), func_3(Struct_4(global1[_wgslsmith_index_u32(~u_input.a.x, 10u)], true, false, vec3<bool>(false, true, false)), 0u, vec3<bool>(true, true, true))), func_2(Struct_4(global2[_wgslsmith_index_u32(u_input.a.x, 22u)], true, true, select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), all(vec2<bool>(false, false))))));
    global3 = array<vec2<u32>, 3>();
    global0 = array<vec4<bool>, 31>();
    var var_1 = var_0;
    var var_2 = Struct_4(Struct_2(global3[_wgslsmith_index_u32(var_1.a.b, 3u)], all(vec4<bool>(true, any(vec2<bool>(false, true)), var_0.d.x, 37877i > u_input.b.x)), select(vec2<bool>(var_1.d.x, all(vec3<bool>(var_1.d.x, true, var_1.d.x))), select(vec2<bool>(false, true), var_1.d.zy, select(var_1.d.xx, vec2<bool>(false, var_0.d.x), vec2<bool>(var_0.d.x, true))), !select(vec2<bool>(true, var_0.d.x), var_1.d.zy, var_0.d.xx)), var_1.e.b, _wgslsmith_sub_u32(~35824u, ~(~u_input.d))), !(!var_1.d.x), true, var_1.d);
    return func_2(Struct_4(global1[_wgslsmith_index_u32(~64623u, 10u)], var_1.d.x, true, !select(!vec3<bool>(true, var_2.a.b, false), vec3<bool>(var_2.c, true, var_0.d.x), select(var_1.d, vec3<bool>(true, var_1.d.x, false), var_0.d.x))));
}

fn func_4(arg_0: Struct_3) -> Struct_3 {
    global1 = array<Struct_2, 10>();
    let var_0 = global0[_wgslsmith_index_u32(50530u << (arg_0.a.b % 32u), 31u)];
    global2 = array<Struct_2, 22>();
    let var_1 = arg_0;
    global3 = array<vec2<u32>, 3>();
    return var_1;
}

fn func_5(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_5, arg_3: Struct_1) -> Struct_4 {
    let var_0 = arg_2.a;
    var var_1 = global2[_wgslsmith_index_u32(arg_3.b, 22u)];
    var var_2 = func_2(Struct_4(global1[_wgslsmith_index_u32(~var_1.a.x, 10u)], -41809i <= u_input.b.x, 5218u == (~arg_0.a.b ^ 1u), vec3<bool>(arg_0.d.x, true, arg_0.d.x)));
    var var_3 = func_4(Struct_3(func_4(func_4(Struct_3(Struct_1(-932f, 74045u), 100f, var_2.a, vec3<bool>(false, var_1.b, false), Struct_1(var_2.a, var_1.d)))).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -451f))), var_2.a, func_4(Struct_3(func_4(Struct_3(Struct_1(arg_0.e.a, 120485u), arg_0.b, 638f, vec3<bool>(arg_1.x, arg_2.d.x, arg_0.d.x), Struct_1(arg_3.a, 4294967295u))).e, -755f, _wgslsmith_f_op_f32(step(-1107f, var_2.a)), select(arg_2.c.d, arg_0.d, var_1.c.x), Struct_1(-526f, 32524u))).d, func_4(Struct_3(Struct_1(1000f, 9247u), _wgslsmith_f_op_f32(var_2.a * -380f), _wgslsmith_f_op_f32(-arg_2.c.a.a), !vec3<bool>(arg_1.x, arg_0.d.x, false), func_2(Struct_4(global1[_wgslsmith_index_u32(4294967295u, 10u)], false, arg_1.x, vec3<bool>(true, arg_1.x, var_0))))).a));
    return Struct_4(Struct_2(firstLeadingBit(abs(~var_1.a)), !(!all(arg_0.d)), var_3.d.zz, 0u, u_input.d), true, false, arg_0.d);
}

fn func_6(arg_0: u32, arg_1: Struct_4) -> Struct_1 {
    global2 = array<Struct_2, 22>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1391f)), ~(~(arg_1.a.e >> (u_input.a.x % 32u))));
    global2 = array<Struct_2, 22>();
    let var_1 = ~(var_0.b << (arg_0 % 32u));
    var var_2 = Struct_3(Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.a, var_0.a), var_0.a), ~var_1), -677f, -437f, func_5(func_4(func_4(func_4(Struct_3(var_0, -122f, var_0.a, arg_1.d, Struct_1(-1311f, 1u))))), !vec2<bool>(true, !arg_1.d.x), Struct_5(true, arg_0, func_4(Struct_3(Struct_1(-246f, var_1), var_0.a, var_0.a, arg_1.d, Struct_1(686f, 1u))), vec2<bool>(true, true), u_input.b.zw), func_2(func_5(Struct_3(Struct_1(var_0.a, arg_0), -272f, var_0.a, arg_1.d, var_0), vec2<bool>(false, true), Struct_5(arg_1.d.x, 1u, Struct_3(var_0, var_0.a, -1958f, vec3<bool>(arg_1.b, arg_1.c, arg_1.a.c.x), Struct_1(var_0.a, 0u)), vec2<bool>(arg_1.a.b, arg_1.d.x), vec2<i32>(-28893i, 2147483647i)), Struct_1(-1000f, arg_1.a.a.x)))).d, var_0);
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(_wgslsmith_div_u32(~u_input.d, _wgslsmith_sub_u32(u_input.a.x, _wgslsmith_sub_u32(~u_input.d, select(u_input.d, u_input.a.x, true)))), func_5(func_4(Struct_3(func_1(vec2<i32>(-2147483647i, u_input.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -668f), 911f, select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false), Struct_1(507f, 4215u))), vec2<bool>(true, true), Struct_5(any(vec4<bool>(true, false, false, true)), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(u_input.a.x, 1u, u_input.d), func_4(Struct_3(Struct_1(359f, 70300u), 599f, -1491f, vec3<bool>(false, true, false), Struct_1(-1000f, 30240u))).e.b, u_input.a.x), func_4(func_4(Struct_3(Struct_1(1519f, u_input.d), -817f, 539f, vec3<bool>(true, true, true), Struct_1(-1388f, u_input.d)))), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, true)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, u_input.b.x), ~vec2<i32>(1i, 2147483647i), -vec2<i32>(0i, 37678i))), Struct_1(_wgslsmith_f_op_f32(sign(890f)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(26853u, 12709u, u_input.a.x, 11764u), vec4<u32>(u_input.d, 54264u, 52665u, 76887u)))));
    global1 = array<Struct_2, 10>();
    let var_1 = func_5(func_4(func_4(Struct_3(func_6(u_input.a.x, Struct_4(global2[_wgslsmith_index_u32(0u, 22u)], false, false, vec3<bool>(true, true, true))), func_2(Struct_4(global1[_wgslsmith_index_u32(29765u, 10u)], false, true, vec3<bool>(true, false, false))).a, _wgslsmith_f_op_f32(ceil(var_0.a)), func_4(Struct_3(var_0, var_0.a, -724f, vec3<bool>(false, true, false), var_0)).d, var_0))), select(!func_5(Struct_3(Struct_1(var_0.a, 0u), var_0.a, var_0.a, vec3<bool>(false, false, true), Struct_1(-1664f, 124547u)), vec2<bool>(true, true), Struct_5(true, u_input.d, Struct_3(Struct_1(var_0.a, 0u), -835f, var_0.a, vec3<bool>(false, true, false), Struct_1(var_0.a, var_0.b)), vec2<bool>(true, false), u_input.c), func_6(var_0.b, Struct_4(global2[_wgslsmith_index_u32(u_input.a.x, 22u)], false, true, vec3<bool>(true, false, false)))).d.zx, vec2<bool>(true, true), all(vec3<bool>(true, true, true))), Struct_5(false, u_input.d, func_4(func_4(Struct_3(Struct_1(var_0.a, 35866u), var_0.a, -1404f, vec3<bool>(false, true, true), var_0))), select(!func_4(Struct_3(var_0, var_0.a, 282f, vec3<bool>(false, false, true), Struct_1(862f, 0u))).d.zz, vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true))), firstLeadingBit(u_input.c)), var_0).a;
    let var_2 = var_0;
    var var_3 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~40812u, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(var_1.a, global3[_wgslsmith_index_u32((var_1.e << (u_input.a.x % 32u)) >> (~59103u % 32u), 3u)]), ~4294967295u), func_2(Struct_4(Struct_2(vec2<u32>(25128u, 4294967295u), all(vec2<bool>(false, false)), vec2<bool>(true, true), ~36897u, ~u_input.d), var_1.c.x, var_1.c.x, select(vec3<bool>(false, false, true), !vec3<bool>(true, var_1.c.x, var_1.b), true))).b), 3u)];
    global0 = array<vec4<bool>, 31>();
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.a, _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(-776f - -1601f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_0.a, 1359f) - vec3<f32>(313f, -1053f, var_0.a)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-640f, 680f, var_0.a), vec3<f32>(var_2.a, var_2.a, 600f))), vec3<bool>(var_1.b, var_1.b, var_1.b))), vec3<bool>(var_1.b, var_1.c.x, var_1.b)))) + _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_2.a), func_2(Struct_4(var_1, true, var_1.b, vec3<bool>(var_1.c.x, var_1.b, var_1.c.x))).a, -102f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1396f, 497f, var_2.a), vec3<f32>(103f, var_2.a, -1000f)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a, -1786f, 1476f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.a, var_0.a, 814f), vec3<f32>(416f, 839f, -268f))))))));
    var var_5 = vec3<bool>(var_1.b, false, all(!vec4<bool>(true, -402f >= var_2.a, u_input.c.x >= u_input.c.x, !var_1.b)));
    let x = u_input.a;
    s_output = StorageBuffer(max(u_input.b, _wgslsmith_add_vec4_i32(u_input.b, ~(vec4<i32>(15104i, 1i, u_input.c.x, u_input.c.x) | u_input.b))));
}

