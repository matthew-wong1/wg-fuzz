struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec2<i32>,
    d: Struct_2,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec3<f32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32> = array<f32, 32>(1857f, 814f, 256f, 896f, -186f, -468f, 1000f, 636f, 724f, -309f, -1478f, 630f, -857f, -1486f, -174f, 1000f, -393f, -601f, 969f, 528f, -2331f, -1014f, -755f, 1749f, -117f, 1413f, -118f, 667f, 1126f, 1000f, 779f, -116f);

var<private> global1: array<f32, 24>;

var<private> global2: vec3<u32>;

var<private> global3: Struct_2 = Struct_2(5948i, Struct_1(424f, vec2<bool>(false, true), true, false));

var<private> global4: vec4<i32> = vec4<i32>(-1i, 16996i, 37718i, i32(-2147483648));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: u32, arg_3: Struct_1) -> u32 {
    let var_0 = global4.wxw;
    var var_1 = global0[_wgslsmith_index_u32(u_input.c.x, 32u)];
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1467f))) + -1559f) + _wgslsmith_f_op_f32(select(1114f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.a + arg_0.a), _wgslsmith_f_op_f32(floor(-104f)))), arg_1.a.b.c))), !global3.b.b, !(_wgslsmith_f_op_f32(-166f * arg_1.e.a) >= _wgslsmith_f_op_f32(1073f + _wgslsmith_f_op_f32(-259f * 824f))), -1679f < _wgslsmith_f_op_f32(arg_3.a - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.a), -1578f))));
    let var_3 = !(!select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, arg_0.c, false), vec3<bool>(false, false, false), vec3<bool>(arg_1.c.b.x, arg_0.d, global3.b.c)), false), select(!vec3<bool>(var_2.b.x, arg_0.b.x, arg_1.e.c), select(vec3<bool>(true, true, var_2.c), vec3<bool>(true, false, true), vec3<bool>(var_2.b.x, false, true)), !vec3<bool>(false, var_2.c, global3.b.d)), true));
    var var_4 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(507f)))), _wgslsmith_f_op_f32(-arg_0.a)));
    return global2.x;
}

fn func_2(arg_0: vec2<bool>) -> Struct_2 {
    global0 = array<f32, 32>();
    var var_0 = abs(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_sub_u32(global2.x, global2.x), abs(0u), _wgslsmith_dot_vec3_u32(vec3<u32>(30286u, 0u, global2.x), vec3<u32>(50531u, global2.x, 55313u))) ^ vec4<u32>(_wgslsmith_div_u32(0u, 9214u), func_3(Struct_1(258f, arg_0, false, arg_0.x), Struct_3(Struct_2(-1i, Struct_1(-345f, vec2<bool>(global3.b.c, true), arg_0.x, false)), Struct_2(u_input.a.x, global3.b), Struct_1(global1[_wgslsmith_index_u32(u_input.c.x, 24u)], arg_0, false, arg_0.x), Struct_1(516f, vec2<bool>(arg_0.x, arg_0.x), global3.b.c, global3.b.b.x), global3.b), u_input.b.x, global3.b), reverseBits(71315u), global2.x), ~(~(~vec4<u32>(u_input.b.x, u_input.b.x, global2.x, 7433u)))));
    let var_1 = firstLeadingBit(1i);
    let var_2 = vec2<bool>(any(vec3<bool>(false, true, arg_0.x)) && select(global3.b.d, false, all(!vec4<bool>(global3.b.b.x, global3.b.c, global3.b.c, false))), any(select(vec2<bool>(global3.b.d, !arg_0.x), vec2<bool>(arg_0.x, u_input.b.x >= 4294967295u), vec2<bool>(!arg_0.x, arg_0.x))));
    var var_3 = ~(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.x, u_input.b.x), ~vec2<u32>(var_0.x, var_0.x))));
    return Struct_2(~(i32(-1i) * -countOneBits(-56653i)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(361f))), global3.b.b, !any(vec4<bool>(global3.b.d, var_2.x, var_2.x, global3.b.c)) && true, !select(any(vec4<bool>(var_2.x, true, true, true)), true, all(vec4<bool>(global3.b.c, global3.b.d, false, arg_0.x)))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: Struct_3) -> Struct_1 {
    global4 = u_input.a;
    var var_0 = arg_0.e.e.b.x;
    global3 = Struct_2(global3.a, func_2(select(!(!global3.b.b), select(vec2<bool>(arg_1.d.b.b.x, true), select(global3.b.b, arg_2.c.b, true), vec2<bool>(true, true)), select(true, arg_1.e.b.b.d, arg_0.a.d) || !arg_0.d.b.b.x)).b);
    var var_1 = arg_1.e.a;
    global3 = arg_0.d;
    return Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -471f), arg_0.d.b.b, !arg_1.a.b.x, false);
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(Struct_4(global3.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(174f, global3.b.a, -343f)) - vec3<f32>(-152f, 2159f, global1[_wgslsmith_index_u32(0u, 24u)])), u_input.d, Struct_2(max(-2147483647i, global4.x), global3.b), Struct_3(func_2(!vec2<bool>(true, global3.b.d)), Struct_2(-25212i, Struct_1(global3.b.a, global3.b.b, global3.b.c, false)), func_2(!global3.b.b).b, global3.b, global3.b)), Struct_4(global3.b, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(global2.x, 32u)], global1[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(global2.x, 32u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(28221u, 24u)], 192f, 1640f) - vec3<f32>(global0[_wgslsmith_index_u32(1u, 32u)], global1[_wgslsmith_index_u32(u_input.c.x, 24u)], -821f)))), u_input.a.wx, func_2(global3.b.b), Struct_3(Struct_2(select(29713i, 2147483647i, false), global3.b), Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(global3.a, global4.x, global3.a), u_input.a.xzx), global3.b), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -423f), global3.b.b, global3.b.c & false, all(vec4<bool>(global3.b.b.x, true, global3.b.c, false))), global3.b, Struct_1(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(45937u, 32u)])), func_2(global3.b.b).b.b, false && global3.b.d, true))), Struct_3(Struct_2(firstTrailingBit(abs(189i)), Struct_1(_wgslsmith_f_op_f32(813f + global3.b.a), select(global3.b.b, global3.b.b, vec2<bool>(true, false)), -1165f == global1[_wgslsmith_index_u32(global2.x, 24u)], false)), func_2(!(!global3.b.b)), global3.b, global3.b, func_2(select(select(global3.b.b, global3.b.b, global3.b.b.x), vec2<bool>(true, true), true)).b));
    global1 = array<f32, 24>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, -268f)));
    let var_2 = Struct_4(Struct_1(-343f, vec2<bool>(func_4(Struct_4(var_0, vec3<f32>(-517f, 1803f, 1962f), global4.wx, Struct_2(1i, Struct_1(var_0.a, var_0.b, var_0.b.x, var_0.d)), Struct_3(Struct_2(1188i, var_0), Struct_2(-79519i, Struct_1(global3.b.a, global3.b.b, false, global3.b.b.x)), Struct_1(1098f, vec2<bool>(false, true), global3.b.c, global3.b.c), Struct_1(-1987f, vec2<bool>(false, global3.b.b.x), var_0.c, var_0.c), var_0)), Struct_4(global3.b, vec3<f32>(3981f, global0[_wgslsmith_index_u32(global2.x, 32u)], var_0.a), vec2<i32>(global3.a, global3.a), Struct_2(global4.x, Struct_1(622f, vec2<bool>(true, false), true, true)), Struct_3(Struct_2(global4.x, Struct_1(global1[_wgslsmith_index_u32(u_input.b.x, 24u)], vec2<bool>(var_0.d, true), true, false)), Struct_2(-1i, Struct_1(410f, var_0.b, var_0.d, false)), var_0, Struct_1(-517f, var_0.b, false, global3.b.d), global3.b)), Struct_3(Struct_2(16761i, Struct_1(global3.b.a, global3.b.b, true, global3.b.d)), Struct_2(u_input.d.x, Struct_1(-344f, var_0.b, global3.b.c, true)), global3.b, global3.b, global3.b)).b.x, all(!vec2<bool>(false, var_0.d))), any(vec4<bool>(var_0.c, true, false, var_0.b.x)) | (49673u != global2.x), var_0.b.x), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b.x, 24u)] * 1463f), _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(global2.x, 32u)])), _wgslsmith_f_op_f32(step(-1000f, var_0.a)))))), max(select(vec2<i32>(-1i, 24385i), _wgslsmith_mult_vec2_i32(u_input.d, global4.xw), true) ^ u_input.a.xz, vec2<i32>(~u_input.d.x, 2147483647i)), Struct_2(~global4.x, global3.b), Struct_3(func_2(vec2<bool>(u_input.b.x == global2.x, var_0.c)), func_2(select(select(var_0.b, global3.b.b, true), var_0.b, vec2<bool>(false, global3.b.c))), var_0, var_0, Struct_1(564f, func_4(Struct_4(Struct_1(global1[_wgslsmith_index_u32(36966u, 24u)], vec2<bool>(true, global3.b.b.x), false, global3.b.c), vec3<f32>(global3.b.a, global1[_wgslsmith_index_u32(global2.x, 24u)], -1305f), vec2<i32>(-11339i, -2147483647i), Struct_2(global4.x, global3.b), Struct_3(Struct_2(2147483647i, global3.b), Struct_2(global4.x, Struct_1(1402f, vec2<bool>(false, var_0.c), true, false)), Struct_1(-1247f, global3.b.b, false, false), Struct_1(global1[_wgslsmith_index_u32(40682u, 24u)], var_0.b, global3.b.d, var_0.c), var_0)), Struct_4(var_0, vec3<f32>(295f, global3.b.a, var_0.a), vec2<i32>(global4.x, global4.x), Struct_2(u_input.a.x, global3.b), Struct_3(Struct_2(2147483647i, global3.b), Struct_2(global4.x, Struct_1(global1[_wgslsmith_index_u32(u_input.c.x, 24u)], vec2<bool>(true, false), var_0.c, global3.b.b.x)), Struct_1(-432f, var_0.b, var_0.b.x, false), Struct_1(global1[_wgslsmith_index_u32(62471u, 24u)], vec2<bool>(false, var_0.b.x), true, var_0.c), Struct_1(1674f, var_0.b, global3.b.d, true))), Struct_3(Struct_2(33244i, global3.b), Struct_2(u_input.d.x, Struct_1(global1[_wgslsmith_index_u32(u_input.b.x, 24u)], global3.b.b, var_0.b.x, false)), var_0, global3.b, global3.b)).b, !(2147483647i == global4.x), global3.b.d)));
    let var_3 = Struct_2(-34400i, func_2(!global3.b.b).b);
    return var_2.e.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a << (abs(vec4<u32>(~13613u, (u_input.c.x << (92782u % 32u)) << (_wgslsmith_clamp_u32(global2.x, 0u, 20877u) % 32u), _wgslsmith_sub_u32(~global2.x, ~global2.x), 43049u << (global2.x % 32u))) % vec4<u32>(32u));
    var var_1 = Struct_2(~var_0.x, func_1());
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1028f), global1[_wgslsmith_index_u32(u_input.b.x, 24u)]), var_1.b.a, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global2.x, min(~u_input.b.x, global2.x)), 24u)]));
    global2 = ~firstLeadingBit(max(vec3<u32>(18496u, abs(u_input.b.x), 1u), ~select(vec3<u32>(u_input.b.x, 27401u, global2.x), u_input.b, global3.b.b.x)));
    var var_3 = vec2<bool>(true, true);
    let var_4 = var_1.b.b;
    var_1 = Struct_2(var_0.x, global3.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.yzy, global2.x, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(var_2.yxz, vec3<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c.x, 24u)] + -729f), func_1().a, func_4(Struct_4(Struct_1(945f, vec2<bool>(var_4.x, true), var_1.b.c, var_3.x), vec3<f32>(-1000f, global0[_wgslsmith_index_u32(u_input.c.x, 32u)], global3.b.a), var_0.yz, Struct_2(1844i, Struct_1(var_2.x, var_1.b.b, true, var_4.x)), Struct_3(Struct_2(28993i, var_1.b), Struct_2(u_input.d.x, var_1.b), Struct_1(var_1.b.a, vec2<bool>(false, var_3.x), var_3.x, var_1.b.b.x), global3.b, Struct_1(-1000f, global3.b.b, false, var_1.b.b.x))), Struct_4(var_1.b, var_2.xxw, vec2<i32>(-33943i, 2147483647i), Struct_2(var_0.x, Struct_1(1274f, vec2<bool>(var_1.b.c, global3.b.c), var_1.b.b.x, var_3.x)), Struct_3(Struct_2(1i, Struct_1(global0[_wgslsmith_index_u32(1u, 32u)], vec2<bool>(true, var_1.b.d), var_3.x, var_1.b.d)), Struct_2(15001i, Struct_1(global0[_wgslsmith_index_u32(1u, 32u)], vec2<bool>(true, true), global3.b.d, true)), var_1.b, Struct_1(var_2.x, vec2<bool>(true, global3.b.b.x), var_4.x, var_3.x), Struct_1(1180f, vec2<bool>(true, var_3.x), var_4.x, var_1.b.d))), Struct_3(Struct_2(42734i, var_1.b), Struct_2(u_input.a.x, Struct_1(global0[_wgslsmith_index_u32(global2.x, 32u)], global3.b.b, var_1.b.c, var_4.x)), Struct_1(-1782f, vec2<bool>(var_1.b.c, false), var_3.x, var_1.b.d), Struct_1(global3.b.a, global3.b.b, global3.b.b.x, true), Struct_1(874f, vec2<bool>(true, var_4.x), true, global3.b.b.x))).a))))), -446f, _wgslsmith_f_op_vec2_f32(var_2.yw + var_2.xz));
}

