struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 13> = array<vec2<i32>, 13>(vec2<i32>(780i, 16614i), vec2<i32>(21459i, -40807i), vec2<i32>(i32(-2147483648), -62381i), vec2<i32>(-56971i, -27421i), vec2<i32>(-1i, 2147483647i), vec2<i32>(1i, -29025i), vec2<i32>(-35677i, 1i), vec2<i32>(0i, -13665i), vec2<i32>(35878i, 20122i), vec2<i32>(-1i, -19485i), vec2<i32>(1i, 1i), vec2<i32>(6546i, 1i), vec2<i32>(-41031i, -1i));

var<private> global1: vec3<bool>;

var<private> global2: array<vec4<i32>, 12>;

var<private> global3: array<vec3<u32>, 32> = array<vec3<u32>, 32>(vec3<u32>(4294967295u, 65274u, 0u), vec3<u32>(17058u, 1u, 4294967295u), vec3<u32>(4294967295u, 4381u, 4294967295u), vec3<u32>(0u, 37980u, 2364u), vec3<u32>(80242u, 1u, 1u), vec3<u32>(0u, 63120u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 65840u), vec3<u32>(2444u, 6901u, 1u), vec3<u32>(30911u, 4294967295u, 13264u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(58669u, 1u, 8604u), vec3<u32>(82239u, 45221u, 21391u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(13305u, 4294967295u, 1u), vec3<u32>(0u, 4294u, 64u), vec3<u32>(4294967295u, 33608u, 4294967295u), vec3<u32>(26669u, 1u, 4294967295u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(0u, 30723u, 1u), vec3<u32>(15175u, 41279u, 1u), vec3<u32>(0u, 0u, 0u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(4294967295u, 33634u, 0u), vec3<u32>(66u, 89639u, 1u), vec3<u32>(0u, 60515u, 1u), vec3<u32>(20327u, 4294967295u, 0u), vec3<u32>(31307u, 98022u, 36694u), vec3<u32>(12375u, 50575u, 1u), vec3<u32>(37431u, 11060u, 106183u), vec3<u32>(9929u, 1u, 19936u), vec3<u32>(58423u, 1u, 0u), vec3<u32>(0u, 30192u, 53698u));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: vec3<bool>) -> f32 {
    global3 = array<vec3<u32>, 32>();
    var var_0 = _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d.x, u_input.a.x, firstLeadingBit(u_input.a.x)) << (global3[_wgslsmith_index_u32(u_input.b.x, 32u)] % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, u_input.a.x, u_input.d.x), select(vec3<i32>(u_input.e.x, -2147483647i, u_input.a.x), u_input.d, arg_1.x)), ~u_input.c.www | -vec3<i32>(u_input.d.x, -1i, 28210i))) >> (u_input.b.ywx % vec3<u32>(32u));
    let var_1 = Struct_1(!arg_0, true, _wgslsmith_mod_u32(0u, min(u_input.b.x, 4818u)));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-857f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(885f, 206f))))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-452f, -731f)) - 1024f)), global1.x, 4294967295u);
    let var_3 = 36850u;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-1527f, 576f)))) * 1548f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1815f))))));
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> vec4<bool> {
    global3 = array<vec3<u32>, 32>();
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(arg_1.a, !vec3<bool>(arg_1.b, false, arg_1.b))), _wgslsmith_f_op_f32(-743f * -733f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-580f - _wgslsmith_f_op_f32(f32(-1f) * -1335f)))), _wgslsmith_f_op_f32(f32(-1f) * -1364f), 1f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1083f, 930f, -1000f, -376f)) + vec4<f32>(1000f, -946f, -835f, -1418f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(214f, -1182f)), -933f, 177f, _wgslsmith_f_op_f32(-2288f * -140f)))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(var_0.x + 214f), _wgslsmith_f_op_f32(max(var_0.x, var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -1792f)), var_0.x);
    var_0 = var_1;
    var var_2 = _wgslsmith_f_op_f32(1300f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(530f + var_0.x))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_1.x)), var_1.x))));
    return select(!select(select(select(vec4<bool>(global1.x, global1.x, false, true), vec4<bool>(true, false, false, true), vec4<bool>(arg_1.a, global1.x, global1.x, global1.x)), vec4<bool>(true, arg_1.a, arg_1.b, global1.x), true), vec4<bool>(true, arg_1.b, arg_1.b, false), !vec4<bool>(arg_1.a, false, global1.x, true)), vec4<bool>(all(global1.xx) && (~13101u >= arg_1.c), arg_1.a, (4294967295u != _wgslsmith_add_u32(4294967295u, arg_1.c)) | true, _wgslsmith_sub_u32(select(60670u, 14892u, global1.x), _wgslsmith_div_u32(4294967295u, u_input.b.x)) > (~u_input.b.x << (u_input.b.x % 32u))), select(!select(select(vec4<bool>(arg_1.a, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(arg_1.b, global1.x, global1.x, global1.x)), select(vec4<bool>(global1.x, false, false, global1.x), vec4<bool>(global1.x, true, false, global1.x), vec4<bool>(true, global1.x, true, false)), vec4<bool>(true, false, arg_1.a, global1.x)), select(vec4<bool>(true, true, true, true), !(!vec4<bool>(arg_1.a, arg_1.b, false, global1.x)), global1.x), global1.x && false));
}

fn func_1() -> vec2<f32> {
    global3 = array<vec3<u32>, 32>();
    let var_0 = global1.x;
    global3 = array<vec3<u32>, 32>();
    let var_1 = Struct_1(!((1i ^ -u_input.e.x) >= -2147483647i), any(vec3<bool>(true, true, global1.x)) && all(select(select(vec3<bool>(global1.x, global1.x, false), vec3<bool>(global1.x, global1.x, false), vec3<bool>(true, global1.x, global1.x)), !vec3<bool>(global1.x, global1.x, true), select(vec3<bool>(false, false, false), vec3<bool>(global1.x, global1.x, global1.x), global1.x))), u_input.b.x >> (44473u % 32u));
    var var_2 = select(select(select(vec4<bool>(var_1.b, true, false, global1.x == true), !vec4<bool>(var_1.a, var_1.b, var_1.b, global1.x), any(select(vec3<bool>(global1.x, false, global1.x), vec3<bool>(global1.x, true, false), var_1.a))), vec4<bool>(!var_1.a, any(!vec4<bool>(true, global1.x, var_1.a, false)), all(select(vec4<bool>(false, true, global1.x, true), vec4<bool>(true, true, true, true), var_1.b)), !(false == var_1.a)), true), select(select(vec4<bool>(true, true, true, true), func_2(-u_input.d.x, Struct_1(global1.x, false, var_1.c)), select(!vec4<bool>(false, var_1.b, var_1.b, var_1.b), vec4<bool>(true, var_1.b, true, global1.x), !vec4<bool>(global1.x, true, var_1.a, var_1.a))), func_2(u_input.c.x, Struct_1(true, 52571u == u_input.b.x, 10967u & var_1.c)), vec4<bool>(var_1.a, !var_1.b, true, func_2(u_input.d.x, Struct_1(global1.x, var_1.b, var_1.c)).x)), true && (_wgslsmith_f_op_f32(select(1000f, _wgslsmith_div_f32(642f, -975f), all(vec4<bool>(true, true, var_1.a, global1.x)))) == _wgslsmith_f_op_f32(max(-336f, _wgslsmith_f_op_f32(func_3(global1.x, vec3<bool>(true, var_1.a, false)))))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(sign(-1542f)), -308f)))) + vec2<f32>(_wgslsmith_f_op_f32(round(-691f)), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -103f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-632f)) * _wgslsmith_f_op_f32(trunc(-511f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(func_1()))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(231f, 595f), vec2<f32>(1652f, -1000f))) - vec2<f32>(1000f, -1732f))) + vec2<f32>(1f, 1f)));
    var var_2 = Struct_1(true, true, 4294967295u);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-584f, var_1.x, -1000f, var_1.x) * vec4<f32>(var_1.x, 270f, var_1.x, 244f))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, -699f, var_1.x, -691f), vec4<f32>(-943f, -338f, 1110f, var_1.x), global1.x))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1293f, var_1.x, 301f, var_1.x)))))));
    var var_4 = any(vec4<bool>(any(!vec3<bool>(var_2.b, false, false)), false, !(!(global1.x | var_2.b)), var_2.a));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~3391u), abs(-global0[_wgslsmith_index_u32(select(42903u, 21623u, true), 13u)] | max(~global0[_wgslsmith_index_u32(4813u, 13u)], _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.d.yx))), u_input.e, u_input.c.x);
}

