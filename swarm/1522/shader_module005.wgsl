struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
    c: Struct_2,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 32>;

var<private> global1: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, true, true)));

var<private> global2: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(false, vec2<i32>(-21961i, i32(-2147483648)), Struct_2(Struct_1(vec3<bool>(false, false, false)), false), 54965u, 25811u), Struct_3(false, vec2<i32>(17387i, -74749i), Struct_2(Struct_1(vec3<bool>(false, true, true)), false), 1u, 81644u), Struct_3(true, vec2<i32>(-1i, 44048i), Struct_2(Struct_1(vec3<bool>(false, false, true)), false), 37055u, 1u), Struct_3(false, vec2<i32>(0i, 6772i), Struct_2(Struct_1(vec3<bool>(false, false, true)), false), 4294967295u, 4294967295u), Struct_3(true, vec2<i32>(48847i, -77420i), Struct_2(Struct_1(vec3<bool>(false, false, false)), false), 52876u, 0u), Struct_3(false, vec2<i32>(7747i, 30477i), Struct_2(Struct_1(vec3<bool>(false, true, true)), true), 4294967295u, 1u));

var<private> global3: Struct_1;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32, arg_1: Struct_3) -> vec3<bool> {
    global3 = Struct_1(!select(global3.a, select(vec3<bool>(false, arg_1.c.a.a.x, true), arg_1.c.a.a, arg_1.c.a.a), !arg_1.a));
    global2 = array<Struct_3, 6>();
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(select(391f, -1305f, global3.a.x)), _wgslsmith_f_op_f32(797f + -789f), _wgslsmith_f_op_f32(-1329f - 369f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1f, 1f, 1f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-542f, -1295f, -834f) + vec3<f32>(-762f, -210f, -1082f))))));
    var_0 = vec3<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -903f));
    var var_1 = true;
    return vec3<bool>(true, select(!any(select(global3.a, vec3<bool>(true, false, false), false)), all(arg_1.c.a.a), true), arg_1.c.b);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: vec3<u32>, arg_3: Struct_1) -> u32 {
    var var_0 = Struct_2(Struct_1(!func_3(_wgslsmith_div_u32(46761u, 4294967295u), global2[_wgslsmith_index_u32(0u, 6u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1880f + 602f)))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1133f, _wgslsmith_f_op_f32(-2353f * -209f))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(1526f, -1095f) * _wgslsmith_f_op_f32(sign(-1690f)))));
    var var_1 = func_3(abs(_wgslsmith_mod_u32(40707u >> (1u % 32u), select(arg_2.x, arg_2.x, global3.a.x)) | 22946u), Struct_3(false, arg_0, Struct_2(var_0.a, true), ~arg_1.x, 1u)).x;
    var var_2 = vec3<u32>(reverseBits(~(~reverseBits(arg_1.x))), _wgslsmith_mult_u32(4294967295u, arg_2.x), arg_1.x);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(160f, -391f))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-412f + _wgslsmith_f_op_f32(-415f - -752f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1295f, -258f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -888f))))));
    let var_4 = Struct_1(select(!(!func_3(4294967295u, global2[_wgslsmith_index_u32(var_2.x, 6u)])), var_0.a.a, !vec3<bool>(true, true, var_0.b)));
    return max(57068u, countOneBits(1u));
}

fn func_1() -> Struct_2 {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(func_2(vec2<i32>(u_input.a, u_input.a), vec4<u32>(676u, 4294967295u, 32888u, 22359u), vec3<u32>(1u, 1u, 1u), Struct_1(vec3<bool>(false, true, global3.a.x))), ~1u), 552u, reverseBits(~_wgslsmith_clamp_u32(27744u, 20209u, 0u))), vec3<u32>(54720u, 1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 20044u, 29450u, 0u), vec4<u32>(1u, 1u, 1u, 1u)))), 32u)];
    global1 = array<Struct_1, 25>();
    global0 = array<vec4<i32>, 32>();
    var var_1 = global1[_wgslsmith_index_u32(max(21535u, abs(countOneBits(1u))), 25u)];
    let var_2 = 18087i ^ _wgslsmith_div_i32(~var_0.x, 1i);
    return Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, 1u, func_2(firstTrailingBit(var_0.wz), vec4<u32>(~1u, ~34205u, abs(12372u), firstLeadingBit(87585u)), ~vec3<u32>(1628u, 1u, 34507u), Struct_1(vec3<bool>(var_1.a.x, true, var_1.a.x)))), 25u)], global3.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 25>();
    let var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec2<u32>(select(abs(31934u), 0u, false), 25740u)), global0[_wgslsmith_index_u32(6974u, 32u)] | vec4<i32>(firstTrailingBit(-u_input.a), u_input.a, ~u_input.a, ~(~u_input.a)), 1u, ~firstLeadingBit(43059u));
}

