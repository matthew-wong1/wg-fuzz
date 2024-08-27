struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: f32,
    c: f32,
    d: i32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 30> = array<vec3<u32>, 30>(vec3<u32>(43269u, 4294967295u, 1296u), vec3<u32>(42048u, 29793u, 21364u), vec3<u32>(1u, 0u, 13331u), vec3<u32>(1u, 1107u, 8931u), vec3<u32>(0u, 35517u, 0u), vec3<u32>(19808u, 4294967295u, 1u), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(47476u, 0u, 15352u), vec3<u32>(0u, 32904u, 1u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(94383u, 4294967295u, 40883u), vec3<u32>(4294967295u, 78114u, 3700u), vec3<u32>(5771u, 4294967295u, 62132u), vec3<u32>(4702u, 90144u, 65129u), vec3<u32>(0u, 35794u, 4294967295u), vec3<u32>(55761u, 3429u, 60111u), vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(1u, 0u, 0u), vec3<u32>(0u, 18317u, 0u), vec3<u32>(1u, 4294967295u, 14092u), vec3<u32>(2905u, 34682u, 26466u), vec3<u32>(75169u, 1u, 0u), vec3<u32>(4294967295u, 56161u, 4294967295u), vec3<u32>(1u, 8080u, 33747u), vec3<u32>(4294967295u, 33141u, 1u), vec3<u32>(34433u, 82201u, 4294967295u), vec3<u32>(4294967295u, 32644u, 4294967295u), vec3<u32>(1u, 4294967295u, 8128u), vec3<u32>(1u, 94381u, 47988u));

var<private> global1: array<vec3<u32>, 22>;

var<private> global2: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec2<u32>(7073u, 2976u), vec3<f32>(178f, -165f, -608f), vec4<f32>(-1042f, 1415f, 1679f, -361f), -1539f, false), Struct_1(vec2<u32>(1u, 6149u), vec3<f32>(1208f, -1465f, 1000f), vec4<f32>(1185f, 460f, 608f, 1294f), -1194f, false), Struct_1(vec2<u32>(26438u, 16375u), vec3<f32>(1263f, 1703f, -1754f), vec4<f32>(-392f, -800f, -274f, 208f), -339f, true), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec3<f32>(829f, -311f, -824f), vec4<f32>(-1000f, 1000f, 1395f, 255f), 551f, true), Struct_1(vec2<u32>(29841u, 4294967295u), vec3<f32>(1277f, -890f, 1901f), vec4<f32>(1061f, 280f, -112f, 263f), -924f, true), Struct_1(vec2<u32>(62776u, 29793u), vec3<f32>(399f, 235f, 246f), vec4<f32>(904f, -1477f, -422f, -1092f), -208f, true), Struct_1(vec2<u32>(4294967295u, 0u), vec3<f32>(1000f, 539f, 439f), vec4<f32>(1000f, 868f, -561f, 335f), -104f, false), Struct_1(vec2<u32>(1u, 1u), vec3<f32>(752f, -232f, -1600f), vec4<f32>(976f, 958f, 1000f, 1483f), 570f, false));

var<private> global3: array<f32, 15>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.d, 15u)]) + 1520f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -797f) + _wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(u_input.d, 15u)])))) - _wgslsmith_f_op_f32(-465f + _wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(35694u | u_input.d, 15u)], _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(60731u, 15u)] - -309f)))))));
    global2 = array<Struct_1, 8>();
    global0 = array<vec3<u32>, 30>();
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-810f, global3[_wgslsmith_index_u32(u_input.d, 15u)], global3[_wgslsmith_index_u32(24687u, 15u)], global3[_wgslsmith_index_u32(67217u, 15u)]), vec4<f32>(global3[_wgslsmith_index_u32(u_input.d, 15u)], var_0, 496f, var_0), false)))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3[_wgslsmith_index_u32(5701u, 15u)], 1080f, 649f, -371f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1134f, var_0, -967f, var_0)), vec4<bool>(true, true, false, false)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, 1727f, global3[_wgslsmith_index_u32(25226u, 15u)], global3[_wgslsmith_index_u32(u_input.d, 15u)]) * vec4<f32>(737f, global3[_wgslsmith_index_u32(4294967295u, 15u)], 109f, 846f)), vec4<f32>(-1493f, var_0, global3[_wgslsmith_index_u32(u_input.d, 15u)], -1341f)) - vec4<f32>(global3[_wgslsmith_index_u32(u_input.d, 15u)], _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 15u)]), _wgslsmith_f_op_f32(max(-332f, var_0)), 2306f)), all(vec2<bool>(u_input.a >= -79342i, false)))), 314f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0))) * global3[_wgslsmith_index_u32(~abs(u_input.d), 15u)])), u_input.b.x, vec4<bool>(true, !(any(vec2<bool>(false, true)) & false), !(any(vec3<bool>(true, true, true)) && (-125f >= var_0)), any(vec4<bool>(any(vec3<bool>(true, false, true)), true, true, any(vec4<bool>(true, false, false, false))))));
    var var_2 = !(!vec2<bool>(!var_1.e.x & all(var_1.e), select(var_1.e.x, var_1.e.x, true)));
    return true;
}

fn func_2() -> vec4<bool> {
    return vec4<bool>(all(vec4<bool>(true, any(vec4<bool>(true, true, true, false)), all(vec4<bool>(true, true, true, false)), any(vec4<bool>(true, false, false, true)))) & all(vec2<bool>(true, true)), all(vec3<bool>(!func_3(), true, true)), countOneBits(u_input.c.x) <= ~(~38370i), true);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: vec4<u32>, arg_3: vec3<u32>) -> u32 {
    global0 = array<vec3<u32>, 30>();
    var var_0 = Struct_3(vec4<f32>(2240f, -1291f, -587f, arg_0.x), 616f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(u_input.d | arg_3.x, 15u)])))), u_input.c.x, !select(func_2(), !(!vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), true));
    global0 = array<vec3<u32>, 30>();
    let var_1 = abs(~_wgslsmith_dot_vec3_u32(countOneBits(max(arg_2.xwy, arg_2.yyx)), ~global1[_wgslsmith_index_u32(~u_input.d, 22u)]));
    let var_2 = var_0.a;
    return 16834u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(((~u_input.d & 5927u) << (_wgslsmith_add_u32(func_1(_wgslsmith_div_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(0u, 15u)], -968f, global3[_wgslsmith_index_u32(u_input.d, 15u)]), vec3<f32>(global3[_wgslsmith_index_u32(u_input.d, 15u)], global3[_wgslsmith_index_u32(u_input.d, 15u)], global3[_wgslsmith_index_u32(u_input.d, 15u)])), vec3<bool>(true, true, true), ~vec4<u32>(2367u, u_input.d, 4294967295u, u_input.d), global0[_wgslsmith_index_u32(46335u, 30u)] & global1[_wgslsmith_index_u32(54980u, 22u)]), _wgslsmith_mult_u32(select(u_input.d, 0u, true), u_input.d)) % 32u)) >> (u_input.d % 32u), 8u)];
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-736f + 1581f)), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(26939u, 15u)]), 1i, !vec4<bool>(var_0.e, !select(var_0.e, var_0.e, var_0.e), var_0.e, var_0.e));
    var var_2 = Struct_3(var_1.a, -346f, var_1.b, u_input.c.x, vec4<bool>(all(var_1.e.ywy), all(vec2<bool>(var_1.e.x, any(var_1.e.zz))), true, all(!(!vec3<bool>(var_1.e.x, var_0.e, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, global3[_wgslsmith_index_u32(1163u, 15u)]) + vec2<f32>(var_0.c.x, var_1.c))) * _wgslsmith_f_op_vec2_f32(select(var_1.a.yx, _wgslsmith_f_op_vec2_f32(abs(var_0.c.zy)), u_input.a < var_2.d))))), vec4<u32>(abs(1u), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(u_input.d, 41073u)), 84989u), 49584u, ~(1u << (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.d, u_input.d, var_0.a.x), vec4<u32>(u_input.d, u_input.d, 92493u, 9588u)) % 32u))));
}

